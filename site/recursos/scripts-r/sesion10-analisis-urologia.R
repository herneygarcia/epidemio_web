# ============================================================
# Script Sesión 10: R para Urólogos — Análisis en Vivo
# Epidemiología e Investigación | Residencia de Urología
# Universidad del Valle
# ============================================================
# Propósito: Análisis completo de un dataset de cáncer de
# próstata localizado — desde la exploración inicial hasta
# un modelo de regresión logística interpretable clínicamente.
#
# El dataset es completamente autónomo — no necesitas importar
# ningún archivo externo. Todo está generado dentro del script.
# ============================================================

# --- PASO 0: Instalar paquetes (ejecutar solo la primera vez) ---
# install.packages(c("ggplot2", "dplyr", "gtsummary", "broom"))

library(ggplot2)    # Gráficas
library(dplyr)      # Manipulación de datos
library(gtsummary)  # Tablas publication-ready (si está instalado)
library(broom)      # Resultados del modelo en formato ordenado

# ============================================================
# SECCIÓN 1: GENERAR EL DATASET
# ============================================================

set.seed(2024)  # Semilla para reproducibilidad

n <- 300  # Número de pacientes

# Simular variables del paciente
edad <- round(rnorm(n, mean = 66, sd = 8))
edad <- pmax(50, pmin(85, edad))  # Limitar entre 50 y 85 años

psa_inicial <- rlnorm(n, meanlog = log(9), sdlog = 0.9)
psa_inicial <- pmin(psa_inicial, 100)

gleason_score <- sample(c(6, 7, 8, 9, 10),
                         n, replace = TRUE,
                         prob = c(0.20, 0.35, 0.25, 0.15, 0.05))

estadio <- sample(c("cT1", "cT2", "cT3"),
                  n, replace = TRUE,
                  prob = c(0.35, 0.45, 0.20))

tratamiento <- sample(c("Prostatectomia_radical", "Radioterapia"),
                      n, replace = TRUE,
                      prob = c(0.55, 0.45))

# Variable de outcome: recurrencia bioquímica a 5 años
# La probabilidad de recurrencia aumenta con PSA alto, Gleason alto,
# estadio avanzado, y es ligeramente diferente por tratamiento
prob_recurrencia <- plogis(
  -3.5 +
  0.03 * (edad - 65) +
  0.08 * log(psa_inicial) +
  0.35 * (gleason_score - 6) +
  0.6 * (estadio == "cT2") +
  1.4 * (estadio == "cT3") +
  0.2 * (tratamiento == "Radioterapia") +
  rnorm(n, sd = 0.3)
)

recurrencia_5a <- rbinom(n, 1, prob_recurrencia)

# Tiempo hasta recurrencia (o censura) en meses
tiempo_seguimiento <- ifelse(
  recurrencia_5a == 1,
  pmax(6, round(rnorm(n, mean = 30, sd = 12))),  # Tiempo hasta recurrencia
  round(runif(n, min = 48, max = 72))              # Tiempo de censura
)

# Ensamblar el dataset
datos <- data.frame(
  ID = 1:n,
  Edad = edad,
  PSA_inicial = round(psa_inicial, 1),
  Gleason = gleason_score,
  Estadio = factor(estadio, levels = c("cT1", "cT2", "cT3")),
  Tratamiento = factor(tratamiento,
                       levels = c("Prostatectomia_radical", "Radioterapia"),
                       labels = c("Prostatectomía radical", "Radioterapia")),
  Recurrencia_5a = recurrencia_5a,
  Recurrencia_etiqueta = factor(recurrencia_5a,
                                labels = c("Sin recurrencia", "Con recurrencia")),
  Tiempo_meses = tiempo_seguimiento
)

cat("Dataset creado exitosamente.\n")
cat(sprintf("N = %d pacientes | %d (%d%%) con recurrencia a 5 años\n",
            n, sum(recurrencia_5a), round(mean(recurrencia_5a)*100)))

# ============================================================
# SECCIÓN 2: EXPLORACIÓN INICIAL
# ============================================================

cat("\n=== EXPLORACIÓN INICIAL ===\n")

# ¿Cómo son mis datos?
cat("Dimensiones del dataset:", dim(datos), "\n\n")
cat("Primeras 6 filas:\n")
print(head(datos))

cat("\nTipos de variables:\n")
str(datos)

cat("\nResumen estadístico de todas las variables:\n")
print(summary(datos))

cat("\n¿Hay datos faltantes?\n")
print(colSums(is.na(datos)))

