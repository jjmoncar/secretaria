-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-11-2015 a las 11:19:45
-- Versión del servidor: 5.5.46-0+deb8u1
-- Versión de PHP: 5.6.14-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `secretaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
`cod_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(20) NOT NULL,
  `cedula_per` varchar(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`cod_cargo`, `nombre_cargo`, `cedula_per`) VALUES
(15, 'ADJUNTO DIT', '10217283'),
(16, 'OBRERO', '1235475'),
(17, 'SECRETARIA', '895823'),
(18, 'JEFE PERSONAL', '78541254');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_dpto` text COLLATE utf8_spanish_ci NOT NULL,
  `siglas` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre_dpto`, `siglas`) VALUES
('01', 'DEPARTAMENTO DE INFORMATICA', 'DPNFI'),
('02', 'DEPARTAMENTO DE ADMINISTRACIóN', 'PNFIA'),
('03', 'DEPARTAMENTO DE INGENIERIA NAVAL', 'PNFIN'),
('04', 'DEPARTAMENTO DE HOTELERIA Y TURISMO', 'PNFHT'),
('05', 'DIVISION DE TALENTO HUMANO', 'DTH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `codigo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `num_oficio` int(11) NOT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `id_departamento` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `para` text COLLATE utf8_spanish_ci NOT NULL,
  `asunto` text COLLATE utf8_spanish_ci NOT NULL,
  `cc` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`codigo`, `num_oficio`, `contenido`, `fecha`, `id_departamento`, `para`, `asunto`, `cc`) VALUES
('DPNFI - N° 1', 1, 'DGDGDG', '0000-00-00', '01', 'DEPARTAMENTO DE INFORMATICA', 'DFGDFG', 'DFGDFG'),
('PNFHT - N° 2 - 2015', 2, '', '0000-00-00', '01', 'DEPARTAMENTO DE HOTELERIA Y TURISMO', 'SDFSDFDSF', 'SDFSDF'),
('PNFIN - N° 2 - 2015', 2, 'GSDGSGSDGSD', '0000-00-00', '01', 'DEPARTAMENTO DE INGENIERIA NAVAL', 'GSDGG', 'DSFGSDGS'),
('PNFIN - N° 3 - 2015', 3, 'DFGDFG DFGDF DFGDGDFGDF DFHGDFDF HDFHDF RHRTHTRHB  RFHRTHR FHRTHRT', '0000-00-00', '01', 'DEPARTAMENTO DE INGENIERIA NAVAL', 'EGDFGDFG', 'DFGDG'),
('PNFIN - N° 4 - 2015', 4, 'DFDFGDFH DFGDGF DGDFGDF DFGDFGDFGDFGDGDGTETERVDSVSDFV', '0000-00-00', '01', 'DEPARTAMENTO DE INGENIERIA NAVAL', 'DFHGDHDFH', 'FGHFGH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `cedula` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `firma` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `cod_departamento` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`cedula`, `nombre`, `apellido`, `telefono`, `celular`, `firma`, `cod_departamento`) VALUES
('10217283', 'julio jose', 'montaño caraballo', '02943314998', '04264851266', '', '01'),
('1235475', 'PEDRO JOSE', 'PEREZ', '0', '0', '', '02'),
('78541254', 'JUANA JOSEFINA', 'AMARANTA', '0', '0', '', '05'),
('895823', 'LAURA JOSEFINA', 'RODRIGUEZ NARVAEZ', '54456', '57575675', '', '04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `pass` text COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `estatus` text COLLATE utf8_spanish_ci NOT NULL,
  `ci_personal` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `pass`, `nivel`, `estatus`, `ci_personal`) VALUES
('jjmoncar', 'jjmc1021', 1, 'Activo', '10217283');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
 ADD PRIMARY KEY (`cod_cargo`), ADD KEY `id_departamento` (`cedula_per`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
 ADD PRIMARY KEY (`codigo`), ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
 ADD PRIMARY KEY (`cedula`), ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`usuario`), ADD KEY `ci_personal` (`ci_personal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
MODIFY `cod_cargo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`cedula_per`) REFERENCES `personal` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ci_personal`) REFERENCES `personal` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
