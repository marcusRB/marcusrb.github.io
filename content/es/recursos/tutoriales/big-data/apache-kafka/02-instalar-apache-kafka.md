---
# Course title, summary, and position.
linktitle: Instalar Apache Kafka
summary: Recursos y materiales de Apache Kafka
weight: 1

# Page metadata.
title: Instalar Apache Kafka
date: "2021-07-10T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "apache-kafka/02-instalar-apache-kafka"
description: Recursos y materiales de Apache Kafka
# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  apache-kafka:
    name: Instalar Apache Kafka
    weight: 4
---

## Standalone en entorno Linux

[Descargar la última release de Apache Kafka](https://kafka.apache.org/downloads.html)

1. Descomprimir el contenido:

```{shell}
$ tar -xzf kafka_2.13-2.8.0.tgz
$ cd kafka_2.13-2.8.0
```

2. Start el entorno

Comprobar que existe actualmente instalado Java 8+


Sucesivamente enviar los siguientes comandos:

```{bash}
# Start the ZooKeeper service
# Note: Soon, ZooKeeper will no longer be required by Apache Kafka.
$ bin/zookeeper-server-start.sh config/zookeeper.properties
```

Y abrir en otro terminal

```{bash}
# Start the Kafka broker service
$ bin/kafka-server-start.sh config/server.properties
```

