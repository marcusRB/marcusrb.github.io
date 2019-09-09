---
title: Prácticas 2 - Vectores
linktitle: Vectores
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-r:
    parent: Casos Prácticos
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

## Creando vectores
Te sientes de suerte?

Eso espero, porque en este capítulo vamos de viaje a la Ciudad del Pecado, también conocida como el "Paraíso del estadístico" ;-).

Gracias a R y a tus nuevas habilidades analíticas, vas a aprender cómo mejorar tus ganancias en el casino y empezar una lucrativa carrera como jugador profesional. En este capítulo veremos cómo puedes fácilmente llevar la cuenta de tus apuestas y como hacer análisis simples de tus jugadas. Próxima parada... Viva las Vegas!!!

**Instrucciones**

- Esperamos que recuerdes lo que aprendiste en el capítulo anterior. Asigna el valor "Alla vamos!" a la variable Vegas


**Script R**
```{r}
# Define la variable Vegas
Vegas <- "Alla vamos!"
```

## Creando vectores (2)
Primero concentrémonos.

En nuestro camino a para quebrar al casino, haremos uso extensivo de los vectores. Un vector es un arreglo unidimensional que puede contener datos numéricos, caracteres, o valores lógicos. En otras palabras un vector es una herramienta simple para guardar un conjunto de datos del mismo tipo. Por ejemplo podemos llevar la cuenta de las ganancias y pérdidas en los juegos de casino.

En R, se crea un vector con la función c(). La función se llama c por "combinar". Se ponen los valores o elementos del vector dentro de paréntesis, separados por coma. Por ejemplo:

```
vector_numerico <- c(1, 2, 3)
vector_caracter <- c("a", "b", "c")
vector_logico <- c(TRUE, FALSE)
```

Una vez has creado estos vectores en R puedes usarlos para hacer cálculos.

**Instrucciones**

- Completa el código de tal manera que el vector_logico contenga tres elementos: TRUE, FALSE y TRUE (en ese orden).

**Script R**
```{r}
vector_numerico <- c(1, 10, 49)
vector_caracter <- c("a", "b", "c")
# Completa el código para vector_logico
vector_logico <- c(TRUE, FALSE, TRUE)
```

## Creando vectores (3)
Después de una semana en Las Vegas y cero Ferraris en tu garage, decides que es hora de empezar a utilizar tus super-poderes analíticos.

Antes de hacer un primer análisis, decides llevar un registro de todas tus ganancias y pérdidas de la semana pasada:

En el poker:

- Lunes: ganaste 140
- Martes: perdiste 50
- Miercoles: ganaste 20
- Jueves: perdiste 120
- Viernes: ganaste 240

En la ruleta:

- Lunes: perdiste 24
- Martes: perdiste 50
- Miercoles: ganaste 100
- Jueves: perdiste 350
- Viernes: ganaste 10

Solamente has jugado poker y ruleta, porque un grupo de adivinos se ha apoderado de la mesa de dados. Para poder utilizar esos datos en R, decides crear las variables vector_poker y vector_ruleta.


**Instrucciones**

- Ahora asigna los días de la semana como nombres a los vectores vector_poker y vector_ruleta. Usa los nombres con mayúscula inicial y sin acentos (esto no es clase de ortografía...): Lunes, Martes, Miercoles, Jueves y Viernes.

- Imprime los vectores en la consola

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Asigna los nombres a los vectores
names(vector_poker) <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
names(vector_ruleta) <- c("Lunes","Martes","Miercoles","Jueves","Viernes")

# Imprime los vectores en la consola
vector_poker
vector_ruleta
```

## Nombrando elementos (2)
Si quieres ser un buen estadístico, tienes que ser un poco perezoso. (Si ya eres perezoso, quizás hayas nacido con esos excepcionales talentos estadísticos.)

En los ejercicios anteriores probablemente sentiste que es aburrido escribir una y otra vez información como los días de la semana. Sin embargo, existe una manera mas eficiente de lograr esto, que tal si asignamos el vector que contiene los días de la semana a una variable.

Así como lo hiciste con las ganancias/pérdidas de la ruleta y el poker, puedes también crear un vector que contenga los días de la semana. Al asignarlo a una variable, éste puede ser reusado.


**Instrucciones**

- Crea la variable vector_dias que contenga un vector con los días de la semana, de Lunes a Viernes.
- Usa la variable vector_dias para asignar nombres a los elementos de vector_poker y vector_ruleta.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Crea la variable vector_dias
vector_dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes")

# Asigna los nombres a los elementos de vector_poker y vector_ruleta
names(vector_poker) <-   vector_dias
names(vector_ruleta) <-  vector_dias
```

