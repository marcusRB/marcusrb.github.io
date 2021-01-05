+++
title = "Impulsa tu tienda online con el Enhanced Ecommerce de Google"
date = 2019-04-10T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/impulsa-tu-tienda-online-enhanced-ecommerce-google"
canonical = "https://www.paradigmadigital.com/dev/enhanced-ecommerce-google/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["google analytics", "medición de comercio electronico", "enhanced ecommerce"]
categories = ["Analítica Digital"]
authors = ["marcusRB"]



# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++


**Los datos procesables son la clave del éxito para una tienda de comercio electrónico**. Si has estado ejecutando un negocio de eCommerce, es posible que ya sepas la importancia del marketing de comercio electrónico basado en datos.

En este post vamos a ver **los beneficios del proceso de configuración del seguimiento de comercio electrónico en Google Analytics**. Un proceso que también se puede aplicar incluso si hablamos de una tienda en su estado más inicial. ¡Empezamos!

![][1]

## Seguimiento de datos, clave en la optimización de un eCommerce

La configuración del seguimiento de comercio electrónico **es una necesidad para mantener un control del rendimiento de cualquier tienda**.

Mientras que **el seguimiento de comercio electrónico básico** (o Classic Ecommerce) en Google Analytics nos muestra qué productos están teniendo éxito y cuáles no, en realidad, **no proporciona información clave sobre el "viaje real" del cliente**, o como estamos acostumbrados a definirlo: **"Customer Journey"**.

Por lo tanto, el misterio de por qué algunos productos tienen más éxito que otros sigue sin resolverse.

Aquí es donde el análisis de comercio electrónico mejorado, o **Enhanced Ecommerce** de Google, **nos permite sumergirnos en el mar de datos** de una tienda y extraer todo lo que necesitamos para **analizar el comportamiento en nuestro sitio web**.

## ¿Por qué es tan importante el Enhanced Ecommerce?

Si nos ponemos en el lugar del cliente, vemos que hay varias situaciones que pueden darse antes de realizar una compra. El cliente puede agregar elementos a una lista de deseos antes de comprar e incluso visitar la página del producto 10 veces para revisar los detalles del producto a fondo.

Sus acciones podrían ser impulsadas por diversas tendencias, como la comparación de precios de productos en sitios web de la competencia, la espera de un precio con descuento, la espera de que un producto vuelva a estar en stock, etc.

Para los comercializadores o desarrolladores de negocios **es necesario obtener información sobre el Customer Journey** (o "viaje del cliente") **para determinar qué área del negocio necesita optimización**.

> _El comercio electrónico mejorado nos permite obtener datos procesables que se generan al rastrear todo el recorrido del cliente._

## ¿Qué nos aporta el seguimiento de comercio electrónico mejorado?

La analítica tradicional de comercio electrónico se basaba en un objetivo que debía cumplirse sí o sí (en la mayoría de los casos, una compra realizada) para generar datos como:

* La tasa de conversión de un producto.
* Valor total de ventas del producto.
* Cantidad vendida.
* Impresiones totales.

Con el comercio electrónico mejorado no tenemos que estar limitados en términos de su seguimiento. **Nos permite rastrear los detalles más pequeños** que nos ayudarán a optimizar nuestra tienda.

Esto incluye:

* Comportamiento del cliente.
* Compromiso con el cliente.
* Informes de rendimiento del producto.
* Tasas de abandono del carro y causas.
* Cupón y descuento de rendimiento.
* Informes detallados de afiliados.
* Informes de reembolso.
* Informes de marketing de contenidos.

**El comercio electrónico mejorado** no solo nos permite controlar el rendimiento de los productos y analizar el embudo de ventas; también **tiene como objetivo proporcionarnos información mucho más profunda sobre el comportamiento del cliente** para poder optimizar ese embudo mejorando así la experiencia del usuario y nuestros planes de marketing.

![][2]

## ¿Qué datos se recogen?