# ============================================================
# SECCIÓN 3: ANÁLISIS DESCRIPTIVO
# ============================================================

cat("\n=== ANÁLISIS DESCRIPTIVO ===\n")

# Variables continuas
cat("Variables continuas — Media (±DE) y Mediana [RIC]:\n")
for (var in c("Edad", "PSA_inicial")) {
  cat(sprintf("\n%s:\n", var))
  cat(sprintf("  Media: %.1f ± %.1f\n", mean(datos[[var]]), sd(datos[[var]])))
  cat(sprintf("  Mediana: %.1f [%.1f - %.1f]\n",
              median(datos[[var]]),
              quantile(datos[[var]], 0.25),
              quantile(datos[[var]], 0.75)))
}

# Variables categóricas
cat("\nDistribución del Gleason Score:\n")
print(table(datos$Gleason))
cat("En porcentajes:\n")
print(round(prop.table(table(datos$Gleason)) * 100, 1))

cat("\nDistribución del Estadio Clínico:\n")
print(table(datos$Estadio))

cat("\nDistribución del Tratamiento:\n")
print(table(datos$Tratamiento))

# ============================================================
# SECCIÓN 4: ANÁLISIS BIVARIADO
# ============================================================

cat("\n=== ANÁLISIS BIVARIADO: ¿Qué se asocia con recurrencia? ===\n")

# PSA por grupo de recurrencia
cat("\nPSA inicial según recurrencia:\n")
datos %>%
  group_by(Recurrencia_etiqueta) %>%
  summarise(
    N = n(),
    Mediana_PSA = median(PSA_inicial),
    RIC_inferior = quantile(PSA_inicial, 0.25),
    RIC_superior = quantile(PSA_inicial, 0.75)
  ) %>%
  print()

# Test de Mann-Whitney (PSA no tiene distribución normal)
test_psa <- wilcox.test(PSA_inicial ~ Recurrencia_5a, data = datos)
cat(sprintf("Mann-Whitney PSA vs Recurrencia: W = %.0f, p = %.4f\n",
            test_psa$statistic, test_psa$p.value))

# Estadio y recurrencia — tabla cruzada
cat("\nTabla cruzada: Estadio × Recurrencia:\n")
tabla_estadio <- table(datos$Estadio, datos$Recurrencia_etiqueta)
print(tabla_estadio)
cat("\nEn porcentajes por fila:\n")
print(round(prop.table(tabla_estadio, margin = 1) * 100, 1))

test_estadio <- chisq.test(tabla_estadio)
cat(sprintf("Chi-cuadrado Estadio vs Recurrencia: χ² = %.2f, df = %d, p = %.4f\n",
            test_estadio$statistic, test_estadio$parameter, test_estadio$p.value))

# Tratamiento y recurrencia
cat("\nTabla cruzada: Tratamiento × Recurrencia:\n")
tabla_tto <- table(datos$Tratamiento, datos$Recurrencia_etiqueta)
print(tabla_tto)
print(round(prop.table(tabla_tto, margin = 1) * 100, 1))

test_tto <- chisq.test(tabla_tto)
cat(sprintf("Chi-cuadrado Tratamiento vs Recurrencia: χ² = %.2f, p = %.4f\n",
            test_tto$statistic, test_tto$p.value))

# ============================================================
# SECCIÓN 5: VISUALIZACIONES
# ============================================================

# Boxplot: PSA por tratamiento y recurrencia
ggplot(datos, aes(x = Tratamiento, y = PSA_inicial,
                  fill = Recurrencia_etiqueta)) +
  geom_boxplot(alpha = 0.7, outlier.colour = "darkred") +
  scale_fill_manual(values = c("Sin recurrencia" = "#74c476",
                               "Con recurrencia" = "#fd8d3c")) +
  labs(
    title = "PSA inicial según tratamiento y recurrencia",
    subtitle = "Pacientes con cáncer de próstata localizado | HUV (simulado)",
    x = "Tratamiento recibido",
    y = "PSA inicial (ng/mL)",
    fill = "Recurrencia a 5 años"
  ) +
  theme_bw() +
  coord_cartesian(ylim = c(0, 50))

# Histograma del PSA coloreado por recurrencia
ggplot(datos, aes(x = PSA_inicial, fill = Recurrencia_etiqueta)) +
  geom_histogram(binwidth = 3, position = "dodge", alpha = 0.7, color = "white") +
  scale_fill_manual(values = c("Sin recurrencia" = "#74c476",
                               "Con recurrencia" = "#fd8d3c")) +
  labs(
    title = "Distribución del PSA inicial",
    x = "PSA (ng/mL)", y = "Número de pacientes",
    fill = "Recurrencia a 5 años"
  ) +
  theme_bw() +
  xlim(0, 60)

