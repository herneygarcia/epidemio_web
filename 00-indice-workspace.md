# Workspace Notion — Epidemiología e Investigación
## Guía de Configuración para el Instructor

---

## Estructura del Workspace

```
📚 EPIDEMIOLOGÍA E INVESTIGACIÓN — Urología UniValle
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
│   ├── [Residente 2] → Protocolo (usando plantilla)
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
│   ├── Sesión 2 — ...
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
2. Crear workspace con nombre: "Epidemiología e Investigación — Urología UniValle [año]"
3. Configurar como workspace de equipo (no personal)

### Paso 2: Invitar a los residentes
1. Settings → Members → Invite by email
2. Rol para residentes: "Member" (pueden editar)
3. Rol para el instructor: "Admin"

### Paso 3: Crear la página base
Crear una página principal con la narrativa de la expedición y el mapa de 16 sesiones.

### Paso 4: Configurar bases de datos

**Base de datos: Residentes**
Campos:
- Nombre (texto)
- Email (texto)
- Pregunta PICO v1 (texto)
- Pregunta PICO final (texto)
- Tipo de producto (select: Protocolo primario / RS / Protocol de RS)
- Compañero metodológico (relación)
- Diario de expedición (relación)

**Base de datos: Banco de Preguntas**
Campos:
- PICO (texto)
- Residente (relación)
- Versión (número — 1, 2, 3...)
- Fecha (fecha)
- Diseño sugerido (select: ECA / Cohorte / C&C / Transversal / Diagnóstico / RS)
- Comentarios del instructor (texto)

**Base de datos: Artículos de la Biblioteca**
Campos:
- Título (título)
- Autores (texto)
- DOI/link (URL)
- Sesión en que se usa (select)
- Herramienta de appraisal (select: CASP-cohorte / CASP-C&C / CONSORT / QUADAS-2 / AMSTAR)
- Residente que lo evaluó (relación)
- Appraisal completado (checkbox)

### Paso 5: Crear las páginas de sesión
Crear una página por cada sesión con:
- Pre-trabajo (links o instrucciones)
- Materiales descargables
- Espacio para entregables (base de datos o subpágina por residente)

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

## Tips de Uso

- **Notion AI:** disponible en el plan Plus. Útil para que los residentes generen estructuras de texto y las critiquen. El instructor puede decidir si activarla.
- **Comentarios:** usar @menciones para retroalimentación directa a un residente en un documento
- **Historial de versiones:** Notion guarda automáticamente el historial — muy útil para el portafolio de evolución PICO
- **Exportar:** los residentes pueden exportar sus documentos como PDF al final del curso — ese es su portafolio
