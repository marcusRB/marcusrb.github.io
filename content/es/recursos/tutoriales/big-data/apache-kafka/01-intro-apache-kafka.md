---
# Course title, summary, and position.
linktitle: Introducción a Apache Kafka
summary: Recursos y materiales de Apache Kafka
weight: 1

# Page metadata.
title: Introducción a Apache Kafka
date: "2021-07-10T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "apache-kafka/01-intro-apache-kafka"
description: Recursos y materiales de Apache Kafka
# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  apache-kafka:
    name: Introducción Apache Kafka
    weight: 3
---

Apache Kafka es una plataforma de transmisión de eventos distribuida de código abierto utilizada por miles de empresas para canalizaciones de datos de alto rendimiento, análisis de transmisión, integración de datos y aplicaciones de misión crítica.

## ¿Qué es la transmisión de eventos?

La transmisión de eventos es el equivalente digital del sistema nervioso central del cuerpo humano. Es la base tecnológica para el mundo 'siempre activo' donde las empresas están cada vez más definidas y automatizadas por software, y donde el usuario del software es más software.

Técnicamente hablando, la transmisión de eventos es la práctica de capturar datos en tiempo real de fuentes de eventos como bases de datos, sensores, dispositivos móviles, servicios en la nube y aplicaciones de software en forma de secuencias de eventos; almacenar estos flujos de eventos de forma duradera para su posterior recuperación; manipular, procesar y reaccionar a los flujos de eventos en tiempo real y retrospectivamente; y enrutar los flujos de eventos a diferentes tecnologías de destino según sea necesario. La transmisión de eventos asegura así un flujo continuo y una interpretación de los datos para que la información correcta esté en el lugar correcto, en el momento correcto.

## ¿Para qué puedo usar la transmisión de eventos?

La transmisión de eventos se aplica a una amplia variedad de casos de uso en una gran cantidad de industrias y organizaciones. Entre sus muchos ejemplos se incluyen:

* Procesar pagos y transacciones financieras en tiempo real, como en bolsas de valores, bancos y seguros.
* Para rastrear y monitorear automóviles, camiones, flotas y envíos en tiempo real, como en la logística y la industria automotriz.
* Para capturar y analizar continuamente datos de sensores de dispositivos de IoT u otros equipos, como en fábricas y parques eólicos.
* Recopilar y reaccionar de inmediato a las interacciones y los pedidos de los clientes, como en el comercio minorista, la industria hotelera y de viajes, y las aplicaciones móviles.
* Monitorear a los pacientes en la atención hospitalaria y predecir cambios en la condición para garantizar un tratamiento oportuno en emergencias.
* Conectar, almacenar y poner a disposición datos producidos por diferentes divisiones de una empresa.
* Servir de base para plataformas de datos, arquitecturas basadas en eventos y microservicios.

## Apache Kafka® es una plataforma de transmisión de eventos. ¿Qué significa eso?

Kafka combina tres capacidades clave para que pueda implementar sus casos de uso para la transmisión de eventos de un extremo a otro con una única solución probada en batalla:

* Para publicar (escribir) y suscribirse a (leer) flujos de eventos, incluida la importación / exportación continua de sus datos desde otros sistemas.
* Para almacenar transmisiones de eventos de manera duradera y confiable durante el tiempo que desee.
* Procesar flujos de eventos a medida que ocurren o retrospectivamente.

Y toda esta funcionalidad se proporciona de manera distribuida, altamente escalable, elástica, tolerante a fallas y segura. Kafka se puede implementar en hardware bare-metal, máquinas virtuales y contenedores, tanto en las instalaciones como en la nube. Puede elegir entre la autogestión de sus entornos Kafka y el uso de servicios totalmente gestionados ofrecidos por una variedad de proveedores.

## ¿Cómo funciona Kafka en pocas palabras?

Kafka es un sistema distribuido que consta de servidores y clientes que se comunican a través de un protocolo de red TCP de alto rendimiento. Se puede implementar en hardware bare-metal, máquinas virtuales y contenedores en entornos locales y en la nube.

