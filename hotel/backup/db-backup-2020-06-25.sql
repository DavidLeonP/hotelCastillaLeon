DROP TABLE IF EXISTS caja;

CREATE TABLE `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_apertura` datetime DEFAULT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `monto_apertura` double DEFAULT NULL,
  `monto_cierre` double DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS categoria;

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("1","Personal","conference.jpg","2018-02-15 09:14:21"),
("2","Doble","","2019-02-26 11:39:02"),
("3","Triple","","2019-02-26 11:39:08"),
("4","Cuatruple","","2019-02-26 11:40:17"),
("5","Especial","","2019-02-26 11:40:26"),
("6","Especial Doble","","2020-06-16 17:32:37");



DROP TABLE IF EXISTS cliente_proceso;

CREATE TABLE `cliente_proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `sesion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO cliente_proceso VALUES("40","64","63","pukd3sviv0hf6ij7kid2jfbben"),
("41","64","64","pukd3sviv0hf6ij7kid2jfbben"),
("42","64","65","pukd3sviv0hf6ij7kid2jfbben"),
("43","65","66","pukd3sviv0hf6ij7kid2jfbben"),
("44","66","67","pukd3sviv0hf6ij7kid2jfbben"),
("45","64","68","pukd3sviv0hf6ij7kid2jfbben"),
("46","65","69","pukd3sviv0hf6ij7kid2jfbben");



