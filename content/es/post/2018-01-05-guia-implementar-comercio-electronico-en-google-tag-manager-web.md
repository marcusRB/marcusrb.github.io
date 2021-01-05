---
title: '[Guía] Implementar Comercio electrónico en Google Tag Manager para sitios web'
author: marcusRB
type: post
date: 2018-01-05T14:58:24+00:00
url: /guia-implementar-comercio-electronico-en-google-tag-manager-web/
featured_image: /img/2018/06/comercio-electronico-mejorado-tag-manager-analytics-260x144.jpg

categories:
  - Tag Manager
tags:
  - comercio electrónico mejorado
  - google analytics ecommerce
  - pasos comercio electronico tag manager
  - tag manager
summary: "Los eventos de Comercio Electrónico o e-commerce para Google Analytics, siempre ha dado problemas y confusión a la hora de configurarlo correctamente"
---
## Los eventos de Comercio Electrónico o e-commerce para Google Analytics, siempre ha dado problemas y confusión a la hora de configurarlo correctamente,

especialmente si queremos realizarlo integramente en proyectos personalizados, sitios web ad-hoc donde no utilizan especificamente plugin o módulos free, ejemplo un híbrido de Magento, Prestashop o similar.

La cuestión es ir explicar paso a paso como grabar los eventos más utilizados de un comercio electrónico, y no solo transacciones. Además, las mismas podemos &#8220;reciclar&#8221; los mismos eventos para otras etiquetas de terceros: AdWords, Remarketing, Facebook, Doubleclick principalmente, además de otras más especificas como TradeDoubler etc.

Esta guía proporcionará solo y exclusivamente los pasos a implementar en Google Tag Manager en sitios web, sin utilizar mucho código dentro de nuestro site, excepto el enviar informaciones con el **dataLayer**

## Conceptos generales del comercio electrónico en Tag Manager

### Comercio electrónico clásico de Google Analytics

Existen dos métodos principales para implementar el comercio electrónico de Google Analytics:

En los informes de **comercio electrónico estándar** de Google Analytics puede analizar la actividad de compra que se ha registrado en su aplicación o sitio web. Entre otros datos, puede ver información sobre productos y transacciones, el valor de pedido medio, la tasa de conversión de comercio electrónico y el tiempo hasta la compra.

### Comercio electrónico mejorado de Google Analytics

El **comercio electrónico mejorado** amplía las funciones de sus informes de Google Analytics. Con este método puede ver cuándo añadieron los clientes productos al carrito, cuándo iniciaron el proceso de tramitación de compra correspondiente y cuándo completaron la transacción. El comercio electrónico mejorado también se puede usar para identificar segmentos de clientes que se quedan fuera del embudo de compras.

Ambos métodos pueden implementarse con Tag Manager:

