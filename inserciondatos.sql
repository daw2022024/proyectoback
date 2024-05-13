/*Categorias*/
INSERT INTO `category`(`name`) VALUES ('Alimentacion');
INSERT INTO `category`(`name`) VALUES ('Drogueria');
INSERT INTO `category`(`name`) VALUES ('Miscelanea');

/*Subcategorias*/
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Carniceria',1);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Congelados',1);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Bebidas',1);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Limpieza hogar',2);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Higiene personal',2);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Perfumeria',2);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Jardin',3);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Herramientas',3);
INSERT INTO `sub_category`(`name`,`category_id`) VALUES ('Tecnologia',3);

/*Productos*/
INSERT INTO `product`(`name`,`description`) VALUES ('Pollo','Filetes de pollo 300gr');
INSERT INTO `product`(`name`,`description`) VALUES ('Ternera','Filetes de ternera 200gr');
INSERT INTO `product`(`name`,`description`) VALUES ('Higado','Higado de conejo 100gr');

INSERT INTO `product`(`name`,`description`) VALUES ('Rabas','Rabas rebozadas 500gr');
INSERT INTO `product`(`name`,`description`) VALUES ('Guisantes','Guisantes cocidos 500gr');
INSERT INTO `product`(`name`,`description`) VALUES ('Pota','Pota cocida 400gr');

INSERT INTO `product`(`name`,`description`) VALUES ('Agua mineral','Pack de 6 botellas de 1,5L');
INSERT INTO `product`(`name`,`description`) VALUES ('Coca Cola','Botella de 2L');
INSERT INTO `product`(`name`,`description`) VALUES ('Cerveza','Pack de 12 latas de 33cl');

INSERT INTO `product`(`name`,`description`) VALUES ('Amoniaco','Botella de 1L');
INSERT INTO `product`(`name`,`description`) VALUES ('Lejia','Botella de 3L');
INSERT INTO `product`(`name`,`description`) VALUES ('Papel cocina','Pack 3 rollos 50m');

INSERT INTO `product`(`name`,`description`) VALUES ('Pasta dental','Tubo de 125ml');
INSERT INTO `product`(`name`,`description`) VALUES ('Gel','Botella de 700ml');
INSERT INTO `product`(`name`,`description`) VALUES ('Champu','Botella de 500ml');

INSERT INTO `product`(`name`,`description`) VALUES ('Crema facial','Crema clinique de 50ml');
INSERT INTO `product`(`name`,`description`) VALUES ('Crema corporal','Crema nivea de 200ml');
INSERT INTO `product`(`name`,`description`) VALUES ('Aceite corporal','Aceite de aloe vera de 300ml');

INSERT INTO `product`(`name`,`description`) VALUES ('Abono','Saco de 5 kg');
INSERT INTO `product`(`name`,`description`) VALUES ('Arena','Saco de 25 kg');
INSERT INTO `product`(`name`,`description`) VALUES ('Planta aloe vera','Planta de aloe vera de 1,05 kg y alto de 50 cm');

INSERT INTO `product`(`name`,`description`) VALUES ('Taladro','Taladro electrico de 12V');
INSERT INTO `product`(`name`,`description`) VALUES ('Pack desatornilladores','Pack de 24 destornilladores con diferentes cabezales');
INSERT INTO `product`(`name`,`description`) VALUES ('Sierra circular','Sierra electrica de 12V');

INSERT INTO `product`(`name`,`description`) VALUES ('Television','Television de 49"');
INSERT INTO `product`(`name`,`description`) VALUES ('Smartphone','Smartphone con conexion 5G');
INSERT INTO `product`(`name`,`description`) VALUES ('Consola','Consola de videojuegos de ultima generacion');

INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (1,1);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (2,1);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (3,1);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (4,2);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (5,2);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (6,2);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (7,3);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (8,3);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (9,3);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (10,4);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (11,4);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (12,4);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (13,5);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (14,5);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (15,5);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (16,6);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (17,6);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (18,6);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (19,7);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (20,7);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (21,7);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (22,8);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (23,8);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (24,8);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (25,9);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (26,9);
INSERT INTO `product_sub_category`(`product_id`,`sub_category_id`) VALUES (27,9);

