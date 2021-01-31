---
# Course title, summary, and position.
linktitle: Variables de entorno
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Variables de entorno
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/10-variables-entorno"
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
    name: Variables de entorno
    weight: 11
---


# Variables de entorno

- [¿Donde están los ejecutables? $PATH](https://bioinf.comav.upv.es/courses/unix/variables_de_entorno.html#donde-estn-los-ejecutables-path)
- [HOME](https://bioinf.comav.upv.es/courses/unix/variables_de_entorno.html#home)
- [Ejercicios](https://bioinf.comav.upv.es/courses/unix/variables_de_entorno.html#ejercicios)

Las variables de entorno son una lista de ajustes que guardan varios  estados de una sesión. Cuando se inicia una sesión ya sea en el entrono  gráfico o en una terminal, se leen las variables de entorno. Para poder acceder al contenido de una variable podemos utilizar el  commando `echo` y el nombre de la variable precedido de un $:

```
~$ echo $LANG
  es_ES.UTF-8
```

Este comando nos muestra el idioma en el que se mostraran los mensajes en la *shell*.

Si queremos ver las variables de entorno que estamos usando, tenemos el comando `env`. Nos mostrará todas las variables de entorno que hay cargadas en nuestra sesión.

Podemos configurar las variables de entorno modificando los archivos  de configuración de la shell. En nuestro caso la shell por defecto que  usamos es bash, por lo tanto el fichero de configuración que debemos  usar es: `$HOME/.bashrc`.

```
~$ nano $HOME/.bashrc
```

Una de las variables de entorno que se puede configurar es la variable PATH.

### ¿Donde están los ejecutables? $PATH

Cuando entramos en la *shell* y ejecutamos un programa la *shell* ha de saber dónde encontrar el ejecutable correspondiente a ese comando. Este ejecutable es un fichero con el mismo nombre que hemos escrito en la *shell* y que tiene el permiso de ejecución activado. Por ejemplo el ejecutable del comando *cp* es:

```
~$ ls -l /bin/cp
-rwxr-xr-x 1 root root 109648 2010-09-21 20:32 /bin/cp
```

En este caso el fichero /bin/cp es un ejecutable que pertenece al  usuario root, pero que todo el mundo puede leer y ejecutar y que se  encuentra en el directorio /bin. Dado que el comando *cp* es simplemente un fichero ejecutable en bin para utilizarlo deberíamos escribir su ruta completa:

```
~$ /bin/cp fichero1.txt fichero2.bak
```

Aunque podríamos ejecutar el comando de ese modo nunca lo hemos hecho. De alguna forma la *shell* ha sabido encontrar el comando *cp* en el directorio /bin a pesar de que no se lo hemos dicho.

Cuando intentamos ejecutar un comando lo que la *shell* hace  es buscar el fichero ejecutable correspondiente en una lista de  directorios que se encuentra almacenada en una variable de entorno  denominada `PATH`. Podemos imprimir esta lista utilizado el comando *echo*:

```
~$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
```

En el ejemplo mostrado al escribir un comando en la *shell*,  ésta lo buscará primero en el directorio /usr/local/sbin, después en  /usr/local/bin y así sucesivamente hasta que lo encuentre en alguno de  los directorios del $PATH. Si el comando no se encuentra la *shell* devolverá un error::

```
~$ hola
  No se ha encontrado la orden «hola», quizás quiso decir:
  La orden «cola» del paquete «git-cola» (universe)
  hola: orden no encontrada
```

Cuando intentemos ejecutar programas creados por nosotros mismos o  descargados desde algún lugar deberemos tener este detalle en cuenta. Por ejemplo, si descargamos un ejecutable llamado hola_mundo y después  intentamos ejecutarlo, la *shell* no lo encontrará:

```
~$ ls
 hola_mundo
~$ hola_mundo
 No se ha encontrado la orden «hola», quizás quiso decir:
 La orden «cola» del paquete «git-cola» (universe)
 hola_mundo: orden no encontrada
```

La *shell* no lo encuentra porque el directorio de trabajo (“.”) no está incluido en el PATH. Podríamos ejecutar el comando si le indicamos a la *shell* la ruta en la que se encuentra el comando:

```
~$ /home/usuario/hola_mundo
 Hola mundo!
```

También podríamos utilizar una ruta relativa:

```
~$ ./hola_mundo
 Hola mundo!
```

O podemos añadir el directorio donde se encuentra el ejecutable en el PATH. Si por ejemplo instalamos un programa en nuestra home en el directorio  programa, podemos añadir este directorio al path y ejecutar el programa  simplemente ejecutandolo con su nombre.

```
programa: /home/user/dibujacirculos/bin/draw_circle
añadimos al path:/home/user/dibujacirculos/bin
nuevo PATH: PATH=/home/user/dibujacirculos/bin:$PATH
```

Para que la shell *cargue* la variable de entorno, podemos utilizar el comando `source` que actualizará las variables de entorno con los valores que hayamos puesto en el fichero que carguemos, en este caso `.bashrc`.

```
~$ source $HOME/.bashrc
```

Se puede dar el caso que tengamos el mismo programa instalado por dos metodos distintos.  Ambos programs tienen un ejecutable que se llama  igual. Como podemos saber cual de los ejecutables se está ejecutando? En linux tenemos el comando `which`  que nos revolvera la ruta completa. La shell va recorriendo los  directorios del path en orden hasta que en alguno encuentra el  ejecutable. `which` devuelve el path completo del ejecutable que la *shell* usa.

```
~$ which cp
 /bin/cp
```

### HOME

Otra variable de entorno que se usa mucho es la variable HOME. Hace  referencia a la carpeta personal de usuario. Para el usuario `user` la carpeta es: /home/user

```
~$ echo $HOME
/home/user
```

Podemos cambiar el valor de una variable de entorno. Los cambios que  hagamos solo se veran en la terminal en la que estemos. Si queremos que  la variable la “hereden” las aplicaciones que lanzamos desde esa shell  tenemos que hacer la variable disponible, para ello podemo user el  comando `export` :

```
export PATH=/binarios:$PATH
```

Por ello en el fichero `.bashrc` las variables las tenemos que definir con export delante.

### Ejercicios

1. Crea un directorio bin en tu directorio de trabajo. Usa Una  variable de entorno en el comando. Despues añade el directorio al path,  para todas las sessiones.
2. Crea una variable de entorno nueva que muestre tu nombre. Por  ejemplo NOMBRE. Haz que se pueda utilizar solo en la terminal en la que  lo has creado.