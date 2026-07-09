# Sesión 7 — Ver sin Tocar: Diagnóstico y Pronóstico

**Formato:** Presencial 90 min | **Mes:** 2

---

## Propósito

Que los residentes evalúen la validez de un estudio diagnóstico y construyan e interpreten una curva ROC en R.

---

## Pre-clase

- Ver Loom 5: Sensibilidad, especificidad, VPP, VPN (~10 min)
- Leer artículo de diagnóstico asignado (ver Biblioteca)

---

## Agenda

| Tiempo | Actividad |
|---|---|
| 0–15 min | Caso clínico: PSA 5.2 — ¿hace biopsia? Razonamiento bayesiano |
| 15–50 min | Lab R: curva ROC con script `sesion07-roc-diagnostico.R` |
| 50–70 min | QUADAS-2 en el artículo asignado |
| 70–85 min | ¿Cuándo una prueba diagnóstica debe cambiar la práctica? |
| 85–90 min | Cierre |

---

## Notas del profesor

- El caso del PSA 5.2 es deliberadamente ambiguo — no hay respuesta correcta. El objetivo es activar razonamiento bayesiano antes de que el residente haya visto las fórmulas.
- Script R: `sesion07-roc-diagnostico.R` usa el dataset de litiasis para construir una ROC de densidad UHU como predictor de libre de cálculo. Verificar que el script corre antes de la sesión.
- QUADAS-2: usar la versión online en quadas.org. Asignar un artículo de diagnóstico urológico con sesgos claros (verificar que el índex test y reference standard estén bien definidos).
- La discusión final (70–85 min) debe llegar al concepto de "umbral de decisión clínica" — el punto de corte no es solo estadístico, es clínico.

---

## Entregable

Dossier Entrada 2: Curva ROC generada en R (captura) + QUADAS-2 completado.

---

## Materiales

- 🎬 Loom 5: Sensibilidad, especificidad, VPP, VPN — \[agregar link\]
- Script R: `sesion07-roc-diagnostico.R` — \[agregar link\]
- 📄 Artículo de diagnóstico — \[agregar desde Biblioteca\]
- R/RStudio instalado (o cuenta Posit Cloud)
