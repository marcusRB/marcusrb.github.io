+++
# Meta settings: title, description, robots
title = "Adiós Wordpress, Bienvenido Hugo"
date = 2018-10-14T19:32:17+02:00
draft = false
summary = "Dedicaré más tiempo en profundizar algunos aspectos para ayudar al resto de usuarios que decidan acercarse a la revolución de los generadores estáticos de sitios web."
robots = "index, follow"
url = "/adios-wordpress-bienvenido-hugo/"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["marcusRB"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["programación","hugo","wordpress","markdown"]
categories = ["Frameworks","Programación"]


# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = ""
caption = ""
preview = true
+++

## Ya sé, no es un título sensacionalista.
Con esto quiero decir que yo he abandonado Wordpress, para dedicarme al desarrollo de un blog a medida con __HUGO__, creado con lenguaje *GO*, o __GOLANG__, sí el mismo desarrollado por Google. Hugo de momento es junto con __Next__ que más rápido está creciendo dentro de los generadores estático de sitos web, aunque lejos de CMS cuál Wordpress, o algo más profesional cómo Drupal, ya cada vez hay aficionados que se acercan a este creador de sitios web estáticos.

### Por qué he decidido migrar Wordpress a Hugo?
Después de unos cuantos años con mi blog personal en la plataforma __Wordpress__, utilizando un hosting no compartido, y queriendo optimizar al máximo los recursos, muy similar a un VPS, he decidido migrar hace unos meses a [Hugo](https://gohugo.io/), una generador de sitios estático realizado con código abierto. El motivo, muy sencillo: estaba harto de estar actualizando Wordpress cada dos por tres, y la plantilla tenía que descolocarse cada x tiempo, dependencias absurdas del resto de módulos y plugin, agotar memoria y afectar a la velocidad, no obstante el CDN. Base de datos no muy lógica la verdad, wordpress nunca me ha gustado como estructura, pero, si, sencilla de montar, pero no me gustaba por el tema de personalización. También añado el hecho de querer algo fácil de crear post y recursos, sin tener que depender de plugin.

### Documentación de Hugo
Antes de nada, la documentación, hay bastante además su página oficial, muchos aficionados de códigos open-source y frameworks, materiales y tutoriales, tampoco hace falta aprender demasiado, con pocas reglas, se entiende perfectamente el fin de este generador. La idea es leer atentamente cada paso de la [documentación oficial](https://gohugo.io/getting-started/), porque me ha costado más entender como arrancar y publicar que el resto de acciones. La curva de aprendizaje es muy corta, yo he tardado dos meses en entender buena parte de la estructura y su documentación, aún así, me gusta.


### Plantillas o themes
Aunque el punto positivo que más me ha motivado ha sido por no tener que diseñar yo mismo un tema, hay la posibilidad de crear una ad hoc, pero la verdad se hacía demasiado largo el tiempo de desarrollo, y maquetar, en mi caso iba a ser complicado. Así que decidí __Hugo__ por tener unas cuantas plantillas de editar, montar, y listo. Con atribuciones y obviamente __GRATUITAS__. La mayoría de themes puedes encontrarlas [aquí](https://themes.gohugo.io/), y cada vez hay muchas más.


### Estructura de Hugo
Lo que diferencia Hugo del resto de 'CMS' por decirlo de una manera, es que trabaja sin servidor de apoyo, es decir no necesitas un alojamiento y una base de datos, también puedes alojarla en Firebase, GitHub, Bitbucket, en una VPS y el hosting de toda la vida, incluso en tu servidor (obviamente teniendo recursos para que sea rápida la carga), esto porque el generador, que es la base de Hugo, crea tantas carpetas y archivos html que puedes alojarlos donde quieras, muchos JS van en otra carpeta y si hay llamada a *Bootstrap* o JS externos, ya no hace ni falta. Yo por ejemplo tengo alojado en GitHub y he creado una redirección a mi dominio, así que de momento cero preocupaciones.

### Lenguaje de marcado o Markdown
Pues sí, si nunca has oido hablar de __marcado__, ten en cuenta que HTML es un marcador también, pero redactar post, crear los esqueletos de Hugo, está interamente creado con el [lenguaje Markdown](https://es.wikipedia.org/wiki/Markdown), gracias a los fundadores, [Aaron Swartz](https://es.wikipedia.org/wiki/Aaron_Swartz) y [John Gruber](https://es.wikipedia.org/w/index.php?title=John_Gruber&action=edit&redlink=1) que en 2004 hicieron lo posible para crear algo tan sencillo, fácil de interpretar, y sobre todo escribir, en cualquier editor de textos (bloc notas, sublime, atom), y teniendo en cuenta que GitHub y el mismo programa estadístico que utilizo R, tiene para editar sus textos.

El lenguaje de marcado tiene tres tipologías de extensiones, cada una difiere por el estilo de escritura y debería respetar como regla general para el resto de archivos:

- YAML

```
categories:
- Development
- VIM
date: "2012-04-06"
description: spf13-vim is a cross platform distribution of vim plugins and resources
  for Vim.
slug: spf13-vim-3-0-release-and-new-website
tags:
- .vimrc
- plugins
- spf13-vim
- vim
title: spf13-vim 3.0 release and new website
```

- TOML

```
categories = ["Development", "VIM"]
date = "2012-04-06"
description = "spf13-vim is a cross platform distribution of vim plugins and resources for Vim."
slug = "spf13-vim-3-0-release-and-new-website"
tags = [".vimrc", "plugins", "spf13-vim", "vim"]
title = "spf13-vim 3.0 release and new website"
```



- JSON

```
{
   "categories": [
      "Development",
      "VIM"
   ],
   "date": "2012-04-06",
   "description": "spf13-vim is a cross platform distribution of vim plugins and resources for Vim.",
   "slug": "spf13-vim-3-0-release-and-new-website",
   "tags": [
      ".vimrc",
      "plugins",
      "spf13-vim",
      "vim"
   ],
   "title": "spf13-vim 3.0 release and new website"
}
```

### Como crear un post
Una vez que instalemos __hugo__ en nuestro ordenador local, en una carpeta al estilo __wordpress__, accedemos directamente a un editor de texto del contenido de la carpeta y listo, ya tenemos de frente a unas series de directrices: __CONTENT__, __STATIC__, __THEMES__. Si bien en la última tenemos alojada nuestra plantilla y los archivos más importantes a la hora de realizar script, funciones y llamadas de variables, la primera y la segunda donde estarán situados nuestros archivos más importantes: post, páginas, recursos, imágenes, otros archivos, etc. Crear un post desde cero, es fácil "entre - comillas", ya que tenemos que darle un encabezado, un estilo y luego redactar el post con el lenguaje de marcado.

#### Ejemplo de como se redactaría un post

El estilo de formato para un post, donde hay título, negritas, cursivas etc, el __markdow__ es muy fácil de utilizar, aunque aquí hay que decir que está bastante limitado. Así que muchas veces, tengo que combinar elementos de HTML y CSS.

- Encabezados

```
# Encabezado h1
## Encabezado h2
### Encabezado h3
#### Encabezado h4
##### Encabezado h5
###### Encabezado h6

```

- Saltos de líneas

```
"Quien fue a Santiago,  
perdió su clase de redes"
```
- Inyección de un código como este:

```
``` [language]
 Código en
 varias líneas
```


- Citas

```
> La vida es muy corta para aprender Alemán. -Tad Marburg
```
- Listas sin ordenación

```
* Un elemento en una lista no ordenada
 * Otro elemento en una lista
- Un elemento más
- Otro del listado

```
- Listas ordenadas

```
1. Elemento en una lista enumerada u ordenada.
2. Otro elemento
```
- Enlaces con hipervínculo

```
[Texto del enlace aquí](URL "Título del enlace")
```
- Enlaces con referencia

```
[Texto del enlace aquí][1]
```
- Imágenes

```
![Texto alternativo](URL "Título de la imagen")
```

Y para dar colores, formatos al texto, ya se creará específicamente un hoja de estilo CSS para el resto. La idea es simplificar al máximo, código limpio y sobre todo, ágil.

### Publicaciones
Entre la estructura, crear la lógica SEO onPage (metadatos, encabezados, titulares, etc), ha tardado un poco. Pero nunca comparado con la publicación, ya que hay dos opciones: o lo subes manualmente cada vez que creas un post, y con esto digo, no solamente este post, sino toda la carpeta auto-generada aunque cuando modificas una sola línea...y con esto digo que Hugo no es adapto, o bien creas uno script en lenguaje Perl (un bash por decirlo de una manera), que ejecuta unas series de lineas de código entre tu máquina local y tu servidor remoto, y automáticamente sube los contenidos modificados.

__Exactamente que significa?__

Esto me preguntaba yo también. Si creas un post con Wordpress, abres el back-end, nuevo post, redactas, guardas, ajustas, sube imágenes, y listo. Publicado! Cada vez tienes que hacer esto y ten en cuenta, que cada vez estás interrogando la base de datos, cierto?

Hugo es diferente. No tiene base de datos, la única es tu ordenador, o __compilador__. Una vez que redactas el post, desde tu misma maquina local, normalmente la visualización en local es con el comando:
<pre>
  hugo server
</pre>

y con esto se abre la ruta siguiente:
```
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```
De aquí vas a ver siempre en una pestaña del navegador tu vista previa y como queda tu página. Y cuando finalmente quieres publicar, se crea una carpeta llamada __PUBLIC__ donde estarán tus contenidos para la parta pública, apunto carpetas y archivos index.html, categorizados o no, con un solo comando:

<pre>
  hugo
</pre>

Con esto, tenemos que ejecutar un comando de envío de esta carpeta al hosting que sea (GitHub, Bitbucket, Firebase, el tuyo que sea, VPS, etc.).

### Ventajas de Hugo
- Velocidad de ejecución
- ausencia de una base de datos
- menor estrés del servidor huésped
- tiempo de carga por debajo de los 2 segundos !!!
- mejora del lado SEO (siempre si no le pones imágenes de gran tamaño)
- ejecución del resto de script y dependencias, fuera de tu servidor principal
- aprendes mucho de programación y de algoritmos (en mi caso viene super Bien!)
- personalización sin depender de una plantilla y de un diseñador de un CMS particular
- pocas actualizaciones del core (está solo en local, nadie puede tener acceso al back-end)
- SEGURIDAD (no te pueden atacar porque quieren, no tienes base de datos, ni accesos de admin)

y cuando hablo de velocidad, menciono lo siguiente:
- no tienes que instalar plugin ni módulos, ni cargas pesadas de estos últimos
- tu creas dependencias que quieras y bajo tu mismo control
- un framework es autogestionable, no necesitas ser un experto, aunque de desarrollo front-end un poco más.
- existen muchos elementos, llamados ESQUELETOS, que te permiten automatizar procesos en la publicación de páginas.
- Wordpress tiene que cargar más de 10 segundos elementos X que ni tú sabes que existen, e instalas un CDN para optimizar estos procesos.
- Hugo tiene solo archivos ESTÁTICOS creados en HTML pero con un generador muy potente.

### Conclusiones
En mi caso, el theme Academic que cito por su simplicidad, y propiamente para mi uso diario de tutoriales, proyectos, post, vídeos algo relacionado con mi trabajo actual y mis estudios, lo veo super eficiente, rápido en la ejecución y ante los buscadores y la usabilidad, limpio y ordenado.

Existen muchos más frameworks:
- [Jekyll](https://es.wikipedia.org/wiki/Jekyll_(computaci%C3%B3n))
- Django
- Flask
- Next
- Gatsby

muchos de ellos similares a Hugo, otros dependen de lenguajes Python, PHP, Javascript, Ruby, etc. y puede que la curva de aprendizaje sea más largo (si no conoces Python, por ejemplo), excepto el citado Jekyll, muy similar a Hugo, son generadores que cada vez buscan cuota de mercado (las tendencias llevan a un aumento de búsquedas de estos), y honestamente no me hace retroceder a Wordpress nuevamente.

Dedicaré más tiempo en profundizar algunos aspectos para ayudar al resto de usuarios que decidan acercarse a la revolución de los *CMS* de blog (limpios y rápidos), pero cada vez más veo también páginas corporativas y comercio electrónico (aunque aquí hablamos de pequeñas tiendas, muy pequeñas la verdad).

Espero poder compartir al máximo en las próximas semanas, y si tienes dudas, ya sabes, pregunta lo que quieras e estaré actualizado este post sobre __HUGO__.
