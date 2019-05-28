---
title: Integrar Google Optimize con Tag Manager – Experimentos con Analytics parte 1
author: marcusRB
type: post
date: 2018-02-05T12:04:22+00:00
url: /integrar-google-optimize-con-tag-manager-experimentos-con-analytics-parte-1/
featured_image: /img/2018/02/ab-testing-1-248x146.png

categories:
  - Google Analytics
  - Tag Manager
tags:
  - experimentos google analytics
  - google optimize
  - tag manager y optimize
  - test ab google optimize
format: video
summary: "Google Optimize no ha tardado en salir en formato BETA hace unos años y integrado con Google Tag Manager a través de una etiqueta que al parecer es fácil de implementar."
---
## Hola a tod@s con un nuevo post, y esta semana hablaré de una gran herramienta gratuita para &#8220;test A/B&#8221; que anteriormente solo se podía gestionar a través de Google Analytics: &#8220;Experimentos&#8221;.


Google Optimize no ha tardado en salir en formato BETA hace unos años y integrado con Google Tag Manager a través de una etiqueta que al parecer es fácil de implementar. Hay que mencionar que Google Tag Manager, el sistema de etiquetado más utilizado (y gratuito) del momento, y de la gran familia Google, nos permitía integrar en nuestros sitios web experimentos de landing page tipo:

<ul>
  <li>
    Test A/B
    </li>
  <li>
    Multivariantes
    </li>
  <li>
    Redirecciones
    </li>
</ul>

<img class="aligncenter wp-image-235 size-full" src="https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31.png" alt="tipo-experimentos-google-optimize-tag-manager-marcusrb" width="586" height="253" srcset="https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31.png 586w, https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31-300x130.png 300w, https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31-260x112.png 260w, https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31-50x22.png 50w, https://www.marcusrb.com/img/2017/07/Captura-de-pantalla-2018-02-05-a-las-21.45.31-150x65.png 150w" sizes="(max-width: 586px) 100vw, 586px" />

Pero a través de su contenedor unificado NO permite gestionar dentro del lo que queríamos. Sí has leído bien, antes de utilizar el Google Optimize dentro de Tag Manager tienes que fijarte si aún conservas el antiguo contenedor de un solo bloque como este. porque no es compatible. El actual está separado en dos partes (en virtud de este cambio) nos permite gestionar tanto el &#8220;encabezado&#8221;, que el &#8220;contenido&#8221;. Como este:Vamos en parte para hablar de Google Optimize y los pasos para su implementación, ya que la guía oficial no es muy clara como siempre.

<pre>&lt;script&gt;
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-XXXXX-Y', 'auto');
 &lt;strong&gt; ga('require', 'GTM-XXXXXX');&lt;/strong&gt;
  ga('send', 'pageview');
&lt;/script&gt;
</pre>

<br />
Aquí el vídeo completo con la implementación con Tag Manager, unos 30 minutos de prácticas, buena visión!


    <iframe id="ytplayer" src="https://www.youtube.com/embed/VblE7FGyBbI" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"><span data-mce-type="bookmark" style="display: inline-block; width: 0px; overflow: hidden; line-height: 0;" class="mce_SELRES_start">﻿</span></iframe>
