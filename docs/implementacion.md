# Guía de Implementación

Esta guía permite a cualquier programa de especialización médica adoptar y adaptar este microcurrículo. El diseño pedagógico es **independiente de la especialidad** — solo los casos clínicos y los datasets cambian.

---

## ¿Cuánto tiempo lleva preparar el curso?

El curso puede estar listo para la primera sesión en **3–4 semanas de preparación**.

---

## Semana -4: Infraestructura

### Personalizar este sitio web

Edita el archivo `mkdocs.yml` en la raíz del repositorio:

```yaml
extra:
  especialidad: Tu Especialidad        # ← cambiar
  institucion: Tu Universidad          # ← cambiar
  instructor: Tu Nombre y Credenciales # ← cambiar
  anio: "2026"                         # ← cambiar
```

Para cambiar los colores institucionales, modificar en `mkdocs.yml`:
```yaml
theme:
  palette:
    - scheme: default
      primary: blue   # ← opciones: red, pink, purple, indigo, blue, cyan, teal, green...
      accent: light blue
```

### Configurar Notion (3–4 horas)

- [ ] Crear workspace: `"Epidemiología e Investigación — [Especialidad] [Institución] [Año]"`
- [ ] Crear bases de datos: Banco de Preguntas, Residentes, Biblioteca de Artículos
- [ ] Crear 16 páginas de sesiones (vacías con plantilla consistente)
- [ ] Invitar a los residentes como miembros
- [ ] Publicar las plantillas (ver sección [Plantillas](plantillas/protocolo.md))

### Cuentas de herramientas (1 hora)

- [ ] Verificar acceso de los residentes a: Elicit, Consensus, Rayyan, GRADEpro, OSF
- [ ] Crear librería compartida en Zotero
- [ ] Verificar acceso institucional a revistas (Embase, Cochrane, etc.)
- [ ] Crear cuenta en [Posit Cloud](https://posit.cloud) como respaldo para las sesiones de R

---

## Semana -3: Contenido

### Adaptar los casos clínicos

Las sesiones usan ejemplos de **urología** que deben reemplazarse por casos de tu especialidad. En cada archivo de sesión (`docs/sesiones/sesion-XX.md`) busca las secciones marcadas con ejemplos específicos y reemplázalas.

**Criterios para buenos casos clínicos de ejemplo:**
- Pregunta clínica real que los residentes puedan reconocer de su práctica
- Que exista evidencia publicada (para poder criticarla)
- Preferiblemente un caso que tenga un "giro" — donde la evidencia contradijo la práctica habitual

### Adaptar el dataset de R

El dataset de ejemplo (`docs/recursos/datasets/litiasis_urovalle_2024.csv`) simula 200 pacientes con litiasis urinaria. Para tu especialidad:

**Opción A:** Usar datos reales anonimizados de tu institución (ideal)
**Opción B:** Simular un dataset con la misma estructura pero variables de tu área

Variables mínimas para que los scripts de R funcionen sin cambios:
```
id, edad, sexo, variable_continua, variable_dicotomica, outcome (0/1), tiempo_outcome
```

Si cambias los nombres de las variables, actualizar las referencias en los scripts de R (marcadas con `# ADAPTAR:` en el código).

### Grabar los videos Loom (6–8 horas)

Ver guiones en [Videos del Instructor](recursos/videos.md). Grabar en este orden (los guiones están en `docs/recursos/videos/`):

1. Loom 1 — Tipos de diseño (pre-sesión 2)
2. Loom 2 — Medidas de efecto: RR, OR, ARR, NNT (pre-sesión 3)
3. Loom 3 — Estrategias de búsqueda (pre-sesión 4)
4. Loom 4 — Anatomía de un ECA (pre-sesión 6)
5. Loom 5 — Sensibilidad y especificidad (pre-sesión 7)
6. Loom 6 — Forest plots (pre-sesión 8)

---

## Semana -2: Piloto y Ajustes

- [ ] Ejecutar los scripts R completos en R ≥ 4.2 con el nuevo dataset y verificar que no hay errores
- [ ] Revisar todas las sesiones y confirmar que los casos clínicos son apropiados para tu cohorte
- [ ] Hacer `mkdocs serve` y navegar el sitio completo
- [ ] Invitar a un colega a revisar el sitio antes de compartirlo con los residentes

---

## Semana -1: Comunicación

- [ ] Compartir la URL del sitio con los residentes
- [ ] Enviar invitación al workspace de Notion
- [ ] Enviar el link del video Loom 1 (pre-trabajo de la sesión 1 no existe, pero sí la consigna: traer un caso clínico reciente)
- [ ] Confirmar acceso de todos a las herramientas

---

## Desplegar el Sitio Web

### GitHub Pages (recomendado — gratis)

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Inicializar repositorio (si no existe)
git init
git remote add origin https://github.com/tu-usuario/epidemio-web.git

# 3. Desplegar
mkdocs gh-deploy
```

El sitio quedará disponible en `https://tu-usuario.github.io/epidemio-web/`

### Netlify (alternativa)

1. Hacer push del repositorio a GitHub
2. Conectar en [netlify.com](https://netlify.com) → "New site from Git"
3. Build command: `mkdocs build`
4. Publish directory: `site`

### Vista local

```bash
pip install -r requirements.txt
mkdocs serve
# → http://localhost:8000
```

---

## Adaptar las Rúbricas

Las [rúbricas de evaluación](rubricas/portafolio-pico.md) usan criterios genéricos que aplican a cualquier especialidad. Los únicos ajustes típicos son:

- **Rúbrica de análisis R**: actualizar el nombre del dataset y las variables específicas
- **Rúbrica de producto final**: verificar que los formatos de revistas mencionados sean relevantes para tu área

---

## Licencia

Este material está bajo licencia [Creative Commons CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

Puedes usar, adaptar y redistribuir libremente con la siguiente atribución:
> *Adaptado de García Perdomo HA. "Epidemiología e Investigación" — Microcurrículo para Especialización Médica. Universidad del Valle, 2026. CC BY 4.0.*

---

## Soporte

Para preguntas sobre implementación o adaptación del curso:
**Herney Andrés García Perdomo MD MSc EdD PhD** — herney.garcia@correounivalle.edu.co
