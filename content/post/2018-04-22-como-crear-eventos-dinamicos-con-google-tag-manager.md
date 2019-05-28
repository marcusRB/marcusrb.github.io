---
title: Como crear eventos dinámicos con Google Tag Manager
author: marcusRB
type: post
date: 2018-04-22T21:34:51+00:00
url: /como-crear-eventos-dinamicos-con-google-tag-manager/
featured_image: /img/2018/04/Copia-de-Tracking-de-eventos-260x146.png

categories:
  - Tag Manager
tags:
  - analytics eventos
  - crear eventos analytics
  - eventos dinámicos tag manager
  - tag manager google
summary: "Este post sería un resumen en formato texto, de un vídeo anterior realizado en YouTube, y está pensado como memoria para aquellos que quieren seguir todos los pasos de una creación de eventos dinámicos con Google Tag Manager"

---
## Este post sería un resumen en formato texto, de un vídeo anterior realizado en YouTube

y está pensado como memoria para aquellos que quieren seguir todos los pasos de una creación de eventos dinámicos con Google Tag Manager. El nivel de este tutorial es intermedio. Así que cualquier duda pueden ver primero el vídeo explicativo Google Tag Manager en 30 minutos y luego este

&nbsp;

## Definición de evento

Vamos directo al grano, primero definimos que es un **evento**. Aquí tenemos una desde el RAE:

> 1. m. acaecimiento.
>
> **2. m. Eventualidad, hecho imprevisto, o que puede acaecer.**
>
> 3. m. Suceso importante y programado, de índole social, académica, artística o deportiva. U. m. en Am.
>
> 4. m. Ling. Situación descrita por un predicado, ya sea estática o dinámica.
>
> 5. m. Ling. Predicado de naturaleza dinámica.
>
> a cualquier, o a todo, evento
>
> **1. locs. advs. En previsión de todo lo que pueda suceder.**
>
> 2. locs. advs. Sin reservas ni preocupaciones.

Me quedo con dos  y de hecho son previsiones, de lo que podría pasar en este caso aplicado a nuestro mundo, eventos o acciones de usuarios en nuestro sitios web, aplicaciones móviles.

Perfecto, con lo cuál serían **interacciones, hitos o hits**, como definirlo mejor en Google encontramos esto:

> ### Información sobre los eventos
>
> <div class="drop-head">
>   Utilice los <em>eventos</em> para recopilar datos sobre las interacciones con su contenido.
> </div>
>
> <div class="cc">
>   <p>
>     Los eventos son interacciones del usuario con cuyo contenido se puede realizar independientemente a partir de una página web o una carga de pantalla.
>   </p>
>   
>   <p>
>     Las descargas, los clics en anuncios para móviles, los gadgets, los elementos Flash, los elementos insertados AJAX y las reproducciones de vídeo son todos ejemplos de acciones de las que puede realizar un seguimiento como eventos.
>   </p>
> </div>

Con lo cuál tenemos un elenco de algunos ejemplos de eventos, como la descarga de elementos, o click en diferentes botones o imágenes por ejemplo. Aquí mencionar que deberíamos tener un sitio web con muchos botones para diferenciar uno y otro  clics en enlaces, sería ya suficiente para hacer una prueba. ¡Vamos con ello!

## Anatomía de los eventos {#Anatomy}

Un evento tiene los  siguientes componentes, un hit de evento incluye un valor para cada componente y estos valores se muestran en sus informes.

  * Categoría
  * Acción
  * Etiqueta (opcional, pero recomendado)
  * Valor (opcional)

Por ejemplo, puede configurar un botón de reproducción de vídeo en su sitio para que envíe un hit de evento con los valores siguientes:

  * Categoría: &#8220;Vídeos&#8221;
  * Acción: &#8220;Reproducir&#8221;
  * Etiqueta: &#8220;El primer cumpleaños del bebé&#8221;

Directamente desde Google Analytics, desde su propia guía, vamos a comentar que necesitamos unas series de elementos para poder crear eventos con Google Analytics, así que mejor decir que sin esta información, no podemos tener nada.

### Categoría

Una categoría es un nombre que se debe proporcionar para agrupar los objetos de los cuales quiera realizar un seguimiento. Normalmente, utilizará el mismo nombre de categoría varias veces sobre los elementos relacionados de la interfaz de usuario que quiera agrupar en una determinada categoría.