DROP TABLE IF EXISTS configuracion;

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `rnc` varchar(25) DEFAULT NULL,
  `registro_empresarial` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `iva` double(11,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO configuracion VALUES("1","HOTEL HUGO","Chubut 789","Argentina","+54 2302 532220","NULL","20356720920","NULL","Huinca Renanco","122321_1.png","0.0");



DROP TABLE IF EXISTS contacto;

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(12) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS gasto;

CREATE TABLE `gasto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS habitacion;

CREATE TABLE `habitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `capacidad` int(11) NOT NULL DEFAULT '1',
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO habitacion VALUES("6","101","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:42:02"),
("7","102","Con cama de 2 plazas, una TV, Cable","0","2","3","1","2019-02-26 11:42:16"),
("8","201","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:42:30"),
("9","202","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:43:02"),
("10","203","Con cama de 2 plazas, una TV, Cable","0","3","1","1","2019-02-26 11:43:45"),
("11","204","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:43:55"),
("12","205","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:44:14"),
("13","206","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:44:25"),
("14","207","Con cama de 2 plazas, una TV, Cable","0","5","1","1","2019-02-26 11:44:41"),
("15","208","Con una cama","0","1","1","1","2019-02-26 11:44:58"),
("16","301","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:45:21"),
("17","302","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:45:34"),
("18","303","Con cama de 2 plazas, una TV, Cable","0","3","1","1","2019-02-26 11:45:43"),
("19","304","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:45:56"),
("20","305","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:46:12"),
("21","306","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:46:31"),
("22","307","especial king size","0","5","1","1","2019-02-26 11:46:45"),
("23","308","Una cama","0","1","1","1","2019-02-26 11:46:59"),
("24","401","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:47:12"),
("25","402","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:47:28"),
("26","403","Con cama de 2 plazas, una TV, Cable","0","3","1","1","2019-02-26 11:47:56"),
("27","404","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:48:06"),
("28","405","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:48:20"),
("29","406","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:48:27"),
("30","407","Con cama de 2 plazas, una TV, Cable","0","5","1","1","2019-02-26 11:48:39"),
("31","408","Una cama","0","1","1","1","2019-02-26 11:48:54"),
("32","501","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:49:05"),
("33","502","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:49:14"),
("34","503","Con cama de 2 plazas, una TV, Cable","0","3","1","1","2019-02-26 11:49:30"),
("35","504","Con cama de 2 plazas, una TV, Cable, Yacuzi","0","6","1","1","2020-06-16 17:31:15");



DROP TABLE IF EXISTS inventario;

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `observacion` text,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS persona;

CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento` int(11) DEFAULT NULL,
  `documento` varchar(12) DEFAULT NULL,
  `giro` varchar(255) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  `tipo` int(11) DEFAULT '1',
  `vip` int(11) NOT NULL DEFAULT '0',
  `contador` int(11) NOT NULL DEFAULT '0',
  `limite` int(11) NOT NULL DEFAULT '7',
  `nacionalidad` varchar(25) DEFAULT NULL,
  `estado_civil` varchar(12) DEFAULT NULL,
  `ocupacion` varchar(255) DEFAULT NULL,
  `medio_transporte` varchar(65) DEFAULT NULL,
  `destino` varchar(55) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `celular` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

INSERT INTO persona VALUES("52","2","71895719","","NELSON FRANCISCO YCHPAS SULLCA","1996-12-12","","Jr Lobato NRO 230","2019-03-01 09:38:51","1","0","0","7","Peruana","SOLTERO","Estudiante","Bus","Lima","Trusimo","",""),
("64","1","35672092","","Hugo Flores","","","","2020-06-15 19:44:27","1","0","0","7","NULL","NULL","1","NULL","NULL","NULL","536895",""),
("65","1","123456","","Jorge Gervacio","","","","2020-06-16 19:34:08","1","0","0","7","NULL","NULL","1","NULL","NULL","NULL","23025698569",""),
("66","1","54321","","chapu martinez","","","chubut","2020-06-16 19:36:26","1","0","0","7","NULL","NULL","1","","","NULL","36528965","");



DROP TABLE IF EXISTS proceso;

CREATE TABLE `proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_habitacion` int(11) DEFAULT NULL,
  `id_tarifa` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `precio` double NOT NULL DEFAULT '0',
  `cant_noche` float NOT NULL DEFAULT '1',
  `dinero_dejado` double NOT NULL DEFAULT '0',
  `id_tipo_pago` int(11) DEFAULT NULL,
  `fecha_entrada` datetime DEFAULT NULL,
  `fecha_salida` datetime DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `id_usuario` int(11) DEFAULT NULL,
  `cant_personas` double DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `fecha_creada` datetime DEFAULT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '1',
  `observacion` varchar(255) DEFAULT NULL,
  `pagado` int(11) NOT NULL DEFAULT '1',
  `nro_operacion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO proceso VALUES("63","6","17","64","380","1","0","1","2020-06-15 19:44:27","2020-06-16 12:00:00","0","1","1","0","1","2020-06-15 19:44:27","1","","1",""),
("64","7","24","64","580","1","0","1","2020-06-15 19:45:13","2020-06-16 12:00:00","0","1","1","0","1","2020-06-15 19:45:13","2","","1",""),
("65","6","17","64","380","1","0","1","2020-06-16 18:39:37","2020-06-17 12:00:00","0","1","1","0","1","2020-06-16 18:39:37","1","","1",""),
("66","7","24","65","580","1","0","1","2020-06-16 19:34:09","2020-06-17 12:00:00","0","1","1","0","1","2020-06-16 19:34:09","1","","1",""),
("67","8","23","66","580","1","0","1","2020-06-16 19:36:27","2020-06-17 12:00:00","0","1","1","0","1","2020-06-16 19:36:27","1","","1",""),
("68","8","23","64","580","1","0","1","2020-06-17 10:14:00","2020-06-18 12:00:00","0","1","1","0","1","2020-06-17 10:14:00","1","","1",""),
("69","8","23","65","580","1","0","1","2020-06-17 10:16:40","2020-06-18 12:00:00","0","1","1","0","1","2020-06-17 10:16:40","1","","1","");



DROP TABLE IF EXISTS proceso_sueldo;

CREATE TABLE `proceso_sueldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sueldo` int(11) DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '1',
  `id_caja` int(11) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS proceso_venta;

CREATE TABLE `proceso_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_operacion` int(11) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `tipo_operacion` int(11) NOT NULL DEFAULT '1',
  `fecha_creada` datetime DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO proceso_venta VALUES("3","3","64","3","1","3","1","2020-06-15 17:46:20","","1"),
("4","3","67","4","5","3","1","2020-06-16 17:44:13","","1"),
("5","3","66","5","3","3","1","2020-06-17 08:59:33","","1");



DROP TABLE IF EXISTS producto;

CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `stock` double NOT NULL DEFAULT '0',
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO producto VALUES("3","PRO-0003","Gaseosa Inka Kola","Inka Kola","Personal medio litro","","0","3","10","0","2018-02-16 20:59:18");



DROP TABLE IF EXISTS reservations;

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `documento` varchar(12) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS rooms;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` text,
  `capacity` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS sueldo;

CREATE TABLE `sueldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `dia_pago` int(11) NOT NULL DEFAULT '1',
  `fecha_comienzo` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS tarifa;

CREATE TABLE `tarifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tarifa VALUES("1","24 Horas","300.00"),
("4","12 horas","150.00"),
("7","Doble","580.00"),
("8","Personal","380.00"),
("9","Triple","700.00"),
("10","Cuadruple","800.00"),
("11","Quintuple","900.00");



DROP TABLE IF EXISTS tarifa_habitacion;

CREATE TABLE `tarifa_habitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tarifa` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

INSERT INTO tarifa_habitacion VALUES("17","8","6","380"),
("18","7","6","580"),
("19","9","6","700"),
("20","10","6","800"),
("23","7","8","580"),
("24","7","7","580"),
("25","7","9","580"),
("26","9","10","700"),
("27","7","11","580"),
("28","8","12","380"),
("29","8","13","380"),
("30","8","14","500"),
("31","7","14","600"),
("32","8","15","380"),
("33","7","16","580"),
("34","7","17","580"),
("35","9","18","700"),
("36","7","19","580"),
("37","8","20","380"),
("38","8","21","380"),
("39","9","22","700"),
("40","8","23","380"),
("41","7","24","580"),
("42","7","25","580"),
("43","9","26","700"),
("44","7","27","580"),
("45","8","28","380"),
("46","8","29","380"),
("47","9","30","700"),
("48","8","31","380"),
("49","7","32","580"),
("50","7","33","580"),
("51","8","34","380"),
("52","7","35","400"),
("54","11","6","900"),
("55","1","36","300"),
("56","4","36","150"),
("57","7","36","580");



DROP TABLE IF EXISTS tipo_comprobante;

CREATE TABLE `tipo_comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tipo_comprobante VALUES("1","TICKET","1"),
("2","BOLETA","1"),
("3","FACTURA","1");



DROP TABLE IF EXISTS tipo_documento;

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tipo_documento VALUES("1","PASAPORTE","2018-02-15 08:23:24"),
("2","INE","2018-02-15 09:24:24");



DROP TABLE IF EXISTS tipo_pago;

CREATE TABLE `tipo_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tipo_pago VALUES("1","EFECTIVO","2018-02-15 09:25:24"),
("2","TARJETA DE DEBITO / CREDITO","2018-02-15 09:25:24"),
("3","DEPOSITO","2018-08-22 00:00:00");



DROP TABLE IF EXISTS tmp;

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad_tmp` int(11) DEFAULT NULL,
  `precio_tmp` double DEFAULT NULL,
  `sessionn_id` varchar(255) DEFAULT NULL,
  `tipo_operacion` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `pago` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","Administrador","admin","admin","admin@gmail.com","e3f83ed23d18a34fc770626571753fabf1c54b5e","","1","1","2016-12-13 09:08:03","0"),
("2","nelson","1","nelson","nelson01221@gmail.com","adcd7048512e64b48da55b027577886ee5a36350","","1","0","2019-02-26 01:23:42","0");



DROP TABLE IF EXISTS venta;

CREATE TABLE `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_comprobante` int(11) DEFAULT NULL,
  `nro_comprobante` varchar(25) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `tipo_operacion` int(11) NOT NULL DEFAULT '1',
  `total` double DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO venta VALUES("3","1","","","1","1","3","1","","2020-06-15 19:46:14"),
("4","1","","","1","1","15","1","","2020-06-16 19:43:30"),
("5","1","","","1","1","9","1","","2020-06-17 10:40:14");



