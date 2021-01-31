+++
title = "¿Cómo crear campos calculados en Google Data Studio?"
date = 2020-10-10T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/como-crear-campos-calculados-en-data-studio"
canonical = "https://www.paradigmadigital.com/dev/como-crear-campos-calculados-en-data-studio/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["data studio", "data visualization", "google", "campos calculados"]
categories = ["Data Visualization"]
authors = ["marcusRB"]
+++

## Guía muy útil de como crear los campos calculados en Google Data Studio.

Es muy probable que ya conozcas la [herramienta de visualización Google Data Studio](/generamos-dashboard-data-studio), un servicio gestionado de Google alojado en la nube.

Hemos visto su **gran potencial para la generación de reportes/informes y análisis de visualización** (que dejó su versión beta en 2018). Además, su uso no está extendido  solamente a analistas de datos o a profesionales del marketing digital  (creando informes de Google Ads, Facebook y Google Analytics), sino que  también podemos aprovecharlo para integrar diferentes fuentes de datos  como de producción (API tipo Jira u otras de project management e  integradas con Google Cloud Platform). Existe un punto común: todos  están aprovechando los campos calculados de Google Data Studio, ya que  son una herramienta súper poderosa que se debería usar.

Es cierto que en el contexto de la inteligencia de negocio, así como en ámbitos más técnicos, el rol de un **analista de datos** debería estar familiarizado con: programación SQL y conceptos de  visualización; el funcionamiento de las APIs, resto de conectores y  entorno cloud; y con el contexto del origen de los datos.

Cada  herramienta de visualización tiene su complejidad a la hora de realizar  una Extracción, Transformación y Carga o ETL (Extract, Transform, Load), donde los campos calculados y la creación de nuevas medidas entran en  juego. Imagina tener unos objetivos y filtros mal configurados,  agrupaciones de contenido no retroactivas y parámetros inconsistentes en tu cuenta de Google Analytics. O, en el peor de los casos, realizar  todas las operaciones de forma manual, de manera desordenada, en hojas  de cálculo de Google o funciones de VLOOKUP con referencias que  devuelven un valor nulo...

Por estos motivos, nace la idea de realizar una **guía completa y actualizada de los campos calculados de Google Data Studio**, que te será muy útil para optimizar informes y obtener mejores resultados.

## ¿Qué son los campos calculados de Google Data Studio?

Los campos calculados te permiten **aplicar cálculos y otras funciones a los datos para crear nuevas métricas y dimensiones**. Además, **se pueden usar para ampliar y transformar la información en sus fuentes de datos** y permite **replicarlos en otras herramientas**, como Power BI con DAX o en Tableau.

Entre otras **ventajas**, pueden ayudarte a:

- Calcular la tasa de conversión entre dos métricas.
- Analizar la tasa de caída del paso del funnel.
- Limpiar URLs y cadenas de texto.
- Agrupación de contenidos similares.
- Cálculos con sentencias condicionales.
- Manipulación de fechas.