**Servidores**: Kafka se ejecuta como un clúster de uno o más servidores que pueden abarcar varios centros de datos o regiones de la nube. Algunos de estos servidores forman la capa de almacenamiento, denominados intermediarios. Otros servidores ejecutan Kafka Connect para importar y exportar datos continuamente como flujos de eventos para integrar Kafka con sus sistemas existentes, como bases de datos relacionales y otros clústeres de Kafka. Para permitirle implementar casos de uso de misión crítica, un clúster de Kafka es altamente escalable y tolerante a fallas: si alguno de sus servidores falla, los otros servidores se harán cargo de su trabajo para garantizar operaciones continuas sin pérdida de datos.

**Clientes**: le permiten escribir aplicaciones distribuidas y microservicios que leen, escriben y procesan flujos de eventos en paralelo, a escala y de manera tolerante a fallas, incluso en el caso de problemas de red o fallas de la máquina. Kafka se envía con algunos de estos clientes incluidos, que se complementan con docenas de clientes proporcionados por la comunidad de Kafka: los clientes están disponibles para Java y Scala, incluida la biblioteca Kafka Streams de nivel superior, para Go, Python, C / C ++ y muchas otras programaciones. idiomas y API REST.

## Conceptos y terminología principales

Un evento registra el hecho de que "algo sucedió" en el mundo o en su negocio. También se denomina registro o mensaje en la documentación. Cuando lee o escribe datos en Kafka, lo hace en forma de eventos. Conceptualmente, un evento tiene una clave, un valor, una marca de tiempo y encabezados de metadatos opcionales. Aquí hay un evento de ejemplo:

```
    Clave de evento: "Alice"
    Valor del evento: "Hizo un pago de $ 200 a Bob"
    Marca de tiempo del evento: "25 de junio de 2020 a las 2:06 p.m."
```

Los **productores** son aquellas aplicaciones cliente que publican (escriben) eventos en Kafka, y los **consumidores** son aquellos que se suscriben (leen y procesan) estos eventos. En Kafka, los productores y los consumidores están completamente desacoplados y son agnósticos entre sí, lo que es un elemento de diseño clave para lograr la alta escalabilidad por la que Kafka es conocido. Por ejemplo, los productores nunca necesitan esperar a los consumidores. Kafka ofrece varias garantías, como la capacidad de procesar eventos exactamente una vez.

Los eventos se organizan y almacenan de forma duradera en **topics** o temas. Muy simplificado, un tema es similar a una carpeta en un sistema de archivos, y los eventos son los archivos de esa carpeta. Un ejemplo de nombre de tema podría ser "pagos". Los temas en Kafka siempre son de múltiples productores y múltiples suscriptores: un tema puede tener cero, uno o muchos productores que escriban eventos en él, así como cero, uno o muchos consumidores que se suscriban a estos eventos. Los eventos de un tema se pueden leer con la frecuencia necesaria; a diferencia de los sistemas de mensajería tradicionales, los eventos no se eliminan después del consumo. En su lugar, defina durante cuánto tiempo Kafka debe retener sus eventos a través de una configuración por tema, después de lo cual se descartarán los eventos antiguos. El rendimiento de Kafka es efectivamente constante con respecto al tamaño de los datos, por lo que almacenar datos durante mucho tiempo está perfectamente bien.

Los temas están **particionados**, lo que significa que un tema se distribuye en varios *repositorios* ubicados en diferentes corredores de Kafka. Esta ubicación distribuida de sus datos es muy importante para la escalabilidad porque permite que las aplicaciones cliente lean y escriban los datos desde / hacia muchos corredores al mismo tiempo. Cuando se publica un nuevo evento en un tema, en realidad se agrega a una de las particiones del tema. Los eventos con la misma clave de evento (por ejemplo, un ID de cliente o vehículo) se escriben en la misma partición, y Kafka garantiza que cualquier consumidor de una partición de tema determinada siempre leerá los eventos de esa partición exactamente en el mismo orden en que fueron escritos.

Para que los datos sean tolerantes a fallos y tengan alta disponibilidad, todos los temas se pueden replicar, incluso en regiones geográficas o centros de datos, de modo que siempre haya varios corredores que tengan una copia de los datos en caso de que las cosas salgan mal, usted quiere realizar el mantenimiento de los corredores, etc. Una configuración de producción común es un factor de replicación de 3, es decir, siempre habrá tres copias de sus datos. Esta replicación se realiza a nivel de particiones de tema.

Esta cartilla debería ser suficiente para una introducción. La sección Diseño de la documentación explica los diversos conceptos de Kafka con todo detalle, si está interesado.