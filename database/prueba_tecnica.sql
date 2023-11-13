-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 03:54:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_tecnica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `phone` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `password` longtext NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `birthday`, `password`, `updated_at`, `created_at`) VALUES
(1, 'Aldair Martinez Luna', 'martinezl.aldair2@gmail.com', 'Unidad Villas Centroamericana', '5652237027', '2001-04-07', '$2y$10$5dJ0U2ji9pIrnotk6cjUGOyqjZxEboqFCXT2laRH.JTIpqAx76COG', '2023-11-13 01:48:01', '2023-11-13 01:48:01'),
(2, 'Joshua Martinez Luna', 'joshua@gmail.com', 'Unidad Villas Centroamericana', '5535252495', '2001-04-07', '$2y$10$4ymDqmeTAylDi8n08AXuQuaShYLyXjj.1qJDuVBy6aWX1jMgyLFo6', '2023-11-13 01:53:13', '2023-11-13 01:53:13'),
(3, 'Daniela Gonzalez Lopez', 'danny@gmail.com', 'MEXICO DF', '5546372819', '2001-09-05', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 01:54:34', '2023-11-13 01:54:34'),
(4, 'Mauricio Herrera Garcia', 'mau@gmail.com', 'MEXICO CDMX TLALPAN 123', '5564321235', '1999-11-05', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(5, 'Rebeca Lopez Espinoza', 'rebeca@gmail.com', 'MEXICO CDMX TLALPAN 123', '5689021235', '2005-04-27', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(6, 'Gael Jimenez Luna', 'gael@gmail.com', 'MEXICO CDMX TLALPAN 123', '5557890134', '1995-06-14', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(7, 'Antonio Gomez Herrera', 'antonioGomez@gmail.com', 'MEXICO CDMX TLALPAN 123', '5557890123', '1985-09-19', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(8, 'Nadia Ortega Leon', 'nadia@gmail.com', 'MEXICO CDMX TLALPAN 123', '5656459081', '2003-11-28', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(9, 'Samantha Hurtado Tapia', 'samUT@gmail.com', 'MEXICO CDMX TLALPAN 123', '5678903451', '1970-11-10', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(10, 'Marco Jimenez Herrea', 'marcoJimenz123@gmail.com', 'MEXICO CDMX TLALPAN 123', '5545678123', '1990-03-17', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(11, 'Monica Samudio Torres', 'monicaSamudio@gmail.com', 'MEXICO CDMX TLALPAN 123', '5509675432', '1989-02-26', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(12, 'Tabata Fernandez Garcia', 'tabatagarcia@gmail.com', 'MEXICO CDMX TLALPAN 123', '5678934521', '1999-11-05', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(13, 'Arturo Flores Ortiz', 'arturoFlores@gmail.com', 'MEXICO CDMX TLALPAN 123', '5564321987', '2003-04-15', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(14, 'Raul Gomez Hernanez', 'raulGomez@gmail.com', 'MEXICO CDMX TLALPAN 123', '5678904523', '2001-07-27', '$2y$10$xSMUtWtDBRXm7q1wIODso.tUx/5R4SDnxcBEvQ832ZlJZMdbdGRyu', '2023-11-13 02:55:33', '2023-11-13 02:55:33'),
(15, 'Rodrigo', 'rodrigo@gmail.com', 'Unidad Villas Centroamericana', '5641243509', '2001-03-05', '$2y$10$Ac/XqiaLL0RuToiJnK5h0.tGnZEpeDC38y1HbA8mWELjxBL6qb0m2', '2023-11-13 02:17:52', '2023-11-13 02:17:52'),
(16, 'Ricardo Ramirez Ramirez', 'richiramirez@gmail.com', 'Coyoacan 1727', '5643217898', '1995-12-09', '$2y$10$.mkhp5MHmKY7GLds8rv0OOx8/A8CMfFSEgdH9slYPMqYuG2g3a96y', '2023-11-13 02:53:55', '2023-11-13 02:53:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
