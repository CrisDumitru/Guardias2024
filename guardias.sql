-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-06-2024 a las 19:22:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guardias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ausencia`
--

CREATE TABLE `ausencia` (
  `idAusencias` int(11) NOT NULL,
  `dniProfesor` varchar(20) NOT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `idMotivo` varchar(10) DEFAULT NULL,
  `idHora` varchar(10) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `tarea` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ausencia`
--

INSERT INTO `ausencia` (`idAusencias`, `dniProfesor`, `fecha`, `idMotivo`, `idHora`, `observacion`, `tarea`) VALUES
(18, '45678901D', '06/20/2024', 'A00', '2', 'Hola prueba', 'no'),
(21, '45678901D', '06/13/2024', 'A00', '1', 'Nigger', 'no'),
(26, '12345678A', '06/19/2024', 'A05', '4', '', 'no'),
(27, '12345678A', '06/11/2024', 'A00', '1', '', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `idClase` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`idClase`, `Nombre`, `Puntuacion`) VALUES
(31, '1ESO', 5),
(32, '1ESOB', 5),
(33, '2ESOA', 4),
(34, '2ESOB', 4),
(35, '3ESOA', 3),
(36, '3ESOB', 3),
(37, '4ESOA', 2),
(38, '4ESOB', 2),
(39, '1BACHA', 1),
(40, '1BACHB', 1),
(41, '2BACHA', 1),
(42, '2BACHB', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` varchar(11) NOT NULL,
  `inicio` time DEFAULT NULL,
  `fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `inicio`, `fin`) VALUES
('1', '00:00:00', '00:00:00'),
('2', '08:30:00', '09:20:00'),
('3', '09:25:00', '10:15:00'),
('4', '10:20:00', '11:10:00'),
('5', '11:40:00', '12:30:00'),
('6', '12:30:00', '13:25:00'),
('7', '13:25:00', '14:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos`
--

CREATE TABLE `motivos` (
  `id` varchar(11) NOT NULL,
  `abreviatura` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `motivos`
--

INSERT INTO `motivos` (`id`, `abreviatura`, `descripcion`) VALUES
('A00', '[A00] Licencia enfermedad / Vacaciones incapacidad temporal', 'Licencia por enfermedad 4 o más días / Disfrute de vacaciones por incapacidad temporal.'),
('A01', '[A01] Permiso nacimiento / Adopción/ Acogimiento', 'Permiso por nacimiento para la madre biológica, adopción, guarda o acogimiento / En caso de parto, adopción o acogimiento múltiple / Por adopción internacional / Lactancia de hijo menor de 12 meses/ Licencia por Matrimonio/ Divorcio, separación legal o nulidad / Permiso por situaciones críticas / Licencia por estudios / Permiso sin retribución /Disfrute de vacaciones tras permiso por nacimiento, adopción, guarda o acogimiento.'),
('A02', '[A02] Permiso progenitor diferente de madre biológica', 'Permiso del progenitor diferente de la madre biológica por nacimiento, adopción, guarda o acogimiento'),
('A03', '[A03] Fallecimiento 1° o 2° grado', 'Fallecimiento de un familiar de primer grado o pareja inscrita / Fallecimiento de un familiar de hasta segundo grado de consanguinidad o afinidad\r\n'),
('A04', '[A04] Enfermedad grave o intervención quirúrgica cónyuge', 'Enfermedad grave o intervención quirúrgica del cónyuge, pareja de hecho, hijos, padres y hermanos / Enfermedad grave del resto de parientes hasta primer grado de afinidad / Enfermedad grave del resto de parientes hasta segundo grado de consanguinidad o afinidad\r\n'),
('A05', '[A05] Traslado domicilio', 'Traslado de domicilio'),
('A06', '[A06] Exámenes finales y pruebas / Formación continua', 'Exámenes finales y pruebas en centros oficiales / Formación continua'),
('A07', '[A07] Cumplimiento deber inexcusable', 'Cumplimiento de un deber inexcusable'),
('A08', '[A08] Reducción jornada', 'Reducción de jornada / Adaptación progresiva de la jornada de trabajo tras tratamiento oncológico o enfermedad grave'),
('A09', '[A09] Boda hasta 3° grado consanguinidad o 2° afinidad', 'Boda familiar hasta 3° grado consaquinidad o 2o afinidad'),
('A10', '[A10] Derecho a ausentarse por hijos', 'Derecho de ausentarse por hijos prematuros u hospitalizados/Asistencia a clases preparación al parto / Asistencia a exámenes prenatales/Asistencia a reuniones de coordinación del Centro de Educación Especial del hijo o hija / Asistencia a reuniones de coordinación del Centro de Atención Temprana del hijo o hija / Asistencia a tutorías del hijo o hija en el centro educativo / Técnicas de fecundación asistida'),
('C01', '[C01] Licencia enfermedad sin parte baja', 'Licencia por enfermedad sin parte de baja'),
('C02', '[C02] Visita médica personal, hijos y parientes 1° grado', 'Visita médica/Acompañamiento médico de hijos y parientes primer grado\r\n'),
('C03', '[C03] Otros motivos justificados', 'Otros motivos justificados (incluyendo permisos sindicales)'),
('D01', '[D01] Días libre disposición conciliación', 'Días de libre disposición por conciliación,Dia 1,Día 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `correo` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellido`, `correo`, `rol`) VALUES
('12345678A', 'Jessica Navarro', 'Jessica Navarro Oriol', 'dariusleon345@gmail.com', 'profesor'),
('45678901D', 'Luz Ibarz', 'Luz Ibarz Puyal', 'dariusanton@iesrodanas.com', 'jefatura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `idPuntuacion` int(11) NOT NULL,
  `puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntuacion`
--

INSERT INTO `puntuacion` (`idPuntuacion`, `puntos`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(50) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `verifiedEmail` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `gender`, `full_name`, `picture`, `verifiedEmail`, `token`) VALUES
(3, 'dariusanton@iesrodanas.com', 'DARIUS', 'ANTON', '', 'DARIUS ANTON', 'https://lh3.googleusercontent.com/a/ACg8ocKcDTNOyGBew2EaCtHN33-MJrpeCdAc4te77S7nHMyQbZK4itnK=s96-c', 1, '100940136015682562432'),
(4, 'dariusleon345@gmail.com', 'Dariusleon345', '', '', 'Dariusleon345', 'https://lh3.googleusercontent.com/a/ACg8ocJMh-4nNgN7ayt-vgJXP46hwzPMltp--Pr_y4oe-IZbmR8yXEI=s96-c', 1, '109370846991393758270');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ausencia`
--
ALTER TABLE `ausencia`
  ADD PRIMARY KEY (`idAusencias`),
  ADD KEY `dniProfesor` (`dniProfesor`),
  ADD KEY `fk_idHora` (`idHora`),
  ADD KEY `fk_idMotivo` (`idMotivo`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`idClase`),
  ADD KEY `fK_puntuacion` (`Puntuacion`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivos`
--
ALTER TABLE `motivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`idPuntuacion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ausencia`
--
ALTER TABLE `ausencia`
  MODIFY `idAusencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `idClase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ausencia`
--
ALTER TABLE `ausencia`
  ADD CONSTRAINT `ausencia_ibfk_1` FOREIGN KEY (`dniProfesor`) REFERENCES `profesor` (`dni`),
  ADD CONSTRAINT `fk_idHora` FOREIGN KEY (`idHora`) REFERENCES `horas` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `fK_puntuacion` FOREIGN KEY (`Puntuacion`) REFERENCES `puntuacion` (`idPuntuacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
