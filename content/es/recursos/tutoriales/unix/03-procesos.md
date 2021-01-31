---
# Course title, summary, and position.
linktitle: Control de procesos
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Control de procesos
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/03-control-procesos"
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
    name: Control de procesos
    weight: 4
---


# Procesos

- [*ps*](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#ps)
- [*kill*](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#kill)
- [*free*](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#free)
- [*top*](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#top)
- [screen y byobu](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#screen-y-byobu)
- [Ejercicios](https://bioinf.comav.upv.es/courses/unix/control_procesos.html#ejercicios)

Un [proceso](https://en.wikipedia.org/wiki/Process_(computing)) es una instancia de un programa en ejecución. Programas y procesos son entidades distintas. En un sistema operativo multitarea, múltiples instancias de un programa pueden ejecutarse simultáneamente. Cada instancia es un proceso separado.

Prácticamente todo lo que se está ejecutando en el sistema en cualquier momento es un proceso, incluyendo la *shell*, el ambiente gráfico, que puede tener múltiples procesos, etc.

Linux, como ya hemos visto, es un sistema operativo multitarea y  multiusuario. Esto quiere decir que múltiples procesos pueden operar simultáneamente  sin interferir unos con otros. Por ejemplo, si cinco usuarios desde equipos diferentes, ejecutan el  mismo programa al mismo tiempo, habría cinco instancias del mismo  programa, es decir, cinco procesos distintos.

Cada proceso que se inicia es identificado con un número de identificación único conocido como *Process ID* (*PID*), que es siempre un número natural.

Haciendo análisis muchas veces ejecutaremos programas, crearemos procesos, que duren un tiempo considerable. Es interesante que durante el tiempo que dure el proceso podamos consultar su estado. Los entornos UNIX tienen una serie de herramientas para poder conocer el estado de los procesos y del sistema en general.

## *ps*

El comando *ps* (*process status*) nos informa sobre el estado de los procesos. Dependiendo de los parámetros que le demos nos mostrara un tipo de información u otra y unos procesos u otros.

```
$ ps
```

Si queremos obtener la lista completa de procesos podemos usar las opciones *-ef*:

```
$ ps -ef
```

En este caso la segunda columna nos indicará el *PID* o identificador único del proceso.

## *kill*

El comando *kill*, a pesar de su nombre, no sólo sirve para  matar o terminar procesos sino también para enviar señales a los  procesos. La señal por defecto (cuando no se indica ninguna es terminar o matar el proceso), y la sintaxis es kill PID, siendo PID el número de ID del  proceso. Pero hay otras señales que podemos enviar. Así, por ejemplo, es posible enviar una señal de *STOP* al proceso y se detendrá su ejecución, después cuando se quiera reanudar su ejecución podemos enviar la señal *CONTinuar* y el proceso continuara desde donde se quedo detenido. Con kill -l podemos acceder a una lista de todas las señales que podemos mandar a un proceso:

```
$ kill -l
```

El modo más convencional de matar un proceso es intentar primero que  muera ordenadamente con un -15 (Termination signal) y sino lo  conseguimos matarlo con un -9 (Kill signal):

```
$ kill -15 4719
$ kill -9 4719
```

## *free*

*free* nos muestra información sobre el uso y disponibilidad de la memoria. Es aconsejable usar la opción *-h* ya que así generará la información en una forma más fácil de leer para los seres *h*umanos.

```
$ free -h
```

## *top*

Una herramienta muy usada y muy útil para el monitoreo en tiempo real del estado de los procesos y de otras variantes del sistema es el  programa llamado top, se ejecuta desde la línea de comandos, es  interactivo y por defecto se actualiza cada 3 segundos.

Estando dentro de la aplicación, presionando ‘h’ se accede a una  ayuda de los posibles comandos que permiten configurar top, por ejemplo, al presionar ‘s’ pregunta por el tiempo en segundos de actualización,  etc.

Una alternativa más moderna al comando *top*, que normalmente no es instalada por defecto, es *htop*.

## screen y byobu

*screen* es permite tener varios shells a la vez en la misma terminal y permite cerrar la terminal sin que los shells sean destruidos. *screen* tiene dos usos principales:

- Tener varios shells abiertos bajo una sola sesión SSH
- Lanzar procesos que queremos que se mantengan entre distintas sesiones.

*byobu* es una modificación de *screen* que lo hace más fácil de utilizar. La distribución Ubuntu mantiene un manual de ayuda para [*byobu*](https://help.ubuntu.com/community/Byobu)

## Ejercicios

1. Averigua todos los procesos que hay en ejecución.
2. Cuantos procesos tiene tu usuario en ejecución?
3. Ejecuta el comando “less” y averigua el *pid* del proceso
4. Termina (mata) el proceso “less”
5. Abre proceso less dentro de byobu, sal de la terminal dejando el  proceso corriendo y vuelve a entrar en byobu. El proceso debería  continuar abierto
6. Repite el ejercicio anterior en un ordenador remoto.