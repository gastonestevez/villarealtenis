-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2019 a las 21:54:20
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

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
(7, 'OVjwitQP6c073gIQhneqhvBlJlkfWDCTXPTOnK4V.jpeg', '2019-08-16 23:22:29', '2019-08-16 23:22:29');

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
(3, 2, 22, '64', '64', NULL, 2, '2019-08-16 23:20:58', '2019-08-16 23:20:58');

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
(5, '2019_08_06_145931_entorno_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `Nombre`, `Puesto`, `PuestoAnterior`, `Telefono`, `Instagram`, `Email`, `Avatar`, `Cumple`, `created_at`, `updated_at`) VALUES
(1, 'LUCIO TORREGROSA', 1, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-08-20 23:48:58'),
(2, 'EMANUEL VEGA', 2, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-08-22 12:59:15'),
(3, 'LUCIANO MANGANELLI', 3, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, '2019-08-22 13:00:59'),
(4, 'JUAN PABLO PINORI', 4, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(5, 'MARTIN LURAGHI', 5, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(6, 'FACUNDO PUGLIESE', 6, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(7, 'MARTIN BOLSI', 7, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(8, 'FRANCISCO', 8, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(9, 'DIEGO HERMIDA', 9, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(10, 'GASTON', 10, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(11, 'DIEGO CASCARDO', 11, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(12, 'IGNACIO IGLESIAS', 12, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(13, 'MARIO ESTEVEZ', 13, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(14, 'JOEL BONANO', 14, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(15, 'HERNAN VECSLIR', 15, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(16, 'NICO GOROSTIETA', 16, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(17, 'DUILIO LEALI', 17, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(18, 'WALDEMAR GARCIA', 18, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(19, 'MATIAS SIERRA', 19, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(20, 'GABRIEL ACOSTA', 20, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(21, 'DANIEL IZZO', 21, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(22, 'JONY JUVENAL', 22, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(23, 'MATIAS DELLA ROMANA', 23, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(24, 'RUBEN VACA', 24, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(25, 'VALENTIN DALBENZIO', 25, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, NULL, NULL),
(27, 'Agus', 26, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-22 12:51:26', '2019-08-22 12:52:19'),
(28, 'Jack', 27, NULL, NULL, NULL, NULL, 'sinimagen.png', NULL, '2019-08-22 13:02:23', '2019-08-22 13:02:23');

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
(1, 'admin', 'admin@villarealtenis.com', NULL, '$2y$10$rnG5UR7ViK6EhEbOmVA/B.ndKQ52T8a8OsPxzqV4Oa86gXzK4VTI6', 'eENSWGhAZOy9fY9rQ3rCmc4jEbX3ksfssEIxoxkbQ7UfuIAZ9DchC8rSEy5B', NULL, NULL, 1);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