Para ayudar a los desarrolladores y analistas a identificar qué tipo de datos queremos rastrear, Google los ha agrupado en **cuatro categorías**:

* **Datos de impresión**: información completa sobre un producto que ha sido visto por un cliente.
* **Datos del producto**: información sobre los productos individuales que se visualizan.
* **Datos de promoción**: información sobre los elementos promocionales/banners que ha clicado en tu sitio web.
* **Datos de acción**: información sobre todas las acciones de comercio electrónico que tienen lugar en el sitio web.

Podemos consultar [la guía de seguimiento de Google Analytics][3] para obtener una lista detallada de todos los tipos de datos individuales que se pueden rastrear en cada una de estas categorías.

Ahora que ya sabemos qué podemos rastrear con Google Analytics, el siguiente paso es implementar **Enhanced Ecommerce Analytics** y usarlo **para enviar los datos de análisis a Google Analytics desde nuestra tienda**.

A partir de aquí puede que el proceso empiece a ser un poco «tedioso», especialmente cuando se está ejecutando el análisis de una tienda con una enorme base de datos de productos y categorías.

### Implementación del comercio electrónico mejorado

A día de hoy hay innumerables tiendas que aún consideran el comercio electrónico mejorado como una opción secundaria, por lo que pierden numerosos datos valiosos que pueden llevar su estrategia de marketing al siguiente nivel.

Lo más probable es que la razón sea que el proceso de configuración es un poco complejo, y sí, también exige conocimientos básicos de JavaScript o jQuery.

### Requisitos

El análisis de comercio electrónico mejorado **solo se puede activar utilizando Universal Analytics o Google Tag Manager** (GTM).

> **NOTA**: la nueva versión de Universal Analytics sigue existiendo, solo que para una implementación manual ha pasado a hacerse con otro plugin, global tag o gtag.js, que es similar a la de Google Tag Manager, pero directamente vía código. [Aquí podrás obtener más información sobre la Global tag de Analytics][4].

Si bien la mayor parte de tiendas online ya se ha movido a Universal Analytics (si no es el Administrador de etiquetas de Google), algunos todavía están usando la analítica clásica. Si tú eres uno de ellos, es hora de que te actualices y descubras lo que te has estado perdiendo.

## Activamos el EEC (Enhanced Ecommerce) para Universal Analytics

Si utilizamos Universal Analytics, tendremos que activar el EC.js o el complemento de comercio electrónico mejorado manualmente.

El código del complemento que lo activa se especifica justo después de nuestro código UA de Google Analytics, seguido de comandos de complemento para rastrear los datos y enviarlos a Google Analytics.

Durante la fase de implantación, el código quedaría de la siguiente manera:

**PASO 1**. El primer paso es definir la propiedad, como ya tenemos el script principal ya tenemos definida esta parte:



    ga('create', 'UA-XXXXX-Y', 'auto');


**PASO 2**. Definimos el plugin ecommerce.js:



    ga('require', 'ec');


**PASO 3**. Ahora podemos seguir con las demás mediciones (ejemplos):



    ga('ec:addImpression', {
    	...
    });




    ga('ec:addProduct', {
    	...
    });
    // seguido por la acción
    ga('ec:setAction', 'click', {       // click action.
      'list': 'Search Results'          // Product list (string).
    });


**PASO 4**. Sucesivamente se enviarán las acciones con el comando send:



    ga("send", ...);


Este ejemplo es para enviar eventos con **Categoría**: homepage y **Acción****:** click



    ga("send", "event", "homepage", "click", "");


En este enlace podrás obtener más información sobre la estructura de los [eventos de Google Analytics.][5]

Es necesario implementar los códigos exactamente en el mismo orden, de lo contrario, el seguimiento fallará.

![][6]

Este es un ejemplo del script del plugin ecommerce.js extraído directamente [en la web de testing][7]

## Activamos el EEC (Enhanced Ecommerce) para Google Tag Manager

