+++
title = "[Guía] Mediciones de click desde un iframe con Google Tag Manager"
date = 2018-06-30T08:26:33+00:00
url = "/guia-mediciones-de-click-desde-un-iframe-con-google-tag-manager/"
draft = false
summary = "Un post sobre la medición de eventos, cuales clicks, conversiones, formularios, transacciones desde un iframe con Google Tag Manager."
robots = "index, follow"


# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["marcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["eventos iframe gtm","google tag manager","creación eventos"]
categories = ["Tag Manager"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "/img/GTM-iframe-260x144.jpg"
caption = ""
preview = true


+++

## Un post sobre la medición de eventos, cuales clicks, conversiones, formularios, transacciones desde un iframe con Google Tag Manager.

Seguramente ya te puesto a buscar y rebuscar sin éxito, o directamente pedir ayuda a un desarrollador.

Es lo mismo que me ha pasado a mí en más de una ocasión, hasta encontrar con varias respuestas y opciones, y gracias a Lunametrics, Simo Avaha y Measureschool, finalmente yo también puedo redactar un post sobre la medición de eventos, cuales clicks, conversiones, formularios, transacciones desde un iframe con Google Tag Manager a Google Analytics o pixel de terceros.

**OJO!** Esta guía funciona solo si tienes acceso al sitio web tanto propietario que del iframe, en tal caso, no es posible realizarlo (de momento!)

**Check 1.** No tengo acceso al módulo o al sitio web IFRAME. Lo siento, esta guía no es para ti.

**Check 2.** Tengo acceso al módulo o al sitio web IFRAME (sigues adelante)

&nbsp;

### Comprobaciones del contenedor de Google Tag Manager

Para la prueba de su correcto funcionamiento, estoy realizando el test desde un sitio web propio, un iframe interno para el mismo dominio. Más adelante veremos con uno externo y tener en consideración USER-id y CrossDomain. La idea es de registrar click o eventos: enlaces, llamadas, formularios o todo lo que podría registrar como tal y enviarlo a Google Analytics.

Diferenciamos así el **iframeParent** (el padre o el principal) y el **iframeChild** (el hijo o el huésped).

Aquí una imagen del **Parent:**

[<img class="aligncenter size-large wp-image-657" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-1024x489.png" alt="iframe parent o iframe padre" width="1024" height="489" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-1024x489.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-300x143.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-768x367.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-260x124.png 260w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-50x24.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43-150x72.png 150w" sizes="(max-width: 1024px) 100vw, 1024px" />][1]

y para comprobar el iframe **Child, **tecla de ratón derecho y como la imagen:

[<img class="aligncenter size-full wp-image-658" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39.png" alt="iframe contenedor child" width="993" height="630" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39.png 993w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39-300x190.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39-768x487.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39-230x146.png 230w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39-50x32.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39-118x75.png 118w" sizes="(max-width: 993px) 100vw, 993px" />][2]

&nbsp;

Ahora necesitaremos los accesos a los dos contenedores de Google Tag Manager:

  * Contenedor GTM **Parent**
  * Contenedor GTM **Child**

Este último en particular va a ser especial, porque realmente necesitaremos darle unas directrices y unos códigos diferentes al resto que ya tenemos en nuestro principal.

&nbsp;

### Pasos para el contenedor Google Tag Manager CHILD

Una vez creado el contenedor de Google Tag Manager para el iframe, el Child, lo implementamos como siempre solo en el iframe, sin que le pongamos etiquetas de terceros, ni Google Analytics, ya tendrá el suyo probablemente, luego, subiremos este archivo _.json_ que a continuación explicaré a que sirve.

ARCHIVO JSON

Este archivo, como el resto de <a href="https://www.marcusrb.com/recetas-de-google-tag-manager/" target="_blank" rel="noopener">&#8220;recetas&#8221; de Google Tag Manager</a>, está en formato JSON, o resumido, un contenedor con elementos, para importar directamente en nuestro Google Tag Manager, sin tener que reescribir nuevamente todas las etiquetas y códigos. Con este en particular, para un contenedor nuevo no tenemos que sobrescribir nada (si el contenedor es nuevo, no hace falta). Si ya tenemos elementos en el contenedor, entonces no tenemos que seleccionar la opción de sobrescribir.

Una vez importado el archivo entramos en la etiqueta **SENDER &#8211; postMessage **para sus comprobaciones.

[<img class="aligncenter size-large wp-image-660" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-1024x630.png" alt="muestra código iframe" width="1024" height="630" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-1024x630.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-300x185.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-768x473.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-237x146.png 237w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-50x31.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31-122x75.png 122w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31.png 1139w" sizes="(max-width: 1024px) 100vw, 1024px" />][3]

&nbsp;

Vamos a explicar en detalle esta etiqueta personalizada:

  * ejecuta una declaración **try&#8230;catch **, tal como indica el nombre, es un bloque de instrucciones para intentar (**try) **y en caso de excepción **(catch) **devuelve el error en la consola de desarrollador de nuestro navegador. <a href="https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Sentencias/try...catch" target="_blank" rel="noopener">Más info</a>
  * Asignamos la variable **postObject **del tipo _JSON.stringify_, este método convierte un valor dado en javascript a una cadena  **JSON**, opcionalmente reemplaza valores si es especificada la función `<strong><em>de reemplazo</em></strong>`, o si se especifican las propiedades mediante un array de reemplazo.
  * de un lado tenemos el **event **y lanza el propio iframe, así que como nombre he puesto _iframeACCION _(sustituye ACCION por el tipo de evento, form, link, click, video, transaction, etc), y del otro lado tengo **link **en mi caso estoy lanzado eventos de tipo _enlace_ y le asigno un nombre, una variable, cualquier cosa que quieras que mida.
      * Ej. {{CLICK URL}} &#8211; {{CLICK TEXT}}, devolverá la ruta completa del click sobre este enlace y el nombre del texto ancla.
  * mandamos el todo a la ventana principal con el método **parent.postMessage() **donde activa la comunicación entre la pantalla origen y destino, y que le enviamos los siguientes datos:
      * la variable **postObject**
      * la ruta y dominio **huésped**

&nbsp;

#### Configuración Eventos Child

Ahora bien. Podemos proceder con la configuración de los eventos en este contenedor **iframeChild, **yo voy a seleccionar por ejemplo, el vinculo a la llamada telefónica, mejor dicho aquellos usuarios que hará click en el enlace **TELÉFONO**

Activamos las variables integradas (en el caso sea nuevo el contenedor es importante tenerlos activos):

[<img class="aligncenter size-large wp-image-663" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-1024x844.png" alt="variables integradas google tag manager" width="1024" height="844" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-1024x844.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-300x247.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-768x633.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-177x146.png 177w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-50x41.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13-91x75.png 91w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13.png 1035w" sizes="(max-width: 1024px) 100vw, 1024px" />][4]

&nbsp;

Modifico algunos parámetros de la etiqueta personalizada anterior dejándola así con su activador correspondiente para las llamadas telefónicas:

[<img class="aligncenter size-large wp-image-664" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-1024x704.png" alt="etiqueta iframe personalizada de tag manager" width="1024" height="704" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-1024x704.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-300x206.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-768x528.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-212x146.png 212w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-50x34.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52-109x75.png 109w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52.png 1179w" sizes="(max-width: 1024px) 100vw, 1024px" />][5]

Los cambios efectuados son solamente descriptivos, además de asignarle la ruta donde tengo alojado el iframe.

Guardamos, creamos versión y Publicamos. Hasta aquí finalizado el proceso de configuración del iframe mismo.

&nbsp;

### Pasos para el contenedor Google Tag Manager PARENT

Ahora toca al contenedor padre tener que realizar unas cuántas configuraciones. Primero vamos a importar este archivo json:

Recuerda d no modificar el resto de etiquetas o elementos de nuestro contenedor, con lo cuál le damos a NO SOBRESCRIBIR el resto de elementos.

Lo que vamos a tener son dos elementos importados:

  * etiqueta personalizada con uno script de llamadas de parámetros **LISTENER**
  * una variable tipo dataLayer que importa el valor del iframe **EVENT iframePhoneClick**, justo para seguir el ejemplo anterior

El script es un poco largo de detallar pero básicamente tiene unos puntos importantes a subrayar:

[<img class="aligncenter size-large wp-image-665" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-1024x522.png" alt="listener de la pagina iframe parent" width="1024" height="522" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-1024x522.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-300x153.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-768x392.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-260x133.png 260w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-50x26.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06-147x75.png 147w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06.png 1539w" sizes="(max-width: 1024px) 100vw, 1024px" />][6]

&nbsp;

  * con el **addEvent **enviamos el mensaje desde el iFrame hacía el Parent
  * declaramos la variable **data** con el _JSON.parse, _un comunicador entre las dos partes, y así el dataLayer
  * Ejecutamos el **dataLayer** en el caso existan eventos
  * definición de **eventos** con el _addEventListener_

&nbsp;

#### Configuración Eventos Parent

Así creado no tenemos que realizar nada más que otras dos acciones.

  1. Asignarle un **activador**, una simple Página Vista de la página de donde se ejecuta el evento, en mi caso /_event.html_

[<img class="aligncenter size-large wp-image-666" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-1024x256.png" alt="pagina vista activador iframe" width="1024" height="256" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-1024x256.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-300x75.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-768x192.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-260x65.png 260w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-50x12.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48-150x37.png 150w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48.png 1165w" sizes="(max-width: 1024px) 100vw, 1024px" />][7]

&nbsp;

<p style="padding-left: 30px;">
  2. Creamos el evento para <strong>Google Analytics </strong>de este modo:
</p>

[<img class="aligncenter size-full wp-image-667" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50.png" alt="evento google analytics llamada" width="700" height="573" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50.png 700w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50-300x246.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50-178x146.png 178w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50-50x41.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50-92x75.png 92w" sizes="(max-width: 700px) 100vw, 700px" />][8]

&nbsp;

Asignamos:

  * _Categoria_: lo que queramos desde el iframe, en mi caso **childPhone**
  * _Acción: _yo he puesto la página donde se ha ejecutado la acción, o poner lo que sigue en Etiqueta
  * _Etiqueta: _alternativamente a la anterior, utilizar una variable **dataLayer **del mensaje desde el iframe creado anteriormente, **postMessageData**
      * OJO, porque la variable ahora tiene dos partes, la primera _postMessageData _y el segundo parámetro del script del child, adivinista cuál? sí, es _Link_

[<img class="aligncenter size-full wp-image-668" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35.png" alt="dataLayer para informaciones" width="605" height="332" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35.png 605w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35-300x165.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35-260x143.png 260w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35-50x27.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35-137x75.png 137w" sizes="(max-width: 605px) 100vw, 605px" />][9]

Esta variable nos sirve como &#8220;comunicador&#8221; de la información que teníamos creada desde el **CHILD **con el tipo de click, form o transaction, lo que sea, básicamente si dentro del Child teníamos una variable de {{Click URL}} aquí me enviará la respuesta.

<p style="padding-left: 30px;">
  3. Ahora toca al <strong>activador</strong> del evento de Google Analytics:
</p>

[<img class="aligncenter size-full wp-image-669" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56.png" alt="evento personalizado iframe child" width="605" height="343" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56.png 605w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56-300x170.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56-258x146.png 258w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56-50x28.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56-132x75.png 132w" sizes="(max-width: 605px) 100vw, 605px" />][10]

Este activador va a ser una llamada al **Evento Personalizado **del _iframeChild, _sí sí, lo que teníamos declarado en el otro, exactamente cuando se ejecuta el evento, entonces DISPARA nuestra etiqueta.

Guardamos, creamos versión y Publicamos.

FIN!

&nbsp;

### Testing de eventos en iFrame

Vamos a realizar la dinámica y ver como queda el todo con las siguientes imágenes de vista previa y debug:

[<img class="aligncenter size-large wp-image-670" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-1024x619.png" alt="debug y vista previa iframe tag manager" width="1024" height="619" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-1024x619.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-300x181.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-768x464.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-241x146.png 241w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-50x30.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22-124x75.png 124w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22.png 1505w" sizes="(max-width: 1024px) 100vw, 1024px" />][11]

&nbsp;

Verificación del evento ejecutado y dispara la etiqueta a Google Analytics

&nbsp;

[<img class="aligncenter size-full wp-image-671" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00.png" alt="disparador evento personalizado analytics" width="850" height="544" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00.png 850w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00-300x192.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00-768x492.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00-228x146.png 228w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00-50x32.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00-117x75.png 117w" sizes="(max-width: 850px) 100vw, 850px" />][12]

&nbsp;

Tiempo real en Google Analytics y Prueba Terminada!

[<img class="aligncenter size-large wp-image-672" src="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-1024x395.png" alt="tiempo real google analytics iframe" width="1024" height="395" srcset="https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-1024x395.png 1024w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-300x116.png 300w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-768x296.png 768w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-260x100.png 260w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-50x19.png 50w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09-150x58.png 150w, https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09.png 1332w" sizes="(max-width: 1024px) 100vw, 1024px" />][13]



### Conclusiones

Hemos realizado el primer test sencillo de como enviar eventos desde un marco (iframe) dentro de un sitio web, estamos hablando de uno básico, mismo dominio y pocos eventos de click en enlaces o un formulario.

Imagina ahora de tener que implantar uno snippet externo de booking, sí, propio para las reservas hoteleras que tanto se utilizan o utilizar EventBrite, o compras de tickets de eventos.

Bien esta parte llevaría exactamente los mismos pasos anteriores más dos configuraciones más que actualizar más adelante:

  1. CLIENT-ID y COOKIE: la idea es tener la misma sesión abierta en ambos sitios sin perder el usuario logueado, ni tener que a contabilizar más sesiones por usuario (y reconocerlo sobre todo)
  2. CROSS DOMAIN o multidominio: el tener que pasar por dos _sitios web diferentes_, parece raro pero realmente son dos páginas enmarcadas en una sola, pero con dos dominios distintas, entonces necesitaríamos utilizar la configuración también de esta, así como su exclusión como referral en Google Analytics.

Hasta aquí es todo, cuéntame tu experiencia que tal fue o se has buscado algún otro atajo con los iframe

&nbsp;

 [1]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.00.43.png
 [2]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.01.39.png
 [3]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-20.09.31.png
 [4]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.35.13.png
 [5]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.36.52.png
 [6]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.42.06.png
 [7]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.46.48.png
 [8]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.47.50.png
 [9]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.52.35.png
 [10]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.54.56.png
 [11]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.58.22.png
 [12]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-21.59.00.png
 [13]: https://www.marcusrb.com/img/2018/06/Captura-de-pantalla-2018-06-29-a-las-22.00.09.png
