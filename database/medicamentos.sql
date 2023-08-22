-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2023 a las 04:47:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `medicamentos`
--
CREATE DATABASE IF NOT EXISTS `medicamentos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medicamentos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
(3, '1692627816_1691358636_Screenshot_12.png', '2023-08-21 14:23:36', '2023-08-21 14:23:36'),
(4, '1692668377_1690855652_1690218397.png', '2023-08-22 01:39:37', '2023-08-22 01:39:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `summary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `photo`, `is_parent`, `summary`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'rem-non-facilis-velit-voluptas-rerum-sapiente-laudantium', 'https://via.placeholder.com/100x100.png/0066ee?text=recusandae', 0, 'Velit vero quibusdam qui dolor et corrupti. Expedita incidunt quos atque autem sint. Aut quos reiciendis asperiores odio et.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(2, 'Mr.', 'aut-et-rerum-nemo-beatae-quas-voluptatem', 'https://via.placeholder.com/100x100.png/000011?text=ab', 1, 'Culpa quaerat accusamus sint minima qui. Dolorem dolores dolor quae tempore. Quidem quo dolore a quis qui nulla.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(3, 'Ms.', 'id-est-exercitationem-illum-non-assumenda-qui-perspiciatis', 'https://via.placeholder.com/100x100.png/008888?text=ducimus', 1, 'Inventore praesentium ea possimus similique. Quo rerum magnam et optio unde eum. Ab tempora nesciunt nihil voluptate illo.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(4, 'Prof.', 'magnam-veritatis-ipsam-voluptatibus-quo-animi-sit', 'https://via.placeholder.com/100x100.png/0088dd?text=harum', 0, 'Et sed est neque. Non officia aut dolores molestiae modi porro doloribus. Quia asperiores soluta in quia id quia nam.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(5, 'Prof.', 'voluptas-qui-sint-eveniet-a', 'https://via.placeholder.com/100x100.png/007700?text=enim', 0, 'Accusantium inventore sint autem ut eligendi quidem. Molestiae deleniti amet quisquam labore deleniti. Reprehenderit unde eveniet inventore autem est sunt qui.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(6, 'Miss', 'minima-et-incidunt-consequatur-qui-soluta-nemo', 'https://via.placeholder.com/100x100.png/00cc99?text=rem', 0, 'Labore veniam doloremque et repudiandae et consequatur. Quisquam itaque perferendis nesciunt consectetur et. Doloremque deserunt commodi dolor sequi blanditiis qui voluptas.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(7, 'Dr.', 'mollitia-voluptatibus-molestiae-ab-vero', 'https://via.placeholder.com/100x100.png/00ee22?text=deleniti', 0, 'Dolorem ullam rerum consequatur sint ut incidunt corrupti. Atque tempora ea dolorem. Qui voluptas sapiente quae dignissimos fugit sit.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(8, 'Mr.', 'aperiam-molestiae-harum-aliquam-quo', 'https://via.placeholder.com/100x100.png/000022?text=repellat', 0, 'Eos voluptas dolor amet quidem laborum ullam. Dignissimos voluptatibus doloribus eos aspernatur officiis. Rem in repellat quo voluptatum expedita est.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(9, 'Miss', 'est-voluptate-labore-voluptas-blanditiis-laudantium-sed-possimus', 'https://via.placeholder.com/100x100.png/00ee22?text=enim', 0, 'Repellat inventore necessitatibus praesentium omnis harum. Explicabo ipsam non at voluptas. Molestiae aut perspiciatis corrupti sed omnis.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(10, 'Miss', 'molestiae-et-et-voluptas-maiores-magnam', 'https://via.placeholder.com/100x100.png/003322?text=et', 0, 'Delectus vel ducimus quis explicabo. Dicta et esse illum architecto aut eligendi mollitia commodi. Tempore cupiditate dolor beatae libero deleniti sed.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(11, 'Mrs.', 'est-modi-ducimus-quia-minima', 'https://via.placeholder.com/100x100.png/00ee99?text=autem', 0, 'Vitae quae voluptates laborum et ex et provident. Eligendi eum veniam incidunt sunt quaerat cumque omnis. Non ab sunt enim eos aut saepe similique.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(12, 'Miss', 'iure-aspernatur-assumenda-qui-dolorum', 'https://via.placeholder.com/100x100.png/000088?text=aut', 1, 'Veritatis et suscipit aut eum recusandae omnis aut. Non voluptas aut dolor odit unde aut rerum. Id libero sint eos.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(13, 'Dr.', 'quae-labore-rerum-quo-mollitia', 'https://via.placeholder.com/100x100.png/00bb99?text=qui', 0, 'Repellendus sed fugiat mollitia earum voluptatum. Itaque in dolor quae eaque. Eaque assumenda adipisci fugiat ducimus numquam fugiat expedita.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(14, 'Prof.', 'aut-cumque-harum-natus-assumenda-praesentium-cum-dolores', 'https://via.placeholder.com/100x100.png/00ffff?text=incidunt', 0, 'Illo est nesciunt aut mollitia. Quibusdam ut at vel. Porro amet nesciunt ipsum et pariatur nesciunt ipsam.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(15, 'Dr.', 'expedita-aliquam-voluptatem-rerum-consectetur-soluta', 'https://via.placeholder.com/100x100.png/00ff66?text=ea', 0, 'Aliquam error minima quo a nemo hic sed nostrum. Dolor quidem ab eos quasi et. In dolores rerum nemo est sunt dolor consequuntur.', NULL, 'active', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(16, 'Prof.', 'nisi-dolore-perferendis-deleniti', 'https://via.placeholder.com/100x100.png/00cc99?text=voluptatem', 0, 'Quia vero autem non vero numquam est. Veritatis eius aut molestias libero minima. Voluptatem id rem et iusto velit.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(17, 'Dr.', 'non-magnam-et-debitis-pariatur-consectetur-eius-quae', 'https://via.placeholder.com/100x100.png/006688?text=repudiandae', 0, 'Error ut reiciendis aliquam molestias. Eveniet corrupti quam quidem. Distinctio dolores consequatur necessitatibus sunt et ipsa mollitia.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(18, 'Dr.', 'nulla-nemo-quia-fuga-tenetur-saepe-qui-quaerat', 'https://via.placeholder.com/100x100.png/004444?text=repudiandae', 0, 'Deleniti aut rerum odio aut et reiciendis. Dolor temporibus quia nemo deleniti sint. Sit ullam repellendus placeat similique occaecati esse qui perferendis.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(19, 'Mr.', 'a-suscipit-corrupti-ex-enim', 'https://via.placeholder.com/100x100.png/00ee33?text=modi', 1, 'Facilis eum autem quo. Eum cumque aut iste natus error et. Reiciendis praesentium voluptates beatae beatae aspernatur possimus corrupti illo.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(20, 'Prof.', 'labore-accusantium-incidunt-natus-dolorem-ullam-omnis', 'https://via.placeholder.com/100x100.png/00ffdd?text=ullam', 1, 'Vel nostrum quas autem. Illum vero autem dignissimos quis sed enim vel. Quod dolore ut id omnis est libero.', NULL, 'inactive', '2023-08-18 02:33:30', '2023-08-18 02:33:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE IF NOT EXISTS `medicamentos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `detalles` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_vencimiento` date NOT NULL,
  `lote` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registro_invima` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `precio` decimal(10,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicamentos_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nombre`, `cat_id`, `detalles`, `fecha_vencimiento`, `lote`, `slug`, `registro_invima`, `imagen`, `cantidad`, `precio`, `status`, `created_at`, `updated_at`) VALUES
