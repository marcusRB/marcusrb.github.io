+++
title = "Guía de Google Analytics: 10 consejos útiles para aumentar tu tráfico y ranking (2/2)"
date = 2019-03-20T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/guia-google-analytics-10-consejos-utiles-aumentar-trafico-ranking-2-2"
canonical = "https://www.paradigmadigital.com/dev/guia-de-google-analytics-10-consejos-utiles-para-aumentar-su-trafico-y-ranking-2-2/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["google analytics", "consejos configuración", "medicion analitica web"]
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



Google Analytics lleva años siendo la herramienta de referencia en marketing no solo a nivel de extracción de métricas, sino también a la hora de comprender el comportamiento de los usuarios de nuestro sitio web.

Pero Google Analytics no deja de ser un mastodonte enorme donde obtener determinados datos es, a veces, casi una misión imposible, sobre todo si estamos empezando a trabajar con la plataforma.

Ya la semana pasada [recopilamos algunos consejos que nos facilitan el uso de la herramienta][1]. Hoy continuamos con otras **5 recomendaciones que seguro que te ayudarán a exprimir al máximo Google Analytics**.

![][2]

## 6\. Aumenta la tasa de conversión con la métrica de la tasa de rebote

**La tasa de rebote es una métrica importante porque proviene del compromiso del usuario con tu página web**.

Curiosamente, la tasa de rebote es comúnmente mal entendida y mal interpretada por muchos webmasters, bloggers y profesionales de SEO.

> _La tasa de rebote es básicamente el porcentaje de visitas de una sola página o sesiones web. En términos de palabras, el porcentaje de rebote representa el porcentaje de visitantes del sitio web que llegaron a una página en particular y se alejaron después de ver una página (por ejemplo, la página de «servicios»)._

La tasa de rebote es esa métrica que revela cuánto de útil es realmente tu contenido.

**Cuanto menor sea la tasa de rebote, en la mayoría de los casos, mejor**. Lo que significa que un porcentaje de rebote del 34% es, evidentemente, mucho mejor que el 87%. Debido a que el porcentaje más bajo es una indicación de que tu contenido es útil, los usuarios quedaron satisfechos y se mantuvieron cerca.

> **NOTA**: De todas formas, tampoco es útil tomar como referencia solo esta métrica y decir que 34% es mejor que 87% si no lo ponemos en contexto, valoramos los objetivos que tenemos establecidos, como por ejemplo interacciones, tiempo de visita, canal de captación…

Al final, nuestro objetivo debe ser monitorear la tasa de rebote y tratar de reducirla. Si lo que quieres reducir es la tasa de rebote de tus páginas de destino, puedes hacerlo siguiendo esta ruta:

> _Comportamiento > Contenido del sitio > Páginas de destino_

![][3]

Cada pequeña mejora en la tasa de rebote probablemente producirá una mayor conversión.

### Veamos un ejemplo

Un sitio web de automatización de marketing y CRM notó que su tasa de rebote había aumentado un 42% durante un período de 3 meses.

Tomaron los pasos correctos para arreglarlo. Cambiaron el formato del texto, mejoraron el enlace interno y agregaron un vídeo a la página de inicio. Como resultado, el sitio web registró un aumento del 15% en el envío de formularios.

Si observas en Google Analytics una tasa de rebote muy alta en algunas de tus páginas de mayor rendimiento con respecto a las otras, pregúntate cuál podría ser la razón. Audita las páginas afectadas y optimízalas para aumentar las conversiones.

## 7\. Utilizar consultas de búsqueda en el sitio

Hay muchos sitios web demasiado complicados de usar. La información o contenido importante está oculto y en muchos casos las páginas se rompen cuando los visitamos a través de dispositivos móviles. Este escenario molesta a los usuarios.

Sin embargo, una pista de que los visitantes que llegan a nuestra web son nuestro target, es cuando usan el buscador interno.

### ¿Sabes los términos de búsqueda que están buscando?

Desde Google Analytics es bastante fácil descubrir estos términos. Por lo tanto, es necesario configurar un informe para obtener esa información.

