# Guía de Herramientas de IA para el Curso
## Epidemiología e Investigación — Especialización en Urología | Universidad del Valle

---

## Principio Fundamental

> **"Usar IA → Criticar IA → Documentar qué acertó y qué erró"**

La IA es un asistente poderoso pero imperfecto. En este curso la usamos deliberadamente para:
1. Trabajar más eficientemente (búsqueda, primeros borradores, debug de código)
2. Desarrollar pensamiento crítico (evaluar las respuestas de la IA)
3. Entender sus limitaciones (contexto, actualidad, alucinaciones)

**Nunca:** copiar y pegar sin verificar. Nunca: presentar output de IA como propio sin revisión crítica.

---

## Herramientas por Función

### Búsqueda de Literatura

#### Elicit (elicit.org)
**Qué hace:** busca artículos a partir de preguntas en lenguaje natural y extrae información clave (población, diseño, outcomes, conclusiones)  
**Cuándo usar:** exploración inicial de un tema, encontrar artículos semilla  
**Limitaciones:**
- No cubre toda la literatura (tiene sesgo hacia artículos en inglés y muy citados)
- Puede alucinar citas — siempre verificar el DOI en PubMed
- No reemplaza una búsqueda sistemática en múltiples bases de datos

**Cómo usarlo en el curso:**
```
Prompt efectivo: "What is the effect of tamsulosin on spontaneous 
expulsion of ureteral stones less than 10mm?"
```
Comparar con la búsqueda en PubMed: ¿encontró algo que PubMed no encontró primero? ¿Inventó alguna referencia?

---

#### Consensus (consensus.app)
**Qué hace:** busca en literatura científica y muestra un "consensus meter" que indica qué porcentaje de estudios apoya una afirmación  
**Cuándo usar:** verificar si hay consenso en la literatura sobre una pregunta específica  
**Limitaciones:**
- El "consensus meter" es una estimación — no reemplaza una RS formal
- Puede sobrerepresentar estudios con resultados positivos
- Base de datos limitada

---

#### Perplexity (perplexity.ai)
**Qué hace:** síntesis narrativa de un tema con referencias  
**Cuándo usar:** entender el panorama general de un tema rápidamente  
**Limitaciones:**
- Las referencias no siempre existen o son correctas (verificar siempre)
- No es apropiado para búsquedas sistemáticas
- La síntesis puede omitir perspectivas importantes

---

#### Research Rabbit (researchrabbitapp.com)
**Qué hace:** a partir de artículos semilla, muestra un mapa visual de artículos relacionados (citaciones directas, artículos similares, mismos autores)  
**Cuándo usar:** después de identificar 2–3 artículos clave, para expandir la búsqueda  
**No es IA generativa** — trabaja con citaciones reales de la literatura  
**Limitaciones:** no cubre todos los idiomas ni todas las bases de datos

---

### Síntesis y Redacción

#### Claude (claude.ai) — Recomendado para el curso
**Qué hace:** conversación, redacción, análisis de texto, crítica, explicación de conceptos, debug de código  
**Cuándo usar:**
- Escribir primeros borradores para revisar y mejorar
- Pedir crítica de una sección de texto
- Entender errores de R ("¿qué significa este error?")
- Generar alternativas de formulación

**Prompts efectivos para investigación:**

*Para crítica de métodos:*
```
"Aquí está la sección de métodos de mi protocolo de investigación: 
[texto]. Critica su completitud para que otro investigador pueda 
replicar el estudio. ¿Qué falta? ¿Qué está poco claro?"
```

*Para debug de R:*
```
"Estoy aprendiendo R y tengo este error: [error]. Estoy intentando 
hacer [descripción]. ¿Qué significa el error y cómo lo corrijo?"
```

*Para lectura crítica:*
```
"Aquí está el abstract de un estudio de cohorte: [abstract]. 
¿Cuáles son las principales amenazas a la validez interna? 
Organiza tu respuesta como comentarios mayores y menores 
de un revisor para una revista médica."
```

*Para escritura:*
```
"Escribe un borrador de introducción para un protocolo de 
investigación con este PICO: [PICO]. Mi audiencia son 
urólogos latinoamericanos. El borrador es para que yo lo 
critique y mejore — no es la versión final."
```

**Limitaciones importantes:**
- Fecha de conocimiento: hasta una fecha de corte (preguntar siempre si el tema es reciente)
- Puede generar referencias que no existen — nunca citar referencias de Claude sin verificarlas en PubMed
- No tiene acceso a artículos con paywall
- El contexto clínico colombiano puede no estar bien representado en su entrenamiento

---

