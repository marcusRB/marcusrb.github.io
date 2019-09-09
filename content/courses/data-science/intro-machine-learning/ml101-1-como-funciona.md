---
title: Cómo funcionan los modelos
linktitle: Cómo funcionan los modelos
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-machine-learning:
    parent: Machine learning 101
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

## Introducción

Comenzaremos con una descripción general de cómo funcionan los modelos de aprendizaje automático y cómo se usan. Esto puede parecer básico si ya ha realizado modelos estadísticos o aprendizaje automático. No se preocupe, progresaremos para construir modelos potentes pronto.

Este micro curso le permitirá construir modelos a medida que avance en el siguiente escenario:

Su primo ha ganado millones de dólares especulando con bienes raíces. Se ofreció a convertirse en socio comercial con usted debido a su interés en la ciencia de datos. Él proporcionará el dinero, y usted proporcionará modelos que predicen cuánto valen varias casas.

Le preguntas a tu primo cómo ha predicho los valores inmobiliarios en el pasado. y dice que es solo intuición. Pero más preguntas revelan que ha identificado patrones de precios de casas que ha visto en el pasado, y usa esos patrones para hacer predicciones para las casas nuevas que está considerando.

El aprendizaje automático funciona de la misma manera. Comenzaremos con un modelo llamado Árbol de decisión. Hay modelos más elegantes que dan predicciones más precisas. Pero los árboles de decisión son fáciles de entender y son el bloque de construcción básico para algunos de los mejores modelos en ciencia de datos.

Para simplificar, comenzaremos con el árbol de decisión más simple posible.

![][1]

Divide las casas en solo dos categorías. El precio previsto para cualquier casa en consideración es el precio promedio histórico de las casas en la misma categoría.

Usamos datos para decidir cómo dividir las casas en dos grupos, y luego nuevamente para determinar el precio previsto en cada grupo. Este paso de capturar patrones de datos se llama ajuste (**fitting)** o capacitación del modelo (**training**). Los datos utilizados para ajustarse **fit** al modelo se denominan datos de **entrenamiento**.

Los detalles de cómo se ajusta el modelo (por ejemplo, cómo dividir los datos) son lo suficientemente complejos como para guardarlos para más adelante. Después de que el modelo se haya ajustado, puede aplicarlo a nuevos datos para **predecir** los precios de viviendas adicionales.

***

## Mejorando el árbol de decisiones
¿Cuál de los siguientes dos árboles de decisiones es más probable que resulte de ajustar los datos de capacitación de bienes raíces?

![][2]

El árbol de decisión de la izquierda (Árbol de decisión 1) probablemente tenga más sentido, porque captura la realidad de que las casas con más habitaciones tienden a venderse a precios más altos que las casas con menos habitaciones. El mayor inconveniente de este modelo es que no captura la mayoría de los factores que afectan el precio de la vivienda, como la cantidad de baños, el tamaño del lote, la ubicación, etc.

Puede capturar más factores utilizando un árbol que tiene más "divisiones". Estos se llaman árboles "más profundos". Un árbol de decisión que también considera el tamaño total del lote de cada casa podría verse así:

![][3]


Usted predice el precio de cualquier casa rastreando a través del árbol de decisión, siempre eligiendo la ruta correspondiente a las características de esa casa. El precio previsto para la casa está en la parte inferior del árbol. El punto en la parte inferior donde hacemos una predicción se llama hoja (**leaf**).

Las divisiones y los valores en las hojas estarán determinados por los datos, por lo que es hora de que revise los datos con los que trabajará.



[1]: http://i.imgur.com/7tsb5b1.png
[2]: http://i.imgur.com/prAjgku.png
[3]: http://i.imgur.com/R3ywQsR.png