<div class="accordion">
  <h4 class="title">
    Comercio electrónico en Google Analytics
  </h4>

  <div class="mfn-acc accordion_wrapper ">
    <div class="question">
      <div class="title">
        <i class="icon-plus acc-icon-plus"></i><i class="icon-minus acc-icon-minus"></i>Comercio electrónico estándar
      </div>

      <div class="answer">
        </p>

        <p>
          Para crear una etiqueta de comercio electrónico estándar de Google Analytics:
        </p>

        <ol>
          <li>
            Habilite el comercio electrónico en sus informes de Google Analytics.
          </li>
          <li>
            Cree una etiqueta de Universal Analytics y seleccione <em>Transacción</em> en <strong>Tipo de seguimiento</strong>.
          </li>
          <li>
            Configure la etiqueta con los campos obligatorios.
          </li>
          <li>
            Especifique cuándo debe activarse la etiqueta.
          </li>
        </ol>

        <p>
          Toda la información de la transacción debe transferirse a través de la capa de datos, con los nombres de variable que se muestran a continuación:
        </p>

        <p>
          <strong>Datos de la transacción</strong>
        </p>

        <table class="nice-table">
          <tr>
            <th>
              Nombre de la variable
            </th>

            <th>
              Descripción
            </th>

            <th>
              Tipo
            </th>
          </tr>

          <tr>
            <td>
              transactionId (obligatorio)
            </td>

            <td>
              Identificador de transacción único
            </td>

            <td>
              cadena
            </td>
          </tr>

          <tr>
            <td>
              transactionAffiliation (opcional)
            </td>

            <td>
              Partner o tienda
            </td>

            <td>
              cadena
            </td>
          </tr>

          <tr>
            <td>
              transactionTotal (obligatorio)
            </td>

            <td>
              Valor total de la transacción
            </td>

            <td>
              numérico
            </td>
          </tr>

          <tr>
            <td>
              transactionShipping (opcional)
            </td>

            <td>
              Gastos de envío correspondientes a la transacción
            </td>

            <td>
              numérico
            </td>
          </tr>

          <tr>
            <td>
              transactionTax (opcional)
            </td>

            <td>
              Impuestos correspondientes a la transacción
            </td>

            <td>
              numérico
            </td>
          </tr>

          <tr>
            <td>
              transactionProducts (opcional)
            </td>

            <td>
              Lista de artículos comprados en la transacción
            </td>

            <td>
              matriz de productos
            </td>
          </tr>
        </table>

        <p>
          <strong>Datos del producto</strong>
        </p>

        <table class="nice-table">
          <tr>
            <th>
              Nombre de la variable
            </th>

            <th>
              Descripción
            </th>

            <th>
              Tipo
            </th>
          </tr>

          <tr>
            <td>
              name (obligatorio)
            </td>

            <td>
              Nombre del producto
            </td>

            <td>
              cadena
            </td>
          </tr>

          <tr>
            <td>
              sku (obligatorio)
            </td>

            <td>
              Código SKU de producto
            </td>

            <td>
              cadena
            </td>
          </tr>

          <tr>
            <td>
              category (opcional)
            </td>

            <td>
              Categoría del producto
            </td>

            <td>
              cadena
            </td>
          </tr>

          <tr>
            <td>
              price (obligatorio)
            </td>

            <td>
              Precio unitario
            </td>

            <td>
              numérico
            </td>
          </tr>

          <tr>
            <td>
              quantity (obligatorio)
            </td>

            <td>
              Número de elementos
            </td>

            <td>
              numérico
            </td>
          </tr>
        </table>

        <p>
          A continuación, se muestra un ejemplo de cómo implementar el código de la capa de datos en JavaScript:
        </p>

        <p>
        </p>

        <p>
          Incluya este código <em>encima</em> del fragmento de contenedor de Tag Manager, de modo que la capa de datos esté lista cuando Tag Manager active la etiqueta de Google Analytics.
        </p>

        <p>
          Si, por algún motivo, no puede incluir los datos de comercio electrónico encima del fragmento de contenedor de Tag Manager, también puede probar una de las siguientes soluciones:
        </p>

        <ul>
          <li>
            Haga que la etiqueta se active según un evento personalizado más abajo en la página (p. ej., combine el envío de eventos y datos, tal como se describe en la documentación para desarrolladores, <strong>esta parte se explicará a continuación de este post.</strong>
          </li>
          <li>
            Seleccione el tipo de activador &#8220;DOM preparado&#8221;.
          </li>
        </ul>

        <p>
          </div></div>
        </p>

        <p>
          <div class="question">
            <div class="title">
              <i class="icon-plus acc-icon-plus"></i><i class="icon-minus acc-icon-minus"></i>Comercio electrónico mejorado
            </div>

            <div class="answer">
              </p>

              <p>
                Existen dos métodos para implementar el comercio electrónico mejorado con Tag Manager:
              </p>

              <ul>
                <li>
                  <b>Capa de datos:</b> es el método recomendado. Envíe los datos de comercio electrónico a la capa de datos desde el código.
                </li>
                <li>
                  <b>JavaScript personalizado:</b> cree una variable de JavaScript personalizada en Tag Manager. Esta variable debería devolver un objeto con la información que, en el método anterior, se enviaría a la capa de datos.
                </li>
              </ul>

              <div class="alert" role="alert">
                <p>
                  <strong>Importante:</strong> Al implementar el comercio electrónico mejorado, puede utilizar varios tipos de información específicos. Consulte la <a href="https://developers.google.com/analytics/devguides/collection/gtagjs/enhanced-ecommerce" target="_blank" rel="noopener">documentación para desarrolladores</a> si quiere obtener una lista completa de los tipos de datos admitidos.
                </p>
              </div>

              <p>
                <strong>Implementación de capa de datos</strong>
              </p>

              <ol>
                <li>
                  En el código, añada la información de comercio electrónico a un objeto de capa de datos denominado &#8220;ecommerce&#8221;. Consulte la documentación para desarrolladores de Tag Manager si quiere obtener información sobre cómo implementar una capa de datos.
                </li>
                <li>
                  En Tag Manager, cree una etiqueta de Universal Analytics y seleccione <strong>Página vista</strong> o <strong>Evento</strong> en <strong>Tipo de seguimiento</strong>.
                </li>
                <li>
                  En <strong>Más opciones</strong> <img title="a continuación" src="https://lh3.googleusercontent.com/sDpfETHk7K0ryVo50RvXGzPtfrDQ2W0xK4sJdOKYqerlc79U0MaNKQggC7nI6gJY0A=w13-h18" alt="a continuación" width="13" height="18" /> <strong>Publicidad</strong>, seleccione <em>True</em> en <strong>Habilitar funciones de comercio electrónico mejorado</strong>.
                </li>
                <li>
                  Seleccione <strong>Usar capa de datos</strong>.
                </li>
              </ol>

              <p>
                <strong>Usar variables</strong>
              </p>

              <ol>
                <li>
                  Cree una variable de JavaScript personalizada. Esta variable debe devolver un objeto que contenga el objeto de comercio electrónico, de un modo similar al ejemplo de código siguiente:
                </li>
              </ol>

              <p>
              </p>

              <ol>
                <li>
                  En esta variable, use la misma sintaxis que usaría para enviar estos datos a la capa de datos. Consulte la documentación para desarrolladores si quiere obtener más información.
                </li>
                <li>
                  Cree una etiqueta de Universal Analytics y seleccione <strong>Página vista</strong> o <strong>Evento</strong> en <strong>Tipo de seguimiento</strong>.
                </li>
                <li>
                  En <strong>Más opciones</strong> <img title="a continuación" src="https://lh3.googleusercontent.com/sDpfETHk7K0ryVo50RvXGzPtfrDQ2W0xK4sJdOKYqerlc79U0MaNKQggC7nI6gJY0A=w13-h18" alt="a continuación" width="13" height="18" /> <strong>Publicidad</strong>, seleccione <em>True</em> en <strong>Habilitar funciones de comercio electrónico mejorado</strong>.
                </li>
                <li>
                  Seleccione <strong>Usar capa de datos</strong>.
                </li>
              </ol>

              <p>
                </div></div>
              </p>

              <p>
                </div></div>

                <h3>
                </h3>

                <h3>
                  Comercio electrónico mejorado: conceptos y fundamentos
                </h3>

                <p>
                  El comercio electrónico mejorado ofrece una serie de<strong> informes detallados y útiles</strong>. A continuación se indican algunos de los informes disponibles cuando se habilita el comercio electrónico mejorado de una vista.
                </p>

                <ul>
                  <li>
                    Requisitos previos
                  </li>
                  <li>
                    Ver los informes de comercio electrónico mejorado
                  </li>
                  <li>
                    Datos disponibles
                  </li>
                  <li>
                    Visión general de comercio electrónico
                  </li>
                  <li>
                    Análisis del comportamiento de compra
                  </li>
                  <li>
                    Análisis del comportamiento del proceso de pago
                  </li>
                  <li>
                    Rendimiento del producto
                  </li>
                  <li>
                    Rendimiento de las ventas
                  </li>
                  <li>
                    Rendimiento de la lista de productos
                  </li>
                  <li>
                    Promoción interna
                  </li>
                  <li>
                    Cupón de pedido
                  </li>
                  <li>
                    Cupón de producto
                  </li>
                  <li>
                    Código de afiliado
                  </li>
                  <li>
                    Recursos relacionados
                  </li>
                </ul>

                <h3>
                </h3>

                <h3 id="ecommerce-data">
                  Tipos de datos de comercio electrónico mejorado y acciones
                </h3>

                <p>
                  Hay varios tipos de datos de comercio electrónico que puedes enviar usando analytics.js (gtag.js también): <strong>datos de impresión</strong>, <strong>datos de producto</strong>, <strong>datos de promoción</strong> y <strong>datos de acción</strong>.
                </p>

                <h3>
                </h3>

                <h4 id="impression-data">
                  Datos de impresión
                </h4>

                <p>
                  Representan la información sobre el producto que se ha visto. Se hace referencia a ellos mediante <code>impressionFieldObject</code> y contienen los siguientes valores:
                </p>

                <div class="devsite-table-wrapper">
                  <table>
                    <tr>
                      <th>
                        Clave
                      </th>

                      <th>
                        Tipo de valor
                      </th>

                      <th>
                        Obligatorio
                      </th>

                      <th>
                        Descripción
                      </th>
                    </tr>

                    <tr>
                      <td>
                        id
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        ID de producto o SKU (por ejemplo, P67890). <strong>*Es necesario definir este campo o el de nombre.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        name
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        Nombre del producto (por ejemplo, camiseta de Android). <strong>*Es necesario definir este campo o el de ID.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        list
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Lista o colección a la que pertenece el producto (por ejemplo, Resultados de búsqueda)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        brand
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Marca asociada al producto (por ejemplo, Google)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        category
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Categoría a la que pertenece el producto (por ejemplo, ropa). Usa <code>/</code> como delimitador para especificar hasta 5 niveles de jerarquía (por ejemplo, Ropa/Hombre/Camisetas).
                      </td>
                    </tr>

                    <tr>
                      <td>
                        variant
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Variante del producto (por ejemplo, Negro)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        position
                      </td>

                      <td>
                        entero
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Posición del producto en una lista o colección (por ejemplo, 2)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        price
                      </td>

                      <td>
                        moneda
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Precio de un producto (por ejemplo, 29,20)
                      </td>
                    </tr>
                  </table>
                </div>

                <h3>
                </h3>

                <h4 id="product-data">
                  Datos de producto
                </h4>

                <p>
                  Los datos de producto representan los productos individuales que se han visto, que se han agregado al carrito, etc. Se hace referencia a ellos mediante el objeto <code>productFieldObject</code> y contienen los siguientes valores:
                </p>

                <div class="devsite-table-wrapper">
                  <table>
                    <tr>
                      <th>
                        Clave
                      </th>

                      <th>
                        Tipo de valor
                      </th>

                      <th>
                        Obligatorio
                      </th>

                      <th>
                        Descripción
                      </th>
                    </tr>

                    <tr>
                      <td>
                        id
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        ID de producto o SKU (por ejemplo, P67890). <strong>*Es necesario definir este campo o el de nombre.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        name
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        Nombre del producto (por ejemplo, camiseta de Android). <strong>*Es necesario definir este campo o el de ID.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        brand
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Marca asociada al producto (por ejemplo, Google)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        category
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Categoría a la que pertenece el producto (por ejemplo, ropa). Usa <code>/</code> como delimitador para especificar hasta 5 niveles de jerarquía (por ejemplo, Ropa/Hombre/Camisetas).
                      </td>
                    </tr>

                    <tr>
                      <td>
                        variant
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Variante del producto (por ejemplo, Negro)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        price
                      </td>

                      <td>
                        moneda
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Precio de un producto (por ejemplo, 29,20)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        quantity
                      </td>

                      <td>
                        entero
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Cantidad de un producto (por ejemplo, 2)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        coupon
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Código de cupón asociado a un producto (por ejemplo, COMPRA_VERANO13)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        position
                      </td>

                      <td>
                        entero
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Posición del producto en una lista o colección (por ejemplo, 2)
                      </td>
                    </tr>
                  </table>
                </div>

                <h3>
                </h3>

                <h4 id="promotion-data">
                  Datos de promoción
                </h4>

                <p>
                  Representan la información sobre una promoción que se ha visto. Se hace referencia a ellos mediante el objeto <code>promoFieldObject</code> y contienen los siguientes valores:
                </p>

                <div class="devsite-table-wrapper">
                  <table>
                    <tr>
                      <th>
                        Clave
                      </th>

                      <th>
                        Tipo de valor
                      </th>

                      <th>
                        Obligatorio
                      </th>

                      <th>
                        Descripción
                      </th>
                    </tr>

                    <tr>
                      <td>
                        id
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        ID de promoción (por ejemplo, PROMO_1234). <strong>*Es necesario definir este campo o el de nombre.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        name
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        Nombre de la promoción (por ejemplo, Compra de verano) <strong>*Es necesario definir este campo o el de ID.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        creative
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Creatividad asociada a la promoción (por ejemplo, banner_verano2)
                      </td>
                    </tr>

                    <tr>
                      <td>
                        position
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Posición de la creatividad (por ejemplo, banner_slot_1).
                      </td>
                    </tr>
                  </table>
                </div>

                <h3>
                </h3>

                <h4 id="action-data">
                  Datos de acción
                </h4>

                <p>
                  Representan la información sobre una acción que se lleva a cabo relacionada con el comercio electrónico. Se hace referencia a ellos mediante el objeto <code>actionFieldObject</code> y contienen los siguientes valores:
                </p>

                <div class="devsite-table-wrapper">
                  <table>
                    <tr>
                      <th>
                        Clave
                      </th>

                      <th>
                        Tipo de valor
                      </th>

                      <th>
                        Obligatorio
                      </th>

                      <th>
                        Descripción
                      </th>
                    </tr>

                    <tr>
                      <td>
                        id
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        <strong>Sí*</strong>
                      </td>

                      <td>
                        ID de la transacción (por ejemplo, T1234). <strong>*Es obligatorio si el tipo de acción es <code>purchase</code> o <code>refund</code>.</strong>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        affiliation
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Tienda o afiliación donde se ha originado esta transacción (por ejemplo, Google Store).
                      </td>
                    </tr>

                    <tr>
                      <td>
                        revenue
                      </td>

                      <td>
                        moneda
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Especifica los ingresos totales o la suma total asociados a la transacción (por ejemplo, 11,99). Este valor puede incluir los gastos de envío, los impuestos u otros ajustes de los ingresos totales que quieras incluir para calcular tus ingresos. <strong>Nota:</strong> Si no se definen los ingresos, se calculará el valor automáticamente usando los campos de cantidad y de precio de todos los productos pertenecientes al mismo hit.
                      </td>
                    </tr>

                    <tr>
                      <td>
                        tax
                      </td>

                      <td>
                        moneda
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Impuestos totales asociados a la transacción
                      </td>
                    </tr>

                    <tr>
                      <td>
                        shipping
                      </td>

                      <td>
                        moneda
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Gastos de envío asociados a la transacción
                      </td>
                    </tr>

                    <tr>
                      <td>
                        coupon
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Cupón canjeado con la transacción.
                      </td>
                    </tr>

                    <tr>
                      <td>
                        list
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Lista a la que pertenecen los productos asociados. Opcional.
                      </td>
                    </tr>

                    <tr>
                      <td>
                        step
                      </td>

                      <td>
                        entero
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Número que representa un paso en el proceso de pago. Es opcional para acciones definidas como <code>checkout</code>.
                      </td>
                    </tr>

                    <tr>
                      <td>
                        option
                      </td>

                      <td>
                        texto
                      </td>

                      <td>
                        No
                      </td>

                      <td>
                        Campo adicional para acciones de <code>checkout</code> y <code>checkout_option</code>que pueden describir la información de opción en la página de pago, como la forma de pago seleccionada.
                      </td>
                    </tr>
                  </table>
                </div>

                <h3>
                </h3>

                <h4 id="action-types">
                  Acciones de producto y de promoción
                </h4>

                <p>
                  Las acciones especifican cómo interpretar los datos de producto y de promoción enviados a Google Analytics.
                </p>

                <div class="devsite-table-wrapper">
                  <table>
                    <tr>
                      <th>
                        Acción
                      </th>

                      <th>
                        Descripción
                      </th>
                    </tr>

                    <tr>
                      <td>
                        click
                      </td>

                      <td>
                        Clic en un producto o en un enlace de producto de uno o varios productos
                      </td>
                    </tr>

                    <tr>
                      <td>
                        detail
                      </td>

                      <td>
                        Visualización de los detalles de un producto
                      </td>
                    </tr>

                    <tr>
                      <td>
                        add
                      </td>

                      <td>
                        Uno o varios productos agregados a un carrito de compra
                      </td>
                    </tr>

                    <tr>
                      <td>
                        remove
                      </td>

                      <td>
                        Uno o varios productos suprimidos de un carrito de compra
                      </td>
                    </tr>

                    <tr>
                      <td>
                        checkout
                      </td>

                      <td>
                        Inicio del proceso de compra para uno o varios productos
                      </td>
                    </tr>

                    <tr>
                      <td>
                        checkout_option
                      </td>

                      <td>
                        Envío del valor de opción de un paso de compra determinado
                      </td>
                    </tr>

                    <tr>
                      <td>
                        purchase
                      </td>

                      <td>
                        Venta de uno o varios productos
                      </td>
                    </tr>

                    <tr>
                      <td>
                        refund
                      </td>

                      <td>
                        Devolución de uno o varios productos
                      </td>
                    </tr>

                    <tr>
                      <td>
                        promo_click
                      </td>

                      <td>
                        Clic en una promoción interna
                      </td>
                    </tr>
                  </table>
                </div>

                <h2>
                </h2>

                <h2>
                  Implementación del dataLayer
                </h2>

                <p>
                  En las siguientes secciones se describe cómo implementar el complemento de comercio electrónico mejorado para medir la actividad de comercio electrónico en un sitio web con la biblioteca analytics.js.
                </p>

                <h3 id="sending-data">
                  Envío de datos de comercio electrónico mejorado
                </h3>

                <p>
                  Una vez cargado, se agregará un par de comandos nuevos específicos del seguimiento de comercio electrónico mejorado al objeto de seguimiento predeterminado, y podrás empezar a enviar datos de comercio electrónico.
                </p>

                <ul>
                  <li>
                    <a href="#measuring-activities">Medición de actividades de comercio electrónico</a>
                  </li>
                  <li>
                    <a href="#measuring-checkout">Medir el proceso de pago</a>
                  </li>
                  <li>
                    Medición de transacciones
                  </li>
                  <li>
                    Medición de devoluciones
                  </li>
                  <li>
                    Medición de promociones internas
                  </li>
                </ul><aside class="special">

                <strong>Nota:</strong> Los datos de comercio electrónico solo pueden enviarse con un hit, por ejemplo con un hit de página vista (<code>pageview</code>) o de evento (<code>event</code>). Si usas comandos de comercio electrónico, pero no envías hits, o si el hit se ha enviado antes del comando de comercio electrónico, los datos de comercio electrónico no se enviarán.</aside> <aside></aside> <aside></aside> <aside>

                <h3 id="measuring-activities">
                  Medición de actividades de comercio electrónico
                </h3>

                <p>
                  Una implementación de comercio electrónico mejorado normal medirá las impresiones de producto y cualquiera de las siguientes acciones:
                </p>

                <ul>
                  <li>
                    Clics en un enlace de producto.
                  </li>
                  <li>
                    visualización de los detalles del producto,
                  </li>
                  <li>
                    impresiones y clics de promociones internas,
                  </li>
                  <li>
                    productos agregados o suprimidos de un carrito de compra,
                  </li>
                  <li>
                    inicio del proceso de compra de un producto,
                  </li>
                  <li>
                    compras y devoluciones.
                  </li>
                </ul>

                <h4>
                </h4>

                <h4>
                  Medición de Impresiones de productos
                </h4>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Páginas Vistas</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer:</em> <strong>true</strong><br /> <em>Activador:</em> <strong>event</strong> igual <strong>gtm.dom</strong>
                </p></aside>

                <p>
                  &nbsp;
                </p>

                <h4>
                  Medición de click en productos
                </h4>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Event</strong><br /> <em>Categoria</em>: <strong>Ecommerce</strong><br /> <em>Acción</em>: <strong>Product Click</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer:</em> <strong>true</strong><br /> <em>Activador</em>: <strong>event</strong> igual <strong>productClick</strong>
                </p>

                <p>
                  &nbsp;
                </p>

                <h4>
                  Medición de detalles en productos
                </h4>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Páginas Vistas</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer: <strong>true</strong></em><br /> <em>Activador:</em> <strong>event</strong> igual <strong>gtm.dom</strong>
                </p>

                <p>
                  &nbsp;
                </p>

                <h4 id="track_additions_to_and_removals_from_shopping_cart">
                  Seguimiento de los productos que se añaden y se retiran en el carrito de la compra:
                </h4>

                <h5>
                  <strong>Medición añadir al carrito</strong>
                </h5>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Event</strong><br /> <em>Categoria</em>: <strong>Ecommerce</strong><br /> <em>Acción</em>: <strong>Add to Cart</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer:</em> <strong>true</strong><br /> <em>Activador</em>: <strong>event</strong> igual <strong>addToCart</strong>
                </p>

                <p>
                  &nbsp;
                </p>

                <h5>
                  <strong>Medición retirar del carrito</strong>
                </h5>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Event</strong><br /> <em>Categoria</em>: <strong>Ecommerce</strong><br /> <em>Acción</em>: <strong>Remove from Cart</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer:</em> <strong>true</strong><br /> <em>Activador</em>: <strong>event</strong> igual <strong>removeFromCart</strong>
                </p>

                <p>
                  &nbsp;
                </p>

                <h3 id="measuring-checkout">
                  Medición de los procesos de pago
                </h3>

                <h4 id="checkout-steps">
                  1. Medición de los pasos de pago
                </h4>

                <p>
                  En cada paso del proceso de pago, tenemos que implementar el código de seguimiento correspondiente para enviar datos a Google Analytics.
                </p>

                <h5>
                  Campo <code>step</code>
                </h5>

                <p>
                  En cada paso del pago que midas, debes incluir un valor de <code>step</code>. Este valor se usa para asignar tus acciones de pago a las etiquetas configuradas en cada paso en <strong>Configuración de comercio electrónico</strong>.
                </p><aside class="note">

                <strong>Nota</strong>: Si tienes un proceso de pago de un solo paso o si no has configurado un embudo de compra en la <strong>configuración del comercio electrónico</strong>, el campo <code>step</code> es opcional.</aside>

                <h5>
                  Campo <code>option</code>
                </h5>

                <p>
                  Si tienes información adicional sobre un paso de pago determinado en el momento en que se mide, puedes configurar el campo <code>option</code> con una acción <code>checkout</code> para capturar esta información. Se podría tratar del tipo de pago predeterminado para el usuario (por ejemplo, &#8220;Visa&#8221;).
                </p>

                <p>
                </p>

                <p>
                  <strong>Configuración en Google Tag Manager:</strong>
                </p>

                <p>
                  <em>Tipo de etiqueta:</em> Universal Analytics<br /> <em>Tipo de medición:</em> <strong>Event</strong><br /> <em>Categoria</em>: <strong>Ecommerce</strong><br /> <em>Acción</em>: <strong>Checkout</strong><br /> <em>Activación del comercio electrónico mejorado:</em> <strong>true</strong><br /> <em>Uso del dataLayer:</em> <strong>true</strong><br /> <em>Activador</em>: <strong>event</strong> igual <strong>checkout</strong>
                </p>

                <p>
                  &nbsp;
                </p>

                <p>
                  &nbsp;
                </p>
