---
title: Seleccionar los datos para el modelo
linktitle: Datos para el modelo
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-machine-learning:
    parent: Machine learning 101
    weight: 6

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 6
---

## Seleccionar datos para modelar
Su conjunto de datos tenía demasiadas variables para entenderlo, o incluso para imprimirlo bien. ¿Cómo puede reducir esta cantidad abrumadora de datos a algo que pueda entender?

Comenzaremos eligiendo algunas variables usando nuestra intuición. Los cursos posteriores le mostrarán técnicas estadísticas para priorizar automáticamente las variables.

Para elegir variables / columnas, necesitaremos ver una lista de todas las columnas en el conjunto de datos. Eso se hace con la propiedad de columnas del DataFrame (la línea inferior del código a continuación).

```python
import pandas as pd

melbourne_file_path = '../input/melbourne-housing-snapshot/melb_data.csv'
melbourne_data = pd.read_csv(melbourne_file_path)
melbourne_data.columns
```

```
# The Melbourne data has some missing values (some houses for which some variables weren't recorded.)
# We'll learn to handle missing values in a later tutorial.  
# Your Iowa data doesn't have missing values in the columns you use.
# So we will take the simplest option for now, and drop houses from our data.
# Don't worry about this much for now, though the code is:

# dropna drops missing values (think of na as "not available")
melbourne_data = melbourne_data.dropna(axis=0)
```

Hay muchas formas de seleccionar un subconjunto de sus datos. El Micro Curso de Pandas los cubre con más profundidad, pero por ahora nos centraremos en dos enfoques.

Notación de puntos, que usamos para seleccionar el "objetivo de predicción"
Seleccionando con una lista de columnas, que usamos para seleccionar las "características"

### Selecting The Prediction Target
You can pull out a variable with dot-notation. This single column is stored in a Series, which is broadly like a DataFrame with only a single column of data.

We'll use the dot notation to select the column we want to predict, which is called the prediction target. By convention, the prediction target is called y. So the code we need to save the house prices in the Melbourne data is


```python
y = melbourne_data.Price
```

## Elegir "Características"
Las columnas que se ingresan en nuestro modelo (y luego se usan para hacer predicciones) se denominan "características". En nuestro caso, esas serían las columnas utilizadas para determinar el precio de la vivienda. A veces, usará todas las columnas excepto el objetivo como características. Otras veces estará mejor con menos funciones.

Por ahora, crearemos un modelo con solo algunas características. Más adelante verá cómo iterar y comparar modelos creados con diferentes características.

Seleccionamos múltiples características al proporcionar una lista de nombres de columnas entre paréntesis. Cada elemento de esa lista debe ser una cadena (con comillas).

Aquí hay un ejemplo:

```python
melbourne_features = ['Rooms', 'Bathroom', 'Landsize', 'Lattitude', 'Longtitude']
```

Por conveniencia atribuimos los datos a la variable **X**

```python
X = melbourne_data[melbourne_features]
```

Revisemos rápidamente los datos que usaremos para predecir los precios de la vivienda utilizando el método de descripción y el método de encabezado, que muestra las pocas filas superiores.


```python
X.describe()
```


```python
X.head()
```
