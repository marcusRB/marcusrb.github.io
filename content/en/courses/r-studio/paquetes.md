---
title: Paquetes
linktitle: Paquetes
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  r-studio:
    parent: Conceptos básicos
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

R es un programa modular. Hay muchas funciones disponibles en la distribución estándar (consulte Instalación de R), pero se pueden agregar muchas más gracias a paquetes y complementos adicionales.

## Instalación

La forma más fácil de instalar paquetes, con una conexión a Internet activa, es a través del menú R: Paquetes → Instalar paquetes.

A veces, el funcionamiento de un paquete depende de la presencia de otros paquetes (dependencias). Para asegurarse de instalar tanto el paquete como las dependencias, es preferible usar el comando:

```
install.packages("Rcmdr", dependencies = TRUE)
```

## Uso

Los paquetes adicionales no se activan automáticamente cuando se abre R, pero deben "llamarse" con la biblioteca de comandos (). Por ejemplo, para usar _RCommander_:

```
library(Rcmdr)
```

Al llamar a un paquete, si faltan las dependencias (cualquier paquete del que dependa), se abrirá un cuadro de diálogo que le permitirá descargarlo e instalarlo automáticamente.

También se pueden llamar paquetes desde el menú de la consola: Paquetes → Cargar paquete.

## Actualización

Periódicamente, es necesario verificar la existencia de versiones más actualizadas de los paquetes R. Es preferible ejecutar este procedimiento desde la ventana R, y haber cerrado RCommander, que a su vez debe actualizarse.

Para actualizar paquetes en Windows, debe ejecutar R desde los administradores.

El comando para actualizar los paquetes está en el menú Paquetes (Actualizar paquetes ...), y el procedimiento es completamente automático: solo siga las instrucciones en pantalla.

También es posible actualizar los paquetes escribiendo el comando

```
update.packages()
```


## Comandos principales

Para saber qué paquetes están instalados en su sistema:

```
library()
```

Para cargar la ayuda del paquete:

```
help(package)
```


Para eliminar el paquete del sistema

```
remove.packages( "\_nombre_paquete\_")
```

Para averiguar dónde está instalado un archivo de paquete:

```
system.file(package = "nombre_paquete")
```

Para aprender más

[Todos los paquetes disponibles](http://cran.stat.unipd.it/web/packages/)
