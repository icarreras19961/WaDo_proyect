-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-04-2024 a las 13:34:03
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
-- Base de datos: `WaDo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ubicacion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ubicacion`)),
  `puntuacion` int(11) NOT NULL,
  `tags_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags_json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `nombre`, `ubicacion`, `puntuacion`, `tags_json`) VALUES
(1, 'Surf', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 7, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}'),
(2, 'Senderismo', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 6, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}'),
(3, 'Ciclismo de montaña', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 10, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true, \"Vehículo\": true}'),
(4, 'Kayak', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 8, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}'),
(5, 'Voleibol playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 10, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true}'),
(6, 'Kitesurf', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 9, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}'),
(7, 'Caminata por la playa', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 7, '{\"Exterior\": true, \"Interior\": true, \"Playa\": true, \"A pie\": true}'),
(8, 'Vela', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 6, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}'),
(9, 'Futbol en la playa', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', 7, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true, \"A pie\": true}'),
(10, 'Excursión en coche', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 7, '{\"Exterior\": true, \"Interior\": true, \"Vehículo\": true}'),
(11, 'Paddleboarding', '{\"latitud\": 39.9025, \"longitud\": 3.8020}', 7, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Pala\": true}'),
(12, 'Trekking', '{\"latitud\": 39.9372, \"longitud\": 3.8606}', 7, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}'),
(13, 'Windsurf', '{\"latitud\": 39.8565, \"longitud\": 3.6915}', 8, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}'),
(14, 'Montañismo', '{\"latitud\": 39.9847, \"longitud\": 3.8311}', 9, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true}'),
(15, 'Buceo', '{\"latitud\": 39.8882, \"longitud\": 3.7352}', 8, '{\"Acuático\": true, \"Vehículo\": true}'),
(16, 'Ciclismo en carretera', '{\"latitud\": 39.9567, \"longitud\": 3.8764}', 8, '{\"Exterior\": true, \"Viento\": true, \"Vehículo\": true, \"A pie\": true}'),
(17, 'Escalada en roca', '{\"latitud\": 39.9923, \"longitud\": 3.8152}', 9, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true}'),
(18, 'Yoga al aire libre', '{\"latitud\": 39.9475, \"longitud\": 3.8440}', 8, '{\"Exterior\": true, \"Interior\": true, \"A pie\": true}'),
(19, 'Parapente', '{\"latitud\": 39.9156, \"longitud\": 3.7851}', 10, '{\"Exterior\": true, \"Viento\": true, \"A pie\": true}'),
(20, 'Rafting', '{\"latitud\": 39.9223, \"longitud\": 3.9201}', 10, '{\"Viento\": true, \"Sendero\": true, \"Vehículo\": true}'),
(21, 'Camping', '{\"latitud\": 39.9502, \"longitud\": 3.8602}', 9, '{\"Exterior\": true, \"Interior\": true, \"A pie\": true}'),
(22, 'Ski alpino', '{\"latitud\": 39.9665, \"longitud\": 3.8998}', 9, '{\"Exterior\": true, \"Viento\": true, \"Vehículo\": true, \"A pie\": true}'),
(23, 'Skateboarding', '{\"latitud\": 39.9341, \"longitud\": 3.8327}', 8, '{\"Exterior\": true, \"Vehículo\": true, \"A pie\": true}'),
(24, 'Cicloturismo', '{\"latitud\": 39.9102, \"longitud\": 3.8765}', 9, '{\"Exterior\": true, \"Vehículo\": true, \"A pie\": true}'),
(25, 'Carreras de montaña', '{\"latitud\": 39.9734, \"longitud\": 3.8882}', 8, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true}'),
(26, 'Excursión en moto', '{\"latitud\": 39.9254, \"longitud\": 3.8514}', 9, '{\"Exterior\": true, \"Vehículo\": true}'),
(27, 'Escalada en hielo', '{\"latitud\": 39.9985, \"longitud\": 3.8043}', 9, '{\"Exterior\": true, \"Vehículo\": true, \"A pie\": true}'),
(28, 'Ciclismo urbano', '{\"latitud\": 39.9423, \"longitud\": 3.8675}', 9, '{\"Exterior\": true, \"Vehículo\": true, \"A pie\": true}'),
(29, 'Montar a caballo', '{\"latitud\": 39.9301, \"longitud\": 3.8282}', 7, '{\"Exterior\": true, \"A pie\": true}'),
(30, 'Excursión en quad', '{\"latitud\": 39.9378, \"longitud\": 3.8421}', 9, '{\"Exterior\": true, \"Vehículo\": true}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `tags_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags_json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `nombre`, `telefono`, `email`, `ubicacion`, `tags_json`) VALUES
(1, 'Menorca Adventure', '123456789', 'info@menorcaadventure.com', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}'),
(2, 'Senderismo y Aventura Menorca', '987654321', 'contacto@senderismoyaventuramenorca.com', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}'),
(3, 'Deporte y Naturaleza Menorca', '112233445', 'info@deporteynaturalezamenorca.com', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true, \"Vehículo\": true}'),
(4, 'Náutica Menorca', '556677889', 'info@nauticamenorca.com', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}'),
(5, 'Actividades en la Playa Menorca', '998877665', 'info@actividadesenlaplayamenorca.com', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true}'),
(6, 'Deporte Extremo Menorca', '223344556', 'info@deporteextremomenorca.com', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}'),
(6, 'Deporte Extremo Menorca', '223344556', 'info@deporteextremomenorca.com', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', '{\"Exterior\": true, \"Interior\": true, \"Playa\": true, \"A pie\": true}'),
(7, 'Vela y Náutica Menorca', '112233445', 'info@velaynauticamenorca.com', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}'),
(8, 'Deportes de Playa Menorca', '556677889', 'info@deportesdeplayamenorca.com', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true, \"A pie\": true}'),
(9, 'Excursiones y Tours Menorca', '998877665', 'info@excursionesytoursmenorca.com', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', '{\"Exterior\": true, \"Interior\": true, \"Vehículo\": true}'),
(10, 'Aventuras al Aire Libre Menorca', '334455667', 'info@aventurasalaireslibremenorca.com', '{\"latitud\": 39.9450, \"longitud\": 3.8500}', '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `tags_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags_json`)),
  `id_comercio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `ubicacion`, `puntuacion`, `tags_json`, `id_comercio`) VALUES
(1, 'Clases de Surf', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 9, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}', 1),
(2, 'Excursiones de Senderismo', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 8, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}', 2),
(3, 'Rutas de Ciclismo de Montaña', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 7, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true, \"Vehículo\": true}', 3),
(4, 'Kayak Tours', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 9, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}', 4),
(5, 'Voleibol de Playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 6, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true}', 5),
(6, 'Cursos de Kitesurf', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 9, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}', 6),
(7, 'Caminatas por la Playa', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 8, '{\"Exterior\": true, \"Interior\": true, \"Playa\": true, \"A pie\": true}', 7),
(8, 'Clases de Vela', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 8, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}', 7),
(9, 'Futbol en la Playa', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', 7, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true, \"A pie\": true}', 8),
(10, 'Excursiones en Coche', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 6, '{\"Exterior\": true, \"Interior\": true, \"Vehículo\": true}', 9),
(11, 'Deportes Extremos al Aire Libre', '{\"latitud\": 39.9450, \"longitud\": 3.8500}', 8, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}', 10),
(12, 'Alquiler de Equipos de Surf', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 7, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}', 1),
(13, 'Trekking Guiado', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 9, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}', 2),
(14, 'Alquiler de Bicicletas de Montaña', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 6, '{\"Exterior\": true, \"Sendero\": true, \"A pie\": true, \"Vehículo\": true}', 3),
(15, 'Tours en Kayak al Atardecer', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 10, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}', 4),
(16, 'Torneos de Voleibol de Playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 8, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true}', 5),
(17, 'Cursos Avanzados de Kitesurf', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 10, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"Vehículo\": true}', 6),
(18, 'Rutas Guiadas por Playas', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 7, '{\"Exterior\": true, \"Interior\": true, \"Playa\": true, \"A pie\": true}', 7),
(19, 'Excursiones de Vela', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 9, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}', 7),
(20, 'Futbol Playa Nocturno', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', 8, '{\"Acuático\": true, \"Playa\": true, \"Pelota\": true, \"A pie\": true}', 8),
(21, 'Tours Históricos en Coche', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 7, '{\"Exterior\": true, \"Interior\": true, \"Vehículo\": true}', 9),
(22, 'Parapente', '{\"latitud\": 39.9450, \"longitud\": 3.8500}', 9, '{\"Exterior\": true, \"Viento\": true, \"A pie\": true}', 10),
(23, 'Clases de Stand Up Paddle', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 8, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true, \"A pie\": true}', 1),
(24, 'Trekking Nocturno', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 7, '{\"Exterior\": true, \"Interior\": true, \"Sendero\": true, \"A pie\": true}', 2),
(25, 'Rutas de Ciclismo Urbano', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 6, '{\"Exterior\": true, \"Sendero\": true, \"Vehículo\": true}', 3),
(26, 'Tours en Barco', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 9, '{\"Acuático\": true, \"Viento\": true, \"Vehículo\": true}', 4),
(27, 'Clases de Yoga en la Playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 8, '{\"Acuático\": true, \"Playa\": true, \"A pie\": true}', 5),
(28, 'Surf Nocturno', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 7, '{\"Acuático\": true, \"Viento\": true, \"Playa\": true}', 6),
(29, 'Snorkel Tours', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 9, '{\"Acuático\": true, \"Playa\": true, \"Vehículo\": true}', 7),
(30, 'Tours de Observación de Aves', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 8, '{\"Exterior\": true, \"Interior\": true, \"A pie\": true}', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `nombre`) VALUES
(1, 'exterior'),
(2, 'interior'),
(3, 'sendero'),
(4, 'acuatico'),
(5, 'viento'),
(6, 'vehiculo'),
(7, 'playa'),
(8, 'pelota'),
(9, 'pala'),
(10, 'a_pie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `password`, `email`) VALUES
(1, 'Ivan', 'Carreras Pérez', '1234', 'juan.perez@email.com'),
(2, 'María', 'González', 'password2', 'maria.gonzalez@email.com'),
(3, 'Carlos', 'López', 'password3', 'carlos.lopez@email.com'),
(4, 'Laura', 'Fernández', 'password4', 'laura.fernandez@email.com'),
(5, 'Miguel', 'Martínez', 'password5', 'miguel.martinez@email.com'),
(6, 'Ana', 'Sánchez', 'password6', 'ana.sanchez@email.com'),
(7, 'Pedro', 'Gómez', 'password7', 'pedro.gomez@email.com'),
(8, 'Lucía', 'Díaz', 'password8', 'lucia.diaz@email.com'),
(9, 'David', 'Rodríguez', 'password9', 'david.rodriguez@email.com'),
(10, 'Sara', 'Pérez', 'password10', 'sara.perez@email.com'),
(11, 'Elena', 'González', 'password11', 'elena.gonzalez@email.com'),
(12, 'Francisco', 'López', 'password12', 'francisco.lopez@email.com'),
(13, 'Carmen', 'Fernández', 'password13', 'carmen.fernandez@email.com'),
(14, 'Javier', 'Martínez', 'password14', 'javier.martinez@email.com'),
(15, 'Rosa', 'Sánchez', 'password15', 'rosa.sanchez@email.com'),
(16, 'Alejandro', 'Gómez', 'password16', 'alejandro.gomez@email.com'),
(17, 'Nuria', 'Díaz', 'password17', 'nuria.diaz@email.com'),
(18, 'Diego', 'Rodríguez', 'password18', 'diego.rodriguez@email.com'),
(19, 'Patricia', 'Pérez', 'password19', 'patricia.perez@email.com'),
(20, 'Isabel', 'González', 'password20', 'isabel.gonzalez@email.com'),
(21, 'Fernando', 'López', 'password21', 'fernando.lopez@email.com'),
(22, 'Teresa', 'Fernández', 'password22', 'teresa.fernandez@email.com'),
(23, 'Manuel', 'Martínez', 'password23', 'manuel.martinez@email.com'),
(24, 'Silvia', 'Sánchez', 'password24', 'silvia.sanchez@email.com'),
(25, 'Pablo', 'Gómez', 'password25', 'pablo.gomez@email.com'),
(26, 'Rocío', 'Díaz', 'password26', 'rocio.diaz@email.com'),
(27, 'Raúl', 'Rodríguez', 'password27', 'raul.rodriguez@email.com'),
(28, 'Olga', 'Pérez', 'password28', 'olga.perez@email.com'),
(29, 'Luis', 'González', 'password29', 'luis.gonzalez@email.com'),
(30, 'Cristina', 'López', 'password30', 'cristina.lopez@email.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
