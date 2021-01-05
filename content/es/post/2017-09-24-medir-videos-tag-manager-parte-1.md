---
title: 'Nuevas variables y activadores para medir los {{videos}} en Tag Manager • Parte I'
author: marcusRB
type: post
date: 2017-09-24T15:15:09+00:00
url: /medir-videos-tag-manager-parte-1/
featured_image: /img/2017/09/Eventos-Videos-260x146.png

categories:
  - Google Analytics
  - Tag Manager
tags: ["videos tag manager","youtube analytics", "tracking tag manager"]
format: image
summary: "Como se venía anunciando hace muchos meses, finalmente Google Tag Manager activó  la posibilidad de medir los eventos del tipo videos; directamente con variables propias."
---
Como se venía anunciando hace muchos meses, finalmente Google Tag Manager activó  la posibilidad de medir los eventos del tipo &#8220;videos&#8221; directamente con variables propias.

Desde que comencé a enamorarme de Tag Manager, fue en 2013, y gracias a la comunidad de Analytics de habla inglesa, la única posibilidad era a través de customHTML, es decir Javascript personalizados con jQuery. Hace mención particular a los desarrolladores de <a href="https://www.lunametrics.com/labs/" target="_blank" rel="noopener">Lunametrics</a> y sus fantásticos repositorios que sigo utilizando y personalizando. No he dejado de utilizarlos, al contrario, gracias a ellos es posible medir muchas más cosas, pero las variables nativas de GTM hace la vida más fácil a los analistas y desarrolladores menos experimentados.

&nbsp;

### Vamos a presentar la interfaz separado por las diferentes partes.


