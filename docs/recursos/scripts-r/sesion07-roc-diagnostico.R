# ============================================================
# Script Sesión 7: Ver sin Tocar — Diagnóstico y Pronóstico
# Epidemiología e Investigación | Residencia de Urología
# Universidad del Valle
# ============================================================
# Propósito: Construir e interpretar una curva ROC para el PSA
# como prueba diagnóstica de cáncer de próstata.
# El dataset es simulado con distribuciones realistas basadas
# en la literatura (sensibilidad PSA ~70%, especificidad ~65%)
# ============================================================

# --- PASO 0: Instalar y cargar paquetes ---
# Si no tienen instalados estos paquetes, ejecutar primero:
# install.packages(c("pROC", "ggplot2", "dplyr"))

library(pROC)    # Curvas ROC
library(ggplot2) # Gráficas
library(dplyr)   # Manipulación de datos

# --- PASO 1: Simular el dataset ---
# 200 pacientes con sospecha de cáncer de próstata
# Variables: PSA (ng/mL) y resultado de biopsia (referencia estándar)

set.seed(42)  # Para reproducibilidad — todos obtendrán los mismos datos

n_total <- 200
n_cancer <- 80   # 40% de prevalencia (sospecha clínica)
n_no_cancer <- 120

# PSA en pacientes CON cáncer de próstata
# Media más alta, distribución log-normal
psa_cancer <- rlnorm(n_cancer, meanlog = log(8), sdlog = 0.8)
psa_cancer <- pmin(psa_cancer, 100)  # Limitar valores extremos

# PSA en pacientes SIN cáncer de próstata
# Media más baja
psa_no_cancer <- rlnorm(n_no_cancer, meanlog = log(3.5), sdlog = 0.7)
psa_no_cancer <- pmin(psa_no_cancer, 50)

# Crear el dataframe
datos_psa <- data.frame(
  ID = 1:n_total,
  PSA = c(psa_cancer, psa_no_cancer),
  Cancer = c(rep(1, n_cancer), rep(0, n_no_cancer)),  # 1 = cáncer, 0 = no cáncer
  Cancer_etiqueta = c(rep("Cáncer", n_cancer), rep("No cáncer", n_no_cancer))
)

# --- PASO 2: Explorar el dataset ---
cat("=== EXPLORACIÓN DEL DATASET ===\n")
cat("Dimensiones:", dim(datos_psa), "\n")
cat("Primeras filas:\n")
print(head(datos_psa, 10))

cat("\nResumen estadístico del PSA:\n")
print(summary(datos_psa$PSA))

cat("\nPSA por grupo:\n")
datos_psa %>%
  group_by(Cancer_etiqueta) %>%
  summarise(
    N = n(),
    Media_PSA = round(mean(PSA), 2),
    Mediana_PSA = round(median(PSA), 2),
    DE = round(sd(PSA), 2),
    Min = round(min(PSA), 2),
    Max = round(max(PSA), 2)
  ) %>%
  print()

# --- PASO 3: Tabla 2x2 con punto de corte PSA = 4.0 ---
cat("\n=== TABLA 2x2 CON PSA ≥ 4.0 ng/mL ===\n")

corte_psa <- 4.0
datos_psa$Test_positivo <- ifelse(datos_psa$PSA >= corte_psa, 1, 0)

tabla_2x2 <- table(
  "Test (PSA ≥ 4)" = factor(datos_psa$Test_positivo, labels = c("Negativo", "Positivo")),
  "Diagnóstico real" = factor(datos_psa$Cancer, labels = c("No cáncer", "Cáncer"))
)
print(tabla_2x2)

# Calcular medidas de rendimiento diagnóstico
VP <- tabla_2x2["Positivo", "Cáncer"]        # Verdaderos positivos
FP <- tabla_2x2["Positivo", "No cáncer"]     # Falsos positivos
FN <- tabla_2x2["Negativo", "Cáncer"]        # Falsos negativos
VN <- tabla_2x2["Negativo", "No cáncer"]     # Verdaderos negativos