Si hemos configurado la analítica con Google Tag Manager, entonces el proceso para configurar el comercio electrónico mejorado se vuelve un poco más complejo y al que hay que agregarle algunos pasos más.

![][8]

La implementación del código será a través de dataLayer, al igual que la globalTag.js, pero en la interfaz es mucho más sencilla de gestionar.

La idea fundamental de usar de GTM para un seguimiento mejorado es configurar varias capas de datos (dataLayers) en nuestro sitio web que **almacenen temporalmente los datos representados en cada página de la tienda**.

Estas capas de datos están codificadas en varios elementos de la página en toda la tienda, por ejemplo: clic del producto, agregar al carrito, eliminar del carrito, agregar a la lista de deseos, etc.

![][9]

Ejemplo de dataLayer en la web de testing anterior: vemos que después del evento addToCart tenemos un array o listado de objetos, en formato JSON, par de claves y valor, específico de productos, título, precio, categoría, etc.

Estos datos luego son recuperados por las variables predefinidas en nuestra cuenta GTM usando etiquetas que se activan en función de los desencadenantes que definimos en nuestra cuenta de Google Tag Manager.

A partir de estas variables, **los datos de seguimiento se envían de forma acumulativa a Google Analytics, donde se convierten en métricas procesables**.

La guía para desarrolladores de GTM resume las capas de datos específicas requeridas para las diferentes páginas de un sitio web, algo que todos deben seguir para configurar las capas de datos relevantes.

> **NOTA**: Es importante tener claro que existen una variables de Tag Manager así como de Analytics que son asignadas, con lo cual no debemos alterar su nomenclatura.

Una vez que hayamos codificado las capas relevantes para nuestra tienda de comercio electrónico y hayamos configurado los activadores y etiquetas relevantes para recuperar datos de esas capas de datos, habilitamos los informes mejorados en nuestro GA o cuenta de administrador de etiquetas y configuramos las etiquetas de verificación relevantes para rastrear los datos.

![][10]

Debemos asegurarnos de agregar etiquetas de pago significativas, ya que eventualmente se utilizarán para determinar la tasa de éxito del pago.

Con estas etiquetas, podemos hacer un seguimiento del comportamiento de nuestros clientes en diferentes pasos de un proceso de pago.

Estos datos se recopilan y se muestran en la opción de comportamiento de pago como se muestra a continuación:

![][11]

Si seguimos el enfoque de Universal Analytics o el de Google Tag Manager para habilitar el seguimiento de comercio electrónico mejorado, terminaremos codificando los fragmentos de seguimiento (ya sea para GA o GTM).

Hacemos hincapié, una vez más, en el almacén de demostración de Google para resaltar cómo las diferentes áreas requieren que las capas de datos se configuren para recibir información de la tienda de comercio electrónico en GA.

### Listado de productos o categorías

![][12]

### Página de detalle del producto

![][13]

## Gestión de una tienda online

Si bien la tienda de demostración anterior solo consistía en una pequeña cantidad de datos que era fácil de comprender, tratar con una tienda de comercio electrónico compleja incrementa la dificultad en muchos pliegues manuales.

Como todo el proceso implica la implementación del fragmento de seguimiento correcto o la capa de datos en toda la tienda, puede ser muy difícil configurarlo de manera impecable. Hay dos maneras de hacer esto:

### 1\. Uso de un complemento de terceros para su CMS de comercio electrónico

Los principales sistemas CMS ya cuentan con complementos en sus mercados que pueden hacer el trabajo automáticamente. Simplemente instalando el complemento e integrándolo con tu cuenta de Google Analytics, puedes habilitar o inhabilitar las impresiones, acciones o elementos que deseas rastrear.

Algunos complementos confiables con los que hemos trabajado en el pasado reciente incluyen:

### 2\. Implementando manualmente las capas de datos

A pesar de que las plataformas principales brindan soporte para complementos, es posible que encontremos un escenario en el que nuestro CMS aún no tenga un complemento (por ejemplo, BigCommerce o OpenCart), o que haya creado una tienda de comercio electrónico personalizada utilizando un Framework como Codeigniter o YII.

