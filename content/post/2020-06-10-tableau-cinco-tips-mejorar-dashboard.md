+++
title = "Tableau, cinco tips ue te ayudarán a mejorar tus dashboards"
date = 2020-06-10T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/tableau-cinco-tips-mejorar-dashboard"
canonical = "https://www.paradigmadigital.com/dev/5-tips-muy-utiles-tableau/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["dashboard", "tableau", "tips"]
categories = ["Data Visualization"]
authors = ["marcusRB"]
+++

Otro año más, el [octavo consecutivo](https://www.tableau.com/about/blog/2020/2/tableau-leader-2020-gartner-magic-quadrant), la herramienta de visualizaciones Tableau, junto con la otra rival de Microsoft, Power BI, ha sido premiada por Gartner como mejor suite de BI para realizar dashboard y ayudar a los analistas de Business Analytics. Esta consultora recopila, en su cuadrante mágico, los diferentes puntos (a favor y en contra) que han encontrado los usuarios.

Pero, ¿cuáles son las funcionalidades que permiten a Tableau de ser una de las mejores herramientas? En anteriores [post de visualización](https://www.paradigmadigital.com/techbiz/comparativa-plataformas-business-intelligence-introduccion/) ya hemos visto diferentes puntos de vista. Pero, en este post, veremos en profundidad cómo sacarle más partido gracias a estos consejos.

## 1 Reports, Dashboards, Historias

El **primer tip** de Tableau (además de ser nativa) es diferenciar entre crear un report, que incluye detalles de un indicador, de una dimensión, una métrica, una métrica nueva calculada o un filtro; o un parámetro, que básicamente será el elemento que incluiremos en uno o más dashboards. Aquí está el secreto mejor guardado de esta herramienta. Si eres nuevo, no te preocupes, lo explicaré con íconos.

![img](https://www.paradigmadigital.com/assets/img/resize/small/a52c02670aa34f70abcfa2a85505b2e7.png)

El **primer elemento** que observamos sirve para crear nuestra nueva hoja de trabajo. Básicamente es un **report** de una dimensión o más, con una o más métricas o métricas calculadas, con filtros y segmentos. Cuando creamos una nueva hoja, podemos montar algo como esto:

![img](https://www.paradigmadigital.com/assets/img/resize/small/68290205f6964f2d9904e27ffb36af06.png)

Un simple reporte de usuarios que visitan en un *periodo n*, segmentado por navegador y versión.

Si quiero crear otra que me indique en un periodo de tiempo los login efectuados, indicando IP, fecha, día de inicio y último, siempre será con métricas calculadas (otra de las especialidades de esta herramienta) como esto:

![img](https://www.paradigmadigital.com/assets/img/resize/small/97c5558343e9434ab7ebc530e5b36b27.png)

Ahora que tenemos dos reportes, creamos un dashboard:

![img](https://www.paradigmadigital.com/assets/img/resize/small/7c0a321d67ee47c5883ba58197cb0941.png)

No es ni más ni menos que realizar un *drag-n-drop* de los dos reportes al recuadro. Y listo, lo formateamos un poco y ya tenemos nuestro dashboard.

![img](https://www.paradigmadigital.com/assets/img/resize/small/2777d2d1c9094e66a5439716cbb038a6.png)

Ahora que queremos realizar un nuevo insight en Tableau, debemos solo importar el dashboard en la **historia.** Esta última será como nivel de presentación a nuestros clientes, departamento, directivos o a quiénes queremos transmitir el mensaje. La utilidad permite poder compartirlo en formato keynote, pdf, imprimir o via server o email.

![img](https://www.paradigmadigital.com/assets/img/resize/small/b37d2309628c4a7383eaa047d841d8dc.png)

De la imagen de arriba arrastramos el Dashboard *Frecuencia*, que creamos hace poco, y obtenemos esto:

![img](https://www.paradigmadigital.com/assets/img/resize/small/dabfbfbc43414fdb90927f7d3e5ce5fc.png)

## 2 ¿Qué gráfico utilizar?

Aunque no es exclusivo de Tableau, cada report no incluirá solo tablas o indicadores, sino que a través de gráficos es mucho más intuitivo para el usuario final.

Elegir el tipo de gráfico correcto te ayudará a encontrar la historia en tus datos, revelará patrones y tendencias, por lo que, al instante, entenderás el significado del conjunto de datos que estás visualizando. En esta sección, descubriremos cuándo usar el tipos de gráficos más comunes.

Aquí unos cuantos ejemplos de gráficos:

![img](https://www.paradigmadigital.com/assets/img/resize/small/97e8114a67df4375bf08cf1d1755cd65.png)

- **Comparaciones entre artículos**: ¿Cómo comparar valores en diferentes categorías? Lo más habitual a través de barchart o radar.

![img](https://www.paradigmadigital.com/assets/img/resize/small/d7ec5bf22f924a9cb369d83bf967bebb.png)

- **Comparaciones en el tiempo**: ¿Cómo comparar los cambios en un período de tiempo? Ejemplo line-chart o area chart.

![img](https://www.paradigmadigital.com/assets/img/resize/small/73f56eea1bff41bcbd30759c50b34ebf.png)

- **Composición**: ¿Cómo mostrar la relación part-to-whole/treemap/stacked bar?

![img](https://www.paradigmadigital.com/assets/img/resize/small/6be9b1f5339d442f91d050c8fd9b9387.PNG)

- **Correlación**: ¿Cómo entender la relación entre dos o más variables? A través de Scatter plot/bubble chart.

![img](https://www.paradigmadigital.com/assets/img/resize/small/d2e98e6fba8846f1a3d9a22fc9b16a41.png)

- **Distribución**: ¿Cómo entender la frecuencia de los valores en un conjunto de datos? Aquí el histograma (que muchas veces lo confundimos con el bar chart o gráfico de barras) y boxplot (conocido como caja de bigote).

![img](https://www.paradigmadigital.com/assets/img/resize/small/ac6861275af94fa6978102d3a6ef84ec.png)

- **Ubicación**: ¿Dónde ocurren las cosas? Podemos ver también dónde las cosas no ocurren y , así, descubrir la próxima oportunidad. En este caso, es muy potente el motor de Tableau de mapas Mapbox o de servidor Web Map Services (WMS).

![img](https://www.paradigmadigital.com/assets/img/resize/small/76e1270696da47f2be2e4f4b37deaf10.png)

- **Indicadores clave de rendimiento (KPI)**: ¿Cómo mostrar si estás en blanco? Podemos incluso crear otros indicadores a medida, con colores y formatos diferentes.

![img](https://www.paradigmadigital.com/assets/img/resize/small/9609895a2c7149bdb8964b5ee99c69a4.png)

## 3 ¿Y respecto a los colores en los reports?

En Tableau es importante no caer en el error de que “más es mejor”. La regla minimalista del **“menos es más” es esencial y fundamental para un dashboard ganador**.

**¿Cómo mejorar el formato?** Muy simple en Tableau. Primero, en cuanto a las diferentes tonalidades que podemos personalizar y utilizar, no debemos dejar por defecto la paleta de la izquierda, sino utilizar otras (existen muchas más),

![img](https://www.paradigmadigital.com/assets/img/resize/small/6e9fcc7fad41495d9845dc4c12a93674.png)

Hay que pensar siempre en los usuarios y no todos pueden interpretar bien los colores. El formato de sus gráficos tiene que ser fácil de comprender y, además, ‘estéticamente’ agradables. Los datos se pueden representar por color, puedes usar colores para resaltar diferentes categorías o para representar una métrica secundaria en tu gráfico. Aunque, ten cuidado, el color que se usa mal puede oscurecer el gráfico y crear confusiones a los usuarios.

Como nota, adjunto aquí un pequeño resumen del buen uso de colores y cuándo o en qué ocasión utilizar una paleta u otra, así como añadir una leyenda (pequeña, obviamente) y que no distraiga la lectura del gráfico.

![img](https://www.paradigmadigital.com/assets/img/resize/small/bfdff45f87fc447ab81903ce4115503b.png)

## 4 Dimensiones calculadas

Cuando ingestamos datos en Tableau, además de tener un gran abanico de conectores disponibles (exactamente con la versión utilizada 2019.4 y hasta la fecha dispone de 82 nativos y el resto vía API a medida) podemos realizar unas operaciones de transformación de las variables, y entre ellas las categóricas o dimensiones.

![img](https://www.paradigmadigital.com/assets/img/resize/small/c26d6aa5cf8c4f7f8fa377c65f94c135.png)

Sin quitar el mérito a la otra herramienta muy potente del fabricante Trifacta, la herramienta utilizada también en cloud de [Google Cloud Platform DataPrep](https://cloud.google.com/dataprep/), la tool de transformación Tableau Prep nos ayudará en gran medida en este proceso de gran magnitud y permite complementar con otras pequeñas transformaciones de columnas, filas, filtros o cálculos sencillos en la fase previa a la realización de un reporte.

![img](https://www.paradigmadigital.com/assets/img/resize/small/a8d1fc0b89a84698acf0957584a3e51b.png)

Os pongo un ejemplo de [Tableau Prep Builder](https://www.tableau.com/es-es/products/prep) de una transformación realizada para el Ayuntamiento de Gijón (prueba de concepto realizada en mayo 2019 y con gran éxito) donde en los propios flujos de ETL y transformación, la herramienta ha resultado muy satisfactoria.

![img](https://www.paradigmadigital.com/assets/img/resize/small/e9e85476c293475ebb9a7a48a37f78bb.png)

Un ejemplo muy sencillo que se podría realizar antes de procesar los datos en nuestro reporte sería crear duplicados de columnas o cambiar el formato de los tipo de datos, ampliar las columnas como las fechas o realizar pequeñas limpiezas de campos vacíos.

En este ejemplo he querido poner un cálculo muy sencillo de transformación, separando el mes del año:

![img](https://www.paradigmadigital.com/assets/img/resize/small/171fdd2de31541ae8764dfbdc53a3333.png)

Y ya que entramos en tema de campos calculados, veamos cómo utilizar los campos calculados para crear las métricas calculadas.

## 5 Métricas calculadas

Por métricas calculadas entendemos estos nuevos campos donde realizaremos operaciones para enriquecer nuestros reportes con más detalles e informaciones, pero han de ser tratadas o calculadas. Entre las funciones disponemos de un número muy alto, que similar a las hojas de cálculos o bases de datos SQL, realizaremos prácticamente sin complejidad

Las funciones van por orden y disponibles por categoría. Aquí una muestra:

![img](https://www.paradigmadigital.com/assets/img/resize/small/d1c84b7809e1465db61dac1d2fdbccbe.png)

Con estos dos ejemplos crearemos la métrica para obtener el mínimo y máximo de fechas y poder calcular sucesivamente la métrica **FirstLogin** y **LastLogin**:

![img](https://www.paradigmadigital.com/assets/img/resize/small/97fcd1618abf4377852dec6af44ac305.png)

![img](https://www.paradigmadigital.com/assets/img/resize/small/8d55f25b365d424383305a75c8fe96d6.png)

Aquí el resultado para obtener las IPs activas, las frecuencias o los logins de nuestros usuarios (los datos son obtenidos de logs de servidor previamente tratados).

![img](https://www.paradigmadigital.com/assets/img/resize/small/157cbcc98b3441aba31e510a0b01f0b2.png)

Y este es el **resultado final**. Hemos ido creando varios dashboards que nos ayudarán a entender mejor el tráfico que estamos obteniendo en un sitio web y el comportamiento de los propios usuarios. Podemos realizar estas pequeñas tareas de crear métricas específicas para poder detectar patrones y así generar nuevos conocimientos de estos datos, creando nuevos insights.

![img](https://www.paradigmadigital.com/assets/img/resize/small/2f37c9b6912a40a786a1b407ca340689.png)

## ¿Qué más nos ofrece Tableau?

Es evidente que solo vemos la punta del iceberg: esto es el comienzo y en este post vemos un **resumen de algunas de las funcionalidades de la herramienta líder en inteligencia de negocio** y análitica avanzada, además de disponer y ofrecer un gran abanico de funcionalidades.

En las próximas entregas iremos avanzados con técnicas útiles a la hora de calcular nuevas métricas y combinar con parámetros avanzados, con el fin de tener los indicadores más importantes en nuestro dashboard sin perder en ningún momento el **propósito inicial, detectar tendencias, patrones y crear nuevos insights**, desde simples indicadores hasta métricas de seguimiento más al detalle.




[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/5-tips-muy-utiles-tableau/)