Desde la configuración de vista, activamos la opción de 'Seguimiento de la búsqueda en el sitio' (tal como indica la imagen), y tendríamos que añadir el parámetro de consulta:

![][4]

> **NOTA**: para añadir el/los parámetros de consulta, en la mayoría de los casos, simplemente añade lo que sucede después del carácter **?** en la ruta:

Ej.

Fíjate en este parámetro **q** , este será el valor que tendrás que añadir.

WordPress por defecto tiene **q** (está por query), algún otro CMS del mercado tendrá otro similar, aquí os menciono unos cuantos: query, search, searchword, searchquery, consulta, s, q, qs, string, searchq…

Quizás la manera más sencilla es que realices tú mismo una búsqueda y te fijes en cómo cambia la ruta después de una búsqueda. Hay casos que mostrará el valor y hay otros casos que simplemente no devolverá nada (páginas dinámicas).

Al analizar este informe, puedes ver las palabras clave exactas que las personas escribieron en tu buscador interno, directamente en tu sitio web.

Aquí es cómo localizar este informe importante:

> _Comportamiento > Búsqueda en el sitio > Términos de búsqueda_

![][5]

Una vez que esté el informe cumplimentado con estos términos de búsqueda en el sitio, puedes mejorar tus conversiones de varias maneras. Puedes recomendar productos y servicios relacionados con las palabras clave.

Incluso puedes utilizar la información que recopiles en tus campañas de correo electrónico. ¡O mejor aún! **Investiga cuál es la palabra clave más frecuente y crea páginas de destino específicas de alto valor para atender a este segmento de visitantes del sitio web**.

## 8\. Utilice las expresiones regulares en filtros y reportes

Obtendrás mayor potencia y resultados de Google Analytics si automatizas algunas de las tareas. Entonces, si bien la mayoría de estos consejos han sido sobre el uso de la interfaz, este es un poco diferente y es aplicable en muchos lugares diferentes dentro de Google Analytics (y el Administrador de etiquetas de Google).

### ¿Qué son las expresiones regulares?

**Las expresiones regulares son una forma de diferenciarse del usuario casual de Google Analytics**.

Una breve definición: son una forma de describir patrones en texto usando caracteres especiales. Expliquemos un poco más en detalle en qué consisten.

Supongamos que estás viendo tu informe de _'Todas las páginas'_ dentro de Google Analytics y que quieres definir algunas páginas específicas. Tal vez las páginas de Inicio, Servicios y Acerca de nosotros.

Puedes extraer todo el informe, desplazarte para encontrar las páginas que necesitas y anotar los números. O puedes cargar el informe, buscar Inicio, realizar una nueva búsqueda de Servicios y después realizar una nueva búsqueda de Quiénes somos.

> Inicio **Or** Servicios **Or** Quiénes somos.

Se vería algo como esto: ^ (/ | / services / | / about-us /) $

El carácter de expresión regular más fácil de aprender es el pipe o "palito" **|**, que simplemente significa **OR**. Hay otros caracteres para indicar caracteres opcionales, «comienza con» y «termina con», ¡y muchos más!

Si quieres investigar más sobre expresiones regulares, te dejo las siguientes guías:

## 9\. Sigue el camino de la generación de leads antes de que conviertan

Existe una obsesión con la generación de leads. Muchos olvidan que alimentar a los clientes potenciales existentes es la mejor manera de hacer crecer un negocio. Probablemente tengas un representante de ventas o un departamento responsable de nutrir a tus clientes potenciales, pero ¿les delegas responsabilidad?

Previamente, debemos calificar a nuestros clientes potenciales y comprender su trayectoria por nuestro sitio web. Según las estadísticas de HubSpot, _«solo el 25% de los clientes potenciales son legítimos y deben ser enviados a un representante de ventas»_.

Los clientes potenciales suelen pasar por tres etapas básicas para **confiar****, ****creer** y **gustar**. Así es como funciona el marketing online. El proceso de 3 pasos implica:

* Conciencia.
* Consideración.
* Decisión.

En realidad, hay una manera muy fácil de hacer esto con una búsqueda en el mismo informe. En todos los informes de Google Analytics, el cuadro de filtro de la tabla acepta expresiones regulares de forma predeterminada, lo que significa que solo puedes escribir en ese cuadro de búsqueda una frase que represente:

