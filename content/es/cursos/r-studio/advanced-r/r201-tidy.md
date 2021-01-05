---
title: Introducción
linktitle: Introducción
toc: true
type: docs
date: "2019-09-14T00:00:00+01:00"
draft: false
menu:
  advanced-r:
    parent: Estructura
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

La ciencia de datos es una disciplina emocionante que le permite convertir datos sin procesar en comprensión, conocimiento y conocimiento. El objetivo de "R for Data Science" es ayudarlo a aprender las herramientas más importantes en R que le permitirán hacer ciencia de datos. Después de leer este libro, tendrá las herramientas para abordar una amplia variedad de desafíos de la ciencia de datos, utilizando las mejores partes de R.

## Lo que vas a aprender

La ciencia de datos es un campo enorme, y no hay forma de que puedas dominarlo leyendo un solo libro. El objetivo de este libro es brindarle una base sólida en las herramientas más importantes. Nuestro modelo de las herramientas necesarias en un proyecto típico de ciencia de datos se parece a esto:

`` `{r echo = FALSE, out.width =" 75% "}
knitr :: include_graphics ("diagrams / data-science.png")
`` `

Primero debe __importar__ sus datos en R. Esto generalmente significa que toma los datos almacenados en un archivo, base de datos o API web, y los carga en un marco de datos en R. Si no puede ingresar sus datos en R, puede ¡No hagas ciencia de datos!

Una vez que haya importado sus datos, es una buena idea ponerlos en orden. Poner en orden sus datos significa almacenarlos en una forma consistente que coincida con la semántica del conjunto de datos con la forma en que se almacenan. En resumen, cuando sus datos están ordenados, cada columna es una variable y cada fila es una observación. Los datos ordenados son importantes porque la estructura consistente le permite enfocar su lucha en preguntas sobre los datos, no en luchar para obtener los datos en la forma correcta para diferentes funciones.

Una vez que tenga datos ordenados, un primer paso común es __transformar__. La transformación incluye reducir las observaciones de interés (como todas las personas en una ciudad, o todos los datos del año pasado), crear nuevas variables que son funciones de variables existentes (como calcular la velocidad a partir de la distancia y el tiempo) y calcular un conjunto de resumen estadísticas (como recuentos o medios). Juntos, ordenar y transformar se llaman __wrangling__, ¡porque obtener sus datos en una forma natural para trabajar a menudo se siente como una pelea!

Una vez que tenga datos ordenados con las variables que necesita, hay dos motores principales de generación de conocimiento: visualización y modelado. Estos tienen fortalezas y debilidades complementarias, por lo que cualquier análisis real se repetirá entre ellos muchas veces.

La visualización es una actividad fundamentalmente humana. Una buena visualización le mostrará cosas que no esperaba o planteará nuevas preguntas sobre los datos. Una buena visualización también puede indicar que está haciendo una pregunta incorrecta o que necesita recopilar datos diferentes. Las visualizaciones pueden sorprenderte, pero no escales particularmente bien porque requieren que un humano las interprete.

Los __Modelos__ son herramientas complementarias para la visualización. Una vez que haya hecho sus preguntas lo suficientemente precisas, puede usar un modelo para responderlas. Los modelos son una herramienta fundamentalmente matemática o computacional, por lo que generalmente escalan bien. Incluso cuando no lo hacen, ¡generalmente es más barato comprar más computadoras que comprar más cerebros! Pero cada modelo hace suposiciones y, por su propia naturaleza, un modelo no puede cuestionar sus propias suposiciones. Eso significa que un modelo no puede sorprenderte fundamentalmente.

El último paso de la ciencia de datos es __comunicación__, una parte absolutamente crítica de cualquier proyecto de análisis de datos. No importa qué tan bien sus modelos y visualización lo hayan llevado a comprender los datos, a menos que también pueda comunicar sus resultados a otros.

Alrededor de todas estas herramientas está __programación__. La programación es una herramienta transversal que utiliza en cada parte del proyecto. No es necesario ser un programador experto para ser un científico de datos, pero aprender más sobre programación vale la pena porque convertirse en un mejor programador le permite automatizar tareas comunes y resolver nuevos problemas con mayor facilidad.

Utilizará estas herramientas en cada proyecto de ciencia de datos, pero para la mayoría de los proyectos no son suficientes. Hay una regla aproximada de 80-20 en juego; puede abordar aproximadamente el 80% de cada proyecto utilizando las herramientas que aprenderá en este libro, pero necesitará otras herramientas para abordar el 20% restante. A lo largo de este libro, le indicaremos los recursos donde puede obtener más información.

