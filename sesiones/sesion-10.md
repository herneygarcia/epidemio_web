# Sesión 10 — R para Urólogos: Análisis en Vivo

**Formato:** Virtual 90 min | **Mes:** 3

---

## Propósito

Que los residentes corran un análisis estadístico completo en R y puedan interpretar e ir debuggeando con ayuda de IA.

---

## Pre-clase

- Instalar R y RStudio (o crear cuenta en Posit Cloud)
- Instalar paquetes: `install.packages(c('ggplot2','dplyr','gtsummary','broom','pROC'))`

---

## Agenda

| Tiempo | Actividad |
|---|---|
| 0–10 min | Setup: todos con R abierto y script cargado |
| 10–30 min | STEP 1–2: simular dataset + explorar |
| 30–50 min | STEP 3–4: descriptivos + bivariado |
| 50–70 min | STEP 5–6: visualizaciones + regresión logística |
| 70–85 min | Interpretación relay: cada residente explica una línea de output |
| 85–90 min | Debug con Claude: ¿cómo pedir ayuda a la IA cuando R falla? |

---

## Notas del profesor

- Script base: `sesion10-analisis-urologia.R` — verificar que corre en una sesión limpia antes de la clase.
- El dataset del curso (`litiasis_urovalle_2024.csv`) es el que se usa. Variables clave: `tratamiento` (exposición: LEOC/FURS/observacion) y `libre_calculo` (outcome binario).
- La interpretación relay (70–85 min): compartir pantalla con el output de la regresión logística. Cada residente interpreta 1–2 líneas en voz alta. El profesor no corrige de inmediato — deja que el grupo corrija primero.
- El demo de debug con Claude (85–90 min): tener preparado un error común de R (ej. "object not found" por un typo en nombre de variable). Mostrar cómo copiar el error y pedirle a Claude que lo explique.
- Posit Cloud como alternativa: funciona bien pero tarda en cargar. Recomendar que los residentes prueben el setup 1 día antes.

---

## Entregable

Script R anotado con sus propios comentarios + output interpretado (tabla + 1 figura).

---

## Materiales

- Script: `sesion10-analisis-urologia.R` — \[agregar link\]
- Dataset: `litiasis_urovalle_2024.csv` — \[agregar link\]
- Alternativa sin instalación: Posit Cloud (posit.cloud) — plan gratuito
