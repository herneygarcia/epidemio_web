# Guión Loom 2: RR, OR, ARR, NNT — Qué Significan en Urología
## Pre-trabajo para la Sesión 3

**Duración objetivo:** 10–12 minutos  
**Material de apoyo:** Tabla 2×2 en la diapositiva (el instructor la construye en vivo)

---

## Estructura del Video

### 0:00–1:00 — Gancho

> "Un artículo dice que el tratamiento X reduce el riesgo de recurrencia en un 40%. Eso suena impresionante. Pero, ¿el 40% de qué? ¿Es un riesgo relativo? ¿Absoluto? ¿Eso cambia la decisión para su paciente de 70 años?
>
> En este video les enseño las 4 medidas que SIEMPRE deben buscar en cualquier artículo antes de decidir si el tratamiento funciona."

---

### 1:00–4:00 — La tabla 2×2 (fundamento de todo)

*[El instructor dibuja la tabla en la pantalla mientras habla]*

```
                    OUTCOME
                  Sí      No
EXPOSICIÓN  Sí   a (VP)  b (FP)
            No   c (FN)  d (VN)
```

**Ejemplo de urología — estudio de litiasis ureteral:**
- Pregunta: ¿tamsulosina aumenta la expulsión espontánea de litiasis ureteral <10mm vs. placebo?
- Resultado del artículo:
  - Tamsulosina: 75 de 100 expulsaron (75%)
  - Placebo: 55 de 100 expulsaron (55%)

*Llenar la tabla mientras habla:*
```
                    Expulsó    No expulsó
Tamsulosina  (100)    75           25
Placebo      (100)    55           45
```

---

### 4:00–7:00 — Las 4 medidas

**1. Riesgo Relativo (RR):**
- "¿Cuántas veces más probable es el outcome en el grupo expuesto vs. el no expuesto?"
- Fórmula: RR = (a/(a+b)) / (c/(c+d))
- Cálculo en el ejemplo: RR = 0.75 / 0.55 = **1.36**
- Interpretación: "Los pacientes con tamsulosina tienen 1.36 veces más probabilidad de expulsar la litiasis que con placebo"
- *Solo válido para estudios de cohorte y ECA — NO para casos y controles*

**2. Odds Ratio (OR):**
- "¿Cuántas veces más son las probabilidades (odds) del outcome en un grupo vs. otro?"
- Fórmula: OR = (a × d) / (b × c)
- Cálculo: OR = (75 × 45) / (25 × 55) = 3375/1375 = **2.45**
- *El OR es válido para todos los diseños, pero se interpreta igual al RR solo cuando el outcome es raro (<10%)*
- *Cuando el outcome es frecuente (como la expulsión de litiasis = 65% en total), el OR SOBREESTIMA el RR*

**TRUCO:** "Si el artículo es de casos y controles → solo pueden calcular OR, no RR. Si el artículo es cohorte o ECA → pueden calcular ambos, pero prefieran el RR."

**3. Reducción Absoluta del Riesgo (RAR o ARR):**
- "¿Cuánto reduce el tratamiento el riesgo en términos absolutos?"
- Fórmula: ARR = Riesgo control − Riesgo tratamiento
- Cálculo: ARR = 0.55 − 0.75 = −0.20 (negativo porque el tratamiento REDUCE el no-expulsión... *ajustar el ejemplo*)
- *Mejor ejemplo:* si 40% del grupo de tamsulosina NO expulsó vs. 55% del placebo: ARR = 0.55 − 0.40 = **0.15** (15%)
- Interpretación: "El tratamiento reduce el riesgo de no expulsar en un 15% absoluto"

**4. Número Necesario a Tratar (NNT):**
- "¿A cuántos pacientes tengo que tratar para obtener 1 resultado favorable adicional?"
- Fórmula: NNT = 1 / ARR
- Cálculo: NNT = 1 / 0.15 = **6.7 ≈ 7 pacientes**
- Interpretación: "Necesito tratar a 7 pacientes con tamsulosina para lograr 1 expulsión espontánea adicional que no habría ocurrido con placebo"
- *Siempre dar el contexto temporal:* "NNT = 7 a 4 semanas de tratamiento"

---

### 7:00–9:30 — Por qué el NNT cambia todo

*[Ejemplo comparativo]*

**Escenario A:**
- Tratamiento oncológico: Reduce mortalidad por cáncer de próstata avanzado del 80% al 60%
- ARR = 20%, NNT = 5
- "Necesito tratar a 5 pacientes para salvar 1 vida adicional"
- **¿Vale la pena?** Probablemente sí, aunque el tratamiento tenga efectos adversos graves

**Escenario B:**
- Suplemento vitamínico: Reduce litiasis urinaria recurrente del 12% al 11%
- ARR = 1%, NNT = 100
- "Necesito tratar a 100 pacientes durante 5 años para prevenir 1 litiasis recurrente adicional"
- **¿Vale la pena?** Depende del costo, los efectos adversos y lo que le importa al paciente

**Mensaje:**
> "El NNT pone el efecto en perspectiva. Un RR = 2.0 puede significar 'me salva la vida' o 'tratamento completamente irrelevante', dependiendo del riesgo absoluto. Por eso el NNT es tan importante — y por eso los artículos a veces no lo reportan."

---

### 9:30–11:00 — Reducción Relativa del Riesgo (RRR) — la trampa publicitaria

> "La RRR es cómo los investigadores (y la industria farmacéutica) hacen que un efecto pequeño parezca grande."

- Fórmula: RRR = ARR / Riesgo control = 0.01 / 0.12 = **8.3%** (del escenario B)
- "¡El suplemento reduce el riesgo en un 8.3%!" — suena mal
- Pero: "¡El suplemento reduce el riesgo EN UN 8.3% RELATIVO!" — si lo reportas sin el contexto del NNT = 100, parece más relevante de lo que es

*"Cuando lean un artículo: busquen el ARR y el NNT, no solo el RRR. Si el artículo no los reporta, calcúlenlos ustedes."*

---

### 11:00–12:00 — Cierre

> "Las 4 medidas:
> - **RR** → ¿cuántas veces más riesgo?
> - **OR** → similar al RR, pero para todos los diseños (y sobreestima cuando el outcome es frecuente)
> - **ARR** → ¿cuánto reduce el riesgo en términos absolutos?
> - **NNT** → ¿a cuántos trato para beneficiar a 1?
>
> En la sesión del viernes, haremos esto con datos reales de litiasis en Jamovi. Tráigan el laptop con Jamovi instalado."

---

## Notas de Grabación
- Usar una pantalla de pizarra digital (Explain Everything, GoodNotes en iPad, o simplemente Keynote con dibujo a mano) para construir la tabla 2×2 en tiempo real
- El ejemplo de litiasis y tamsulosina es intencional — conecta con el dataset de la sesión 3
- Si el instructor tiene una calculadora de NNT favorita (ej. NNT calculator en medscape), mostrarlo brevemente al final
