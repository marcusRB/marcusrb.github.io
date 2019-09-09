---
title: Reglas del aprendizaje automático - Fase II
linktitle: Reglas del aprendizaje automático - Fase II
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  intro-machine-learning:
    parent: Machine learning 101
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

# Fase II de aprendizaje automático: Ingeniería de atributos

En la primera fase del ciclo de vida de un sistema de aprendizaje automático, la prioridad es mandar los datos de entrenamiento al sistema de aprendizaje, lograr instrumentar las métricas de interés y crear una infraestructura de publicación. Una vez que cuentas con un sistema integral en funcionamiento con pruebas de unidades y del sistema instrumentadas, comienza la fase II.

En la segunda fase, hay muchas recompensas a corto plazo. Existe una variedad de atributos obvios que se pueden agregar al sistema. Además, la segunda fase de aprendizaje automático implica agregar tantos atributos como sea posible y combinarlos de formas intuitivas. Durante esta fase, todas las métricas deben continuar subiendo. Habrá muchos lanzamientos, y es una excelente oportunidad para incorporar muchos ingenieros que puedan recopilar todos los datos que necesitas para crear un sistema de aprendizaje verdaderamente sorprendente.

Regla n.º 16: Planifica el lanzamiento y la iteración.
No esperes que el modelo en el que trabajas ahora sea el último que lanzarás o, incluso, que dejarás de lanzar modelos. Por lo tanto, ten en cuenta que la complejidad de este lanzamiento retrasará los lanzamientos futuros. Muchos equipos han lanzado uno o más modelos por trimestre durante años. Existen tres razones básicas para lanzar modelos nuevos:

Tienes atributos nuevos.
Deseas ajustar la regularización y combinar atributos antiguos de formas nuevas.
Deseas ajustar el objetivo.
Independientemente de la razón, es recomendable poner atención en el modelo: analizar los datos que se ingresan en el ejemplo te permite encontrar señales nuevas y detectar señales antiguas con problemas. Entonces, a medida que desarrollas el modelo, piensa en lo fácil que es agregar, quitar o recombinar atributos. Piensa en lo fácil que es crear una copia nueva de la canalización y verifica que sea correcta. Piensa en si es posible ejecutar dos o tres copias en paralelo. Por último, no te preocupes si no logras incluir todos los atributos en esta versión de la canalización. Las incluirás el próximo trimestre.

Regla n.º 17: Comienza con los atributos directamente observados e informados, en lugar de los atributos aprendidos.
Este puede ser un punto controversial, pero evita muchos problemas. Primero, describamos qué es un atributo aprendido. Un atributo aprendido es un atributo generado por un sistema externo (como un sistema de agrupación en clústeres sin supervisar) o el mismo modelo (por ejemplo, mediante un modelo factorizado o aprendizaje profundo). Ambas opciones pueden ser útiles, pero tienen muchos problemas, por lo que no es conveniente incluirlas en el primer modelo.

Si usas un sistema externo para crear un atributo, recuerda que ese sistema tiene su propio objetivo. Es posible que el objetivo del sistema externo no tenga mucha relación con tu objetivo actual. Si realizas una instantánea del sistema externo, es posible que esté desactualizada. Si actualizas los atributos desde el sistema externo, es posible que los significados cambien. Si usas un sistema externo para proporcionar un atributo, debes tener mucho cuidado con ese enfoque.

El principal problema de los modelos multiplicados y los modelos profundos es que no son convexos. Por lo tanto, no hay garantía de encontrar una solución óptima (o de aproximarse a esta). Además, el mínimo local de cada iteración puede ser diferente. Esta variación no permite juzgar con exactitud si el impacto de un cambio en tu sistema es relevante o contingente. Si creas un modelo sin atributos profundos, obtienes un sistema de referencia con buen rendimiento. Una vez que alcanzas este punto de referencia, puedes probar enfoques menos ortodoxos.

Regla n.º 18: Prueba atributos de contenido que generalicen en contextos.
A menudo, un sistema de aprendizaje automático es una parte pequeña de una entidad mucho más grande. Por ejemplo, si imaginas una publicación que se puede usar en Lo Más Interesante, mucha gente hará +1, la compartirá o escribirá un comentario en ella antes de que llegue a mostrarse en Lo más interesante. Si proporcionas esas estadísticas al modelo, este puede promocionar publicaciones nuevas para las que no tiene datos en el contexto que está optimizando. YouTube Watch Next puede usar la cantidad de videos que miraste, o que miraste de forma secuencial (la cantidad de veces que se miró un video después de otro) en la búsqueda de YouTube. También puedes usar clasificaciones de usuarios explícitas. Por último, si usas una acción de usuario como etiqueta, ver esa acción en el documento en un contexto diferente puede ser un excelente atributo. Todos estos atributos te permiten aportar contenido nuevo al contexto. Ten en cuenta que esto no se trata de personalización: primero, descubre si a alguien le gusta el contenido en este contexto; luego, descubre a quién le gusta más o menos.

