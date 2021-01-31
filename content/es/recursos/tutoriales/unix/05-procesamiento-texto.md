---
# Course title, summary, and position.
linktitle: Procesamiento texto
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Procesamiento texto
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/05-procesamiento-texto"
description: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
# Features
reading_time: true  # Show estimated reading time?
share: false  # Show social sharing links?
profile: false  # Show author profile?
commentable: false  # Allow visitors to comment? Supported by the Page, Post, and Docs content types.
editable: true  # Allow visitors to edit the page? Supported by the Page, Post, and Docs content types.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  unix:
    name: Procesamiento texto
    weight: 6
---


# Procesamiento de ficheros de texto

- [Ficheros de texto y binarios](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#ficheros-de-texto-y-binarios)
- [Editores de texto](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#editores-de-texto)
- [Imprimiendo ficheros *cat*, *head* y *tail*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#imprimiendo-ficheros-cat-head-y-tail)
- [Navegando por un fichero de texto](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#navegando-por-un-fichero-de-texto)
- Edición por línea de comandos
  - [*wc*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#wc)
  - [*grep*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#grep)
  - [*cut*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#cut)
  - [*sed*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#sed)
  - [*sort*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#sort)
  - [*uniq*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#uniq)
  - [*shuf*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#shuf)
- Herramientas para unir archivos
  - [*paste*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#paste)
  - [*join*](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#join)
- [Codificación de caracteres](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#codificacin-de-caracteres)
- [Fin de línea](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#fin-de-lnea)
- [Ejercicios](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#ejercicios)
- [Soluciones](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#soluciones)
- [Bibliografía](https://bioinf.comav.upv.es/courses/unix/procesamiento_texto.html#bibliografa)

Uno de los puntos fuertes de los sistemas Unix estriba en la  facilidad con la que pueden analizar los ficheros de texto en ellos. Estos sistemas incluyen una serie de herramientas que permiten realizar  una gran cantidad de manipulaciones en estos ficheros sin necesidad de  instalar ninguna herramienta especializada.

En esta sección vamos a presentar varias de estas herramientas. Trabajaremos con el siguiente [archivo de prueba](https://bioinf.comav.upv.es/courses/unix/demo_data/microarray_adenoma_hk69.ods).

## Ficheros de texto y binarios

Antes de comenzar a analizar los este tipo de ficheros debemos aclarar qué es y qué no es un [fichero de texto](https://en.wikipedia.org/wiki/Text_file). Un fichero de texto es un fichero dividido en líneas y cuyo contenido es exclusivamente [texto simple](https://en.wikipedia.org/wiki/Plain_text), es decir, sólo hay caracteres alfanuméricos (letras y números),  retornos de carro y tabuladores. Los ficheros de texto pueden ser abiertos e inspeccionados sin necesidad de hacer uso de un software especial diseñado para trabajar con ellos.

A pesar de lo que pudiese parecer a priori, los documento de  Microsoft Office o de LibreOffice no son ficheros de texto, contienen  otras cosas como información de formato, estilo, tablas o imágenes. La información contenida en estos documentos es binaria y sólo los  programas especialmente creados para abrir estos ficheros pueden acceder a ella de un modo inteligible.

Uno de los puntos fundamentales de la filosofía Unix, es la  utilización de ficheros de texto. Mientras otros sistemas operativos favorecen la utilización de ficheros  binarios, que deben ser acompañados de herramientas especiales para  poder manipularlos, en Unix se optó por crear un conjunto de  herramientas para manipulación de ficheros de texto y por utilizar para  los ficheros del sistema sólo ficheros de texto siempre que esto fuese  posible.

## Editores de texto

En Linux existen editores de texto que funcionan con entorno gráfico, como el *gedit*, *KWrite* o *Leafpad*, y editores que funcionan en la terminal, como el *nano*, *pico* o *vim*

*vim* es un editor de texto potente y versátil pero dominar su manejo requiere bastante tiempo.

*nano* es una versión mejorada de *pico*. Se trata de un editor simple y versátil pero mucho más fácil de usar que, por ejemplo, *vim* y está instalado por defecto en muchas distribuciones de Linux.

Vamos a ver cómo usar nano para crear o modificar archivos de texto, así como alguna de sus funcionalidades.

Podemos abrir *nano* directamente y se abrirá con un archivo vacio:

```
 ~$ nano
```

o bien indicarle la dirección de un archivo. En el caso que el archivo no exista lo creará.

```
 ~$ nano nombre_archivo
```

En la parte superior indica la versión y el nombre del archivo y en  la parte superior se muestran algunas de las opciones del editor. Si  deseamos ver una lista más completa podemos acceder a la ayuda mediante *Ctrl + g*

- Crtl + x :       Cerrar el fichero / Salir de nano
- Crtl + o :       Guardar
- Alt + u :       Deshacer
- Alt + e :        Rehacer

Nos podemos mover por el documento con los cursores, y los botones de inicio, fin y avance y retroceso de página.

- Alt + a :        Seleccionar texto desde la posición actual del cursor
- Alt +  6 :       Copiar selección o línea actual
- Crtl + k :       Cortar selección o línea actual
- Crtl + u :       Pegar
- Alt +  w :      Buscar una cadena de texto o expresión regular
- Crtl + \ :        Buscar y reemplazar una cadena de texto o expresión regular
- Crtl + t :       Invocar el corrector ortográfico (requiere tener instalado *spell*)
- Alt + d :        Contar el número de palabras, líneas y caracteres

## Imprimiendo ficheros *cat*, *head* y *tail*

A veces, si los archivos son muy grandes incluso los editores en línea pueden tener problemas para abrirlos. Otra forma de acceder a los contenidos del fichero sería imprimir el fichero en la terminal utilizando el comando *cat*:

```
 ~$ cat microarray_adenoma_hk69.ods
```

Recuerda que las herramientas que estamos viendo sólo sirven para trabjar con ficheros de texto, no binarios.

```
 ~$ cat microarray_adenoma_hk69.csv
```

Si el archivo es extremadamente largo es posible que la terminal se bloquee durante bastante tiempo (Nota: recuerda que con *Crtl + c* los programas suelen terminar inmediatamente y se vuelve a mostrar el *prompt*.

*cat* es además capaz de concatenar textos uno detrás de otro en el orden en que se los pasamos y mostrarlos en pantalla

```
 ~$ cat file1 file2 file3
```

Algunas opciones interesantes de *cat* son:

- -A : muestra también los caracteres de control, básicamente los tabuladores (como ^I) y los retornos de carro ($)
- -n : numera todas las líneas

Para hacernos una idea del contenido del fichero sin bloquear la  terminal podemos imprimir tan solo las primeras líneas utilizando el  comando *head*:

```
  ~$ head microarray_adenoma_hk69.csv
  "!Exptid=10029"
  "!Experiment Name=Adenoma (HK69)"
  "!Organism=Homo sapiens"
  "!Category=Adenoma"
  "!Subcategory=Liver"
  "!Experimenter=Xin Chen"
  "!Contact email=chenx@pharmacy.ucsf.edu"
  "!Contact Address1=Dept. of Biopharmaceutical Sciences"
  "!Contact Address2=513 Parnassus Ave. S-816"
  "!Contact Address3=Box 0446"
```

Existe otro comando equivalente pero que nos permite imprimir el final de los archivos (*tail*):

```
  ~$ tail microarray_adenoma_hk69.csv
  24183       "EMPTY" "EMPTY" 19      27      32      0
```

Tanto a *head* como a *tail* podemos pedirles que impriman el número de líneas que nosotros deseemos mediante la opción *-n*:

```
  ~$ head -n 2 microarray_adenoma_hk69.csv
  "!Exptid=10029"
  "!Experiment Name=Adenoma (HK69)"
```

Otro comportamiento de *tail* que resulta útil es que puede mostrar todas las líneas excepto las *k* primeras líneas. Para ello hay que usar la opción *-n* y el número de líneas que queremos omitir precedido por un *+*. Por ejemplo, para omitir la cabecera del archivo de micro_adenoma que ocupa las primeras 20 líneas podemos hacer:

```
  ~$ tail -n +20 microarray_adenoma_hk69.csv  
```

## Navegando por un fichero de texto

En muchas ocasiones para familiarizarnos con el fichero lo mejor es abrirlo y navegar por él. Podríamos abrir el fichero con un editor de texto, pero ya hemos visto que si es muy grande podríamos tener problemas. Existe una herramienta capaz de abrir ficheros de texto inmensos sin problemas, *less*.

*less* es un visor de ficheros de texto, con este programa no podremos editar el fichero, pero sí navegar por su contenido. *less* es un programa interactivo por lo que cuando lo ejecutemos se abrirá ocupando el terminal y haciendo desaparecer el *prompt*. En cualquier momento podemos salir de *less* pulsando la tecla “q”.

```
  ~$ less microarray_adenoma_hk69.csv
```

Dentro de *less* disponemos de varios comandos para movernos por el fichero:

- barra de espacio: página siguiente.
- b: página anterior.
- 100g: va a la línea 100 (o la que le indiquemos)
- -S: corta o no corta las líneas largas
- /palabra: Busca la cadena de texto que le indiquemos (acepta expresiones regulares)
- n: va a la siguiente palabra que coincide con la búsqueda
- N: va la palabra anterior que coincide con la búsqueda
- q: sale del programa
- h: ayuda

## Edición por línea de comandos

### *wc*

*wc* (*Word Count*) sirve para contar líneas, palabras y caracteres.

```
  ~$ wc leukemia microarray_adenoma_hk69.csv
```

### *grep*

Una tarea que vamos a tener que realizar habitualmente es la de seleccionar diversas líneas en un fichero de texto. Por ejemplo, imaginemos que queremos saber cual es la expresión de los genes relacionados con la leucemia en el fichero del *microarray*. Esto, que en otros sistemas operativos podría resultar bastante complejo de hacer en Unix es trivial:

```
  ~$ grep leukemia microarray_adenoma_hk69.csv
  3       "IMAGE:302190"  "MLL"   "Myeloid/lymphoid or mixed-lineage leukemia (trithorax homolog, Drosophila)"
```

*grep* (*Generalized Regular Expression Parser*) toma un fichero de entrada (o el *standard  input*) y filtra las líneas que contienen el patrón de búsqueda que le hemos  dado. Por defecto incluye en el resultado las líneas que contienen el  patrón, pero podríamos pedirle que haga lo contrario utilizando la  opción *v* (*inVert*).

```
~$ grep -v leukemia microarray_adenoma_hk69.csv
  3       "IMAGE:302190"  "MLL"   "Myeloid/lymphoid or mixed-lineage leukemia (trithorax homolog, Drosophila)"
```

*grep* diferencia entre mayúsculas y minúsculas, pero podemos cambiar este comportamiento con la opción *i* (ignore case):

```
~$ grep -i leukemia microarray_adenoma_hk69.csv
  3       "IMAGE:302190"  "MLL"   "Myeloid/lymphoid or mixed-lineage leukemia (trithorax homolog, Drosophila)"
```

Si queremos saber en que posiciones del fichero original estaban las  líneas que hemos encontrado podemos pedirle que imprima dichos números  de línea:

```
  ~$ grep -n leukemia microarray_adenoma_hk69.csv
```

*grep* puede utilizarse para buscar recursivamente en todos los ficheros contenidos en un directorio. Por ejemplo podríamos buscar la palabra *leukemia* en todos los ficheros presentes en alguno de nuestros directorios:

```
  ~$ grep -r  leukemia ~
```

*grep* tiene otras muchas opciones útiles, en su manual están todas descritas:

```
  ~$ man grep
```

*grep* hace uso de las expresiones regulares que veremos  posteriormente por lo que su potencia es mucho mayor que la que ahora  podemos imaginar.

Otra de las ventajas de *grep* viene dada por su adherencia a los principios Unix lo que implica que podemos utilizar *grep* enlazándolo con otros programas. Imaginemos que queremos hacer una búsqueda limitada a las primeras cien líneas del fichero, podríamos hacer:

```
  ~$ head -n 100 microarray_adenoma_hk69.csv | grep leukemia
```

Lo que hemos hecho es utilizar el comando *head* para leer las primeras cien líneas del archivo, pero en vez de imprimir el resultado  en pantalla hemos redirigido su salida mediante una tubería (*pipe*) al comando *grep*. Éste ha tomado estas cien líneas y las ha filtrado con la palabra *leukemia*. Podríamos además redirigir el resultado final a un fichero para guardar el resultado:

```
  ~$ head -n 100 microarray_adenoma_hk69.csv | grep leukemia > busqueda_leukemia_100.txt
```

o bien pasárselo a otro programa, por ejemplo, a *wc* para que cuente el número de veces que aparece *leukemia*

```
  ~$ head -n 100 microarray_adenoma_hk69.csv | grep leukemia | wc
```

Todos los comandos de manejo de texto que vamos a ver en esta sección tienen esta capacidad. Todos siguen el principio de realizar una tarea concreta pero teniendo la capacidad de enlazarse con otros.

### *cut*

Cuando el fichero está dividido en campos, como en el caso de la  tabla que estamos utilizando, podemos seleccionar alguno de estos campos utilizando el comando *cut*. Por ejemplo mejoremos la búsqueda que habíamos hecho quedándonos tan solo con el nombre del gen:

```
 ~$ grep leukemia microarray_adenoma_hk69.csv | cut -f 3
 "BAALC"
 "DEK"
```

Con el parámetro *-f* le indicamos la lista de campos (*fields*) que queremos seleccionar.

Para indicar los campos que queremos seleccionar:

- N	: el campo N (p.e., cut -f 3 file1)
- N- : desde el campo N hasta el final (p.e., cut -f 3- file1)
- N-M : desde el campo N al M (p.e., cut -f 3-6 file1)
- -M : desde el primer campo al campo M (p.e., cut -f -3 file1)
- N,M : los campos indicados (p.e., cut -f 3,6,8 file1)

Así podríamos seleccionar los campos del 3 al 5 y del 8 al 10:

```
  ~$ cut -f 3-5,8-10 microarray_adenoma_hk69.csv
```

*cut* asume que los campos en el fichero están divididos por tabuladores. Pero podríamos indicarle que los campos están divididos de otro modo, por ejemplo por comas:

```
  ~$ cut -d ',' fichero_separado_por_comas.txt
```

Para tener una idea completa de las capacidades ofrecidas por el comando conviene consultar su manual:

```
  ~$ man cut
```

### *sed*

El *sed* (*stream editor*) es un editor de texto un tanto especial que toma las líneas de una en una, les aplica la transformación que le indiquemos y devuelve las líneas modificadas.

Por ejemplo, la lista de genes que hemos obtenido en el apartado  anterior puede servirnos para muchos propósitos, pero todavía no está  limpia del todo, quedaría mejor si eliminásemos las comillas que rodean  los campos:

```
  ~$ grep leukemia microarray_adenoma_hk69.csv | cut -f 3,4 | sed  "s/\"//g"
  BAALC   Brain and acute leukemia, cytoplasmic
  DEK     DEK oncogene (DNA binding)
```

El *sed* además de sustituir puede realizar cualquier tipo de edición sobre un texto. La sintaxis utilizada por *sed* puede resultar algo oscura al  principio, pero un mínimo conocimiento de este comando nos permitirá  hacer modificaciones en el texto que de otro modo serían muy complejas.

En este curso nos centraremos en el uso del *sed* para sustituciones. En el ejemplo anterior, el comando sed que hemos utilizado es “s/"//g”. En primer lugar hemos indicado a *sed* qué queríamos hacer. Podemos, como es el caso, substituir un patrón por otro (comando s,  sustituir), pero también podríamos pedirle que eliminase líneas (comando d, delete). Para substituir hay que indicarle qué queremos substituir y por qué:

```
  s/patrón_a_substituir/nuevo_patrón/
```

En el ejemplo hemos substituido las comillas por nada. En principio deberíamos haber escrito “s/”//”. Pero dado que las comillas tienen un significado especial en este contexto debemos *escaparlas*, por eso escribimos “s/\”//”. Además, a la expresión le hemos añadido una “g”, con este modificador le indicamos a *sed* que no queremos que substituya sólo la primera aparición del patrón en la línea sino todos los que haya.

*sed* acepta expresiones regulares como patrones y con ellas  puede realizar prácticamente cualquier substitución que podamos  imaginar.

### *sort*

Si deseamos ordenar alfabéticamente un fichero de texto tan sólo tenemos que utilizar el comando *sort*. Por ejemplo, podemos ordenar los genes relacionados con la leucemia:

```
  ~$ grep leukemia microarray_adenoma_hk69.csv | cut -f 3,4| sort
```

*sort* también puede hacer ordenaciones numéricas y puede ordenar por cualquiera de los campos presentes en el fichero. Para ver qué se puede hacer con *sort* lo más recomendable es leer su manual.

### *uniq*

En el ejemplo anterior, al ordenar con *sort*, hemos visto que en la lista que hemos obtenido hay genes repetidos. Con el comando *uniq* podemos eliminar las líneas duplicadas consecutivas. Para que la eliminación sea completa hay que recordad ordenar con *sort* antes de utilizar *uniq*:

```
  ~$ grep leukemia microarray_adenoma_hk69.csv | cut -f 3,4| sort | uniq
```

### *shuf*

*shuf* permite obtener permutaciones aleatorias del archivo de entrada, o bien obtener líneas aleatorias.

Si no le pasamos ningún parámeto a *shuf* obtendremos permutaciones aleatorias:

```
  ~$ ls / | shuf
```

o bien le podemos pedir el número de líneas aleatorias que deseemos.

```
  ~$ grep leukemia microarray_adenoma_hk69.csv | cut -f 3,4 | shuf -n 5
```

## Herramientas para unir archivos

### *paste*

*paste* une ficheros tabulares línea por línea. Supongamos que tenemos dos ficheros, uno con datos sobre la progresión  de la enfermedad de una serie de enfermos y otro con el genotipado de  los mismos:

```
  pacientes:
  id_paciente,nivel_colesterol
  1,190
  2,250
  3,220
  4,260
  5,160
  genotipado:
  id_paciente,SNP_a,SNP_b
  1,AA,CC
  2,AC,GG
  3,AA,CG
  4,AT,GG
  5,AA,CC
```

Podemos fusionar los dos archivos usando el comando paste:

```
  ~$ paste -d',' pacientes.txt genotipado.txt
  id_paciente,nivel_colesterol,id_paciente,SNP_a,SNP_b
  1,190,1,AA,CC
  2,250,2,AC,GG
  3,220,3,AA,CG
  4,260,4,AT,GG
  5,160,5,AA,CC
```

### *join*

*join* es una herramienta muy potente, pero sencilla. Permite  unir dos ficheros de texto en uno usando una columna como clave común.  Por defecto, *join* asume que el separador de campos es el espacio.

*join* es una especie de *paste* en la que la columna  común que sirve como enlace entre ambas tablas no queda duplicada y no  requiere que un elemento esté en los dos archivos. *join* lo que sí que requiere es que ambos archivos estén ordenados por la columna que se queiere usar como clave Imaginemos que tenemos los dos ficheros siguientes: [file1.txt](https://bioinf.comav.upv.es/courses/unix/demo_data/file1.txt) y [file2.txt](https://bioinf.comav.upv.es/courses/unix/demo_data/file2.txt)

```
  file1.txt:
  num id atributo
  1 abc fff
  2 efg aaa
  5 klm bbb
  file2.txt:
  num id atributo
  1 abc ttt
  3 klm fff
  5 opq jjj
  9 rst ttt
```

*join* nos permite unir estas dos tablas en una sola utilizando el campo *num* como la clave de unión:

```
  ~$ join file1.tx file2.tx
  num id atributo id atributo
  1 abc fff abc ttt
  5 klm bbb opq jjj 
```

Por defecto, *join* asume que la clave de unión es la primera columna, pero esto se puede modificar:

```
  ~$ join -1 2 -2 2 file1.tx file2.tx
  id num atributo num atributo
  abc 1 fff 1 ttt
  klm 5 bbb 3 fff
```

Las filas que no son comunes entre ambos archivos no se devuelven por defecto, pero esto también es modificable y podemos solicitar que nos  devuelva todas las de un archivo, las del otro o las de los dos:

```
  ~$ join -a1 -1 2 -2 2 file1.tx file2.tx
  id num atributo num atributo
  abc 1 fff 1 ttt
  efg 2 aaa
  klm 5 bbb 3 fff
  ~$ join -a1 -a2 -1 2 -2 2 file1.tx file2.tx
  id num atributo num atributo
  abc 1 fff 1 ttt
  efg 2 aaa
  klm 5 bbb 3 fff
  opq 5 jjj
  rst 9 ttt
```

## Codificación de caracteres

Los ordenadores codifican los caracteres del lenguaje natural  utilizando números. Los ficheros de texto no son pues más que ficheros de números que el  ordenador transforma en caracteres utilizando una tabla de codificación  de caracteres antes de imprimirlos. Una de las tablas de codificación más populares es la [ASCII](https://es.wikipedia.org/wiki/ASCII), en ella se incluyen los caracteres utilizados en la lengua inglesa,  pero no los acentos o los caracteres de otros alfabetos. Para solucionar el problema el ASCII original fue ampliado creándose  distintas tablas, una por cada lengua natural. De este modo con el ASCII correspondiente al castellano podemos crear  ficheros de texto con acentos. Pero al crear distintas tablas de codificación surgió un problema, si  nos equivocamos de tabla al decodificar el fichero obtendremos  caracteres extraños que no se corresponden con lo que originalmente se  había escrito. Para solucionar el problema se creó la norma [Unicode](https://es.wikipedia.org/wiki/Unicode), que es una gran tabla con unos 100713 símbolos que codifican  prácticamente todos los caracteres utilizados en casi cualquier alfabeto humano.

El problema práctico al que nos enfrentamos es que para poder abrir  un fichero de texto que incluya caracteres no ingleses debemos conocer  la tabla de caracteres en la que fue codificado. En Linux los ficheros de texto se codifican mediante *UTF-8* que es una de las tablas del estándar *Unicode*, pero en *Windows* no se sigue este estándar. Las instalaciones de Windows en castellano utilizan la tabla Windows-1252.

Normalmente los editores de texto permiten elegir la tabla de  caracteres en la que el fichero ha sido codificado. Si abrimos un fichero y vemos que tiene símbolos raros lo más normal es  que estemos utilizando una tabla de caracteres equivocada. Este problema también suele ocurrir en las páginas web. Una página web  no es más que un fichero de texto con un formato determinado. Si el navegador no es capaz de inferir la codificación del fichero los  acentos pueden aparecer como caracteres extraños.

En Linux hay varios programas que nos permiten cambiar los ficheros de una tabla de codificación a otra, uno de ellos es *iconv*. Por ejemplo si tenemos un archivo con una codificación [UTF-8](https://bioinf.comav.upv.es/courses/unix/demo_data/sagan.utf-8.txt) o [ISO-8859-1](https://bioinf.comav.upv.es/courses/unix/demo_data/sagan.iso-8859-1.txt) podemos pasar de una a otra con *iconv*:

```
  ~$ iconv -t ISO-8859-1 -f UTF-8 sagan.iso-8859-1 > sagan.utf-8_mod.txt
  ~$ iconv -f ISO-8859-1 -t UTF-8 sagan.utf-8.txt > sagan.iso-8859-1_mod.txt
```

## Fin de línea

Para marcar el final de una línea en un fichero de texto se utiliza  un carácter especial. Por desgracia no ha habido un acuerdo a la hora de decidirse cual es el  carácter que debe usarse. Unix, Windows y Mac OS utilizan caracteres diferentes. Afortunadamente los editores de texto suelen ser capaces de detectar las tres versiones y muestran el fichero con las líneas que esperamos. Desgraciadamente el notepad del Windows no es capaz de hacerlo por lo  que si abrimos un fichero de texto creado en Linux en el notepad nos  aparecerá como una larga línea con símbolos extraños intercalados. Casi todos los editores de texto permiten hacer el cambio entre los  distintos finales de línea.

```
  ~$ unix2dos -n sagan.utf-8.txt sagan.dos.tx
  ~$ cat -A sagan.uft-8.txt
  ~$ cat -A sagan.dos.txt
  ~$ dos2unix sagan.dos.tx
  ~$ cat -A sagan.dos.txt
```

## Ejercicios

Se ha realizado un estudio de un nuevo tratamiento para un linfoma y nos han enviado dos ficheros. En el llamando [cancer_progresion.txt](https://bioinf.comav.upv.es/courses/unix/demo_data/cancer_progresion.txt) se encuentran tanto los datos de los pacientes como el resultado del tratamiento. En el [segundo](https://bioinf.comav.upv.es/courses/unix/demo_data/cancer_ciego.txt) se encuentra la tabla que nos permitirá desentrañar el ensayo del doble ciego, con el identificador de cada paciente y la dosis de droga que se le administró.

1. Sobre el archivo microarray_adenoma_hk69, recupera sólo el primer resultado.
2. ¿Cuántos pacientes había en el estudio?
3. ¿De cuántos pacientes no tenemos datos de progresión?
4. Convertir la separación de comas de la tabla de doble ciego a tabuladores (el tabulador se escribe como \t).
5. Unir la tabla de los resultados de la terapia con la del doble ciego.
6. Transformar el fichero resultante las comas a tabuladores.
7. ¿Cómo les ha ido a los pacientes según el tipo de tratamiento? (Placebo está escrito con mayúsculas y minúsculas)
8. Crea un fichero con los primeros 100 resultados del microarray de adenoma que incluya sólo las primeras 10 columnas.
9. Ordena el fichero micro.txt generado en la cuestión 7 por el  nombre del gen (campo 3) y por el id de la fila, pero en orden numérico  reverso.
10. Disponemos de dos ficheros con secuencias de ADN: [seqs_1.fasta](https://bioinf.comav.upv.es/courses/unix/demo_data/seqs_1.fasta) y [seqs_2.fasta](https://bioinf.comav.upv.es/courses/unix/demo_data/seqs_2.fasta) ¿Cuántas secuencias hay en cada fichero? ¿Hay alguna secuencia presente en ambos ficheros? (En los archivos de secuencia tipo fasta el nombre  de las secuencias se encuentra en las líneas que comienzan por el  símbolo *>*)
11. Disponemos de un fichero con [secuencia de ADN](https://bioinf.comav.upv.es/courses/unix/demo_data/seqs_3.fasta), puedes extraer los nombres de las sequencias?
12. Disponemos de un fichero con el resultado de un mapeo en [formato SAM](https://bioinf.comav.upv.es/courses/unix/demo_data/tomate.sam) ¿Cuntas secuencias se han mapeado? ¿Cuántas se han mapeado en dirección reversa (mirad la segunda columna: 0 forward; 16 reverse)? ¿Cuántos y  cuáles son los unigenes a los que se ha podido mapear alguna secuencia?  Ordena las nombres de secuencias mapeadas con el orden del unigene y la  posición en el unigene.

## Soluciones

1.- Sobre el archivo microarray_adenoma_hk69, recupera sólo el primer resultado.

```
  ~$ tail -n +21 microarray_adenoma_hk69.csv | head -1
```

2.- ¿Cuántos pacientes había en el estudio?

```
  ~$ grep -v nombre cancer_progresion.txt | wc -l
  11
```

3.- ¿De cuántos pacientes no tenemos datos de progresión?

```
  ~$ grep  desconocido cancer_progresion.txt  | wc -l
  1
```

4.- Convertir la separación de comas de la tabla de doble ciego  a tabuladores.   (El tabulador se escribe como \t)

```
  ~$ sed -e 's/,/\t/' cancer_ciego.txt > cancer_ciego_tab.txt
```

5.- Unir la tabla de los resultados de la terapia con la del doble ciego.

```
  ~$ join cancer_progresion.txt cancer_ciego_tab.txt > cancer.txt
```

*join*, por defecto, crea la nueva tabla usando como separador los espacios. Para poder hacerlo correctamente con tabuladores habría que usar “join -t $’\t’”. Otro modo correcto y más sencillo de hacerlo sería pasar antes todos los tabuladores a comas y hacerlo con comas. Estas herramientas tienen este tipo de limitaciones, más adelante con Python podremos superarlas fácilmente.

6.- Transformar el fichero resultante los espacios a tabuladores.

```
  ~$ sed -e 's/ /\t/g' cancer.txt
```

7.- ¿Cómo les ha ido a los pacientes según el tipo de tratamiento? (Placebo está escrito con mayúsculas y minúsculas)

```
  ~$ grep -i placebo cancer.txt
  1 Pepe Granada buena placebo
  4 Mónica Madrid mala placebo
  7 Óscar Barcelona mala Placebo
  10 Jordi Barcelona mala Placebo
  ~$ grep -i 1mg cancer.txt
  2 Juan Lugo muy buena 1mg
  3 Alicia Valencia muy buena 1mg
  8 Trini Valencia muy buena 1mg
  ~$ grep -i 2mg cancer.txt
  5 Alberto Madrid regular 2mg
  6 Toni Toledo mala 2mg
  9 Pepe Valencia buena 2mg
  11 Manolo Sevilla desconocido 2mg
```

8.- Crea un fichero con los primeros 100 resultados del microarray de adenoma que incluya sólo las primeras 10 columnas.

```
  ~$ grep -v '^"' microarray_adenoma_hk69.csv | head -n 100 | cut -f 1-10 > micro.txt
```

9.- Ordena el fichero micro.txt generado en la cuestión 7 por el  nombre del gen (campo 3) y por el id de la fila, pero en orden numérico  reverso.

```
  ~$ sort -k 3 micro.txt
  ~$ sort -nr micro.txt
```

10.- Disponemos de dos ficheros con secuencias de ADN (seqs_1.fasta y seqs_2.fasta). ¿Cuántas secuencias hay en cada fichero? ¿Hay alguna  secuencia presente en ambos ficheros? (En los archivos de secuencia tipo fasta el nombre de las secuencias se encuentra en las líneas que  comienzan por el símbolo *>*)

Veamos cuantas secuencias hay en cada archivo y después contemos las  secuencias no repetidas que hay en un archivo que las incluya a todas.

```
  ~$ cat seqs_1.fasta | grep '>' | wc -l
  11
  ~$ cat seqs_2.fasta | grep '>' | wc -l
  11
  ~$ cat seqs_1.fasta seqs_2.fasta | grep '>' | sort | uniq | wc -l
  20
```

Sí hay secuencias repetidas puesto que cuando las contamos todas juntas hay dos menos que cuando las contamos por separado. Podemos ver qué secuencias hay repetidas utilizando el parámetro *-d* del uniq:

```
  ~$ cat seqs_1.fasta seqs_2.fasta | grep '>' | sort | uniq -d
  >gi|311207420|gb|GT728904.1|GT728904
  >gi|311210057|gb|GT715712.1|GT715712
```

Efectivamente ambas secuencias se encuentran repetidas en los dos ficheros:

```
  ~$ grep '>gi|311207420|gb|GT728904.1|GT728904' seqs_1.fasta
  >gi|311207420|gb|GT728904.1|GT728904
  $ grep '>gi|311207420|gb|GT728904.1|GT728904' seqs_2.fasta
  >gi|311207420|gb|GT728904.1|GT728904
```

11.- Para poder extraer los nombres conviene primero echar un vistazo al fichero para ver que contiene.

```
  ~$ grep ">" seqs_3.fasta|cut -c 2- | cut -f 1 -d " "
```

12.-

```
  ~$ grep -v "^@" tomate.sam | wc
  ~$ grep -v "^@" tomate.sam | cut -f 2 | grep 16 | wc
  ~$ grep -v "^@" tomate.sam | cut -f 3 | sort -u
  ~$ grep -v "^@" tomate.sam | sort -k 3,4 |cut -f 1
```

## Bibliografía

- Chris Herborth, [Text processing with UNIX](http://www.ibm.com/developerworks/aix/library/au-textprocess.html)
- TDLP, [Text Processing Commands](http://tldp.org/LDP/abs/html/textproc.html)