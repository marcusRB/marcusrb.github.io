+++
title = "El marco de gobernanza en Google Tag Manager"
date = 2020-05-20T17:52:54+01:00
publishDate = 2020-05-20T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/marco-gobernanza-google-tag-manager"
canonical = "https://www.paradigmadigital.com/dev/marco-gobernanza-google-tag-manager/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["google tag manager", "gobierno del dato", "agilismo"]
categories = ["Analítica Digital", "Tag Manager"]
authors = ["marcusRB"]
+++

Desde 2011, los gestores de etiquetas irrumpieron en los departamentos de Marketing Digital con la capacidad de absorber gran parte del trabajo realizado por desarrolladores front/back como acompañamiento en una de las tareas más tediosas: la implementación del píxel de conversión.

Este mismo año, **Google** lanzó su propia plataforma **Tag Manager**, en una prometedora versión beta, con muchas ganas de crecer y mejorar.

Al año siguiente salió la versión definitiva y, hasta la fecha, ha ido mejorando tanto en la usabilidad como en la propia capacidad de crear e implementar diferentes script.

Este gestor, adaptado a todo el público con conocimientos mínimos de diseño front (HTML, CSS, JS, etc.) permite organizar, implementar y activar las etiquetas propias y las de terceros (se calculan unas 100 hasta la fecha).

Este post nos adentraremos, de una forma muy general, en el universo de Google Tag Manager, su interfaz, su utilidad básica y algunas de las técnicas más utilizadas.

**Google Tag Manager es muy similar al resto de los competidores premium** como Tealium, Adobe DTM, IBM o Ensighten... ya que comparte muchas funcionalidades, **se diferencia de ellos en que es free**.

