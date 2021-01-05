---
title: Instalación de R
linktitle: Instalación R
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  r-studio:
    parent: Conceptos básicos
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

R es un programa de código abierto del que existen varias distribuciones, que se pueden descargar libremente. Veamos los procedimientos para instalarlo y actualizarlo.

### Download

Primero, por supuesto, debe descargar el paquete básico (70 Mb para la versión 3.3), elegir un "espejo" en http://cran.r-project.org/mirrors.html, o ir directamente a:

espejo para sistemas Windows;
espejos para sistemas Mac-Os;
réplicas para sistemas Linux (Debian, Redhat, Suse, Ubuntu).
Recientemente, Microsoft ha puesto a disposición una versión de R, de código abierto, gratuita y que tiene algunas características adicionales que facilitan la reproducibilidad de la búsqueda y el cálculo en paralelo (https://mran.microsoft.com/open).

### R portátil


En Sourgeforce.net está disponible una versión portátil de R, que se puede instalar, con todas sus características, en un soporte de memoria externa (disco duro externo, unidad flash USB, etc.). Esta versión de R se puede integrar en la suite PortableApps.

## Instalación

En Windows, el software se instala ejecutando el archivo ejecutable (exe) descargado.

Para usar RCommander y RExcel, es preferible personalizar la instalación:

Ejecute el archivo ejecutable en modo administrador (haga clic en el archivo con el botón derecho del mouse y elija esta opción);
Continúe con la instalación hasta la siguiente pantalla: ¿Desea configurar las opciones de arranque? Elige "Sí":
 |
Modo de visualización: elija SDI (varias ventanas)
Estilo de ayuda: HTML (por defecto)
Selección de procesos adicionales: almacena el número de versión en el registro:
 |
## Actualización

La forma más fácil de actualizar R y mantener bibliotecas es:

instale la nueva versión (se instalará en una nueva carpeta)
copie los paquetes instalados desde la carpeta de la biblioteca anterior a la carpeta correspondiente de la nueva instalación
iniciar R en modo administrador (en Windows Vista y Windows7)
ejecutar - dentro de la nueva R - el comando
paquetes de actualización (checkBuilt = TRUE, ask = FALSE)
desinstale la versión anterior y elimine el directorio anterior.
También puede actualizar R y paquetes con el paquete de instalación.

## R en la web

Finalmente, existe la posibilidad de ejecutar R en línea (con diferentes interfaces), a través de sitios web que proporcionan una instalación de servidor R, como: https://www.tutorialspoint.com/execute_r_online.php
