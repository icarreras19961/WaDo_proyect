-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-04-2024 a las 13:57:47
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
(1, 'Surf', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 7, '{\"tags\": [\"Acuático\", \"Viento\", \"Playa\", \"Vehículo\"]}'),
(2, 'Senderismo', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 6, '{\"tags\": [\"Exterior\", \"Interior\", \"Sendero\", \"A pie\"]}'),
(3, 'Ciclismo de montaña', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 10, '{\"tags\": [\"Exterior\", \"Sendero\", \"A pie\", \"Vehículo\"]}'),
(4, 'Kayak', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 8, '{\"tags\": [\"Acuático\", \"Viento\", \"Vehículo\"]}'),
(5, 'Voleibol playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 10, '{\"tags\": [\"Acuático\", \"Playa\", \"Pelota\"]}'),
(6, 'Kitesurf', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 9, '{\"tags\": [\"Acuático\", \"Viento\", \"Playa\", \"Vehículo\"]}'),
(7, 'Caminata por la playa', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 7, '{\"tags\": [\"Exterior\", \"Interior\", \"Playa\", \"A pie\"]}'),
(8, 'Vela', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 6, '{\"tags\": [\"Acuático\", \"Viento\", \"Vehículo\"]}'),
(9, 'Futbol en la playa', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', 7, '{\"tags\": [\"Acuático\", \"Playa\", \"Pelota\", \"A pie\"]}'),
(10, 'Excursión en coche', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 7, '{\"tags\": [\"Exterior\", \"Interior\", \"Vehículo\"]}'),
(11, 'Paddleboarding', '{\"latitud\": 39.9025, \"longitud\": 3.8020}', 7, '{\"tags\": [\"Acuático\", \"Viento\", \"Playa\", \"Pala\"]}'),
(12, 'Trekking', '{\"latitud\": 39.9372, \"longitud\": 3.8606}', 7, '{\"tags\": [\"Exterior\", \"Interior\", \"Sendero\", \"A pie\"]}'),
(13, 'Windsurf', '{\"latitud\": 39.8565, \"longitud\": 3.6915}', 8, '{\"tags\": [\"Acuático\", \"Viento\", \"Playa\", \"Vehículo\"]}'),
(14, 'Montañismo', '{\"latitud\": 39.9847, \"longitud\": 3.8311}', 9, '{\"tags\": [\"Exterior\", \"Sendero\", \"A pie\"]}'),
(15, 'Buceo', '{\"latitud\": 39.8882, \"longitud\": 3.7352}', 8, '{\"tags\": [\"Acuático\", \"Vehículo\"]}'),
(16, 'Ciclismo en carretera', '{\"latitud\": 39.9567, \"longitud\": 3.8764}', 8, '{\"tags\": [\"Exterior\", \"Viento\", \"Vehículo\", \"A pie\"]}'),
(17, 'Escalada en roca', '{\"latitud\": 39.9923, \"longitud\": 3.8152}', 9, '{\"tags\": [\"Exterior\", \"Sendero\", \"A pie\"]}'),
(18, 'Yoga al aire libre', '{\"latitud\": 39.9475, \"longitud\": 3.8440}', 8, '{\"tags\": [\"Exterior\", \"Interior\", \"A pie\"]}'),
(19, 'Parapente', '{\"latitud\": 39.9156, \"longitud\": 3.7851}', 10, '{\"tags\": [\"Exterior\", \"Viento\", \"A pie\"]}'),
(20, 'Rafting', '{\"latitud\": 39.9223, \"longitud\": 3.9201}', 10, '{\"tags\": [\"Viento\", \"Sendero\", \"Vehículo\"]}'),
(21, 'Camping', '{\"latitud\": 39.9502, \"longitud\": 3.8602}', 9, '{\"tags\": [\"Exterior\", \"Interior\", \"A pie\"]}'),
(22, 'Ski alpino', '{\"latitud\": 39.9665, \"longitud\": 3.8998}', 9, '{\"tags\": [\"Exterior\", \"Viento\", \"Vehículo\", \"A pie\"]}'),
(23, 'Skateboarding', '{\"latitud\": 39.9341, \"longitud\": 3.8327}', 8, '{\"tags\": [\"Exterior\", \"Vehículo\", \"A pie\"]}'),
(24, 'Cicloturismo', '{\"latitud\": 39.9102, \"longitud\": 3.8765}', 9, '{\"tags\": [\"Exterior\", \"Vehículo\", \"A pie\"]}'),
(25, 'Carreras de montaña', '{\"latitud\": 39.9734, \"longitud\": 3.8882}', 8, '{\"tags\": [\"Exterior\", \"Sendero\", \"A pie\"]}'),
(26, 'Excursión en moto', '{\"latitud\": 39.9254, \"longitud\": 3.8514}', 9, '{\"tags\": [\"Exterior\", \"Vehículo\"]}'),
(27, 'Escalada en hielo', '{\"latitud\": 39.9985, \"longitud\": 3.8043}', 9, '{\"tags\": [\"Exterior\", \"Vehículo\", \"A pie\"]}'),
(28, 'Ciclismo urbano', '{\"latitud\": 39.9423, \"longitud\": 3.8675}', 9, '{\"tags\": [\"Exterior\", \"Vehículo\", \"A pie\"]}'),
(29, 'Montar a caballo', '{\"latitud\": 39.9301, \"longitud\": 3.8282}', 7, '{\"tags\": [\"Exterior\", \"A pie\"]}'),
(30, 'Excursión en quad', '{\"latitud\": 39.9378, \"longitud\": 3.8421}', 9, '{\"tags\": [\"Exterior\", \"Vehículo\"]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ubicacion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ubicacion`)),
  `tags_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags_json`)),
  `telefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `nombre`, `ubicacion`, `tags_json`, `telefono`, `email`) VALUES
(1, 'Menorca Kayak Adventures', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', '{\"tags\": [\"Acuatico\", \"Viento\", \"A pie\"]}', '123456789', 'info@menorcakayak.com'),
(2, 'Senderismo Menorca', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', '{\"tags\": [\"Exterior\", \"A pie\", \"Sendero\"]}', '987654321', 'info@senderismomenorca.com'),
(3, 'Bicicletas Menorca', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', '{\"tags\": [\"Exterior\", \"Vehiculo\", \"A pie\"]}', '111222333', 'info@bicicletasmenorca.com'),
(4, 'Kayak Menorca', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', '{\"tags\": [\"Acuatico\", \"Viento\", \"A pie\"]}', '444555666', 'info@kayakmenorca.com'),
(5, 'Playa Voley Menorca', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', '{\"tags\": [\"Exterior\", \"Playa\", \"Pelota\"]}', '777888999', 'info@playavoleymenorca.com'),
(6, 'Kitesurf Menorca', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', '{\"tags\": [\"Acuatico\", \"Viento\", \"A pie\"]}', '101112131', 'info@kitesurfmenorca.com'),
(7, 'Playa Caminatas Menorca', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', '{\"tags\": [\"Exterior\", \"Playa\", \"A pie\"]}', '141516171', 'info@playacaminatasmenorca.com'),
(8, 'Vela Menorca', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', '{\"tags\": [\"Acuatico\", \"Viento\", \"A pie\"]}', '181920212', 'info@velamenorca.com'),
(9, 'Futbol Playa Menorca', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', '{\"tags\": [\"Exterior\", \"Playa\", \"Pelota\"]}', '222324252', 'info@futbolplayamenorca.com'),
(10, 'Extremo Aventura Menorca', '{\"latitud\": 39.9450, \"longitud\": 3.8500}', '{\"tags\": [\"Exterior\", \"Viento\", \"A pie\"]}', '262728293', 'info@extremoaventuramenorca.com');

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
(11, 'Tour en Coche Histórico', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 7, '{\"tags\": [\"Exterior\", \"Vehiculo\"]}', 10),
(12, 'Trekking Aventura Nocturna', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 8, '{\"tags\": [\"Exterior\", \"A pie\", \"Sendero\"]}', 2),
(13, 'Ciclismo Urbano Tour', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 6, '{\"tags\": [\"Exterior\", \"Vehiculo\", \"A pie\"]}', 3),
(14, 'Tour en Barco Al Atardecer', '{\"latitud\": 39.9237, \"longitud\": 3.9378}', 9, '{\"tags\": [\"Acuatico\", \"Viento\", \"Vehiculo\"]}', 4),
(15, 'Yoga en la Playa', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 8, '{\"tags\": [\"Exterior\", \"Playa\", \"A pie\"]}', 5),
(16, 'Surf Nocturno Aventura', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 7, '{\"tags\": [\"Acuatico\", \"Viento\"]}', 6),
(17, 'Snorkel Tours', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 9, '{\"tags\": [\"Acuatico\", \"Playa\", \"A pie\"]}', 7),
(18, 'Observación de Aves Tours', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 8, '{\"tags\": [\"Exterior\", \"A pie\"]}', 9),
(19, 'Kayak en Aguas Tranquilas', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 9, '{\"tags\": [\"Acuatico\", \"A pie\"]}', 1),
(20, 'Rutas de Senderismo Familiar', '{\"latitud\": 39.9940, \"longitud\": 3.8685}', 7, '{\"tags\": [\"Exterior\", \"A pie\", \"Sendero\"]}', 2),
(21, 'Alquiler de Bicicletas Eléctricas', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 8, '{\"tags\": [\"Exterior\", \"Vehiculo\"]}', 3),
(22, 'Vela de Aventura', '{\"latitud\": 39.8901, \"longitud\": 3.7426}', 9, '{\"tags\": [\"Acuatico\", \"Viento\"]}', 8),
(23, 'Futbol Playa Torneos Nocturnos', '{\"latitud\": 39.8682, \"longitud\": 3.7559}', 7, '{\"tags\": [\"Exterior\", \"Playa\", \"Pelota\"]}', 9),
(24, 'Parapente con Instructores Certificados', '{\"latitud\": 39.9450, \"longitud\": 3.8500}', 9, '{\"tags\": [\"Exterior\", \"Viento\", \"A pie\"]}', 10),
(25, 'Ciclismo de Montaña Tours Guiados', '{\"latitud\": 39.9622, \"longitud\": 3.8298}', 8, '{\"tags\": [\"Exterior\", \"Sendero\", \"Vehiculo\"]}', 3),
(26, 'Clases de Surf para Principiantes', '{\"latitud\": 39.9862, \"longitud\": 3.8321}', 7, '{\"tags\": [\"Acuatico\", \"Viento\"]}', 1),
(27, 'Excursiones en Coche Clásico', '{\"latitud\": 39.9334, \"longitud\": 3.8375}', 6, '{\"tags\": [\"Exterior\", \"Vehiculo\"]}', 10),
(28, 'Voleibol de Playa Torneos', '{\"latitud\": 39.8917, \"longitud\": 3.8352}', 8, '{\"tags\": [\"Exterior\", \"Playa\", \"Pelota\"]}', 5),
(29, 'Clases de Kitesurf para Avanzados', '{\"latitud\": 39.8715, \"longitud\": 3.7649}', 9, '{\"tags\": [\"Acuatico\", \"Viento\"]}', 6),
(30, 'Stand Up Paddle Tours', '{\"latitud\": 39.9234, \"longitud\": 3.8650}', 7, '{\"tags\": [\"Acuatico\", \"Viento\", \"A pie\"]}', 7);

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
