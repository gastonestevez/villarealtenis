-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2019 a las 17:09:41
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tenisrank`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entornos`
--

CREATE TABLE `entornos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fondo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entornos`
--

INSERT INTO `entornos` (`id`, `fondo`, `created_at`, `updated_at`) VALUES
(1, 'XnbuoJHPRwzMlqiqF16uOb3nG03tKPLC0CCFNcTU.jpeg', '2019-08-16 16:11:19', '2019-08-16 16:11:19'),
(2, 'AwYz5LNQwgkenSnsclSnGtZWQvBADVf7eDTqm7gw.jpeg', '2019-08-16 16:26:07', '2019-08-16 16:26:07'),
(3, 'RhwScwo0zvuFDSzkRS48pMIEKkDK8qObhXHpYxdJ.jpeg', '2019-08-16 18:03:34', '2019-08-16 18:03:34'),
(4, 'o9TQljZY0yYtZgb8SO6MeWB1RRszsHu1sqMdupa3.jpeg', '2019-08-16 18:37:45', '2019-08-16 18:37:45'),
(5, 'oggdKPX3RqM474meVvwIxNG4rKAv4Dz8ziJm3h0A.jpeg', '2019-08-16 18:41:02', '2019-08-16 18:41:02'),
(6, 'prne9G03019pL9Or724YkjwGEg972tW8xSZN56F2.jpeg', '2019-08-16 23:21:43', '2019-08-16 23:21:43'),
(7, 'OVjwitQP6c073gIQhneqhvBlJlkfWDCTXPTOnK4V.jpeg', '2019-08-16 23:22:29', '2019-08-16 23:22:29'),
(8, 'deuyzTWYlmFh4d6t4byOl0IhadYTYsHiCzjRLUzO.jpeg', '2019-08-22 23:27:42', '2019-08-22 23:27:42'),
(9, 'yrLjWcq3HKa7mI88WyWtiN9cYkJG2zO40d3N6OOz.jpeg', '2019-08-22 23:29:04', '2019-08-22 23:29:04'),
(10, 'XYqgV9XBu4Yrh6caAi5TSr7mTJtCRTd7ixigzcKl.jpeg', '2019-08-22 23:31:26', '2019-08-22 23:31:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idj1` int(11) NOT NULL,
  `idj2` int(11) NOT NULL,
  `set1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ganador` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matches`
--

INSERT INTO `matches` (`id`, `idj1`, `idj2`, `set1`, `set2`, `set3`, `ganador`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '64', '64', NULL, 1, '2019-08-15 22:00:05', '2019-08-15 22:00:05'),
(2, 4, 6, '64', '46', '64', 4, '2019-08-16 21:38:21', '2019-08-16 21:38:21'),
(3, 2, 22, '64', '64', NULL, 2, '2019-08-16 23:20:58', '2019-08-16 23:20:58'),
(4, 1, 2, '63', '64', NULL, 2, '2019-08-22 23:57:48', '2019-08-22 23:57:48'),
(5, 2, 3, '75', '36', '10-2', 2, '2019-09-03 20:22:15', '2019-09-03 20:22:15'),
(6, 14, 17, '63', '36', '64', 17, '2019-09-03 20:37:46', '2019-09-03 20:37:46'),
(7, 94, 104, '64', '60', NULL, 94, '2019-09-03 20:39:40', '2019-09-03 20:39:40'),
(8, 44, 78, NULL, NULL, NULL, 44, '2019-09-03 20:46:31', '2019-09-03 20:46:31'),
(9, 12, 106, '61', '62', NULL, 106, '2019-09-03 20:49:30', '2019-09-03 20:49:30'),
(10, 62, 65, '64', '36', '1210', 65, '2019-09-03 20:54:21', '2019-09-03 20:54:21'),
(11, 108, 33, '60', '64', NULL, 33, '2019-09-03 20:59:06', '2019-09-03 20:59:06'),
(12, 49, 33, '60', '64', NULL, 33, '2019-09-03 21:15:43', '2019-09-03 21:15:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_05_210500_create_players_table', 1),
(4, '2019_08_05_210951_create_matches_table', 1),
(5, '2019_08_06_145931_entorno_table', 1),
(6, '2019_09_07_120350_agregar_campo_visualizacion_a_tabla_usuarios', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Puesto` int(11) DEFAULT NULL,
  `PuestoAnterior` int(11) DEFAULT NULL,
  `Telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cumple` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `Nombre`, `Puesto`, `PuestoAnterior`, `Telefono`, `Instagram`, `Email`, `Avatar`, `Cumple`, `created_at`, `updated_at`, `visible`) VALUES