Además, con las numerosas [guías, vídeos tutoriales, webinar](https://www.youtube.com/results?search_query=tag+manager+paradigma+digital) cualquier especialista en analítica puede utilizarlo. Pero, aún así, en el año 2019, la administración de estas etiquetas siguen siendo un caos.

Gracias a esta herramienta, hemos pasado de esta situación diaria de cualquier profesional de Marketing...

![img](https://www.paradigmadigital.com/wp-content/uploads/2019/10/marketing-old.png)

… a esta más ordenada:

![img](https://www.paradigmadigital.com/wp-content/uploads/2019/10/google-tag-manager.png)

## ¿Qué son las etiquetas?

Vamos por pasos. Primero, ¿qué son realmente las etiquetas?

- Son esos **pequeños fragmentos de código** requeridos para personalizar el contenido, recopilar datos analíticos y publicar anuncios y habilitar campañas de remarketing.
- Están en lenguaje JavaScript, pasan de ser esenciales para el tratamiento de los usuarios y navegantes de nuestras web y apps, otros miden el impacto y repercusión en las inversiones publicitarias.
- Si las etiquetas están mal implementadas, causan distorsiones de los cálculos en las herramientas de análisis y complican aún más la tarea de **optimización de campañas** o de toma de decisiones por tener resultados de los insight erróneos.

## ¿Cuáles son las funciones de un TMS?

TMS se compone de una interfaz SaaS principalmente en jQuery, Go o AngularJS, que tiene un sistema de versionado tipo GIT (control de calidad QA, Jenkins).

### Funcionalidades

**Las etiquetas de Digital Marketing se utilizan para agregar funcionalidad a sitios web**, contenido de vídeo y aplicaciones móviles.

Esta funcionalidad puede incluir análisis web, análisis de campañas, medición de audiencia, personalización, pruebas A/B, servidores de anuncios (DMP), retargeting de comportamiento y seguimiento de conversiones. Además, añade pruebas funcionales como detector de errores JS, timing, performance, etc.

Los sistemas de administración reemplazan estas etiquetas múltiples con una de un solo contenedor y, posteriormente, priorizan y "disparan" etiquetas individuales según sea apropiado en función de las reglas comerciales, los eventos de navegación y los datos conocidos.

La funcionalidad típica incluye el entorno de prueba (sandboxing), el seguimiento de auditoría y el control de versiones, la capacidad para probar diferentes soluciones A / B, la deduplicación de etiquetas y el acceso a los datos basados en roles.

### Beneficios

Los beneficios de los sistemas de gestión de etiquetas incluyen:

- **Agilidad.** Cada vez trabajamos más con la [metodología Agile](https://www.paradigmadigital.com/quienes-somos/como-lo-hacemos/metodologia/), así que la menor dependencia de los recursos técnicos y de los ciclos de TI confiere una mayor agilidad a los usuarios empresariales.
- **Rendimiento.** Tiempos de carga de página reducidos gracias a la carga asíncrona de etiquetas, la carga condicional y la funcionalidad de tiempo de espera.
- **Ahorro de costes.** Capacidad de duplicar etiquetas utilizadas para atribuir comisiones.
- **Control de datos.** Capacidad para controlar la fuga de datos a terceros y cumplir con la legislación de privacidad de datos (consentimiento de cookies). Los administradores también proporcionan otra capa de abstracción para gestionar la complejidad de los sitios web grandes.
- **Vista previa segura.** Algunos administradores, como el de Google, incluyen un modo de vista previa que permite verificar los problemas de formato y seguridad antes de implementar etiquetas en producción.

Pero, hay una parte mala también. Las etiquetas tienen una forma de aparecer inesperadamente, dejando incluso caer la web sin previo aviso o provocando errores en la recogida de los datos por un cambio en la parte frontal no comunicado.

Hay que tener en cuenta que estamos “modificando” el core de la web y, muchas veces, nuestro código podría ser no compatible o entrar en conflicto con algún plugin, script existente, etc.

Además, hay que considerar el tamaño del sitio web. Si es pequeño, el error podrá ser ínfimo, pero si hablamos de una web con cientos de miles de visitas al días, entonces, seguramente conocerás algunas de estas **causas de errores** más comunes:

- Etiquetas **mal configuradas** en el sitio web.
- Etiquetas **no autorizadas** en el sitio web.
- Etiquetas **duplicadas** en el sitio web.
- Etiquetas **que faltan** en el sitio web.

Para arreglar esto, con millones de instancias de analíticas y etiquetas de marketing en el sitio web, ¿por dónde empezamos? Lo primero, será comenzar con el marco de gobernanza de etiquetas (Tag Governance Framework).

## ¿Qué es el gobierno de etiquetas?

Al oír la palabra “gobernanza”, ¿qué es lo primero que te viene a la mente? ¿Control? ¿Vigilancia? ¿Protección? ¿Fuerza?

Esto es, exactamente, lo que los especialistas en marketing, analistas, arquitectos de sistema, ingenieros y desarrolladores desean para su gestor de etiquetas.

La gobernanza de etiquetas es una subdisciplina dentro de la **gobernanza de datos**, **centrada específicamente en los datos recopilados por etiquetas de análisis** y marketing digital y enviados a través de una solicitud de red.

Como ocurre con la gestión de etiquetas, la gobernanza es una disciplina que depende del software. De la misma manera que la verdadera gestión de etiquetas se basa en un TMS también requiere el uso de una aplicación (web, app).

¿Para hacer qué? Las soluciones de gobernanza analizan las solicitudes de red enviadas desde sitios web y aplicaciones en sus diversas etapas de desarrollo para identificar posibles errores de etiquetado.

### Características

- **Escanear solicitudes de red**. Las soluciones de gobernanza rastrean sitios web que buscan solicitudes de red enviadas por las etiquetas. Cuando una etiqueta de medición o de marketing digital envía una solicitud, una solución de gobernanza de etiquetas capturará esos datos y los analizará en sus valores de componentes. Estos valores se comparan con reglas predefinidas para determinar si son correctas o no.
- **En varias etapas de desarrollo**. Idealmente, cualquier empresa que implemente nuevas etiquetas en su sitio web o aplicación debería hacerlo al comienzo del ciclo de desarrollo.

Una buena solución de gobernanza debería poder escanear sitios web y aplicaciones dentro de entornos de preproducción (como un entorno de preparación).

Al hacerlo, los equipos de tecnología pueden resolver los problemas antes de que un sitio web o aplicación se active.

Además, debería supervisar el rendimiento de las etiquetas en el entorno de producción, notificando a las partes interesadas apropiadas si algo sale mal.

- **Identificar posibles errores de etiquetado**. Un error de etiquetado es cualquier desviación de las mejores prácticas de etiquetado o de los requisitos comerciales internos de una empresa (las reglas predefinidas que mencionamos anteriormente). Cuando una solución de gobernanza de etiquetas descubre un posible error de etiquetado, notificará a las partes interesadas apropiadas.

## ¿Es posible la gobernanza manual?

Si bien, en teoría, podría verificar manualmente los registros de la red en busca de errores de etiquetado (muchas compañías lo hacen), este proceso es altamente ineficiente y propenso a errores humanos.

Es **mejor adoptar la automatización** y evitar un triple bypass en su implementación de etiquetado.

### Por qué usar una solución de gobierno de etiquetas

Con las soluciones y los procesos correctamente implementados, es posible controlar las etiquetas a escala.

A medida que lo hagas podrás confiar en los datos, obtener un ROI en el gasto en tecnología y hacerlo todo de manera más eficiente que si fuera de manera manual. Por esto, obtendrás las etiquetas por las que pagaste dinero.

Este marco abarca los componentes esenciales de un programa de gobernanza de etiquetas efectivo. En las secciones siguientes detallaré una descripción de cada fase del marco, así como la forma en que las soluciones de gobernabilidad de etiquetas juegan un papel clave para lograr los objetivos de esa fase.

![img](https://www.paradigmadigital.com/wp-content/uploads/2019/10/tag-governance-framework.png)

## Fases del marco de gobernanza

### Plan

**La gobernanza de etiquetas desempeña un papel importante para ayudar a las empresas a planificar su estrategia de medición** algo que, lamentablemente, no hacen suficientes empresas.

#### Demasiadas compañías no planean

Según diferentes encuestas de varias consultoras, las empresas no documentan su estrategia de análisis. Esto se refleja negativamente en el rendimiento de la etiqueta y disminuye la eficiencia debido a la redundancia en las estrategias de medición.

Antes de comenzar a implementar etiquetas o configurar variables en su sitio, se debe crear el **plan de etiquetado** o measurement plan. Este plan documenta su estrategia de medición y comercialización, esbozando qué etiqueta está haciendo qué y por qué.

La fase de planificación permite mapear preguntas comerciales como, por ejemplo, ¿qué segmento de nuestros clientes se convierte mejor en condiciones x?, en contra de las variables que recopilan datos relevantes.

El mismo principio se aplica a las etiquetas que agregan características a su sitio: deben tener un plan determinando para establecer cuándo y dónde deben implementarse.

#### Construyendo un plan de etiquetado

Los planes de etiquetado ayudan a evitar la sobrecarga de datos. Trabajando para un cliente, una vez, tuve la tarea de ayudar a convertir aproximadamente cien paneles diferentes, con alrededor de 20-30 KPI cada uno, en datos de Analytics.

Había tantas métricas que nadie sabía para qué servían. Ese es el resultado de una mala planificación sin una documentación clara.

Lo mismo puede suceder con las etiquetas y variables de análisis: las personas comienzan a medir todo tipo de cosas **sin, realmente, tener una buena razón**.

Tener un plan te puede ayudar a minimizar la sobrecarga de datos porque se da un paso adicional al planificar antes de implementar. Parte de ese proceso de planificación implica descubrir lo que, actualmente, está recopilando y documentando. Hacerlo, te ayudará a reducir el peso analítico.

Las soluciones de gobernanza de etiquetas te permiten escanear tu sitio web para averiguar qué datos está recopilando actualmente. De esa manera, puedes evaluar lo que ya tienes implementado, lo que podría ser prescindible o cómo satisfacer las necesidades actuales sin implementar nueva tecnología.

### Comply

El gobierno de etiquetas puede ayudar a las empresas a realizar los cambios necesarios para cumplir con los controles internos y externos.

#### Hablemos de GDPR

El **Reglamento General de Protección de Datos** (GDPR) ha provocado mucho pánico con respecto a la **privacidad de datos** y las regulaciones de protección de datos.

Las personas se están acercando a estos mandatos de la manera incorrecta. Deberíamos ser más proactivos para proteger a los clientes que estamos tratando de impresionar, en lugar de hacerlo solo porque las administraciones lo han impuesto.

#### La regla de oro de la privacidad de datos

El otro día, un amigo estaba hablando de lo genial que era el tipo de datos que podíamos recopilar sobre las personas, pero con la advertencia de que no querría que le hicieran lo mismo.

Ese tipo de mentalidad puede ser peligrosa para las empresas, no solo en términos de legalidad, sino también por la óptica de la marca y, tal vez, incluso, por la ética.

La mayoría de los controles deben provenir de fuentes internas. Por supuesto, tenemos que cumplir externamente, pero debemos usar todo este concepto de privacidad para ser un diferenciador estratégico.

#### Tag Governance es el nuevo monitor de sala

Como parte del plan de etiquetado, tienes que saber exactamente qué tipos de variables debes recopilar (ID de usuario, ID de producto, etc.) y cuáles **nunca debes recopilar** (SSN, dirección de correo electrónico, datos bancarios, etc.).

Con una solución de gobernanza de etiquetas, puedes escanear las etiquetas y variables analíticas para patrones específicos. Entonces, si un valor variable coincide con un SSN lo escuchará.

### Deploy

Una empresa que aplica la gobernanza de etiquetas en **entornos de preproducción** puede corregir los errores de etiquetado antes de que sean caros. Esto ocurre, justo, cuando llegan al entorno de producción.

#### No todo comienza con los desarrolladores

Como ya hemos establecido, los desarrolladores no son la zona cero. Hay (o debería haber) una planificación significativa que entra en una estrategia de medición y marketing antes de que los desarrolladores pongan la punta de sus dedos en su teclado mecánico.

**¿Cómo llega esa planificación al desarrollador?** A través del gerente de producto que debe preocuparse por los requisitos de medición igual que por otro requisito de características del producto.

Desafortunadamente, esta no es siempre la actitud que adoptan los gerentes de producto y el rendimiento de la etiqueta, a menudo, se relega a un segundo plano.

Un buen gerente de producto o arquitecto de análisis se asegurará de que el desarrollador sepa, exactamente, qué tipo de requisitos de medición de control de calidad se deben cumplir con cada característica.

Entonces, cuando los desarrolladores van a crear una implementación de datos tendrán pautas específicas a seguir.

#### Detectando errores de etiquetado antes de que sucedan

¿Cómo encaja la gobernanza en el flujo de trabajo de un desarrollador? Cuando un equipo de desarrollo está equipado con una solución de gobernanza, pueden escanear sus implementaciones en un entorno de desarrollo para asegurarse de que las etiquetas y las variables de la capa de datos se llenen de acuerdo con los requisitos incluidos en el plan de etiquetado.

Encontrar problemas en un entorno de desarrollo tiene menos riesgo porque los datos son falsos. No está trabajando con datos reales de clientes, sino está probando cuentas.

No solo puede asegurarse de que sus etiquetas funcionan como se esperaba, sino que también puede probar instancias de datos personales no conformes antes de pasar a producción y molestar a alguien.

### QA

Las soluciones de gobernanza de etiquetas brindan a los ingenieros de control de calidad herramientas para automatizar las pruebas de etiquetas en entornos de preparación.

#### QA: su última línea de defensa antes de la producción

El trabajo de este ingeniero es similar al del desarrollador, ya que está probando el rendimiento de la etiqueta con los requisitos del plan de etiquetado antes de pasar a un entorno de producción.

La diferencia es que el aseguramiento de la calidad llevará las pruebas de rendimiento a un nivel completamente nuevo: ejecutar pruebas iterativas en diversas condiciones.

Esas pruebas deben incluir etiquetas. Cuando el ingeniero verifica si un botón funciona como se esperaba, también debería estar atento para ver si ocurrió alguna medición específica.

#### Un trabajo para QA, no para analistas

Históricamente, los analistas y los vendedores digitales se encargaban de probar los errores de etiquetado en un entorno de producción porque sus datos estaban en juego.

El problema con este enfoque es que los errores de etiquetado en la producción son caros de localizar y reparar. Las empresas respondieron y comenzaron a confiar más en los ingenieros para probar los requisitos de medición durante el control de calidad.

#### Gobierno de etiqueta y control de calidad

El ingeniero de control de calidad tiene un papel importante en las pruebas de análisis y etiquetas de marketing, como si fuera el guardián final antes de que un sitio web entre en producción.

Las soluciones de gobernanza de etiquetas ayudan a automatizar sus pruebas iterativas para que puedan asegurarse de que las etiquetas funcionan en diversas condiciones. Esto mantiene los ciclos de lanzamiento del sitio web ágiles, al tiempo que minimiza el código roto.

### Validate

Acabas de publicar una nueva versión en el entorno de producción y, ¿ahora qué? Debes asegurarte de que nada se estropeó al ponerlo en marcha.

#### Algunas etiquetas tienen miedo escénico

Cuando se activa un sitio los errores de etiquetado son comunes. Para contrarrestar el problema, los interesados en tecnología pueden asumir la responsabilidad de verificar manualmente los errores. Pero es una batalla complicada.

El gran tamaño de un sitio web y el volumen de etiquetas en el sitio hacen que una auditoría integral no sea realista. Además, las personas no están preparadas para escanear cantidades masivas de datos en busca de errores.

#### El error humano ocurre

A los humanos les gusta tomar atajos y hacer excepciones, no son sistemáticos como un programa informático.

Entonces, incluso, si tuviéramos los recursos humanos para verificar los errores de etiquetado en cada página de un sitio web, no obtendríamos los resultados de una prueba automatizada.

Reemplazar la verificación manual por una auditoría, monitoreo y validación de etiquetas puede ayudar a probar la implementación de su etiqueta a una velocidad más precisa y mucho más rápida.

### Monitor

Debe supervisar el rendimiento de la etiqueta a intervalos regulares. Cuando surgen errores de etiquetado, debe ser el primero en saberlo.

#### Flash de noticias: ruptura de sitios web

En un mundo perfecto, un sitio web en pleno funcionamiento en producción nunca tendría problemas. Pero, nunca es un mundo perfecto.

De alguna manera, algunos datos personales volátiles lo convierten en una variable analítica o una etiqueta adicional que surge de una etiqueta de publicación de anuncios.

En consecuencia, debes realizar pruebas continuas en el entorno de producción para asegurarte de que todo esté de acuerdo con el plan de etiquetado que se creó hace tanto tiempo.

#### Revísalo de nuevo. Entonces otra vez. Y una vez más.

Los errores de etiquetado aparecen en producción todo el tiempo. Pero, tampoco puede haber alguien que esté todo el tiempo monitoreando las etiquetas para asegurarse de que estén funcionando.

La solución de gobernanza de etiquetas puede hacer este trabajo pesado, escaneando periódicamente su sitio en vivo y verificando si hay errores de etiquetado.

## Implementación del marco de gobierno de etiquetas

Cuando se implementan correctamente el análisis digital y la tecnología de marketing presentan un valor significativo para la empresa.

Estas tecnologías se basan en etiquetas y las etiquetas se basan en una implementación adecuada.

Si usas una solución automatizada para controlar las etiquetas en todas las fases del marco, puedes lograr una mayor precisión de los datos y capacidad de acción en su organización.

¿Cuántas etiquetas rotas tiene en su sitio web? Realmente, no puedes saberlo hasta que lo verifiques. **¿Tu empresa o departamento de marketing o analítica cuenta con un marco de gobernanza para la gestión de etiquetas?**




[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/marco-gobernanza-google-tag-manager/)
