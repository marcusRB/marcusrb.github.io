---
title: Explorando los datos
linktitle: Explorando los datos
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-machine-learning:
    parent: Machine learning 101
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

## Usando pandas para familiarizarse con sus datos
El primer paso en cualquier proyecto de aprendizaje automático es familiarizarse con los datos. Usarás la biblioteca Pandas para esto. Pandas es la herramienta principal de datos que los científicos usan para explorar y manipular datos. La mayoría de las personas abrevian pandas en su código como _pd_. Hacemos esto con el comando

```python
import pandas as pd
```

La parte más importante de la biblioteca Pandas es el DataFrame. Un DataFrame contiene el tipo de datos que podría considerar como una tabla. Esto es similar a una hoja en Excel, o una tabla en una base de datos SQL.

Pandas tiene métodos poderosos para la mayoría de las cosas que querrás hacer con este tipo de datos.

Como ejemplo, veremos datos sobre los precios de la vivienda en Melbourne, Australia. En los ejercicios prácticos, aplicará los mismos procesos a un nuevo conjunto de datos, que tiene los precios de las viviendas en Iowa.

Los datos de ejemplo (Melbourne) están en la ruta del archivo **../input/melbourne-housing-snapshot/melb_data.csv**.

Cargamos y exploramos los datos con los siguientes comandos:

```python
# save filepath to variable for easier access
melbourne_file_path = '../input/melbourne-housing-snapshot/melb_data.csv'
# read the data and store data in DataFrame titled melbourne_data
melbourne_data = pd.read_csv(melbourne_file_path)
# print a summary of the data in Melbourne data
melbourne_data.describe()
```

## Interpretación de la descripción de datos
Los resultados muestran 8 números para cada columna en su conjunto de datos original. El primer número, el recuento, muestra cuántas filas tienen valores no faltantes.

Los valores perdidos surgen por muchas razones. Por ejemplo, el tamaño de la segunda habitación no se recogería al inspeccionar una casa de 1 habitación. Volveremos al tema de los datos faltantes.

El segundo valor es la media, que es el promedio. Debajo de eso, std es la desviación estándar, que mide la extensión numérica de los valores.

Para interpretar los valores mínimo, 25%, 50%, 75% y máximo, imagine ordenar cada columna del valor más bajo al más alto. El primer valor (el más pequeño) es el mínimo. Si recorre un cuarto de camino en la lista, encontrará un número que es mayor que el 25% de los valores y menor que el 75% de los valores. Ese es el valor del 25% (pronunciado "percentil 25"). Los percentiles 50 y 75 se definen de forma análoga, y el máximo es el número más grande.