Supongamos que también quiere realizar el seguimiento de las veces que se descarga el vídeo. Podría utilizar:

  * Categoría: &#8220;Vídeos&#8221;
  * Acción: &#8220;Descargados&#8221;
  * Etiqueta: &#8220;Lo que el viento se llevó&#8221;

En este caso, solo habría una categoría (&#8220;Vídeos&#8221;) en sus informes y podría ver métricas agregadas para la interacción del usuario con el conjunto total de elementos para ese único objeto de vídeo.

Sin embargo, probablemente tenga más de un solo objeto del que desea realizar el seguimiento de eventos, por lo que merece la pena considerar cómo se van a clasificar los informes antes de implementar la invocación. Por ejemplo, tal vez prefiera hacer el seguimiento de todas las películas por separado en la misma categoría principal de vídeos de manera que obtenga números adicionales para cualquier interacción de vídeo, indistintamente del usuario con el que se interactúe.

Además, podría crear categorías separadas según el tipo de vídeo, una para vídeos de películas y otra para vídeos musicales. También podría tener una categoría aparte para las descargas de vídeo:

  * Vídeos: películas
  * Vídeos: música
  * Descargas

En este escenario, se podría ver el recuento total de eventos combinados de las tres categorías en sus informes. La métrica _Total de eventos_ muestra todos los recuentos de eventos de todas las categorías indicadas en la implementación del seguimiento de eventos. Sin embargo, no podrá ver las métricas combinadas de todos los vídeos aparte de las descargas, porque las métricas de eventos detalladas se combinan en sus respectivas categorías.

Aunque el modelo de objeto de seguimiento de eventos es totalmente flexible, es conveniente prever primero la estructura de informes que se quiera tener, antes de decidir las categorías de nombres. Si tiene previsto utilizar el mismo nombre de categoría en varias ubicaciones, procure hacer referencia correctamente a la categoría que desee por su nombre. Por ejemplo, si tiene previsto denominar a su categoría de seguimiento de vídeos &#8220;Vídeo&#8221; y posteriormente lo olvida y utiliza el plural &#8220;Vídeos&#8221;, tendrá dos categorías para el seguimiento de vídeos. Además, si decide cambiar el nombre de categoría de un objeto del que ya se ha realizado el seguimiento con otro nombre, el historial de datos de la categoría original no se volverá a procesar, por lo que tendrá métricas del mismo elemento de página web incluidas en dos categorías en la interfaz de informes.

### Acción

Por lo general, el parámetro de acción se usa para asignar un nombre al tipo de interacción o evento del que se quiere realizar el seguimiento para un objeto concreto del sitio web. Por ejemplo, con una única categoría &#8220;Vídeos&#8221; puede hacer el seguimiento de una serie de eventos específicos con este parámetro, como los siguientes:

  * hora a la que termina la carga del vídeo,
  * clics del botón &#8220;Reproducir&#8221;,
  * clics del botón &#8220;Detener&#8221;,
  * clics del botón &#8220;Pausa&#8221;.

Como en el caso de las categorías, el nombre que indique para una acción lo decide usted, pero tenga en cuenta dos características importantes del modo en que se utiliza una acción de evento en los informes:

  * **Todas las acciones aparecen de forma independiente de sus categorías principales. **Esto ofrece otra manera útil de segmentar los datos de evento en los informes.
  * **Un evento único viene determinado por un nombre de acción único. **Puede utilizar nombres de acción duplicados en distintas categorías, pero este hecho puede repercutir en el modo de calcular los eventos únicos. Consulte las sugerencias que se indican a continuación y la sección &#8220;Recuento implícito&#8221; para obtener más detalles.

### Etiqueta

Las etiquetas permiten proporcionar información adicional para los eventos cuyo seguimiento desee realizar, como el título de la película en el caso de los ejemplos de vídeos anteriores, o el nombre de un archivo al realizar el seguimiento de las descargas.

  * Categoría: &#8220;Descargas&#8221;
  * Acción: &#8220;PDF&#8221;
  * Etiqueta: &#8220;/salesForms/orderForm1.pdf&#8221;

Al igual que con las categorías y las acciones, hay un informe que muestra todas las etiquetas que haya creado. Imagínese las etiquetas como una manera de crear una dimensión adicional de los informes para la interacción del usuario con los objetos de la página. Por ejemplo, supongamos que dispone de cinco reproductores de vídeo en su página de cuyas interacciones desea realizar el seguimiento. Cada uno de estos reproductores puede utilizar la categoría &#8220;Vídeos&#8221; con la acción &#8220;Reproducir&#8221;, pero cada uno podría tener también una etiqueta aparte (como el nombre de la película) para que aparezcan como elementos diferenciados en el informe.

  * Categoría: &#8220;Vídeos&#8221;, acción: &#8220;Reproducir&#8221;, etiqueta: &#8220;Lo que el viento se llevó&#8221;
  * Categoría: &#8220;Vídeos&#8221;, acción: &#8220;Reproducir&#8221;, etiqueta: &#8220;Huckleberry Finn&#8221;

Como en el caso de las categorías, el nombre que indique para una etiqueta lo decide usted, pero tenga en cuenta dos características importantes del modo en que se utiliza una etiqueta de evento en los informes:

  * **Todas las etiquetas se enumeran de forma independiente a sus categorías principales y acciones.** Esto ofrece otra manera útil de segmentar los datos de evento en los informes.
  * **Un evento único viene determinado por un nombre de etiqueta único.** Puede utilizar nombres de etiquetas duplicados en distintas categorías, pero este hecho puede repercutir en el modo de calcular los eventos únicos. Consulte las sugerencias que se indican a continuación y la sección &#8220;Recuento implícito&#8221; para obtener más detalles.

###

### Valor

El valor difiere de los otros componentes en que es un número entero en lugar de una secuencia, por lo que debe utilizarlo para asignar un valor numérico a un objeto de página de seguimiento. Por ejemplo, podría utilizarlo para proporcionar el tiempo en segundos que tarda en cargarse un reproductor o para activar un valor monetario cuando se alcance un determinado marcador de reproducción en un reproductor de vídeo.

Categoría: &#8220;Vídeos&#8221;, acción: &#8220;Tiempo de carga de vídeo&#8221;, etiqueta: &#8220;Lo que el viento se llevó&#8221;, valor: downloadTime

El valor se interpreta como un número, y el informe agrega los valores totales sobre la base del recuento de cada evento (consulte &#8220;Recuento implícito&#8221; a continuación). El informe también determina el valor medio para la categoría. En el ejemplo anterior, se invoca al evento para la acción &#8220;Tiempo de carga de vídeo&#8221; al concluir la carga del vídeo. El nombre del vídeo se proporciona como una etiqueta y se acumula el tiempo de carga calculado para cada descarga de vídeo. A continuación, se podría determinar el tiempo medio de carga para todas las acciones &#8220;Tiempo de carga de vídeo&#8221; de la categoría &#8220;Vídeos&#8221;. Supongamos que ha habido 5 descargas únicas de los vídeos de su sitio web con los tiempos de descarga en segundos que se indican a continuación:

  * 10
  * 25
  * 8
  * 5
  * 5

Sus informes se calcularían del siguiente modo (los números del ejemplo muestran el tiempo de descarga en segundos):

  * Sesiones con eventos: 5
  * Valor: 53
  * Valor medio: 10,6

No se admiten números enteros negativos.

## Eventos en Google Analytics

Una vez explicado y definidos los elementos principales de los eventos, veamos un pantallazo de como se mostraría un evento en Google Analytics, que afecta toda la propiedad (y a todas las vistas o perfiles.

<div class="image_frame image_item no_link scale-with-grid no_border" >
  <div class="image_wrapper">
    <img class="scale-with-grid" src="https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-228x300.png" alt="" title="" />
  </div>
</div>

Desde nuestra interfaz vamos en: Comportamiento > Eventos

[<img class="aligncenter size-medium wp-image-422" src="https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-228x300.png" alt="" width="228" height="300" srcset="https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-228x300.png 228w, https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-111x146.png 111w, https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-38x50.png 38w, https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb-57x75.png 57w, https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb.png 238w" sizes="(max-width: 228px) 100vw, 228px" />][1]

Aquí una muestra en Tiempo Real > Eventos

&nbsp;

&nbsp;

## Crear eventos en Google Tag Manager

Y finalmente llegamos a crear los eventos con Google Tag Manager, tenemos una sección dedicada para poder crear los eventos directamente en la etiqueta de Google Analytics, así que sin ninguna dificultad veremos los mismos elementos arriba mencionados: Categoría, Acción, Etiqueta y Valor.

Veamos un ejemplo aqui:

&nbsp;

y su explicación de los eventos en Google Tag Manager aquí:

https://support.google.com/tagmanager/answer/6106716?hl=es

### ¿Cuál es la diferencia entre los eventos de Google Analytics y Google Tag Manager?

Los eventos de Google Analytics son interacciones que se envían como resultado de las etiquetas de Analytics activadas desde Tag Manager. Los eventos del navegador de Tag Manager son interacciones de los usuarios con elementos de páginas web (elementos DOM) que registra el navegador y envía a la capa de datos de Tag Manager para que se puedan usar para configurar activadores.

Pues claro, verdad? La primera parte es la nos interesa ahora mismo, ya tendremos otro post explicando los grandes misterios del **dataLayer**, pero así como viene a ser este post tendríamos que utilizarlo también, sería la parte dinámica de nuestro Tag Manager, así que vamos por la creación de uno y del otro.

No iré explicando todo todo de Google Tag Manager, así asumo que ya conocen las variables, activadores y etiquetas. Asumo que ya conocen las diferentes variables existentes entre predefinidas y personalizadas, así como los activadores. En tal caso, os rimando a otras guías internas para realizar cada una de ella.

### Eventos básicos: Clic en Enlaces Salientes

Para crear un evento básico con Google Tag Manager integrando la etiqueta de Google Analytics seguiremos estos pasos:

  1. Elegimos y creamos la **etiqueta** de Google Analytics, del tipo Universal
  2. Tipo de seguimiento elegimos la opción **Evento**
  3. Entre los parámetros de seguimientos de eventos rellenamos la siguiente información:
      * CATEGORIA: _ClickContactos_
      * ACCIÓN: _clic_
      * ETIQUETA: _{{Click URL}}_
      * VALOR: _&#8211; no marcamos nada &#8211;_
  4. Seleccionaríamos o bien la variable de configuración de Google Analytics (creada anteriormente en el caso de tenerla), o marcamos la opción de **Habilitar la anulación de configuración de esta etiqueta y añadimos nuestra ID Propiedad de GA**
  5. Como activador seleccionaríamos: **Todas las Páginas**

¿Listos?

Si llegamos a leer esta linea significa que solamente tenemos dos opciones: o utilizar la Vista Previa y podemos probar antes de publicar nuestra versión creada, y para ello tenemos que ya tener un contenedor de Tag Manager implementado o bien utilizar el **Tag Manager Injector** para simular la creación del contenedor. No recuerdas como sería? Puedes echar un vistazo a este vídeo como hacerlo:

<div class="content_video iframe has-wh">
  <iframe class="scale-with-grid" width="700" height="400" src="https://www.youtube.com/embed/MAn20Yi62z8?t=7m17s?wmode=opaque" allowfullscreen></iframe>
</div>

Como se mostraría en nuestra preview en Google Tag Manager sería así:

&nbsp;

y en la interfaz de Tiempo Real en Google Analytics así:

img

### Eventos dinámicos en Google Tag Manager

Te imaginas una etiqueta que recoge dinámicamente todos los valores según la tipología de clic, formulario o lo que sea y lo podría diferenciar si  el elemento tal y cuál?

Bueno vamos por partes, necesitamos primero definir la regla del **dataLayer. **

En este caso la etiqueta personalizada de HTML con esta lineas de código:

<pre>&lt;script&gt;&lt;br /&gt;
var dataLayer = window.dataLayer || [];&lt;br /&gt;
dataLayer.push({&lt;br /&gt;
"event" : "linkContact",&lt;br /&gt;
"eventCategory" : "", //puedes crear un nombre fácil de recordar para esto tipo de acciones, en este caso optaría para ClickContactLink&lt;br /&gt;
"eventAction" : "", //puedes crear una tabla donde recoge los valores del protocolo y lo transforma en Acción, te acuerdas la variable&lt;br /&gt;
"eventLabel" : "" //aquí también es sencillo, puedes recoger un dato multiple, el valor (email, telefono, whatasapp y la página vista, ejemplo&lt;br /&gt;
});&lt;br /&gt;
&lt;/script&gt;</pre>

Para ejemplo sería así:

<p style="text-align: left;">
  <pre>&lt;br /&gt;
"eventCategory": "ClickEvent",&lt;br /&gt;
"eventAction" : "{{Click Text}}",&lt;br /&gt;
"eventLabel" : "{{Click URL}}"&lt;br /&gt;
</pre>
</p>

La primera linea de código nos valida el dataLayer como variable, si existe o está vacía, así que la confirmamos nuevamente, y con la acción **push **enviamos nueva información.

La segunda linea es generar un **evento **en este caso asignamos un valor para luego recuperarlo **linkContact**, en mi caso.

Las siguientes lineas asignamos los parámetros de eventos de GA, personalizados en su caso, y le asignamos los valores.

El **Activador** en este caso será nuestro click en url con protocolo: tel, mailto, whatsapp (son para eventos de llamadas), he realizado algo muy particular, puedes o bien seleccionar {{Click URL}} o bien crear una variable personalizada **tipo URL > Protocolo > desde {{Click URL}}**.

[<img class="aligncenter size-medium wp-image-420" src="https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-300x141.png" alt="" width="300" height="141" srcset="https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-300x141.png 300w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-768x361.png 768w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-1024x482.png 1024w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-260x122.png 260w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-50x24.png 50w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb-150x71.png 150w, https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb.png 1152w" sizes="(max-width: 300px) 100vw, 300px" />][2]

[<img class="aligncenter size-medium wp-image-421" src="https://www.marcusrb.com/img/2018/04/click-url-protocolo-300x237.png" alt="" width="300" height="237" srcset="https://www.marcusrb.com/img/2018/04/click-url-protocolo-300x237.png 300w, https://www.marcusrb.com/img/2018/04/click-url-protocolo-185x146.png 185w, https://www.marcusrb.com/img/2018/04/click-url-protocolo-50x39.png 50w, https://www.marcusrb.com/img/2018/04/click-url-protocolo-95x75.png 95w, https://www.marcusrb.com/img/2018/04/click-url-protocolo.png 577w" sizes="(max-width: 300px) 100vw, 300px" />][3]

de otro lado prepararé para cada uno de los parámetros del dataLayer, unas variables personalizadas tipo **dataLayer:**

**eventCategory**

[<img class="aligncenter size-medium wp-image-423" src="https://www.marcusrb.com/img/2018/04/eventcategory-datalayer-300x233.png" alt="" width="300" height="233" srcset="https://www.marcusrb.com/img/2018/04/eventcategory-datalayer-300x233.png 300w, https://www.marcusrb.com/img/2018/04/eventcategory-datalayer-188x146.png 188w, https://www.marcusrb.com/img/2018/04/eventcategory-datalayer-50x39.png 50w, https://www.marcusrb.com/img/2018/04/eventcategory-datalayer-97x75.png 97w, https://www.marcusrb.com/img/2018/04/eventcategory-datalayer.png 516w" sizes="(max-width: 300px) 100vw, 300px" />][4]

**eventAction**

[<img class="aligncenter size-medium wp-image-427" src="https://www.marcusrb.com/img/2018/04/eventoaction-datalayer-300x236.png" alt="" width="300" height="236" srcset="https://www.marcusrb.com/img/2018/04/eventoaction-datalayer-300x236.png 300w, https://www.marcusrb.com/img/2018/04/eventoaction-datalayer-185x146.png 185w, https://www.marcusrb.com/img/2018/04/eventoaction-datalayer-50x39.png 50w, https://www.marcusrb.com/img/2018/04/eventoaction-datalayer-95x75.png 95w, https://www.marcusrb.com/img/2018/04/eventoaction-datalayer.png 522w" sizes="(max-width: 300px) 100vw, 300px" />][5]

**eventLabel**

[<img class="aligncenter size-medium wp-image-424" src="https://www.marcusrb.com/img/2018/04/eventlabel-datalayer-300x250.png" alt="" width="300" height="250" srcset="https://www.marcusrb.com/img/2018/04/eventlabel-datalayer-300x250.png 300w, https://www.marcusrb.com/img/2018/04/eventlabel-datalayer-175x146.png 175w, https://www.marcusrb.com/img/2018/04/eventlabel-datalayer-50x42.png 50w, https://www.marcusrb.com/img/2018/04/eventlabel-datalayer-90x75.png 90w, https://www.marcusrb.com/img/2018/04/eventlabel-datalayer.png 481w" sizes="(max-width: 300px) 100vw, 300px" />][6]

&nbsp;

Una vez tengamos las variables creadas, nos falta solo rellenar las informaciones dentro de nuestra etiqueta de Google Analytics que teníamos antes, y aplicamos las personalizaciones dinámicas, así:

[<img class="aligncenter size-medium wp-image-428" src="https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb-300x265.png" alt="" width="300" height="265" srcset="https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb-300x265.png 300w, https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb-165x146.png 165w, https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb-50x44.png 50w, https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb-85x75.png 85w, https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb.png 681w" sizes="(max-width: 300px) 100vw, 300px" />][7]

Su activador será el evento personalizado **linkContact **que se lanzará desde el dataLayer anteriormente creado, con lo cuál solo en clic en enlaces de llamadas con unos determinados protocolos, nos dará este evento, así que la creación del activador será así:

[<img class="aligncenter size-medium wp-image-425" src="https://www.marcusrb.com/img/2018/04/evento-personalizado-300x216.png" alt="" width="300" height="216" srcset="https://www.marcusrb.com/img/2018/04/evento-personalizado-300x216.png 300w, https://www.marcusrb.com/img/2018/04/evento-personalizado-203x146.png 203w, https://www.marcusrb.com/img/2018/04/evento-personalizado-50x36.png 50w, https://www.marcusrb.com/img/2018/04/evento-personalizado-104x75.png 104w, https://www.marcusrb.com/img/2018/04/evento-personalizado.png 585w" sizes="(max-width: 300px) 100vw, 300px" />][8]

Una vez tengamos todo, realizamos nuevamente una actualización del nuestro workspace y actualizamos el sitio web y lo que se mostrará será lo siguiente:

[<img class="aligncenter size-medium wp-image-426" src="https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb-300x161.png" alt="" width="300" height="161" srcset="https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb-300x161.png 300w, https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb-260x139.png 260w, https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb-50x27.png 50w, https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb-140x75.png 140w, https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb.png 552w" sizes="(max-width: 300px) 100vw, 300px" />][9]

[<img class="aligncenter size-medium wp-image-430" src="https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb-300x146.png" alt="" width="300" height="146" srcset="https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb-300x146.png 300w, https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb-260x127.png 260w, https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb-50x24.png 50w, https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb-150x73.png 150w, https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb.png 717w" sizes="(max-width: 300px) 100vw, 300px" />][10]

[<img class="aligncenter size-medium wp-image-434" src="https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-300x120.png" alt="" width="300" height="120" srcset="https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-300x120.png 300w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-768x308.png 768w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-1024x410.png 1024w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-260x104.png 260w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-50x20.png 50w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-150x60.png 150w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1-1280x517.png 1280w, https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1.png 1291w" sizes="(max-width: 300px) 100vw, 300px" />][11]

Esto es todo, una pequeña muestra de lo que podemos realizar con Google Tag Manager dinámicamente y con una buena dosis de planificación podemos inclusive crear funciones tipo **if &#8211; else **con variables personalizadas, un ejemplo? Del tipo acciones dentro de una página que en base a unos activadores particulares, y reglas o condiciones activaríamos unos eventos dinámicos.

Cualquier duda que tengan, pueden enviarme un mensaje y lo miramos, juntos , gracias y hasta el próximo post.

&nbsp;

 [1]: https://www.marcusrb.com/img/2018/04/comportamiento-eventos-google-analytics-marcusrb.png
 [2]: https://www.marcusrb.com/img/2018/04/activador-linkcontact-marcusrb.png
 [3]: https://www.marcusrb.com/img/2018/04/click-url-protocolo.png
 [4]: https://www.marcusrb.com/img/2018/04/eventcategory-datalayer.png
 [5]: https://www.marcusrb.com/img/2018/04/eventoaction-datalayer.png
 [6]: https://www.marcusrb.com/img/2018/04/eventlabel-datalayer.png
 [7]: https://www.marcusrb.com/img/2018/04/ga-evento-dinamico-etiqueta-marcusrb.png
 [8]: https://www.marcusrb.com/img/2018/04/evento-personalizado.png
 [9]: https://www.marcusrb.com/img/2018/04/evento-personalizado-eventos-dinamicos-marcusrb.png
 [10]: https://www.marcusrb.com/img/2018/04/vista-previa-debug-gtm-eventos-dinamicos-marcusrb.png
 [11]: https://www.marcusrb.com/img/2018/04/tiempo-real-ga-eventos-dinamicos-marcusrb-1.png
