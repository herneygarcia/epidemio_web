# Guión Loom 5: Sensibilidad, Especificidad, VPP, VPN — Explicados con un Caso Urológico
## Pre-trabajo para la Sesión 7

**Duración objetivo:** 10 minutos  
**Material:** Tabla 2×2 construida en tiempo real con el caso del PSA

---

## Estructura del Video

### 0:00–1:00 — Apertura

> "Un paciente de 65 años viene a su consulta con PSA de 5.2 ng/mL. ¿Le hace biopsia?
>
> Para responder eso correctamente, necesitan entender sensibilidad, especificidad, VPP y VPN. No como fórmulas abstractas, sino como herramientas para tomar la mejor decisión para ese paciente específico, en ese contexto específico.
>
> En este video construimos todo eso desde cero, con el PSA como ejemplo."

---

### 1:00–3:00 — La tabla 2×2 del diagnóstico

*[Construir en pantalla mientras habla]*

"Imaginen un estudio donde se tomó el PSA y luego una biopsia de próstata a 1000 hombres de 60–70 años. Los resultados:"

```
                    BIOPSIA (Estándar de referencia)
                    Cáncer          No cáncer       TOTAL
PSA ≥ 4.0  Positivo   140 (VP)        280 (FP)        420
           Negativo    60 (FN)         520 (VN)        580
           TOTAL       200              800            1000
```

*"Esta tabla dice todo. Vamos celda por celda."*

- VP = 140: 140 hombres con PSA positivo Y cáncer (positivos verdaderos)
- FP = 280: 280 hombres con PSA positivo pero SIN cáncer (falsas alarmas)
- FN = 60: 60 hombres con PSA negativo pero CON cáncer (cánceres perdidos)
- VN = 520: 520 hombres con PSA negativo y sin cáncer

---

### 3:00–6:00 — Las 4 medidas calculadas

**Sensibilidad = VP / (VP + FN) = 140 / 200 = 70%**
> "De todos los hombres CON cáncer, el PSA los detectó al 70%. Perdió el 30%."
> "Alta sensibilidad → pocas cánceres perdidos → ideal para screening"

**Especificidad = VN / (VN + FP) = 520 / 800 = 65%**
> "De todos los hombres SIN cáncer, el PSA los descartó correctamente al 65%. Generó falsas alarmas en el 35%."
> "Alta especificidad → pocas biopsias innecesarias → ideal para diagnóstico confirmatorio"

**Valor Predictivo Positivo (VPP) = VP / (VP + FP) = 140 / 420 = 33%**
> "Si el PSA es positivo (≥4), la probabilidad de que ESTE paciente tenga cáncer es solo del 33%."
> "Eso significa que de cada 3 biopsias, 2 serán negativas."

**Valor Predictivo Negativo (VPN) = VN / (VN + FN) = 520 / 580 = 90%**
> "Si el PSA es negativo (<4), la probabilidad de que ESTE paciente NO tenga cáncer es del 90%."
> "El 10% restante tiene cáncer pero con PSA bajo (una limitación conocida del PSA)."

---

### 6:00–8:00 — La trampa del VPP: depende de la prevalencia

> "Ahora viene lo más importante del video — la parte que más confunde a los médicos."

**La sensibilidad y la especificidad son PROPIEDADES DE LA PRUEBA — no cambian con la prevalencia.**

**El VPP y el VPN SÍ cambian con la prevalencia.**

Mismo PSA (sensibilidad 70%, especificidad 65%) en dos contextos:

**Contexto 1: Screening en hombres de 60 años (prevalencia de cáncer 20%)**
- De 1000 hombres: 200 tienen cáncer, 800 no
- VP = 140, FP = 280, FN = 60, VN = 520
- VPP = 140/420 = 33%

**Contexto 2: Consulta de alta sospecha (prevalencia 50%)**
- De 1000 hombres: 500 tienen cáncer, 500 no
- VP = 350, FP = 175, FN = 150, VN = 325
- VPP = 350/525 = 67%

*"¡El PSA 'parece mejor' cuando hay más enfermos! Pero la prueba no cambió — cambió el contexto."*

> "Implicación clínica: en un paciente con PSA de 5 que llegó a su consulta con nódulo prostático al tacto, antecedente familiar y síntomas urinarios → su probabilidad pre-test es alta → el VPP es mayor. En un paciente asintomático en chequeo de rutina → VPP menor."

---

### 8:00–9:30 — Likelihood Ratios: la herramienta más poderosa

> "Los LR son mejores que el VPP/VPN porque no dependen de la prevalencia — puedes usarlos con CUALQUIER prevalencia."

**LR+ = Sensibilidad / (1 - Especificidad) = 0.70 / 0.35 = 2.0**
> "Un PSA positivo hace que la probabilidad de cáncer sea 2 veces mayor que antes de la prueba"

**LR- = (1 - Sensibilidad) / Especificidad = 0.30 / 0.65 = 0.46**
> "Un PSA negativo hace que la probabilidad de cáncer sea 0.46 veces la probabilidad previa (la reduce a casi la mitad)"

*Regla práctica:*
- LR+ > 10 → prueba muy útil para descartar cuando es positiva
- LR+ entre 2–10 → prueba moderadamente útil
- LR+ cercano a 1 → la prueba no aporta información (el resultado no cambia la probabilidad)

---

### 9:30–10:00 — Cierre

> "En la sesión del viernes calcularán todo esto en R con un dataset real de PSA. También aplicarán QUADAS-2 a un artículo de diagnóstico urológico.
>
> La pregunta para reflexionar antes de la sesión: ¿por qué una prueba con LR+ = 1.1 es clínicamente inútil aunque tenga un valor p de 0.001 en el artículo?"

---

## Notas de Grabación
- El momento de la trampa del VPP (min 6–8) es el núcleo del video — detenerse y asegurarse de que esté claro antes de continuar
- El ejemplo numérico debe ser el mismo que el del script R de la sesión 7 para que haya coherencia
- Opcional: mostrar la nomogramas de Fagan (disponibles en aplicaciones de medicina basada en evidencia) para calcular probabilidades post-test con LR