## Calculando las ganancias totales
Ahora que tienes los resultados del poker y la ruleta en un vector con elementos apropiadamente nombrados, puedes empezar a hacer análisis.

Veremos como encontrar la siguiente información:

- La ganancia/pérdida total por cada día de la semana.
- La ganancia/pérdida total en la semana.
- Sabremos si estas ganando o perdiendo dinero en el poker y en la ruleta.

Para saber lo que nos proponemos tenemos que hacer cálculos aritméticos con los vectores. Cuando sumamos dos vectores en R, éste hace la suma elemento por elemento, por ejemplo las siguientes líneas de código son completamente equivalentes:

```{r}
c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)
```

Primero experimentemos sumando!

**Instrucciones**

- Toma la suma de las variables vector_A y vector_B y asígnala a vector_total.
- Mira el resultado imprimiendo el valor de vector_total en la consola.

**Script R**
```{r}
vector_A <- c(1, 2, 3)
vector_B <- c(4, 5, 6)

# Asigna la suma de vector_A y vector_B
vector_total <- vector_A + vector_B

# Imprime el vector_total a la consola
vector_total

```

## Calculando las ganancias totales (2)
¿Entendiste como R realiza aritmética con los vectores?

Ya es hora de tener uno de esos Ferraris en el garage! Primero, hay que saber cuál fue la ganancia/pérdida por cada día. La ganancia neta de cada día es la suma de las ganancias/pérdidas que hiciste en el poker y en la ruleta.

En R, este cálculo es simplemente la suma de *vector_ruleta* y *vector_poker*.


**Instrucciones**

- Asigna a la variable total_diario lo que ganaste/perdiste cada día en total (poker y ruleta combinado).

- Nombra los elementos de total_diario utilizando vector_dias.

- Imprime total_diario en la consola para que puedas ver tus resultados totales en cada día de la semana. Cuáles fueron los días buenos y los días malos?

**Script R**
``` {r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Calculando las ganancias/pérdidas diarias:
total_diario <- vector_ruleta + vector_poker

# Dando nombres a total_diario
names(total_diario) <- vector_dias

# Imprime total_diario a la consola para ver tus resultados por día
  total_diario

```


## Calculando ganancias totales (3)
Basado en los análisis previos, parece que tuviste una mezcla de días buenos y malos. Esto no era lo que tu ego esperaba, y te preguntas si quizás hay una (muy pequeña) posibilidad de que hayas perdido dinero en la semana.

La función que nos ayudará a contestar esta pregunta es sum(). Ésta función calcula la suma de todos los elementos de un vector. Por ejemplo para calcular (y asignar a una variable) el monto total de dinero que has ganado/perdido en el poker en la semana, escribe:

```
total_poker <- sum(vector_poker)
```

**Instrucciones**

* Calcula el monto total de dinero que has ganado/perdido en la ruleta, asígnalo a la variable _total_ruleta_.
* Ahora que tienes los totales para la ruleta y el poker, puedes fácilmente calcular el valor de _total_semana_, que es la suma de todas las ganancias y pérdidas en la semana.
* Imprime el valor de _total_semana_ a la consola. ¿En total ganaste o perdiste en la semana?


**Script R**
```{r}
# Resultados en la mesa de Poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Ganancias totales en el poker
total_poker <- sum(vector_poker)

# Ahora completa el código:
total_ruleta <- sum(vector_ruleta)
total_semana <- sum(total_poker + total_ruleta)

#Imprime el total que ganaste/perdiste en la semana
total_semana
```

## Comparando ganancias totales
Mmmmm.... parece que estás perdiendo dinero. Que sorpresa! Hora de repensar tu estrategia! Esto va a requerir un análisis más profundo.

Después de una breve lluvia de ideas en el jacuzzi del hotel, piensas que una posible explicación puede ser que tus habilidades en la ruleta no están tan bien desarrolladas como las de poker. Así que talvez tus ganancias totales en el poker son más grandes (>) que en la ruleta.

