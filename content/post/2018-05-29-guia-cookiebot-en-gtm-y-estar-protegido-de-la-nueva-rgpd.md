+++
# Meta settings: title, description, robots
title = "[Guía] Cookiebot en GTM y estar protegido de la nueva RGPD"
date = 2018-05-29T21:35:20+00:00
draft = false
summary = "Aquí la configuración optima con Google Tag Manager y CookieBot para estar protegido desde el 25 de Mayo con la nueva ley de protección de datos GDPR"
robots = "index, follow"
url = "/guia-cookiebot-en-gtm-y-estar-protegido-de-la-nueva-rgpd/"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["marcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["rgpd","cookies","cookiebot","alerta cookie tag manager"]
categories = ["Tag Manager", "Digital Marketing"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "/img/2018/05/Cookierobots-cookiebot-para-Tag-Manager-marcusrb-blog-174x146.png"
caption = ""
preview = true


+++

## Aquí la configuración optima para estar protegido desde el 25 de Mayo 2018 con la nueva ley de protección de datos y no tener problemas.

Si estás aquí significa que ya has oído hablar del servicio CookieBot para administrar el GDPR en su sitio y le gustaría instalarlo con el Administrador de etiquetas de Google Tag Manager.

Tengo que darte dos noticias, una buena (¡hurra!) y una mala (¡doh!).

La buena noticia es que también hay una **guía oficial de CookieBot** sobre cómo instalarlo con Google Tag Manager ([busque el enlace al final de esta guía][1]). Esto es bueno porque los propietarios del servicio han entendido que Google Tag Manager ahora es esencial para administrar el seguimiento en los sitios.

Pero desafortunadamente hay malas noticias. La mala noticia es que la guía indicada por ellos no funciona exactamente al 100%, ya que no tiene en cuenta algunos detalles del funcionamiento técnico de Google Tag Manager, por lo que pierde uno de los principales beneficios.

En otras palabras, la guía oficial va a crear fallas de funcionamiento que también afectarían a las otras etiquetas de su contenedor.

¿Qué detalle? Te lo contaré despúes de su guía oficial. En pocas palabras, probando la guía, pensando, probando, pensando y probando, a final no me gustó. Y decidí poner mi mano para resolver este problema.

Tengo que decir que gracias a otras guías de otros usuarios, finalmente pude con el, solo no hubiera logrado solucionarlo del todo. Así que logré hacerlo más poderoso sin perder el potencial de Google Tag Manager.


### Ahora voy a enumerar lo que dice la guía oficial y luego lo que he cambiado y cómo lo he optimizado.

#### PASO 1: INSTALE EL SCRIPT CON UNA ETIQUETA HTML PERSONALIZADA

Lo primero que la guía dice que haga, es instalar el script de JavaScript para que funcione.

**ATENCIÓN &#8211; ** deberá cambiar el _código de identificación_ con el que tiene dentro del panel de CookieBot en la pestaña &#8220;Sus Scripts&#8221;:

Ahora que ha encontrado el código de su CookieBot, tendrá que insertarlo en una secuencia de comandos dentro de una etiqueta HTML personalizada.

El script es el siguiente:

<pre>&lt;script id="Cookiebot" src="https://consent.cookiebot.com/uc.js?cbid=00000000-0000-0000-0000-000000000000" type="text/javascript"&gt;&lt;/script&gt;&lt;br /&gt;
&lt;script&gt;
function CookiebotCallback_OnAccept() {
    if (Cookiebot.consent.preferences)
        dataLayer.push({'event':'cookieconsent_preferences'});
    if (Cookiebot.consent.statistics)
        dataLayer.push({'event':'cookieconsent_statistics'});
    if (Cookiebot.consent.marketing)
        dataLayer.push({'event':'cookieconsent_marketing'});
}
&lt;/script&gt;</pre>

ETIQUETAS > Nuevo.

Tipo de etiqueta: HTML personalizado

Agregar ACTIVADORES > &#8220;Todas las páginas&#8221;.

Guarde la etiqueta como: &#8220;Consentimiento de GDPR de CookieBot&#8221;.

¿Qué hace este script? sencillo

Cree tres eventos personalizados según la elección del usuario en las cookies:

_preferencias (cookieconsent_preferences)_

_estadísticos (cookieconsent_statistics)_

_marketing (cookieconsent_marketing)_

Probablemente ya hayas adivinado el siguiente paso, ¿verdad?

&nbsp;

#### PASO 2 &#8211; CREAR ACTIVADORES

Ahora que el script genera estos tres eventos personalizados, debemos capturarlos con tantos activadores de tipo de EVENTO PERSONALIZADO:

ACTIVADORES > Nuevo

Tipo de activador: Evento Personalizado

Nombre del evento: cookieconsent_preferences.

Guarde con el nombre: &#8220;cookieconsent_preferences&#8221;.

Haremos lo mismo para los otros dos eventos:

_cookieconsent_statistics_ y _cookieconsent_marketing_

&nbsp;

#### PASO 3 &#8211; CONECTE LOS ACTIVADORES A SUS ETIQUETAS

Ahora que hemos creado tres eventos, tenemos que eliminar los activadores de tipo &#8220;Página vista&#8221; (es decir, Window Loaded, DOM Ready y PageView) encontrado previamente en la etiqueta, y reemplazarlos con tres eventos que hemos creado .

Por ejemplo, puede vincularlos a estas etiquetas:

Etiqueta principal de Google Analytics de páginas vistas

Facebook Pixel

Hotjar

Remarketing de AdWords

y así para el resto de etiquetas que afecten a las cookie de marketing y de social, por ejemplo.

A continuación se muestra un ejemplo de la página de Google Analytics.

[<img class="aligncenter size-full wp-image-592" src="https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM.png" alt="" width="992" height="607" srcset="https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM.png 992w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-300x184.png 300w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-768x470.png 768w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-239x146.png 239w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-50x31.png 50w, https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM-123x75.png 123w" sizes="(max-width: 992px) 100vw, 992px" />][2]

#### PASO 4: ACTUALIZA ACTIVADORES PERSONALIZADOS

Pero, ¿cómo gestionamos todos los demás activadores, cómo un Activador en la página de privacidad (en su guía, haga este ejemplo, pero para hacerle entender que podría ser un Activador de la página de agradecimiento)?

La guía oficial nos dice que agreguemos el evento como un parámetro de filtro de activador:

[<img class="aligncenter size-full wp-image-593" src="https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers-.png" alt="" width="836" height="569" srcset="https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers-.png 836w, https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers--300x204.png 300w, https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers--768x523.png 768w, https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers--215x146.png 215w, https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers--50x34.png 50w, https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers--110x75.png 110w" sizes="(max-width: 836px) 100vw, 836px" />][3]

#### PASO 5 &#8211; ACTUALIZA TODOS LOS ACTIVADORES

Pero si tengo que administrar otros activadores, como clics o un enlace, ¿entonces, cómo lo hago?

La guía sugiere que creemos **variables de JavaScript personalizadas** que detectarán las opciones de los usuarios sobre los tipos de cookies que desean recibir.

**Variables** > Variables definidas por el usuario > Nuevo

Tipo de variable: JavaScript personalizado

Nombre de la variable: Cookiebot.consent.marketing

Ingrese el siguiente código y luego guarde

<pre>function()&lt;br /&gt;
{&lt;br /&gt;
return Cookiebot.consent.marketing.toString()&lt;br /&gt;
}</pre>

Lo mismo puede ser replicado por las preferencias y estadísticas

_Cookiebot.consent.preferences.toString()_

_Cookiebot.consent.statistics.toString()_

La función devolverá verdadero o falso **TRUE **o **FALSE**

El problema con esta versión es que JavaScript recibirá el valor solo después del evento Window Loaded (ventana cargada) y luego todas las etiquetas se deben administrar DESPUÉS del evento Window Loaded.

Como puede ver en la Vista de página y DOM Ready aún no está definido.

&nbsp;

En la práctica, perdemos todos los eventos nativos de Google Tag Manager (Vista de página y DOM Ready) porque tendremos que activar las etiquetas solo DESPUÉS de COMPROBAR la variable de tipo JavaScript.

###

**Por qué esta guía no está bien?**

Me parece absurdo tener que renunciar a Page View y DOM Ready, ya que van a estropear los eventos personalizados conectados a ellos.

En otras palabras, **la guía propuesta por Cookiebot no está funcionando.** Y esto no sería muy útil para aquellos que ya están utilizando desde hace años Google Tag Manager y tener que volver a re-escribir nuevamente códigos.

Véamos como funciona el atajo, gracias a Matteo Zambon donde se puede ver desde su [post en inglés de GDPR][4], el aporte a esta solución para los usuarios de Cookiebot y Tag Manager.

Gracias Matteo!

&nbsp;

### Ahora voy a enumerar los nuevos pasos optimizados

#### nuevo PASO 1 &#8211; CREAR VARIABLES DE COOKIEBOT

Antes que nada, crea una variable que contenga el código de tu **CookieBot Id** que hemos tomado con el PASO 1 anterior.

&nbsp;

Variables > Variables definidas por el usuario> Nuevo

Tipo de variable: constante

Nombre de la variable: CookieBotId

Valor: ingrese el valor de su identificación

Guardar

Ahora necesitaremos **cuatro variables personalizadas** más:

_CookieConsent_

_CookieConsent.marketing_

_CookieConsent.preferences_

_CookieConsent.statistics_

#### nuevo PASO 2: CREAR LA VARIBLE COOKIE

La CookieBot dispone de una cookie que contiene los valores de las opciones del usuario: **CookieConsent**

En este punto, sólo tenemos que tomar esa &#8220;galleta&#8221; con Google Administrador de etiquetas a través de una variable. Hacerlo es lo suficientemente simple

Variables> Variables definidas por el usuario> Nuevo.

Tipo de variable: cookie propietaria

Nombre de la variable: CookieConsent

Nombre de la cookie: &#8220;CookieConsent&#8221;

Guardar

#### nuevo PASO 3: CREAR VARIABLES DE CONSIDERACIÓN

Ahora que tenemos una variable que contiene las preferencias de cookies podemos crear tres variables para manejar los valores. Para hacerlo, usaremos un poco de astucia y expresiones regulares

Variables> Variables definidas por el usuario> Nuevo.

Tipo de variable: tabla de expresiones regulares

Valor de entrada: {{CookieConsent}}

Patrón: marketing: verdadero ► Salida: verdadero

Patrón: marketing: falso ► Salida: falso

Configuración avanzada: solo marca ignorar mayúsculas y minúsculas

Nombre de la variable: CookieConsent.marketing

Guardar

Vamos a repetir el mismo procedimiento para las otras dos CookieConsent.statistics y variables CookieConsent.preferences, teniendo cuidado incluso cambiar los valores en el campo &#8220;Patrón&#8221;.

Pero ¿Por qué estas variables?

Uhhh &#8230; espera, ahora te lo diré.

Tendremos el valor de la preferencia del usuario mucho antes de la ventana cargada. En otras palabras, no habrá problemas en la gestión de Google Administrador de etiquetas de eventos predefinidos.

Yuppieeeeeeee!

&nbsp;

#### nuevo PASO 4 &#8211; Instala el guión con una etiqueta HTML personalizado

El procedimiento es similar al primer mal paso, pero con algunos cambios para instalar la secuencia de comandos es la siguiente:



_Tipo de etiqueta:_ **HTML personalizado**

_Configuración avanzada_: opciones de activación de etiqueta: &#8220;**Una vez por página**&#8221;

_Activadores_: **&#8220;Todas las páginas&#8221;**.

Guarde la etiqueta como &#8220;CookieBot GDPR consentimiento&#8221;.

VEMOS EN EL DETALLE LO QUE HA SIDO CAMBIADO.

Primero me puse esta etiqueta se activa sólo una vez por página (por lo que se evita que se carguen dos veces).

Pasemos al segundo cambio. Si ha notado añadí otra condición antes de cada impulso en la capa de datos. De esta manera, ahora hay dos condiciones:

la primera condición comprueba la existencia de la función de JavaScript

la segunda condición ocurre que ya ha sido registrada y el CookieConsent que el valor es diferente de verdaderos (gracias a las Tablas expresiones regulares ya creados).

En otras palabras, el evento personalizado se inserta en la pila sólo si el usuario ya posee CookieConsent (y por lo tanto ya ha expresado su preferencia sobre qué tipo de cookies para aceptar) y si ese tipo de cookie (preferencias, estadísticas o comercialización) no fue aceptado.

Por qué esto? Lo explicaré en los siguientes pasos.

&nbsp;

#### nuevo PASO 5 &#8211; CREATE el activador (igual a la etapa 2)

Este fue el único paso realmente útil en la guía anterior.

Ahora que la secuencia de comandos genera estos tres eventos personalizados tenemos que cogerlos con la mayor cantidad de activadores de tipo Evento personalizado.

Activadores> Nuevo.

Tipo de activador: evento personalizado.

Nombre del evento: cookieconsent_preferences.

Guarde con el nombre: &#8220;cookieconsent_preferences&#8221;.

Vamos a hacer lo mismo para los otros dos eventos: cookieconsent\_statistics y cookieconsent\_marketing

####

#### PASO 6: CREAR ACTIVADORES NEGATIVOS

Además de los PASO 5 Activadores, debemos crear activadores con lógica inversa.

Generalmente los llamo activadores negativos. Tendremos que ponerlos como los activadores de tipo de excepción en las etiquetas más comunes.

_Tipo de activador_: **Visualización de página**.

_Este activador se activa en_: **algunas vistas de página**.

_Activar este activado_r: **CookieConsent.marketing** no es igual a **TRUE**

Guardar como: &#8220;Fail cookieconsent_marketing&#8217;.

Haremos lo mismo para las estadísticas y preferencias.

¿Cómo generar universal negativa ACTIVADOR DE válidas para ningún EN TODO MOMENTO

El ejemplo que acabamos de ver se aplica solo a la vista de página. Pero si tuviera las etiquetas que se activan al hacer clic o cualquier otro tipo de activador como lo hacemos?

Ahora te lo explicaré

Activadores> Nuevo.

Tipo de activador: evento personalizado

Nombre del evento :. *

Indicador Utiliza coincidencia de expresión regular: verdadero

Este disparador se activa en CookieConsent.preference no es igual a la verdadera

Guardar con el nombre: &#8220;CookieConsente.preference&#8221;

 [1]: https://www.cookiebot.com/en/google-tag-manager-gdpr/
 [2]: https://www.marcusrb.com/img/2018/05/Screen-Shot-2018-05-27-at-9.50.24-PM.png
 [3]: https://www.marcusrb.com/img/2018/05/Controlling-cookies-with-multiple-triggers-.png
 [4]: https://www.tagmanageritalia.it/how-to-fix-cookiebot-official-guide-and-protect-yourself-from-gdpr/