Regla n.º 19: Usa atributos muy específicos cuando sea posible.
Gracias a la gran cantidad de datos, es más fácil aprender millones de atributos sencillos que unos pocos atributos complejos. Los identificadores de documentos que se obtienen y las consultas canónicas no brindan mucha generalización, pero alinean las clasificaciones con las etiquetas en las consultas principales. Por lo tanto, no temas agrupar atributos si cada uno se aplica a una fracción muy pequeña de datos, pero la cobertura total es de más del 90%. Puedes usar la regularización para eliminar los atributos que se aplican a pocos ejemplos.

Regla n.º 20: Combina y modifica los atributos existentes para crear atributos nuevos de una forma legible.
Hay diferentes formas de combinar y modificar atributos. Los sistemas de aprendizaje automático como TensorFlow te permiten preprocesar los datos mediante transformaciones. Los dos enfoques estándar son las "discretizaciones" y las "combinaciones".

La discretización consiste en tomar un atributo continuo y crear varios atributos discretos. Considera un atributo continuo como la edad. Puedes crear un atributo que es 1 cuando la edad es menor de 18, otro atributo que es 1 cuando la edad es entre 18 y 35, etc. No pienses demasiado en los límites de estos histogramas; los cuantiles básicos serán los más eficaces.

Las combinaciones unen dos o más columnas de atributos. En la terminología de TensorFlow, una columna de atributos es un conjunto de atributos homogéneos (p. ej., {masculino, femenino}, {EE.UU., Canadá, México}, etc.). Una combinación es una nueva columna de atributos que incluye, p. ej., {masculino, femenino} × {EE.UU., Canadá, México}. Esta nueva columna de atributos contendrá el atributo (masculino, Canadá). Si usas TensorFlow y le indicas que cree esta combinación, este atributo (masculino, Canadá) aparecerá en los ejemplos que representan canadienses masculinos. Ten en cuenta que se necesita una enorme cantidad de datos para aprender modelos con combinaciones de tres, cuatro o más columnas de atributos básicos.

Las combinaciones que producen columnas de atributos muy grandes pueden producir un sobreajuste. Por ejemplo, imagina que haces algún tipo de búsqueda y tienes una columna de atributos con palabras en la consulta y otra con palabras en el documento. Si unes estas columnas con una combinación, terminarás con muchos atributos (consulta la regla n.º 21).

Cuando trabajas con texto, existen dos alternativas. La más rigurosa es un producto escalar. En su forma más simple, un producto escalar simplemente cuenta la cantidad de palabras en común entre la consulta y el documento. Por lo tanto, este atributo se puede discretizar. Otro enfoque es una intersección: tenemos un atributo que está presente solo si la palabra "poni" aparece en el documento y en la consulta, y otro atributo que está presente solo si la palabra "el" aparece en el documento y en la consulta.

Regla n.º 21: La cantidad de ponderaciones de atributos que puedes aprender en un modelo lineal es casi proporcional a la cantidad de datos que tienes.
Existen resultados teóricos fascinantes sobre aprendizaje estadístico relacionados con el nivel de complejidad correspondiente de un modelo, pero esta regla es todo lo que necesitas saber. Tuve discusiones con personas que ponían en duda que se pudiera aprender algo con mil ejemplos o que nunca se necesitan más de un millón de ejemplos, porque están empecinados con un determinado método de aprendizaje. La clave es escalar el aprendizaje a la medida del tamaño de los datos:

Si trabajas con un sistema de ranking de búsquedas, existen millones de palabras diferentes en los documentos y la consulta, y tienes 1000 ejemplos etiquetados, debes usar un producto escalar entre los atributos de consultas y de documentos, TF-IDF y una media docena de otros atributos desarrollados por humanos. 1000 ejemplos, una docena de atributos.
Si tienes un millón de ejemplos, intersecta la columna de atributos de consultas con la de documentos, y aplica regularización y, posiblemente, selección de atributos. Esto te brindará un millón de atributos, pero, con la regularización, tendrás menos. 10 millones de ejemplos, tal vez 100,000 atributos.
Si tienes miles o cientos de miles de millones, puedes combinar las columnas de atributos con tokens de consultas y de documentos mediante la regularización y la selección de atributos. Tendrás miles de millones de ejemplos y 10 millones de atributos. La teoría de aprendizaje estadístico raramente establece límites rígidos, pero ofrece un buen punto de partida.
En última instancia, usa la regla n.º 28 para decir qué atributos usarás.

Regla n.º 22: Quita los atributos que ya no uses.
Los atributos sin usar crean deuda técnica. Si descubres que no estás usando un atributo y que no sirve combinarlo con otros atributos, quítalo de la infraestructura. Debes mantener limpia tu infraestructura para que puedas probar los atributos más prometedores tan rápido como sea posible. Si es necesario, tu atributo se puede volver a agregar en cualquier momento.

