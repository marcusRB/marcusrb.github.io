+++
title = "[Guía] Personalizar el pixel de Facebook Ads en Google Tag Manager"
date = 2018-10-14T13:00:19+02:00
url = "/guia-personalizar-pixel-facebook-ads-google-tag-manager"
draft = false
summary = "La guía completa de como personalizar el pixel de Facebook Ads a través de Google Tag Manager y sus variables de comercio electrónico mejorado."
robots = "index, follow"


# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["MarcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["pixel facebook ads","google tag manager","creación eventos"]
categories = ["Tag Manager","FacebookAds"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "https://unsplash.com/photos/r02wxT3-PYw"
caption = "[Will Francis](https://unsplash.com/photos/r02wxT3-PYw)"
preview = true


+++

{{% toc %}}

## ¿Qué es y a que sirve el píxel de Facebook?</span>

Tal como indicando en la web oficial de Facebook:

> *El píxel de Facebook es una herramienta de análisis con la que podrás medir la eficacia de tu publicidad. Puedes usar el píxel de Facebook para conocer las acciones que las personas realizan en el sitio web y llegar a los públicos que te interesan*

Si pensamos que normalmente se utilizan diferentes píxeles de conversiones, para medir la eficacia de **acciones de marketing** (Tradedoubler, Doubleclick, Google Ads, Remarketing), acciones de **experiencia de usuario y CRO** (Hotjar, CrazyEgg, Mouseflow, VWO), además de pixel de seguimiento de otras interacciones y de performance, su implementación podría ser un obstáculo, entre la solicitud al departamento de IT, o su personalización constante, entraríamos en un campo minado.

Como siempre digo y lo repito, por suerte que los administradores de etiquetas, cómo **Google Tag Manager**, fueron creados para realizar nuestras tareas más sencillas*, ahorrar tiempo y manejar con total autonomía tareas también más complejas de medición y de seguimiento. No estoy hablando solo de conversiones, también gestión más avanzadas de estudio de datos de experiencia de usuario y mejora del CRO.

<small>*\*Hablando de "sencillas" obviamente daré por hecho que se necesita conocimiento más que un nivel básico de diseño web, hoja de estilo CSS, y JavaScript, en caso contrario va a ser complicado. No se trata solo de copiar y pegar códigos, sino entender su funcionamiento*</small>.

### Más informaciones sobre el píxel de Facebook Ads

[Configurando el píxel de Facebook][1] es colocar su código en el encabezado del sitio web. Cuando alguien visita tu sitio web y realiza una acción (por ejemplo, completar una compra), el píxel de Facebook se activa y registra esta acción. De esta forma, sabrás cuándo un cliente realiza una acción y podrás llegar a él de nuevo a través de futuros anuncios de Facebook.

#### Las ventajas de utilizar el pixel de conversiones

Existen varias formas de usar los datos obtenidos con el seguimiento del píxel de Facebook para perfeccionar la estrategia publicitaria en Facebook.

El píxel de Facebook permite hacer lo siguiente:

- Llegar a las personas adecuadas
- Encuentra nuevos clientes o personas que visitaron una página específica o realizaron una acción que te interesa en tu sitio web. Además, crea públicos similares para llegar a más personas que son parecidas a tus mejores clientes.
- Genera más ventas
- Configura pujas automáticas para dirigirte a personas con mayor probabilidad de realizar alguna acción relevante para ti, por ejemplo, hacer una compra.
- Medir los resultados de los anuncios
- Mira cuánto éxito tuvo el anuncio según los resultados que generó. Puedes consultar información como las conversiones y las ventas obtenidas.

### Vamos con la implementación del pixel principal de evento Page Views

Para que todo funcione correctamente, y con esto digo que recoge las variables dinámicamente y no dejando a medias el potencial que pueda tener el pixel, pero incluso su peligro de proporcionar muchos datos a Facebook, vamos por pasos.

Necesitamos el pixel base que será la principal de páginas vistas y su implementación recomendada es [como se muestra](https://www.facebook.com/business/help/651294705016616).

Siempre optamos por una implementación a medida, y no guiada, no queremos bajo ningún concepto *ser ayudados* por Facebook, ya que compartir inclusos más datos desde Tag Manager, no es una buena idea.

Una vez en nuestro contenedor de Tag Manager comienza la parte más divertida:

- Creamos una etiqueta tipo __HTML personalizado__ y añadimos nuestro pixel, ya sabes porque, verdad? De momento FacebookAds no tiene ningún acuerdo con Google sobre tag de 3rd party, así que tenemos que personalizarlo cómo uno script se tratara.

<script src="https://gist.github.com/marcusRB/bac26533364f9a016708eee3be66c119.js"></script>

- Y no olvidar de realizar dos tareas más, sacar el noscript en una __etiqueta Imágen personalizada__ y la otra indicar que solo se podrá realizar cuando el javascript está deshabilitado. Esta parte la explicaré con calma en otra ocasión.

También podemos personalizar nuestro *pixel ID* con una variable del tipo **constante** y así tener más *dinamismo* en nuestras personalizaciones.

**TRIGGER o Activador**
Todas las páginas vistas


### Eventos estándar

Tal como nos sugiere la misma guía de Facebook Developers, ahora podemos utilizar nuestras personalizaciones con la función

<pre>
  fbq('track')
</pre>

y nuestros eventos tendrán un nombre ya asignados según como se muestra en esta [tabla](https://developers.facebook.com/docs/facebook-pixel/implementation/conversion-tracking) que mostraré a continuación.

Cada uno de los eventos tendrá **propiedades** tipo obligatorias y otras opcionales, sirven basicamente para recoger informaciones de nuestros usuarios (comportamientos, usabilidad, conversiones, comercio electrónico, etc), obviamente si lo mismo lo recogemos desde el Enhancend Ecommerce (Comercio Electrónico mejorado) para Google Analytics, las mismas variables serán enviadas a Facebook Analytics. Lógico, no?

***Algo muy importante***
Cada una de las siguientes etiquetas personalizadas, tendrá que tener una lógica de secuencialidad:
 - Cada etiqueta tendrá que cargarse **DESPUÉS** de la principal, ya que el *core* del código sigue teniendola la anterior, mientras en la personalizada solo tendrá una porción del código y sus variables.


[<img class="aligncenter" src="/img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png" alt="" width="992" height="607" src set="/img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png 992w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-300x184.png 300w, /img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png 768w, /img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png 239w, /img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png 50w, /img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png 123w" sizes="(max-width: 992px) 100vw, 992px" />](/img/2018/10/secuenciacion etiquetas pixel facebook ads en tag manager - marcusrb.png)

&nbsp;

### Creación de variables personalizadas
Una cosa no meno importante es crear ahoras las __variables personalizadas__, en mi caso de comercio electrónico, que para utilizarlas en todas las etiquetas con los parámetros, más o menos se *reciclarán* las mismas una y otra vez para el resto de eventos.

- __value__: será el valor del producto / servicio. será tratado como FLOAT (con decimales), y no tendrá comillas. Su código tendrá un aspecto similar (depende de nuestro dataLayer):

<script src="https://gist.github.com/marcusRB/d4832b2ee910ddcffe74d566f7a339f4.js"></script>

- __currency__: por defecto será la moneda utilizada en el comercio electrónico, y en caso de multidivisa, entonces podemos crear una regla, normalmente este valor variable retornará un valor único, EUR, USD, GBP, JPY, etc.
Podemos crear algo así:

__1a__
<pre>
  var dlv = window.google_tag_manager["{{Container ID}}"].dataLayer.get('ecommerce');
  return (dlv.currencyCode);
</pre>

o con la captura de exepciones sería:

<pre>
  try{
    var dlv = window.google_tag_manager["{{Container ID}}"].dataLayer.get('ecommerce');
    return (dlv.currencyCode);
  }catch(e){
    window.console(e);
  }
}
</pre>

__2__
o mejor todavía con la **variable dataLayer** (variable de capa de datos):

> ecommerce.currencyCode

Como puedes ver existen muchas formas de extraer las variables, recuerdas de nombrarlas correctamente

1. cJS - currencyCode
2. DLV - currencyCode

Fácil verdad? :-)

- __productName__: Capturar el nombre de producto, será sencillo con la regla de dataLayer, pero cuando se trata de recoger más valores y inserirlo en un listado podemos utilizar un algoritmo. No todas los sitios web son iguales, ni las estructuras de URLs son iguales, así que en mi caso he utilizado esta función:

<script src="https://gist.github.com/marcusRB/90fd00fb8faa641448862b6daaa3f4e9.js"></script>

<small>La explicación sobre el cómo está construido depende también de otros factores, por decirlo de una manera si queremos utilizar la misma función para una tarea o varias (yo he optado para la segunda opción y una regla para el resto, para no triplicar el trabajo.)</small>

- __categoyName__: Al igual que el anterior, aquí recogemos los nombres de las categorías:
<script src="https://gist.github.com/marcusRB/7b7653f959ee0584fcceb808e4e87518.js"></script>

<small>Al igual que en productos, depende como se tiene la estructura del dataLayer, las variables de URLs o la estructura del sitio web para recoger unos valores u optar por otra manera de *scraping*</small>

- __productID__: repitiendo lo mismo concepto, utilizando otro parámetro, esta vez extraemos el valor ID del producto, y sucesivamente para la categoría.

<script src="https://gist.github.com/marcusRB/fd9902fc57ea7f978a3747f66973c718.js"></script>

- __categoryList__: esta variable tendrá un formato con separador por parentesis angular '>', en lugar de comas ',', así que en este caso creamos un listado y al final juntamos las categorías de varios niveles (en mi caso hasta 6), con este símbolo.

<script src="https://gist.github.com/marcusRB/b0c22584e96c3054f9866976dab09df7.js"></script>

El resto de variables personalizadas serán del tipo:
- addToCart
- removeFromCart
- checkoutEvents (AddPaymentInfo, DeliveryMethod, checkoutStep, DiscountCode, etc.)

Existen otras variables, las que definen reglas para nuestro Analytics de Facebook.


La primera será:
- __product_catalog_id__, esta será creada en nuestro Administrador de publicidad de FacebookAds como repositorio de varios pixel y creatividades. Directamente cremos una variable del tipo constante y le añadimos el valor correspondiente, será una alfanumerico, y nada más.

La otra:
- __content_type__: será por defecto marcado por Facebook cuál *product* o *product_group*

&nbsp;


#### Evento estándar ProductList
Cómo el principal que muestra todas las páginas vistas, apunto donde está el pixel principal, este evento mostrará los elementos visualizados en una página de servicios o de productos. Al igual que las impresiones del comercio electrónico utilizaremos exactamente el mismo trigger, aunque tendríamos que trabajar con las variables anteriormente creadas.

<script src="https://gist.github.com/marcusRB/903eac8f254425bb352a6ab453abae4a.js"></script>

**TRIGGER o Activador**
Todas las páginas que incluyen listados de productos y/o categorías. También podemos utilizar una evento personalizado de *impressions* pero sería crear más reglas y condiciones. Recuerdas que tienes que adaptar la etiqueta y variables, así como los activadores a tu sitio web, y en este último caso, si ti es imposible realizarlo, hay que utilizar el sentido común de un buen desarrollador: NO LO HAGAS complicado.


&nbsp;
#### Evento estándar ViewContent
En este caso será la ficha de nuestro producto o servicio seleccionado, al tener ya un evento personalizado en Tag Manager que está recogiendo esta acción, utilizaremos la misma.

<script src="https://gist.github.com/marcusRB/4a8c784930fb38f910c056adb88b314a.js"></script>

**TRIGGER o Activador**
El activador será el evento personalizado ya declarado del comercio electrónico mejorado *productClick*. En caso de no tenerlo correctamente configurado desde el dataLayer, tenemos que crear una regla del tipo __clickEvent__ o __linkClick__. En todos casos recuerdes que tener el dataLayer del enhanced ecommerce bien implementado te ahorras mucho trabajo.


&nbsp;


#### Evento estándar AddToCart
Este será un evento personalizado ya creado en Comercio Electrónico Mejorado, *addToCart*, así que recuperaremos este y lo enviaremos a Facebook Ads en su activador. Puede verificarse tanto en Página inicial, de categorías, de productos, de búsqueda, incluso en páginas de MyAccount (listado de favoritos, compras recientes, etc.)

<script src="https://gist.github.com/marcusRB/bd3c095398f52c2553c005f2ccb42c65.js"></script>

**TRIGGER o Activador**
Reutilizar el Custom Event *addToCart*, este se producirá siempre y cuando hay un evento en un botón en 'Añadir al Carrito'.
Activadores > Eventos personalizados > addToCart (fijarse en las letras capitalizadas desde tu consola)

En caso no lo tengas, podrías utilizar un método de *scraping* de evento __clickEvent__, buscarías la .class o #id del botón, siempre y cuando este no sea diferente por cada tipología de acción, y recogerías su VALUE.


&nbsp;


#### Evento estándar AddToWishlist
Este evento no existe como tal en Comercio Electrónico mejorado, así que será un evento de captura de acciones, a través de __linkClick__ o __clickEvent__. Las condiciones pueden ser diferentes, las reglas y variables dependen de como esté tu botón, así que utilizando el metodo *scraping*, podemos realizarlo.

<script src="https://gist.github.com/marcusRB/d406d83e291c2f9c610920470c806978.js"></script>

**TRIGGER o Activador**
En caso que no tengas un evento personalizado, podrías utilizar un método de *scraping* de __clickEvent__, buscarías la .class o #id del botón, siempre y cuando este no sea diferente por cada tipología de acción, y recogerías su VALUE. Es importante bypassare también la información del nombre producto, categoría, ID, precio, variación...así que esta tarea te llevará un buen rato para recoger todas las informaciones. Además es reutilizable para el resto de etiquetas de conversiones de terceros, además para trabajos de CRO y UX.

&nbsp;


#### Evento estándar Search
Este evento que tampoco existe en Google Tag Manager ya heredado del comercio eletrónico mejorado, será un evento personalizado sobre el uso del buscador interno.

<script src="https://gist.github.com/marcusRB/4fbd25f6c0f349576862be1d19077846.js"></script>

**TRIGGER o Activador**
El activador será sencillo. Si tenemos la URL con *?q=texto_introducido_buscador_interno* o similar, donde el parámetros de consulta será en mi caso la **'q'**, u otro parecido, tenemos que crear primero la variable personalizada del tipo URL y con parámetro CONSULTA. Y si este parámetro se encontrará en la URL, devolverá el valor, en este caso el término buscado. Listo!  

&nbsp;


#### Evento estándar InitiateCheckout
Este evento se produce en el momento exacto que pasamos en la *fase 1* del checkout. Si está implementado desde el comercio electrónico mejorado, tendríamos que tener un evento personalizado desde el dataLayer __checkout__. Sucesivamente, el primer paso será recogido de la siguiente manera con la __variable dataLayer__:
<pre>
  ecommerce.checkout.actionField.step
</pre>

<script src="https://gist.github.com/marcusRB/b9887a3007f3c80e041dcc436a5ad7b8.js"></script>

**TRIGGER o Activador**
Evento personalizado __checkout__ y que la condición de la variable dataLayer __STEP__ sea *1*.


&nbsp;


#### Evento estándar AddPaymentInfo
El evento de recogida del método de pago seguramente estará también recogido en el dataLayer, al igual que el anterior, este podrá ser **stepX**, dependiendo si estará situado al punto 3, 4 o lo que fuera. En caso de no tener pasos durante la fase de checkout, podemos también adoptar sistemas de recogidas a través de *páginas virtuales*, con elementos .css o #id.

<script src="https://gist.github.com/marcusRB/d7f2f9dfa5eb0a42e6bcbd9370385c8e.js"></script>

**TRIGGER o Activador**
Evento personalizado __checkoutOption__ y que la condición de la variable dataLayer __STEP__ sea *X*. Donde por *X* será el paso que lo corresponde. En caso de no tener este evento declarado en el dataLayer, podemos crear un activador de tipo __linkClick__ o de __clickEvent__.


&nbsp;


#### Evento estándar Purchase
El evento de transacción finalizada será nuestra páginas de *gracias* o lo que corresponda. En caso de tener el evento de comercio electrónico **transaction** o **purchase**, o crear uno a medida. Muchas tiendas online o páginas de servicios del tipo ecommerce, también puede estar recogiendo las informaciones de transacciones finalizadas a través del __Protocolo de Medición__ y podemos nosotros crear un dataLayer personalizado.

<script src="https://gist.github.com/marcusRB/e7f1ef540c3e12d5e28e8d1b03223a71.js"></script>

**TRIGGER o Activador**
Evento personalizado __transaction__ o __purchase__ o donde se verifique la página *thankYouPage*. Cuidado con esta página, tiene que tener la información de transacción y sus parámetros configurados.


&nbsp;

Existen otros eventos estándares para los registros, login, leads, contactos, pero estamos siempre hablando de etiquetas personalizadas que tendrán su activador un __evento personalizado__. Seguramente si estás recogiendo eventos en Google Analytics u otra plataforma, entonces simplemente puedes replicar el mismo *trigger*.

En caso de dudas, problemas con los activadores, condiciones, variables personalizadas, puedes consultarme o directamente hablarlo con el desarrollador para que pueda implementar la mayoría en un dataLayer por tí.


 [1]: https://www.facebook.com/business/help/651294705016616?helpref=faq_content
