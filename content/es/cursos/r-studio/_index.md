---
# Course title, summary, and position.
linktitle: R Studio
summary: Learning Path de R. Documentos, tutoriales, cheatsheets para el aprendizaje de R Studio de básico a avanzado.
weight: 4

# Page metadata.
title: Learning Path de R
date: "2019-09-02T00:00:00Z"
lastmod: "2019-09-05T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
description: Learning Path de R. Documentos, tutoriales, cheatsheets para el aprendizaje de R Studio de básico a avanzado.
# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  r-studio:
    name: Estructura Learning Path R
    weight: 1
---

## R como recursos para la análisis de datos

Gracias a la aportación de una fuerte comunidad, aquí tendré la ocasión de crear una wiki para aprender a utilizar R studio para la análisis de datos.

## Qué es R?

R es un entorno para la gestión y análisis de datos, primera exploración estadística y visualización gráfica. Es un software de oper source (su distribución tiene licencia GNU GPL) además de multiplataformas, UNIX, Linux, OSx, Windows.



* **[Online courses](intro-r)**
* **Project or software documentation**
* **Tutorials**
* **[Cheatsheets](/tutorial)**


## Estructura programación en R


- [x] [Instalación de R](instalacion-r)
- [x] [Paquetes](paquetes)
- [x] [Área de trabajo](workspace)
- [ ] Directorio de trabajo
- [ ] Comandos
- [ ] Objetos y Clases
- [X] Vectores
- [ ] Factores
- [ ] Listas
- [ ] Índices
- [ ] Funciones
- [ ] script
- [ ] Fórmulas
- [ ] Operadores
- [ ] Datasets de ejemplos
- [X] [R para Data Science](advanced-r)



***


