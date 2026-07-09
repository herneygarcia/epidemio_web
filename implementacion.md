# Plan de Implementación
## Epidemiología e Investigación — Especialización en Urología | Universidad del Valle
## Pasos concretos para desplegar el curso

---

## Visión General

El curso puede estar completamente listo para la primera sesión en **3–4 semanas de preparación**, si se sigue este plan. Las tareas están organizadas por semana antes del inicio del curso.

---

## SEMANA -4: Infraestructura y Tecnología

### Notion (3–4 horas)
- [ ] Crear workspace en notion.so con nombre: "Epidemiología e Investigación — Urología UniValle [año]"
- [ ] Crear la página principal con la narrativa de la expedición
- [ ] Configurar las bases de datos: Banco de Preguntas, Residentes, Biblioteca
- [ ] Crear páginas de las 16 sesiones (vacías por ahora, con plantilla consistente)
- [ ] Invitar a los residentes como miembros del workspace
- [ ] Crear los diarios de expedición individuales usando `notion-workspace/plantilla-diario-expedicion.md`
- [ ] Publicar las plantillas: protocolo, appraisal, reflexión semanal, revisión de pares

### Cuentas y herramientas (1 hora)
- [ ] Confirmar que los residentes pueden acceder desde Colombia: Elicit, Consensus, Perplexity, Research Rabbit, Rayyan, GRADEpro, OSF
- [ ] Crear librería compartida de Zotero para la cohorte
- [ ] Verificar acceso institucional a revistas (si la Universidad del Valle tiene acceso a Embase, Cochrane, etc.)
- [ ] Crear cuenta de respaldo en Posit Cloud para la sesión 10 (posit.cloud — plan gratuito)

### Datasets (2 horas)
- [ ] Preparar el dataset de litiasis para la sesión 3 (usar el script R de sesión 10 para simularlo, o usar datos reales anonimizados del HUV)
  - Variables: ID, Edad, Sexo, Tamaño litiasis (mm), Localización, Tratamiento (tamsulosina/placebo), Expulsión, Tiempo hasta expulsión, Complicaciones
  - N sugerido: 200 pacientes
  - Exportar como CSV y subir a Notion en la página de la Sesión 3
- [ ] Verificar que los scripts R `sesion07-roc-diagnostico.R` y `sesion10-analisis-urologia.R` corren sin errores en R versión reciente
  - Instalar los paquetes necesarios: `pROC`, `ggplot2`, `dplyr`, `gtsummary`, `broom`
  - Ejecutar los scripts completos y guardar los outputs para tener un "solucionario"

---

## SEMANA -3: Materiales de Contenido

### Videos Loom (6–8 horas — la tarea más grande)

Grabar en este orden (de menor a mayor complejidad de grabación):

**Prioridad 1 — Grabar primero:**
- [ ] Loom 1: Tipos de diseño en 12 minutos (Sesión 2) — ver `guiones-loom/loom-01-tipos-diseno.md`
- [ ] Loom 2: RR, OR, ARR, NNT (Sesión 3) — ver `guiones-loom/loom-02-rr-or-arr-nnt.md`

**Prioridad 2:**
- [ ] Loom 3: Estrategias de búsqueda (Sesión 4) — ver `guiones-loom/loom-03-estrategias-busqueda.md`
- [ ] Loom 4: Anatomy of an RCT (Sesión 6) — ver `guiones-loom/loom-04-anatomy-rct.md`

**Prioridad 3:**
- [ ] Loom 5: Sensibilidad y especificidad (Sesión 7) — ver `guiones-loom/loom-05-sensibilidad-especificidad.md`
- [ ] Loom 6: Forest plots (Sesión 8) — ver `guiones-loom/loom-06-forest-plot.md`

**Setup para grabación:**
- Software: Loom Desktop (gratis, loom.com) o QuickTime Player + OBS
- Cámara encendida en el lado derecho de la pantalla — pequeña pero visible
- Fondo limpio o difuminado
- Audio: micrófono externo si está disponible (el micrófono de laptop suele ser suficiente)
- Duración objetivo: 8–12 min c/u. No más de 15 min.

**Subir los videos:**
- [ ] Subir cada video a Loom o YouTube (no listado)
- [ ] Pegar el link en la página de Notion de la sesión correspondiente

### Artículos para las sesiones (2 horas)

