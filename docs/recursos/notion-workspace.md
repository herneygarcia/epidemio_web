# Workspace de Notion — Guía de Configuración

Esta guía describe cómo configurar el workspace de Notion que sirve como hub colaborativo del curso. El workspace centraliza los diarios de cada residente, el banco de preguntas PICO, los protocolos en desarrollo y los materiales de cada sesión.

---

## Estructura del Workspace

```
📚 EPIDEMIOLOGÍA E INVESTIGACIÓN — [Especialidad] [Institución]
│
├── 🗺️ La Expedición                        ← página de bienvenida y narrativa
│
├── 👥 Residentes                            ← base de datos de residentes
│   ├── [Residente 1] → Diario de expedición
│   ├── [Residente 2] → Diario de expedición
│   └── ...
│
├── ❓ Banco de Preguntas PICO               ← base de datos compartida
│   (tabla con: residente, PICO v1, PICO v2 ... vFinal, diseño, producto elegido)
│
├── 📄 Protocolos                            ← carpeta de protocolos en desarrollo
│   ├── [Residente 1] → Protocolo (usando plantilla)
│   └── ...
│
├── 📖 Biblioteca Compartida                 ← artículos criticados + referencias
│   ├── Artículos asignados por sesión
│   └── [Cada residente puede añadir artículos]
│
├── 📋 Sesiones                             ← materiales semanales
│   ├── Sesión 1 — La Duda que Cambia Todo
│   │   ├── Pre-trabajo
│   │   ├── Dataset/materiales
│   │   └── Entregable
│   └── ... (16 sesiones)
│
└── 📊 Evaluación                           ← rúbricas + entregables calificados
    ├── Rúbricas (links a los PDF)
    └── [Por residente: status de entregables]
```

---

## Pasos para Crear el Workspace

### Paso 1: Crear el workspace
1. Ir a notion.so → "Get Notion free"
2. Crear workspace con nombre: `"Epidemiología e Investigación — [Especialidad] [Institución] [Año]"`
3. Configurar como workspace de equipo (no personal)

### Paso 2: Invitar a los residentes
1. Settings → Members → Invite by email
2. Rol para residentes: **Member** (pueden editar)
3. Rol para el instructor: **Admin**

### Paso 3: Crear la página base
Crear una página principal con la narrativa del curso y el mapa de 16 sesiones.

### Paso 4: Configurar las bases de datos

**Base de datos: Residentes**

| Campo | Tipo |
|-------|------|
| Nombre | Texto |
| Email | Texto |
| Pregunta PICO v1 | Texto |
| Pregunta PICO final | Texto |
| Tipo de producto | Select: Protocolo / RS / Protocolo RS |
| Compañero metodológico | Relación |
| Diario de expedición | Relación |

**Base de datos: Banco de Preguntas**

| Campo | Tipo |
|-------|------|
| PICO | Texto |
| Residente | Relación |
| Versión | Número (1, 2, 3…) |
| Fecha | Fecha |
| Diseño sugerido | Select: ECA / Cohorte / C&C / Transversal / Diagnóstico / RS |
| Comentarios del instructor | Texto |

**Base de datos: Artículos de la Biblioteca**

| Campo | Tipo |
|-------|------|
| Título | Título |
| Autores | Texto |
| DOI/link | URL |
| Sesión en que se usa | Select |
| Herramienta de appraisal | Select: CASP-cohorte / CASP-C&C / CONSORT / QUADAS-2 / AMSTAR |
| Residente que lo evaluó | Relación |
| Appraisal completado | Checkbox |

### Paso 5: Crear las páginas de sesión
Crear una página por cada sesión con:
- Pre-trabajo (links o instrucciones)
- Materiales descargables
- Espacio para entregables (subpágina por residente)

### Paso 6: Configurar el diario de expedición por residente
Cada residente tiene su propia página con subpáginas para:
- Micro-reflexiones semanales (indexadas por fecha)
- Evolución del PICO
- Borradores del protocolo
- Dossier de appraisal

---

## Flujo Semanal en Notion

**Lunes–Jueves (antes del viernes):**
- Instructor publica los materiales de la sesión siguiente
- Instructor publica el video Loom (si aplica)
- Residentes completan el pre-trabajo y publican en Notion

**Viernes:**
- Sesión presencial o virtual
- Los entregables de la sesión se publican en Notion al finalizar

**Sábado–Jueves:**
- Instructor deja comentarios en los entregables (plazo: 72 horas)
- Compañero metodológico revisa y comenta el borrador del par

---

## Plantillas para Copiar al Workspace

Descarga estas plantillas y úsalas en Notion como páginas duplicables:

- [Protocolo de Investigación](../plantillas/protocolo.md)
- [Appraisal Crítico](../plantillas/appraisal.md)
- [Diario de Expedición](../plantillas/diario-expedicion.md)
- [Banco de Preguntas PICO](../plantillas/banco-preguntas.md)
- [Reflexión Semanal](../plantillas/reflexion-semanal.md)
- [Revisión entre Pares](../plantillas/revision-pares.md)

---

## Tips de Uso

- **Notion AI:** disponible en el plan Plus. Útil para que los residentes generen estructuras de texto y las critiquen
- **Comentarios:** usar @menciones para retroalimentación directa a un residente en un documento
- **Historial de versiones:** Notion guarda automáticamente el historial — muy útil para el portafolio de evolución PICO
- **Exportar:** los residentes pueden exportar sus documentos como PDF al final del curso — ese es su portafolio