[Fuente] (http://adv-r.had.co.nz/Introduction.html "Permalink to Introduction · Advanced R.")

# Introducción · R. avanzado

Estás leyendo la primera edición de Advanced R; para la última versión ver la [segunda edición] [1].

Con más de 10 años de experiencia en programación en R, he tenido el lujo de poder pasar mucho tiempo tratando de descubrir y entender cómo funciona el lenguaje. Este libro es mi intento de transmitir lo que he aprendido para que pueda convertirse rápidamente en un programador de R efectivo. Leerlo te ayudará a evitar los errores que he cometido y los callejones sin salida que he caído, y te enseñará herramientas, técnicas y modismos útiles que pueden ayudarte a atacar muchos tipos de problemas. En el proceso, espero demostrar que, a pesar de sus peculiaridades frustrantes, R es, en esencia, un lenguaje elegante y hermoso, bien adaptado para el análisis de datos y las estadísticas.

Si eres nuevo en R, te preguntarás qué hace que valga la pena aprender un lenguaje tan peculiar. Para mí, algunas de las mejores características son:

* Es gratis, de código abierto y está disponible en todas las plataformas principales. Como resultado, si realiza su análisis en R, cualquiera puede replicarlo fácilmente.
* Un conjunto masivo de paquetes para modelado estadístico, aprendizaje automático, visualización e importación y manipulación de datos. Independientemente del modelo o gráfico que intente hacer, es probable que alguien ya haya intentado hacerlo. Como mínimo, puedes aprender de sus esfuerzos.
* Herramientas de vanguardia. Los investigadores en estadística y aprendizaje automático a menudo publicarán un paquete R para acompañar sus artículos. Esto significa acceso inmediato a las últimas técnicas e implementaciones estadísticas.
* Soporte de lenguaje profundo para el análisis de datos. Esto incluye características como valores perdidos, marcos de datos y subconjuntos.
* Una comunidad fantástica. Es fácil obtener ayuda de expertos en la [lista de correo R-help] [2], [stackoverflow] [3] o en listas de correo específicas de temas como [R-SIG-mixed-models] [4] o [ggplot2 ] [5]. También puede conectarse con otros alumnos R a través de [twitter] [6], [linkedin] [7], y a través de muchos [grupos de usuarios] locales [8].
* Potentes herramientas para comunicar sus resultados. Los paquetes R facilitan la producción de html o pdf [informes] [9], o la creación de [sitios web interactivos] [10].
* Una base sólida en la programación funcional. Las ideas de la programación funcional son adecuadas para resolver muchos de los desafíos del análisis de datos. R proporciona un kit de herramientas potente y flexible que le permite escribir código conciso pero descriptivo.
* Un [IDE] [11] adaptado a las necesidades de análisis de datos interactivos y programación estadística.
* Potentes instalaciones de metaprogramación. R no es solo un lenguaje de programación, también es un entorno para el análisis interactivo de datos. Sus capacidades de metaprogramación le permiten escribir funciones mágicamente concisas y concisas y proporcionan un entorno excelente para diseñar lenguajes específicos de dominio.
* Diseñado para conectarse a lenguajes de programación de alto rendimiento como C, Fortran y C ++.

Por supuesto, R no es perfecto. El mayor desafío de R es que la mayoría de los usuarios de R no son programadores. Esto significa que:

* Gran parte del código R que verá en la naturaleza está escrito a toda prisa para resolver un problema acuciante. Como resultado, el código no es muy elegante, rápido o fácil de entender. La mayoría de los usuarios no revisan su código para abordar estas deficiencias.
* En comparación con otros lenguajes de programación, la comunidad R tiende a centrarse más en los resultados que en los procesos. El conocimiento de las mejores prácticas de ingeniería de software es irregular: por ejemplo, no hay suficientes programadores de R que usen control de código fuente o pruebas automatizadas.
* La metaprogramación es una espada de doble filo. Demasiadas funciones de R usan trucos para reducir la cantidad de tipeo a costa de crear código que es difícil de entender y que puede fallar de maneras inesperadas.
* La inconsistencia abunda en los paquetes contribuidos, incluso dentro de la base R. Te enfrentas a más de 20 años de evolución cada vez que usas R. Aprender R puede ser difícil porque hay muchos casos especiales para recordar.
* R no es un lenguaje de programación particularmente rápido, y el código R mal escrito puede ser terriblemente lento. R también es un usuario despilfarrador de memoria.

Personalmente, creo que estos desafíos crean una gran oportunidad para que los programadores experimentados tengan un profundo impacto positivo en R y la comunidad R. Los usuarios de R se preocupan por escribir código de alta calidad, particularmente para la investigación reproducible, pero aún no tienen las habilidades para hacerlo. Espero que este libro no solo ayude a más usuarios de R a convertirse en programadores de R, sino que también aliente a los programadores de otros idiomas a contribuir a R.

## Quién debería leer este libro

Este libro está dirigido a dos audiencias complementarias:

* Programadores de R intermedios que desean profundizar en R y aprender nuevas estrategias para resolver diversos problemas.
* Programadores de otros idiomas que están aprendiendo R y quieren entender por qué R funciona de la manera que lo hace.

Para aprovechar al máximo este libro, deberá haber escrito una cantidad decente de código en R u otro lenguaje de programación. Es posible que no conozca todos los detalles, pero debe estar familiarizado con el funcionamiento de las funciones en R y, aunque actualmente puede tener dificultades para usarlas de manera efectiva, debe estar familiarizado con la familia de aplicaciones (como `apply ()` y `lapply () `).

## Lo que obtendrás de este libro

Este libro describe las habilidades que creo que un programador avanzado de R debería tener: la capacidad de producir código de calidad que pueda usarse en una amplia variedad de circunstancias.

Después de leer este libro, usted:

* Familiarícese con los fundamentos de R. Comprenderá los tipos de datos complejos y las mejores formas de realizar operaciones en ellos. Tendrá una comprensión profunda de cómo funcionan las funciones y podrá reconocer y utilizar los cuatro sistemas de objetos en R.
* Comprenda lo que significa la programación funcional y por qué es una herramienta útil para el análisis de datos. Podrá aprender rápidamente cómo usar las herramientas existentes y tener el conocimiento para crear sus propias herramientas funcionales cuando sea necesario.
* Aprecia la espada de doble filo de la metaprogramación. Podrá crear funciones que utilizan evaluaciones no estándar de una manera basada en principios, ahorrando escritura y creando código elegante para expresar operaciones importantes. También comprenderá los peligros de la metaprogramación y por qué debe tener cuidado con su uso.
* Tener una buena intuición para las operaciones en R lentas o usar mucha memoria. Sabrás cómo usar la creación de perfiles para identificar los cuellos de botella de rendimiento, y sabrás suficiente C ++ para convertir funciones R lentas en equivalentes C ++ rápidos.
* Se sienta cómodo leyendo y entendiendo la mayoría del código R. Reconocerá expresiones idiomáticas comunes (incluso si no las usaría usted mismo) y podrá criticar el código de los demás.

Hay dos meta-técnicas que son tremendamente útiles para mejorar sus habilidades como programador de R: leer el código fuente y adoptar una mentalidad científica.

Leer el código fuente es importante porque te ayudará a escribir un mejor código. Un gran lugar para comenzar a desarrollar esta habilidad es mirar el código fuente de las funciones y paquetes que usa con más frecuencia. Encontrarás cosas que vale la pena emular en tu propio código y desarrollarás un sentido del gusto por lo que hace un buen código R. También verá cosas que no le gustan, ya sea porque sus virtudes no son obvias o ofende su sensibilidad. Sin embargo, dicho código es valioso porque ayuda a concretar sus opiniones sobre el código bueno y el malo.

Una mentalidad científica es extremadamente útil cuando se aprende R. Si no comprende cómo funciona algo, desarrolle una hipótesis, diseñe algunos experimentos, ejecútelos y registre los resultados. Este ejercicio es extremadamente útil ya que si no puede resolver algo y necesita ayuda, puede mostrar fácilmente a los demás lo que intentó. Además, cuando aprenda la respuesta correcta, estará mentalmente preparado para actualizar su visión del mundo. Cuando describo claramente un problema a otra persona (el arte de crear un [ejemplo reproducible] [12]), a menudo descubro la solución yo mismo.

## Lectura recomendada

R sigue siendo un idioma relativamente joven, y los recursos para ayudarlo a comprenderlo aún están madurando. En mi viaje personal para comprender R, me ha resultado especialmente útil utilizar recursos de otros lenguajes de programación. R tiene aspectos de lenguajes de programación tanto funcionales como orientados a objetos (OO). Aprender cómo se expresan estos conceptos en R lo ayudará a aprovechar su conocimiento existente de otros lenguajes de programación y lo ayudará a identificar áreas en las que puede mejorar.

Para entender por qué los sistemas de objetos de R funcionan de la manera que lo hacen, encontré [_La estructura e interpretación de los programas de computadora _] [13] (SICP) de Harold Abelson y Gerald Jay Sussman, particularmente útil. Es un libro conciso pero profundo. Después de leerlo, sentí por primera vez que realmente podía diseñar mi propio sistema orientado a objetos. El libro fue mi primera introducción al estilo de función genérico de OO común en R. Me ayudó a comprender sus fortalezas y debilidades. SICP también habla mucho sobre programación funcional y cómo crear funciones simples que se vuelven poderosas cuando se combinan.

Para comprender las compensaciones que R ha realizado en comparación con otros lenguajes de programación, encontré [_Conceptos, técnicas y modelos de programación de computadoras _] [14] de Peter van Roy y Sef Haridi extremadamente útiles. Me ayudó a comprender que la semántica de copiar en modificar de R hace que sea mucho más fácil razonar sobre el código, y que si bien su implementación actual no es particularmente eficiente, es un problema que se puede resolver.

Si quieres aprender a ser un mejor programador, no hay mejor lugar al que recurrir que [_The Pragmatic Programmer _] [15] de Andrew Hunt y David Thomas. Este libro es independiente del lenguaje y proporciona excelentes consejos sobre cómo ser un mejor programador.

## Obteniendo ayuda

Actualmente, hay dos lugares principales para obtener ayuda cuando estás atascado y no puedes descubrir qué está causando el problema: [stackoverflow] [16] y la lista de correo de R-help. Puede obtener ayuda fantástica en ambos lugares, pero tienen sus propias culturas y expectativas. Por lo general, es una buena idea pasar un poco de tiempo al acecho, aprendiendo sobre las expectativas de la comunidad, antes de publicar su primera publicación.

Algunos buenos consejos generales:

* Asegúrese de tener la última versión de R y del paquete (o paquetes) con los que tiene problemas. Puede ser que su problema sea el resultado de un error recientemente corregido.
* Pase algún tiempo creando un [ejemplo reproducible] [12]. Esto es a menudo un proceso útil por derecho propio, porque en el curso de hacer que el problema sea reproducible, a menudo descubres lo que está causando el problema.
* Busque problemas relacionados antes de publicar. Si alguien ya ha hecho su pregunta y ha sido respondida, es mucho más rápido para todos si usa la respuesta existente.

## Agradecimientos

Me gustaría agradecer a los incansables colaboradores de R-help y, más recientemente, [stackoverflow] [3]. Hay muchos para nombrar individualmente, pero me gustaría agradecer especialmente a Luke Tierney, John Chambers, Dirk Eddelbuettel, JJ Allaire y Brian Ripley por dar generosamente su tiempo y corregir mis innumerables malentendidos.

Este libro fue [escrito al aire libre] [17], y los capítulos se anunciaron en [twitter] [18] cuando se completó. Es realmente un esfuerzo de la comunidad: muchas personas leen borradores, errores tipográficos, mejoras sugeridas y contenido contribuido. Sin esos colaboradores, el libro no sería tan bueno como es, y estoy profundamente agradecido por su ayuda. Un agradecimiento especial a Peter Li, que leyó el libro de principio a fin y proporcionó muchas soluciones. Otros colaboradores destacados fueron Aaron Schumacher, @crtahlin, Lingbing Feng, @juancentro y @johnbaums.
