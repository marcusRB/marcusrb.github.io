+++
title = "Modelo de clasificación con Google Analytics y BigQuery ML"
date = 2020-09-02T17:52:54+01:00
draft = false
robots = "index, follow"
url = "/construir-modelo-clasificacion-analytics-bigquery-ml"
canonical = "https://www.paradigmadigital.com/dev/construir-modelo-clasificacion-analytics-bigquery-ml/"

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["machine learning", " google analytics", "bigquery"]
categories = ["Data Analytics"]
authors = ["marcusRB"]
+++

# Modelo de clasificación con Google Analytics y BigQuery ML.


Si eres analista de datos o trabajas codo a codo con el departamento de Marketing Digital, quizás sea típico en tu día a día tener que utilizar **la herramienta de análisis Google Analytics**, acompañada de otras tools de exploración de datos (hojas de cálculos, API nativas, herramientas de terceros).

Una de las limitaciones que se nos presenta con Google Analytics es que todos los datos se encuentran en los propios servidores en EEUU, por lo que tenemos muy poca flexibilidad a la hora de extraer.

Aquí, la solución o la única manera para poder explotar estos datos de forma local (además de realizar lo mismo con otras como Data Studio, Tableau, Power BI, etc.) es utilizar técnicas de segmentaciones de clientes, predicciones y clasificaciones utilizando Python, R y otras muchas habilidades en programación SQL o JavaScript, entre otras.

## ¿Qué es BigQuery?

