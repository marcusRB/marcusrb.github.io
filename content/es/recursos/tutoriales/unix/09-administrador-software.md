---
# Course title, summary, and position.
linktitle: Administrador de software
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Administrador de software
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/09-administrador-software"
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
    name: Administrador de software
    weight: 10
---


# Administracion de software 1

- [Repositorios](https://bioinf.comav.upv.es/courses/unix/administracion_software1.html#repositorios)
- Herramientas de manejo de paquetes
  - APT
    - [Ejercicios:](https://bioinf.comav.upv.es/courses/unix/administracion_software1.html#ejercicios)
  - dpkg
    - [Ejercicios:](https://bioinf.comav.upv.es/courses/unix/administracion_software1.html#ejercicios-1)

En los sistemas Linux las [distribuciones](http://es.wikipedia.org/wiki/Distribución_Linux) se encargan de preparar una gran cantidad de software para ser instalado. Por ejemplo, cuando queremos instalar un programa de edición fotográfica como el *gimp* no es necesario ni recomendable ir a la página web de los creadores del software para descargar el software. La distribución que estemos utilizando ya se ha encargado de buscar el  software y empaquetarlo para que el software pueda ser instalado de un  modo estandarizado. Por lo tanto si queremos instalar el *gimp* o cualquier otro  programa lo que debemos hacer es utilizar las herramientas que la  distribución ha preparado para administrar el software que tenemos  instalado en nuestro ordenador. Por ejemplo, en Ubuntu, abriríamos la aplicación llamada *Software de Ubuntu* y en ella buscaríamos el *gimp*. Con un solo *click* el programa quedaría instalado e integrado en nuestro sistema.

Además todo el software instalado por este método se actualiza cuando los desarrolladores del software corrigen fallos o problemas de  seguridad sin que nosotros debamos preocuparnos por ello. La propia distribución se encarga de recopilar esas mejoras y de  aplicarlas a todo el software que tengamos instalado.

El modo de operación es bastante distinto al usual en *Windows*. En *Windows* seríamos nosotros los que compraríamos el software y lo instalaríamos a partir de un CD o de un archivo descargado desde la  web. Esta es, dicho sea de paso, una de las fuentes de virus y troyanos  más habitual. Esto está cambiando y ya empezamos a tener un canal de  distribucion controlado por la propia microsoft.

Mientras que las distribuciones Linux facilitan la instalación de un software certificado y libre de virus en *Windows* debemos ser nosotros quienes nos encarguemos de verificar que el  software está libre de virus. Seríamos nosotros también los encargados de estar al tanto de instalar  las actualizaciones o los fallos de seguridad a no ser que cada software implemente esta funcionalidad.

Las distribuciones distribuyen el software en forma de paquetes. Cada distribucion tiene su propio formato de paquetes. En debian y ubuntu se utiliza el formato .deb.  Las distribuciones organizan el software de  forma que se optimiza lo mejor que se pueda los recursos de un  ordenador. Por ejemplo si dos aplicaciones utilizan una libreria, en vez de poner la libreria por duplicado en cada una de las aplicaciones se  crea un nuevo paquete solo con la libreria y se crea una dependencia  desde las aplicaciones que la utilizan.  De las dependencias se encargan los sistemas de paquetes que veremos más adelante.

Por desgracia, la cantidad de software incluido en las distribuciones no es infinito y, aunque el catálogo es amplio y más que suficiente  para la gran mayoría de las aplicaciones que un usuario doméstico o de  la administración pueda necesitar, hay programas, especialmente los  hechos para campos específicos que no están incluidos en las  distribuciones. Para biología Debian y Ubuntu incluyen programas como el EMBOSS, el  Blast o Biopython, pero hay otros muchos que no se incluyen y que  tendremos que gestionar nosotros mismos.

## Repositorios

Los repositorios son los bancos de datos que alojan los catalogos de  aplicaciones de las distribuciones. Todas las distribuciones tienen sus  propios repositorios, se encargan de mantenerlos actualizados, de hacer  tests de seguridad y de buscar errores en las aplcaciones.

Ademas de los repositorios de de las distribuciones, tambien tenemos  repositorios de otras fuentes, los más conocidos son los PPA(Personal  Package Archives). Son repositorios que los usuarios ponen a disposicion de otros usuarios para que puedan instalarse aplicaciones que las  distribuciones no tienen, como por ejemplo el Java de oracle.

En ubuntu y debian el fichero donde encontramos la configuracion de los repositorios es `/etc/apt/sources.list`.  Cada una de las lineas del fichero nos da acceso a los paquetes de un  repositorio. En cada repositorio tenemos un listado con las aplicaciones que dispone, la version de cada paquete y una direcciones para poder  descargar e instalarla.

En el directorio `/etc/apt/sources.list.d` podemos tener tambien ficheros con más lineas de repositorios.

## Herramientas de manejo de paquetes

Existen aplicaciones graficas para poder actualizar o instalar nuevos paquetes. En ubuntu tenemos el *Software de Ubuntu* que nos permite instalar aplicaciones de una forma fácil y comoda.

Tenemos que tener en cuenta que si usamos *Software de Ubuntu* solo podremos acceder a unos cuantos paquetes disponibles en la distribucion. El porque es algo que podemos preguntar a Ubuntu.

Por debajo esta aplicacion utiliza Apt(del inglés Advanced Package  Tool) que es un set de herramientas del nucleo de debian y que Ubuntu a  importado. APT es uno de los sistemas más avanzados en cuento a la  gestion de software.

### APT

Apt es un set de herramientas que nos ayudan a que la instalacion,  borrado o actualizacion de programas sea experiencia no traumatica. Apt  esta compuesto de muchos programas, en el curso nos vamos a centrar en  aquellos que consideramos más utiles: Para borrar, instalar, actualizar:

- apt-get    
  - update
  - upgrade
  - dist-upgrade
  - install
  - remove
  - clean
  - autoremove

Para hacer busquedas de paquetes:

- apt-cache    
  - search
  - show

Para hacer busquedas en los ficheros de los paquetes:

- apt-file    
  - update
  - search

Añadir repositorios PPA

- add-apt-repository

#### Ejercicios:

1. Instalar un editor de texto grafico.
2. Borrarlo junto con su configuracion.
3. Se han quedado paquetes que no se usan huerfanos? Si es así desinstalalos.
4. Quiero alinear una secuencia contra un genoma usando el blast,  para ello tengo que crear una base de datos a partir del genoma que el  blast pueda usar. El comando para hacerlo se llama makeblastdb. Como lo  puedo instalar?
5. Que versión del editor de texto has instalado?
6. Que version de `inkscape` tienes disponible  para instalar?
7. Instala [atom](https://atom.io/) desde un [repositorio](https://launchpad.net/~webupd8team/+archive/ubuntu/atom)

### dpkg

Es otra herramienta para interactuar con paquetes .deb. Con las  diferentes opciones de dpkg se pueden instalar y borrar programas pero  al no tener en cuenta las dependencias , lo hace más tedioso de usar. Aunqie tiene varias opciones que las hacen muy util:

- `dpkg -l` : Lista todas las aplicaciones del sistema, las que se han instalado como las que se han borrado
- `dpkg -L`  paquete : Lista la ruta de todos los ficheros que se han intalado al instalar el paquete.

#### Ejercicios:

1. Cuantos paquetes tienes instalados en tu sistema?[Pista](https://linuxprograms.wordpress.com/2010/05/11/status-dpkg-list/)
2. Cuantos ficheros se instalan cuando instalas el paquete que instala el makeblastdb. Cuantos de ellos son ejecutables?
3. Utilizando apt-get descargate el paquete inkscape, pero no lo  instales. Despues intenta instalarlo con dpkg(mira en el manual cual es  la opcion para instalar paquetes). Que ocurre?