Actualmente Google Data Studio **aumenta de forma significativa el número de las funciones**, al igual que mejora la otra *tool* de tratamiento de datos, Google Spreadsheets (que en su propia web [indica más de 50 funciones](https://support.google.com/datastudio/answer/9152828?hl=es) y que se requieren para [elaborar un dashboard](/crear-dashboard-para-poner-orden-tus-metricas/) más completo posible).

## ¿Por qué utilizar los campos calculados en Data Studio?

Siempre que quieras presentar datos que **aún no están disponibles en datos de origen**, los campos calculados son el mejor aliado, ya que te permiten hacerlo:

- Más **bonito** (es decir, limpiando su informe de URL).
- Más **perspicaz** (es decir, concatenando nombre de host + ruta de página de destino).
- Más **procesable** (es decir, al relacionar los resultados con los objetivos establecidos).

Presentar los datos de la manera más fácil y sin ambigüedades es primordial si  desea que los clientes / stakeholders confíen en las recomendaciones y  tomen las medidas apropiadas al respecto.

## ¿Cuándo y cómo puedo utilizarlos?

Los puedes utilizar en cualquier tipo de gráfico. Sin embargo, solo los  campos calculados a nivel de gráfico se pueden usar en fuentes de datos  combinadas (o data blending). Por tanto, es **importante diferenciar:**

- Los **campos calculados de la fuente de datos** se agregan a la fuente de datos y se pueden reutilizar en otros gráficos e informes.
- Los **campos calculados a nivel de gráfico** solo se pueden usar en un gráfico en particular, sin embargo, funcionan con datos combinados.

## Primer campo calculado, paso a paso

### Planificación

Antes de realizar un cuadro de mando, hay que conocer los datos y realizar una sesión de **data discovery** para detectar en una matriz tipo DAFO las necesidades, dificultades,  indicadores y riesgos. Para poner un ejemplo, hagamos un inventario de  todos los KPIs que no están directamente disponibles en una sola fuente  de datos. Definamos qué fuentes de datos, dimensiones, métricas y  funciones necesitaremos para crearlas.

*Ejemplo:* el sitio  web de generación de leads de su cliente tiene tres formularios de  contacto que se rastrean como objetivos separados en Google Analytics.  Sin embargo, en el dashboard se requiere que el detalle de la ‘tasa de  conversión’ del formulario de contacto para los tres objetivos sea del  formulario de contacto combinado

Para crear un **campo calculado ‘tasa de conversión de objetivos’** (con todos los formularios de contacto), se necesitará:

- Una vista de Google Analytics como fuente de datos.
- Las métricas de cumplimiento de objetivos individuales y la de métrica de sesión.
- Algún cálculo aritmético básico en un campo calculado que nos llevará al resultado deseado.

*Un consejo:* un error común de cualquier analista de datos es importar todos los  campos en el dashboard y comenzar a pintar, aumentando el tiempo de  respuesta de los diferentes cálculos, empeorando la performance y  obviando la creación de nuevas métricas.

### Implantación del campo calculado

Añadimos el nuevo campo calculado al data source o al gráfico. Podemos tomar  como guía esta tabla comparativa para saber cuándo utilizar uno u otro:

|                                                        | Campo calculado por fuente de datos | Campo calculado por gráfico |
| ------------------------------------------------------ | ----------------------------------- | --------------------------- |
| ¿Necesita permisos al Data Source?                     | ✔️                                   | ❌                           |
| ¿Necesita combinar datos?                              | ❌                                   | ✔️                           |
| ¿Se requieren otros campos calculados?                 | ✔️                                   | ❌                           |
| ¿Deberían ser utilizados en otros informes o gráficos? | ✔️                                   | ❌                           |

A continuación, seguimos y creamos un **campo calculado a nivel de fuente de datos.**

Añadimos cualquier gráfico al lienzo en blanco que pueda tomar múltiples  dimensiones y métricas como entradas (por ejemplo, una tabla).

- Hacemos click en *Add A Field* o *Crear nuevo campo,* tal como indica en la captura.

![img](https://www.paradigmadigital.com/assets/img/resize/small/e6c81a719cf146b4b50dba736b46ad63.png)

![img](https://www.paradigmadigital.com/assets/img/resize/small/1ffad5eebeb847b89ba46446237aba55.png)

- Creamos el campo calculado, utilizando una de las funciones disponibles, otro campo calculado o una medida calculada.

![img](https://www.paradigmadigital.com/assets/img/resize/small/ee381c92351c4b8dad731df863bdf00a.png)

- La alternativa por campo calculado aplicado al gráfico si queremos que sea *Dimensión* o *Métrica*, en caso del tipo gráfico, se puede realizar desde el panel indicado en la captura.

![img](https://www.paradigmadigital.com/assets/img/resize/small/333ef484ba8d4c7faf2a28c3689a93d9.png)

- Y, en este último caso, directamente creamos el campo calculado.

![img](https://www.paradigmadigital.com/assets/img/resize/small/9c32503e34ea416ca872820ed5fdbdca.png)

Siguiendo con el ejemplo anterior, si queremos que sea **Tasa de conversión de objetivos** (todos los forms), que sea utilizado en otros informes y requerimos permisos será campo calculado del tipo Data Source.

### Añadimos la función

En el campo de *Fórmula* podemos definir cómo deben manipularse sus dimensiones o métricas  existentes. Es posible que sea muy básico, pero siempre es útil entender cómo funciona ya que es simplemente hacer un cálculo aritmético entre  las métricas.

La verificación verde (check abajo de la propia  ventana) indica que la fórmula no contiene ningún error de sintaxis.  Presionamos *Guardar* y Data Studio realizará otra comprobación de detección, pero esta vez también considerando los datos reales.

- Del ejemplo anterior realizamos una operación aritmética basada en la suma  de los diferentes objetivos dividida entre las sesiones. Importante:  debemos fijarnos en el uso correcto de los paréntesis.

![img](https://www.paradigmadigital.com/assets/img/resize/small/43a768a06dd74bf98b91d28a4ba5d7a5.png)

### Añadimos el campo a nuestro dashboard

Una vez realizados los pasos anteriores, guardamos y lo aplicamos en  nuestra tabla. Hay que realizar unos pequeños cambios, como tener que  indicarle el tipo de dato o campo (siendo un ratio será en formato  porcentaje).

![img](https://www.paradigmadigital.com/assets/img/resize/small/bf59fd0222d5419fb3567b3afaacdace.png)

## ¿Qué son las funciones de Google Data Studio?

Las funciones de Data Studio son fórmulas que se pueden usar en campos  calculados para manipular y combinar campos existentes de formas más  avanzadas y complejas de lo que permite la aritmética básica.

Al  igual que las fórmulas en el software de hojas de cálculo como Excel o  Google Sheets, las funciones de Data Studio tienen un propósito y una  sintaxis específicas. [Google las clasifica en 6 categorías](https://support.google.com/datastudio/table/6379764?hl=es):

- Agregación (cómo MAX, MIN, AVG, SUM).
- Aritméticos (ej. ROUND para realizar redondeo de los valores numéricos).
- Fechas (ej. WEEKDAY para devolver el nombre del día de la semana).
- Geográfico (ej. TOCOUNTRY para devolver el código ISO del país).
- Texto (ej. CONCAT para realizar la concatenación de textos).
- Otras (ej. CASE para devolver valores basados en condiciones).

### Las cinco funciones más utilizadas en Data Studio

1. **UPPER/LOWER**

Para ser ordenados, organizados y tiquismiquis con nuestros datos tenemos  que utilizar categorías en mayúsculas, así como las dimensiones más  importante, y dejar el resto en minúsculas. Entonces, puedes realizar  todo esto con las funciones UPPER/LOWER que realizará la conversión de  las cadenas de textos como input, en el formato requerido.

*Ejemplo:* realizar la conversión a mayúscula de los dispositivos.

```
UPPER(Device Category)
```

![img](https://www.paradigmadigital.com/assets/img/resize/small/3dedaaf824b3464d933ebfa08df46dcf.png)

1. **CONCAT**

¿Necesitas unir múltiples campos de texto para que tus datos sean más  comprensibles? Si quieres combinar dos dimensiones (o convertir una  métrica en dimensión) en una columna de la tabla es un caso de uso común para la función CONCAT. Puede tener múltiples dimensiones como entradas y la función devuelve la concatenación de todos los campos.

*Ejemplo:* desde un data source Google Sheets, importamos la tabla de wikipedia y concatenamos el idioma y el código.

```
CONCAT("Idioma: ",Language,"-",Wiki)
```

![img](https://www.paradigmadigital.com/assets/img/resize/small/0c47ca5d586f47718de8ff6dae0b556a.png)

1. **REGEX_EXTRACT**

¿Necesitas extraer parte de un texto?, ¿o valores numéricos que tenga un patrón?  Las expresiones regulares son muy importantes y aunque existen muchas  guías para entender su funcionamiento, os recomiendo esta [guía de RegExp](https://regex101.com/).

*Ejemplo:* extraemos solamente aquellas páginas que solo tienen un patrón google+redesign y nos devuelve la parte restante.

```
REGEXP_EXTRACT(Page,'^/google\+redesign/(.*)+')
```

*Input:*

![img](https://www.paradigmadigital.com/assets/img/resize/small/257f7f2f92134df0b5d71e312209d76f.png)

*Output:*

![img](https://www.paradigmadigital.com/assets/img/resize/small/542f38dd74004c068f24c45a48365f4e.png)

1. **REGEX_MATCH**

Si necesitamos evaluar una cierta condición pero el input a pasar no es  exacto, entonces podemos utilizar la expresión REGEX_MATCH. Esta evalúa  la condición y devolverá un valor sea True o False, al igual que la  anterior busca la condición y devuelve el resultado.

Lo habitual es que sea utilizada junto con otras funciones, como para encontrar un patrón y devolver otro resultado. *Ejemplo*, el uso del **CASE --> WHEN --> THEN**.

1. **CASE**

Como hemos visto anteriormente, la función CASE indica una expresión  condicional no muy compleja, pero hay que entender bien su  funcionamiento para poder obtener el resultado final correctamente.

*Ejemplo:* buscamos patrones y devolvemos un valor final.

```
CASEWHEN REGEXP_MATCH(Language, "(English|German|Dutch|Swedish)")THEN "Germanic"WHEN REGEXP_MATCH(Language, "(Italian|French|Spanish)")THEN "Romance"ELSE "Other family"END
```

![img](https://www.paradigmadigital.com/assets/img/resize/small/9e8cd867a5084b98b35082d7faec0072.png)

## Conclusiones

Este post es **la primera parte** de los campos calculados en Google Data Studio. Hemos observado que en  cualquier fichero, conector o fuente de datos en esta herramienta (o  cualquier otra de visualización) será necesario primero identificar los  indicadores y sucesivamente crear las métricas o nuevas columnas.  Pronto, una **segunda parte** en la que veremos ejemplos aplicados a marketing digital y más casos de uso.



[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/como-crear-campos-calculados-en-data-studio/)