sensibilidad <- VP / (VP + FN)
especificidad <- VN / (VN + FP)
VPP <- VP / (VP + FP)  # Valor predictivo positivo
VPN <- VN / (VN + FN)  # Valor predictivo negativo
LR_pos <- sensibilidad / (1 - especificidad)  # Likelihood ratio positivo
LR_neg <- (1 - sensibilidad) / especificidad  # Likelihood ratio negativo

cat("\nMedidas de rendimiento diagnóstico (PSA ≥ 4.0 ng/mL):\n")
cat(sprintf("Sensibilidad: %.1f%%\n", sensibilidad * 100))
cat(sprintf("Especificidad: %.1f%%\n", especificidad * 100))
cat(sprintf("Valor Predictivo Positivo (VPP): %.1f%%\n", VPP * 100))
cat(sprintf("Valor Predictivo Negativo (VPN): %.1f%%\n", VPN * 100))
cat(sprintf("Likelihood Ratio Positivo (LR+): %.2f\n", LR_pos))
cat(sprintf("Likelihood Ratio Negativo (LR-): %.2f\n", LR_neg))

# ============================================================
# PREGUNTA PARA DISCUTIR:
# ¿Qué significa una sensibilidad del X% en el contexto clínico?
# ¿Cuántos pacientes CON cáncer estamos perdiendo con este punto de corte?
# ¿Vale la pena bajar el punto de corte a PSA = 2.5?
# ============================================================

# --- PASO 4: Comparar dos puntos de corte ---
cat("\n=== COMPARACIÓN: PSA ≥ 4.0 vs PSA ≥ 2.5 ===\n")

for (corte in c(2.5, 4.0, 10.0)) {
  test_pos <- ifelse(datos_psa$PSA >= corte, 1, 0)
  VP_c <- sum(test_pos == 1 & datos_psa$Cancer == 1)
  FP_c <- sum(test_pos == 1 & datos_psa$Cancer == 0)
  FN_c <- sum(test_pos == 0 & datos_psa$Cancer == 1)
  VN_c <- sum(test_pos == 0 & datos_psa$Cancer == 0)

  sen <- VP_c / (VP_c + FN_c)
  esp <- VN_c / (VN_c + FP_c)

  cat(sprintf("\nCorte PSA ≥ %.1f ng/mL:\n", corte))
  cat(sprintf("  Sensibilidad: %.1f%%  |  Especificidad: %.1f%%\n", sen*100, esp*100))
  cat(sprintf("  Biopsias positivas: %d de %d (%.1f%% de todos los pacientes)\n",
              VP_c + FP_c, n_total, (VP_c+FP_c)/n_total*100))
  cat(sprintf("  Cánceres perdidos (FN): %d\n", FN_c))
}

# ============================================================
# PREGUNTA PARA DISCUTIR:
# Al bajar el corte de 4.0 a 2.5:
# - ¿Cuántos cánceres adicionales detectamos?
# - ¿Cuántas biopsias adicionales hacemos?
# - En un sistema de salud con recursos limitados, ¿cuál es más apropiado?
# ============================================================

# --- PASO 5: Curva ROC ---
cat("\n=== CURVA ROC ===\n")

roc_psa <- roc(datos_psa$Cancer, datos_psa$PSA,
               levels = c(0, 1), direction = "<")

cat(sprintf("AUC (Área Bajo la Curva): %.3f (IC95%%: %.3f - %.3f)\n",
            auc(roc_psa),
            ci(roc_psa)[1],
            ci(roc_psa)[3]))

cat("\nInterpretación del AUC:\n")
cat("  0.5 = no mejor que el azar (diagnóstico inútil)\n")
cat("  0.7–0.8 = aceptable\n")
cat("  0.8–0.9 = bueno\n")
cat("  > 0.9 = excelente\n")

