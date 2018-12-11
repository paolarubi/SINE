-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2018 a las 05:49:50
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `negocio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptocrecimientodemanda`
--

CREATE TABLE IF NOT EXISTS `conceptocrecimientodemanda` (
  `idccd` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `crecimientoInicial` double NOT NULL,
  PRIMARY KEY (`idccd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `conceptocrecimientodemanda`
--

INSERT INTO `conceptocrecimientodemanda` (`idccd`, `concepto`, `crecimientoInicial`) VALUES
(1, 'hola', 12),
(2, 'holii', 13),
(3, 'aaaa', 12.12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costostotalesanuales`
--

CREATE TABLE IF NOT EXISTS `costostotalesanuales` (
  `idcostosTotalesAnuales` int(11) NOT NULL AUTO_INCREMENT,
  `anio` double NOT NULL,
  `tiposGastos_idtiposGastos` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idcostosTotalesAnuales`,`tiposGastos_idtiposGastos`,`datos_empresa_id_empresa`),
  KEY `fk_costosTotalesAnuales_tiposGastos1_idx` (`tiposGastos_idtiposGastos`),
  KEY `fk_costosTotalesAnuales_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `costostotalesanuales`
--

INSERT INTO `costostotalesanuales` (`idcostosTotalesAnuales`, `anio`, `tiposGastos_idtiposGastos`, `datos_empresa_id_empresa`) VALUES
(1, 1892, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crecimientodemanda`
--

CREATE TABLE IF NOT EXISTS `crecimientodemanda` (
  `idcrecimientoDemanda` int(11) NOT NULL AUTO_INCREMENT,
  `anio` int(11) NOT NULL,
  `crecimiento` double NOT NULL,
  `conceptoCrecimientoDemanda_idccd` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idcrecimientoDemanda`,`conceptoCrecimientoDemanda_idccd`,`datos_empresa_id_empresa`),
  KEY `fk_crecimientoDemanda_conceptoCrecimientoDemanda1_idx` (`conceptoCrecimientoDemanda_idccd`),
  KEY `fk_crecimientoDemanda_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `crecimientodemanda`
--

INSERT INTO `crecimientodemanda` (`idcrecimientoDemanda`, `anio`, `crecimiento`, `conceptoCrecimientoDemanda_idccd`, `datos_empresa_id_empresa`) VALUES
(1, 1999, 12.23, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE IF NOT EXISTS `datos_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int(11) NOT NULL,
  `nombre_empresa` varchar(85) NOT NULL,
  `dias_produccion` int(11) NOT NULL,
  `numero_servicios` int(11) NOT NULL,
  `no_socios` int(11) NOT NULL,
  `denominacion_social` varchar(105) NOT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `sitio_web` varchar(85) DEFAULT NULL,
  `email` varchar(85) DEFAULT NULL,
  `calle_domicilio` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(6) DEFAULT NULL,
  `ciudad_empresa` varchar(90) DEFAULT NULL,
  `estado_empresa` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`,`usuario_idusuario`),
  KEY `fk_datos_empresa_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `datos_empresa`
--

INSERT INTO `datos_empresa` (`id_empresa`, `usuario_idusuario`, `nombre_empresa`, `dias_produccion`, `numero_servicios`, `no_socios`, `denominacion_social`, `rfc`, `telefono`, `sitio_web`, `email`, `calle_domicilio`, `codigo_postal`, `ciudad_empresa`, `estado_empresa`) VALUES
(1, 1, 'construmaterial', 1, 1, 12, 'nose', '12344', '233445', 'nsajcd', 'dsjhukads', 'dfsfds', '29384', 'nose', 'mexico'),
(2, 1, 'RobusA', 1234, 234, 333, 'Constructora', '12344', '233445', 'mmm@wee.com', 'mmm@wee.com', 'dfsfds', '293849', 'mexico', 'df');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion_crecimiento_anual`
--

CREATE TABLE IF NOT EXISTS `estimacion_crecimiento_anual` (
  `producto_servicio_id_producto` int(11) NOT NULL,
  `numero_anio` int(11) NOT NULL,
  `estimacion` double DEFAULT NULL,
  PRIMARY KEY (`producto_servicio_id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion_servicios`
--

CREATE TABLE IF NOT EXISTS `estimacion_servicios` (
  `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_produccion` varchar(45) NOT NULL,
  `total_suscripciones` int(11) NOT NULL,
  `total_mensual` double NOT NULL,
  `producto_servicio_id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_suscripcion`,`producto_servicio_id_producto`),
  KEY `fk_suscripciones_producto-servicio_idx` (`producto_servicio_id_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `estimacion_servicios`
--

INSERT INTO `estimacion_servicios` (`id_suscripcion`, `unidad_produccion`, `total_suscripciones`, `total_mensual`, `producto_servicio_id_producto`) VALUES
(3, '3', 3, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE IF NOT EXISTS `gastos` (
  `idgastos` int(11) NOT NULL AUTO_INCREMENT,
  `conceptoGastos` varchar(85) NOT NULL,
  `unidadMedida` varchar(48) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `tiposGastos_idtiposGastos` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idgastos`,`tiposGastos_idtiposGastos`,`datos_empresa_id_empresa`),
  KEY `fk_gastos_tiposGastos1_idx` (`tiposGastos_idtiposGastos`),
  KEY `fk_gastos_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`idgastos`, `conceptoGastos`, `unidadMedida`, `precioUnitario`, `cantidad`, `estimacionMensual`, `estimacionAnual`, `tiposGastos_idtiposGastos`, `datos_empresa_id_empresa`) VALUES
(1, 'materiales', '12 piezas', 12, 10000, 19.23, 20.45, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastosindirectos`
--

CREATE TABLE IF NOT EXISTS `gastosindirectos` (
  `idgastosIndirectos` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idgastosIndirectos`,`id_empresa`),
  KEY `fk_manoObraOperativa_datos_empresa1_idx` (`id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `gastosindirectos`
--

INSERT INTO `gastosindirectos` (`idgastosIndirectos`, `concepto`, `unidadMedida`, `precioUnitario`, `cantidad`, `estimacionMensual`, `estimacionAnual`, `id_empresa`) VALUES
(1, 'paolaaaaaaaaaaaaa', '13', 12.23, 12, 19.23, 20.45, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastosoperativos`
--

CREATE TABLE IF NOT EXISTS `gastosoperativos` (
  `idgastosOperativos` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `idtipoGasto` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idgastosOperativos`,`idtipoGasto`,`datos_empresa_id_empresa`),
  KEY `fk_gastosOperativos_datos_empresa1_idx` (`datos_empresa_id_empresa`),
  KEY `fk_gastosOperativos_tipoGastoOperativo1_idx` (`idtipoGasto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `gastosoperativos`
--

INSERT INTO `gastosoperativos` (`idgastosOperativos`, `concepto`, `idtipoGasto`, `estimacionMensual`, `estimacionAnual`, `datos_empresa_id_empresa`) VALUES
(1, 'aaaaaaaaa', 1, 19.23, 20.45, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversiones`
--

CREATE TABLE IF NOT EXISTS `inversiones` (
  `idinversiones` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `unidad_medida` varchar(85) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double NOT NULL,
  `subtotal_1` double NOT NULL,
  `aportacion_propio` double NOT NULL,
  `aportacion_financiacion` double NOT NULL,
  `subtotal_2` double NOT NULL,
  `tiposInversiones_idtiposInversiones` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  `depreciacion-amortizacion` int(11) NOT NULL,
  PRIMARY KEY (`idinversiones`,`tiposInversiones_idtiposInversiones`,`datos_empresa_id_empresa`),
  KEY `fk_inversiones_tiposInversiones1_idx` (`tiposInversiones_idtiposInversiones`),
  KEY `fk_inversiones_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobra`
--

CREATE TABLE IF NOT EXISTS `manoobra` (
  `idManoObra` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `salario_base` double NOT NULL,
  `total_empleados` int(11) NOT NULL,
  `costo_anual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idManoObra`,`datos_empresa_id_empresa`),
  KEY `fk_manoObra_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobracomisionesventa`
--

CREATE TABLE IF NOT EXISTS `manoobracomisionesventa` (
  `idmanoObraComisionesVenta` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `ventas_mensuales` double NOT NULL,
  `comision` double NOT NULL,
  `total_empleados` int(11) NOT NULL,
  `costo_anual` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idmanoObraComisionesVenta`,`datos_empresa_id_empresa`),
  KEY `fk_manoObraComisionesVenta_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `manoobracomisionesventa`
--

INSERT INTO `manoobracomisionesventa` (`idmanoObraComisionesVenta`, `concepto`, `ventas_mensuales`, `comision`, `total_empleados`, `costo_anual`, `datos_empresa_id_empresa`) VALUES
(1, 'dsgffgh', 12.23, 12.123, 1, 1.1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manoobraoperativa`
--

CREATE TABLE IF NOT EXISTS `manoobraoperativa` (
  `idmanoObraOperativa` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `servicio_id_producto` int(11) NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idmanoObraOperativa`,`servicio_id_producto`,`datos_empresa_id_empresa`),
  KEY `fk_manoObraOperativa_producto-servicio1_idx` (`servicio_id_producto`),
  KEY `fk_manoObraOperativa_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `manoobraoperativa`
--

INSERT INTO `manoobraoperativa` (`idmanoObraOperativa`, `concepto`, `unidadMedida`, `precioUnitario`, `cantidad`, `estimacionMensual`, `estimacionAnual`, `servicio_id_producto`, `datos_empresa_id_empresa`) VALUES
(1, 'sfdfgd24', '3efsd', 13, 2435, 33.45, 243.35, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprimainsumos`
--

CREATE TABLE IF NOT EXISTS `materiaprimainsumos` (
  `idmateriaPrimaInsumos` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  `unidadMedida` varchar(85) NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estimacionMensual` double NOT NULL,
  `estimacionAnual` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idmateriaPrimaInsumos`,`id_empresa`),
  KEY `fk_manoObraOperativa_datos_empresa1_idx` (`id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `materiaprimainsumos`
--

INSERT INTO `materiaprimainsumos` (`idmateriaPrimaInsumos`, `concepto`, `unidadMedida`, `precioUnitario`, `cantidad`, `estimacionMensual`, `estimacionAnual`, `id_empresa`) VALUES
(1, 'madera', 'as', 12.23, 122, 12.23, 20.45, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE IF NOT EXISTS `perfil_usuario` (
  `idperfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(85) NOT NULL,
  `apellido_p_usuario` varchar(85) NOT NULL,
  `apellido_m_usuario` varchar(85) DEFAULT NULL,
  `rfc_usuario` varchar(12) DEFAULT NULL,
  `email_usuario` varchar(85) DEFAULT NULL,
  `telefono_usuario` varchar(15) DEFAULT NULL,
  `domicilio_usuario` varchar(110) DEFAULT NULL,
  `colonia_usuario` varchar(85) DEFAULT NULL,
  `codigo_postal_usuario` varchar(6) DEFAULT NULL,
  `ciudad_usuario` varchar(90) DEFAULT NULL,
  `estado_usuario` varchar(85) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idperfil`),
  KEY `fk_perfil_usuario_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`idperfil`, `nombre_usuario`, `apellido_p_usuario`, `apellido_m_usuario`, `rfc_usuario`, `email_usuario`, `telefono_usuario`, `domicilio_usuario`, `colonia_usuario`, `codigo_postal_usuario`, `ciudad_usuario`, `estado_usuario`, `usuario_idusuario`) VALUES
(1, 'pancho', 'perez', 'fernndez', '123ed', 'sklfheds', '122333333', 'smandsdkf', 'sjdhud', '123455', 'jkhskd', 'djfhsdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_servicio`
--

CREATE TABLE IF NOT EXISTS `producto_servicio` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `producto_nombre` varchar(65) NOT NULL,
  `unidad_produccion` varchar(45) NOT NULL,
  `produccion_mensual` int(11) NOT NULL,
  `costo_unitario` double NOT NULL,
  `margen_utilidad` double NOT NULL,
  `precio_publico` double NOT NULL,
  `datos_empresa_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`datos_empresa_id_empresa`),
  KEY `fk_producto-servicio_datos_empresa1_idx` (`datos_empresa_id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `producto_servicio`
--

INSERT INTO `producto_servicio` (`id_producto`, `producto_nombre`, `unidad_produccion`, `produccion_mensual`, `costo_unitario`, `margen_utilidad`, `precio_publico`, `datos_empresa_id_empresa`) VALUES
(2, 'Paola rubi ', '124', 8, 3.3, 11.5, 2.5, 2),
(3, 'Paola rubi benitez ', '123', 98, 5.5, 2.5, 11.5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipogastooperativo`
--

CREATE TABLE IF NOT EXISTS `tipogastooperativo` (
  `idtipoGasto` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipoGasto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipogastooperativo`
--

INSERT INTO `tipogastooperativo` (`idtipoGasto`, `concepto`) VALUES
(1, 'gastosfull');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposgastos`
--

CREATE TABLE IF NOT EXISTS `tiposgastos` (
  `idtiposGastos` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) NOT NULL,
  PRIMARY KEY (`idtiposGastos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tiposgastos`
--

INSERT INTO `tiposgastos` (`idtiposGastos`, `concepto`) VALUES
(1, 'gasto de material');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposinversiones`
--

CREATE TABLE IF NOT EXISTS `tiposinversiones` (
  `idtiposInversiones` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`idtiposInversiones`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tiposinversiones`
--

INSERT INTO `tiposinversiones` (`idtiposInversiones`, `concepto`) VALUES
(1, 'inversion de materia prima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `idtipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `no_empresas` int(11) NOT NULL,
  PRIMARY KEY (`idtipoUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idtipoUsuario`, `nombre`, `no_empresas`) VALUES
(1, 'paola', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(85) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_access` date NOT NULL,
  `tipoUsuario_idtipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`,`tipoUsuario_idtipoUsuario`,`usuario`),
  KEY `fk_usuario_tipoUsuario1_idx` (`tipoUsuario_idtipoUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `password`, `last_access`, `tipoUsuario_idtipoUsuario`) VALUES
(1, 'pau', 'kkkk', '2018-11-05', 12);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `costostotalesanuales`
--
ALTER TABLE `costostotalesanuales`
  ADD CONSTRAINT `fk_costosTotalesAnuales_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_costosTotalesAnuales_tiposGastos1` FOREIGN KEY (`tiposGastos_idtiposGastos`) REFERENCES `tiposgastos` (`idtiposGastos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `crecimientodemanda`
--
ALTER TABLE `crecimientodemanda`
  ADD CONSTRAINT `fk_crecimientoDemanda_conceptoCrecimientoDemanda1` FOREIGN KEY (`conceptoCrecimientoDemanda_idccd`) REFERENCES `conceptocrecimientodemanda` (`idccd`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_crecimientoDemanda_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD CONSTRAINT `fk_datos_empresa_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estimacion_crecimiento_anual`
--
ALTER TABLE `estimacion_crecimiento_anual`
  ADD CONSTRAINT `fk_estimacion_crecimiento_anual_producto-servicio1` FOREIGN KEY (`producto_servicio_id_producto`) REFERENCES `producto_servicio` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estimacion_servicios`
--
ALTER TABLE `estimacion_servicios`
  ADD CONSTRAINT `fk_suscripciones_producto-servicio` FOREIGN KEY (`producto_servicio_id_producto`) REFERENCES `producto_servicio` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `fk_gastos_datos_empresa1` FOREIGN KEY (`datos_empresa_id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gastos_tiposGastos1` FOREIGN KEY (`tiposGastos_idtiposGastos`) REFERENCES `tiposgastos` (`idtiposGastos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gastosindirectos`
--
ALTER TABLE `gastosindirectos`
  ADD CONSTRAINT `fk_manoObraOperativa_datos_empresa100` FOREIGN KEY (`id_empresa`) REFERENCES `datos_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
