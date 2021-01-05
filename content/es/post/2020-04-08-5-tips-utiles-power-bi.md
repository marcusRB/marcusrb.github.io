+++
title = "5 tips en Power BI, sencillos y muy útiles de aplicar"
date = 2020-04-08T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/5-tips-utiles-power-bi"
canonical = "https://www.paradigmadigital.com/dev/5-tips-power-bi-sencillos-utiles/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["dashboard", "powerbi", "tips"]
categories = ["Data Visualization"]
authors = ["marcusRB"]
+++

Este año la consultora Gartner ha valorado la herramienta de Microsoft de inteligencia de negocio, [Power BI](https://powerbi.microsoft.com/es-es/), como líder en el cuadrante mágico, donde quedan Tableau muy cerca, y Qlik y Thoughtspot un poco más alejadas. Entre las mejores valoraciones encontramos la usabilidad y poder subir nuestro trabajo en los espacios de trabajo personales de cloud. Veamos en este post algunos de las funcionalidades más destacadas.

![img](https://www.paradigmadigital.com/assets/img/resize/small/4b26a38f929544ec86f1dc9750cda819.png)

## 1 Slicer con filtros

Una de las primeras funcionalidades que permite dominar la herramienta de visualizaciones Power BI es la **completa personalización** (tanto en la opción Desktop como en desarrollo).

Slicer es una de ellas. Permite crear menús laterales donde podemos incluir, por ejemplo, filtros y segmentos y dejar más espacio a nuestro gráfico.

Veamos en este ejemplo paso a paso cómo construirlo:

- El ejemplo es uno de los dashboard de muestra. Al parecer, tenemos demasiados gráficos e indicadores, por lo que sería útil ampliar algo más, creando un menú lateral izquierdo y mover el filtro.

![img](https://www.paradigmadigital.com/assets/img/resize/small/344c0abbfaae42d489723cb6589dd3b6.png)

- Creamos un botón, representado con una flecha derecha y lo ampliamos.

![img](https://www.paradigmadigital.com/assets/img/resize/small/bd4a75cdff9e47b0901f2312faa34342.png)

![img](https://www.paradigmadigital.com/assets/img/resize/small/5271e4d6a48d4fb1a9611e67042ece35.png)

- Ahora le damos formato al menú, con color, moviendo el resto del gráfico para que el botón quede a la izquierda y que cumpla su función.

![img](https://www.paradigmadigital.com/assets/img/resize/small/bc1e8871d5f74b9c81e6e07e6c530467.png)

- Con el Bookmark y Selection operaremos para darle forma y creamos un evento. Cuando pinchemos en el botón, se desplegará un elemento (que incluye el filtro) y una flecha. Para ello, debemos esconder el resto de elementos y viceversa.

![img](https://www.paradigmadigital.com/assets/img/resize/small/c30bf25d940d4da49e7c1f06b02c022e.png)

- Jugamos con background, fill o border, y si es necesario, introducimos el nombre del texto. Entre los marcadores tenemos dos, Visible y Hidden, a estos hay que añadir un action. Ahora creamos un text box donde incluiremos el filtro y le damos colores y formato.

![img](https://www.paradigmadigital.com/assets/img/resize/small/80b61cbae0fd4e3394617894b436bd5e.png)

- Es el momento de crear los eventos, uno para que despliegue y otro que esconda el elemento. Para este último necesitaremos otro botón, el de la izquierda.

![img](https://www.paradigmadigital.com/assets/img/resize/small/4310a04f24e24da2ab7bed01ab3f2d44.png)

- Una última cosa: en el panel de Selection es bueno poner orden( especialmente, secuencial para poder dar prioridad a los elementos). Asignamos al Action el marcador creado Hidden y, muy importante, damos prioridad a los elementos, visibles o invisibles.

![img](https://www.paradigmadigital.com/assets/img/resize/small/b6a00dcd909644ce80b9c33260cad9af.png)

![img](https://www.paradigmadigital.com/assets/img/resize/small/de1ae107c3454cc6a8e97fa824a8aff7.png)

- Ahora, actualizamos el marcador para cuando realicemos algún cambio en los elementos, como por ejemplo, si esconder o dejar visible.

![img](https://www.paradigmadigital.com/assets/img/resize/small/ec950724ae974ec59a8c7c48b738aff2.png)

- Una vez realizada la operación, el proceso de prueba sería con tecla CTRL o CMD más click a la flecha:

![img](https://www.paradigmadigital.com/assets/img/resize/small/145d9b3ddfb048818aaa5fca7dc81123.png)

- Ahora que funciona el slicer, introducimos el filtro y le damos nuevamente una orden (activarlo o esconderlo) y habilitarlo en Selection.

![img](https://www.paradigmadigital.com/assets/img/resize/small/0aaa488dc0ba4a1c9aff0cac4b4ce15b.png)

- Y para que el filtro funcione constantemente y no se reinicie cada vez que lo visualizamos, necesitamos realizar el siguiente paso.

![img](https://www.paradigmadigital.com/assets/img/resize/small/1ae4650752564541a7f10a043b133964.png)

- Básicamente deshabilitamos la opción Data, para que no afecte a los datos, sino que solo tenga el filtro como función principal.

El **resultado** está disponible en este fichero template y la demo realizada en mi entorno cloud una vez publicada:

![img](https://www.paradigmadigital.com/assets/cms/80b556557bc343d4a647ca6b9a33b4ab.gif)

## 2 Jerarquías en los gráficos

Cuando tratamos fechas, por ejemplo, automáticamente el sistema Power BI reconoce esta como tal y crea de forma automática su propia jerarquía: año, trimestre, mes y día. Si esta fecha la utilizamos en los filtros o en la coordenada de las X, podemos utilizarla también como segmento.

Veamos el ejemplo del dashboard anterior:

![img](https://www.paradigmadigital.com/assets/img/resize/small/0518e82d045c48fb9627a0de54aa7b03.png)

- Realizamos las mismas operaciones de la imágen:

![img](https://www.paradigmadigital.com/assets/img/resize/small/3c67c9ba2514496bacabe4e7ea335c02.png)

- Una vez publicado, podemos utilizar los selectores drop down o drill up para que podamos segmentar por fechas. Por trimestre:

![img](https://www.paradigmadigital.com/assets/img/resize/small/d6b6cb991b88424e8b497742218a4638.png)

- Por mes:

![img](https://www.paradigmadigital.com/assets/img/resize/small/875aa06692d244c596102340b28a5a31.png)

## 3 Crear campos calculados con fórmulas DAX

La utilidad de Power BI no es solo por la **usabilidad y funcionalidades**, también cuenta con **herramientas muy potentes de cálculos** para crear nuevas métricas, heredada de la suite Office365, como la denominada DAX (Data Analysis Expressions), junto con PowerQuery, PowerPivot y el resto de tools que tienen la capacidad de realizar pequeñas funciones.

El listado completo de las funciones, [disponibles en su web oficial](https://docs.microsoft.com/en-us/power-bi/desktop-quickstart-learn-dax-basics) y recogidas en su documentación, se dividen en estas categorías:

- Fecha y hora.
- Inteligencia de tiempo.
- Filtro.
- Información.
- Lógica.
- Matemática y trigonométrica.
- Estadística.
- Texto.

La gran cantidad de información (y una gran comunidad) permite a esta herramienta ser muy potente en los departamentos de análisis. Además, incluye tools para conexión con módulos de R y Python (ampliando las opciones de exploración).

Veamos un sencillo ejemplo de fórmula DAX. Creamos un convertidor de moneda, basado en botones y vemos cómo adaptarlo a nuestro gráfico.

- Creamos una nueva tabla moneda, muy sencilla. Una columna, con el nombre *currency_code*, de USD, GBP y EUR, y otra columna, con el nombre values, con valores fijos (de momento operamos con estos).

![img](https://www.paradigmadigital.com/assets/img/resize/small/93097db9e90a4e8bac8d48f0c3736f0a.png)

1. Creamos un filtro o slicer con los tres valores, le damos una capa de formato y colores, y que cumpla la función de *selección simple*.

![img](https://www.paradigmadigital.com/assets/img/resize/small/171c927d20e043bd9edc7f76c5b6706f.png)

- Creamos ahora una tabla con las monedas y valores y vemos cómo se comporta cuando utilizamos el filtro.

![img](https://www.paradigmadigital.com/assets/img/resize/small/876f4de6865a4fc4b3ce1ed28a0cdb02.png)

![img](https://www.paradigmadigital.com/assets/img/resize/small/5e3aa0c6f8ee461d99be1a13e870e39a.png)

- Seleccionando uno de estos tres, en la tabla de prueba de abajo, vemos el valor correspondiente. ¿Cómo podemos sacar ventaja con este tip? Creamos una función DAX para que al seleccionar uno de los valores permita realizar operaciones a nuestros valores de ventas que vimos anteriormente. Para ello, debemos crear una nueva medida *selector_currency* que recogerá como variable el selector de la moneda y, además de guardarla, permite devolver un resultado a otra función (la sucesiva que realizaremos).

![img](https://www.paradigmadigital.com/assets/img/resize/small/cc3118fb34eb40fda1556f62086c7a4a.png)

- La nueva medida será creada exactamente igual que la imágen y la función será la encargada de almacenar el valor.

![img](https://www.paradigmadigital.com/assets/img/resize/small/4b80adca274c4a1fb6cee04869968df2.png)

- Una vez creada la nueva medida, vamos con la otra que podemos utilizar en condiciones IF ELSE o SWITCH CASE, en caso de querer realizar operaciones más complejas. En este caso, recogerá el total de las ventas **TotalSales** y se convertirá en USD o GBP, una vez que venga seleccionado el filtro [correspondiente.La](http://correspondiente.la/) fórmula es la que sigue con la evaluación SWITCH CASE:

![img](https://www.paradigmadigital.com/assets/img/resize/small/a21c6e7499594b8d82e85a50047f2548.png)

- Veamos cómo funciona correctamente teniendo en cuenta que la tabla donde nos devolverá los resultados será una tabla de tipo matriz con dos campos recién creados (código de moneda y valor de la conversión). Con libras:

![img](https://www.paradigmadigital.com/assets/img/resize/small/170af854b6764f40882aa268e648d22e.png)

- Y con dólares:

![img](https://www.paradigmadigital.com/assets/img/resize/small/f7c10401096a4c328010ca9ddc825f85.png)

- Hemos visto que **funciona correctamente**. Aunque, los valores de conversiones no son los reales actuales. Si los queremos, podríamos conectarnos con la tabla de conversiones en tiempo real para que nos devuelva los valores exactos (y mejores que los utilizados anteriormente).

## 4 Gestionar las relaciones de tablas

Una buena opción es la gestión de relaciones de tablas una vez que tengamos conectadas diferentes bases de datos y queremos realizar operaciones con ellas (la opción está disponible en nuestro dashboard).

![img](https://www.paradigmadigital.com/assets/img/resize/small/2d3a2079ec7144a289acfacbbcee4307.png)

Y una vez realizada la operación de relaciones, dispondremos de una tabla similar a esta:

![img](https://www.paradigmadigital.com/assets/img/resize/small/0ab8e5bc7fe04e32bf5c04b12b0add3e.png)

Para crear varias medidas y mejorar el control, la gestión de relaciones permite ahorrar tiempo en los cálculos. Repasamos las siguientes configuraciones, llamada cardinalidad:

- **Muchos a uno (\*: 1)**: una relación de muchos a uno es el tipo de relación por defecto más común. Significa que la columna en una tabla puede tener más de una instancia de un valor y la otra tabla relacionada, a menudo conocida como la tabla de búsqueda, solo tiene una instancia de un valor.
- **Uno a uno (1: 1)**: en una relación uno a uno, la columna en una tabla tiene solo una instancia de un valor particular y la otra tabla relacionada tiene solo una instancia de un valor particular.
- **Uno a muchos (1: \*)**: en una relación uno a muchos, la columna en una tabla tiene solo una instancia de un valor particular y la otra tabla relacionada puede tener más de una instancia de un valor.
- **Muchos a muchos (\*: \*)**: con los modelos compuestos, puede establecer una relación de muchos a muchos entre las tablas, lo que elimina los requisitos de valores únicos en las tablas. También elimina las soluciones alternativas anteriores, como la introducción de nuevas tablas solo para establecer relaciones. Para obtener más información, consulte Relaciones con una cardinalidad de muchos.

## 5 Importar Datos vs Direct Query

Existen dos **formas de modelar los datos**, bien realizando llamadas query a la base de datos desde las diferentes fuentes de datos o bien importarlos en nuestra herramienta. Después hay que realizar la transformación a través de uno de los lenguajes nativos (Power Query o DAX) y realizar los cálculos necesarios.

![img](https://www.paradigmadigital.com/assets/img/resize/small/b2ceb5021eac4ec6a41a46f31be46618.png)

¿Cuál es la diferencia? ¿Cuál es el mejor método?

Primero, hay que **conocer bien la necesidad del propio negocio y la estructura organizacional** (¿Cómo de grandes son las fuentes de datos?).

Utilizamos **Direct Query** cuando tenemos ya definida una estructura de tablas. Por este motivo, no sería factible su importación y, además, no tiene la capacidad de realizar una pre-agrupación.

Otra limitación sería que dada una cantidad ingente de datos, mejor utilizar la técnica DIVIDE and CONQUER (“divide y vencerás”), ya que pequeñas consultas query son más eficientes que realizar una llamada de todo el dataset, así evitamos SELECT * FROM.

Si ya tenemos definido el modelo de datos, es decir, todos los cálculos vienen en tabla, podemos realizar las operaciones de transformación a través de query. En este caso, es más sencillo lanzar una query que tener que realizar una importación de los datos.

En caso de realizar operaciones OLAP (cubos multidimensionales), típico en un departamento de negocio, entonces es mejor tener que importar los datos que realizar consultas directas, ya que nos llevaría a que se produzca un error de cálculo.

Las capacidades de series temporales son tareas complejas y es preferible importar los datos (especialmente para tratar años, trimestres, meses, semanas, días y horas) porque no son compatibles con Direct Query.

El mayor límite lo tenemos en la versión desktop (free), de las consultas de hasta un millón de filas, por lo tanto es preferible importar datos.

El otro límite es que las fórmulas DAX no son del todo compatible con las consultas Direct Query. Por lo tanto, es importante, durante la fase de recogida de las tablas a través de consultas, obtener un esquema de relaciones como esta imágen:

![img](https://www.paradigmadigital.com/assets/img/resize/small/35ac85c8efd04c1ba69dcc882ca3b7f3.png)

Nos permite realizar sucesivamente cálculos (campos calculados, tablas y columnas) a través de funciones nativas DAX, pero no transformaciones (es decir modelado de datos), porque estamos realizando las consultas al vuelo.

Si tienes una sola tabla, pocos datos y necesitas realizar muchos cálculos y transformaciones, entonces, importar datos será tu solución y caso de uso. Es sencilla en Power Query (antes llamada Power Pivot en lenguaje M) ya que las operaciones son realizadas a través de pocos clicks o son operaciones combinadas de transformación.

Podemos utilizar la edición avanzada:

![img](https://www.paradigmadigital.com/assets/img/resize/small/7cf2ad1437a041ed9bda06c55b799aee.png)

O, también, podemos realizar una operación sencilla de transformación con Power Query, como recoger un valor, como valor año, y transformarlo en valor en columna, por ejemplo:

![img](https://www.paradigmadigital.com/assets/img/resize/small/fb00aa11380240688268519d0d7d20a4.png)

## Una herramienta para todo

Aquí una recopilación de **tips muy útiles y sencillos de aplicar a nuestros dashboard**, pero, esto no es todo. Próximamente, realizaré un post más específico con casos de usos, tutoriales y hasta webinar para mostrar la utilidad de esta herramienta muy potente de análisis, no solo para inteligencia de negocio, sino también utilizada en departamentos de Marketing, Finanzas, TI, Recursos Humanos, etc.




[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/5-tips-power-bi-sencillos-utiles/)
