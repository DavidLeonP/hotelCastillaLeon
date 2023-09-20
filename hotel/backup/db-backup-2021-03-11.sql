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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

INSERT INTO caja VALUES("1","2020-10-30 12:29:39","2020-11-03 11:38:31","100","6246","0","1","2020-10-30 14:29:44"),
("2","2020-11-03 11:38:45","2020-11-03 11:40:01","0","700","0","1","2020-11-03 13:38:51"),
("3","2020-11-03 11:40:15","2020-11-03 15:22:14","0","380","0","1","2020-11-03 13:40:18"),
("4","2020-11-03 15:22:20","2020-11-03 15:57:10","0","580","0","1","2020-11-03 17:22:24"),
("5","2020-11-03 15:57:17","2020-11-03 15:59:32","0","0","0","1","2020-11-03 17:57:20"),
("6","2020-11-03 15:59:38","2020-11-03 16:01:36","0","0","0","1","2020-11-03 17:59:41"),
("7","2020-11-03 16:01:42","2020-11-03 16:07:57","0","0","0","1","2020-11-03 18:01:45"),
("8","2020-11-03 16:08:01","2020-11-03 16:18:23","0","0","0","1","2020-11-03 18:08:05"),
("9","2020-11-03 16:18:33","2020-11-03 16:19:53","0","0","0","1","2020-11-03 18:18:35"),
("10","2020-11-03 16:19:57","2020-11-03 16:35:18","0","380","0","1","2020-11-03 18:20:00"),
("11","2020-11-03 16:35:25","2020-11-03 16:36:04","0","760","0","1","2020-11-03 18:35:28"),
("12","2020-11-03 16:36:08","2020-11-03 16:37:06","0","0","0","1","2020-11-03 18:36:18"),
("13","2020-11-03 16:37:12","2020-11-03 16:38:15","0","383","0","1","2020-11-03 18:37:14"),
("14","2020-11-03 16:41:44","2020-11-03 16:42:32","0","0","0","1","2020-11-03 18:41:47"),
("15","2020-11-03 16:42:36","2020-11-03 16:42:56","0","383","0","1","2020-11-03 18:42:39"),
("16","2020-11-03 16:43:06","2020-11-03 16:43:54","0","3","0","1","2020-11-03 18:43:10"),
("17","2020-11-03 16:43:59","2021-02-18 09:36:42","0","129355","0","1","2020-11-03 18:44:02"),
("18","2021-02-18 09:36:51","2021-02-18 09:37:30","0","380","0","1","2021-02-18 11:36:58"),
("19","2021-02-18 09:38:00","2021-02-24 17:01:52","0","3460","0","1","2021-02-18 11:38:04"),
("20","2021-02-24 17:02:35","2021-02-24 17:04:10","0","380","0","1","2021-02-24 19:02:41"),
("21","2021-02-24 17:05:09","2021-02-24 17:15:12","0","383","0","1","2021-02-24 19:05:12"),
("22","2021-02-24 17:15:34","2021-02-24 17:20:43","0","0","0","1","2021-02-24 19:15:38"),
("23","2021-02-24 17:22:52","2021-02-24 17:25:33","0","0","0","1","2021-02-24 19:22:55"),
("24","2021-02-24 17:25:44","2021-02-24 17:28:40","0","760","0","1","2021-02-24 19:25:48"),
("25","2021-02-24 17:28:48","2021-02-24 17:30:25","0","0","0","1","2021-02-24 19:28:53"),
("26","2021-02-24 17:30:33","2021-02-24 17:33:38","0","380","0","1","2021-02-24 19:30:35"),
("27","2021-02-24 17:35:41","2021-02-24 17:36:46","0","760","0","1","2021-02-24 19:35:44"),
("28","2021-02-24 17:43:08","2021-02-24 17:43:57","0","380","0","1","2021-02-24 19:43:11"),
("29","2021-02-24 17:44:05","2021-02-24 18:02:51","0","1900","0","1","2021-02-24 19:44:07"),
("30","2021-02-24 18:03:55","2021-02-25 08:31:01","0","3040","0","1","2021-02-24 20:03:58"),
("31","2021-02-25 08:31:09","2021-02-25 08:31:38","0","380","0","1","2021-02-25 10:31:13"),
("32","2021-02-25 08:32:07","2021-02-25 08:47:15","0","500","0","1","2021-02-25 10:32:19"),
("33","2021-02-25 08:58:22","2021-02-25 08:58:44","0","0","0","1","2021-02-25 10:58:25"),
("34","2021-02-25 08:59:43","2021-02-25 09:01:02","0","0","0","1","2021-02-25 10:59:49"),
("35","2021-02-25 09:01:09","2021-02-25 09:01:55","0","0","0","1","2021-02-25 11:01:12"),
("36","2021-02-25 09:02:05","2021-02-25 09:05:10","0","0","0","1","2021-02-25 11:02:08"),
("37","2021-02-25 09:05:21","2021-02-25 09:09:43","0","380","0","1","2021-02-25 11:05:24"),
("38","2021-02-25 09:15:55","2021-03-09 13:19:23","0","4140","0","1","2021-02-25 11:16:01"),
("39","2021-03-09 13:19:54","2021-03-09 13:24:51","0","380","0","1","2021-03-09 15:20:01"),
("40","2021-03-09 13:25:46","2021-03-09 13:26:35","0","0","0","1","2021-03-09 15:25:50"),
("41","2021-03-09 13:27:31","2021-03-09 13:29:46","0","1140","0","1","2021-03-09 15:27:37"),
("42","2021-03-09 13:30:11","2021-03-09 13:31:07","0","380","0","1","2021-03-09 15:30:17"),
("43","2021-03-09 13:31:24","2021-03-09 13:32:33","0","760","0","1","2021-03-09 15:31:26"),
("44","2021-03-11 10:07:44","","0","","1","1","2021-03-11 12:08:15");



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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