(1, 'LUCIO TORREGROSA', 1, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:22:53', NULL),
(2, 'EMANUEL VEGA', 2, NULL, NULL, '@lauchitavega', 'emanuel_neo@hotmail.com', 'sinimagen.png', '1979-06-22', NULL, '2019-09-03 20:23:10', NULL),
(3, 'LUCIANO MANGANELLI', 3, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-08-22 13:00:59', NULL),
(4, 'JUAN PABLO PINORI', 4, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(5, 'MARTIN LURAGHI', 5, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(6, 'FACUNDO PUGLIESE', 6, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(7, 'MARTIN BOLSI', 7, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(8, 'FRANCISCO ESPINDOLA', 8, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:24:15', NULL),
(9, 'DIEGO HERMIDA', 9, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(10, 'GASTON LISJAK', 10, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-08-23 00:08:41', NULL),
(11, 'DIEGO CASCARDO', 11, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL, NULL),
(12, 'IGNACIO IGLESIAS', 13, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(13, 'MARIO ESTEVEZ', 14, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(14, 'JOEL BONANO', 16, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(15, 'HERNAN VECSLIR', 17, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(16, 'NICO GOROSTIETA', 18, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(17, 'DUILIO LEALI', 15, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(18, 'WALDEMAR GARCIA', 19, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(19, 'MATIAS SIERRA', 20, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(20, 'GABRIEL ACOSTA', 21, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:27', NULL),
(21, 'DANIEL IZZO', 22, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:28', NULL),
(22, 'JONY JUVENAL', 23, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:28', NULL),
(23, 'MATIAS DELLA ROMANA', 24, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:28', NULL),
(25, 'VALENTIN DALBENZIO', 26, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-09-03 20:49:28', NULL),
(30, 'DANIEL FERREIRA', 49, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:03:35', '2019-09-03 20:49:28', NULL),
(31, 'GERMAN MARQUEZ', 31, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:06:23', '2019-09-03 20:49:28', NULL),
(32, 'MARIANO BERRY', 28, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:10:58', '2019-09-03 20:49:28', NULL),
(33, 'DANIEL GLAUS', 29, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:11:55', '2019-09-03 20:49:28', NULL),
(34, 'SILVIO COSCIA', 32, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:12:59', '2019-09-03 20:49:28', NULL),
(35, 'RUBEN VACCA', 25, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:13:36', '2019-09-03 20:49:28', NULL),
(36, 'LUCAS AUFIERI', 50, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:15:31', '2019-09-03 20:49:28', NULL),
(37, 'GUILLERMO AGUIRRE', 39, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:15:50', '2019-09-03 20:49:28', NULL),
(38, 'LUIS LAN', 43, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:16:25', '2019-09-03 20:49:28', NULL),
(39, 'LEONARDO CASAL', 37, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-23 00:16:58', '2019-09-03 20:49:28', NULL),
(40, 'CLAUDIO GAMBALE', 27, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 12:58:50', '2019-09-03 20:49:28', NULL),
(41, 'PABLO ROULET', 30, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:03:11', '2019-09-03 20:49:28', NULL),
(42, 'MARTIN GONZALEZ', 33, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:06:03', '2019-09-03 20:49:28', NULL),
(43, 'DIEGO FEUER', 34, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:06:16', '2019-09-03 20:49:28', NULL),
(44, 'MAXI REMPEL', 35, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:08:25', '2019-09-03 20:49:28', NULL),
(45, 'NICOLAS PARDUCCI', 36, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:08:49', '2019-09-03 20:49:28', NULL),
(46, 'FABIO ARRUFAT', 38, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:14:10', '2019-09-03 20:49:28', NULL),
(47, 'CRISTOBAL FORMICA', 40, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:14:27', '2019-09-03 20:49:28', NULL),
(48, 'MAXI MATINA', 41, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:18:42', '2019-09-03 20:49:28', NULL),
(49, 'HERNAN GONZALEZ', 42, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:19:55', '2019-09-03 20:49:28', NULL),
(50, 'ROBERTO CACERES', 44, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:20:26', '2019-09-03 20:49:28', NULL),
(51, 'ALEJANDRO MINETTO', 45, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:20:45', '2019-09-03 20:49:28', NULL),
(52, 'SEBASTIAN CHAMBI', 46, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:21:07', '2019-09-03 20:49:28', NULL),
(53, 'MARCELO PORETTI', 47, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:21:37', '2019-09-03 20:49:28', NULL),
(54, 'DIEGO TONET', 48, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:22:23', '2019-09-03 20:49:28', NULL),
(55, 'JORGE FILLON', 51, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:25:19', '2019-09-03 20:49:28', NULL),
(56, 'NICOLAS CERDIDO', 52, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:34:06', '2019-09-03 20:49:29', NULL),
(57, 'GABRIEL ROCAMORA', 53, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:34:37', '2019-09-03 20:49:29', NULL),
(58, 'DANIEL CARBIA', 54, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:35:48', '2019-09-03 20:49:29', NULL),
(59, 'GUSTAVO PINORI', 55, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:36:02', '2019-09-03 20:49:29', NULL),
(60, 'GERMAN', 56, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:36:24', '2019-09-03 20:49:29', NULL),
(61, 'DANIEL BRIFF', 57, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:36:39', '2019-09-03 20:49:29', NULL),
(62, 'GUSTAVO ROJEK', 59, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:37:45', '2019-09-03 20:54:21', NULL),
(63, 'GABRIEL FERNANDEZ', 60, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:38:03', '2019-09-03 20:54:21', NULL),
(64, 'ALEJANDRO BAEZA', 61, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:40:33', '2019-09-03 20:54:21', NULL),
(65, 'DIEGO DIAZ', 58, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:40:56', '2019-09-03 20:54:21', NULL),
(66, 'JOSE LOPEZ', 62, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:41:10', '2019-09-03 20:49:29', NULL),
(67, 'MATIAS STARKOFF', 63, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:41:30', '2019-09-03 20:49:29', NULL),
(68, 'ARIEL SUELDO', 64, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:41:59', '2019-09-03 20:49:29', NULL),
(69, 'ALAN ALESSIO', 65, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:42:15', '2019-09-03 20:49:29', NULL),
(70, 'DARIO FALBO', 66, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:42:28', '2019-09-03 20:49:29', NULL),
(71, 'NESTOR ZURI', 67, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:42:47', '2019-09-03 20:49:29', NULL),
(72, 'GUSTAVO CASTILLO', 68, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:43:04', '2019-09-03 20:49:29', NULL),
(73, 'JULIAN LINDEN', 69, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:43:17', '2019-09-03 20:49:29', NULL),
(74, 'MATIAS ALLI', 70, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:43:36', '2019-09-03 20:49:29', NULL),
(75, 'ADRIAN MARUCHI', 71, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:43:51', '2019-09-03 20:49:29', NULL),
(76, 'HUGO', 72, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:44:04', '2019-09-03 20:49:29', NULL),
(77, 'JOSE TORTORELLI', 73, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:44:17', '2019-09-03 20:49:29', NULL),
(78, 'WALTER ANDRADA', 74, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:44:34', '2019-09-03 20:49:29', NULL),
(79, 'CELSO HOWLING', 75, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:44:47', '2019-09-03 20:49:29', NULL),
(80, 'WALTER ROBLEDO', 76, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:45:03', '2019-09-03 20:49:29', NULL),
(81, 'SANDRO BENEDETTO', 77, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:45:17', '2019-09-03 20:49:29', NULL),
(82, 'IGNACIO SAVINO', 78, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:45:30', '2019-09-03 20:49:29', NULL),
(83, 'OSVALDO CREIEM', 79, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:45:45', '2019-09-03 20:49:29', NULL),
(84, 'MARTIN FERNANDEZ', 80, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:46:03', '2019-09-03 20:49:29', NULL),
(85, 'ANTONIO RAMIREZ', 81, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:46:16', '2019-09-03 20:49:29', NULL),
(86, 'FRANK SOTERO', 82, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:46:50', '2019-09-03 20:49:29', NULL),
(87, 'GABRIEL IZAGUIRRE', 83, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:47:12', '2019-09-03 20:49:30', NULL),
(88, 'GUSTAVO BUSTOS', 84, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:47:31', '2019-09-03 20:49:30', NULL),
(89, 'NESTOR FERNANDEZ', 85, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:47:47', '2019-09-03 20:49:30', NULL),
(90, 'MARIANO PALAVECINO', 86, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:48:07', '2019-09-03 20:49:30', NULL),
(91, 'EMILIANO', 87, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:48:17', '2019-09-03 20:49:30', NULL),
(92, 'JAVIER GOMEZ', 88, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:48:28', '2019-09-03 20:49:30', NULL),
(93, 'ANDRES', 89, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:48:41', '2019-09-03 20:49:30', NULL),
(94, 'DARIO MARTINEZ', 90, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:49:20', '2019-09-03 20:49:30', NULL),
(95, 'MIGUEL CARBONARE', 91, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:49:32', '2019-09-03 20:49:30', NULL),
(96, 'MARIO', 92, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:49:48', '2019-09-03 20:49:30', NULL),
(97, 'JUAN C. PEREYRA', 93, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:50:10', '2019-09-03 20:49:30', NULL),
(98, 'JORGE GALBUCHI', 94, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:50:30', '2019-09-03 20:49:30', NULL),
(99, 'VALENTIN DEL VERME', 95, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:50:44', '2019-09-03 20:49:30', NULL),
(100, 'MATIAS', 96, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:01', '2019-09-03 20:49:30', NULL),
(101, 'ANIBAL', 97, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:07', '2019-09-03 20:49:30', NULL),
(102, 'GIMENA GONZALEZ', 98, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:18', '2019-09-03 20:49:30', NULL),
(103, 'ABEL ROJAS', 99, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:27', '2019-09-03 20:49:30', NULL),
(104, 'ALEX PAOLONE', 100, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:35', '2019-09-03 20:49:30', NULL),
(105, 'LEO SEÑAL', 101, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-31 13:52:41', '2019-09-03 20:49:30', NULL),
(106, 'SERGIO VEIZAGA', 12, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-09-03 20:47:50', '2019-09-03 20:49:30', NULL),
(107, 'HERNAN GONZALEZ', 102, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-09-03 20:56:28', '2019-09-03 20:56:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `isAdmin`) VALUES
(1, 'admin', 'admin@villarealtenis.com', NULL, '$2y$10$rnG5UR7ViK6EhEbOmVA/B.ndKQ52T8a8OsPxzqV4Oa86gXzK4VTI6', 'bD3CBtqbSAxjSG7caXQ1LBRu3nMNmGaoGATvAkvR0pbwMUK0RdQs14Ce7n25', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entornos`
--
ALTER TABLE `entornos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entornos`
--
ALTER TABLE `entornos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
