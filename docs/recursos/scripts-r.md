# Scripts de R

Scripts reproducibles para las sesiones de análisis estadístico. Diseñados para correr en **R ≥ 4.2** o en [Posit Cloud](https://posit.cloud) sin instalación local.

---

## Paquetes Necesarios

```r
install.packages(c("pROC", "ggplot2", "dplyr", "gtsummary", "broom", "readr"))
```

---

## Sesión 7 — Diagnóstico y Pronóstico: Curva ROC

**Archivo:** [`sesion07-roc-diagnostico.R`](scripts-r/sesion07-roc-diagnostico.R)

Este script cubre:
- Construcción de curvas ROC con `pROC`
- Cálculo de sensibilidad, especificidad, AUC
- Elección de punto de corte óptimo (índice de Youden)
- Visualización con `ggplot2`
- Interpretación clínica de los resultados

**Uso:**
```r
source("sesion07-roc-diagnostico.R")
```

---

## Sesión 10 — Análisis Estadístico en Vivo

**Archivo:** [`sesion10-analisis-urologia.R`](scripts-r/sesion10-analisis-urologia.R)

Este script cubre:
- Carga y exploración del dataset clínico
- Estadística descriptiva con `gtsummary`
- Regresión logística con `broom`
- Visualizaciones con `ggplot2`
- Exportación de tablas listas para publicación

**Dataset:** [`datasets/litiasis_urovalle_2024.csv`](datasets/litiasis_urovalle_2024.csv)

---

## Adaptar los Scripts a Tu Especialidad

1. Reemplaza el dataset por datos clínicos de tu área (mantener estructura de variables similar)
2. Cambia las variables de interés en las primeras líneas de cada script (marcadas con `# ADAPTAR:`)
3. Actualiza las etiquetas de las gráficas con terminología de tu especialidad

---

## Dataset de Ejemplo

El archivo `litiasis_urovalle_2024.csv` contiene ~200 pacientes ficticios con:

| Variable | Descripción |
|----------|-------------|
| `id` | Identificador del paciente |
| `edad` | Edad en años |
| `sexo` | M/F |
| `tamano_mm` | Tamaño del cálculo en mm |
| `localizacion` | Ureteral proximal/distal/renal |
| `tratamiento` | tamsulosina/placebo |
| `expulsion` | 1 = sí, 0 = no |
| `dias_expulsion` | Días hasta expulsión |
| `complicacion` | 1 = sí, 0 = no |

Para usar con un dataset de otra especialidad, mantener estas columnas o ajustar las referencias en el script.