(1, 'acetaminofen', 2, 'BBNBNVHB', '2023-08-21', 'BHHJBH', 'acetaminofen', '67T76T67', '1692379680_1690218397.png', 20, '6000.00', 'inactive', '2023-08-18 17:28:00', '2023-08-22 02:12:17'),
(2, 'clururo de potasio', 2, 'sbfhsc', '2022-01-17', '2225', 'clururo-de-potasio', 'skdkskdskdks', '1692471865_1691745101_1690218372.png', 20, '5000.00', 'active', '2023-08-19 19:04:25', '2023-08-19 19:04:25'),
(3, 'dolex forte', 3, 'dfdfd', '2023-08-16', '2', 'dolex-forte', '455454', '1692583976_1691625232_descarga (1).jpg', 50, '4000.00', 'active', '2023-08-21 02:12:56', '2023-08-21 02:12:56'),
(4, 'Ibuprofeno', 2, 'VXZCZX', '2023-08-15', '255', 'ibuprofeno', '44556', '1692668612_pirantel  El pirantel, un medicamento lombricida, se usa para tratar los casos de parasitosis por lombrices instestinales (nematodos), uncinarias (anquilostoma), oxiuros y otro tipo de parásitos..jpg', 30, '5000.00', 'active', '2023-08-22 01:43:32', '2023-08-22 01:43:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_19_135437_create_medicamentos_table', 1),
(7, '2023_08_01_033905_create_ventas_table', 1),
(8, '2023_08_11_031652_create_banners_table', 1),
(9, '2023_08_12_212821_create_pedidos_table', 1),
(10, '2023_08_15_083449_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `informacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('En Proceso','Finalizado','Cancelado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'En Proceso',
  `productos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@gmail.com', NULL, '$2y$10$zcUsThw8lX5xaA9W8/AaJe0XYTo9pZ2yvN3rtX9kU9JQlSdM7smLC', 'admin', 'active', NULL, NULL, NULL),
(2, 'Vendor', 'vendor@gmail.com', NULL, '$2y$10$d/l0coIN27B1tRh5IgxSReCkxkMxrXjhH9GskkOeaUp.cErxOumVG', 'vendor', 'active', NULL, NULL, NULL),
(3, 'Carlos customer', 'customer@gmail.com', NULL, '$2y$10$SKSr1ji9KmzQsmD.yM7xquB4owSVQ/mFk6iBDBmxONrFpxvqmHRAy', 'customer', 'active', NULL, NULL, NULL),
(4, 'Ludie Mann', 'sarai.hyatt@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'TAhrKC8KC8', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(5, 'Dr. Beverly Daugherty III', 'bergstrom.mervin@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'USM6evkVeK', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(6, 'Zena Pollich', 'chasity02@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'ACbuERKuxF', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(7, 'Lorna Muller DDS', 'reynolds.everette@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'q8d2h2aQTc', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(8, 'Garry Kassulke', 'sanford.marisa@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'oeFGMnc3Tg', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(9, 'Dr. Jarod Reinger IV', 'elijah26@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 't6pG993ivj', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(10, 'Eloisa Lind', 'danielle.conroy@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'VkKCZW5hWD', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(11, 'Mateo Parisian', 'xgreenholt@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'NIAwadR54p', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(12, 'Verna Fay', 'qmills@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'XyaOie4gNs', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(13, 'Miss Charity Bernhard', 'sgutkowski@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'mv8WXA8HHk', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(14, 'Alfonzo Waelchi', 'skub@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'pRVg8joPpc', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(15, 'Laney Schinner', 'ymorar@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'IfoA69sPOi', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(16, 'Wilmer Kuhlman', 'anna.medhurst@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', '9p6ngMiFIb', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(17, 'Miss Alysa Heaney I', 'noemy.hansen@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', '5E9FN8wEPn', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(18, 'Norberto Swaniawski', 'bbaumbach@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'active', '3SzCvz7G8Y', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(19, 'Jacklyn Rohan', 'stanton.ludie@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'Lxv0xUI5yN', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(20, 'Isobel Weissnat', 'bhintz@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'cXpWhmE7y7', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(21, 'Sunny Kozey', 'aufderhar.sharon@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'DFDAYX7IoD', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(22, 'Dr. Mona Schumm III', 'oliver50@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'hduwbXAeWR', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(23, 'Magnus Mann', 'cwisoky@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'A1Wa6CAjAF', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(24, 'Miss Laurie Zieme Sr.', 'batz.natalia@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'ScissQPO9O', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(25, 'Prof. Zelma Klocko', 'alphonso65@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'xEMIEE6Ezv', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(26, 'Dwight Grant DDS', 'ferne.quitzon@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'Gpu3hUleXC', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(27, 'Dr. Doris Effertz', 'juana.hartmann@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'NtN19SwiWN', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(28, 'Dr. Kacey Rolfson IV', 'kkub@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', 'Tqy5yWv5R9', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(29, 'Larry Lueilwitz', 'june95@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'active', 'OoYylr7Xh5', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(30, 'Ethan Emard', 'qhowe@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'N3lRs3ks4M', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(31, 'Kristopher Wunsch', 'yvette.thiel@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'AasmEXyQxb', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(32, 'Wilfredo Kunde', 'gregg.klein@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'QdVmY1pzar', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(33, 'Dr. Herman Doyle Sr.', 'waylon68@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'rch6HZ5wgd', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(34, 'Johanna Champlin', 'waelchi.buster@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'jE15OGCJXX', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(35, 'Adam Kris', 'willms.wilhelmine@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'active', 'SpZJzaSLGF', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(36, 'Sydnee Becker', 'alphonso.okeefe@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', '4JvW9dr9xI', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(37, 'Josefa Kunde', 'veffertz@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'gzRdEChzNN', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(38, 'Norma Dibbert', 'maeve.kassulke@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'Apk4ooodSe', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(39, 'Darrell Mitchell', 'kuphal.pinkie@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'zdYkgQsDRi', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(40, 'Dawn Lemke V', 'leilani14@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'active', 'lud95wwjaj', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(41, 'Darrel Rohan IV', 'rluettgen@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'QEjumz3Mg0', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(42, 'Berneice Flatley Sr.', 'schultz.hellen@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'active', 'vz1W7n7PP1', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(43, 'Connor Kuhn', 'powlowski.maxine@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'U4YDI0qsz2', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(44, 'Mrs. Samanta Langworth', 'nstoltenberg@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'c57XilKNk8', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(45, 'Abdullah Haag', 'gaylord.roselyn@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'TVHcvMoLad', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(46, 'Jermey Wolff', 'abbott.morton@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'MSrwOGti8p', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(47, 'Eda Jones', 'lauretta30@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'tmg2RnELDp', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(48, 'Miss Michelle Kutch', 'laron.kuvalis@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'inactive', 'vUa7pnrNpL', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(49, 'Will Ledner', 'bryon.bartell@example.net', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'customer', 'inactive', '1an6I2GvC3', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(50, 'Keira Gleason IV', 'rconroy@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'GMVTmc87L7', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(51, 'Ashlynn DuBuque', 'harber.sister@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vendor', 'active', 'koPSfSCWNP', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(52, 'Prof. Dock Ortiz DDS', 'dmclaughlin@example.com', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active', 'h9CfOuLc7C', '2023-08-18 02:33:30', '2023-08-18 02:33:30'),
(53, 'Skyla Dickens', 'gkuphal@example.org', '2023-08-18 02:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'inactive', 'cMOhYhZc0r', '2023-08-18 02:33:30', '2023-08-18 02:33:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha_venta` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;