Ten en cuenta la cobertura cuando analices qué atributos agregarás o conservarás. ¿Cuántos ejemplos cubre el atributo? Por ejemplo, si tienes algunos atributos de personalización, pero solo el 8% de los usuarios tiene atributos de personalización, eso no será muy eficaz.

Al mismo tiempo, algunos atributos te sorprenden gratamente. Por ejemplo, si tienes un atributo que cubre solo el 1% de los datos, pero el 90% de los ejemplos de este atributo son positivos, es un excelente atributo que agregar.

Análisis humano del sistema
Antes de avanzar a la tercera fase de aprendizaje automático, es importante hablar de algo que no se enseña en ninguna clase de aprendizaje automático: cómo analizar un modelo existente y mejorarlo. Esto es más un arte que una ciencia. Aun así, existen muchos antipatrones que es conveniente evitar.

Regla n.º 23: No eres el típico usuario final.
Probablemente, esta es la razón más común por la que un equipo no progresa. Si bien usar un prototipo con tu equipo o usar un prototipo en tu empresa tiene muchos beneficios, los empleados deben analizar si el rendimiento es correcto. Si bien un cambio que sea evidentemente malo no debe usarse, cualquier función que parezca lista para la producción debe probarse aún más, ya sea contratando a gente común para que responda preguntas en una plataforma de participación colectiva o mediante un experimento en vivo con usuarios reales.

Hay dos razones para ello. Estás demasiado familiarizado con el código. Es posible que busques un aspecto específico de las publicaciones, o que estés muy involucrado (p. ej., sesgo de confirmación). La segunda razón es que tu tiempo es demasiado valioso. Considera el costo de nueve ingenieros en una reunión de una hora de duración y cuántas etiquetas logradas con trabajo humano puedes obtener en una plataforma de participación colectiva.

Si realmente quieres comentarios de usuarios, implementa metodologías de experiencia de usuario. Crea usuarios persona (puedes encontrar una descripción en el libro Sketching User Experiences [Cómo diseñar experiencias de usuario] de Bill Buxton) al comienzo del proceso y, luego, implementa una prueba de usabilidad (puedes encontrar una descripción en el libro Don’t Make Me Think [No me hagas pensar] de Steve Krug). Los usuarios persona implican crear un usuario hipotético. Por ejemplo, si tu equipo se compone solo por hombres, será beneficioso diseñar un usuario persona femenina de 35 años (completa con atributos de usuario) y observar los resultados que genera, en lugar de los 10 resultados para hombres de 25 a 40 años. También puedes lograr una nueva perspectiva al evaluar cómo reaccionan las personas reales a tu sitio (de forma local o remota) en una prueba de usabilidad.

Regla n.º 24: Mide el delta entre los modelos.
Una de las formas más sencillas y, a veces, más útiles de realizar mediciones que puedes usar antes de que los usuarios vean tu nuevo modelo es calcular la diferencia entre los nuevos resultados y los obtenidos con el sistema en producción. Por ejemplo, si tienes un problema de ranking, ejecuta ambos modelos con una muestra de consultas en todo el sistema y observa el tamaño de la diferencia simétrica de los resultados (ponderados según la posición en el ranking). Si la diferencia es muy pequeña, entonces puedes deducir que habrá poco cambio, sin necesidad de ejecutar un experimento. Si la diferencia es muy grande, entonces debes asegurarte de que el cambio sea positivo. Analizar las consultas donde la diferencia simétrica es alta te puede ayudar a comprender de forma cualitativa cómo fue el cambio. Sin embargo, asegúrate de que el sistema sea estable. Cuando compares un modelo consigo mismo, asegúrate de que tenga una diferencia simétrica baja (idealmente cero).

Regla n.º 25: Cuando elijas un modelo, el rendimiento utilitario predomina por sobre el poder de predicción.
Tu modelo puede intentar predecir la tasa de clics. Sin embargo, en última instancia, la pregunta clave es lo que haces con esa predicción. Si la usas para clasificar documentos, entonces la calidad del ranking final importa más que la predicción en sí misma. Si predices la probabilidad de que un documento sea spam y, luego, tienes un punto límite sobre lo que se bloquea, entonces la precisión de lo que se permite tiene más importancia. La mayoría de las veces, estos dos aspectos coinciden; cuando no es así, es probable que haya una pequeña ganancia. Además, si hay algún cambio que mejore la pérdida logística, pero que reduzca el rendimiento del sistema, busca otro atributo. Si esto comienza a suceder con más frecuencia, es hora de volver a evaluar el objetivo del modelo.

Regla n.º 26: Busca patrones en los errores observados y crea atributos nuevos.
Supongamos que ves un ejemplo de entrenamiento que el modelo "no entendió". En una tarea de clasificación, este error puede ser un falso positivo o un falso negativo. En una tarea de clasificación, el error puede ser un par donde un positivo tiene un ranking menor que un negativo. El punto más importante es que sea un ejemplo que el sistema de aprendizaje automático sepa que no lo entendió y que lo corrija si tiene la oportunidad. Si le agregas un atributo al modelo para que pueda corregir el error, el modelo intentará usarlo.

