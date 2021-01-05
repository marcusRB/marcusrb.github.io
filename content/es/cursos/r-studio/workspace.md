---
title: Área de trabajo
linktitle: Workspace
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

El workspace es el área de trabajo de la sesión R e incluye todos los objetos en uso. En RStudio, los objetos en el espacio de trabajo se pueden explorar en el panel Entorno:



Panel de entorno RStudio [IMG]

R no guarda objetos relacionados con una sesión de trabajo individualmente: los conjuntos de datos y las salidas se almacenan en un solo archivo, cuyo nombre predeterminado es .RData. Este archivo es la imagen del área de trabajo activa durante una sesión.

## Guardar y cargar el espacio de trabajo

Al final de una sesión R, puede guardar una imagen del espacio de trabajo, que se volverá a cargar automáticamente en el próximo inicio. Ej.:

```
save.image( "C: //.../myfile.RData")
```

Para cargar la imagen del espacio de trabajo, use el comando de carga:

```
load( "C: //.../myfile.RData")
```

El menú Archivo de R
La imagen del espacio de trabajo también se puede guardar o cargar desde el menú R, posiblemente con un nombre elegido por el usuario (por defecto no tiene nombre: .RData).

## Enumerar los objetos presentes.

Para obtener una lista de los objetos y clases contenidos en el espacio de trabajo, puede usar el comando de menú Varios / Lista de objetos, o escribir el comando

```
ls()
```

Enumere los objetos que contienen (por ejemplo: la palabra _tab_):

```
ls(pattern = "tab")
```

## Eliminar los objetos


Para eliminar los objetos:

```
rm(objeto)

# Podemos utilizar también
remove(objeto)
```

## Vaciar el área de trabajo.

Para eliminar todos los objetos y limpiar el espacio de trabajo (corresponde a borrar el espacio de trabajo o borrar el entorno en otros programas):

```
rm(list = ls())
```

Elimine los objetos que contienen (por ejemplo: la palabra _tab_):

```
rm(list = ls(pattern = "tab"))
```

objeto = nombre del objeto, sin comillas
El argumento de lista especifica la lista de objetos que se eliminarán.


## Área de trabajo de R y RCommander

RCommander comparte el espacio de trabajo R, y los marcos de datos que forman parte del espacio de trabajo (área de trabajo) se pueden mostrar en la esquina superior izquierda (conjunto de datos o conjunto de datos).
