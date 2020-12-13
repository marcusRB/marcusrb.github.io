+++
title = "Google Data Studio, ¿cómo sacarle todo el partido?"
date = 2020-12-10T11:52:54+01:00
draft = false
robots = "index, follow"
url = "/google-data-studio-como-sacarle-todo-partido"
canonical = "https://www.paradigmadigital.com/dev/saca-todo-el-partido-data-studio/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["data studio", "data visualization", "google", "dashboard"]
categories = ["Data Visualization"]
authors = ["marcusRB"]
+++

# ¿Google Data Studio, ¿cómo sacarle todo el partido?

Hace unas semanas os mostramos [cómo crear campos calculados con Google Data Studio](https://www.paradigmadigital.com/dev/como-crear-campos-calculados-en-data-studio/) mediante una planificación con nuevos atributos y nuevas métricas,  mejor conocidos como "campos calculados", y, además, cuándo crearlos.  Tenemos varias opciones de creación y, entre ellas, pusimos los ejemplos de las 5 funciones más utilizadas. Hoy os explicamos en concreto los  casos de uso y resolvemos algunas de las preguntas más frecuentes.

## Ejemplos de casos de uso en Data Studio con los campos calculados.

### Ratio de conversión personalizado

El ratio de conversión es una métrica estándar y muy utilizada tanto en Google Analytics como en las herramientas de publicidad.

Cuando creamos objetivos, sean micro o macro, es muy importante definir unas  serie de métricas, entre ellas, el ratio de conversión. Muchas veces  estas métricas no proveen insights y necesitamos buscar alternativas.

Un ejemplo es comparar la performance de dos o más anuncios / banners de  publicidad tipo display o creatividades y obtener una KPI muy  interesante para tal fin, **CPI o Conversión Por Impresión.**

**Solución:**

Según la fuente de datos que tengamos, sea Google Ads, Google Analytics o Facebook y similares, crearemos un nuevo **campo calculado:**

- *nombre campo:* CPI Conversión Per Impression.
- *fórmula (fx):* Conversions / Impressions.

![img](https://www.paradigmadigital.com/assets/img/resize/small/9805bd646deb40ed8bf572e9185b9feb.png)

### Comparar el tráfico de dispositivos móviles entre países/regiones o áreas geográficas

Segmentar y recopilar información al detalle de una parte de nuestros datos e  informes es la tarea más importante para un analista de datos.  Imaginemos representar gráficamente el tráfico de dispositivos móviles  según el periodo seleccionado y comparado con un periodo anterior.  ¿Quieres medir el market share?

El modo eficiente de realizarlo en Data Studio es a través de un conjunto de campos calculados y añadir  más datos a través de la técnica **data blending** (datos  combinados). Sobre este punto se realizan videotutoriales que te  explicarán paso a paso en qué consiste y las novedades actuales. Te  recomiendo suscribirte al [canal YouTube de Paradigma](https://www.youtube.com/user/ParadigmaTe?feature=watch) y seguir esta sección de [Playlist de Tutoriales](https://www.youtube.com/watch?v=rMW6rxxzhbk&list=PL2yjEVbRSX7WuyLquS1XQvdrtdvx7YVmV).

**Solución:**

Crea los segmentos en Google Analytics (GA). Para este ejemplo he creado 5 segmentos de *Usuarios por cada Continente.* Sucesivamente, he creado cada reporte con su segmento en Data Studio, tal como puedes apreciar en estas imágenes.

![img](https://www.paradigmadigital.com/assets/img/resize/small/ceb2ed448c574ad1b21eb21f966c4391.png)

Siempre es bueno renombrar cada gráfico con las propias métricas y segmentos aplicados, como **Usuarios Europe, Sesiones Móvil Asia,** etc.

![img](https://www.paradigmadigital.com/assets/img/resize/small/6ff64e13119f489080d91079f2f5219f.png)

Haz click en **Data Blending** y este es el resultado:

![img](https://www.paradigmadigital.com/assets/img/resize/small/9f668110fa344b228213f955d48bf737.png)

Crea sucesivamente campos calculados a nivel de gráfico, como por ejemplo **Serie temporal,** ya que los campos calculados a nivel de fuente de datos no son posibles con datos combinados.

![img](https://www.paradigmadigital.com/assets/img/resize/small/92198ba12cc548ed9e39fc1ae5ee1da6.png)

Cambia el tipo de unidad de medida de **Numérico** a **Porcentaje**:

![img](https://www.paradigmadigital.com/assets/img/resize/small/fed0c412a0614b1e91078cab4dda0661.png)

Finalmente aplica estos campos calculados a las métricas de tu gráfico:

![img](https://www.paradigmadigital.com/assets/img/resize/small/0709537fe832414cb4f4e22126f4ac94.png)

### Ratio de abandono del funnel

¿Quiere mostrar el punto de abandono del funnel de conversión? Si bien los  pasos del funnel de objetivos de Google Analytics pueden proporcionar  información, solo funcionan si todas las etapas de su embudo equivalen a una página vista, ya que se quedan limitados cuando estos se basan en  eventos

En nuestro ejemplo, asumimos que has creado un objetivo de Google Analytics para cada una de las etapas de su embudo.

**Solución:**

Crea un campo calculado donde se realice el ratio de abandono del embudo de conversiones de todos los pasos.

![img](https://www.paradigmadigital.com/assets/img/resize/small/a2e38f56b77444819005d2ad4973514e.png)

Crea el campo calculado y lo renombras según el tipo de stage donde se aplicaría:

```
1-(Funnel Stage 2 (Goal 2 Completions))/Funnel Stage 1 (Goal 1 Completions)
```

![img](https://www.paradigmadigital.com/assets/img/resize/small/708587c2c3fa4635b2fca20d8dfb5b5e.png)

Cambia la unidad de la métrica de **Numérica** a **Porcentaje.**

Puedes mostrar los campos calculados creados en los reportes junto con un  gráfico de barras horizontales que muestra los números absolutos de  consecución de objetivos en la etapa del embudo como en este ejemplo:

![img](https://www.paradigmadigital.com/assets/img/resize/small/6f772db388134ca9b4c2345639f4dd3c.png)

### Limpieza de URLs

Probablemente, todos nos hemos encontrado con informes que distrajeron nuestra  atención de la conclusión principal y nos vieron enfocarnos en errores  leves. Las URL inconsistentes en el informe permiten a los usuarios de  estos informes y cuadros de mando dudar de nuestras conclusiones,  incluso si el efecto de sesgo es mínimo.

Limpiar estas URL con  campos calculados es un ejercicio sencillo. Estamos abordando soluciones para tres escenarios comunes en los **reportes de la dimensión de página.**

Páginas reestructuradas

Por una razón u otra, la URL de una página ha cambiado con el tiempo. Sin  embargo, en términos de informes, ambas URL deben doblarse en una.  Supongamos para este ejercicio que **Classic XL Backpack** se movió de la categoría habitual a la categoría de marca de propia de Google.

- Anterior URL: https://your.googlemerchandisestore.com/details/Lifestyle/Bags/GGL1757_Classic XL Backpack
- Nueva URL: https://your.googlemerchandisestore.com/Google/Bags/GGL1757_Classic XL Backpack

Ya que en nuestro dashboard de Data Studio queremos redireccionar todo  este tráfico anterior al nuevo aplicamos la solución a través de nuestra función **RegExp_Replace.**

**Solución:**

- Creamos una dimensión personalizada del tipo campo calculado.
- Seleccionamos desde data source nuevo campo calculados desde campos y podemos escribir nuestra fórmula:

```none
REGEXP_REPLACE(Page, '/details/Lifestyle/Bags/GGL1757_Classic%20XL%20Backpack*', '/Google/Bags/GGL1757_Classic%20XL%20Backpack')
```

### URLs duplicadas

¿Se puede acceder a algunas páginas a través de diferentes URL? En función  del CMS utilizado y de la configuración del servidor, no es raro que se  pueda acceder a las páginas con y sin barras diagonales finales.  Dependiendo de cómo estén vinculadas esas páginas interna y  externamente, se determinará cuánto tráfico se informa para cada  versión. Arreglar esto de forma retroactiva para los informes  garantizará la coherencia de sus datos. También es importante tener una  buena configuración de la propia herramienta de analítica que reduzca  estos errores; por ejemplo, en este post de se habla de la [guía de Google Analytics](https://www.paradigmadigital.com/techbiz/guia-de-google-analytics-10-consejos-utiles-para-aumentar-tu-trafico-y-ranking-1-2/) y cómo configurarla correctamente.

**Solución:**

- Utilizamos la función en Data Studio para eliminar el forward slash o comúnmente llamada slash /.
- Creamos desde Data Source un campo calculado del tipo dimensión con la función **REGEXP_REPLACE**

```none
REGEXP_REPLACE(Page,"./","")
```

### Inconsistencia de mayúsculas y minúsculas

Si el entorno de su servidor web distingue entre mayúsculas y minúsculas,  es posible que las URL aparezcan con casos incoherentes en sus informes. Dedicar unos minutos a consolidar los datos en sus paneles es un tiempo bien invertido. La otra vía sería realizar un filtro a nivel de informe desde la herramienta de analítica convirtiendo todo el tráfico entrante en mayúscula o minúscula, así reduciendo los errores y los sesgos en  los informes.

**Solución:**

- Vamos a utilizar la función para convertir nuestras páginas en minúsculas.
- Creamos un campo calculado del tipo dimensión en nuestro data source y seleccionamos la función **LOWER**

```none
Lower(page)
```

### Separadores en las URLs

Ha habido mucho debate sobre los mejores separadores de palabras de URL (+ , - o _ ) desde una perspectiva de SEO. Si se trata de un sitio web  antiguo, es probable que los separadores de palabras de URL empleados  hayan cambiado con el tiempo. Ha llegado el momento de consolidarlos en  Data Studio.

**Solución:**

- Utilizamos la función para reemplazar todos los separadores + y _ en un guion -.
- Creamos desde Data Source una nueva dimensión que nos ayude en esta tarea con la función **REGEXP_REPLACE**

```none
REGEXP_REPLACE(Page,'(\\+|_)','-')
```

### Eliminar los parámetros en las URLs

La eliminación de parámetros de consulta de una lista de URL es un caso de uso común cuando se desglosan las métricas por dimensión de página.  Esto se puede hacer con los filtros de Google Analytics para datos  futuros o nuevas configuraciones, sin embargo, no es una solución para  los datos ya recopilados.

**Solución:**

- Ejemplo aplicado con la función **REGEXP_REPLACE** en nuestro data source:

```none
REGEXP_REPLACE(page, '\\?.+', '')
```

## Agrupación de contenidos

¿Necesitas agrupar las métricas por tipos de contenido específicos para obtener  mejores insights? La configuración de grupos de contenido es la forma  estándar de hacer esto para datos futuros así como los actuales. También podemos aplicarlos con la ayuda de campos calculados en Google Data  Studio.
**Solución:**

- Creamos la agrupación de contenidos en Data Studio.
- A través de la función **CASE** desde la fuente de datos, creamos una dimensión personalizada.

```none
CASE 
WHEN (Page="/es" OR Page="/de" OR Page="/pt") THEN "Inicio" 
WHEN (REGEXP_MATCH(Page, '^/../shop/.*')) THEN "Ecommerce"
WHEN (REGEXP_MATCH(Page, '^/../blog/.*')) THEN "Blog"
WHEN (REGEXP_MATCH(Page, '(^/../company/.*|.*empleo.*)')) THEN "Empresa"
WHEN (REGEXP_MATCH(Page, '^/../support/.*')) THEN "Soporte"
WHEN (REGEXP_MATCH(Page, '.*/contact```
)) THEN "Contactos"
ELSE "Otros" 
END
```

Estamos usando la función **CASE** junto con la función **REGEX_MATCH** para definir los grupos de contenido. El poder de las expresiones  regulares te permite definir reglas de coincidencia más complejas. Ten  en cuenta las condiciones superpuestas en las diferentes declaraciones **WHEN:** la función **CASE** siempre ejecutará la primera cláusula que coincida.

Ejemplo: la página URL */blog/consejos-buscar-empleo* se agrupará en la categoría **Blog,** aunque también coincide con la categoría Empresa, por tener en su URL  la palabra empleo. Sin embargo, tal como hemos estructurado nuestra  función, la primera condición TRUE se ejecutará y nos devolverá el  primer resultado. Podemos personalizar todo lo mencionado anteriormente  para que se ajuste mejor a nuestro caso de uso específico.

## Preguntas frecuentes

Ya que me llegaron varios comentarios anteriormente a este post, intentaré resumir algunas de las preguntas más frecuentes que he ido recopilando y daré una explicación sobre el uso de las métricas calculadas.

1. **¿Por qué existen limitaciones en cuanto a qué métricas/dimensiones puedo  utilizar de forma conjunta en un campo calculado de Google Data Studio?**

Normalmente podemos utilizar métricas o dimensiones en una misma función o a un  nuevo campo calculado, pero cuando intentamos introducir las dos  conjuntamente muchas veces devuelve un error. Cuando normalmente  trabajamos con la herramienta de analitica digital, Google Analytics por ejemplo, y queremos crear campos calculados hay una lógica detrás:  puede resumir usuarios y sesiones, restar páginas vistas y dividir por  salidas si lo desea. También existe un límite de alcances que no permite realizar un resultado, por ejemplo la jerarquía habitual en analítica  digital es User > Sessions > Events. Alterar este orden conlleva a un error.

Los campos calculados de la fuente de datos también se  pueden utilizar en otros campos calculados del mismo tipo (dimensión  frente a métrica); sin embargo, esto no funciona con campos calculados a nivel de gráfico.

1. **¿Por qué no funciona mi función CASE?**

Una razón que he encontrado es cuando incluí campos del tipo Fecha en mi  fórmula CASE; es decir, día de la semana. Esos campos se representan  internamente con un número en lugar del nombre del día; es decir, 1 en  lugar de lunes.
Para resolver esto, puede usar el número en tu declaración de condición o usar el campo Nombre del día de la semana en su lugar.

1. **¿Por qué mi función REGEX no coincide?**

Todos hemos estado allí y la resolución de problemas puede ser tediosa. Si se trata de un caso de uso de Google Analytics se puede probar su  expresión regular con los filtros avanzados en GA. Alternativamente, se  puede utilizar otras herramientas de testing. Yo utilizo esta de  Regex101 , pero hay muchas más.

1. **¿Puedo crear un campo calculado a partir de dos fuentes diferentes?**

Sí. Sin embargo, esto solo funciona en una configuración específica. En  primer lugar, deberá unir tus fuentes de datos a una fuente de datos  combinada (data blending). Luego, puedes crear un campo calculado a  nivel de gráfico (con sus limitaciones) sobre su nueva fuente de datos  combinados. Lamentablemente, no puedes crear campos calculados de fuente de datos en datos combinados.

1. **¿Por qué mi campo calculado está en blanco?**

Lo más probable es que su función de campo calculado no devuelva ningún  valor para el período de tiempo seleccionado. De forma predeterminada,  Data Studio muestra *null** en las tablas si este es el caso. Sin embargo, también se puede cambiar a nada y transformar este valor en *blank* o *-no data-.*

## Conclusión

El uso de los **campos calculados de Google Data Studio** nos ha ayudado a llevar nuestros informes al siguiente nivel. Ya sea  mediante su uso para aumentar sustancialmente el interés de las partes  interesadas y la demanda de informes personalizados o para obtener  información completamente nueva sobre sus datos son imprescindibles si  utilizas Data Studio.

Como especialista en marketing digital, el  éxito siempre dependerá de su capacidad para presentar datos relevantes  de la forma más intuitiva y atractiva. Los campos calculados de Data  Studio pueden ser una parte esencial para facilitar la toma de  decisiones basada en datos. Pero no se aplica solo a esta herramienta  SaaS, como analista digital, analista de datos o también si trabajas en  inteligencia de negocio, crear nuevas dimensiones y métricas es algo muy habitual. Como he mencionado en otro post sobre la [comparativa de las diferentes plataformas de Business Intelligence](https://www.paradigmadigital.com/techbiz/comparativa-plataformas-business-intelligence-introduccion/), también podrás aplicar estas mismas técnicas si la herramienta de  visualización a utilizar será Power BI, Tableau, AWS QuickSight,  Looker...

¿Has encontrado algo nuevo sobre los campos calculados  de Google Data Studio? Si es así, puedes comentar en este mismo post y  abrir un debate.

Y si desea aumentar aún más su conocimiento de  esta increíble herramienta de informes, consulte nuestro canal de  YouTube y de los [webinar realizados](https://www.paradigmadigital.com/eventos/) y/o futuros.



[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/saca-todo-el-partido-data-studio/)




