+++
# Meta settings: title, description, robots
title = "Como efectuar correctamente una migración a Google Tag Manager"
date = 2018-04-29T21:18:03+00:00
draft = false
summary = "Hoy hablaremos de como efectuar una migración correcta hacia Tag Manager sin arriesgar el trabajo de otras agencias o consultoras"
robots = "index, follow"
url = "/como-efectuar-correctamente-una-migracion-a-google-tag-manager/"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["marcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["etiquetas google tag manager","migración tag manager","plan implementación","plan tag manager"]
categories = ["Tag Manager"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = "/img/2018/05/10-tips-gtm-1-260x146.jpg"
caption = ""
preview = true


+++

## Durante más de 5 años he estado utilizando Google Tag Manager en auditorias de analítica web, a mis clientes y sobre todo actualizándome constantemente

con el fin de impartir clases presenciales y a distancia, y siempre veo que hay una &#8220;negación&#8221; hacía el aprendizaje de este gestor de etiquetas o &#8220;**administrador de etiquetas**&#8220;.

Hoy hablaremos de como efectuar una migración correcta hacia Tag Manager sin arriesgar el trabajo de otras agencias o consultoras, o de nuestros compañeros de otros departamentos, que han realizado algunas tareas de &#8220;etiquetado manual&#8221;, y con esto quiero decir **código &#8220;a saco&#8221;** dentro del site, y por compañeros me refiero a internos y externos que sean, ya que pueden ser de diferentes departamentos:

  * **departamento IT:** para sus pruebas en los sitios web o en partes para verificar el correcto funcionamiento de las aplicaciones
  * **departamento Marketing:** que además de utilizarlo en la medición de campañas con &#8220;pixel&#8221; de diferentes canales (SEM, SEO, social, afiliados, referenciados etc)
  * **departamento Administrativo / Comercial:** que podría estar midiendo campañas y pasarlo a sus CRM&#8217;s
  * **departamento de**
  * **Analytics:** para etiquetar todos los eventos e interacciones de usuarios, usabilidad UX y CRO
  * y más que podrían ser otros interesados en la creación de tareas personalizadas

Como puedes apreciar, el uso de Google Tag Manager podría abarcar todas estas tareas, y obviamente, para poder realizar una migración hacía a ella, tendríamos tener además de experiencia técnica, para que podamos realizar  no solamente la &#8220;medición de Analytics&#8221; y stop, sino hay unas series de tareas que cualquier departamento puede realizar y por este motivo vamos por partes.

&nbsp;

&nbsp;

## Definición de un plan de medición

Ante de comenzar con un plan de migración, necesitaríamos ver y poder realizar de forma resumida, un plan de medición para poder realizar sucesivamente comprobaciones de implementaciones existentes o tener que crearlas.

¿No sabes que es un plan de medición?

Pues, el plan de medición resumido, al igual que este pantallazo aquí abajo, representaría como alcanzar nuestro objetivo empresarial, siguiendo varios pasos y después de seguir unas series de configuraciones previas en el sitio web, herramienta a utilizar y medición de resultados.

[<img class="aligncenter wp-image-411 size-large" title="estrategia de plan de medición" src="https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-1024x768.jpg" alt="estrategia de plan de medición" width="1024" height="768" srcset="https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb.jpg 1024w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-300x225.jpg 300w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-768x576.jpg 768w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-195x146.jpg 195w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-50x38.jpg 50w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-100x75.jpg 100w, https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb-960x720.jpg 960w" sizes="(max-width: 1024px) 100vw, 1024px" />][1]

  1. Definición del plan de medición
  2. Documentar los aspectos técnicos
  3. Creación de un plan de implementación
  4. Implementación
  5. Mantenimiento y mejora continua &#8211; Optimización
  6. vuelve a principio

Entre un test y otro del punto 5 y 6, se crean diferentes **dashboard**, o cuadros de mandos con las **KPI&#8217;s** a seguir y alcanzar. Aquí entrarían los factores para extrapolar las informaciones, detectar insights y mejorar con los test A/B, CRO, UX etc.

&nbsp;

## ¿Cómo compruebo las implementaciones anteriores?

Una vez que tengamos el plan de medición y verificada la parte técnica (dedicaré otro post para cada uno de los pasos), realizaremos las implementaciones oportunas (vía código, vía GTM, o lo que haga falta en las herramientas). Pero entraría aquí el aspecto de comprobar los trabajos anteriormente realizados.

Podemos utilizar algunas de las herramientas aquí mencionadas:

  * **Google Analytics:** Hablando de Google Analytics, sería nuestra primera herramienta a verificar si efectivamente existen unas implementaciones realizadas, porque, en tal caso ya estaríamos recogiendo estos datos y de una manera estarían llegando a nuestra herramienta de análisis.
  * **Plugin de terceros:** Podríamos tener unos plugin instalados que estarían ya haciendo el trabajo por nosotros, en caso de migración podríamos o bien crear conflictos, o bien cargarnos el trabajo realizado.
  * **Aplicaciones para navegador:** Con las aplicaciones o complementos para navegadores (Chrome, Firefox, principalmente), podríamos chequear unas series de aspectos cuáles implementaciones y recogidas de valores dentro del site
  * **Informes anteriores:** Con los informes ya podríamos tener una idea de lo que se está realizando o lo que no, así alinearnos con las KPI&#8217;s y el plan de medición.

&nbsp;

En practica tenemos que fijarnos en algunos apartados dentro de Google Analytics, exactamente dentro de la interfaz podemos ver cuáles:

  * conversiones
  * comportamiento
  * dimensiones o métricas personalizadas
  * agrupación de contenidos
  * eventos personalizados

&nbsp;

Con los plugin implementados en los gestores de contenidos: WordPress, Prestashop, Joomla, Magento, Shopify etc, pueden darnos mucha información, tenemos que ver que están realizando para no duplicar información

Con las aplicaciones, tenemos que verificar principalmente que se está realizando, aquí comentaré 3 principales:

  * **Google Tag Assistant** para comprobar las etiquetas existentes, eventos recogidos, incluso podemos realizar grabaciones y comprobaciones de lo que se está midiendo
  * **Google Analytics Debug**: nos dará mucha información sobre la etiqueta de Google Analytics dentro del site y muchos objetivos creados.
  * **Analytics pros DataLayer**: este último probará a extraer informaciones muy valiosa del site, es algo más avanzado a primera vista pero será útil a más de uno

&nbsp;

Con los informes anteriores realizados, panel de control o informes en Google Data Studio, podemos comprobar si existen dimensiones o métricas adicionales para poder ver si efectivamente tenemos eventos creados, interacciones o objetivos creados a medida.

&nbsp;

## Realizamos una práctica y ver si efectivamente hay etiqueta/s en un sitio web

[<img class="aligncenter wp-image-412 size-full" src="https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32.png" alt="" width="683" height="690" srcset="https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32.png 683w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-297x300.png 297w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-145x146.png 145w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-50x50.png 50w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-74x75.png 74w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-85x85.png 85w, https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32-80x80.png 80w" sizes="(max-width: 683px) 100vw, 683px" />][2]

&nbsp;

Ya que llegamos al final de post, hemos realizado todo tipo de comprobaciones para su correcta migración de etiquetas existentes, eventos o interacciones, conversiones y objetivos, hasta incluso del tipo transaccionales de tipo comercio electrónico.

Una vez llegado a este punto, tenemos que crear un informe como este que se muestra a continuación, el que puedes realizar una copia para poder tener todo bajo control y una migración perfecta. Para su compilación ya he realizado un video explicativo donde cada una de las celdas tendremos que asignar:

  * nombre de la etiqueta
  * donde activarlo
  * cuál variable añadir
  * qué objetivo medir
  * y donde migrarlo

¿Dudas? Puedes comentar aquí mismo sobre su migración

[https://docs.google.com/spreadsheets/d/e/2PACX-1vQ4z5jRtI-D7gjTcVAcKqP_Lf3Gdrp9a7-lTI6fer7gouhDWm1lLOMUu2KarRU7oqOUsG4KQbt-XmEp/pubhtml?widget=true&headers=false]

 [1]: https://www.marcusrb.com/img/2018/04/plan-medicion-analitica-web-marcusrb.jpg
 [2]: https://www.marcusrb.com/img/2018/04/Captura-de-pantalla-2018-04-21-a-las-17.53.32.png
