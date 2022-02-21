-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.18 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para kalpataru_jorge
CREATE DATABASE IF NOT EXISTS `kalpataru_jorge` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kalpataru_jorge`;

-- Volcando estructura para tabla kalpataru_jorge.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
REPLACE INTO `cursos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, '1º Bachillerato de Ciencias', NULL, NULL),
	(2, '2º Bachillerato de Ciencias', NULL, NULL),
	(3, '1º Bachillerato de Humanidades y Ciencias Sociales', NULL, NULL),
	(4, '2º Bachillerato de Humanidades y Ciencias Sociales', NULL, NULL),
	(5, '1º Sistemas Microinformáticos y Redes', NULL, NULL),
	(6, '2º Sistemas Microinformáticos y Redes', NULL, NULL),
	(7, '1º Desarrollo de Aplicaciones Web', NULL, NULL),
	(8, '2º Desarrollo de Aplicaciones Web', NULL, NULL),
	(9, '1º Administración de Sistemas Informáticos en Red', NULL, NULL),
	(10, '2º Administración de Sistemas Informáticos en Red', NULL, NULL),
	(11, '1º Integración Social', NULL, NULL),
	(12, '2º Integración Social', NULL, NULL),
	(13, '1º Marketing y Publicidad', NULL, NULL),
	(14, '2º Marketing y Publicidad', NULL, NULL),
	(15, '1º Actividades Comerciales', NULL, NULL),
	(16, '2º Actividades Comerciales', NULL, NULL),
	(17, '1º Servicios Administrativos', NULL, NULL),
	(18, '2º Servicios Administrativos', NULL, NULL),
	(19, '1º Gestión Administrativa', NULL, NULL),
	(20, '2º Gestión Administrativa', NULL, NULL),
	(21, '1º Administración y finanzas A', NULL, NULL),
	(22, '2º Administración y finanzas A', NULL, NULL),
	(23, '1º Administración y finanzas B', NULL, NULL),
	(24, '2º Administración y finanzas B', NULL, NULL);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.data_rows: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