## Cómo está organizado este libro

La descripción anterior de las herramientas de la ciencia de datos está organizada de manera aproximada de acuerdo con el orden en que las usa en un análisis (aunque, por supuesto, las repetirá varias veces). En nuestra experiencia, sin embargo, esta no es la mejor manera de aprenderlos:

* Comenzar con la ingesta de datos y el orden es subóptimo porque el 80% del tiempo
  es rutinario y aburrido, y el otro 20% del tiempo es extraño y
  frustrante. ¡Ese es un mal lugar para comenzar a aprender un nuevo tema! En lugar,
  comenzaremos con la visualización y transformación de datos que ya han sido
  importado y ordenado. De esa manera, cuando ingiere y ordena sus propios datos, su
  la motivación se mantendrá alta porque sabes que el dolor lo vale.
  
* Algunos temas se explican mejor con otras herramientas. Por ejemplo, creemos que
  Es más fácil entender cómo funcionan los modelos si ya conoce
  visualización, datos ordenados y programación.
  
* Las herramientas de programación no son necesariamente interesantes por derecho propio,
  pero le permiten abordar problemas considerablemente más desafiantes. Bien
  darle una selección de herramientas de programación en el medio del libro, y
  entonces verás cómo se pueden combinar con las herramientas de ciencia de datos para abordar
  Problemas interesantes de modelado.

Dentro de cada capítulo, tratamos de seguir un patrón similar: comience con algunos ejemplos motivadores para que pueda ver la imagen más grande y luego profundice en los detalles. Cada sección del libro se combina con ejercicios para ayudarlo a practicar lo que ha aprendido. Si bien es tentador saltarse los ejercicios, no hay mejor manera de aprender que practicar en problemas reales.

## Lo que no aprenderás

Hay algunos temas importantes que este libro no cubre. Creemos que es importante mantenerse centrado sin piedad en lo esencial para que pueda comenzar a trabajar lo más rápido posible. Eso significa que este libro no puede cubrir todos los temas importantes.

### Big data