Por otro lado, si intentas crear un atributo basado en ejemplos que el sistema no considera errores, el atributo se ignorará. Por ejemplo, supongamos que, en la búsqueda de apps de Play, alguien busca "juegos gratuitos". Supongamos que uno de los primeros resultados es una app de bromas menos relevante. Entonces, creas un atributo para "apps de bromas". Sin embargo, si maximizas la cantidad de instalaciones y las personas instalan una app de bromas cuando buscan juegos gratuitos, el atributo para "apps de bromas" no tendrá el efecto deseado.

Una vez que tengas ejemplos que el modelo no haya entendido, busca las tendencias que estén fuera del conjunto de atributos actual. Por ejemplo, si parece que el sistema penaliza las publicaciones más largas, agrega la longitud de la publicación. No seas demasiado específico sobre los atributos que agregues. Si agregas la longitud de la publicación, no intentes adivinar qué significa "largo", solo agrega una decena de atributos y permite que el modelo descubra qué hacer con ellos (consulta la regla n.º 21). Esta es la forma más fácil de obtener el resultado deseado.

Regla n.º 27: Intenta cuantificar el comportamiento no deseado que observes.
Algunos miembros de tu equipo comenzarán a frustrarse con las propiedades del sistema que no les gusten, ya que la función de pérdida existente no las captura. En este punto, deben hacer lo que sea necesario para convertir sus quejas en números sólidos. Por ejemplo, si consideran que se muestran demasiadas "apps de bromas" en la búsqueda de Play, se pueden contratar a evaluadores humanos para que identifiquen las apps de bromas. (Puedes usar datos etiquetados por humanos en este caso, ya que una fracción relativamente pequeña de consultas representan una gran fracción del tráfico). Si los problemas se pueden medir, puedes comenzar a usarlos como atributos, objetivos o métricas. La regla general es "medir primero, optimizar después".

Regla n.º 28: Ten en cuenta que el comportamiento idéntico a corto plazo no implica un comportamiento idéntico a largo plazo.
Imagina que tienes un sistema nuevo que analiza cada doc_id y exact_query, y luego calcula la probabilidad de clic para cada documento y cada consulta. Descubres que este comportamiento es casi idéntico a tu sistema actual en la comparación y la prueba A/B; por lo tanto, dado su simplicidad, lo ejecutas. Sin embargo, notas que no se muestran apps nuevas. ¿Por qué? Bueno, dado que tu sistema solo muestra un documento basado en su propio historial con esa consulta, no hay forma de aprender qué documento nuevo debe mostrar.

La única forma de entender cómo debe funcionar un sistema a largo plazo es entrenarlo solo con datos adquiridos cuando el modelo está publicado. Esto es muy difícil.

Desviación entre el entrenamiento y la publicación
La desviación entre el entrenamiento y la publicación es la diferencia entre el rendimiento del entrenamiento y el de la publicación. Existen diferentes razones para esta desviación:

una discrepancia entre cómo manipulas los datos en las canalizaciones de entrenamiento y del servidor
un cambio en los datos entre el momento del entrenamiento y el del servidor
un ciclo de retroalimentación entre el modelo y el algoritmo
Hemos observado sistemas de aprendizaje automático de producción en Google con una desviación entre el entrenamiento y la publicación que afecta negativamente el rendimiento. La mejor solución es supervisarlo de forma explícita para que los cambios en el sistema y en los datos no generen una desviación inadvertida.

Regla n.º 29: La mejor manera de asegurarte de que el entrenamiento se asemeja a la publicación es guardar el conjunto de atributos que usas en la publicación y canalizar esos atributos en un registro para luego usarlos en el entrenamiento.
Incluso si no lo puedes hacer para cada ejemplo, hazlo para una fracción pequeña, de forma tal que puedas verificar la coherencia entre la publicación y el entrenamiento (consulta la regla n.º 37). En Google, los equipos que hicieron esta medición se sorprendieron a menudo por los resultados. La página de inicio de YouTube cambió a atributos del registro en el servidor, lo que generó mejoras de calidad importantes y redujo la complejidad del código. Ahora, muchos equipos están cambiando sus infraestructuras.

Regla n.º 30: ¡Realiza muestras con datos con ponderación por importancia, no los quites!
Cuando tienes muchos datos, es tentador usar los archivos del 1 al 12 e ignorar los archivos del 13 al 99. Esto es un error. Si bien se pueden quitar los datos que nunca se mostraron al usuario, la ponderación por importancia es la mejor opción para el resto. La ponderación por importancia implica que, si decides hacer una muestra con el ejemplo X con una probabilidad del 30%, la ponderación será de 10/3. Con la ponderación por importancia, se mantienen todas las propiedades de calibración que analizamos en la regla n.º 14.

