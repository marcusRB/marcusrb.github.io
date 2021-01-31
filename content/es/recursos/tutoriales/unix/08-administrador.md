---
# Course title, summary, and position.
linktitle: Administrador
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Administrador
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/08-administrador"
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
    name: Administrador
    weight: 9
---


# Administrador

- [sudo](https://bioinf.comav.upv.es/courses/unix/administrador.html#sudo)
- [su](https://bioinf.comav.upv.es/courses/unix/administrador.html#su)

Los sistemas Unix entre los que se encuentra Linux, son sistemas  multiusuario, en los que muchos usuarios pueden usar el sistema  concurrentemente. No todos los usuarios tienen los mismos permisos en el sistema, existe un usuario especial llamado root que es el  administrador o superusuario.

El usuario root a diferencia del resto de los usuarios, no tiene su carpeta personal en `/home` sino que la tiene en una carpeta separada: `/root`.

Por defecto un usuario no puede modificar nada excepto su carpeta  personal. Por ejemplo un usuario no puede instalar ninguna aplicacion  fuera de sus carpeta personal. Para poder hacerlo el usuario tiene dos  opciones:

1. Adquirir temporalmente privilegios de root
2. Convertirse en root.

### sudo

En ubuntu por defecto el usuario root está deshabilitado y la unica  forma de conseguir permisos de superusuario es mediente el comando `sudo`. Escribiendo sudo en la consola delante de cualquier comando, estaremos ejecutando el comando con permisos de superusuario:

```
user@virtual:~$ cat /etc/shadow
cat: /etc/shadow: Permiso denegado
user@virtual:~$ sudo cat /etc/shadow
root::17074:0:99999:7:::
daemon:*:17001:0:99999:7:::
bin:*:17001:0:99999:7:::
sys:*:17001:0:99999:7:::
sync:*:17001:0:99999:7:::
```

No todos los usuarios tienen permiso para usar sudo, solo aquellos  usuarios que son administradores. Para convertirse en administrador y  poder usar sudo, un usuario solo tiene que ser añadido al grupo sudo.

Además con sudo se puede hacer login como root. Con la opcion `sudo -s`:

```
user@virtual:~$ sudo -s
[sudo] password for user:
root@virtual:~#
```

### su

Si no estamos en el grupo de `sudo` o si `sudo` no está disponible en el sistema, podemos usar el comando `su` para poder cambiar de usuario en la misma sesión.

```
user@virtual:~$ su
root@virtual:/home/user# id
uid=0(root) gid=0(root) grupos=0(root)
```

En ubuntu no podremos convertirnos en root ya que el usuario está  deshabilitado. Si queremos habilitarlo, lo unico que tenemos que hacer  es darle un password nuevo:

```
~$ sudo passwd
[sudo] password for user:
Introduzca la nueva contraseña de UNIX:
Vuelva a escribir la nueva contraseña de UNIX:
passwd: contraseña actualizada correctamente
```

`su` ademas de cambiar al  usuario root, tambien permite cambiar a cualquier otro usuario, siempre  que sepamos el password. Un truco muy util para “convertirmos” en otro  usuario sin saber su password es combinar `sudo` y `su`:

```
user@virtual:~$ sudo su  user2
user2@virtual:/home/user$ id
uid=1001(user2) gid=1001(user2) grupos=1001(user2)
user2@virtual:/home/user$
```