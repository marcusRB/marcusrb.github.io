---
# Course title, summary, and position.
linktitle: Sistema de ficheros
summary: El sistema de archivos controla como se almacenan los archivos en el ordenador. Sus dos tareas principales son guardar y leer archivos previamente guardados.
weight: 1

# Page metadata.
title: Sistema de ficheros
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/02-sistema-ficheros"
description: El sistema de archivos controla como se almacenan los archivos en el ordenador. Sus dos tareas principales son guardar y leer archivos previamente guardados.
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
    name: Sistema de ficheros
    weight: 3
---


El [sistema de archivos](https://en.wikipedia.org/wiki/File_system) controla como se almacenan los archivos en el ordenador. Sus dos tareas principales son guardar y leer archivos previamente guardados.

## Sistemas jerárquicos

Los sistemas de archivos suelen tener [directorios](https://en.wikipedia.org/wiki/Directory_(computing)) en los que organizar los archivos y estos directorios suelen estar organizados jerárquicamente. La jerarquía implica que un directorio puede contener subdirectorios. El directorio más alto en la jerarquía del que cuelgan todos los demás se denomina *raíz* (root). En los sistemas Unix el directorio raíz se representa con una barra “*/*” y sólo existe una jerarquía, es decir, sólo existe un directorio raíz, incluso aunque haya distintos discos duros en el ordenador.

Dentro del directorio raíz podemos encontrar diversos subdirectorios, por ejemplo en Linux existe el directorio *home*. *home* es por tanto un subdictorio del directorio raíz. Esta relación se representa como:

```
/home
```

*home* es el directorio dónde se encuentran los directorios de los usuarios en un sistema Linux. Imaginemos que tiene los subdirectorios *alicia* y *juan*. Se representaría como:

```
/home/alicia
/home/juan
```

Existe un estándar, denominado [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard) que define la estructura de directorios de los sistemas Unix. Los sistemas Unix suelen seguir este estándar, aunque a veces lo violan en algunos aspectos. Por ejemplo en MacOS X el directorio donde se encuentran los direcotorios de los usuarios se denomina *Users* y no *home*

En algunos sistemas operativos no UNIX la barra se escribe al revés “", a pesar de que la convención siempre fue la contraria.

En el directorio raíz hay diversos directorios que, en la mayoría de los casos, sólo deberían interesarnos si estamos administrando el ordenador. Los usuarios normalmente sólo escriben dentro de un directorio de su propiedad localizado dentro de /home y denominado como su nombre de usuario.

Los usuarios también pueden escribir en /tmp aunque normalmente son los procesos lanzados por estos lo que hacen esta escritura. Es importante revisar el espacio libre en la partición en la que se encuentra /tmp para que no se colapse el sistema. Recuerda que /tmp es borrado habitualmente por el sistema. Normalmente con cada nuevo arranque.

## Rutas absolutas, relativas y directorio de trabajo

Para referirnos a un archivo o a un directorio debemos indicar su ruta ([path](https://en.wikipedia.org/wiki/Path_(computing)). Un ejemplo de ruta podría ser:

```
/home/alicia/documentos/tesis.md
```

Este tipo de rutas en las que se especifican todos los subdirectorios empezando desde el directorio raíz se denominan rutas absolutas.

Para no tener que escribir la ruta absoluta completa cada vez que queremos referirnos a un archivo o a un directorio se crearon los conceptos de [directorio de trabajo](https://en.wikipedia.org/wiki/Working_directory) y de [ruta relativa](https://en.wikipedia.org/wiki/Path_(computing)#Absolute_and_relative_paths).

El directorio de trabajo es una propiedad del terminal (del shell) en la que estamos trabajando. Siempre que estemos trabajando en una terminal tendremos asignado un directorio de trabajo. Por ejemplo, si nuestro usuario es *alicia* sería normal que al abrir un terminal nuestro directorio de trabajo fuese:

```
/home/alicia
```

El directorio de trabajo se utiliza para escribir rutas a archivos relativas al mismo. De este modo nos ahorramos escribir bastante. Imaginemos que Alicia tiene en su directorio un documento llamado peliculas.txt. La ruta absoluta sería.

```
/home/alicia/peliculas.txt
```

Mientras su directorio de trabajo sea /home/alicia la ruta relativa sería simplemetne:

```
peliculas.txt
```

Es decir, podemos escribir rutas relativas al directorio de trabajo, rutas que en vez de partir del directorio raíz parten desde el directorio de trabajo. Las rutas relativas se diferencian de las absolutas en los sistemas Unix porque las absolutas empiezan por “y” las relativas no.

Es común referirse al directorio de trabajo de una terminal como a un lugar en el que nos encontramos mientras estamos trabajando en la terminal. Siempre que estemos en una terminal estaremos dentro de un directorio de trabajo.

Por ejemplo, cuando abrimos un nuevo terminal el directorio de trabajo se sitúa en /home/nombre_de_usuario. Si ejecutamos el comando *ls*, el programa asumirá que queremos listar los archivos presentes en ese directorio y no en otro cualquiera. Existe un comando que nos informa sobre el directorio de trabajo actual, pwd (Print Working Directory):

```
$ pwd
/home/alicia
```

Si deseamos podemos modificar el directorio de trabajo “moviéndonos” a otro directorio. Para lograrlo hay que utilizar el comando *cd* (Change Directory):

```
$ cd documentos
$ pwd
/home/alicia/documentos
```

A partir de ese momento los comandos asumirán que si no se les indica lo contrario el directorio desde el que deben trabajar es /home/alicia/documentos.

*cd* además tiene algunos parámetros especiales:

```
cd      Ir al directorio $HOME del usuario.
cd -    Ir al directorio de trabajo previo
```

## Directorio $HOME

El directorio $HOME en los sistemas Unix, que son sistemas multiusuario, es el directorio en el que el usuario debe mantener sus ficheros y directorios. Fuera de este directorio el usuario tendrá unos permisos restringidos puesto que sus acciones podrían afectar a otros usuarios.

En Linux los directorios $HOME de los usuarios son subdirectorios del directorio */home*.

El directorio $HOME de un usuario es además el directorio de trabajo por defecto, es decir, el directorio de trabajo que se establece cuando se abre una terminal.

## Moviendo, renombrando y copiando ficheros

En primer lugar vamos a crear un fichero de prueba:

```
~$ touch data.txt
~$ ls
data.txt
```

El comando *touch*, en este caso, ha creado un fichero vacío.

Los ficheros se copian con el comando *cp* (CoPy):

```
~$ cp data.txt data.bak.txt
~$ ls
data.bak.txt  data.txt
```

Se mueven y renombran con el *mv* (MoVe):

```
~$ mv data.txt experimento_1.txt
~$ ls
data.bak.txt  experimento_1.txt
```

Para crear un nuevo directorio podemos utilizar la orden *mkdir* (MaKeDIRectory):

```
~$ mkdir exp_1
~$ ls
data.bak.txt  exp_1  experimento_1.txt
```

*mv* también sirve para mover ficheros entre directorios:

```
~$ mv experimento_1.txt exp_1/
~$ ls
data.bak.txt  exp_1
~$ ls exp_1/
experimento_1.txt
```

Los ficheros se eliminan con la orden *rm* (ReMove):

```
~$ rm data.bak.txt
~$ ls
exp_1
```

En la línea de comandos de los sistemas Unix cuando se borra un fichero se borra definitivamente, no hay papelera. Una vez ejecutado el *rm* no podremos recuperar el archivo.

Los comandos *cp* y *rm* no funcionarán bien con los directorios a no ser que modifiquemos el comportamiento que muestran por defecto:

```
~$ rm exp_1/
rm: cannot remove exp_1/ Is a directory
~$ cp exp_1/ exp_1_bak/
cp: omitting directory exp_1/
```

Esto sucede porque para copiar o borrar un directorio hay que copiar o borrar todos sus contenidos recursivamente y esto podría alterar muchos datos con un sólo comando. Por esta razón se exige que estos dos comandos incluyan un modificador que les indique que sí deben funcionar recursivamente cuando tratan con directorios:

```
~$ cp -r exp_1/ exp_1_bak/
~$ ls
exp_1  exp_1_bak
~$ rm -r exp_1_bak/
~$ ls
exp_1
```

## Nombres de directorios y archivos

En Unix los archivos pueden tener prácticamente cualquier nombre. Existe la convención de acabar los nombres con un punto y una pequeña extensión que indica el tipo de archivo. Pero esto es sólo una convención, en realidad podríamos no utilizar este tipo de nomenclatura.

Si deseamos utilizar nombres de archivos que no vayan a causar extraños comportamientos en el futuro lo mejor sería seguir unas cuantas reglas al nombrar un archivo:

- Añadir una extensión para recordarnos el tipo de archivo, por ejemplo .txt para los archivos de texto.
- No utilizar en los nombres:
  - espacios,
  - caracteres no alfanuméricos,
  - ni caracteres no ingleses como letras acentuadas o eñes.

Por supuesto, podríamos crear un archivo denominado “$ñ 1.txt” para referirnos a un archivo de sonido, pero esto conllevaría una sería de problemas que aunque son solventables nos dificultarán el trabajo.

Además es importante recordar que en Unix las mayúsculas y las minúsculas no son lo mismo. Los ficheros “documento.txt”, “Documento.txt” y “DOCUMENTO.TXT” son tres ficheros distintos.

Otra convención utilizada en los sistema Unix es la de ocultar los archivos cuyos nombres comienzan por punto “.”. Por ejemplo el archivo “.oculto” no aparecerá normalmente cuando pedimos el listado de un directorio. Esto se utiliza normalmente para guardar archivos de configuración que no suelen ser utilizados directamente por los usuarios. Para listar todos los archivos (All), ya sean éstos ocultos o no se puede ejecutar:

```
$ ls -a
.               .fontconfig          .HyperTree           .pki
..               fsm.jpg              .ICEauthority        .recently-used
```

Esta convención de ocultar los ficheros cuyo nombre comienza por un punto se mantiene también en el navegador gráfico de ficheros. En este caso podemos pedir que se muestren estos archivos en el menú Ver -> Mostrar los archivos ocultos.

Para acelerar el acceso a ciertos directorios existen algunos nombres especiales que son bastante útiles:

```
* ".." indica el directorio padre del directorio actual
* "." indica el directorio actual
* "~" representa la $HOME del usuario
```

## WildCards

En muchas ocasiones resulta útil tratar los ficheros de un modo conjunto. Por ejemplo, imaginemos que queremos mover todos los ficheros de texto a un directorio y la imágenes a otro. Creemos una pequeña demostración::

```
~$ touch exp_1a.txt
~$ touch exp_1b.txt
~$ touch exp_1b.jpg
~$ touch exp_1a.jpg
~$ ls
exp_1  exp_1a.jpg  exp_1a.txt  exp_1b.jpg  exp_1b.txt
```

Podemos referirnos a todos los archivos que acaban en txt utilizando un asterisco:

```
~$ mv *txt exp_1
~$ ls
exp_1  exp_1a.jpg  exp_1b.jpg
```

El asterisco sustituye a cualquier texto, por lo que al escribir *txt incluimos a cualquier fichero que tenga un nombre cualquiera, pero que termine con las letras txt. Podríamos por ejemplo referirnos a los ficheros del experimento 1a:

```
~$ ls *1a*
exp_1a.jpg
```

Esta herramienta es muy potente y útil, pero tenemos que tener cuidado con ella, sobre todo cuando la combinamos con *rm*. Por ejemplo la orden:

```
$ rm -r *
```

Borraría todos los ficheros y directorios que se encuentren bajo el directorio de trabajo actual, si lo hacemos perderemos todos los ficheros y directorios que cuelgan del actual directorio de trabajo, puede que esto sea lo que queramos, pero hemos de andar con cuidado.

## Ejercicios

1. ¿Cuáles son los ficheros y directorios presentes en el directorio raíz?
2. ¿Cuáles son todos los archivos presentes en nuestro directorio de usuario?
3. Crea un directorio llamado experimento.
4. Crea con touch los archivos datos1.txt y datos2.txt dentro del directorio experimento.
5. Vuelve al directorio principal de tu usuario y desde allí lista los archivos presentes en el directorio experimento usando rutas absolutas y relativas
6. Haz del directorio ~/Documentos tu directorio de trabajo y repite el ejercicio anterior
7. Borra todos los archivos que contengan un 2 en el directorio experimento.
8. Copia el directorio experimento a un nuevo directorio llamado exp_seguridad.
9. Borra el directorio experimento.
10. Renombra el directorio exp_seguridad a experimento.
11. Copia el fichero /etc/passwd al directorio ~/Documentos
12. Copia el fichero /etc/passwd al directorio ~/Documentos llamándolo usuarios.txt

## Obteniendo información sobre archivos y directorios

*ls* es un comando capaz de mostrarnos información extra sobre los archivos y directorios que lista. Por ejemplo podemos pedirle, usando la opción *-l* (Long), que nos muestre quién es el dueño del archivo y cuanto ocupa y qué permisos tiene además de otras cosas::

```
~$ ls
exp_1
~$ ls -l
total 4
drwxr-xr-x 2 usuario usuario 4096 Oct 13 09:48 exp_1
```

La información sobre la cantidad de disco ocupada la da por defecto en bytes, si la queremos en un formato más inteligible podemos utilizar la opción *-h* (Human):

```
~$ ls -lh
total 4.0K
drwxr-xr-x 2 usuario usuario 4.0K Oct 13 09:48 exp_1
```

Podemos consultar el tipo de un archivo mediante el comando *file*.

```
~$ file imagen.png
imagen.png: PNG image data, 1920 x 1080, 8-bit/color RGB, non-interlaced
```

En principio, el tipo de un archivo no está determinado por la extensión, la extensión es sólo parte del nombre, aunque hay software que viola o complementa este principio. El tipo de archivo está determinado por su [magic number](https://en.wikipedia.org/wiki/Magic_number_(programming)). El magic number está compuesto por una corta [serie de bytes](https://en.wikipedia.org/wiki/List_of_file_signatures) que indican el tipo de archivo.

## Permisos

Unix desde su origen ha sido un sistema multiusuario. Para conseguir que cada usuario pueda trabajar en sus archivos, pero que no pueda interferir accidental o deliberadamente con los archivos de otros usuarios se estableció desde el principio un sistema de permisos. Por defecto un usuario tiene permiso para leer y modificar sus propios archivos y directorios, pero no los de los demás. En los sistemas Unix los ficheros pertenecen a un usuario concreto y existen unos permisos diferenciados para este usuario y para el resto. Además el usuario pertenece a un grupo de trabajo. Por ejemplo, imaginemos que la usuaria alicia puede pertenecer al grupo de trabajo “diagnostico”. Si alicia crea un fichero este tendrá unos permisos diferentes para alicia, para el resto de miembros de su grupo y para el resto de usuarios del ordenador. Podemos ver los permisos asociados a los ficheros utilizando el comando *ls* con la opción -l (Long)::

```
~$ ls -l
total 7324
-rw-r--r-- 1 alicia diagnostico    1059 Oct 20 12:42 busqueda_leukemia_100.txt
-rw-r--r-- 1 alicia diagnostico       0 Oct 13 10:53 datos_1.txt
drwxr-xr-x 2 alicia diagnostico    4096 Oct 13 10:29 experimento
```

En este caso, los ficheros listados pertenecen Alicia y al grupo diagnostico. Los permisos asignados al usuario, a los miembros del grupo y al resto de usuarios están resumidos en la primeras letras de cada línea::

```
drwxr-x---
```

La primera letra indica el tipo de fichero listado: (d) directorio, (-) fichero u otro tipo especial. Las siguientes nueve letras muestran, en grupos de tres, los permisos para el usuario, para el grupo y para el resto de usuarios del ordenador. Cada grupo de tres letras indica los permisos de lectura (Read), escritura (Write) y ejecución (eXecute). En el caso anterior el usuario tiene permiso de lectura, escritura y ejecución (rwx), el grupo tiene permiso de lectura y ejecución (r-x), es decir no puede modificar el fichero o el directorio, y el resto de usuarios no tienen ningún permiso (—).

En los ficheros normales el permiso de lectura indica si el fichero puede ser leído, el de escritura si puede ser modificado y el de ejecución si puede ser ejecutado. En el caso de los directorios el de escritura indica si podemos añadir o borrar ficheros del directorio y el de ejecución si podemos listar los contenidos del directorio.

Estos permisos pueden ser modificados con la orden *chmod*. En chmod cada grupo de usuarios se representa por una letra:

- u: usuario dueño del fichero
- g: grupo de usuarios del dueño del fichero
- o: todos los otros usuarios
- a: todos los tipos de usuario (dueño, grupo y otros)

Los tipos de permisos también están abreviados por letras:

- r: lectura
- w: escritura
- x: ejecución

Con estas abreviaturas podemos modificar los permisos existentes.

Hacer un fichero ejecutable:

```
$ chmod u+x
```

O:

```
$ chmod a+x
```

También podemos mediante chmod indicar los permisos para un tipo de usuario determinado.

```
$ chmod a=rwx
```

Un modo algo menos intuitivo, pero más útil de utilizar chmod es mediante los números octales que representan los permisos.

```
- lectura: 4
- escritura: 2
- ejecución: 1
```

Para modificar los permisos de este modo debemos indicar el número octal que queremos que represente los permisos del fichero. La primera cifra representará al dueño, la segunda al grupo y la tercera al resto de usuarios. Por ejemplo si queremos que único permiso para el dueño y su grupo sea la lectura y que no haya ningún permiso para el resto de usuarios:

```
$ chmod 110 fichero.txt
```

También podemos combinar permisos sumando los números anteriores. Por ejemplo, permiso para leer y escribir para el dueño y ningún permiso para el resto.

```
$ chmod 300 fichero.txt
```

Permisos de lectura, escritura y ejecución para el dueño y su grupo y ninguno para el resto.

```
$ chmod 770 fichero.txt
```

Las restricciones para los permisos no afectan al usuario root, al administrador del sistema. root también puede modificar quien el dueño y el grupo al que pertenecen los ficheros mediante los comando chown y chgrp.

```
$ chown alicia fichero.txt
$ chown diagnostico fichero.txt
```

## Obteniendo información sobre el sistema de archivos

El sistema de archivos puede abarcar una o más [particiones](https://en.wikipedia.org/wiki/Disk_partitioning). Una partición es una región de un disco o de cualquier otro medio de almacenamiento. Las instalaciones de Windows tienen normalmente una partición por disco, pero en Linux esto no es tan habitual. Cada partición tiene un sistema de archivos propio, pero en Unix estos sistemas deben estar montados en algún lugar dentro de la jerarquía que cuelga de la raíz. En Windows cada partición tiene por defecto una jerarquía independiente.

Podemos pedir información sobre el espacio ocupado por las distintas particiones que tenemos actualmente montadas usando el comando *df* (Disk Free).

```
$ df -h
S.ficheros     Tamaño Usados  Disp Uso% Montado en
udev             7,8G      0  7,8G   0% /dev
tmpfs            1,6G   9,8M  1,6G   1% /run
/dev/nvme0n1p2    25G   8,1G   16G  35% /
tmpfs            7,8G   5,3M  7,8G   1% /dev/shm
tmpfs            5,0M   4,0K  5,0M   1% /run/lock
tmpfs            7,8G      0  7,8G   0% /sys/fs/cgroup
/dev/nvme0n1p4   206G    18G  178G   9% /home
/dev/nvme0n1p1   511M   3,6M  508M   1% /boot/efi
/dev/sda1        2,7T   117G  2,5T   5% /home/jose/magnet
tmpfs            1,6G    64K  1,6G   1% /run/user/1000
```

Algunos de los sistemas de archivos montados puede que no se correspondan con particiones en un disco físico sino con espacios de la memoria RAM que son utilizados como sistemas de archivos especiales.

El commando *du* (disk usage) informa sobre el espacio que ocupa un árbol de directorios. Este comando tiene equivalentes gráficos como Baobab o xdiskusage. Podemos pedir a *du* que nos muestre cuanto espacio ocupan los directorios bajo el directorio analysis:

```
$ du -h analyses/
36K	analyses/alicia/cache
204K	analyses/alicia/differential_snps/differential
252K	analyses/alicia/differential_snps/non_differentia
919M	analyses/
```

Si sólo queremos obtener el resultado para el directorio que le hemos dado y no para sus subdirectorios podemos utilizar el parámetro *-s*:

```
$ du -sh analyses/
919M	analyses/
```

Si queremos información sobre todos los archivos y no sólo los directorios podemos usar *-a*:

```
$ du -ha analyses/
32K	analyses/alicia/cache/min_called_rate_samples_cache.pickle
36K	analyses/alicia/cache
8,0K	analyses/alicia/look_for_matching_accessions.py
```

### Ejercicios

1. ¿Cuáles son los permisos de los directorios presentes en el directorio raíz y en nuestro directorio de usuario? ¿A quién pertenecen los ficheros y qué permisos tienen los distintos usuarios del ordenador?
2. Crea un directorio en tu home y muestra los permisos que tiene.
3. Cambia los permisos para que sólo tu usuario pueda acceder al nuevo directorio
4. Crea un fichero nuevo y dale permisos de ejecución para todos los usuarios
5. Último fichero modificado en el directorio /etc.
6. Lista los ficheros de /etc con su tamaño y ordénalos por tamaño.
7. Copia todos los ficheros y directorios del directorio /etc cuyo nombre comience por s. ¿Has podido copiarlos todos?
8. ¿Cuánto espacio libre queda en las distintas particiones del sistema?
9. ¿Cuánto espacio ocupan todos los ficheros y subdirectorios de tu $HOME?

## Compresion y descompresión de ficheros

Existen distintos formatos de compresión de ficheros como: gzip, bzip, zip o rar. Los formatos más utilizados en Unix son gzip y bzip.

Comprimir un fichero con gzip o bzip:

```
$ gzip informacion_snps.txt
$ ls
informacion_snps.txt.gz

$ bzip2 accs.txt
$ ls
accs.txt.bz2
```

bzip2 comprime más que gzip, pero es más lento. gzip también dispone de varios niveles de compresión, cuanto más comprime más lenta suele ser la compresión.

Podemos descomprimir cualquier fichero utilizando la línea de comandos:

```
$ gunzip informacion_snps.txt.gz
$ ls
informacion_snps.txt
$ bunzip2 accs.txt.bz2
$ ls
accs.txt
```

Muchos estamos acostumbrados al formato zip. Un fichero zip no se corresponde en realidad con un sólo fichero comprimido sino con varios. Un fichero zip hace dos cosas: unir varios ficheros en uno y comprimir el resultado. Los comandos que hemos visto (gzip y bzip2) son capaces de comprimir un sólo archivo, pero no pueden unir varios archivos en uno. *tar* es el comando capaz de unir varios archivos en uno.

```
$ ls
seq1.fasta  seq2.fasta
$ tar -cvf secuencias.tar seq*
seq1.fasta
seq2.fasta
$ ls
secuencias.tar  seq1.fasta  seq2.fasta
```

*tar* también es capaz de desempaquetar los archivos que habíamos unido.

```
$ ls
secuencias.tar
$ rm seq1.fasta seq2.fasta
$ tar -xvf secuencias.tar
seq1.fasta
seq2.fasta
$ ls
secuencias.tar  seq1.fasta  seq2.fasta
```

El problema es que utilizando el comando *tar* tal y como lo hemos hecho hemos conseguido unir y separar archivos, pero no hemos comprimido el fichero unido. Para hacerlo podríamos utilizar los comandos *gzip* o *bzip2*, pero este no es el modo habitula de hacerlo. Dado que casi siempre que unamos archivos en un archivo tar también querremos comprimir el resultado el comando tar tiene también la capacidad de comprimir y descomprimir utilizando los algoritmos gzip y bzip2. Unir y comprimir con gzip varios archivos:

```
$ tar -cvzf secuencias.tar.gz seq*
seq1.fasta
seq2.fasta
$ ls
secuencias.tar.gz  seq1.fasta  seq2.fasta
```

Descomprimir un archivo tar.gz:

```
$ tar -xvzf secuencias.tar.gz
seq1.fasta
seq2.fasta
$ ls
secuencias.tar.gz  seq1.fasta  seq2.fasta
```

También podemos descomprimir el contenido de un fichero de texto y enviar el resultado a la terminal con el comando *zcat*.

$ zcat fichero.txt.gz

Con bzip2.

```
$ tar -cvjf secuencias.tar.bz seq*
seq1.fasta
seq2.fasta
$ ls
secuencias.tar.bz  seq1.fasta  seq2.fasta

$ tar -xvjf secuencias.tar.bz
seq1.fasta
seq2.fasta
```

### Ejercicios

1. Crea un fichero de texto en el directorio ~/Documentos y comprimelo con gzip
2. Muestra el contenido del fichero anterior en pantalla sin descomprimirlo previamente
3. Crea un archivo tar de todo el contenido del directorio ~/Documentos
4. Comprime el fichero tar anterior
5. Vuelve a hacer los ejercicios 2 y 3, pero en un sólo paso
6. Descomprime el fichero tar.gz anterior en un nuevo directorio llamado Documentos2

## Enlaces duros y blandos

Podemos pensar en el nombre de un fichero como en una etiqueta que apunta a una posición concreta en el disco duro, en realidad es un puntero a un [inodo](https://en.wikipedia.org/wiki/Inode).

Podmeos pensar en un [enlace duro](https://en.wikipedia.org/wiki/Hard_link) como en un nombre adicional para un archivo. Si tenemos un archivo en el disco y creamos un enlace duro tendremos dos nombres para ese único archivo.

```
$ ls
archivo1.txt
$ ln archivo1.txt nombre2.txt
$ ls
archivo1.txt nombre2.txt
```

Las dos referencias, nombres, al archivo serán indistinguibles. Si borramos un nombre quedará el otro. Si modificamos un archivo se modifica independientemente del nombre por el cual estemos accediendo a él. No es muy común utilizar enlaces duro salvo en aplicaciones muy concretas, por ejemplo en versiones de copias de seguridad.

Un enlace blando, más comumente conocido como un enlace simbólico, es una referencia al nombre de un archivo, no al archivo en sí.

```
$ ls
archivo1.txt
$ ln -s archivo1.txt nombre3.txt
$ ls -l
-rw-rw-r-- 1 jose jose  0 sep 27 15:16 archivo1.txt
lrwxrwxrwx 1 jose jose 12 sep 27 15:16 nombre3.txt -> archivo1.txt
```

Si eliminamos el archivo original el enlace quedará roto.

```
$ rm archivo1.txt
$ cat nombre3.txt
cat: nombre3.txt: No existe el archivo o el directorio
```

El comportamiento de ambos tipos de enlaces cambia si sobreescribimos el fichero.

```
x
$ echo "hola" > hola.txt
$ cat hola.txt
hola
$ ln hola.txt hola2.txt
$ ln -s hola.txt hola3.txt
$ ls -l
-rw-rw-r-- 2 jose jose 5 sep 27 15:23 hola2.txt
lrwxrwxrwx 1 jose jose 8 sep 27 15:25 hola3.txt -> hola.txt
-rw-rw-r-- 2 jose jose 5 sep 27 15:23 hola.txt
$ echo "adios" > adios.txt
$ mv adios.txt hola.txt
$ cat hola.txt
adios
$ cat hola2.txt
hola
```

Los enlaces blandos funcionan incluso entre distintos sistemas de archivos o particiones, los duros no.

## Ejercicios

1. Crea un enlace simbólico a un fichero de texto dentro del direcotorio ~/Documentos
2. Crea un enlace duro al mismo fichero.
3. Edita el fichero de texto y observa como cambian ambos enlaces
4. Crea un nuevo fichero de texto con otro contenido. Sustituye el primer fichero con el segundo y observa el resultado en ambos enlaces
5. Crea dos enlaces, uno simbólico y otro duro, a un fichero. Elimina el fichero y observa el resultado en ambos enlaces

## Acceso remoto

Una de las grandes ventajas de utilizar la terminal es que podemos acceder a terminales en otros ordenadores muy fácilmente. El protocolo más utilizado para acceder a terminales de forma remota es [ssh](https://en.wikipedia.org/wiki/Secure_Shell) (Secure Shell). ssh tiene un gran número de posibilidades, pero el uso más habitual es utilizarlo para abrir terminales en ordenadores remotos que tienen un servicio ssh. ssh es seguro porque cifra las comunicaciones entre el cliente y el servidor. ssh se diseñó como una alternativa segura a telnet. No debemos usar el protocolo telnet porque las comunicaciones en telnet, incluidas las claves de acceso, no están cifradas y cualquiera puede tener acceso a ellas.

Para acceder a una computadora que implemente el protocolo ssh podemos usar el programa ssh, pero previamente tenemos que tener una cuenta en esa computadora. Imaginemos que alicia tiene una cuenta en un ordenador que tiene un servicio ssh. Para conectarse puede hacer:

```
$ ssh alicia@ordenador.upv.es
```

Si el nombre de la cuenta de usuario en el ordenador cliente y en el servidor es el mismo puede obviar el nombre de usuario.

```
$ ssh ordenador.upv.es
```

A continuación el servidor le pedirá la clave correspondiente a ese usuario.

Existen clientes ssh para windows con los que nos podemos conectar a servidores ssh. Uno muy común es [putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html).

Una tarea muy habitual cuando estamos trabajando en un ordenador remoto es enviar o traer ficheros desde el mismo. Esto también lo podemos hacer utilizando el protocolo ssh por lo que podremos hacerlo de un modo seguro en cualquier ordenador que no de acceso ssh. El programa más sencillo para hacerlo desde Unix es [*scp*](https://en.wikipedia.org/wiki/Secure_copy) (Secure CoPy). *scp* tiene una interfaz muy similar a *cp* pero acepta que los ficheros de origen y destino estén en distintos ordenadores:

```
$ scp alicia@remotehost.edu:/remote/directory/seq.txt /some/local/directory
$ scp /some/local/directory/seq.txt alicia@remotehost.edu:/remote/directory/
```

En windows también hay distintos clientes scp, uno de ellos es [winscp](https://winscp.net/eng/download.php).

Una alternativa a scp que tiene más capacidades, como enviar fragmentos de ficheros, es [rsync](https://en.wikipedia.org/wiki/Rsync). *rsync* está diseñado para mantener varios archivos sincronizados entre dos ordenadores, pero también ser puede utilizar para copiar archivos de un ordenador a otro como scp. *rsync* puede establecer la conexión utilizando distintos protocolos, pero uno de ellos es ssh por lo que funcionará también con cualquier servidor ssh.

Si lo que queremos es descargar un fichero desde un servidor en internet, por ejemplo desde una página web, al ordenador remoto en el que estamos trabajando en una sesión ssh podemos utilizar el comando *wget* o su alternativa *curl*.

```
$ wget https://http://ncbi.nlm.nih.gov/una_secuencia.fasta
```

### Ejercicios

1. Contectate a un servidor remoto usando ssh
2. Transfiere un fichero desde tu ordenador al servidor
3. Descarga el fichero https://www.gnu.org/licenses/gpl.txt directamente en el ordenador remoto
4. Copia el fichero gpl.txt a tu ordenador