Regla n.º 31: Ten en cuenta que, si cruzas datos de una tabla durante el entrenamiento y la publicación, los datos en la tabla pueden cambiar.
Digamos que cruzas ID de documentos a una tabla que contiene atributos para esos documentos (como la cantidad de comentarios o clics). Entre el entrenamiento y el servidor, es posible que cambien los atributos en la tabla. Por lo tanto, puede cambiar predicción del modelo para el mismo documento entre el entrenamiento y la publicación. La forma más sencilla de evitar este tipo de problemas es registrar los atributos durante la publicación (consulta la regla n.º 32). Si la tabla cambia lentamente, puedes tomar una instantánea de la tabla a cada hora o cada día para obtener datos razonablemente cercanos. Ten en cuenta que esto no resuelve completamente el problema.

Regla n.º 32: Reutiliza el código entre la canalización de entrenamiento y la canalización del servidor, siempre que sea posible.
El procesamiento por lotes es diferente al procesamiento en línea. En el procesamiento en línea, debes responder cada solicitud a medida que llega (p. ej., debes realizar una búsqueda separada para cada consulta). En el procesamiento por lotes, puedes combinar tareas (p. ej., unir funciones). En la publicación, implementas el procesamiento en línea, mientras que el entrenamiento es una tarea de procesamiento por lotes. Sin embargo, hay varias formas de reutilizar el código. Por ejemplo, puedes crear un objeto que sea específico para tu sistema, donde el resultado de cualquier consulta o unión se puede almacenar de una forma legible y donde los errores se pueden probar fácilmente. Luego, una vez que hayas reunido toda la información, durante el entrenamiento o la publicación, ejecutas un método común para conectar el objeto legible específico del sistema y el formato que espera el sistema de aprendizaje automático. Esto elimina una fuente de desviación entre el entrenamiento y la publicación. Como corolario, intenta no usar dos lenguajes de programación diferentes entre el entrenamiento y la publicación. Si haces esto, será casi imposible compartir el código.

Regla n.º 33: Si produces un modelo basado en los datos hasta el 5 de enero, prueba el modelo en los datos a partir del 6 de enero.
En general, mide el rendimiento de un modelo con datos reunidos en forma posterior a aquellos con los que se ha entrenado el modelo, ya que refleja de forma más precisa qué hará el sistema en la producción. Si produces un modelo basado en los datos hasta el 5 de enero, prueba el modelo en los datos a partir del 6 de enero. El rendimiento no debería ser tan bueno en los datos nuevos, pero no debería ser mucho peor. Como puede haber efectos diarios, es posible que no predigas la tasa de clics promedio o la tasa de conversión, pero el área bajo la curva, que representa la posibilidad de darle una puntuación más alta al ejemplo positivo que al ejemplo negativo, debería ser razonablemente parecida.

Regla n.º 34: En la clasificación binaria para filtrado (como la detección de spam o la identificación de correos electrónicos de interés), realiza pequeños sacrificios a corto plazo en el rendimiento para lograr datos más claros.
En la tarea de filtrado, los ejemplos que se marcan como negativos no se muestran al usuario. Supongamos que tienes un filtro que bloquea el 75% de los ejemplos negativos durante la publicación. Puede surgir la tentación de obtener más datos de entrenamiento a partir de las instancias que se muestran a los usuarios. Por ejemplo, si un usuario marca como spam un correo electrónico que permitió tu filtro, se puede aprender de esta acción.

Pero este enfoque introduce un sesgo en la muestra. Puedes obtener datos más claros si etiquetas el 1% de todo el tráfico como "retenido" durante la publicación y envías todos los ejemplos retenidos al usuario. Ahora, el filtro bloqueará al menos el 74% de los ejemplos negativos. Los ejemplos retenidos se convertirán en los datos de entrenamiento.

Si el filtro bloquea el 95% o más de los ejemplos negativos, este enfoque se hace menos viable. Aun así, si deseas medir el rendimiento en la publicación, puedes hacer una muestra todavía más pequeña (p. ej., 0.1% o 0.001%). Diez mil ejemplos son suficientes para estimar el rendimiento de forma precisa.

Regla n.º 35: Ten en cuenta la desviación inherente a los problemas de ranking.
Si cambias el algoritmo de clasificación lo suficiente como para ver resultados diferentes, habrás logrado modificar los datos que el algoritmo verá en el futuro. Este tipo de desviación aparecerá, y debes tenerla en cuenta al diseñar el modelo. Existen varias estrategias diferentes que sirven para favorecer los datos que tu modelo ya vio.