Entramos en Variables, <img class="alignnone wp-image-105 " src="https://www.marcusrb.com/img/2017/10/variable_icon_tagManager_marcusRB-150x150.png" alt="variable_icon_tagManager_marcusRB" width="52" height="52" srcset="https://www.marcusrb.com/img/2017/10/variable_icon_tagManager_marcusRB-150x150.png 150w, https://www.marcusrb.com/img/2017/10/variable_icon_tagManager_marcusRB-85x85.png 85w, https://www.marcusrb.com/img/2017/10/variable_icon_tagManager_marcusRB-80x80.png 80w" sizes="(max-width: 52px) 100vw, 52px" />, desde <strong>Variables Integradas</strong>, <strong>Configurar</strong> -> activaríamos todas las indicada como la imagen de arriba


        <p>
          &nbsp;
        </p>

        <p>
          <div id="attachment_100" style="width: 658px" class="wp-caption aligncenter">
            <a href="https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04.png"><img class="wp-image-100 size-full" src="https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04.png" alt="tracking variables Videos tag manager" width="648" height="373" srcset="https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04.png 648w, https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04-300x173.png 300w, https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04-254x146.png 254w, https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04-50x29.png 50w, https://www.marcusrb.com/img/2017/10/Captura-de-pantalla-2017-10-24-a-las-16.29.04-130x75.png 130w" sizes="(max-width: 648px) 100vw, 648px" /></a>

            <p class="wp-caption-text">
              Variables integradas de tipo videos en Tag Manager
            </p>
          </div>
        </p>

        <p>
          </div></div> </div></div>

          <div class="accordion">
            <div class="mfn-acc accordion_wrapper ">
              <div class="question">
                <div class="title">
                  <i class="icon-plus acc-icon-plus"></i><i class="icon-minus acc-icon-minus"></i>Activadores
                </div>

                <div class="answer">
                  </p>

                  <p>
                    Referente a los activadores, <img class="alignnone wp-image-104" src="https://www.marcusrb.com/img/2017/10/trigger_activador_icon_tagManager_marcusRB-150x150.png" alt="trigger_activador_icon_tagManager_marcusRB" width="52" height="52" srcset="https://www.marcusrb.com/img/2017/10/trigger_activador_icon_tagManager_marcusRB-150x150.png 150w, https://www.marcusrb.com/img/2017/10/trigger_activador_icon_tagManager_marcusRB-85x85.png 85w, https://www.marcusrb.com/img/2017/10/trigger_activador_icon_tagManager_marcusRB-80x80.png 80w" sizes="(max-width: 52px) 100vw, 52px" />tenemos una nueva para activar, en este caso solo para YouTube
                  </p>

                  <p>
                    &nbsp;
                  </p>

                  <p>
                    <div id="attachment_322" style="width: 1034px" class="wp-caption aligncenter">
                      <a href="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03.png"><img class="wp-image-322 size-large" src="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-1024x673.png" alt="" width="1024" height="673" srcset="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-1024x673.png 1024w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-300x197.png 300w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-768x505.png 768w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-222x146.png 222w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-50x33.png 50w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03-114x75.png 114w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.41.03.png 1132w" sizes="(max-width: 1024px) 100vw, 1024px" /></a>

                      <p class="wp-caption-text">
                        activadores de videos youtube en Tag Manager
                      </p>
                    </div>
                  </p>

                  <p>
                    </div></div> </div></div>

                    <div class="accordion">
                      <div class="mfn-acc accordion_wrapper ">
                        <div class="question">
                          <div class="title">
                            <i class="icon-plus acc-icon-plus"></i><i class="icon-minus acc-icon-minus"></i>Etiquetas
                          </div>

                          <div class="answer">
                            </p>

                            <p>
                              Referente a las etiquetas , <a href="https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB.png"><img class="wp-image-103 alignnone" src="https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB.png" alt="etiquetaTag_icon_tagManager_marcusRB" width="53" height="50" srcset="https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB.png 252w, https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB-153x146.png 153w, https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB-50x48.png 50w, https://www.marcusrb.com/img/2017/10/etiquetaTag_icon_tagManager_marcusRB-79x75.png 79w" sizes="(max-width: 53px) 100vw, 53px" /></a>utilizamos del tipo Google Analytics, seleccionando como siempre, EVENTOS que para YouTube podemos una estructura como esta:
                            </p>

                            <p>
                              <div id="attachment_323" style="width: 1034px" class="wp-caption aligncenter">
                                <a href="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36.png"><img class="wp-image-323 size-large" src="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-1024x747.png" alt="" width="1024" height="747" srcset="https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-1024x747.png 1024w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-300x219.png 300w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-768x560.png 768w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-200x146.png 200w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-50x36.png 50w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36-103x75.png 103w, https://www.marcusrb.com/img/2017/09/Captura-de-pantalla-2018-03-11-a-las-15.40.36.png 1137w" sizes="(max-width: 1024px) 100vw, 1024px" /></a>

                                <p class="wp-caption-text">
                                  ejemplo etiqueta de tag Manager para videos YouTube. Son clásicos eventos de Analytics con variables integradas y jugando un poco con Categoría, Acción, Etiquetas.
                                </p>
                              </div>
                            </p>

                            <p>
                              </div></div> </div></div>

                              <p>
                                Podemos jugar un poco con el tema de Categorías, Acción y Etiquetas con las variables integradas, inclusive añadir el valor, en este caso podría ser el tiempo consumido, aunque lo interprete como valor monetario.
                              </p>

                              <p>
                                Como siempre, hagamos un test en una contenedor prueba para ver su efectividad. Aquí el vídeo, buena visión a tod@s 😉
                              </p>

                              <p>
                                Comentarios y sugerencias, más abajo.
                              </p>

                              <p>
                                <iframe width="1200" height="675" src="https://www.youtube.com/embed/yvfB5vFVtgk?feature=oembed&#038;enablejsapi=1&#038;origin=https://www.marcusrb.com" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                              </p>

                              <p>
                                &nbsp;
                              </p>

                              <p>
                                &nbsp;
                              </p>

                              <p>
                                &nbsp;
                              </p>

                              <p>
                                &nbsp;
                              </p>

                              <p>
                                &nbsp;
                              </p>
