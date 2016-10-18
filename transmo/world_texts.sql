SET @TEXT_ID := 65000;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrificación le permite cambiar la apariencia de su equipo, sin cambiar las estadísticas de los artículos.\r\nLos productos que se utilizan en transmogrificación ya no son reembolsables , comerciable y están ligados a usted\r\nLa actualización de un menú actualiza la vista y los precios.\r\n\r\nNo todo puede ser transmogrificado.\r\nLas restricciones incluyen pero no se limitan a :\r\nSólo armadura y las armas pueden ser transmogrificados\r\nRifles, arcos y ballestas pueden ser transfigurados entre si.\r\nLas cañas de pescar no pueden ser transmogrificadas\r\nDebes de ser capaz de equipar ambos items para poder realizar el proceso\r\n\r\nLas transfiguraciones permanecen en su equipo siempre y cuando usted sea el propietario .\r\nSi se intenta poner el artículo en Banco de la Hermandad o por correo a otra persona , la metamorfosis desaparecera\r\n\r\nTambién puedes eliminar transfiguraciones de forma gratuita en el Transmutador .'),
(@TEXT_ID+1, 'Puedes guardar tu propio conjuntos transfigurado\r\n\r\nPara guardar, primero hay que transfigurar sus objetos equipados.\r\nLuego dirigete al menu de Gestion de Equipo,\r\nTodos los elementos transfigurados se muestran para ver lo que estas guardando\r\nSi el conjunto esta conforme, puede hacer clic para guardar el grupo y colocarle un nombre a tu gusto.\r\n\r\nPara utilizar un conjunto puede hacer clic en el conjunto guardado en el menú de gestión de conjunto y luego seleccionar el que desee\r\nSi el conjunto tiene una transfiguracion de un artículo que ya estába transfigurado , se pierde la vieja transfiguracion .\r\nToma en cuenta las restricciones para transfigurar.\r\n\r\nTambien puedes borrar conjunto\'s ve a menu y selecciona borrar conjunto.');

SET @STRING_ENTRY := 11100;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, 'Item Transfigurado'),
(@STRING_ENTRY+1, 'La ranura del equipo esta vacio'),
(@STRING_ENTRY+2, 'Item de Origen seleccionado Invalido'),
(@STRING_ENTRY+3, 'El item de Origen no existe'),
(@STRING_ENTRY+4, 'Item de destino no existe'),
(@STRING_ENTRY+5, 'Item seleccionado Invalido'),
(@STRING_ENTRY+6, 'No tienes dinero'),
(@STRING_ENTRY+7, 'Usted no tiene suficientes tokents'),
(@STRING_ENTRY+8, 'Transfiguracion Removida'),
(@STRING_ENTRY+9, 'No hay Transfiguraciones'),
(@STRING_ENTRY+10, 'Nombre insertado Invalido');
