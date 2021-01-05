---
title: Medición formularios Contact Form7 de WordPress con Tag Manager
author: marcusRB
type: post
date: 2018-03-25T20:24:42+00:00
url: /medicion-formularios-contactform7-con-tag-manager/
featured_image: /img/2018/03/ContactForm7-GTM-1-260x146.png

categories:
  - Google Analytics
  - Tag Manager
tags:
  - contact form 7 formulario
  - contactform wordpress
  - medición contact form 7
  - tag manager y formulario ajax
summary: "Dentro del plan de medición, normalmente con el marcar un objetivo empresarial y crear diferentes estrategias llegamos al punto de la implementación técnica."
---
## Dentro del plan de medición, normalmente con el marcar un objetivo empresarial y crear diferentes estrategias llegamos al punto de la implementación técnica.

Normalmente seguimos siempre unos pasos para hacerlo, pero casi siempre que nos encontramos con un teléfono o correo electrónico, enlaces salientes del tipo social, o eventos de interacciones del usuario en el sitio web, llegamos al punto más crítico, el hacer **mediciones de interacciones de formulario**.

Donde normalmente sea por **productos** (en el caso de valoraciones, coupon descuento, contactos de soporte o atención al cliente, formulario de registro y finalización pedido, comentarios) o sea para **servicios**, el clásico formularios para capturar leads, no es siempre fácil su implementación ni manualmente ni con tag manager.

Bien, después de ilustrar varias fases de medición de formularios clásicos con el activador de Formularios que por defecto nos proporciona Google Tag Manager, el de HTML, hay unos cuantos realizados en otro framework, o en jQuery o en Ajax que nos siempre da el resultado esperado.

Citando varias fuentes, LunaMetrics o AnalyticsMania que resumieron gracias a diferentes soluciones para ambientes Ajax como solventar el asunto, he realizado varios vídeos de momento, explicando primero las tipologías de formularios, segundo como interactuar con ellos, y tercero como extraer datos y convertirlos en eventos.

Los pasos previos a seguir sería instalar uno script como código personalizado y unas cuantas variables del tipo capa de datos o dataLayer en nuestro contenedor.

Segundo, sería leer e interpretar los parámetros del dataLayer del tipo ajaxComplete y luego sacar los valores.

El primer video está aquí y en otro post os contaré como extraer los datos.

<p style="text-align: center;">
  <div class="content_video iframe has-wh">
    <iframe class="scale-with-grid" width="700" height="400" src="https://www.youtube.com/embed/kQp0utuZnZg?wmode=opaque" allowfullscreen></iframe>
  </div>
</p>
