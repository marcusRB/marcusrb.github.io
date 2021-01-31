---
# Course title, summary, and position.
linktitle: Redes
summary: Un proceso es una instancia de un programa en ejecución. Programas y procesos son entidades distintas.
weight: 1

# Page metadata.
title: Redes
date: "2020-06-24T00:00:00Z"
lastmod: "2020-06-24T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "unix/12-redes"
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
    name: Redes
    weight: 12
---


# Redes

- [IP](https://bioinf.comav.upv.es/courses/unix/redes.html#ip)
- [Puerto](https://bioinf.comav.upv.es/courses/unix/redes.html#puerto)
- [Direccion estática o dinámicas](https://bioinf.comav.upv.es/courses/unix/redes.html#direccion-esttica-o-dinmicas)
- [DNS](https://bioinf.comav.upv.es/courses/unix/redes.html#dns)
- [Puerta de enlace](https://bioinf.comav.upv.es/courses/unix/redes.html#puerta-de-enlace)
- Dispositivos de red
  - [Ping](https://bioinf.comav.upv.es/courses/unix/redes.html#ping)
  - [ifconfig](https://bioinf.comav.upv.es/courses/unix/redes.html#ifconfig)
  - [route](https://bioinf.comav.upv.es/courses/unix/redes.html#route)
  - [resolv.conf](https://bioinf.comav.upv.es/courses/unix/redes.html#resolvconf)
- [Servicios](https://bioinf.comav.upv.es/courses/unix/redes.html#servicios)

Vamos a repasar algunos commandos genericos de Linux para poder conocer la configuracion actual del sistema.

## IP

Una dirección IP es un número que identifica un dispositivo  (computadora, tableta, portátil, smartphone) que utilice el protocolo IP (Internet Protocol).

## Puerto

En el ámbito de Internet, un puerto es el valor que se usa, en el  modelo de la capa de transporte, para distinguir entre las múltiples  aplicaciones que se pueden conectar al mismo host, o puesto de trabajo. Aunque muchos de los puertos se asignan de manera arbitraria, ciertos  puertos se asignan, por convenio, a ciertas aplicaciones particulares o  servicios de carácter universal. Por ejemplo el puerto 80 para el  protocolo http(web).

## Direccion estática o dinámicas

Las ips se pueden configurar para que sea la que nosotros le digamos( direccion estática) o para que nos la de un servidior externo  (Direccion dinámica). Lo más comun es que la configuracion sea dinamica y que no tengamos que preocupernos sobre las diferentes  configuraciones.(DHCP)

## DNS

Cuando queremos acceder a una página web, en el ordenador no solemos  escribir la IP del ordenador donde está alojada la página. Solemos  escribir el nombre del dominio. El servicio encargado de traducir los  dominios en ips es el DNS.(Domain Name Server)

Cuando tecleamos en el navegador google.es, lo primero que hace el  navegador es preguntarle al servidor dns cual es la IP a la que está  asociado ese dominio, cuando se la devuelve, el navegador llega al  servidor usando la IP, no el dominio.

Para nosotros sería muy dificil recordar las ips de las diferentes  páginas webs, más aun, cuando estas están continuamente cambiando. Para  guardar la relación dominio ip, es para lo que existen los DNS.

## Puerta de enlace

La pasarela (en inglés gateway) o puerta de enlace, es el dispositivo que actúa de interfaz de conexión entre aparatos o dispositivos, y  también posibilita compartir recursos entre dos o más computadoras.

## Dispositivos de red

Son aquellos elementos fisicos que permiten al ordenador communicarse con otro ordenador. Existen dispositivos que permiten conectarse de  forma inalambrica y mediante cable.

En linux a cada uno de los dispositivos se les da un identificador, y es este identificador por el cual podremos configurarlos.

Cada dispositivo de red tiene una MAC. Es un identificador unico  entre todos los dispositivos de red que existen en el mundo. En las  redes de computadoras, la dirección MAC (siglas en inglés de media  access control; en español “control de acceso al medio”) es un  identificador de 48 bits (6 bloques hexadecimales) que corresponde de  forma única a una tarjeta o dispositivo de red. Se conoce también como  dirección física.

### Ping

Ping es una utilidad diagnostica que nos permite conocer el estado de la comunicacion entre un ordenador y otro.

```
~$ ping google.es
PING google.es (216.58.201.131) 56(84) bytes of data.
64 bytes from mad06s25-in-f3.1e100.net (216.58.201.131): icmp_seq=1 ttl=63 time=7.80 ms
64 bytes from mad06s25-in-f3.1e100.net (216.58.201.131): icmp_seq=2 ttl=63 time=7.61 ms
64 bytes from mad06s25-in-f3.1e100.net (216.58.201.131): icmp_seq=3 ttl=63 time=7.55 ms
```

Es muy util porque en caso de problemas de conectividad nos ayudara a diagnosticar la fuente del problema.

### ifconfig

Es un programa disponible en varias versiones del sistema operativo  UNIX, que permite configurar o desplegar numerosos parámetros de las  interfaces de red, como la dirección IP o la máscara de red. Si se llama sin argumentos suele mostrar la configuración vigente de las interfaces de red activas, con detalles como la dirección MAC o el tráfico que ha  circulado por las mismas hasta el momento. Las interfaces de red en  Linux se suelen denominar eth (eth0, eth1, etc.).

```
~$ ifconfig
enp0s3    Link encap:Ethernet  direcciónHW 08:00:27:33:99:e7  
          Direc. inet:10.0.2.15  Difus.:10.0.2.255  Másc:255.255.255.0
          Dirección inet6: fe80::9c0a:cb8b:c9d8:f705/64 Alcance:Enlace
          ACTIVO DIFUSIÓN FUNCIONANDO MULTICAST  MTU:1500  Métrica:1
          Paquetes RX:593738 errores:0 perdidos:0 overruns:0 frame:0
          Paquetes TX:107227 errores:0 perdidos:0 overruns:0 carrier:0
          colisiones:0 long.colaTX:1000
         Bytes RX:795191090 (795.1 MB)  TX bytes:9027221 (9.0 MB)

lo        Link encap:Bucle local  
          Direc. inet:127.0.0.1  Másc:255.0.0.0
          Dirección inet6: ::1/128 Alcance:Anfitrión
          ACTIVO BUCLE FUNCIONANDO  MTU:65536  Métrica:1
          Paquetes RX:3511 errores:0 perdidos:0 overruns:0 frame:0
          Paquetes TX:3511 errores:0 perdidos:0 overruns:0 carrier:0
          colisiones:0 long.colaTX:1
          Bytes RX:592400 (592.4 KB)  TX bytes:592400 (592.4 KB)
```

### route

Con el comando route, podremos saber cual es el gateway o puerta de acceso de las interfaces del ordenador.

```
~$ route -n
Tabla de rutas IP del núcleo
Destino         Pasarela        Genmask         Indic Métric Ref    Uso Interfaz
0.0.0.0         10.0.2.2        0.0.0.0         UG    100    0        0 enp0s3
10.0.2.0        0.0.0.0         255.255.255.0   U     100    0        0 enp0s3
169.254.0.0     0.0.0.0         255.255.0.0     U     1000   0        0 enp0s3
```

### resolv.conf

Si queremos saber cuales son las DNS que estamos utilizando, lo podemos mirar en el fichero resolf.conf

```
~$ cat /etc/resolv.conf
# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)
#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN
nameserver 127.0.1.1
search upv.es
```

Si queremos resolver un dominio a ip, podemos usar el comando `host`.

```
~$ host bioinf.comav.upv.es
bioinf.comav.upv.es is an alias for proxybioinf.comav.upv.es.
proxybioinf.comav.upv.es has address 158.42.125.13
proxybioinf.comav.upv.es mail is handled by 20 mxv.cc.upv.es.
proxybioinf.comav.upv.es mail is handled by 30 mx2.cc.upv.es.
proxybioinf.comav.upv.es mail is handled by 10 mx4.cc.upv.es.
proxybioinf.comav.upv.es mail is handled by 50 vega.cc.upv.es.
proxybioinf.comav.upv.es mail is handled by 10 albali.cc.upv.es.
```

# Servicios

Los servicios son una serie de procesos que se ejecutan al arrancar el ordenador y que se quedan ejecutando en *background*.

Tenemos servicios que se encargan desde la configuracion de red como  servicios para mostrarnos las paginas web. En ubuntu y debian podemos  ver todos los servicios que estan ejecutandose con el siguiente comando:

```
~$ systemctl list-units
```

Podemos tambien ver el estado de un servicio concreto, iniciarlo,  pararlo o que vuelva a leer la configuracion con el commando systemctl.

```
~$ systemctl status cron
● cron.service - Regular background program processing daemon
   Loaded: loaded (/lib/systemd/system/cron.service; enabled; vendor preset: ena
   Active: active (running) since mar 2016-09-27 15:25:29 CEST; 23h ago
     Docs: man:cron(8)
 Main PID: 609 (cron)
   CGroup: /system.slice/cron.service
           └─609 /usr/sbin/cron -f

sep 28 11:17:04 virtual CRON[2136]: pam_unix(cron:session): session opened for u
sep 28 11:17:04 virtual CRON[2143]: (root) CMD (   cd / && run-parts --report /e
sep 28 12:17:01 virtual CRON[2535]: pam_unix(cron:session): session opened for u
sep 28 12:17:01 virtual CRON[2536]: (root) CMD (   cd / && run-parts --report /e
sep 28 13:17:01 virtual CRON[2814]: pam_unix(cron:session): session opened for u
sep 28 13:17:01 virtual CRON[2815]: (root) CMD (   cd / && run-parts --report /e
sep 28 13:17:01 virtual CRON[2814]: pam_unix(cron:session): session closed for u
sep 28 14:17:01 virtual CRON[3333]: pam_unix(cron:session): session opened for u
sep 28 14:17:01 virtual CRON[3334]: (root) CMD (   cd / && run-parts --report /e
sep 28 14:17:01 virtual CRON[3333]: pam_unix(cron:session): session closed for u
```