**Instrucciones**

* Calcula total_poker y total_ruleta como en el ejercicio anterior.
* Fíjate si tus ganancias totales en el poker son más altas que en la ruleta haciendo una comparación. Asigna el resultado de esta comparación a la variable respuesta. ¿Cuál es tu conclusión? ¿Deberías dedicarte a la ruleta o al poker?
* Imprime respuesta a la consola.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Ganancias totales en el poker y en la ruleta
total_poker <- sum(vector_poker)
total_ruleta <- sum(vector_ruleta)

# Probando si las ganancias en el poker son más altas que en la ruleta:
respuesta <- total_poker > total_ruleta

# Imprime respuesta a la consola
respuesta
```

## Seleccionando elementos: los buenos tiempos
La corazonada parece que fue cierta. Parece que te va mejor en el poker que en la ruleta.

Otro posible aspecto a investigar son tus resultados al comienzo de la semana comparados con los últimos días. Talvez te excediste en los tequilas al final de la semana...

Para responder esta pregunta, concentrémonos en solo unos elementos del vector_total. En otras palabras, nuestro objetivo es seleccionar elementos específicos de los vectores. Para seleccionar elementos de un vector (y luego matrices, data frames, etc.), puedes utilizar los corchetes. Entre corchetes indicamos los elementos que queremos seleccionar. Por ejemplo, para seleccionar el primer elemento de un vector, escribes vector_poker[1]. Para seleccionar el segundo elemento escribimos vector_poker[2], etc.

**Instrucciones**

* Asigna tu ganancia del Miércoles a la variable _poker_miercoles_

**Script R**

```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Asigna el valor de lo ganado el Miercoles en el poker
poker_miercoles <- vector_poker[3]
```

## Seleccionando elementos: los buenos tiempos (2)
¿Qué tal si analizamos los resultados en los días medios de la semana?

Para seleccionar múltiples elementos de un vector, puedes hacerlo usando corchetes. En el ejercicio anterior pusimos un número, llamado índice, entre los corchetes y obtuvimos el elemento del vector correspondiente a ese índice. Para seleccionar varios elementos podemos utilizar otro vector cuyos elementos son los índices que deseamos seleccionar. Por ejemplo, para seleccionar el primero y el quinto elemento usamos el vector c(1,5) dentro de los corchetes. El siguiente código selecciona el primero y quinto elementos de vector_poker:

```
vector_poker[c(1,5)]
```

**Instrucciones**

* Asigna los resultados de obtenidos del poker de los días Martes, Miercoles y Jueves a la variable dias_medios_poker.
* Imprime el vector dias_medios_poker a la consola para ver sus elementos.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Define la nueva variable:
dias_medios_poker <- vector_poker[c(2,3,4)]

# Imprime dias_medios_poker
dias_medios_poker
```

## Seleccionando elementos: los buenos tiempos (3)
Seleccionar varios elementos del vector_poker con c(2,3,4) quizás no sea muy conveniente. Recordemos como estadísticos nuestras raíces perezosas, así que usemos una notación que R utiliza para crear vectores de números consecutivos c(2,3,4) se puede crear con el código 2:4, que genera el vector que contiene los números naturales del 2 al 4 (incluyendo ambos extremos).

Así que ahora tenemos otra manera de seleccionar los elementos que corresponden a los días medios de la semana: vector_poker[2:4].

Quizás en este ejemplo no haya mucha diferencia entre c(2,3,4) y 2:4 pero imagina que tuviéramos que extraer los primeros 80 elementos consecutivos de un vector, con la primera notación tendríamos que escribir todos los números del 1 al 80, sin embargo ahora sabemos que podemos hacerlo así de simple: 1:80.

**Instrucciones**

* Asigna los resultados del Martes al Viernes del vector_ruleta a la variable martes_a_viernes_ruleta. Utiliza la notación de dos puntos:.
* Imprime martes_a_viernes_ruleta en la consola.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Define la nueva variable siguiendo las instrucciones
martes_a_viernes_ruleta <- vector_ruleta[c(2:5)]