Este libro se centra orgullosamente en pequeños conjuntos de datos en memoria. Este es el lugar correcto para comenzar porque no puede abordar big data a menos que tenga experiencia con datos pequeños. Las herramientas que aprende en este libro manejarán fácilmente cientos de megabytes de datos, y con un poco de cuidado, generalmente puede usarlas para trabajar con 1-2 Gb de datos. Si trabaja habitualmente con datos más grandes (10-100 Gb, por ejemplo), debe obtener más información sobre [data.table] (https://github.com/Rdatatable/data.table). Este libro no enseña data.table porque tiene una interfaz muy concisa que hace que sea más difícil de aprender ya que ofrece menos claves lingüísticas. Pero si está trabajando con datos de gran tamaño, la rentabilidad del rendimiento vale la pena el esfuerzo adicional requerido para aprenderlo.

Si sus datos son más grandes que esto, considere cuidadosamente si su problema de big data podría ser un pequeño problema de datos disfrazado. Si bien los datos completos pueden ser grandes, a menudo los datos necesarios para responder una pregunta específica son pequeños. Es posible que pueda encontrar un subconjunto, una submuestra o un resumen que se ajuste a la memoria y que aún le permita responder la pregunta que le interesa. El desafío aquí es encontrar los datos pequeños correctos, que a menudo requieren mucha iteración.

Otra posibilidad es que su problema de big data sea en realidad una gran cantidad de problemas de data pequeña. Cada problema individual puede caber en la memoria, pero tiene millones de ellos. Por ejemplo, es posible que desee ajustar un modelo a cada persona en su conjunto de datos. Eso sería trivial si solo tuvieras 10 o 100 personas, pero en cambio tienes un millón. Afortunadamente, cada problema es independiente de los demás (una configuración que a veces se llama vergonzosamente paralela), por lo que solo necesita un sistema (como Hadoop o Spark) que le permita enviar diferentes conjuntos de datos a diferentes computadoras para su procesamiento. Una vez que haya descubierto cómo responder la pregunta para un solo subconjunto utilizando las herramientas descritas en este libro, aprenderá nuevas herramientas como sparklyr, rhipe y ddr para resolverlo para el conjunto de datos completo.

### Python, Julia y amigos

En este libro, no aprenderá nada sobre Python, Julia o cualquier otro lenguaje de programación útil para la ciencia de datos. Esto no es porque pensemos que estas herramientas son malas. ¡Ellos no están! Y en la práctica, la mayoría de los equipos de ciencia de datos usan una combinación de lenguajes, a menudo al menos R y Python.

Sin embargo, creemos firmemente que es mejor dominar una herramienta a la vez. Mejorará más rápido si bucea profundamente, en lugar de extenderse poco a poco sobre muchos temas. Esto no significa que solo deba saber una cosa, solo que generalmente aprenderá más rápido si se apega a una cosa a la vez. Debes esforzarte por aprender cosas nuevas a lo largo de tu carrera, pero asegúrate de que tu comprensión sea sólida antes de pasar a la siguiente cosa interesante.

Creemos que R es un gran lugar para comenzar su viaje de ciencia de datos porque es un entorno diseñado desde cero para apoyar la ciencia de datos. R no es solo un lenguaje de programación, sino que también es un entorno interactivo para hacer ciencia de datos. Para apoyar la interacción, R es un lenguaje mucho más flexible que muchos de sus pares. Esta flexibilidad viene con sus desventajas, pero la gran ventaja es lo fácil que es desarrollar gramáticas adaptadas para partes específicas del proceso de ciencia de datos. Estos mini idiomas lo ayudan a pensar en problemas como científico de datos, al tiempo que respaldan una interacción fluida entre su cerebro y la computadora.

### Datos no rectangulares

Este libro se enfoca exclusivamente en datos rectangulares: colecciones de valores que están asociados con una variable y una observación. Hay muchos conjuntos de datos que no encajan naturalmente en este paradigma: incluyendo imágenes, sonidos, árboles y texto. Pero los marcos de datos rectangulares son extremadamente comunes en la ciencia y la industria, y creemos que son un gran lugar para comenzar su viaje de ciencia de datos.

### Confirmación de hipótesis

Es posible dividir el análisis de datos en dos campos: generación de hipótesis y confirmación de hipótesis (a veces llamado análisis confirmatorio). El objetivo de este libro es descaradamente la generación de hipótesis o la exploración de datos. Aquí observará profundamente los datos y, en combinación con el conocimiento de su materia, generará muchas hipótesis interesantes para ayudar a explicar por qué los datos se comportan de la manera en que lo hacen. Evalúa las hipótesis de manera informal, utilizando su escepticismo para desafiar los datos de múltiples maneras.

El complemento de la generación de hipótesis es la confirmación de hipótesis. La confirmación de la hipótesis es difícil por dos razones:

1. Necesita un modelo matemático preciso para generar datos falsificables
    predicciones Esto a menudo requiere una considerable sofisticación estadística.

1. Solo puede usar una observación una vez para confirmar una hipótesis. Tan pronto como
    lo usa más de una vez que vuelve a hacer análisis exploratorios.
    Esto significa hacer una confirmación de hipótesis que necesita "preregistrarse"
    (escriba de antemano) su plan de análisis, y no se desvíe de él
    incluso cuando has visto los datos. Hablaremos un poco sobre algunos
    estrategias que puede usar para facilitar esto en [modelado] (# model-intro).

Es común pensar en el modelado como una herramienta para la confirmación de hipótesis y la visualización como una herramienta para la generación de hipótesis. Pero esa es una falsa dicotomía: los modelos a menudo se usan para exploración, y con un poco de cuidado puede usar la visualización para confirmar. La diferencia clave es con qué frecuencia mira cada observación: si mira solo una vez, es una confirmación; si miras más de una vez, es exploración.

## Prerrequisitos

Hemos hecho algunas suposiciones sobre lo que ya sabes para aprovechar al máximo este libro. En general, debe tener conocimientos numéricos y es útil si ya tiene experiencia en programación. Si nunca ha programado antes, es posible que Garrett [Hands on Programming with R] (http://amzn.com/1449359019) de Garrett sea un complemento útil de este libro.

Hay cuatro cosas que necesita para ejecutar el código en este libro: R, RStudio, una colección de paquetes R llamada __tidyverse__, y un puñado de otros paquetes. Los paquetes son las unidades fundamentales del código R reproducible. Incluyen funciones reutilizables, la documentación que describe cómo usarlas y datos de muestra.

### R

Para descargar R, vaya a CRAN, el ** c ** omprehensive ** R ** ** a ** rchive ** n ** etwork. CRAN se compone de un conjunto de servidores espejo distribuidos en todo el mundo y se utiliza para distribuir paquetes R y R. No intente elegir un espejo que esté cerca de usted: en su lugar, use el espejo en la nube, <https://cloud.r-project.org>, que automáticamente lo resuelve por usted.

Una nueva versión principal de R sale una vez al año, y hay 2-3 lanzamientos menores cada año. Es una buena idea actualizar regularmente. La actualización puede ser una molestia, especialmente para las versiones principales, que requieren que reinstales todos tus paquetes, pero posponerlo solo lo empeora.

### RStudio

RStudio es un entorno de desarrollo integrado, o IDE, para la programación R. Descargue e instálelo desde <http://www.rstudio.com/download>. RStudio se actualiza un par de veces al año. Cuando hay una nueva versión disponible, RStudio se lo informará. Es una buena idea actualizar regularmente para que pueda aprovechar las últimas y mejores funciones. Para este libro, asegúrese de tener RStudio 1.0.0.

Cuando inicie RStudio, verá dos regiones clave en la interfaz:

`` `{r echo = FALSE, out.width =" 75% "}
knitr :: include_graphics ("diagrams / rstudio-console.png")
`` `

Por ahora, todo lo que necesita saber es que escribe el código R en el panel de la consola y presiona Intro para ejecutarlo. ¡Aprenderás más a medida que avanzamos!

### El tidyverse

También necesitará instalar algunos paquetes de R. Un R __paquete__ es una colección de funciones, datos y documentación que amplía las capacidades de la base R. El uso de paquetes es clave para el uso exitoso de R. La mayoría de los paquetes que aprenderá en este libro son parte de llamado tidyverse. Los paquetes en el tidyverse comparten una filosofía común de datos y programación R, y están diseñados para trabajar juntos de forma natural.

Puede instalar el tidyverse completo con una sola línea de código:

`` `{r, eval = FALSO}
install.packages ("tidyverse")
`` `

En su propia computadora, escriba esa línea de código en la consola y luego presione Intro para ejecutarla. R descargará los paquetes de CRAN y los instalará en su computadora. Si tiene problemas para instalar, asegúrese de estar conectado a Internet y de que <https://cloud.r-project.org/> no esté bloqueado por su firewall o proxy.

No podrá utilizar las funciones, objetos y archivos de ayuda en un paquete hasta que lo cargue con `library ()`. Una vez que haya instalado un paquete, puede cargarlo con la función `library ()`:

`` {r}
biblioteca (tidyverse)
`` `

Esto le indica que tidyverse está cargando los paquetes ggplot2, tibble, tidyr, readr, purrr y dplyr. Estos se consideran el __core__ del tidyverse porque los usará en casi todos los análisis.

Los paquetes en el tidyverse cambian con bastante frecuencia. Puede ver si hay actualizaciones disponibles y, opcionalmente, instalarlas ejecutando `tidyverse_update ()`.

### Otros paquetes

Hay muchos otros paquetes excelentes que no forman parte del tidyverse, porque resuelven problemas en un dominio diferente o están diseñados con un conjunto diferente de principios subyacentes. Esto no los hace mejores o peores, solo diferentes. En otras palabras, el complemento al tidyverse no es el messyverse, sino muchos otros universos de paquetes interrelacionados. A medida que aborde más proyectos de ciencia de datos con R, aprenderá nuevos paquetes y nuevas formas de pensar sobre los datos.

En este libro usaremos tres paquetes de datos externos al tidyverse:

`` `{r, eval = FALSO}
install.packages (c ("nycflights13", "gapminder", "Lahman"))
`` `

Estos paquetes proporcionan datos sobre vuelos de aerolíneas, desarrollo mundial y béisbol que usaremos para ilustrar ideas clave de ciencia de datos.

## Ejecutando código R

La sección anterior le mostró un par de ejemplos de ejecución de código R. El código en el libro se ve así:

`` `{r, eval = TRUE}
1 + 2
#> [1] 3
`` `

Si ejecuta el mismo código en su consola local, se verá así:

`` `
> 1 + 2
[1] 3
`` `

Hay dos diferencias principales. En su consola, escribe después del `>`, llamado __prompt__; No mostramos el aviso en el libro. En el libro, la salida se comenta con `#>`; en tu consola aparece directamente después de tu código. Estas dos diferencias significan que si está trabajando con una versión electrónica del libro, puede copiar fácilmente el código del libro y en la consola.

A lo largo del libro usamos un conjunto consistente de convenciones para referirnos al código:

* Las funciones están en una fuente de código y seguidas de paréntesis, como `sum ()`,
  o `mean ()`.

* Otros objetos R (como datos o argumentos de funciones) están en una fuente de código,
  sin paréntesis, como `vuelos` o` x`.
  
* Si queremos dejar en claro de qué paquete proviene un objeto, usaremos
  el nombre del paquete seguido de dos puntos, como `dplyr :: mutate ()`, o
  `nycflights13 :: vuelos`. Este también es un código R válido.

## Obteniendo ayuda y aprendiendo más

Este libro no es una isla; no existe un recurso único que le permita dominar R. Cuando comience a aplicar las técnicas descritas en este libro a sus propios datos, pronto encontrará preguntas que no contesto. Esta sección describe algunos consejos sobre cómo obtener ayuda y para ayudarlo a seguir aprendiendo.

Si te quedas atascado, comienza con Google. Normalmente, agregar "R" a una consulta es suficiente para restringirla a resultados relevantes: si la búsqueda no es útil, a menudo significa que no hay resultados específicos de R disponibles. Google es particularmente útil para mensajes de error. Si recibe un mensaje de error y no tiene idea de lo que significa, intente buscarlo en Google. Lo más probable es que alguien más haya estado confundido en el pasado, y habrá ayuda en algún lugar de la web. (Si el mensaje de error no está en inglés, ejecute `Sys.setenv (LANGUAGE =" en ")` y vuelva a ejecutar el código; es más probable que encuentre ayuda para los mensajes de error en inglés).

Si Google no ayuda, intente [stackoverflow] (http://stackoverflow.com). Comience por pasar un poco de tiempo buscando una respuesta existente, incluyendo `[R]` para restringir su búsqueda a preguntas y respuestas que usen R. Si no encuentra nada útil, prepare un ejemplo reproducible mínimo o __reprex__. Un buen reprex hace que sea más fácil para otras personas ayudarte, y a menudo descubrirás el problema tú mismo mientras lo haces.

Hay tres cosas que debe incluir para que su ejemplo sea reproducible: paquetes, datos y código requeridos.

1. ** Los paquetes ** deben cargarse en la parte superior del script, por lo que es fácil
    ver cuáles necesita el ejemplo. Este es un buen momento para comprobar que estás
    usando la última versión de cada paquete; es posible que hayas descubierto
    Un error que se ha solucionado desde que instaló el paquete. Para paquetes
    en tidyverse, la forma más fácil de verificar es ejecutar `tidyverse_update ()`.

1. La forma más fácil de incluir ** datos ** en una pregunta es usar `dput ()` para
    generar el código R para recrearlo. Por ejemplo, para recrear los `mtcars`
    conjunto de datos en R, realizaría los siguientes pasos:
  
    1. Ejecute `dput (mtcars)` en R
    2. Copie la salida
    3. En mi script reproducible, escriba `mtcars <-` y luego pegue.
    
    Intenta encontrar el subconjunto más pequeño de tus datos que aún revela
    el problema.

1. Dedica un poco de tiempo a asegurarte de que tu ** código ** sea fácil para otros
    leer:

    * Asegúrese de haber usado espacios y que sus nombres de variables sean concisos, aún
      informativo.
    
    * Use comentarios para indicar dónde radica su problema.
    
    * Haga todo lo posible para eliminar todo lo que no esté relacionado con el problema.
      Cuanto más corto sea su código, más fácil será comprenderlo y
      Más fácil es arreglarlo.

Termine comprobando que realmente ha hecho un ejemplo reproducible comenzando una nueva sesión de R y copiando y pegando su script.

También debe pasar algún tiempo preparándose para resolver los problemas antes de que ocurran. Invertir un poco de tiempo en aprender R cada día dará buenos resultados a largo plazo. Una forma es seguir lo que Hadley, Garrett y todos los demás en RStudio están haciendo en el [blog RStudio] (https://blog.rstudio.org). Aquí es donde publicamos anuncios sobre nuevos paquetes, nuevas funciones de IDE y cursos presenciales. También puede seguir a Hadley ([\ @hadleywickham] (https://twitter.com/hadleywickham)) o Garrett ([\ @statgarrett] (https://twitter.com/statgarrett)) en Twitter, o seguir [\ @rstudiotips] (https://twitter.com/rstudiotips) para mantenerse al día con las nuevas funciones en el IDE.

Para mantenerse al día con la comunidad R en general, recomendamos leer <http://www.r-bloggers.com>: agrega más de 500 blogs sobre R de todo el mundo. Si eres un usuario activo de Twitter, sigue el hashtag `# rstats`. Twitter es una de las herramientas clave que Hadley utiliza para mantenerse al día con los nuevos desarrollos en la comunidad.