En tales casos, recomendamos contratar desarrolladores profesionales para implementar los fragmentos de código o las capas de datos en ubicaciones precisas para la tienda.

## Es el momento de testear con Google Tag Manager

Es esencial probar su implementación antes y después de implementarla en el sitio web en vivo, ya que siempre existe la posibilidad de un error subyacente con la implementación de comercio electrónico mejorado.

### Realizar un testing con el modo Vista Previa en Tag Manager:

El Administrador de etiquetas de Google presenta un modo de vista previa y depuración, que permite tener un editor de consola en la parte superior del sitio web en el que queremos publicar nuestro contenedor GTM.

La consola solo es visible en el navegador en el que hayamos habilitado el modo Vista previa.

### Con el modo Vista previa y Depuración, obtienes acceso a los 4 elementos de una cuenta GTM:

1. **Línea de tiempo del evento**: enumera todos los eventos de carga de página que se producen hasta que la página del punto se representa dentro del navegador.
2. **Etiquetas**: enumera todas las etiquetas que se agregaron en la página, las que se dispararon y las que fallaron.
3. **Variables**: muestra información detallada sobre las diferentes variables que recopilan datos en el evento seleccionado, incluido el tipo de variable, el tipo de datos devueltos y el valor resuelto.
4. **Capa de datos**: ofrece una vista previa de la capa de datos exacta junto con todos los datos que se generaron para el evento específico.
5. **Errores**: eventualmente se visualizarán los errores globales o locales tanto de código JS que de nuestro complemento.

![][14]

### Probando el seguimiento mejorado del comercio electrónico después de publicarlo

El seguimiento de las pruebas, después de publicar la configuración de Google Tag, también es tan importante como probarlo antes de activarlo.

La mejor manera de probar la configuración del Administrador de etiquetas de Google y de verificar si sigue suministrando datos a Google Analytics de manera efectiva o no es mediante la instalación de la extensión [Google Tag Assistant Chrome][15].

La extensión permite grabar la sesión en el sitio web y genera un informe completo sobre todos los eventos que se activaron en Google Analytics.

![][16]

Una vez que nuestros casos de prueba generen resultados positivos, estamos listo para publicar nuestro contenedor GTM. Ahora todo lo que necesitamos hacer es eliminar el código de seguimiento de comercio electrónico tradicional de la página de pago y publicar sus configuraciones de etiquetas.

## Conclusión

Como punto de partida de este blog, siempre sugeriríamos un complemento si tu CMS lo admite. La implementación del comercio electrónico mejorado de Google en una tienda que comprende múltiples categorías y productos definitivamente dará algún que otro dolor de cabeza incluso a los desarrolladores más experimentados.

Es todo un reto. Sin embargo, vale la pena todo el esfuerzo, ya que los resultados traerán a la luz algunas ideas clave que ayudarán a tomar decisiones comerciales de manera más efectiva.

[1]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/comercio-electronico-mejorado-google.jpg
[2]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-2.png
[3]: https://developers.google.com/analytics/devguides/collection/analyticsjs/enhanced-ecommerce?hl=es-419#ecommerce-data
[4]: https://developers.google.com/analytics/devguides/collection/gtagjs/enhanced-ecommerce?hl=es-419
[5]: https://developers.google.com/analytics/devguides/collection/analyticsjs/events?hl=es-419
[6]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-1.png
[7]: https://enhancedecommerce.appspot.com/
[8]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-3.jpg
[9]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-3.png
[10]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-4.png
[11]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-5.png
[12]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-6.png
[13]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-7.png
[14]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-2.jpg
[15]: https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=es-419
[16]: https://www.paradigmadigital.com/wp-content/uploads/2019/03/enhanced-ecommerce-google-1.jpg


(FUENTE ORIGINAL)[https://www.paradigmadigital.com/dev/enhanced-ecommerce-google/]