Seleccionar y guardar en PDF los artículos para:

| Sesión | Tipo de artículo | Criterio de selección |
|---|---|---|
| 2 | Serie de casos urológica (corta, <10 páginas) | Acceso libre, publicada en los últimos 5 años |
| 5 | Estudio de cohorte urológico | Con defectos metodológicos identificables (pero publicada en revista respetable) |
| 6 | ECA urológico | Con diagrama CONSORT completo |
| 7 | Estudio de diagnóstico urológico | Con tabla 2×2, curva ROC y reporte QUADAS compatible |
| 8 | Revisión sistemática / meta-análisis urológica | Con forest plot claro |

**Opciones específicas sugeridas:**
- Cohorte sesión 5: cualquier cohorte retrospectiva del Journal of Urology o European Urology sobre BCG en vejiga, recurrencia de CaP, o complicaciones de nefrolitotomía
- ECA sesión 6: SUSPEND trial (Pickard et al., Lancet, 2015) o equivalente sobre alfa-bloqueadores en litiasis
- Diagnóstico sesión 7: cualquier artículo sobre mpMRI vs. biopsia sistemática en CaP (varios disponibles en European Urology)
- RS sesión 8: Cochrane review sobre alfa-bloqueadores en BPH (acceso gratuito)

- [ ] Guardar todos los artículos en Zotero y en la biblioteca de Notion
- [ ] Verificar acceso libre (sin paywall) o disponibilidad a través de la biblioteca de la Universidad del Valle

---

## SEMANA -2: Personalización y Configuración Final

### Ajuste de contenidos (2 horas)
- [ ] Revisar cada guía de sesión y ajustar los ejemplos urológicos al perfil de la cohorte específica (ej. si el grupo tiene interés especial en oncología o litiasis)
- [ ] Añadir fechas reales al calendario de sesiones (la primera sesión, la segunda, etc.)
- [ ] Confirmar qué sesiones serán presenciales y cuáles virtuales (el plan sugiere una distribución — puede ajustarse)

### Quiz diagnóstico para la sesión 2 (1 hora)
- [ ] Crear el quiz de 5 preguntas sobre tipos de diseño en Notion (puede usar Google Forms embebido en Notion)
  - Pregunta 1: Identifica el diseño de este estudio [descripción de un estudio transversal]
  - Pregunta 2: ¿Qué tipo de estudio calcula incidencia? [opciones múltiples]
  - Pregunta 3: ¿Por qué este diseño no puede calcular RR? [cohorte retrospectiva sin control]
  - Pregunta 4: ¿Qué diseño es más apropiado para este PICO? [pregunta de intervención]
  - Pregunta 5: ¿Este artículo tiene un diseño apropiado para su pregunta? [abstracto de ejemplo]

### Preparación de la Sesión 1 (1 hora)
- [ ] Preparar los 3 casos clínicos urológicos que cambiaron la práctica (slides o notas para presentación verbal)
  - Caso 1 sugerido: SUSPEND trial y el debate sobre alfa-bloqueadores en litiasis
  - Caso 2 sugerido: PSA screening y los estudios ERSPC vs. PLCO
  - Caso 3 sugerido: Seleccionar según el interés del grupo (ej. laparoscopía vs. cirugía abierta en nefrectomía)
- [ ] Preparar el PICO "de práctica" para la demostración en vivo de Elicit vs. PubMed
- [ ] Abrir el Miro board o pizarra digital para el clustering de preguntas (alternativa: post-its físicos)

### Comunicación a los residentes (30 min)
- [ ] Enviar email de bienvenida con:
  - Link al workspace de Notion (con instrucciones de acceso)
  - Lista de herramientas a instalar antes de la primera sesión (Jamovi, Zotero, Posit Cloud)
  - La tarea de la primera sesión: traer una pregunta clínica no respondida

---

## SEMANA -1: Prueba General

### Test técnico (1 hora)
- [ ] Hacer login a todas las herramientas desde un dispositivo diferente al habitual (simular ser un residente)
- [ ] Ejecutar los scripts R completos en una instalación limpia de R
- [ ] Verificar que los videos Loom se reproducen correctamente en Notion
- [ ] Probar el quiz de Notion desde una cuenta de residente de prueba

