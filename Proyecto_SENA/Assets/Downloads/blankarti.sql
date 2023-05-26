-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2022 a las 16:58:18
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blankarti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `Admi_codigo` int(11) NOT NULL,
  `Admi_identificacion` varchar(20) DEFAULT NULL,
  `Admi_tipoIdentificacion` varchar(15) DEFAULT NULL,
  `Admi_nombre` varchar(50) DEFAULT NULL,
  `Admi_apellido` varchar(50) DEFAULT NULL,
  `Admi_celular` varchar(20) DEFAULT NULL,
  `Admi_direccion` varchar(50) DEFAULT NULL,
  `Usua_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clie_codigo` int(11) NOT NULL,
  `clie_identificacion` varchar(20) DEFAULT NULL,
  `clie_tipoIdentificacion` varchar(15) DEFAULT NULL,
  `clie_nombre` varchar(50) DEFAULT NULL,
  `clie_apellido` varchar(50) DEFAULT NULL,
  `clie_celular` varchar(20) DEFAULT NULL,
  `clie_direccion` varchar(50) DEFAULT NULL,
  `Usua_codigo_fk` int(11) DEFAULT NULL,
  `Clie_celular2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clie_codigo`, `clie_identificacion`, `clie_tipoIdentificacion`, `clie_nombre`, `clie_apellido`, `clie_celular`, `clie_direccion`, `Usua_codigo_fk`, `Clie_celular2`) VALUES
(1, '345815728', 'CC', 'Sarah', 'Palacios', '3014822085', 'Tv. 100a #80A-20', 1, '3203033002'),
(2, '6503803161', 'CC', 'Andres', 'Valencia', '3605671601', 'Carrera 24 #62 - 50', 2, '3438259593'),
(3, '2695361466', 'CC', 'Felipe', 'Camargo', '3054038832', 'Cl. 63 #6045', 3, '3126483080'),
(4, '5647241751', 'CC', 'Moises', 'Barreto', '3132195879', 'Ak. 70 #74-52', 4, '3122062645'),
(5, '4883680336', 'CC', 'Bruno', 'Fernandez', '3312111111', 'Av. Boyacá #53-12', 5, '3232233321'),
(6, '7523519357', 'CC', 'Alexis', 'Gonzalez', '3221021303', 'Cra. 75 #23F - 30', 6, '3021023201'),
(7, '9723513260', 'CC', 'Angelina', 'Ferreira', '3555993766', 'Cl. 20 #82 - 52', 7, '3464573799'),
(8, '1056457567', 'CC', 'Irina', 'García', '3848843546', 'Cra. 101 #23-42', 8, '3988398865'),
(9, '7646358956', 'CC', 'Roberto', 'Castaño', '3988577333', 'a 63-89, Cra. 112 #63-51', 9, '3944943476'),
(10, '8772474278', 'CC', 'Rosa Maria', 'Castañeda', '3543878475', 'Cl 64 #112b - 48 #', 10, '3654667868');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `Deve_codigo` int(11) NOT NULL,
  `Deve_subtotal` int(11) DEFAULT NULL,
  `Deve_cantidadPorProducto` int(11) DEFAULT NULL,
  `Vent_codigo_fk` int(11) DEFAULT NULL,
  `Prod_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`Deve_codigo`, `Deve_subtotal`, `Deve_cantidadPorProducto`, `Vent_codigo_fk`, `Prod_codigo_fk`) VALUES
(11, 5990, 20, NULL, 1),
(22, 11990, 12, NULL, 2),
(33, 4990, 6, NULL, 3),
(44, 7990, 6, NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Prod_codigo` int(11) NOT NULL,
  `Prod_nombre` varchar(50) DEFAULT NULL,
  `Prod_precioVenta` int(11) DEFAULT NULL,
  `Prod_cantidadStock` int(11) DEFAULT NULL,
  `Prod_unidadMedida` varchar(50) DEFAULT NULL,
  `Prod_descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Prod_codigo`, `Prod_nombre`, `Prod_precioVenta`, `Prod_cantidadStock`, `Prod_unidadMedida`, `Prod_descripcion`) VALUES
(1, 'Vela', 6000, 20, '1', 'Vela de Cumpleaños'),
(2, 'Muñecos de nieve', 12000, 50, '12', 'Muñeco de Nieve para decorar tu árbol'),
(3, 'Aretes', 5000, 50, '6', 'Lindos aretes para lucir'),
(4, 'Bolas de navidad', 8000, 12, '6', 'Bolas de navidad para decorar tu árbol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Usua_codigo` int(11) NOT NULL,
  `Usua_nombre` varchar(32) NOT NULL,
  `Usua_clave` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Usua_codigo`, `Usua_nombre`, `Usua_clave`) VALUES
(1, 'Sarah', '725926'),
(2, 'Felipe', '6112810'),
(3, 'Andres', '2810611'),
(4, 'Moises', '291911'),
(5, 'Bruno', 'BF12345'),
(6, 'Alexis', 'AG12345'),
(7, 'Angelina', 'AF12345'),
(8, 'Irina', 'IG12345'),
(9, 'Roberto', 'RC12345'),
(10, 'Rosa Maria', 'RM12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Vent_codigo` int(11) NOT NULL,
  `Vent_fecha` date DEFAULT NULL,
  `Vent_total` int(11) DEFAULT NULL,
  `Vent_cantidadTotal` int(11) DEFAULT NULL,
  `Clie_codigo_fk` int(11) DEFAULT NULL,
  `Vend_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Vent_codigo`, `Vent_fecha`, `Vent_total`, `Vent_cantidadTotal`, `Clie_codigo_fk`, `Vend_codigo_fk`) VALUES
(1, '2022-09-26', 50000, 50, 1, NULL),
(2, '2022-05-27', 25000, 12, 2, NULL),
(3, '2022-01-13', 10000, 1, 3, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admi_codigo`),
  ADD KEY `Usua_codigo_fk` (`Usua_codigo_fk`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clie_codigo`),
  ADD KEY `Usua_codigo_fk` (`Usua_codigo_fk`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`Deve_codigo`),
  ADD KEY `Vent_codigo_fk` (`Vent_codigo_fk`),
  ADD KEY `Prod_codigo_fk` (`Prod_codigo_fk`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Prod_codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usua_codigo`),
  ADD UNIQUE KEY `Usua_nombre` (`Usua_nombre`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Vent_codigo`),
  ADD KEY `Clie_codigo_fk` (`Clie_codigo_fk`),
  ADD KEY `Vend_codigo_fk` (`Vend_codigo_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `Admi_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `clie_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2423;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `Deve_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Prod_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Usua_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `Vent_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Usua_codigo_fk`) REFERENCES `usuario` (`Usua_codigo`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Usua_codigo_fk`) REFERENCES `usuario` (`Usua_codigo`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`Vent_codigo_fk`) REFERENCES `venta` (`Vent_codigo`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`Prod_codigo_fk`) REFERENCES `producto` (`Prod_codigo`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Clie_codigo_fk`) REFERENCES `cliente` (`clie_codigo`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`Vend_codigo_fk`) REFERENCES `admin` (`Admi_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