Permite tener una regularización más alta en los atributos que cubren más consultas, a diferencia de esos atributos que solo abarcan una consulta. De esta forma, el modelo favorecerá los atributos que son específicos a una o pocas consultas por sobre los atributos que se generalizan a todas las consultas. Esta estrategia permite evitar que los resultados muy populares acaben en consultas irrelevantes. Este enfoque es contrario a la sugerencia más tradicional de contar con más regularización en columnas de funciones con más valores únicos.
Permite que los atributos solo tengan ponderaciones positivas. Además, cualquier atributo bueno será mejor que uno "desconocido".
No uses atributos asociados solo al documentos. Esto es una versión extrema de la regla n.º 1. Por ejemplo, incluso si una app determinada es una descarga popular, más allá de la consulta, no es necesario mostrarla en todos lados. Esto se simplifica al no tener atributos solo de documentos. La razón por la que no deseas mostrar una app popular específica en todos lados está relacionada con la importancia de lograr que las apps que deseas estén disponibles. Por ejemplo, si alguien busca "apps para observar pájaros", es posible que descarguen "Angry birds", pero de forma claramente accidental. Si se muestra esta app, es posible que mejore la tasa de descarga, pero no se cumplen con las necesidades del usuario.
Regla n.º 36: Evita los ciclos de retroalimentación con atributos posicionales.
La posición del contenido afecta enormemente la probabilidad de que el usuario interactúe con este. Si ubicas una app en la primera posición, se seleccionará con más frecuencia y te dará la impresión de que es más probable que se seleccione. Una forma de lidiar con eso es agregar atributos de posición, es decir, atributos sobre la posición del contenido en la página. Entrena el modelo con atributos de posición para que aprenda a darle una mayor ponderación al atributo "primera posición", por ejemplo. Así, el modelo les asigna una ponderación menor a otros factores con ejemplos de "primera posición=verdadero". Entonces, en la publicación, no asignas ninguna instancia al atributo de posición (o le asignas el mismo atributo predeterminado), porque calificas candidatos antes de que hayas decidido el orden en el que se mostrarán.

Ten en cuenta que es importante mantener cualquier atributo de posición separado del resto del modelo, debido a la asimetría entre el entrenamiento y la prueba. Lo ideal es que el modelo sea la suma de una función de los atributos posicionales y una función del resto de atributos. Por ejemplo, no cruces los atributos de posición con cualquier atributo de documentos.

Regla n.º 37: Mide la desviación entre el entrenamiento y la publicación.
En el sentido más general, existen diversas razones para la desviación. Además, se puede dividir en varias partes:

La diferencia entre el rendimiento en los datos de entrenamiento y los datos retenidos. En general, esta diferencia siempre existe y no siempre es negativa.
La diferencia entre el rendimiento en los datos retenidos y los datos "del día siguiente". De nuevo, esta diferencia siempre existe. Debes ajustar la regularización para maximizar el rendimiento del día siguiente. Sin embargo, caídas notables en el rendimiento entre los datos retenidos y los datos del día siguiente pueden ser un indicador de que algunos atributos dependen del tiempo y posiblemente afecten al rendimiento del modelo de forma negativa.
La diferencia entre el rendimiento en los datos del día siguiente y los datos en vivo. Si aplicas un modelo a un ejemplo en los datos de entrenamiento y el mismo ejemplo en la publicación, deberías obtener el mismo resultado (consulta la regla n.º 5). Por lo tanto, si aparece una discrepancia, probablemente indique un error de ingeniería.
Fase III de aprendizaje automático: Crecimiento reducido, refinamiento de la optimización y modelos complejos
Existen ciertos indicios de que la segunda fase llega a su fin. Primero, las ganancias mensuales comienzan a disminuir. Las métricas comenzarán a emparejarse: en algunos experimentos, verás que algunas aumentan y otras disminuyen. Este es un momento interesante. Dado que las ganancias son más difíciles de obtener, el aprendizaje automático debe sofisticarse aún más. Una advertencia: esta sección contiene más reglas especulativas que las secciones anteriores. Hemos visto a muchos equipos realizar grandes progresos en la Fase I y la Fase II de aprendizaje automático. Una vez que alcanzan la Fase III, los equipos deben buscar su propio camino.

Regla n.º 38: No pierdas tiempo en nuevos atributos si los objetivos no alineados son un problema.
Cuando las mediciones comienzan a estabilizarse, el equipo comenzará a buscar problemas fuera del alcance de los objetivos de tu sistema de aprendizaje automático actual. Como indicamos anteriormente, si el objetivo algorítmico existente no abarca los propósitos del producto, debes cambiar el objetivo o los propósitos. Por ejemplo, puedes optimizar clics, +1 o descargas, pero toma las decisiones de lanzamiento según los evaluadores humanos.

Regla n.º 39: Las decisiones de lanzamiento representan los objetivos a largo plazo del producto.
Alice tiene una idea para reducir la pérdida logística de las instalaciones predichas. Agrega un atributo. Se reduce la pérdida logística. Cuando hace un experimento en vivo, observa un aumento en la tasa de instalación. Sin embargo, cuando realiza una reunión para evaluar el lanzamiento, alguien menciona que la cantidad de usuarios activos diarios cayó un 5%. El equipo decide no lanzar el modelo. Alice está decepcionada, pero ahora se da cuenta de que las decisiones de lanzamiento dependen de varios factores y solo algunos de ellos se pueden optimizar directamente con AA.