/*Imagenes*/
INSERT INTO `image`(`product_id`,`src`) VALUES (1,'https://www.mercado47.com/Files/Images/References/2016/05/e40642d2-e327-4a4d-9fda-999f505e0580/c506a9ba-207a-4c71-b564-800059f90b33.png');
INSERT INTO `image`(`product_id`,`src`) VALUES (2,'https://www.onacook.com/644-large_default/ternera-lechal-200g.jpg?20240102152926');
INSERT INTO `image`(`product_id`,`src`) VALUES (3,'https://c8.alamy.com/compes/2c5cjy1/ingredientes-para-cocinar-higado-de-conejo-crudo-aislado-sobre-fondo-blanco-2c5cjy1.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (4,'https://www.supertambo.es/web/tambo/img/productos/5596/tiras_poton_empana_72.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (5,'https://comercialnovafrigo.com/wp-content/uploads/2020/04/guisante-fino-frudesa-600x600.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (6,'https://www.continente.pt/dw/image/v2/BDVS_PRD/on/demandware.static/-/Sites-col-master-catalog/default/dw890c0c06/images/col/710/7103164-frente.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (7,'https://a2.soysuper.com/4c6fe01ef30302826d979b1d4f5f1397.1500.0.0.0.wmark.56763b8a.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (8,'https://www.bodegasbelmonte.com/940/coca-cola-original-2-litros.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (9,'https://sgfm.elcorteingles.es/SGFM/dctm/MEDIA03/202306/22/00118600300364____10__600x600.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (10,'https://www.jofisasl.com/almacen/articulos/zoom_amoniaco_normal_bordes_suavizados_con_fondo_copia.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (11,'https://joytaly.com/6167-large_default/ace-candeggina-lavanderia-lejia-aroma-floral-3l.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (12,'https://static.carrefour.es/hd_510x_/img_pim_food/799071_00_1.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (13,'https://www.supermercadoseljamon.com/documents/10180/892067/45030047_G.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (14,'https://smellsperfumerias.es/9317-large_default/dove-gel-700ml-seda.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (15,'https://cdn.webshopapp.com/shops/1867/files/370099042/loreal-champu-serie-expert-vitamino-color-500ml.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (16,'https://media.sanareva.es/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/3/3/3310168-6-192333101681-1.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (17,'https://images-us.nivea.com/-/media/miscellaneous/media-center-items/c/6/e/50f46555a0b1475a9b7a88b282c355a1-web_1010x1180_transparent_png.png');
INSERT INTO `image`(`product_id`,`src`) VALUES (18,'https://www.farmavazquez.com/72075-large_default/johnsons-aceite-aloe-vera-300-ml.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (19,'https://m.media-amazon.com/images/I/81aK-+GVurL.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (20,'https://www.outlet-piscinas.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/a/saco-humeda_1_1.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (21,'https://www.decoalive.com/wp-content/uploads/2021/04/aloe-vera.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (22,'https://www.mengual.com/media/catalog/product/NAV/60-5010-2_3.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (23,'https://cdn1.suministrosurquiza.com/images/thumbs/0015465_juego-24-destornilladores-precision-bahco.jpeg');
INSERT INTO `image`(`product_id`,`src`) VALUES (24,'https://media.azulejossola.com/product/mini-sierra-circular-electrica-705-w-115-mm-800x800.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (25,'https://www.lg.com/cac/images/televisores/md07504077/gallery/D-1.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (26,'https://canarias.worten.es/i/2584f07425202e1cc72b64497f853f7f99312926.jpg');
INSERT INTO `image`(`product_id`,`src`) VALUES (27,'https://media.direct.playstation.com/is/image/psdglobal/PS5-Slim-Hero-4');

/*Supermercados*/
INSERT INTO `market` (`name`) VALUES ('Mercadona');
INSERT INTO `market` (`name`) VALUES ('Carrefour');
INSERT INTO `market` (`name`) VALUES ('DIA');
INSERT INTO `market` (`name`) VALUES ('Eroski');
INSERT INTO `market` (`name`) VALUES ('Alcampo');
INSERT INTO `market` (`name`) VALUES ('Lidl');
INSERT INTO `market` (`name`) VALUES ('Aldi');
INSERT INTO `market` (`name`) VALUES ('El Corte Inglés');
INSERT INTO `market` (`name`) VALUES ('Hipercor');


/*Precios*/
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (1,2,2.05);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (1,3,2.5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (1,5,1.99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (2,1,3.25);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (2,5,3.55);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (2,9,2.99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (3,6,4);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (3,7,4.05);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (3,8,4.10);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (4,2,2.99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (4,3,2.99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (4,6,2.95);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (5,7,1.99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (5,8,1.95);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (5,9,1.95);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (6,1,5.50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (6,2,5.45);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (6,5,4.50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (7,4,1.20);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (7,6,1.50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (7,8,1.35);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (8,4,3.50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (8,6,3.50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (8,9,3.55);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (9,2,4);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (9,9,4);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (10,6,2);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (10,8,2.05);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (10,9,2.10);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (11,5,3.60);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (11,7,3.65);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (11,8,4);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (12,1,1.10);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (12,2,1.25);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (12,3,1.30);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (13,4,2);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (13,5,2.5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (13,6,3);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (14,1,2.10);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (14,2,2.25);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (15,1,2);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (15,2,1.95);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (15,3,2.20);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (15,5,2.30);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (16,6,5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (17,8,5.5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (17,9,6.3);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,1,8.8);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,2,8.9);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,3,9);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,4,7.95);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,5,7.6);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (18,6,8.5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (19,7,7);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (19,9,7.6);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (20,4,9);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (21,1,10.5);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (21,2,12);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (22,2,63);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (22,5,50);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (22,8,55);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (23,4,99);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (24,6,80);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (24,7,88);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (25,8,530);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (26,4,350);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (26,6,380);
INSERT INTO `price`(`product_id`,`market_id`,`value`) VALUES (27,1,320);