-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2024 a las 01:54:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdestudiantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `nota` float NOT NULL,
  `seccionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`id`, `descripcion`, `nota`, `seccionId`) VALUES
(4, 'Taller 1', 94, 4),
(6, 'parcial 1', 85, 6),
(8, 'taller 1', 98, 8),
(21, 'parcial 1', 78, 17),
(22, 'parcial 2', 84, 17),
(23, 'Practica 3', 97, 18),
(24, 'Practica 2', 89, 18),
(29, 'laboratorio 5', 78, 23),
(72, 'parcial 1', 78, 43),
(73, 'parcial 2', 89, 43),
(74, 'Taller 3', 87, 44),
(75, 'Taller 2', 86, 44),
(76, 'Laboratorio 1', 94, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `nombre` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contraseña` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cedula` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `carrera` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreReal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `edad` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`nombre`, `contraseña`, `correo`, `cedula`, `carrera`, `nombreReal`, `apellido`, `nacimiento`, `edad`) VALUES
('admin', '$2y$10$fIxFByNMbchZCs2KnX8wgeoXAVV4IlhNH5JQgFonFiCUczfaEnFuK', 'admin@gmail.com', '8-993-1076', 'Ing. Civil', NULL, NULL, NULL, NULL),
('jassir', '$2y$10$y3QSHLXcg856cJrQd0YZDeUfg9XTeCVvkf4k/cxMKS7Ak12yS8B.K', 'jassir182004@gmail.com', '8-1016-1226', 'Lic. Ciberseguridad', 'Jassir', 'Rodriguez', '2004-11-18', 20),
('jesus12', '$2y$10$/cqkWiZjzwYZqN/.SVKPdu7fNBPAJgR6Rd8SLbFk9By9mizajnf4K', 'jesus@gmail.com', '8-1018-1426', 'Lic. Ciberseguridad', NULL, NULL, NULL, NULL),
('jorge19', '$2y$10$W4SAEv5bKjsdRHgeSt1Gi.RbyNB7YK34eOWK4x/BFIFmPAsm.xsRi', 'lucas.vasquez@utp.ac.pa', '4-346-896', 'Lic. Desarrollo de Software', NULL, NULL, NULL, NULL),
('joshua', '$2y$10$.2/G61lMzL8PlfoAeCyjOuHievMwTMFI3NTeYYwdzFsSDy0ZCnBf.', 'joshua.gonzalez@utp.ac.com', '8-1017-1678', 'Lic. Ciberseguridad', 'Joshua', 'Gonzalez', '2005-01-21', 19),
('lucas12', '$2y$10$RG0v6.eqkQpR788GJoYNzuyIeZ9neO7edBd3.5OS9ocNodSAcOOMO', 'naddier@gmail.com', '8-993-1058', 'Lic. Desarrollo de Software', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombreMateria` varchar(255) NOT NULL,
  `estudianteNombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombreMateria`, `estudianteNombre`) VALUES
(4, 'Ciberseguridad', 'jassir'),
(6, 'Ciberseguridad', 'joshua'),
(13, 'Matematica', 'jassir'),
(27, 'fisica', 'jassir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(11) NOT NULL,
  `nombreSeccion` varchar(255) NOT NULL,
  `materiaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombreSeccion`, `materiaId`) VALUES
(4, 'Talleres', 4),
(6, 'parciales', 4),
(8, 'Talleres', 6),
(17, 'Parciales', 13),
(18, 'Practicas', 13),
(23, 'Laboratorios', 4),
(43, 'Parciales', 27),
(44, 'Talleres', 27),
(45, 'Laboratorios', 27);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seccionId` (`seccionId`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudianteNombre` (`estudianteNombre`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiaId` (`materiaId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_1` FOREIGN KEY (`seccionId`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`estudianteNombre`) REFERENCES `estudiantes` (`nombre`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`materiaId`) REFERENCES `materias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