#### ChatGPT (chatgpt.com)
Similar a Claude. Útil para los mismos propósitos.  
**Diferencia práctica:** ChatGPT con plugins/búsqueda web puede acceder a información más reciente; Claude tiende a ser más conservador con afirmaciones inciertas.

---

### Tamizaje de Literatura para Revisiones Sistemáticas

#### Rayyan (rayyan.ai)
**Qué hace:** plataforma para tamizaje de títulos y abstracts en revisiones sistemáticas, con función de resolución de conflictos entre revisores  
**Cuándo usar:** sesión 8 (tamizaje para RS) y para los proyectos de RS  
**Función de IA:** Rayyan tiene una función de IA que sugiere inclusiones/exclusiones — el instructor decidirá si habilitarla en el proyecto del curso  
**Gratis:** para proyectos académicos con cuenta institucional

---

### Evaluación de Calidad de Evidencia

#### GRADEpro GDT (gradepro.org)
**Qué hace:** software para construir tablas de evidencia GRADE  
**Cuándo usar:** sesión 11 y para los proyectos de RS  
**No es IA generativa** — es una herramienta estructurada  
**Gratis:** con cuenta de email institucional o personal

---

### Análisis Estadístico

#### R con asistencia de IA
El análisis estadístico siempre en R. La IA asiste con:
- Entender errores de R
- Encontrar la función correcta ("¿cómo calculo un ICC en R?")
- Interpretar output ("¿qué significa este coeficiente en un modelo mixto?")
- Encontrar paquetes apropiados

**No usar:** IA para escribir el script completo sin entender qué hace. Si no puedes explicar cada línea, no la incluyes.

---

## Tabla de Uso por Sesión

| Sesión | Herramienta IA | Uso específico | Aspecto a criticar |
|---|---|---|---|
| 1 | Elicit | Búsqueda del PICO del grupo | ¿Encuentró lo mismo que PubMed? |
| 2 | Claude/ChatGPT | Justificación de diseño | ¿Consideró factibilidad local? |
| 3 | Claude/ChatGPT | Interpretación del output Jamovi | ¿Acertó en OR vs. RR? |
| 4 | Elicit, Consensus, Research Rabbit | Búsqueda comparativa | ¿Alucina citas? |
| 5 | Claude | Co-appraisal formal | ¿Detectó los mismos biases? |
| 6 | ChatGPT | Diseño de ECA | ¿Consideró contexto colombiano? |
| 8 | Elicit | Síntesis vs. RS publicada | ¿Coinciden las conclusiones? |
| 9 | Claude/Notion AI | Borrador de protocolo | ¿La estructura es correcta? |
| 10 | Claude | Debug de R | ¿La solución funcionó? |
| 11 | ChatGPT | Graduar evidencia | ¿Aplicó los dominios GRADE? |
| 12 | Claude | Crítica de métodos | ¿Detectó lo que faltaba? |
| 13 | Claude | Revisión de discusión | ¿Identificó conclusiones exageradas? |
| 14 | Claude | Peer review automático | ¿Fue más o menos útil que el humano? |
| 15 | — | Debate sobre ética del uso de IA | — |

---

## Política de Declaración de Uso de IA en el Curso

En todos los entregables del curso:
1. Declarar si se usó IA y para qué
2. Describir cómo se verificó o criticó el output de la IA
3. No presentar output de IA como análisis propio sin haber ejercido juicio crítico

**Formato de declaración:**
> "En la preparación de este trabajo se utilizó [herramienta] para [propósito específico]. El output fue revisado críticamente y modificado como sigue: [descripción]."

---

## Cuándo NO usar IA

- **En el análisis estadístico real:** el script R y las decisiones analíticas son del residente. La IA puede ayudar a entender los comandos, no a tomar las decisiones.
- **Para generar referencias:** todas las referencias deben venir de PubMed/Embase/Cochrane verificadas manualmente.
- **Para sustituir la lectura del artículo:** la IA puede resumir un artículo pero no puede reemplazar la lectura crítica directa. El resumen de la IA puede omitir o malinterpretar puntos metodológicos clave.
- **Para el diagnóstico clínico de los pacientes:** fuera del alcance de este curso, pero vale la pena mencionarlo: ninguna de estas herramientas está aprobada ni validada para recomendaciones clínicas directas en pacientes.

---

## Recursos para Aprender Más

- **Elicit:** tutorial en elicit.org/tutorial
- **Prompt engineering para investigación:** "Prompting guide for researchers" (buscar en Elicit's blog)
- **IA en investigación médica:** Nori et al., "Capabilities of GPT-4 on Medical Challenge Problems", 2023 — disponible en arXiv
- **Política de IA en publicación científica:** ICMJE recommendations (icmje.org) — sección sobre IA y autoría