INSERT INTO cliente_proceso VALUES("40","64","63","pukd3sviv0hf6ij7kid2jfbben"),
("41","64","64","pukd3sviv0hf6ij7kid2jfbben"),
("42","64","65","pukd3sviv0hf6ij7kid2jfbben"),
("43","65","66","pukd3sviv0hf6ij7kid2jfbben"),
("44","66","67","pukd3sviv0hf6ij7kid2jfbben"),
("45","64","68","pukd3sviv0hf6ij7kid2jfbben"),
("46","65","69","pukd3sviv0hf6ij7kid2jfbben"),
("47","64","70","rg8b7hfs8u91cfnb3o0dvvsg1k"),
("48","67","71","rg8b7hfs8u91cfnb3o0dvvsg1k"),
("49","67","72","rg8b7hfs8u91cfnb3o0dvvsg1k"),
("50","68","73","mfqu17iqbn4o0iaokh22qch9su"),
("51","68","74","mfqu17iqbn4o0iaokh22qch9su"),
("52","68","75","mfqu17iqbn4o0iaokh22qch9su"),
("53","68","76","mfqu17iqbn4o0iaokh22qch9su"),
("54","68","77","mfqu17iqbn4o0iaokh22qch9su"),
("55","68","78","mfqu17iqbn4o0iaokh22qch9su"),
("56","68","79","mfqu17iqbn4o0iaokh22qch9su"),
("57","68","80","mfqu17iqbn4o0iaokh22qch9su"),
("58","68","81","mfqu17iqbn4o0iaokh22qch9su"),
("59","68","82","mfqu17iqbn4o0iaokh22qch9su"),
("60","68","83","mfqu17iqbn4o0iaokh22qch9su"),
("61","68","84","mfqu17iqbn4o0iaokh22qch9su"),
("62","68","85","mfqu17iqbn4o0iaokh22qch9su"),
("63","68","86","mfqu17iqbn4o0iaokh22qch9su"),
("64","68","87","3bjiv4m1bpp963mn21qt8vhqs0"),
("65","68","88","3bjiv4m1bpp963mn21qt8vhqs0"),
("66","68","89","3bjiv4m1bpp963mn21qt8vhqs0"),
("67","68","90","3bjiv4m1bpp963mn21qt8vhqs0"),
("68","68","91","3bjiv4m1bpp963mn21qt8vhqs0"),
("69","68","92","3bjiv4m1bpp963mn21qt8vhqs0"),
("70","68","93","3bjiv4m1bpp963mn21qt8vhqs0"),
("71","68","94","3bjiv4m1bpp963mn21qt8vhqs0"),
("72","68","95","3bjiv4m1bpp963mn21qt8vhqs0"),
("73","68","96","3bjiv4m1bpp963mn21qt8vhqs0"),
("74","68","97","3bjiv4m1bpp963mn21qt8vhqs0"),
("75","68","98","3bjiv4m1bpp963mn21qt8vhqs0"),
("76","68","99","3bjiv4m1bpp963mn21qt8vhqs0"),
("77","68","100","3bjiv4m1bpp963mn21qt8vhqs0"),
("78","68","101","4bdmse4n0vagbpvr9d18fs9dfg"),
("79","68","102","m7p4nf3apher4u8mut3l5tlstu"),
("80","68","103","m7p4nf3apher4u8mut3l5tlstu"),
("81","68","104","m7p4nf3apher4u8mut3l5tlstu"),
("82","68","105","m7p4nf3apher4u8mut3l5tlstu"),
("83","68","106","indkego6finoru00pj111p1gg4"),
("84","68","107","indkego6finoru00pj111p1gg4"),
("85","68","108","indkego6finoru00pj111p1gg4"),
("86","68","109","indkego6finoru00pj111p1gg4"),
("87","68","110","indkego6finoru00pj111p1gg4"),
("88","68","111","indkego6finoru00pj111p1gg4"),
("89","68","112","indkego6finoru00pj111p1gg4"),
("90","68","113","indkego6finoru00pj111p1gg4"),
("91","68","114","indkego6finoru00pj111p1gg4"),
("92","68","115","indkego6finoru00pj111p1gg4"),
("93","68","116","indkego6finoru00pj111p1gg4"),
("94","68","117","indkego6finoru00pj111p1gg4"),
("95","68","118","indkego6finoru00pj111p1gg4"),
("96","68","119","indkego6finoru00pj111p1gg4"),
("97","68","120","indkego6finoru00pj111p1gg4"),
("98","68","121","indkego6finoru00pj111p1gg4"),
("99","68","122","363jvhi9mnsda4254qd82e5puv"),
("100","68","123","363jvhi9mnsda4254qd82e5puv"),
("101","68","124","brifj2k3rq6ejpnm25hj69931m"),
("102","68","125","brifj2k3rq6ejpnm25hj69931m"),
("103","68","0","brifj2k3rq6ejpnm25hj69931m"),
("104","68","126","brifj2k3rq6ejpnm25hj69931m"),
("105","68","127","brifj2k3rq6ejpnm25hj69931m"),
("106","68","128","brifj2k3rq6ejpnm25hj69931m"),
("107","68","129","brifj2k3rq6ejpnm25hj69931m"),
("108","68","130","brifj2k3rq6ejpnm25hj69931m"),
("109","68","131","brifj2k3rq6ejpnm25hj69931m"),
("110","68","132","brifj2k3rq6ejpnm25hj69931m"),
("111","68","133","brifj2k3rq6ejpnm25hj69931m"),
("112","68","134","brifj2k3rq6ejpnm25hj69931m"),
("113","68","135","brifj2k3rq6ejpnm25hj69931m"),
("114","68","136","brifj2k3rq6ejpnm25hj69931m"),
("115","68","137","brifj2k3rq6ejpnm25hj69931m"),
("116","68","138","brifj2k3rq6ejpnm25hj69931m"),
("117","68","139","brifj2k3rq6ejpnm25hj69931m"),
("118","68","140","brifj2k3rq6ejpnm25hj69931m"),
("119","68","141","brifj2k3rq6ejpnm25hj69931m"),
("120","68","142","ad1ckmgnumjid9shjqctl5drut"),
("121","68","143","ad1ckmgnumjid9shjqctl5drut"),
("122","68","144","ad1ckmgnumjid9shjqctl5drut"),
("123","68","145","ad1ckmgnumjid9shjqctl5drut");



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO gasto VALUES("1","CANCELACION HABITACION 101","200","1","2020-11-02","15:24:14","1","2020-11-02 17:24:27","1"),
("2","CANCELACION HABITACION 201","120","1","2020-11-02","15:24:52","1","2020-11-02 17:25:07","2");



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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

