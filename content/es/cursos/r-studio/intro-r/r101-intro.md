---
title: Prácticas 1 - Introducción
linktitle: Introducción
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-r:
    parent: Casos Prácticos
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---


**Instrucciones**

- Da clic a 'Submit Answer' y date cuenta como la consola ejecuta el código de R del editor: la solución 7 aparece como la suma de 3 y 4. El uso más simple de R es como una calculadora y graficadora, pero por supuesto hay mucho, mucho, mucho más!
- Añade una linea que haga el calculo de 6 y 12.

**Script R**
```{r}
# Este es el editor y la parte de abajo es la consola

# El símbolo de numeral # es utilizada para hacer comentarios

# Calcula 3 + 4
3 + 4

# Calcula 6 + 12
6 + 12

```


## Aritmética con R
Como vimos el uso más simple que se le puede dar a R es el de una calculadora. Consideremos las siguientes operaciones:

Adición: +
Resta: -
Multiplicación: *
División: /
Exponenciación: ^
Modulo: %%
Los últimos dos necesitan una breve explicación:

El operador ^ eleva el número a la izquierda a la potencia a la derecha 3^2 es 9
El módulo (mod) %% calcula el residuo de la división del número a la izquierda por el número a la derecha, por ejemplo 5 mod 3 o 5%%3 es 2.

**Instrucciones**

* Escribe 2^5 en el editor para calcular 2 a la quinta potencia.
* Escribe 28 %% 6 para calcular el 28 módulo 6.
Da clic a 'Submit Answer' para ver el resultado en la consola.


**Script R**
```{r}
# Adición
5 + 5

# Resta
5 - 5

# Multiplicación
3 * 5

 # División
(5 + 5) / 2

# Exponenciación
2^5

# Modulo
28 %% 6
```

## Variables y asignaciones
Un concepto básico en programación es el de variable.

Una variable nos permite guardar valores (por ejemplo el número 4) o algún objeto (veremos mas adelante de que se trata) en R. Luego puedes acceder al valor guardado en la variable por medio del nombre de la misma.

Podemos asignar el valor de 4 a la variable mi_variable con el siguiente comando: mi_variable <- 4

**Instrucciones**

* Completa el código en el editor de tal manera que el valor de 42 quede asignado a la variable x. Da clic en 'Submit Answer'. Nota al escribir x en R, se imprime el valor de 42 en la consola.

**Script R**
```{r}
# Asigna 42 a x
x <- 42

# Imprime el valor de la variable x
x

```


## Variables y asignaciones (2)
Supongamos que tienes una canasta con cinco manzanas. Para recordarlo, quizás quieras asignar el número de manzanas en una variable llamada numero_manzanas

**Instrucciones**

* Escribe el siguiente código: numero_manzanas <- 5 para asignar el numero 5 a la variable numero_manzanas.
* Escribe: numero_manzanas abajo del segundo comentario.
Da clic a 'Submit Answer', ve la consola: el numero que sea ha impreso es 5.

**Script R**
```{r}
# Asigna el valor de 5 a la variable numero_manzanas
numero_manzanas <- 5


# Imprime el valor de la variable numero_manzanas
numero_manzanas

```

## Variables y asignaciones (3)
Supongamos que ahora tienes 6 naranjas. De nuevo, para no olvidarlo se te ocurre crear una variable llamada numero_naranjas y asignar el valor de 6 a esa variable. Ahora podemos a empezar a utilizar las variables creadas para hacer algo con ellas. Usemos R para saber el número total de frutas con las que contamos, pidamos que haga la cuenta por nosotros: numero_manzanas + numero_naranjas. Al leer este codigo nos damos cuenta de la importancia de dar nombres útiles a nuestras variables.

**Instrucciones**

* Asigna a numero_naranjas el valor de 6.
* R permite combinar estas variables numero_manzanas y numero_naranjas en una nueva variable numero_frutas. Crea la variable numero_frutas y asigna el valor del total de frutas que tenemos.

**Script R**
```{r}
# Asigna el valor de 5 y 6 a las variables numero_manzanas y numero_naranjas respectivamente
numero_manzanas <- 5
numero_naranjas <- 6

# Suma estas dos variables e imprime el resultado.
numero_manzanas + numero_manzanas

#Crea la variable numero_frutas y asigna el resultado de la suma anterior.
numero_frutas <- (numero_manzanas + numero_naranjas)
numero_frutas
```

## Manzanas y naranjas
En la escuela primaria nos decían que no sumáramos manzanas con naranjas, pero es lo que acabamos de hacer :) \n Sin embargo numero_manzanas y numero_naranjas son dos variables que contienen el mismo tipo de dato: un dato de tipo numérico. El operador + en R funciona con variables de este tipo. Si alguna de nuestras variables no es numérica sino por ejemplo caracter (ver el editor), entonces estaríamos tratando de asignar la suma de un caracter y un número a la variable numero_frutas, lo cual no es posible.

**Instrucciones**

* Da clic a 'Submit Answer' lee el mensaje de error, asegúrate de entender que dice (puedes copiar y pegar el texto en ingles en un traductor)
* Ajusta el código para que R deje de mostrar ese error.


## Tipos de datos básicos en R
R trabaja con muchos tipos de datos. Para empezar, algunos de los más básicos son:

- Decimales como 4.5 son llamados numeric (numéricos).
- Números enteros como 4 son llamados (sorpresa!) integer (enteros).
- Valores Booleanos (TRUE (Verdadero) o FALSE (Falso)) logical (lógicos).
- Texto (cadenas de caracteres) son characters (caracteres).
Nota como utilizamos las comillas para denotar el texto en el editor.

**Instrucciones**

Cambia los valores de:

* mi_numerica a 42.
* mi_caracter a "cuarenta_y_dos". Nota como utilizamos las comillas.
* mi_logica a FALSE (Falso).
Ten en cuenta que R distingue entre mayúsculas y minúsculas!

**Script R**
```{r}
# Un valor numérico
mi_numerica <- 42

# Asignando una cadena de caracteres (o simplemente caracteres) nota el uso de las comillas
mi_caracter <- "cuarenta_y_dos"

# Asignando un valor lógico verdadero
mi_logica <- FALSE
```

## ¿Cómo sé el tipo de dato?
¿Recuerdas que cuando añadiste 5 + "seis" obtuviste un error debido a que los tipos de datos no coincidian? Para evitar estas penosas situaciones :\ puedes saber de antemano el tipo de dato que tienen tus variables utilizando el código class(nombre_variable)

**Instrucciones**

* Completa el código en el editor para imprimir a la consola el tipo de dato de las variables mi_numerica, mi_caracter y mi_logica.

**Script R**
```{r}
# Declarando las variables de diferentes tipos
mi_numerica <- 40
mi_caracter <- "cuarenta"
mi_logica <- FALSE

# Escribe el código para averiguar el tipo de dato de cada variable
class(mi_numerica)
class(mi_caracter)
class(mi_logica)
```