La verdad es que el mundo real no es un juego de rol; no hay "puntos de ataque" que indican el estado de tu producto. El equipo debe usar las estadísticas que reúne para intentar predecir de forma eficaz qué tan bueno será el sistema en el futuro. Deben preocuparse por la participación, el número de usuarios activos en un día (DAU), el número de usuarios activos en 30 días (30 DAU), la ganancia y el retorno de la inversión del anunciante. Estas métricas que se miden en las pruebas A/B representan los objetivos a largo plazo: satisfacer a los usuarios, aumentar la cantidad de usuarios, satisfacer a los socios y obtener ganancias. A su vez, puedes considerar estos propósitos como representantes de otros propósitos: lograr un producto útil y de calidad, y que la empresa prospere de aquí a cinco años.

Las únicas decisiones de lanzamiento fáciles son cuando todas las métricas mejoran (o al menos no empeoran). Si el equipo puede elegir entre un algoritmo de aprendizaje automático sofisticado o una simple heurística (que funciona mejor en todas las métricas), debe elegir la heurística. Además, no existe una clasificación explícita para todos los valores de métricas posibles. En especial, considera estos dos escenarios siguientes:

Experimento	Usuarios activos por día	Ganancia/día
A	1 millón	$4 millones
B	2 millones	$2 millones
Si el sistema actual es A, entonces es poco probable que el equipo cambie a B. Si el sistema actual es B, entonces es poco probable que el equipo cambie a A. Esto parece contradecir el comportamiento racional; sin embargo, las predicciones de las métricas cambiantes pueden o no cumplirse. Por lo tanto, cada cambio conlleva un riesgo grande. Cada métrica abarca una cierta cantidad de riesgo que preocupa al equipo.

Además, ninguna métrica representa la preocupación máxima del equipo, "¿dónde estará mi producto de aquí a cinco años?".

Por otro lado, las personas tienden a favorecer un objetivo que pueden optimizar directamente. La mayoría de las herramientas de aprendizaje automático favorecen dicho entorno. Un ingeniero agregando atributos nuevos puede lograr un flujo constante de lanzamiento en dicho entorno. Existe un tipo de aprendizaje automático, el aprendizaje de multiobjetivo, que comienza a resolver este problema. Por ejemplo, se puede formular un problema de satisfacción de restricciones con límites inferiores en cada métrica y optimiza alguna combinación lineal de las métricas. Pero, aun así, no todas las métricas se enmarcan fácilmente como objetivos de aprendizaje automático: si el usuario hace clic en un documento o instala una app, se debe a que se mostró el contenido. Pero es mucho más difícil determinar la razón por la que un usuario visita tu sitio. Cómo predecir el éxito futuro de un sitio de forma integral depende IA-completo: es tan difícil como la visión por computadora o el procesamiento de lenguajes naturales.

Regla n.º 40: Mantén las combinaciones simples.
Los modelos unificados que aceptan atributos sin procesar y clasifican contenido directamente son los modelos más sencillos de depurar y comprender. Sin embargo, una combinación de modelos (un modelo que combina los resultados de otros modelos) puede funcionar mejor. Para mantener las cosas simples, cada modelo debe ser una combinación de modelos que solo acepta como entrada el resultado de otros modelos o un modelo básico que acepta muchos atributos, pero no ambos. Si tienes modelos sobre otros modelos que se entrenan de forma separada y los combinas, se puede generar un comportamiento erróneo.

Usa un modelo simple como combinación, que solo acepte los resultados de los modelos "básicos" como entradas. También debes implementar propiedades en esos modelos de conjuntos. Por ejemplo, un aumento en el resultado generado por un modelo básico no debe reducir el resultado del combinado. Además, es mejor que los modelos entrantes se puedan interpretar de forma semántica (p. ej., calibrados), para que los cambios en los modelos subyacentes no confundan al modelo combinado. Asegúrate también que un aumento en la probabilidad predicha de un clasificador subyacente no reduzca la probabilidad predicha del conjunto.

Regla n.º 41: Cuando el rendimiento se estanque, busca nuevas fuentes de información de forma cualitativa para agregar, en lugar de refinar las señales existentes.
Agregaste cierta información demográfica sobre el usuario. Agregaste cierta información sobre las palabras en el documento. Finalizaste la exploración de combinación de atributos y ajustaste la regularización. No observaste un lanzamiento con más de un 1% de mejora en las métricas clave, en varios trimestres. ¿Ahora qué?

Es hora de desarrollar la infraestructura para atributos radicalmente diferentes, como el historial de los documentos a los que este usuario accedió en el último día, semana o año, o los datos de una propiedad diferente. Usa entidades de wikidatos o algún recurso interno de tu empresa (como el Gráfico de conocimiento de Google). Usa el aprendizaje profundo. Comienza a ajustar tus expectativas sobre el retorno de la inversión esperado y aumenta tus esfuerzos adecuadamente. Como en cualquier proyecto de ingeniería, debes comparar el beneficio de agregar nuevos atributos con el costo de una mayor complejidad.