INSERT INTO habitacion VALUES("6","101","Con cama de 2 plazas, una TV, Cable","0","1","1","1","2019-02-26 11:42:02"),
("7","102","Con cama de 2 plazas, una TV, Cable","0","2","1","1","2019-02-26 11:42:16"),
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
("35","504","Con cama de 2 plazas, una TV, Cable, Yacuzi","0","6","1","1","2020-06-16 17:31:15"),
("36","HABITACION PREMIUM","3 DORMITORIOS,COCINA,TV","0","4","1","1","2020-11-13 18:34:50");



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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

INSERT INTO persona VALUES("52","2","71895719","","NELSON FRANCISCO YCHPAS SULLCA","1996-12-12","","Jr Lobato NRO 230","2019-03-01 09:38:51","1","0","0","7","Peruana","SOLTERO","Estudiante","Bus","Lima","Trusimo","",""),
("64","1","35672092","","Hugo Flores","","","","2020-06-15 19:44:27","1","0","0","7","NULL","NULL","1","NULL","NULL","NULL","536895",""),
("65","1","123456","","Jorge Gervacio","","","","2020-06-16 19:34:08","1","0","0","7","NULL","NULL","1","NULL","NULL","NULL","23025698569",""),
("66","1","54321","","chapu martinez","","","chubut","2020-06-16 19:36:26","1","0","0","7","NULL","NULL","1","","","NULL","36528965",""),
("67","1","20589685","","mariana sosa","","","","2020-10-30 13:58:20","1","0","0","7","NULL","NULL","1","","","NULL","565664554",""),
("68","1","999","","cliente habitual","","","","2020-10-30 14:28:29","1","0","0","7","NULL","NULL","1","","","NULL","null","");



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
  `carga_salida_tarde` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