![][6]

Para comprender los diversos puntos de contacto que atraviesan los usuarios antes de comprar y las páginas a las que acceden en tu sitio web podemos consultarlo en Google Analytics siguiendo esta ruta:

> _Comportamiento > Flujo del Comportamiento_

![][7]

Para obtener resultados imparciales, céntrate en los nuevos usuarios de tu sitio web que no tengan experiencia previa con tu marca. Por lo tanto, ordénalos por nuevos usuarios o nuevas visitas. Luego, podrás ver cómo los nuevos usuarios interactúan con tus páginas, desde dónde comenzaron, cómo se fueron, etc.

> **NOTA****: **También sería útil profundizar un poco más, quizás con segmentos por dispositivo o por canal de adquisición.

Conocer las secuencias comunes del historial de páginas y cómo los nuevos usuarios se involucran, navegan y utilizan tus páginas web ayudarán a crear una mejor experiencia de usuario en el sitio.

## 10\. Analizar el compromiso de la página entre el móvil y el escritorio

Como el uso de dispositivos móviles ha superado el tráfico de escritorio, según comScore, no debe descuidar a los usuarios de escritorio. Porque no a todos les gusta usar dispositivos móviles. Y ciertas tareas se realizan más fácilmente en una pantalla de escritorio más grande que en una pantalla más pequeña.

Como propietario de un negocio, comercial digital o propietario de un sitio web, **no gastes todo tu tiempo y recursos optimizando las conversiones del sitio web solo para usuarios de dispositivos móviles, hazlo también para usuarios de escritorio**.

Obviamente, los dispositivos móviles pueden generar la mayor cantidad de tráfico para tu sitio web, lo que es bueno. Aquí puedes encontrar y analizar los resultados entre los canales móviles y de escritorio.

> _Audiencia > Dispositivos móviles > Visión general_

![][8]

En el momento en que ingreses al informe, segmenta sus datos tabulados seleccionando tu objetivo de conversión/ventas principal o principal.

En la imagen, si miramos en términos de ingresos, se puede ver que el móvil (37%) y el tablet (9%) generaron menos conversiones en comparación con el escritorio (54%).

Comparando el ratio de conversión, estamos a un 0,80% en tablet; 0,42% escritorio y solo un 0,09% en dispositivos móviles. Parece que genera muchas más sesiones el móvil por tener un ratio más bajo.

> **Consejo profesional**: si tu segmento móvil no genera suficiente tráfico o ventas, hay una tendencia a suponer que a los usuarios no les resulta fácil navegar por tu sitio con un dispositivo móvil. Asegúrate de analizar las diferencias en el tráfico, el comportamiento y las conversiones (ventas).

## Conclusión

Google Analytics es su apuesta segura para descubrir _insights_ u oportunidades que pueden mejorar también el posicionamiento orgánico en Google.

Sin embargo, la optimización del motor de búsqueda no es una estrategia de marketing digital que se establece y se olvida. Debe abordarse con un enfoque holístico e impulsado por datos, al mismo tiempo que se aprovecha el contenido atractivo de un sitio web para ganar tracción, atraer clientes potenciales calificados a un sitio web, aumentar su posicionamiento y aumentar sus ventas.

Cuando entiendes lo que motiva a las personas a usar tu sitio web, es más fácil hablar su idioma y hacer que participen con contenido bien pensado.

[1]: https://www.paradigmadigital.com/techbiz/guia-de-google-analytics-10-consejos-utiles-para-aumentar-tu-trafico-y-ranking-1-2/
[2]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/Google-Analytics.png
[3]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-1.jpg
[4]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-3.jpg
[5]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-4.jpg
[6]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-5.jpg
[7]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-7.jpg
[8]: https://www.paradigmadigital.com/wp-content/uploads/2019/02/GA-8.jpg


(FUENTE ORIGINAL)[https://www.paradigmadigital.com/dev/guia-de-google-analytics-10-consejos-utiles-para-aumentar-su-trafico-y-ranking-2-2/]