#Imprime martes_a_viernes_ruleta en la consola
martes_a_viernes_ruleta
```

## Seleccionando elementos: los buenos tiempos (4)
Otra forma de abordar este problema es usar los nombres de los elementos (Lunes, Martes, etc.) en lugar de sus índices. Por ejemplo:

```
vector_poker["Lunes"]
```

Seleccionará el primer elemento de vector_poker porque el primer elemento es el que tiene el nombre "Lunes". De la misma manera en que lo hicimos en el ejercicio anterior, puedes utilizar un vector que tenga los nombres de los elementos que deseas extraer:

```
vector_poker[c("Lunes","Martes")]
```

**Instrucciones**

* Calcula tus ganancias promedio durante los primeros tres días de la semana seleccionando los elementos por nombre. Asigna este valor a promedio_primeros3_dias. Puedes usar la función mean() para obtener el promedio de los elementos de un vector.


**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Only poker results
promedio_primeros3_dias <- mean((vector_poker)[c("Lunes","Martes","Miercoles")])

```

## Selección por comparación - Paso 1
Al utilizar los operadores de comparación, podemos abordar las preguntas anteriores de una manera más interesante.

Los operadores de comparación en R son los siguientes:


* < menor que
* > mayor que
* >= mayor o igual que
* == igualdad
* != no igual

Como ya hemos visto, 6 > 5 da un valor verdadero: TRUE. Una característica muy buena de R es que puedes utilizar operaciones de comparación también en vectores. por ejemplo c(4,5,6) > 5 resulta en: FALSE, FALSE, TRUE. En otras palabras R hace la comparación por cada elemento y responde TRUE o FALSE dependiendo del resultado de la comparación. Esto es muy interesante y puede ser difícil de entender, practícalo en la consola!

Internamente, R recicla el valor 5 cuando ejecuta c(4,5,6) > 5. R quiere hacer una comparación elemento por elemento de c(4,5,6) con 5, pero 5 no es un vector de tamaño 3. Para resolver esto R crea el vector c(5,5,5) y luego hace la comparación elemento por elemento.

**Instrucciones**

* Obtengamos los días en que obtuvimos valores positivos (> 0) en el poker (vector_poker) y asignémoslo a la variable positivos_poker.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Que días obtiviste ganancias en el poker?
positivos_poker <- vector_poker > 0
positivos_poker
```


## Selección por comparación - Paso 2
Trabajar con comparaciones hará tu vida analítica más fácil. En lugar de seleccionar "a mano" un conjunto de días para analizar (como en los primeros ejercicios), puedes decirle a R que te seleccione solo aquellos días en los que tuviste ganancias en el poker.

En el ejercicio anterior usaste positivos_poker <- vector_poker >0 para encontrar aquellos días en los cuales tuviste ganancias. Ahora, nos gustaría saber no solo los días, sino las cantidades que ganaste en esos días.

Puedes seleccionar los elementos deseados usando positivos_poker entre corchetes para seleccionar los elementos de vector_poker. Esto funciona, porque R seleccionará solo aquellos elementos en los cuales el vector positivos_poker tiene un valor verdadero (TRUE).

**Instrucciones**
- Asigna las ganancias en el poker a la variable ganancias_poker.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Que días obtuviste ganancias en el poker?
selection_vector <- vector_poker > 0

# Selecciona de vector_poker los días con ganancias
ganancias_poker <- vector_poker[selection_vector]

#Imprime
ganancias_poker
```

## Selección Avanzada
Así como lo hiciste con el poker, también quisieras saber aquellos días en los que tuviste ganancia en la ruleta.

**Instrucciones**

* Asigna los valores de las ganancias que tuviste en la ruleta a la variable ganancias_ruleta. Es decir selecciona solo aquellos valores de vector_ruleta que son positivos y asignalos a la variable ganancias_ruleta.

**Script R**
```{r}
# Resultados en la mesa de poker en la semana
vector_poker <- c(140, -50, 20, -120, 240)

# Resultados en la ruleta en la semana
vector_ruleta <- c(-24, -50, 100, -350, 10)

# Dando nombres a vector_poker y vector_ruleta
vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
names(vector_poker) <- vector_dias
names(vector_ruleta) <- vector_dias

# Que días obtiviste ganancias en la ruleta?
positivos_ruleta <- vector_ruleta > 0

# Selecciona los valores de vector_ruleta que fueron ganancias
ganancias_ruleta <- vector_ruleta[positivos_ruleta]

#Imprime
ganancias_ruleta
```
