---
title: Conceptos de Amazon Web Services AWS
linktitle: Servicios de AWS
toc: true
type: docs
date: "2020-12-08T00:00:00+01:00"
lastmod: "2020-12-08T00:00:00+01:00"
draft: false
menu:
  intro-aws:
    parent: AWS 101
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

## Introducción
El lenguaje de consulta estructurado, o SQL, es el lenguaje de programación utilizado con las bases de datos, y es una habilidad importante para cualquier científico de datos. En este curso, desarrollará sus habilidades de SQL utilizando BigQuery, un servicio web que le permite aplicar SQL a grandes conjuntos de datos.

En esta lección, aprenderá los conceptos básicos para acceder y examinar los conjuntos de datos de BigQuery. Después de que tenga una idea de estos conceptos básicos, volveremos a desarrollar sus habilidades de SQL.


### Tus primeros comandos BigQuery
Para usar BigQuery, importaremos el paquete de Python a continuación:

```python
from google.cloud import bigquery
```

El primer paso en el flujo de trabajo es crear un objeto *Client*. Como pronto verá, este objeto *Client* desempeñará un papel central en la recuperación de información de los conjuntos de datos de BigQuery.

```python
# Create a "Client" object
client = bigquery.Client()
```

Trabajaremos con un conjunto de datos de publicaciones en [Hacker News](https://news.ycombinator.com/), un sitio web que se centra en noticias de informática y seguridad cibernética.

En BigQuery, cada conjunto de datos está contenido en un proyecto correspondiente. En este caso, nuestro conjunto de datos *hacker_news* está contenido en el proyecto *bigquery-public-data*. Para acceder al conjunto de datos,

* Comenzamos construyendo una referencia al conjunto de datos con el método *dataset()*.
* A continuación, utilizamos el método *get_dataset()*, junto con la referencia que acabamos de construir, para obtener el conjunto de datos.


```python
# Construct a reference to the "hacker_news" dataset
dataset_ref = client.dataset("hacker_news", project="bigquery-public-data")

# API request - fetch the dataset
dataset = client.get_dataset(dataset_ref)
```

Cada conjunto de datos es solo una colección de tablas. Puede pensar en un conjunto de datos como un archivo de hoja de cálculo que contiene varias tablas, todas compuestas de filas y columnas.

Usamos el método *list_tables()* para listar las tablas en el conjunto de datos.

```python
# List all the tables in the "hacker_news" dataset
tables = list(client.list_tables(dataset))

# Print names of all tables in the dataset (there are four!)
for table in tables:  
    print(table.table_id)
```

***OUTPUT***
```
comments
full
full_201510
stories
```

De forma similar a cómo obtuvimos un conjunto de datos, podemos obtener una tabla. En la celda de código a continuación, buscamos la tabla *full* en el conjunto de datos *hacker_news*.

```python
# Construct a reference to the "full" table
table_ref = dataset_ref.table("full")

# API request - fetch the table
table = client.get_table(table_ref)
```

En la siguiente sección, explorará el contenido de esta tabla con más detalle. Por ahora, tómese el tiempo de usar la imagen a continuación para consolidar lo que ha aprendido hasta ahora.

![][1]

## Esquema de la tabla
La estructura de una tabla se llama esquema. Necesitamos entender el esquema de una tabla para extraer efectivamente los datos que queremos.

En este ejemplo, investigaremos la tabla completa *full* que obtuvimos anteriormente.

```python
# Print information on all the columns in the "full" table in the "hacker_news" dataset
table.schema
```

***OUTPUT***
```
[SchemaField('by', 'STRING', 'NULLABLE', "The username of the item's author.", ()),
 SchemaField('score', 'INTEGER', 'NULLABLE', 'Story score', ()),
 SchemaField('time', 'INTEGER', 'NULLABLE', 'Unix time', ()),
 SchemaField('timestamp', 'TIMESTAMP', 'NULLABLE', 'Timestamp for the unix time', ()),
 SchemaField('title', 'STRING', 'NULLABLE', 'Story title', ()),
 SchemaField('type', 'STRING', 'NULLABLE', 'Type of details (comment, comment_ranking, poll, story, job, pollopt)', ()),
 SchemaField('url', 'STRING', 'NULLABLE', 'Story url', ()),
 SchemaField('text', 'STRING', 'NULLABLE', 'Story or comment text', ()),
 SchemaField('parent', 'INTEGER', 'NULLABLE', 'Parent comment ID', ()),
 SchemaField('deleted', 'BOOLEAN', 'NULLABLE', 'Is deleted?', ()),
 SchemaField('dead', 'BOOLEAN', 'NULLABLE', 'Is dead?', ()),
 SchemaField('descendants', 'INTEGER', 'NULLABLE', 'Number of story or poll descendants', ()),
 SchemaField('id', 'INTEGER', 'NULLABLE', "The item's unique id.", ()),
 SchemaField('ranking', 'INTEGER', 'NULLABLE', 'Comment ranking', ())]
```

Cada *SchemaField* nos informa sobre una columna específica (a la que también nos referimos como un campo **field**). En orden, la información es:

* El nombre de la columna.
* El tipo de campo (o tipo de datos) en la columna
* El modo de la columna ('NULLABLE' significa que una columna permite valores NULL y es el valor predeterminado)
* Una descripción de los datos en esa columna.
* El primer campo tiene el SchemaField:

*SchemaField ('by', 'string', 'NULLABLE', "El nombre de usuario del autor del elemento", ()*

Esto nos dice:

* el campo (o columna) es llamado por
* los datos en este campo son cadenas,
* Se permiten valores NULL y
* Contiene los nombres de usuario correspondientes al autor de cada elemento.

Podemos usar el método *list_rows()* para verificar solo las primeras cinco líneas de la tabla completa *full* para asegurarnos de que esto sea correcto. (A veces las bases de datos tienen descripciones desactualizadas, por lo que es bueno verificarlo). Esto devuelve un objeto BigQuery *RowIterator* que se puede convertir rápidamente en un DataFrame de pandas con el método *to_dataframe()*.

```python
# Preview the first five lines of the "full" table
client.list_rows(table, max_results=5).to_dataframe()
```

El método *list_rows()* también nos permitirá ver solo la información en una columna específica. Si queremos ver las primeras cinco entradas en la columna por, por ejemplo, ¡podemos hacerlo!

```python
# Preview the first five entries in the "by" column of the "full" table
client.list_rows(table, selected_fields=table.schema[:1], max_results=5).to_dataframe()
```


EXERCISE (Exercise_ Getting Started With SQL and BigQuery)


[1]: ../biYqbUB.png