# Graficar la curva ROC
plot(roc_psa,
     main = "Curva ROC: PSA para diagnóstico de cáncer de próstata",
     xlab = "1 - Especificidad (Tasa de Falsos Positivos)",
     ylab = "Sensibilidad (Tasa de Verdaderos Positivos)",
     col = "steelblue",
     lwd = 2,
     print.auc = TRUE,
     print.auc.x = 0.4,
     print.auc.y = 0.1)

# Agregar la línea de referencia (azar)
abline(a = 0, b = 1, lty = 2, col = "gray50")

# Marcar los puntos de corte en la curva
coords_4 <- coords(roc_psa, x = 4.0, input = "threshold",
                   ret = c("sensitivity", "specificity"))
coords_2.5 <- coords(roc_psa, x = 2.5, input = "threshold",
                     ret = c("sensitivity", "specificity"))

points(1 - coords_4$specificity, coords_4$sensitivity,
       pch = 16, col = "red", cex = 1.5)
text(1 - coords_4$specificity + 0.05, coords_4$sensitivity - 0.05,
     "PSA ≥ 4.0", col = "red", cex = 0.8)

points(1 - coords_2.5$specificity, coords_2.5$sensitivity,
       pch = 17, col = "orange", cex = 1.5)
text(1 - coords_2.5$specificity + 0.05, coords_2.5$sensitivity - 0.05,
     "PSA ≥ 2.5", col = "orange", cex = 0.8)

legend("bottomright",
       legend = c(sprintf("AUC = %.3f", auc(roc_psa)),
                  "Corte PSA = 4.0", "Corte PSA = 2.5", "Azar"),
       col = c("steelblue", "red", "orange", "gray50"),
       lty = c(1, NA, NA, 2), pch = c(NA, 16, 17, NA),
       cex = 0.9)

# --- PASO 6: Boxplot de PSA por grupo ---
ggplot(datos_psa, aes(x = Cancer_etiqueta, y = PSA, fill = Cancer_etiqueta)) +
  geom_boxplot(alpha = 0.7, outlier.colour = "darkred", outlier.size = 2) +
  geom_hline(yintercept = 4.0, linetype = "dashed", color = "red", size = 1) +
  geom_hline(yintercept = 2.5, linetype = "dotted", color = "orange", size = 1) +
  scale_fill_manual(values = c("No cáncer" = "#74c476", "Cáncer" = "#fd8d3c")) +
  labs(
    title = "Distribución del PSA según diagnóstico histológico",
    subtitle = "Línea roja: corte PSA = 4.0 | Línea naranja: corte PSA = 2.5",
    x = "Diagnóstico (biopsia)",
    y = "PSA (ng/mL)",
    fill = "Diagnóstico"
  ) +
  theme_bw() +
  theme(legend.position = "none") +
  coord_cartesian(ylim = c(0, 40))

# ============================================================
# PREGUNTAS FINALES PARA REFLEXIÓN CLÍNICA:
#
# 1. Con el AUC que obtuvieron, ¿el PSA es una prueba diagnóstica
#    "buena" para cáncer de próstata?
#
# 2. Si la prevalencia de cáncer de próstata en su consulta es del
#    15% (en vez del 40% de este dataset), ¿cambia el VPP? ¿Por qué?
#
# 3. ¿Qué prueba agregaría al PSA para mejorar el AUC?
#    (Ej: PSA libre/total, PHI, 4Kscore, mpMRI)
#
# 4. Un urólogo le dice: "Con PSA > 10, siempre hago biopsia."
#    ¿Qué le diría a partir de este análisis?
# ============================================================

cat("\n¡Script completado exitosamente!\n")
cat("Guarda la curva ROC (Export → Save as Image en RStudio)\n")
cat("y súbela a tu diario de Notion junto con tu interpretación.\n")