# Gráfico de barras: Gleason y recurrencia
datos %>%
  group_by(Gleason) %>%
  summarise(
    Total = n(),
    Con_recurrencia = sum(Recurrencia_5a),
    Porcentaje_recurrencia = mean(Recurrencia_5a) * 100
  ) %>%
  ggplot(aes(x = factor(Gleason), y = Porcentaje_recurrencia)) +
  geom_col(fill = "steelblue", alpha = 0.8) +
  geom_text(aes(label = sprintf("%.0f%%\n(n=%d)", Porcentaje_recurrencia, Total)),
            vjust = -0.5, size = 3.5) +
  labs(
    title = "Porcentaje de recurrencia por Gleason Score",
    x = "Gleason Score",
    y = "% con recurrencia a 5 años"
  ) +
  theme_bw() +
  ylim(0, 80)

# ============================================================
# SECCIÓN 6: REGRESIÓN LOGÍSTICA
# ============================================================

cat("\n=== MODELO DE REGRESIÓN LOGÍSTICA ===\n")
cat("Variable dependiente: Recurrencia bioquímica a 5 años\n")
cat("Variables independientes: PSA, Gleason, Estadio, Tratamiento\n\n")

# Recodificar Gleason para el modelo
datos$Gleason_grupo <- factor(
  ifelse(datos$Gleason <= 6, "Gleason ≤ 6",
         ifelse(datos$Gleason == 7, "Gleason 7",
                "Gleason ≥ 8")),
  levels = c("Gleason ≤ 6", "Gleason 7", "Gleason ≥ 8")
)

# Ajustar el modelo
modelo <- glm(
  Recurrencia_5a ~ log(PSA_inicial) + Gleason_grupo + Estadio + Tratamiento,
  data = datos,
  family = binomial(link = "logit")
)

# Resumen del modelo
cat("Resumen del modelo:\n")
print(summary(modelo))

# Odds Ratios con IC 95%
cat("\n=== ODDS RATIOS (IC 95%) ===\n")
resultados_modelo <- tidy(modelo, exponentiate = TRUE, conf.int = TRUE)
print(resultados_modelo)

# Interpretar OR clínicamente
cat("\nInterpretación clínica de los OR:\n")
cat(sprintf("  PSA (por log-unidad): OR = %.2f — por cada aumento de 1 unidad en log(PSA),\n",
            exp(coef(modelo)["log(PSA_inicial)"])))
cat("    el riesgo de recurrencia se multiplica por ese factor\n")

cat(sprintf("  Gleason 7 vs ≤6: OR = %.2f\n",
            exp(coef(modelo)["Gleason_grupoGleason 7"])))
cat(sprintf("  Gleason ≥8 vs ≤6: OR = %.2f\n",
            exp(coef(modelo)["Gleason_grupoGleason ≥ 8"])))

# Capacidad discriminativa del modelo (AUC)
library(pROC)
prob_pred <- predict(modelo, type = "response")
roc_modelo <- roc(datos$Recurrencia_5a, prob_pred)
cat(sprintf("\nAUC del modelo completo: %.3f\n", auc(roc_modelo)))
cat("(AUC > 0.75 indica buena capacidad discriminativa)\n")

# ============================================================
# PREGUNTAS PARA LA SESIÓN:
#
# 1. ¿Qué variable tiene el OR más alto? ¿Qué significa clínicamente?
#
# 2. El tratamiento (Radioterapia vs. Prostatectomía) tiene un OR
#    de ____. ¿Podemos concluir que un tratamiento es SUPERIOR al otro?
#    ¿Por qué sí o por qué no? (Piensen en confusión por indicación)
#
# 3. ¿Por qué usamos log(PSA) en vez de PSA directamente?
#    (Pista: Miren el histograma del PSA — ¿qué distribución tiene?)
#
# 4. El AUC del modelo es ____. ¿Es suficientemente bueno para
#    usarlo como herramienta de predicción en la clínica?
#
# 5. ¿Qué variables FALTARÍAN en este modelo para predecir mejor
#    la recurrencia? (Piensen en: volumen tumoral, márgenes quirúrgicos,
#    compromiso de vesículas seminales, iPS, etc.)
# ============================================================

cat("\n¡Script completado exitosamente!\n")
cat("El modelo de regresión logística está listo para interpretar.\n")
cat("Guarda las gráficas y el output de los OR en tu diario de Notion.\n")
