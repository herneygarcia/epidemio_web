# Guión Loom 4: Anatomy of an RCT — Anatomía de un ECA
## Pre-trabajo para la Sesión 6

**Duración objetivo:** 10 minutos  
**Enfoque:** conceptual + diagrama CONSORT

---

## Estructura del Video

### 0:00–1:00 — Apertura

> "El ensayo clínico aleatorizado es la estructura más poderosa de la investigación clínica. Cuando se hace bien, elimina el sesgo de confusión — algo que ningún otro diseño puede hacer completamente. Pero cuando se hace mal, puede ser más engañoso que un estudio observacional.
>
> En este video les enseño los 5 componentes críticos de un ECA para que en la sesión del viernes puedan diseccionarlo como si fueran cirujanos."

---

### 1:00–2:30 — El problema que resuelve la aleatorización

*[Diagrama simple en pantalla]*

**El sesgo de confusión por indicación:**
"En la práctica real, los médicos dan tratamientos más agresivos a pacientes más enfermos. Eso significa que en un estudio observacional, el 'grupo de tratamiento intensivo' siempre tiene peores pronósticos baseline — no porque el tratamiento sea peor, sino porque los pacientes ya eran peores al inicio."

**La aleatorización resuelve esto:**
"Al asignar aleatoriamente, la probabilidad de tener cualquier característica (conocida o desconocida) es igual en los dos grupos. Después de aleatorizar, los grupos son comparables al inicio."

*Ejemplo urológico:* "En el PIVOT trial, los pacientes asignados aleatoriamente a prostatectomía vs. vigilancia activa tenían características similares al inicio — algo imposible de lograr en un estudio observacional."

---

### 2:30–5:00 — Los 5 componentes críticos

**1. Aleatorización:**
- ¿Cómo se generó la secuencia? (Tabla de números aleatorios, software)
- ¿Fue verdaderamente aleatoria o fue "cuasi-aleatorización" (alternancia de días, número de historia)?

**2. Ocultamiento de la asignación (Allocation concealment):**
- *Este es el más mal entendido — y el más importante*
- "Ocultamiento" significa que el investigador que decide incluir al paciente NO sabe qué tratamiento le asignarán
- Si sabe, puede sesgar la inclusión: incluir al paciente sano cuando el próximo tratamiento es el activo
- Métodos correctos: sobres sellados, sistema centralizado por teléfono

**3. Cegamiento (Blinding):**
- Simple ciego: el paciente no sabe su asignación
- Doble ciego: el paciente Y el investigador no saben
- Triple ciego: el paciente, el investigador Y el estadístico no saben
- *En cirugía urológica: el doble ciego es frecuentemente imposible — ¿cómo ciegar al cirujano sobre si hizo una prostatectomía o no?*
- Solución: cegar al evaluador del outcome (el urólogo que mide el PSA a los 12 meses no sabe qué tratamiento recibió el paciente)

**4. Seguimiento y pérdidas:**
- ¿Cuántos pacientes se perdieron? ¿Fueron iguales en los dos grupos?
- Regla práctica: si las pérdidas > 20%, el estudio tiene riesgo alto de sesgo
- ¿Se hizo análisis por intención de tratar (ITT)? → se analizan todos los aleatorizados, independientemente de si completaron el tratamiento

**5. Tamaño de muestra y poder:**
- ¿Calcularon el N antes de iniciar?
- ¿Cuántos pacientes necesitaban para detectar una diferencia clínicamente relevante?
- Un ECA con N insuficiente puede dar un resultado "negativo" (p > 0.05) no porque el tratamiento no funcione, sino porque el estudio no tenía poder para detectarlo

---

### 5:00–7:00 — El diagrama CONSORT

*[Mostrar un diagrama CONSORT real de un artículo urológico]*

> "CONSORT es la guía de reporte para ECAs. Todo artículo de ECA bien reportado debe tener este diagrama."

Explicar cada caja:
- Evaluados para elegibilidad → Aleatorizados
- → Grupo intervención: asignados / recibieron / completaron / analizados
- → Grupo control: asignados / recibieron / completaron / analizados

**Lo que buscar cuando leen un ECA:**
1. ¿Las pérdidas están reportadas?
2. ¿Son balanceadas entre grupos?
3. ¿El número analizado es igual al aleatorizado? (Si no, ¿por qué no?)

---

### 7:00–9:00 — Outcome switching — el fraude silencioso

> "El outcome switching es uno de los problemas más graves en la literatura de ECAs, y es casi imposible de detectar si el estudio no está pre-registrado."

**Qué es:** diseñar el estudio con outcome primario = "supervivencia global", recolectar los datos, ver que no hay diferencia en supervivencia pero SÍ en respuesta parcial, y publicar el artículo reportando la respuesta parcial como si siempre hubiera sido el outcome primario.

**Por qué importa:** los valores p tienen significado estadístico solo cuando se especificaron ANTES de mirar los datos. Si hay 10 outcomes y reporto solo el que salió significativo, la probabilidad de un falso positivo es mucho mayor que el 5% nominal.

**La solución:** pre-registro en ClinicalTrials.gov, OSF o PROSPERO. El protocolo queda fechado y público antes de recolectar datos.

---

### 9:00–10:00 — Cierre

> "En la sesión del viernes vamos a DISEÑAR un ECA para una pregunta urológica. Usen estos 5 componentes como guía para su diseño. También leeremos el ECA que les asigné — usen el diagrama CONSORT para evaluarlo.
>
> Una última pregunta para pensar: ¿puede existir un ECA en urología donde el cirujano NO sepa qué intervención hizo? ¿Cuándo sí? ¿Cuándo no?"

---

## Notas de Grabación
- El punto sobre ocultamiento vs. cegamiento necesita énfasis — es la confusión más común
- El ejemplo de PIVOT o de algún ECA urológico colombiano reciente sería ideal
- El outcome switching puede ilustrarse con el caso famoso de Tamiflu/Oseltamivir si el instructor está familiarizado
