---
title: Prácticas 1 - Introducción
linktitle: Introducción
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  py101:
    parent: Casos Prácticos
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---


# Introducción
Este curso cubre las habilidades clave de Python que necesitará para que pueda comenzar a usar Python para la ciencia de datos. El curso es ideal para alguien con experiencia previa en codificación que quiera agregar Python a su repertorio o subir de nivel sus habilidades básicas de Python. (Si es un programador por primera vez, puede consultar estos recursos de aprendizaje "Python para no programadores").

Comenzaremos con una breve descripción general de la sintaxis de Python, la asignación de variables y los operadores aritméticos. Si tiene experiencia previa en Python, puede pasar directamente al ejercicio práctico.

## Hello, Python!
Python fue nombrado por la compañía de comedia británica Monty Python, por lo que haremos de nuestro primer programa Python un homenaje a su parodia sobre el spam.

Solo por diversión, intente leer el código a continuación y predecir lo que hará cuando se ejecute. (Si no tienes idea, ¡está bien!)

Luego haga clic en el botón "salida" para ver los resultados de nuestro programa.


```python
spam_amount = 0
print(spam_amount)

# Ordering Spam, egg, Spam, Spam, bacon and Spam (4 more servings of Spam)
spam_amount = spam_amount + 4

if spam_amount > 0:
    print("But I don't want ANY spam!")

viking_song = "Spam " * spam_amount
print(viking_song)
```

    0
    But I don't want ANY spam!
    Spam Spam Spam Spam


¡Hay mucho que desempacar aquí! Este programa tonto demuestra muchos aspectos importantes de cómo se ve el código Python y cómo funciona. Revisemos el código de arriba a abajo.


```python
spam_amount = 0
```

Asignación de variables: aquí creamos una variable llamada spam_amount y le asignamos el valor de 0 usando =, que se llama operador de asignación.

**Nota**: si ha programado en ciertos otros lenguajes (como Java o C ++), puede estar notando algunas cosas que Python no requiere que hagamos aquí:

* no necesitamos "declarar" spam_amount antes de asignarle
* no necesitamos decirle a Python a qué tipo de valor se referirá spam_amount. De hecho, incluso podemos reasignar spam_amount para referirnos a un tipo diferente de cosas como una cadena o un booleano.


```python
print(spam_amount)
```

    0


**Llamadas de función**: _print_ es una función de Python que muestra el valor que se le pasa en la pantalla. Llamamos a las funciones poniendo paréntesis después de su nombre y poniendo las entradas (o argumentos) a la función en esos paréntesis.


```python
# Ordering Spam, egg, Spam, Spam, bacon and Spam (4 more servings of Spam)
spam_amount = spam_amount + 4
```

La primera línea de arriba es un **comentario**. En Python, los comentarios comienzan con el símbolo _#_.

A continuación vemos un ejemplo de reasignación. La reasignación del valor de una variable existente tiene el mismo aspecto que la creación de una variable: todavía utiliza el operador de asignación _=_.

En este caso, el valor que estamos asignando a _spam_amount_ implica una aritmética simple en su valor anterior. Cuando encuentra esta línea, Python evalúa la expresión en el lado derecho de _=_ (0 + 4 = 4), y luego asigna ese valor a la variable en el lado izquierdo.


```python
if spam_amount > 0:
    print("But I don't want ANY spam!")

viking_song = "Spam Spam Spam"
print(viking_song)
```

    But I don't want ANY spam!
    Spam Spam Spam


No hablaremos mucho sobre "condicionales" hasta más tarde, pero, incluso si nunca ha codificado antes, probablemente pueda adivinar lo que hace. Python es apreciado por su legibilidad y simplicidad.

Observe cómo indicamos qué código pertenece al _if. "¡Pero no quiero NINGÚN spam!"_ solo se supone que se imprime si _spam_amount_ es positivo. Pero el código posterior (como _print (viking_song)_) debe ejecutarse sin importar qué. ¿Cómo lo sabemos (y Python)?

Los dos puntos (:) al final de la línea if indican que se está iniciando un nuevo "bloque de código". Las líneas posteriores que están sangradas son parte de ese bloque de código. Algunos otros idiomas usan {llaves "para marcar el comienzo y el final de los bloques de código. El uso de espacios en blanco significativos por Python puede ser sorprendente para los programadores que están acostumbrados a otros lenguajes, pero en la práctica puede conducir a un código más coherente y legible que los lenguajes que no imponen sangría de bloques de código.

Las líneas posteriores que tratan con _viking_song_ no están sangradas con 4 espacios adicionales, por lo que no forman parte del bloque de código if. Veremos más ejemplos de bloques de código sangrados más adelante cuando definamos funciones y usemos bucles.

Este fragmento de código también es nuestro primer avistamiento de una cadena **string** en Python:


```python
"But I don't want ANY spam!"
```




    "But I don't want ANY spam!"



Las cadenas se pueden marcar con comillas dobles o simples. (Pero debido a que esta cadena en particular contiene un carácter de comillas simples, podríamos confundir a Python tratando de rodearla con comillas simples, a menos que tengamos cuidado).


```python
viking_song = "Spam " * spam_amount
print(viking_song)
```

    Spam Spam Spam Spam


El operador _\*_ se puede usar para multiplicar dos números (3 * 3 se evalúa como 9), pero de manera bastante divertida, también podemos multiplicar una cadena por un número, para obtener una versión que se ha repetido tantas veces. Python ofrece una serie de trucos descarados y pequeños que ahorran tiempo como este, donde los operadores como * y + tienen un significado diferente según el tipo de cosas a las que se aplican. (El término técnico para esto es [operador de sobrecarga](https://en.wikipedia.org/wiki/Operator_overloading))

## Números y aritmética en Python
Ya hemos visto un ejemplo de una variable que contiene un número arriba:


```python
spam_amount = 0
```

"Número" es un buen nombre informal para el tipo de cosas, pero si quisiéramos ser más técnicos, podríamos preguntarle a Python cómo describiría el tipo de cosas que es *spam_amount*:


```python
type(spam_amount)
```




    int



Es un *int* - abreviatura de entero. Hay otro tipo de número que comúnmente encontramos en Python:


```python
from matplotlib import pyplot as plt
%matplotlib inline
import seaborn as sns

df = sns.load_dataset('iris')


sns.lmplot(x = 'petal_length', y = 'petal_width', data = df
           , hue = 'species'
           , fit_reg = False)
```




    <seaborn.axisgrid.FacetGrid at 0x1a16f2d908>




![png](output_21_1.png)



```python

```


```python

```


```python


```


```python

```
