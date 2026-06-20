# Guión Loom 3: Estrategias de Búsqueda — MeSH, Operadores Booleanos, Filtros
## Pre-trabajo para la Sesión 4

**Duración objetivo:** 8–10 minutos  
**Formato:** Pantalla compartida con PubMed abierto — demostración en vivo

---

## Estructura del Video

### 0:00–1:00 — Apertura

> "Si googleas una pregunta médica, obtienes millones de resultados. Si buscas en PubMed sin saber cómo hacerlo, obtienes 40,000 artículos irrelevantes. Si buscas correctamente, obtienes los 20 que necesitas.
>
> En este video les enseño a construir una búsqueda que pueda reproducirse, auditarse y publicarse en la sección de métodos de una revisión sistemática."

---

### 1:00–3:00 — El PICO como punto de partida

*[Abrir PubMed en pantalla]*

**PICO de ejemplo:**
"En hombres con cáncer de próstata localizado (P), la prostatectomía radical (I) comparada con radioterapia (C), ¿tiene diferente tasa de supervivencia libre de recurrencia a 10 años? (O)"

**Paso 1: Identificar los términos clave de cada componente PICO**
- P: prostate cancer, prostatic neoplasms
- I: radical prostatectomy, prostatectomy
- C: radiotherapy, radiation therapy, brachytherapy
- O: disease-free survival, biochemical recurrence, PSA recurrence

*"Noten que para cada concepto hay múltiples palabras posibles. Eso es normal — por eso necesitamos los operadores booleanos."*

---

### 3:00–5:30 — Los 3 operadores booleanos

*[Demostración en PubMed mientras explica]*

**AND** → Estrecha la búsqueda (AMBOS términos deben estar)
- `prostate cancer AND radical prostatectomy` → solo artículos que hablen de AMBAS cosas

**OR** → Amplía la búsqueda (CUALQUIERA de los términos)
- `radical prostatectomy OR prostatectomy` → captura ambas variantes del término

**NOT** → Excluye artículos
- `prostate cancer NOT benign prostatic hyperplasia` → evita artículos de BPH
- *Usar NOT con cuidado — puede excluir artículos que quieres*

**Construcción del string completo:**
```
("prostatic neoplasms"[MeSH] OR "prostate cancer"[tiab] OR "prostate carcinoma"[tiab])
AND
("prostatectomy"[MeSH] OR "radical prostatectomy"[tiab])
AND
("radiotherapy"[MeSH] OR "radiation therapy"[tiab] OR "brachytherapy"[tiab])
AND
("disease-free survival"[MeSH] OR "biochemical recurrence"[tiab] OR "PSA recurrence"[tiab])
```

*Ejecutarlo en PubMed y mostrar el número de resultados*

---

### 5:30–7:30 — MeSH: los términos controlados

> "PubMed asigna a cada artículo una lista de términos estandarizados llamados MeSH (Medical Subject Headings). Eso significa que aunque el artículo diga 'prostate cancer' y otro diga 'carcinoma prostático', ambos tienen asignado el mismo MeSH: 'Prostatic Neoplasms'."

**Ventaja de usar MeSH:** recupera artículos con diferente terminología
**Cómo encontrar el MeSH correcto:** MeSH browser en mesh.nlm.nih.gov

*Demostrar: buscar "prostate cancer" en MeSH browser → encontrar "Prostatic Neoplasms" → usar en PubMed*

**La estrategia híbrida (recomendada):**
- Usar MeSH para el término principal
- Combinar con búsqueda en Title/Abstract [tiab] para capturar artículos aún no indexados

---

### 7:30–9:00 — Filtros en PubMed

*[Mostrar el panel de filtros en PubMed]*

Filtros más usados en investigación urológica:
- **Tipo de estudio:** Clinical Trial, Randomized Controlled Trial, Systematic Review, Meta-Analysis, Observational Study
- **Idioma:** English, Spanish
- **Fecha:** publicados en los últimos 5 años (para preguntas de actualización)
- **Edad:** Adults (18+ years), Middle Aged (45-64), Aged (65+)
- **Especie:** Humans (excluir estudios en animales)

**Advertencia:** aplicar demasiados filtros puede excluir artículos relevantes. Para una revisión sistemática, lo mejor es buscar sin filtros de tipo de estudio y luego tamizar manualmente.

---

### 9:00–10:00 — Cierre

> "En la sesión del viernes haremos un 'search-off' — todos buscarán el mismo PICO y comparamos quién encuentra más artículos relevantes. Antes de venir:
> 1. Intenten buscar su propio PICO en PubMed
> 2. Guarden el número de resultados
> 3. Instalen el conector de Zotero en su navegador
>
> Y si quieren practicar, el MeSH browser es completamente gratuito."

---

## Notas de Grabación
- Tener PubMed y el MeSH browser abiertos antes de grabar
- La demostración en vivo de construir el string es el valor central del video — ir lentamente
- Si PubMed cambia su interfaz, el principio (PICO + booleanos + MeSH) sigue siendo el mismo aunque los botones cambien