Tal como la define la propia web de [Google Cloud Platform](https://cloud.google.com/bigquery):

- BigQuery es la base de datos analítica de bajo costo totalmente administrada, NoOps de Google. Con BigQuery puede consultar terabytes y petabytes de datos sin tener ninguna infraestructura para administrar o necesitar un administrador de base de datos. BigQuery usa SQL y puede aprovechar el modelo de pago por uso. BigQuery le permite concentrarse en analizar datos para encontrar ideas significativas.

En la versión premium, podemos conectar esta herramienta a la base de datos NoOps, Google BigQuery. Es decir que con si aprovechamos el potencial de Google Analytics y tenemos una cuenta de Google BigQuery podemos realizar operaciones de Machine Learning aplicadas a datos de nuestra web. Con un pero: esta funcionalidad está solo habilitada en la versión premium, Google Analytics 360; con la otra versión existe otra opción de volcado, ingesta de datos a través de conectores y posterior explotación (más manual).

## ¿Qué podemos realizar con BigQuery?

- Consulta y explora el conjunto de datos de comercio electrónico.
- Crear un conjunto de datos de capacitación y evaluación que se utilizará para la predicción por lotes.
- Crear un modelo de clasificación (regresión logística) en BQML.
- Evaluar el rendimiento de su modelo de aprendizaje automático.
- Predecir y clasificar la probabilidad de que un visitante realice una compra.

Si necesitas conocer [cómo explotar al máximo BigQuery](https://www.paradigmadigital.com/dev/5-consejos-bigquery/), aquí unos consejos muy útiles de [Tomás Calleja.](https://www.paradigmadigital.com/author/jtcalleja/)

## ¿No tienes Google Analytics? Opta por el dataset de prueba

**Hace muchos años que Google ofreció su propia cuenta de analítica digital para realizar pruebas** y que, además, permite aprender un montón sobre la propia herramienta y las configuraciones.

Los datos son "reales". Aquí podría discutir si es cierto o no, pero observando las cifras de ventas, no me extrañaría... La web que utiliza Google para su comercio electrónico es la denominada [Google Merchandise Store](http://shop.googlemerchandisestore.com/?utm_source=PostParadigma&utm_medium=affiliate&utm_campaign=marcusRB) y podría decir que tienen muchas cosas interesantes.

![img](https://www.paradigmadigital.com/assets/img/resize/small/105aae3c77254a4ea033c395c6aa135b.png)

Respecto a la cuenta de Analytics, con solo abrir y validar una cuenta de Google y obtener Google Analytics, ya se pueden explorar los datos simplemente con el enlace proporcionado y disponibles en este enlace [Google Analytics DEMO](https://support.google.com/analytics/answer/6367342#access). Se vincularía automáticamente, ¡y listo para operar!

![img](https://www.paradigmadigital.com/assets/img/resize/small/5aa7b593be1e4888a74ea8d3e1879961.png)

Como tarea, puedes realizar una navegación al mismo sitio web del *merchandise store* y así ver en tiempo real que funciona correctamente.

![img](https://www.paradigmadigital.com/assets/img/resize/small/02a47e3d11ab444a8719627f89ec5700.png)

También puedes modificar los parámetros de fuente y medio (con un pequeño trick) y colarte en sus informes, tal como se muestran en las capturas.

![img](https://www.paradigmadigital.com/assets/img/resize/small/a25d7deae8b04c50b60260bf77f69293.png)

El dataset está disponible para su explotación desde el propio Google Cloud Platform, en el [repositorio público](https://cloud.google.com/bigquery/public-data) (el merchandise store de Google para realizar pruebas de concepto).

## ¿Cómo realizar la conexión entre Google Analytics 360 y BigQuery?

Aquí te explicaré los pasos para poder realizar la conexión en caso de querer tener los datos en un data lake como BigQuery.

Desde Google Analytics, tenemos que fijarnos en:

- Propiedad > Vinculación con otros productos > Todos los productos y buscamos Configurar enlace de BigQuery.

![img](https://www.paradigmadigital.com/assets/img/resize/small/1ccf1a0dca0d41638210e6573aee6968.png)

Desde esta ventana seleccionamos la vista deseada para su vínculo y realizamos estos pasos indicados en esta captura:

- Vista de Google Analytics:

![img](https://www.paradigmadigital.com/assets/img/resize/small/85e452fdf24d4491bd91ce8e72719cc2.png)

- Contactos:

![img](https://www.paradigmadigital.com/assets/img/resize/small/10260f18e3ae44e5a61df6d93038b57c.png)

- Preferencia de ingesta, si en streaming o en lotes:

![img](https://www.paradigmadigital.com/assets/img/resize/small/5c9454d5681f4f1cab5a0223f81305fe.png)

Ahí, confirmamos del lado de BigQuery unos pasos:

- Habilitar los permisos necesarios a Analytics para poder leer y extraer los datos:

![img](https://www.paradigmadigital.com/assets/img/resize/small/aea72ffa4eef49f9ba1da4291c057f2d.png)

- Indicar los datos de la vista de Google Analytics:

![img](https://www.paradigmadigital.com/assets/img/resize/small/105934b60801486eb4c964088c4c67ff.png)

Se confirma todo y **ya tenemos los datos volcados en unas horas en BigQuery** y, así, en caso de seleccionar varias veces al día y según el tamaño de nuestro Analytics, todos los días recibiremos una notificación de carga de los datos.

## ¿Cómo explotar los datos a través de SQL de BigQuery ?

Veamos ahora **unos ejemplos de cómo realizar consultas con BigQuery**, con pequeñas sentencias en #standardSQL. Los datos serán volcados por días y tenemos diferentes opciones para poder realizar las consultas. Aún así, si no estás familiarizado con la API de Google Analytics, aquí un [esquema de todos los campos](https://support.google.com/analytics/answer/3437719?hl=en) que puedes utilizar y obtener informaciones.

1. Identificar los campos duplicados:

```sql
#standardSQL
SELECT COUNT(*) as num_duplicate_rows, * FROM
`data-to-insights.ecommerce.all_sessions_raw`
GROUP BY
fullVisitorId, channelGrouping, time, country, city, totalTransactionRevenue, transactions, timeOnSite, pageviews, sessionQualityDim, date, visitId, type, productRefundAmount, productQuantity, productPrice, productRevenue, productSKU, v2ProductName, v2ProductCategory, productVariant, currencyCode, itemQuantity, itemRevenue, transactionRevenue, transactionId, pageTitle, searchKeyword, pagePathLevel1, eCommerceAction_type, eCommerceAction_step, eCommerceAction_option
HAVING num_duplicate_rows > 1;
```

Copy.

1. Analizar todas las nuevas sesiones:

```sql
#standardSQL
# schema: https://support.google.com/analytics/answer/3437719?hl=en
SELECT
fullVisitorId, # the unique visitor ID
visitId, # a visitor can have multiple visits
date, # session date stored as string YYYYMMDD
time, # time of the individual site hit  (can be 0 to many per visitor session)
v2ProductName, # not unique since a product can have variants like Color
productSKU, # unique for each product
type, # a visitor can visit Pages and/or can trigger Events (even at the same time)
eCommerceAction_type, # maps to ‘add to cart', ‘completed checkout'
eCommerceAction_step,
eCommerceAction_option,
  transactionRevenue, # revenue of the order
  transactionId, # unique identifier for revenue bearing transaction
COUNT(*) as row_count
FROM
`data-to-insights.ecommerce.all_sessions`
GROUP BY 1,2,3 ,4, 5, 6, 7, 8, 9, 10,11,12
HAVING row_count > 1 # find duplicates
```

Copy.

1. Obtener los visitantes únicos por agrupación de canal:

```sql
#standardSQL
SELECT
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  channelGrouping
FROM `data-to-insights.ecommerce.all_sessions`
GROUP BY channelGrouping
ORDER BY channelGrouping DESC;
```

Copy.

1. Hasta incluso realizar operaciones con los pedidos y obtener ratios:

```sql
#standardSQL
SELECT
  COUNT(*) AS product_views,
  COUNT(productQuantity) AS orders,
  SUM(productQuantity) AS quantity_product_ordered,
  SUM(productQuantity) / COUNT(productQuantity) AS avg_per_order,
  (v2ProductName) AS ProductName
FROM `data-to-insights.ecommerce.all_sessions`
WHERE type = 'PAGE'
GROUP BY v2ProductName
ORDER BY product_views DESC
LIMIT 5;
```

Copy.

1. Obtener productos comprados y unidades:

```sql
#standardSQL
SELECT
  COUNT(*) AS product_views,
  COUNT(productQuantity) AS orders,
  SUM(productQuantity) AS quantity_product_ordered,
  v2ProductName
FROM `data-to-insights.ecommerce.all_sessions`
WHERE type = 'PAGE'
GROUP BY v2ProductName
ORDER BY product_views DESC
LIMIT 5;
```

Copy.

Hasta aquí tenemos una visión general de nuestro grande "lago de datos". Gracias al potencial de BigQuery podemos sacar ventaja a la hora de realizar análisis exploratorio o, inclusive, conectarnos con R o Python con la propia API de BigQuery y realizar visualizaciones muy interesantes.

## ¿Cómo seleccionar el modelo de BigQuery ML?

Para poder aprovechar el BigQuery ML, el aprendizaje automático aplicado a nuestro Google Analytics, podemos seleccionar un problema o modelo entre **Forecasting** o **Clasificación.**

Mientras que el primero se basará en obtener valores numéricos como ventas basados en datos históricos; el segundo, si un usuario con unas características comprará o no en nuestro ecommerce, y así potenciar mejor las campañas de marketing.

Veamos cómo poder crear un modelo que aproximadamente tardará unos 5 - 10 minutos:

```sql
CREATE OR REPLACE MODEL `ecommerce.classification_model`
OPTIONS
(
model_type='logistic_reg',
labels = ['will_buy_on_return_visit']
)
AS

#standardSQL
SELECT
  * EXCEPT(fullVisitorId)
FROM

  # features
  (SELECT
    fullVisitorId,
    IFNULL(totals.bounces, 0) AS bounces,
    IFNULL(totals.timeOnSite, 0) AS time_on_site
  FROM
    `data-to-insights.ecommerce.web_analytics`
  WHERE
    totals.newVisits = 1
    AND date BETWEEN '20160801' AND '20170430') # train on first 9 months
  JOIN
  (SELECT
    fullvisitorid,
    IF(COUNTIF(totals.transactions > 0 AND totals.newVisits IS NULL) > 0, 1, 0) AS will_buy_on_return_visit
  FROM
      `data-to-insights.ecommerce.web_analytics`
  GROUP BY fullvisitorid)
  USING (fullVisitorId)
;
```

Copy.

Este modelo nos ayudará a entrenar correctamente con datos históricos donde utilizamos los visitantes, teniendo en cuenta la tasa de rebote y el tiempo de permanencia o duración de sesión.

El resultado de este ejemplo es de apenas un 73%; no es muy satisfactorio, la verdad.

Una vez creado el modelo, tenemos otra nueva tabla. En este caso **classification_model** e incluso podemos evaluar nuestra curva de ROC (que pide el ratio entre los True Positive y False Positive), como este:

![img](https://www.paradigmadigital.com/assets/img/resize/small/44d8ae26c6b1484a81579bfe70bbb74f.png)

## ¿Cómo podemos realizar mejoras en nuestro modelo de BigQuery ML?

Como todos modelos de Machine Learning, también en este podemos realizar mejoras, aplicando unos campos adicionales específicos de navegación, por ejemplo:

- En qué punto ha abandonado el proceso de compra.
- De dónde vino el visitante (fuente de tráfico, búsqueda orgánica, sitio de referencia).
- Categoría de dispositivo (móvil, tablet, escritorio).
- Información geográfica (país, ciudad, estado, región).

Creamos un segundo modelo con estos detalles:

```sql
CREATE OR REPLACE MODEL `ecommerce.classification_model_2`
OPTIONS
  (model_type='logistic_reg', labels = ['will_buy_on_return_visit']) AS

WITH all_visitor_stats AS (
SELECT
  fullvisitorid,
  IF(COUNTIF(totals.transactions > 0 AND totals.newVisits IS NULL) > 0, 1, 0) AS will_buy_on_return_visit
  FROM `data-to-insights.ecommerce.web_analytics`
  GROUP BY fullvisitorid
)

# add in new features
SELECT * EXCEPT(unique_session_id) FROM (

  SELECT
      CONCAT(fullvisitorid, CAST(visitId AS STRING)) AS unique_session_id,

      # labels
      will_buy_on_return_visit,

      MAX(CAST(h.eCommerceAction.action_type AS INT64)) AS latest_ecommerce_progress,

      # behavior on the site
      IFNULL(totals.bounces, 0) AS bounces,
      IFNULL(totals.timeOnSite, 0) AS time_on_site,
      IFNULL(totals.pageviews, 0) AS pageviews,

      # where the visitor came from
      trafficSource.source,
      trafficSource.medium,
      channelGrouping,

      # mobile or desktop
      device.deviceCategory,

      # geographic
      IFNULL(geoNetwork.country, "") AS country

  FROM `data-to-insights.ecommerce.web_analytics`,
     UNNEST(hits) AS h

    JOIN all_visitor_stats USING(fullvisitorid)

  WHERE 1=1
    # only predict for new visits
    AND totals.newVisits = 1
    AND date BETWEEN '20160801' AND '20170430' # train 9 months

  GROUP BY
  unique_session_id,
  will_buy_on_return_visit,
  bounces,
  time_on_site,
  totals.pageviews,
  trafficSource.source,
  trafficSource.medium,
  channelGrouping,
  device.deviceCategory,
  country
);
```

Copy.

Podemos realizar una evaluación del modelo, teniendo en cuenta que tardará siempre entre 5-10 minutos, dependiendo del tamaño de la tabla, y aplicamos unos filtros a nuestro resultado ROC, como en este ejemplo:

```sql
#standardSQL
SELECT
  roc_auc,
  CASE
    WHEN roc_auc > .9 THEN 'good'
    WHEN roc_auc > .8 THEN 'fair'
    WHEN roc_auc > .7 THEN 'decent'
    WHEN roc_auc > .6 THEN 'not great'
  ELSE 'poor' END AS model_quality
FROM
  ML.EVALUATE(MODEL ecommerce.classification_model_2,  (

WITH all_visitor_stats AS (
SELECT
  fullvisitorid,
  IF(COUNTIF(totals.transactions > 0 AND totals.newVisits IS NULL) > 0, 1, 0) AS will_buy_on_return_visit
  FROM `data-to-insights.ecommerce.web_analytics`
  GROUP BY fullvisitorid
)

# add in new features
SELECT * EXCEPT(unique_session_id) FROM (

  SELECT
      CONCAT(fullvisitorid, CAST(visitId AS STRING)) AS unique_session_id,

      # labels
      will_buy_on_return_visit,

      MAX(CAST(h.eCommerceAction.action_type AS INT64)) AS latest_ecommerce_progress,

      # behavior on the site
      IFNULL(totals.bounces, 0) AS bounces,
      IFNULL(totals.timeOnSite, 0) AS time_on_site,
      totals.pageviews,

      # where the visitor came from
      trafficSource.source,
      trafficSource.medium,
      channelGrouping,

      # mobile or desktop
      device.deviceCategory,

      # geographic
      IFNULL(geoNetwork.country, "") AS country

  FROM `data-to-insights.ecommerce.web_analytics`,
     UNNEST(hits) AS h

    JOIN all_visitor_stats USING(fullvisitorid)

  WHERE 1=1
    # only predict for new visits
    AND totals.newVisits = 1
    AND date BETWEEN '20170501' AND '20170630' # eval 2 months

  GROUP BY
  unique_session_id,
  will_buy_on_return_visit,
  bounces,
  time_on_site,
  totals.pageviews,
  trafficSource.source,
  trafficSource.medium,
  channelGrouping,
  device.deviceCategory,
  country
)
));
```

Copy.

El **resultado ha alcanzado un 91%, mucho mejor que el anterior.**

## Resultados finales:

Teniendo en cuenta esto que hemos visto, llega el momento de sacar unos insights y futuras mejoras:

- Del 6% de los primeros visitantes (en orden decreciente de probabilidad prevista), más del 6% realiza una compra en una visita posterior.
- Estos usuarios representan casi el 50% de todos los visitantes nuevos que realizan una compra en una visita posterior.
- En general, solo el 0,7% de los visitantes nuevos hacen una compra en una visita posterior.

Y muy importante, el target objetivo del 6% aumentaría el ROI de marketing 9 veces respecto al resto de objetivos.

Mis conclusiones respecto a integrar Google Analytics con el Machine Learning de BigQuery **es que es un arma muy potente para todos departamentos de Marketing**: primero, para aprovechar al máximo estas herramientas; segundo, mejorar los análisis; y tercero, tomar decisiones adecuadas frente a las campañas de advertising e, incluso, personalizadas ad-hoc.

Y tú, ¿has utilizado en tu departamento de marketing BigQuery ML de Google?, ¿has comprobado si el ROAS ha sido mayor respecto al utilizado en exclusiva Google Analytics?



[FUENTE ORIGINAL](https://www.paradigmadigital.com/dev/construir-modelo-clasificacion-analytics-bigquery-ml/)