INSERT INTO proceso VALUES("92","6","17","68","380","1","0","1","2020-11-03 17:59:09","2020-11-04 12:00:00","0","1","1","5","1","2020-11-03 17:59:09","1","","1","",""),
("93","6","17","68","380","1","0","1","2020-11-03 18:01:18","2020-11-04 12:00:00","0","1","1","6","1","2020-11-03 18:01:18","1","","1","",""),
("94","6","17","68","380","1","0","1","2020-11-03 18:03:14","2020-11-04 12:00:00","0","1","1","11","1","2020-11-03 18:03:14","1","","1","",""),
("95","6","17","68","380","1","0","1","2020-11-03 18:18:20","2020-11-04 12:00:00","0","1","1","10","1","2020-11-03 18:18:20","1","","1","",""),
("96","6","17","68","380","1","0","1","2020-11-03 18:19:49","2020-11-04 12:00:00","0","1","1","11","1","2020-11-03 18:19:49","1","","1","",""),
("97","6","17","68","380","1","0","1","2020-11-03 18:32:49","2020-11-04 12:00:00","0","1","1","13","1","2020-11-03 18:32:49","1","","1","",""),
("98","6","17","68","380","1","0","1","2020-11-03 18:36:36","2020-11-04 12:00:00","0","1","1","15","1","2020-11-03 18:36:36","1","","1","",""),
("99","6","17","68","380","1","0","1","2020-11-03 18:42:08","2020-11-04 12:00:00","0","1","1","17","1","2020-11-03 18:42:08","1","","1","",""),
("100","19","36","68","580","1","0","1","2020-11-03 18:43:28","2020-11-04 12:00:00","0","1","1","17","1","2020-11-03 18:43:28","1","","1","",""),
("101","36","57","68","580","1","0","1","2020-11-13 18:35:45","2020-11-14 12:00:00","0","1","1","17","1","2020-11-13 18:35:45","1","","1","",""),
("102","5","17","68","380","1","0","1","2020-12-02 18:44:20","2020-12-11 12:00:00","0","1","1","17","0","2020-12-10 18:44:20","1","","1","",""),
("103","6","17","68","380","1","0","1","2020-10-09 19:09:19","2020-12-11 12:00:00","200","1","1","17","1","2020-12-10 19:09:19","1","","1","",""),
("104","7","24","68","580","1","0","1","2020-12-08 19:29:19","2020-12-11 12:00:00","40020","1","1","17","1","2020-12-10 19:29:19","1","","0","",""),
("105","8","23","68","580","1","0","1","2020-12-07 19:30:10","2020-12-11 12:00:00","0","1","1","17","1","2020-12-10 19:30:10","1","","1","",""),
("106","7","24","68","580","70","0","1","2020-12-08 19:29:19","2020-12-11 12:00:00","40020","1","1","17","1","2020-12-10 19:29:19","1","","1","",""),
("107","7","24","68","580","1","580","1","2021-02-17 19:58:46","2021-02-18 12:00:00","0","1","1","17","1","2021-02-17 19:58:46","1","","1","",""),
("108","11","27","68","580","0","1160","1","2021-02-17 20:05:20","2021-02-19 12:00:00","0","1","2","17","1","2021-02-17 20:05:20","2","","1","",""),
("109","20","37","68","380","1","380","1","2021-02-18 10:05:56","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:05:56","1","","1","",""),
("110","20","37","68","380","1","380","1","2021-02-18 10:06:58","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:06:58","1","","1","",""),
("111","21","38","68","380","1","380","1","2021-02-18 10:08:41","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:08:41","1","","1","",""),
("112","22","39","68","700","1","700","1","2021-02-18 10:09:58","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:09:58","1","","1","",""),
("113","23","40","68","380","1","380","1","2021-02-18 10:10:48","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:10:48","1","","1","",""),
("114","17","34","68","580","24","580","1","2021-01-25 10:15:20","2021-02-19 12:00:00","13340","1","1","17","1","2021-02-18 10:15:20","1","","1","",""),
("115","6","17","68","380","5","380","1","2021-02-13 10:38:11","2021-02-19 12:00:00","1520","1","1","17","1","2021-02-18 10:38:11","1","","1","",""),
("116","7","24","68","580","3","580","1","2021-02-15 10:40:11","2021-02-19 12:00:00","1160","1","1","17","1","2021-02-18 10:40:11","1","","1","",""),
("117","8","23","68","580","4","580","1","2021-02-14 10:45:00","2021-02-19 12:00:00","1740","1","1","17","1","2021-02-18 10:45:00","1","","1","",""),
("118","6","17","68","380","5","380","1","2021-02-13 10:50:27","2021-02-19 12:00:00","1900","1","1","17","1","2021-02-18 10:50:27","1","","1","",""),
("119","6","17","68","380","1","0","1","2021-02-18 10:53:52","2021-02-19 12:00:00","0","1","1","17","1","2021-02-18 10:53:52","1","","1","",""),
("120","6","17","68","380","1","380","1","2021-02-18 11:12:23","2021-02-19 12:00:00","580","1","1","17","1","2021-02-18 11:12:23","1","","1","",""),
("121","6","17","68","380","1","380","1","2021-02-18 11:37:19","2021-02-19 12:00:00","0","1","1","19","1","2021-02-18 11:37:19","1","","1","","200.00"),
("122","6","17","68","380","1","0","1","2021-02-19 18:26:58","2021-02-23 12:00:00","380","1","1","19","1","2021-02-22 18:26:58","1","","1","","760.00"),
("123","6","18","68","580","2","0","1","2021-02-22 18:32:38","2021-02-23 12:00:00","1160","1","1","19","1","2021-02-22 18:32:38","1","","1","","580.00"),
("124","6","17","68","380","2","380","1","2021-02-22 19:03:04","2021-02-25 12:00:00","380","1","1","21","1","2021-02-24 19:03:04","1","","1","","380.00"),
("125","6","17","68","380","1","380","1","2021-02-24 19:16:38","2021-02-25 12:00:00","0","1","1","","1","2021-02-24 19:16:38","1","","1","","0.00"),
("126","6","17","68","0","0","0","1","2021-02-24 19:24:32","2021-02-25 12:00:00","0","1","1","23","1","2021-02-24 19:24:32","1","","1","","0.00"),
("127","6","17","68","380","2","380","1","2021-02-22 19:26:24","2021-02-25 12:00:00","760","1","1","24","1","2021-02-24 19:26:24","1","","1","","380.00"),
("128","6","17","68","380","2","0","1","2021-02-22 19:29:58","2021-02-25 12:00:00","380","1","1","26","1","2021-02-24 19:29:58","1","","1","","380.00"),
("129","6","17","68","380","2","0","1","2021-02-22 19:36:12","2021-02-25 12:00:00","760","1","1","27","1","2021-02-24 19:36:12","1","","1","","380.00"),
("130","6","17","68","380","2","380","1","2021-02-22 19:43:52","2021-02-25 12:00:00","380","1","1","29","1","2021-02-24 19:43:52","1","","1","","380.00"),
("131","6","17","68","380","1","0","1","2021-02-24 19:45:53","2021-02-25 12:00:00","380","1","1","29","1","2021-02-24 19:45:53","1","","1","","0.00"),
("132","6","17","68","380","1","380","1","2021-02-21 20:01:54","2021-02-25 12:00:00","1140","1","1","29","1","2021-02-24 20:01:54","1","","1","","760.00"),
("133","6","17","68","380","1","380","1","2021-02-22 20:04:14","2021-02-25 12:00:00","760","1","1","30","1","2021-02-24 20:04:14","1","","1","","380.00"),
("134","6","17","68","380","1","380","1","2021-02-25 10:11:36","2021-02-26 12:00:00","380","1","1","30","1","2021-02-25 10:11:36","1","","1","","0.00"),
("135","6","17","68","380","1","0","1","2021-02-25 10:16:43","2021-02-26 12:00:00","380","1","1","30","1","2021-02-25 10:16:43","1","","1","","0.00"),
("136","6","17","68","380","1","0","1","2021-02-25 10:17:21","2021-02-26 12:00:00","380","1","1","30","1","2021-02-25 10:17:21","1","","1","","0.00"),
("137","6","17","68","380","1","380","1","2021-02-22 10:25:51","2021-02-26 12:00:00","1140","1","1","30","1","2021-02-25 10:25:51","1","","1","","760.00"),
("138","6","17","68","380","1","380","1","2021-02-25 10:31:32","2021-02-26 12:00:00","500","1","1","32","1","2021-02-25 10:31:32","1","","1","","500.00"),
("139","6","17","68","380","1","0","2","2021-02-25 10:58:41","2021-02-26 12:00:00","380","1","1","37","1","2021-02-25 10:58:41","1","","1","","0.00"),
("140","6","17","68","380","1","380","1","2021-02-25 11:18:50","2021-02-26 12:00:00","3380","1","1","38","1","2021-02-25 11:18:50","1","","1","","3000.00"),
("141","6","17","68","380","1","0","1","2021-02-23 11:30:44","2021-02-26 12:00:00","760","1","1","38","1","2021-02-25 11:30:44","1","","1","","380.00"),
("142","6","17","68","380","1","0","1","2021-03-09 15:21:36","2021-03-10 12:00:00","380","1","1","39","1","2021-03-09 15:21:36","1","","1","","0.00"),
("143","6","17","68","380","1","0","1","2021-03-07 15:27:53","2021-03-10 12:00:00","1140","1","1","41","1","2021-03-09 15:27:53","1","","1","","760.00"),
("144","6","17","68","380","1","380","1","2021-03-07 15:30:33","2021-03-10 12:00:00","760","1","1","43","1","2021-03-09 15:30:33","1","","1","","760.00"),
("145","6","17","68","380","1","380","1","2021-03-11 12:10:29","2021-03-12 12:00:00","380","1","1","44","1","2021-03-11 12:10:29","1","","1","","0.00");



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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO proceso_venta VALUES("3","3","64","3","1","3","1","2020-06-15 17:46:20","","1"),
("4","3","67","4","5","3","1","2020-06-16 17:44:13","","1"),
("5","3","66","5","3","3","1","2020-06-17 08:59:33","","1"),
("6","3","75","6","1","3","1","2020-10-30 12:37:13","1","1"),
("7","3","","7","20","3","2","2020-10-30 14:44:45","1","1"),
("8","3","76","8","1","3","1","2020-10-30 14:47:08","1","1"),
("9","3","97","9","1","3","1","2020-11-03 16:37:22","10","1"),
("10","3","96","10","1","3","1","2020-11-03 16:35:34","10","1"),
("11","3","97","11","1","3","1","2020-11-03 16:37:22","13","1"),
("12","3","98","12","1","3","1","2020-11-03 16:42:42","15","1"),
("13","3","100","13","1","3","1","2020-11-03 18:43:48","16","1"),
("14","3","101","14","1","3","1","2020-11-13 16:36:31","17","1"),
("15","3","105","15","1","3","1","2021-02-17 15:13:48","17","1"),
("16","3","104","16","2","3","1","2021-02-17 16:37:27","17","1"),
("17","3","106","17","1","3","1","2021-02-17 19:19:37","17","1"),
("18","3","106","18","3","3","1","2021-02-17 17:39:28","17","1"),
("19","3","108","19","1","3","1","2021-02-17 20:05:46","17","1"),
("20","3","110","20","1","3","1","2021-02-18 10:07:11","17","1"),
("21","3","111","21","1","3","1","2021-02-18 08:09:14","17","1"),
("22","3","112","22","1","3","1","2021-02-18 08:10:26","17","1"),
("23","3","113","23","1","3","1","2021-02-18 10:11:21","17","1"),
("24","3","116","24","1","3","1","2021-02-18 10:40:39","17","1"),
("25","3","","25","10000","3","2","2021-02-18 10:46:11","17","1"),
("26","3","117","26","10","3","1","2021-02-18 08:46:47","17","1"),
("27","3","118","27","1","3","1","2021-02-18 08:51:12","17","1"),
("28","3","124","28","1","3","1","2021-02-24 17:05:16","21","1"),
("29","3","145","29","1","3","1","2021-03-11 10:11:30","44","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO tarifa VALUES("1","24 Horas","300.00"),
("4","12 horas","150.00"),
("7","Doble","580.00"),
("8","Personal","380.00"),
("9","Triple","700.00"),
("10","Cuadruple","800.00"),
("11","Quintuple","900.00"),
("12","tari1","200.00"),
("13","tari2","300.00"),
("14","tari3","222.00"),
("15","tari4","33.00"),
("16","tari5","22.00"),
("17","tari6","23.00"),
("18","tari7","34.00"),
("19","tari8","11.00"),
("20","tari9","11.00"),
("21","tari10","77.00");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","Administrador","admin","admin","admin@gmail.com","e3f83ed23d18a34fc770626571753fabf1c54b5e","","1","1","2016-12-13 09:08:03","0"),
("2","nelson","1","nelson","nelson01221@gmail.com","adcd7048512e64b48da55b027577886ee5a36350","","1","0","2019-02-26 01:23:42","0"),
("3","adilson","endara","adilson","adilson@gmail.com","9514d75abb32f5bfea2f02645373f2d8912947b2","","1","0","2021-03-11 12:16:23","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO venta VALUES("3","1","","","1","1","3","1","","2020-06-15 19:46:14"),
("4","1","","","1","1","15","1","","2020-06-16 19:43:30"),
("5","1","","","1","1","9","1","","2020-06-17 10:40:14"),
("6","1","","","1","1","3","1","1","2020-10-30 14:37:06"),
("7","1","NULL","","1","2","60","1","1","2020-10-30 14:44:45"),
("8","1","","","1","1","3","1","1","2020-10-30 14:47:08"),
("9","1","","","1","1","3","1","10","2020-11-03 18:33:59"),
("10","1","","","1","1","3","1","10","2020-11-03 18:34:52"),
("11","1","","","1","1","3","1","12","2020-11-03 18:36:56"),
("12","1","","","1","1","3","1","14","2020-11-03 18:42:27"),
("13","1","","","1","1","3","1","16","2020-11-03 18:43:48"),
("14","1","","","1","1","3","1","17","2020-11-13 18:36:20"),
("15","1","","","1","1","3","1","17","2020-12-11 19:38:44"),
("16","1","","","1","1","6","1","17","2021-02-17 17:16:01"),
("17","1","","","1","1","3","1","17","2021-02-17 19:19:37"),
("18","1","","","1","1","9","1","17","2021-02-17 19:20:12"),
("19","1","","","1","1","3","1","17","2021-02-17 20:05:46"),
("20","1","","","1","1","3","1","17","2021-02-18 10:07:11"),
("21","1","","","1","1","3","1","17","2021-02-18 10:09:10"),
("22","1","","","1","1","3","1","17","2021-02-18 10:10:21"),
("23","1","","","1","1","3","1","17","2021-02-18 10:11:21"),
("24","1","","","1","1","3","1","17","2021-02-18 10:40:39"),
("25","1","NULL","","1","2","30000","1","17","2021-02-18 10:46:11"),
("26","1","","","1","1","30","1","17","2021-02-18 10:46:43"),
("27","1","","","1","1","3","1","17","2021-02-18 10:51:06"),
("28","1","","","1","1","3","1","20","2021-02-24 19:03:45"),
("29","1","","","1","1","3","1","44","2021-03-11 12:11:23");