REPLACE INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
	(2, 1, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
	(6, 1, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 0, 0, 0, 0, 0, '{}', 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0","taggable":"0"}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Rol', 0, 1, 1, 1, 1, 1, '{}', 9),
	(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'texto', 'text', 'Texto', 1, 1, 1, 1, 1, 1, '{}', 3),
	(24, 4, 'validado', 'text', 'Validado', 1, 1, 1, 1, 1, 1, '{}', 4),
	(25, 4, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
	(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
	(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
	(28, 4, 'deseo_belongsto_user_relationship', 'relationship', 'Usuario', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"email","pivot_table":"cursos","pivot":"0","taggable":"0"}', 7),
	(29, 4, 'deseo_belongstomany_user_relationship', 'relationship', 'Valoraciones', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"belongsToMany","column":"id","key":"id","label":"email","pivot_table":"valoracion_deseos","pivot":"1","taggable":"0"}', 8),
	(30, 1, 'user_hasmany_deseo_relationship', 'relationship', 'Deseos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Deseo","table":"deseos","type":"hasMany","column":"user_id","key":"id","label":"texto","pivot_table":"cursos","pivot":"0","taggable":"0"}', 13),
	(31, 1, 'user_belongstomany_deseo_relationship', 'relationship', 'Me Gusta', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Deseo","table":"deseos","type":"belongsToMany","column":"id","key":"id","label":"texto","pivot_table":"valoracion_deseos","pivot":"1","taggable":"0"}', 14),
	(32, 1, 'dni', 'text', 'Dni', 0, 1, 1, 1, 1, 1, '{}', 5),
	(33, 1, 'email_verified_at', 'timestamp', 'Email Verificado el', 0, 1, 1, 1, 1, 1, '{}', 8),
	(34, 1, 'curso_id', 'select_dropdown', 'Curso', 0, 1, 1, 1, 1, 1, '{}', 3),
	(35, 1, 'user_belongsto_curso_relationship', 'relationship', 'Curso', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Curso","table":"cursos","type":"belongsTo","column":"curso_id","key":"id","label":"nombre","pivot_table":"cursos","pivot":"0","taggable":"0"}', 15),
	(36, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(37, 5, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
	(39, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(40, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(41, 5, 'curso_hasmany_user_relationship', 'relationship', 'Alumnos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\User","table":"users","type":"hasMany","column":"curso_id","key":"id","label":"email","pivot_table":"cursos","pivot":"0","taggable":"0"}', 6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.data_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
REPLACE INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2022-02-16 22:48:09', '2022-02-16 23:10:06'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-16 22:48:10', '2022-02-16 22:48:10'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-16 22:48:10', '2022-02-16 22:48:10'),
	(4, 'deseos', 'deseos', 'Deseo', 'Deseos', NULL, 'App\\Models\\Deseo', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-02-16 22:53:17', '2022-02-16 23:08:39'),
	(5, 'cursos', 'cursos', 'Curso', 'Cursos', NULL, 'App\\Models\\Curso', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-02-16 23:00:15', '2022-02-17 01:08:01');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.deseos
CREATE TABLE IF NOT EXISTS `deseos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `validado` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deseos_user_id_foreign` (`user_id`),
  CONSTRAINT `deseos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.deseos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `deseos` DISABLE KEYS */;
REPLACE INTO `deseos` (`id`, `nombre`, `texto`, `validado`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Deseo1 ', 'Me gustaria poder cumplir mi deseo de aprobar este proyecto', 1, 1, '2022-02-17 18:38:15', '2022-02-17 18:38:16'),
	(2, 'Deseo 2', 'La pelicula de spiderman pudo ser mejor', 1, 1, '2022-02-17 18:38:52', '2022-02-17 18:38:53'),
	(3, 'Deseo 4', 'Ojala poder viajar a portugal pronto', 0, 1, '2022-02-17 18:39:35', '2022-02-17 18:39:35'),
	(4, 'Deseo 5', 'La moraleja dice que al que madruga dios le ayuda, entonces nunca me ayudara', 1, 1, '2022-02-17 18:40:04', '2022-02-17 18:40:05'),
	(5, 'Deseo 6', 'Sigo trabajando en el diseño de esta pagina', 0, 1, '2022-02-19 03:19:00', '2022-02-19 03:19:00'),
	(6, 'Deseo 7', 'Espero que el scroll funcione bien', 0, 1, '2022-02-19 03:19:26', '2022-02-19 03:19:26'),
	(7, 'Deseo 8', 'Deseo número 8, sigo creando deseos', 1, 1, '2022-02-19 03:19:58', '2022-02-19 03:19:59');
/*!40000 ALTER TABLE `deseos` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.menus: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
REPLACE INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2022-02-16 22:48:12', '2022-02-16 22:48:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.menu_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-16 22:48:12', '2022-02-16 22:48:12', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 3, '2022-02-16 22:48:12', '2022-02-16 23:05:01', 'voyager.media.index', NULL),
	(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 6, '2022-02-16 22:48:12', '2022-02-16 23:05:39', 'voyager.users.index', 'null'),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-02-16 22:48:12', '2022-02-16 22:48:12', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2022-02-16 22:48:12', '2022-02-16 23:05:01', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-02-16 22:48:12', '2022-02-16 23:04:49', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-02-16 22:48:13', '2022-02-16 23:04:49', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-02-16 22:48:13', '2022-02-16 23:04:49', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-02-16 22:48:13', '2022-02-16 23:04:49', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 5, '2022-02-16 22:48:13', '2022-02-16 23:05:01', 'voyager.settings.index', NULL),
	(11, 1, 'Deseos', '', '_self', NULL, NULL, NULL, 7, '2022-02-16 22:53:17', '2022-02-16 23:04:49', 'voyager.deseos.index', NULL),
	(12, 1, 'Cursos', '', '_self', NULL, NULL, NULL, 8, '2022-02-16 23:00:15', '2022-02-16 23:04:49', 'voyager.cursos.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.migrations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_02_16_115425_create_cursos_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2016_01_01_000000_add_voyager_user_fields', 1),
	(5, '2016_01_01_000000_create_data_types_table', 1),
	(6, '2016_05_19_173453_create_menu_table', 1),
	(7, '2016_10_21_190000_create_roles_table', 1),
	(8, '2016_10_21_190000_create_settings_table', 1),
	(9, '2016_11_30_135954_create_permission_table', 1),
	(10, '2016_11_30_141208_create_permission_role_table', 1),
	(11, '2016_12_26_201236_data_types__add__server_side', 1),
	(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(13, '2017_01_14_005015_create_translations_table', 1),
	(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(18, '2017_08_05_000000_add_group_to_settings_table', 1),
	(19, '2017_11_26_013050_add_user_role_relationship', 1),
	(20, '2017_11_26_015000_create_user_roles_table', 1),
	(21, '2018_03_11_000000_add_user_settings', 1),
	(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(23, '2018_03_16_000000_make_settings_value_nullable', 1),
	(24, '2019_08_19_000000_create_failed_jobs_table', 1),
	(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(26, '2022_02_16_120533_create_deseos_table', 1),
	(27, '2022_02_16_124941_create_valoracion_deseos_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
REPLACE INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2022-02-16 22:48:13', '2022-02-16 22:48:13'),
	(2, 'browse_bread', NULL, '2022-02-16 22:48:13', '2022-02-16 22:48:13'),
	(3, 'browse_database', NULL, '2022-02-16 22:48:13', '2022-02-16 22:48:13'),
	(4, 'browse_media', NULL, '2022-02-16 22:48:13', '2022-02-16 22:48:13'),
	(5, 'browse_compass', NULL, '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(6, 'browse_menus', 'menus', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(7, 'read_menus', 'menus', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(8, 'edit_menus', 'menus', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(9, 'add_menus', 'menus', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(10, 'delete_menus', 'menus', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(11, 'browse_roles', 'roles', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(12, 'read_roles', 'roles', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(13, 'edit_roles', 'roles', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(14, 'add_roles', 'roles', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(15, 'delete_roles', 'roles', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(16, 'browse_users', 'users', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(17, 'read_users', 'users', '2022-02-16 22:48:14', '2022-02-16 22:48:14'),
	(18, 'edit_users', 'users', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(19, 'add_users', 'users', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(20, 'delete_users', 'users', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(21, 'browse_settings', 'settings', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(22, 'read_settings', 'settings', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(23, 'edit_settings', 'settings', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(24, 'add_settings', 'settings', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(25, 'delete_settings', 'settings', '2022-02-16 22:48:15', '2022-02-16 22:48:15'),
	(26, 'browse_deseos', 'deseos', '2022-02-16 22:53:17', '2022-02-16 22:53:17'),
	(27, 'read_deseos', 'deseos', '2022-02-16 22:53:17', '2022-02-16 22:53:17'),
	(28, 'edit_deseos', 'deseos', '2022-02-16 22:53:17', '2022-02-16 22:53:17'),
	(29, 'add_deseos', 'deseos', '2022-02-16 22:53:17', '2022-02-16 22:53:17'),
	(30, 'delete_deseos', 'deseos', '2022-02-16 22:53:17', '2022-02-16 22:53:17'),
	(31, 'browse_cursos', 'cursos', '2022-02-16 23:00:15', '2022-02-16 23:00:15'),
	(32, 'read_cursos', 'cursos', '2022-02-16 23:00:15', '2022-02-16 23:00:15'),
	(33, 'edit_cursos', 'cursos', '2022-02-16 23:00:15', '2022-02-16 23:00:15'),
	(34, 'add_cursos', 'cursos', '2022-02-16 23:00:15', '2022-02-16 23:00:15'),
	(35, 'delete_cursos', 'cursos', '2022-02-16 23:00:15', '2022-02-16 23:00:15');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.permission_role: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
REPLACE INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2022-02-16 22:48:13', '2022-02-16 22:48:13'),
	(2, 'user', 'Normal User', '2022-02-16 22:48:13', '2022-02-16 22:48:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.translations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curso_id` bigint(20) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_curso_id_foreign` (`curso_id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `role_id`, `name`, `dni`, `email`, `avatar`, `email_verified_at`, `password`, `curso_id`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'jorge', NULL, 'jordioni1705@gmail.com', 'users/default.png', NULL, '$2y$10$IneIvWLmi3OPqdO86LWxP.6mAIzD7HWf4dTd59poN4T9hgiY.pARq', NULL, NULL, NULL, '2022-02-16 22:49:31', '2022-02-16 22:49:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.user_roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Volcando estructura para tabla kalpataru_jorge.valoracion_deseos
CREATE TABLE IF NOT EXISTS `valoracion_deseos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `deseo_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `valoracion_deseos_user_id_foreign` (`user_id`),
  KEY `valoracion_deseos_deseo_id_foreign` (`deseo_id`),
  CONSTRAINT `valoracion_deseos_deseo_id_foreign` FOREIGN KEY (`deseo_id`) REFERENCES `deseos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `valoracion_deseos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla kalpataru_jorge.valoracion_deseos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `valoracion_deseos` DISABLE KEYS */;
REPLACE INTO `valoracion_deseos` (`id`, `user_id`, `deseo_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, '2022-02-20 20:30:43', '2022-02-20 20:30:44');
/*!40000 ALTER TABLE `valoracion_deseos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