### Preparación de material físico (si aplica)
- [ ] Imprimir listas de chequeo CASP, CONSORT, QUADAS-2 (disponibles en casp-uk.net, consort-statement.org, quadas.org) para las sesiones presenciales
- [ ] Preparar tarjetas de rol para la sesión 5 ("Fiscalía" y "Defensa")
- [ ] Confirmar el salón para las sesiones presenciales y la conexión a internet

---

## CHECKLIST DE INICIO DE CADA SESIÓN

**72 horas antes:**
- [ ] Publicar materiales de pre-trabajo en Notion
- [ ] Si hay video Loom para esa sesión: verificar que el link funciona
- [ ] Leer las micro-reflexiones semanales de los residentes (si aplica)

**24 horas antes:**
- [ ] Revisar el pre-trabajo completado (quiz/reflexión) y ajustar la sesión si es necesario
- [ ] Preparar las preguntas específicas para la sesión basadas en lo que los residentes demostraron entender/no entender

**El mismo día:**
- [ ] Si es virtual: abrir la sala de reunión 10 min antes. Probar audio/video.
- [ ] Si es presencial: verificar proyector, pizarra, conexión a internet
- [ ] Tener R abierto con el script listo (para sesiones de lab)

**Después de la sesión (dentro de 48h):**
- [ ] Revisar los entregables subidos a Notion
- [ ] Dejar comentarios individuales en al menos 2–3 trabajos por sesión
- [ ] Actualizar el estado de los entregables en la base de datos de residentes

---

## PREPARACIÓN DEL SIMPOSIO (Sesión 16)

**4 semanas antes:**
- [ ] Confirmar la fecha y el salón (2 horas mínimo)
- [ ] Enviar invitaciones formales a:
  - Jefe del departamento de urología
  - Al menos 1 profesor externo (ej. de medicina interna, metodólogo, editor de revista)
  - Opcionalmente: directora del posgrado de urología

**2 semanas antes:**
- [ ] Recolectar los abstracts de los trabajos (instructivo a los residentes: 250 palabras, formato estructurado)
- [ ] Compilar el "libro de resúmenes" del simposio (PDF con un abstract por página + portada)

**1 semana antes:**
- [ ] Confirmar asistencia de los invitados
- [ ] Preparar el formulario de votación para el "Premio a la Mejor Pregunta Clínica" (Google Form o papel)
- [ ] Enviar el libro de resúmenes a los invitados externos

**El día del simposio:**
- [ ] Organizar el salón en formato de conferencia (no de clase)
- [ ] Proyector + micrófono si el salón es grande
- [ ] Café/snacks (opcional — pero sube el tono del evento)

---

## RECURSOS ADICIONALES PARA EL INSTRUCTOR

### Lecturas de apoyo pedagógico
- Fink, L.D. (2013). *Creating Significant Learning Experiences*. Jossey-Bass. — el fundamento pedagógico del diseño de este curso
- Wiggins & McTighe. *Understanding by Design*. — el marco de "backward design" (empezar por el producto final)
- Hmelo-Silver, C.E. (2004). "Problem-Based Learning: What and How Do Students Learn?" *Educational Psychology Review*. — fundamento del ABP

### Comunidades y recursos de epidemiología clínica
- GRADE Working Group (gradeworkinggroup.org)
- CASP UK (casp-uk.net) — todas las herramientas de appraisal gratuitas
- Equator Network (equator-network.org) — guías de reporte (CONSORT, PRISMA, STROBE, QUADAS-2)
- The NNT (thennt.com) — NNTs de tratamientos comunes, excelente para ejemplos clínicos

### Revistas urológicas de acceso libre (para artículos de práctica)
- BJU International Open Journal
- BJUI Compass
- Urology Video Journal
- Investigative and Clinical Urology (coreano pero en inglés, acceso abierto)
- Frontiers in Urology

---

## EVALUACIÓN Y MEJORA DEL CURSO

Al finalizar cada cohorte, archivar en Notion:
1. Las respuestas de la retrospectiva de la sesión 16
2. Los puntajes promedios por componente de evaluación
3. Las preguntas que más generaron confusión (identificadas en los quizzes y sesiones)
4. Las herramientas de IA que resultaron más y menos útiles
5. Los productos finales producidos (referencia completa de los sometidos)

Esta información alimenta la revisión del microcurrículum para la próxima cohorte.
