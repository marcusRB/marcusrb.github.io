+++
# Meta settings: title, description, robots
title = "Realizar un CRM con Google Spreadsheets con Google Tag Manager"
date = 2018-05-02T13:32:16+00:00
draft = false
summary = "Google Tag Manager es una de las herramientas más innovadoras en la gestión avanzada de nuestro análisis de marketing"
robots = "index, follow"
url =   "¿Quiéres aprender a crear un CRM con Google Sheet, pasar valores dinámicos con Google Tag Manager y tener un seguimiento de eventos?"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["marcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["integrar google script apps tag manager", "extraer información de formularios a google tag manager","pasar valores dinámicos a google sheet","integrar google script apps tag manager"]
categories = ["Tag Manager"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "/img/2018/05/CRM-Google-Sheet-GTM-260x146.png"
caption = ""
preview = true


+++

## ¿Quiéres aprender a crear un CRM con Google Sheet, pasar valores dinámicos con Google Tag Manager y tener un seguimiento de eventos?

Será un tutorial dividido en dos partes, la primera la explicación de como crear en Tag Manager variables, personalizadas y dinámicas, ejemplo al enviar un formulario para Leads, y de otro lado enlazando Google Sheet y tener toda la información (excluyo la información sensible en virtud de la nueva ley GDPR no haré mención a datos sensibles), además a tener en cuenta que tampoco llevaré estos datos a Google Analytics para evitar penalizaciones (nunca me ha pasado y tampoco quiero arriesgarme). Pronto también el vídeo con el tutorial, esté atento en mi [canal YouTube][1]

### Preparando las variables en Google Tag Manager

Antes de empezar, hay que tener en cuenta unos cuantos puntos, si eres nuevo en Google Tag Manager, seguramente llegarás a final de este párrafo y te irás llorando, porque hablaré de Tag Manager a nivel más avanzado. En caso de dudas sobre etiquetas, variables e incluso el mismo Tag Manager, te recomiendo hagas una [primera visita aquí. ][2]

Si ya estás acostumbrado a extraer informaciones a nivel más avanzado, y conoce de DOM, HTML y CSS, además de JavaScript, entonces, bienvenido.

Comenzaré hablar de como tener un cuadro de seguimiento, y podría ampliar más informaciones y campos, pero me conformo con este CRM básico

[<img class="aligncenter wp-image-498 size-full" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31.png" alt="CRM en Google Sheets" width="710" height="521" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31.png 710w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31-300x220.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31-199x146.png 199w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31-50x37.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31-102x75.png 102w" sizes="(max-width: 710px) 100vw, 710px" />][3]

Segundo paso tengo este formulario básico de momento justo para alinearme a mi CRM y luego explicaré como ampliar con más informaciones y detalles

[<img class="aligncenter wp-image-499 size-full" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46.png" alt="Formulario sitio web sencillo" width="481" height="391" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46.png 481w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46-300x244.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46-180x146.png 180w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46-50x41.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46-92x75.png 92w" sizes="(max-width: 481px) 100vw, 481px" />][4]

Para extraer informaciones desde un DOM, es necesario tener bien claro una cosa, realizar lo siguiente:

<p style="text-align: center;">
  consola de desarrollador > pruebas con ID, clases o Selector CSS > aplicar a más de uno y hacer pruebas
</p>

Una vez que tengamos los campos necesario para extraer los valores de los campos del formulario, podemos inclusive determinar otras KPI&#8217;s importantes y útiles:

  * abandono del formulario
  * creación de un funnel y determinar los porcentajes de campos no rellenados vs completo
  * tiempo de permanencia en el formulario y medición de duración en segundos desde el primer click hasta el envío
  * test A/B en el mismo con diferentes opciones y determinar cuál de los formularios mejora el %ratio de conversión
  * etc&#8230;

&nbsp;

### Entramos ahora con el concepto de extraer la información en una alerta de consola y ver los valores

Una vez dentro de nuestro Tag Manager vamos con la creación de nuestras variables, primero ha de comprobar los campos del formulario (si existen ID, clases o selector CSS), y ver su activador de tipo bóton de envío formulario (tipo HTML, jQuery o Ajax, modal, iframe, etc).

#### **Creación de la variables**

Este es el código fuente de mi formulario:

[<img class="aligncenter wp-image-501 size-full" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28.png" alt="código fuente formulario HTML" width="888" height="569" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28.png 888w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28-300x192.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28-768x492.png 768w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28-228x146.png 228w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28-50x32.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28-117x75.png 117w" sizes="(max-width: 888px) 100vw, 888px" />][5]

Y este es como veo los campos DOM en la Consola de Google Chrome:

[<img class="aligncenter wp-image-502 size-full" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57.png" alt="DOM formulario con querySelectorAll" width="988" height="891" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57.png 988w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57-300x271.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57-768x693.png 768w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57-162x146.png 162w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57-50x45.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57-83x75.png 83w" sizes="(max-width: 988px) 100vw, 988px" />][6]

Ahora bien que tengo los campos de nombre, apellidos, dirección, género, email y comentarios, incluido botones de enviar y resetear, iré a lo práctico.

<p style="text-align: left;">
  Crearé las variables de tipo Javascript Personalizado y veámos como función la vista previa para el primer campo NAME.<br /> Si para extraer el valor en el campo, la query será:
</p>

<p style="text-align: center;">
  <pre>document.querySelectorAll('[id=classicForm]')[0][0].value</pre>
</p>

Resultado:

[<img class="aligncenter size-large wp-image-503" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-1024x373.png" alt="" width="1024" height="373" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-1024x373.png 1024w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-300x109.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-768x280.png 768w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-260x95.png 260w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-50x18.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14-150x55.png 150w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14.png 1175w" sizes="(max-width: 1024px) 100vw, 1024px" />][7]

Ahora bien, mi CRM puedo rellenar de valores cuáles, también datos personales y sensibles, así que me limitaré a asignarle solo valores booleanos: TRUE o FALSE, siempre y cuando la condición será > enviar el formulario rellenado y no vacío.

el código así reescrito es:

[<img class="aligncenter wp-image-504 size-large" src="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-1024x494.png" alt="" width="1024" height="494" srcset="https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-1024x494.png 1024w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-300x145.png 300w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-768x370.png 768w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-260x125.png 260w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-50x24.png 50w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06-150x72.png 150w, https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06.png 1273w" sizes="(max-width: 1024px) 100vw, 1024px" />][8]

###

En práctica asigno una variable a mi selector, primer campo y lo confronto con un valor vacío **&#8221; &#8220;**, si no es así, entonces el valor de retorno será TRUE sino será FALSE.

Cuídado, el valor por defecto es UNDEFINED, porque no está asociado a ningún activador, así que siempre tendré en cuenta que el formulario será enviado (para su validación total).

&nbsp;

**MODO AVANZADO**

También puedo crear una variable que directamente hará el trabajo de validación y con este script le digo de sacarme el valor **V****erdadero:**

En cada elemento tendré el parámetro **Validity **y según sea un campo obligatorio o no, tendré varias opciones

[<img class="aligncenter size-full wp-image-511" src="https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM.png" alt="" width="268" height="231" srcset="https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM.png 268w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM-169x146.png 169w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM-50x43.png 50w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM-87x75.png 87w" sizes="(max-width: 268px) 100vw, 268px" />][9]

Así que resumiendo nuevamente tenemos:

<p style="text-align: center;">
  <pre>document.querySelectorAll('[id=classicForm]')[0]</pre>
</p>

y siguiendo puedo extender con la validación

<p style="text-align: center;">
  <pre>document.querySelectorAll('[id=classicForm]')[0][0].validity.valid</pre>
</p>

y esto me dará el resultado **TRUE **o **FALSE**

Ahora hacemos lo mismo para todos los campos interesados:

_Nombre, Apellidos, Dirección, Género, Email, Comentarios._

Solo necesitamos replicar al igual que el campo &#8220;nombre&#8221; los demás que quedan, ya que todos los campos de textos son de igual tipologia, serán exactamente iguales que el primer ejemplo, solo que tenemos que pasar de \[0\]\[0\] **a \[0\]\[1\]** y así hasta llegar al campo **\[0\]\[5\]**

&nbsp;

### Creamos la etiqueta y activador

Pasamos de crear las variables de los campos del formulario, y necesitaríamos el activador, en este ejemplo, mi formulario, tiene _onsubmit=ValidationEvent() _, en tu caso puede que el submit tenga una ID o una CLASS, o que el formulario esté creado con jQuery, así que vamos por lo más sencillo.

<img activador>

Mi ejemplo es un **Evento Personalizado **del tipo Submit con el valor **ValidationEvent()** y todo lo que necesito es enviar la información recogida hacía Google Sheets.

Sí, falta algo, crear un **conector **entre Google Tag Manager y Google Sheets, y para ello utilizo una etiqueta tipo **PIXEL, **que en su defecto sería la etiqueta **Imagen**

<img etiqueta imagen personalizada>

El conector que vamos a crear es con **Google Apps Script. **

Entramos en Google Drive > Herramientas > Editor de secuencias de comandos y creamos el script personalizado:

<img código> que pueden descargar aquí

<p style="text-align: center;">
  <pre>Insert your content here</pre>
</p>

<p style="text-align: left;">
  Muy importante cambiar los dos primeros valores:
</p>

<li style="text-align: left;">
  SHEET_NAME: nombre de la hoja donde tenemos los campos a rellenar (en mi ejemplo se llama <strong>Sheet1</strong>)
</li>
<li style="text-align: left;">
  SHEET_KEY: El valor ID de la hoja de cálculo lo que sigue /d/XXXXXXXXXXXX sería a rellenar
</li>

Ahora solo hace falta Guardar > Publicar > Publicar como aplicación Web

Importante seleccionar el nivel de acceso a todos. Copiamos el código del script y seguimos

<img script>

&nbsp;

### Creamos la variable de Google Apps Script en Tag Manager

Seguimos con la creación de la etiqueta Pixel, o imágen personalizada añadiendo la variable **conector.**

Definimos la variable de tipo **Constante **con este valor Google Apps Script, y volvemos a la etiqueta

<img>

<img>

el código tendrá esta estructura

<p style="text-align: center;">
  {{var_SCRIPT_GOOGLE_APPS}}<strong>?</strong>nombre_campo1={{var_1}}<strong>&</strong>nombre_campo_2={{var_2}} etc etc
</p>

 Si nos fijamos, el primer campo es la constante con la url de Google Apps Script, separamos con un **? **y seguimos con los mismos nombres de la primera linea de Google Sheets (si tenemos NAME será NAME y si será NOMBRE entonces pondríamos NOMBRE,) si fallamos esta parte no leerá la correspondencia entre los nombre de las primera file de Google Sheets con las variables donde hacer pasar los valores.

Ejemplo?

Para comprobar su correcto funcionamiento podemos hacer lo siguiente:

una ruta nueva con la URL de Google Apps Script y la secuencia

<img>

Resultado?

### <img>

<img>

&nbsp;

### Vista previa y Publicación: Testing

Vamos con la vista previa y si todo funciona correctamente tendremos valores TRUE y FALSE en nuestro CRM, o los valores correspondientes en caso de no tener que pasar por la validación Booleana.

El orden de los valores que siguen después **& **es indiferente, siempre será una concatenación y los valores se pondrán en su sitio correspondiente en la hoja de cálculo.

&nbsp;

###

###

###

###

###

###

###

### Aquí el webinar sobre como crear un CRM y pasar las variables dinámicas desde Google Tag Manager a nuestro Google Sheets

<p style="text-align: center;">
  <iframe src="https://www.youtube.com/embed/K_kV-_2CmZQ?rel=0" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
</p>

 [1]: https://www.youtube.com/c/MarcusRBofficial?sub_confirmation=1
 [2]: https://www.youtube.com/watch?v=MAn20Yi62z8&t=437s&list=PLzxNDhvkuNyIy7mMAZl_wItUW3CWDx8pD&index=5
 [3]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.31.png
 [4]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.49.46.png
 [5]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.56.28.png
 [6]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-22.57.57.png
 [7]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.06.14.png
 [8]: https://www.marcusrb.com/img/2018/05/Captura-de-pantalla-2018-05-02-a-las-23.13.06.png
 [9]: https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-04-at-10.09.12-PM.png
