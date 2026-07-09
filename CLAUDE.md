# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

Static website for the course **Epidemiología e Investigación** (Especialización en Urología, Universidad del Valle). No build system, no dependencies — all pages are self-contained HTML files with embedded CSS and JS.

## Pages

| File | Purpose |
|---|---|
| `index.html` | Main course page — all sections: hero, acerca, sesiones, evaluación, herramientas, recursos |
| `sesiones.html` | 16 individual sessions with sidebar nav, expandable content |
| `rubricas.html` | 5 grading rubrics with color-coded criteria tables |
| `plantillas.html` | 6 Notion workspace templates with folder-tab card design |
| `quiz-disenos.html` | Self-graded quiz page — randomly assigns 1 of 5 quizzes on research design types, grades via Submit button; linked from `sesiones.html` |

## Design system

**Colors:** `--navy #002855` · `--red #C8102E` · `--parch #F5F0E8` · `--gold #C4902E` · `--teal #2A7F8C` · `--dark #1A2A40`

**Fonts (Google Fonts):** `Playfair Display` (display/headings) · `Source Sans 3` (body) · `JetBrains Mono` (utility/mono)

**Page banners:** always red (`linear-gradient` using `--red`). Background: `--parch` for index/rubricas, `#E8F4F6` for plantillas.

## Source content

The HTML pages are generated from markdown source files — do not edit the markdown to update the site; edit the HTML directly.

| Markdown source | Used in |
|---|---|
| `rubricas/*.md` | `rubricas.html` |
| `notion-workspace/*.md` | `plantillas.html` |
| `sesiones/` | `sesiones.html` |
| `quizzes/*.md` | `quiz-disenos.html` (data transcribed into embedded JS) |
| `microcurriculum.md` | `index.html` |

## Assets

- `logos/` — 4 images referenced with relative paths (`logos/epi.png`, etc.). Never embed these as base64.
- Footer images (QR code + professor photo) are base64-encoded directly in each HTML file — this is intentional so the footer works without a server.
- `scripts-r/` and `datasets/` — downloadable files linked from `index.html` with the `download` attribute.

## Skills

Use `/frontend-design` when creating a new page or making significant visual changes — it guides palette, typography, and signature element decisions to keep the design distinctive and consistent with the rest of the site.

## Files to deploy to GitHub

`index.html`, `sesiones.html`, `rubricas.html`, `plantillas.html`, `quiz-disenos.html`, `logos/`, `scripts-r/`, `datasets/`

The folders `rubricas/`, `notion-workspace/`, `sesiones/`, `quizzes/`, `guiones-loom/`, `herramientas-ia/` are source content only — not needed on the web server.
