-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-01-2022 a las 13:27:41
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel_colonial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

DROP TABLE IF EXISTS `caja`;
CREATE TABLE IF NOT EXISTS `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_apertura` datetime DEFAULT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `monto_apertura` double DEFAULT NULL,
  `monto_cierre` double DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagen`, `fecha_creada`) VALUES
(1, 'Personal', 'conference.jpg', '2018-02-15 09:14:21'),
(2, 'Doble', NULL, '2019-02-26 11:39:02'),
(3, 'Triple', NULL, '2019-02-26 11:39:08'),
(4, 'Cuatruple', NULL, '2019-02-26 11:40:17'),
(5, 'Especial', NULL, '2019-02-26 11:40:26'),
(6, 'Especial Doble', NULL, '2020-06-16 17:32:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_proceso`
--

DROP TABLE IF EXISTS `cliente_proceso`;
CREATE TABLE IF NOT EXISTS `cliente_proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `sesion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE IF NOT EXISTS `configuracion` (
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

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `direccion`, `estado`, `telefono`, `fax`, `rnc`, `registro_empresarial`, `ciudad`, `logo`, `iva`) VALUES
(1, 'HOTEL COLONIAL', 'Antonio Vaca Diez', 'Bolivia', '+591 3 4622864', 'NULL', '20356720920', 'NULL', 'Trinidad', 'logo-colonial.jpg', 0.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(12) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasto`
--

DROP TABLE IF EXISTS `gasto`;
CREATE TABLE IF NOT EXISTS `gasto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `destinatario` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
CREATE TABLE IF NOT EXISTS `habitacion` (
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

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `estado`, `capacidad`, `fecha_creada`) VALUES
(6, '101', 'Con cama de 2 plazas, una TV, Cabless', 0, 1, 3, 1, '2019-02-26 11:42:02'),
(7, '102', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 3, 1, '2019-02-26 11:42:16'),
(8, '201', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 2, 1, '2019-02-26 11:42:30'),
(9, '202', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 2, 1, '2019-02-26 11:43:02'),
(10, '203', 'Con cama de 2 plazas, una TV, Cable', 0, 3, 2, 1, '2019-02-26 11:43:45'),
(11, '204', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 2, 1, '2019-02-26 11:43:55'),
(12, '205', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 2, 1, '2019-02-26 11:44:14'),
(13, '206', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 3, 1, '2019-02-26 11:44:25'),
(14, '207', 'Con cama de 2 plazas, una TV, Cable', 0, 5, 3, 1, '2019-02-26 11:44:41'),
(15, '208', 'Con una cama', 0, 1, 1, 1, '2019-02-26 11:44:58'),
(16, '301', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:45:21'),
(17, '302', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:45:34'),
(18, '303', 'Con cama de 2 plazas, una TV, Cable', 0, 3, 1, 1, '2019-02-26 11:45:43'),
(19, '304', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:45:56'),
(20, '305', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 1, 1, '2019-02-26 11:46:12'),
(21, '306', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 1, 1, '2019-02-26 11:46:31'),
(22, '307', 'especial king size', 0, 5, 1, 1, '2019-02-26 11:46:45'),
(23, '308', 'Una cama', 0, 1, 1, 1, '2019-02-26 11:46:59'),
(24, '401', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:47:12'),
(25, '402', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:47:28'),
(26, '403', 'Con cama de 2 plazas, una TV, Cable', 0, 3, 1, 1, '2019-02-26 11:47:56'),
(27, '404', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:48:06'),
(28, '405', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 1, 1, '2019-02-26 11:48:20'),
(29, '406', 'Con cama de 2 plazas, una TV, Cable', 0, 1, 1, 1, '2019-02-26 11:48:27'),
(30, '407', 'Con cama de 2 plazas, una TV, Cable', 0, 5, 1, 1, '2019-02-26 11:48:39'),
(31, '408', 'Una cama', 0, 1, 1, 1, '2019-02-26 11:48:54'),
(32, '501', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:49:05'),
(33, '502', 'Con cama de 2 plazas, una TV, Cable', 0, 2, 1, 1, '2019-02-26 11:49:14'),
(34, '503', 'Con cama de 2 plazas, una TV, Cable', 0, 3, 1, 1, '2019-02-26 11:49:30'),
(35, '504', 'Con cama de 2 plazas, una TV, Cable, Yacuzi', 0, 6, 1, 1, '2020-06-16 17:31:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `observacion` text,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `tipo_documento`, `documento`, `giro`, `nombre`, `fecha_nac`, `razon_social`, `direccion`, `fecha_creada`, `tipo`, `vip`, `contador`, `limite`, `nacionalidad`, `estado_civil`, `ocupacion`, `medio_transporte`, `destino`, `motivo`, `telefono`, `celular`) VALUES
(68, 1, '999', '', 'cliente habitual', NULL, NULL, '', '2020-10-30 14:28:29', 1, 0, 0, 7, 'NULL', 'NULL', '1', '', '', 'NULL', 'null', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

DROP TABLE IF EXISTS `proceso`;
CREATE TABLE IF NOT EXISTS `proceso` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_sueldo`
--

DROP TABLE IF EXISTS `proceso_sueldo`;
CREATE TABLE IF NOT EXISTS `proceso_sueldo` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso_venta`
--

DROP TABLE IF EXISTS `proceso_venta`;
CREATE TABLE IF NOT EXISTS `proceso_venta` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL,
  `name` text,
  `capacity` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sueldo`
--

DROP TABLE IF EXISTS `sueldo`;
CREATE TABLE IF NOT EXISTS `sueldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `dia_pago` int(11) NOT NULL DEFAULT '1',
  `fecha_comienzo` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
CREATE TABLE IF NOT EXISTS `tarifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`id`, `nombre`, `precio`) VALUES
(1, '24 Horas', 300.00),
(4, '12 horas', 150.00),
(7, 'Doble', 600.00),
(8, 'Personal', 400.00),
(9, 'Triple', 700.00),
(10, 'Cuadruple', 800.00),
(11, 'Quintuple', 900.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa_habitacion`
--

DROP TABLE IF EXISTS `tarifa_habitacion`;
CREATE TABLE IF NOT EXISTS `tarifa_habitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tarifa` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarifa_habitacion`
--

INSERT INTO `tarifa_habitacion` (`id`, `id_tarifa`, `id_habitacion`, `precio`) VALUES
(17, 8, 6, 330),
(18, 7, 6, 580),
(19, 9, 6, 700),
(20, 10, 6, 800),
(23, 7, 8, 580),
(24, 7, 7, 580),
(25, 7, 9, 580),
(26, 9, 10, 700),
(27, 7, 11, 580),
(28, 8, 12, 380),
(29, 8, 13, 380),
(30, 8, 14, 500),
(31, 7, 14, 600),
(32, 8, 15, 380),
(33, 7, 16, 580),
(34, 7, 17, 580),
(35, 9, 18, 700),
(36, 7, 19, 580),
(37, 8, 20, 380),
(38, 8, 21, 380),
(39, 9, 22, 700),
(40, 8, 23, 380),
(41, 7, 24, 580),
(42, 7, 25, 580),
(43, 9, 26, 700),
(44, 7, 27, 580),
(45, 8, 28, 380),
(46, 8, 29, 380),
(47, 9, 30, 700),
(48, 8, 31, 380),
(49, 7, 32, 580),
(50, 7, 33, 580),
(51, 8, 34, 380),
(52, 7, 35, 400),
(54, 11, 6, 900),
(55, 1, 36, 300),
(56, 4, 36, 150),
(57, 7, 36, 580);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

DROP TABLE IF EXISTS `tipo_comprobante`;
CREATE TABLE IF NOT EXISTS `tipo_comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_comprobante`
--

INSERT INTO `tipo_comprobante` (`id`, `nombre`, `estado`) VALUES
(1, 'TICKET', 1),
(2, 'BOLETA', 1),
(3, 'FACTURA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `nombre`, `fecha_creada`) VALUES
(1, 'PASAPORTE', '2018-02-15 08:23:24'),
(2, 'C.I.', '2018-02-15 09:24:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
CREATE TABLE IF NOT EXISTS `tipo_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_creada` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id`, `nombre`, `fecha_creada`) VALUES
(1, 'EFECTIVO', '2018-02-15 09:25:24'),
(2, 'TARJETA DE DEBITO / CREDITO', '2018-02-15 09:25:24'),
(3, 'DEPOSITO', '2018-08-22 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

DROP TABLE IF EXISTS `tmp`;
CREATE TABLE IF NOT EXISTS `tmp` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad_tmp` int(11) DEFAULT NULL,
  `precio_tmp` double DEFAULT NULL,
  `sessionn_id` varchar(255) DEFAULT NULL,
  `tipo_operacion` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tmp`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `sessionn_id`, `tipo_operacion`) VALUES
(4, 3, 3, 3, 'ad1ckmgnumjid9shjqctl5drut', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
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

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `email`, `password`, `image`, `is_active`, `is_admin`, `created_at`, `pago`) VALUES
(1, 'Administrador', 'admin', 'admin', 'admin@gmail.com', 'e3f83ed23d18a34fc770626571753fabf1c54b5e', NULL, 1, 1, '2016-12-13 09:08:03', 0),
(3, 'adilson', 'endara', 'adilson', 'adilson@gmail.com', '9514d75abb32f5bfea2f02645373f2d8912947b2', NULL, 1, 0, '2021-03-11 12:16:23', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