Regla n.º 42: No esperes que la diversidad, la personalización o la relevancia se correlacionen con la popularidad.
La diversidad en un conjunto de contenidos puede significar muchas cosas; la más común es la diversidad de la fuente del contenido. La personalización implica que cada usuario obtiene sus propios resultados. La relevancia implica que los resultados para una consulta específica son más apropiados para esa consulta que para otra. Además, por definición, estas tres propiedades se diferencian de lo común.

El problema es que lo común tiende a ser difícil de superar.

Ten en cuenta que tu sistema mide clics, el tiempo dedicado, reproducciones, +1, veces que se comparte el contenido, etc., es decir, la popularidad del contenido. A veces, los equipos intentan aprender un modelo personal con diversidad. Para implementar la personalización, agregan atributos que le permiten al sistema la personalización (algunos atributos que representan el interés del usuario) o la diversificación (atributos que indican si este documento tiene algún atributo en común con otros documentos de los resultados, como el autor o el contenido), y descubren que esos atributos obtienen una ponderación menor (o a veces, un signo diferente) al que esperaban.

Esto no significa que la diversidad, la personalización o la relevancia no sean valiosas. Como se indicó en la regla anterior, puedes hacer un posprocesamiento para aumentar la diversidad o la relevancia. Si observas que los objetivos a largo plazo aumentan, puedes declarar que la diversidad o la relevancia son valiosas, más allá de la popularidad. Puedes continuar usando el posprocesamiento o directamente modificar el objetivo según la diversidad o la relevancia.

Regla n.º 43: Tus amigos tienden a ser los mismos en diferentes productos. No así tus intereses.
Varios equipos en Google ganaron mucho terreno al tomar que un modelo que predice la cercanía de una conexión con un producto y lograr que funcione en otro producto. Tus amigos no cambian. Por otro lado, observé a muchos equipos lidiar con atributos de personalización entre productos. Sí, parece que debería funcionar. Por ahora, parece que no. Un método que a veces funciona es usar los datos sin procesar de una propiedad para predecir el comportamiento en otra. Ten en cuenta que también puede ayudar saber que un usuario tiene un historial en otra propiedad. Por ejemplo, la presencia de actividad de usuario en dos propiedades puede ser un indicativo en sí misma.

Trabajo relacionado
Existen muchos documentos sobre aprendizaje automático en Google y en otras fuentes.

Curso intensivo de aprendizaje automático: Una introducción al aprendizaje automático aplicado.
Aprendizaje automático: Un enfoque probabilístico de Kevin Murphy, para comprender el campo de aprendizaje automático.
Consejos prácticos para el análisis de conjuntos de datos grandes y complejos: Un enfoque de ciencia de datos sobre los conjuntos de datos.
Aprendizaje profundo de Ian Goodfellow et al, para aprendizaje de modelos no lineales.
Documento de Google sobre la deuda técnica, con muchos consejos generales.
Documentación de Tensorflow.
Agradecimientos
Agradezco a David Westbrook, Peter Brandt, Samuel Ieong, Chenyu Zhao, Li Wei, Michalis Potamias, Evan Rosen, Barry Rosenberg, Christine Robson, James Pine, Tal Shaked, Tushar Chandra, Mustafa Ispir, Jeremiah Harmsen, Konstantinos Katsiapis, Glen Anderson, Dan Duckworth, Shishir Birmiwal, Gal Elidan, Su Lin Wu, Jaihui Liu, Fernando Pereira y Hrishikesh Aradhye por las numerosas correcciones, sugerencias y ejemplos útiles para este documento. Agradezco también a Kristen Lefevre, Suddha Basu y Chris Berg quienes colaboraron en una versión anterior. Cualquier error, omisión u opiniones controversiales es mi responsabilidad.

Anexo
Existen diferentes referencias a productos de Google en este documento. Para proporcionar más contexto, agregué una descripción breve de los ejemplos más comunes a continuación.

Descripción de YouTube
YouTube es un servicio de transmisión de videos. Tanto los equipos de YouTube Watch Next y de la página principal de YouTube usan modelos de AA para clasificar recomendaciones de videos. Watch Next recomienda videos para ver después del que se está reproduciendo, la página principal recomienda videos para los usuarios que exploran la página principal.

Descripción general de Google Play
Google Play tiene muchos modelos para resolver diferentes problemas. Las búsqueda de apps en Play, las recomendaciones personalizadas en la página principal de Play y "Otros usuarios también instalaron" usan aprendizaje automático.

Descripción de Google Plus
Google Plus usa aprendizaje automático en diferentes situaciones: clasificar las publicaciones en la sección "Novedades" que ve el usuario, las publicaciones en la sección "Lo más interesante" (las publicaciones que son más populares), las personas que conoces, etc.
