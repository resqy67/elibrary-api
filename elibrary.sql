-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for elibrary
CREATE DATABASE IF NOT EXISTS `elibrary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `elibrary`;

-- Dumping structure for table elibrary.admin_permissions
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_parameters` json DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.admin_permissions: ~69 rows (approximately)
INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.105000', '2024-05-16 20:56:09.105000', NULL, NULL),
	(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.112000', '2024-05-16 20:56:09.112000', NULL, NULL),
	(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.116000', '2024-05-16 20:56:09.116000', NULL, NULL),
	(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.120000', '2024-05-16 20:56:09.120000', NULL, NULL),
	(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.124000', '2024-05-16 20:56:09.124000', NULL, NULL),
	(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.128000', '2024-05-16 20:56:09.128000', NULL, NULL),
	(7, 'plugin::upload.read', '{}', NULL, '{}', '["admin::is-creator"]', '2024-05-16 20:56:09.132000', '2024-05-16 20:56:09.132000', NULL, NULL),
	(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.137000', '2024-05-16 20:56:09.137000', NULL, NULL),
	(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.142000', '2024-05-16 20:56:09.142000', NULL, NULL),
	(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '["admin::is-creator"]', '2024-05-16 20:56:09.146000', '2024-05-16 20:56:09.146000', NULL, NULL),
	(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.150000', '2024-05-16 20:56:09.150000', NULL, NULL),
	(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.154000', '2024-05-16 20:56:09.154000', NULL, NULL),
	(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-05-16 20:56:09.183000', '2024-05-16 20:56:09.183000', NULL, NULL),
	(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.187000', '2024-05-16 20:56:09.187000', NULL, NULL),
	(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.191000', '2024-05-16 20:56:09.191000', NULL, NULL),
	(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.195000', '2024-05-16 20:56:09.195000', NULL, NULL),
	(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.199000', '2024-05-16 20:56:09.199000', NULL, NULL),
	(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.202000', '2024-05-16 20:56:09.202000', NULL, NULL),
	(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.206000', '2024-05-16 20:56:09.206000', NULL, NULL),
	(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.210000', '2024-05-16 20:56:09.210000', NULL, NULL),
	(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.214000', '2024-05-16 20:56:09.214000', NULL, NULL),
	(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.218000', '2024-05-16 20:56:09.218000', NULL, NULL),
	(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.222000', '2024-05-16 20:56:09.222000', NULL, NULL),
	(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.225000', '2024-05-16 20:56:09.225000', NULL, NULL),
	(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.229000', '2024-05-16 20:56:09.229000', NULL, NULL),
	(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.232000', '2024-05-16 20:56:09.232000', NULL, NULL),
	(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.236000', '2024-05-16 20:56:09.236000', NULL, NULL),
	(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.240000', '2024-05-16 20:56:09.240000', NULL, NULL),
	(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.244000', '2024-05-16 20:56:09.244000', NULL, NULL),
	(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.248000', '2024-05-16 20:56:09.248000', NULL, NULL),
	(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.252000', '2024-05-16 20:56:09.252000', NULL, NULL),
	(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.255000', '2024-05-16 20:56:09.255000', NULL, NULL),
	(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.259000', '2024-05-16 20:56:09.259000', NULL, NULL),
	(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.263000', '2024-05-16 20:56:09.263000', NULL, NULL),
	(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.267000', '2024-05-16 20:56:09.267000', NULL, NULL),
	(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.271000', '2024-05-16 20:56:09.271000', NULL, NULL),
	(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.276000', '2024-05-16 20:56:09.276000', NULL, NULL),
	(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.280000', '2024-05-16 20:56:09.280000', NULL, NULL),
	(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.283000', '2024-05-16 20:56:09.283000', NULL, NULL),
	(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.287000', '2024-05-16 20:56:09.287000', NULL, NULL),
	(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.291000', '2024-05-16 20:56:09.291000', NULL, NULL),
	(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.295000', '2024-05-16 20:56:09.295000', NULL, NULL),
	(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.300000', '2024-05-16 20:56:09.300000', NULL, NULL),
	(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.304000', '2024-05-16 20:56:09.304000', NULL, NULL),
	(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.308000', '2024-05-16 20:56:09.308000', NULL, NULL),
	(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.312000', '2024-05-16 20:56:09.312000', NULL, NULL),
	(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.316000', '2024-05-16 20:56:09.316000', NULL, NULL),
	(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.320000', '2024-05-16 20:56:09.320000', NULL, NULL),
	(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.323000', '2024-05-16 20:56:09.323000', NULL, NULL),
	(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.327000', '2024-05-16 20:56:09.327000', NULL, NULL),
	(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.331000', '2024-05-16 20:56:09.331000', NULL, NULL),
	(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.335000', '2024-05-16 20:56:09.335000', NULL, NULL),
	(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.339000', '2024-05-16 20:56:09.339000', NULL, NULL),
	(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.343000', '2024-05-16 20:56:09.343000', NULL, NULL),
	(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.347000', '2024-05-16 20:56:09.347000', NULL, NULL),
	(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.350000', '2024-05-16 20:56:09.350000', NULL, NULL),
	(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.354000', '2024-05-16 20:56:09.354000', NULL, NULL),
	(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.358000', '2024-05-16 20:56:09.358000', NULL, NULL),
	(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.361000', '2024-05-16 20:56:09.361000', NULL, NULL),
	(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.365000', '2024-05-16 20:56:09.365000', NULL, NULL),
	(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.369000', '2024-05-16 20:56:09.369000', NULL, NULL),
	(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.373000', '2024-05-16 20:56:09.373000', NULL, NULL),
	(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.377000', '2024-05-16 20:56:09.377000', NULL, NULL),
	(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.381000', '2024-05-16 20:56:09.381000', NULL, NULL),
	(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.385000', '2024-05-16 20:56:09.385000', NULL, NULL),
	(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-05-16 20:56:09.389000', '2024-05-16 20:56:09.389000', NULL, NULL),
	(73, 'plugin::content-manager.explorer.delete', '{}', 'api::book-library.book-library', '{}', '[]', '2024-05-16 21:31:21.461000', '2024-05-16 21:31:21.461000', NULL, NULL),
	(74, 'plugin::content-manager.explorer.publish', '{}', 'api::book-library.book-library', '{}', '[]', '2024-05-16 21:31:21.465000', '2024-05-16 21:31:21.465000', NULL, NULL),
	(78, 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-05-16 21:37:26.781000', '2024-05-16 21:37:26.781000', NULL, NULL),
	(79, 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-05-16 21:37:26.785000', '2024-05-16 21:37:26.785000', NULL, NULL),
	(101, 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{"fields": ["name_category"]}', '[]', '2024-05-16 22:04:21.381000', '2024-05-16 22:04:21.381000', NULL, NULL),
	(103, 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{"fields": ["name_category"]}', '[]', '2024-05-16 22:04:21.393000', '2024-05-16 22:04:21.393000', NULL, NULL),
	(105, 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{"fields": ["name_category"]}', '[]', '2024-05-16 22:04:21.402000', '2024-05-16 22:04:21.402000', NULL, NULL),
	(109, 'plugin::documentation.read', '{}', NULL, '{}', '[]', '2024-05-16 22:07:59.264000', '2024-05-16 22:07:59.264000', NULL, NULL),
	(110, 'plugin::documentation.settings.update', '{}', NULL, '{}', '[]', '2024-05-16 22:07:59.270000', '2024-05-16 22:07:59.270000', NULL, NULL),
	(111, 'plugin::documentation.settings.regenerate', '{}', NULL, '{}', '[]', '2024-05-16 22:07:59.275000', '2024-05-16 22:07:59.275000', NULL, NULL),
	(112, 'plugin::documentation.settings.read', '{}', NULL, '{}', '[]', '2024-05-16 22:07:59.279000', '2024-05-16 22:07:59.279000', NULL, NULL),
	(116, 'plugin::content-manager.explorer.delete', '{}', 'api::borrow-book.borrow-book', '{}', '[]', '2024-05-16 22:37:36.207000', '2024-05-16 22:37:36.207000', NULL, NULL),
	(117, 'plugin::content-manager.explorer.publish', '{}', 'api::borrow-book.borrow-book', '{}', '[]', '2024-05-16 22:37:36.212000', '2024-05-16 22:37:36.212000', NULL, NULL),
	(121, 'plugin::content-manager.explorer.create', '{}', 'api::book-library.book-library', '{"fields": ["name_book", "description", "creator", "publisher", "file_book", "is_accepted", "uuid", "categories", "borrow_book"]}', '[]', '2024-05-16 22:38:29.146000', '2024-05-16 22:38:29.146000', NULL, NULL),
	(123, 'plugin::content-manager.explorer.read', '{}', 'api::book-library.book-library', '{"fields": ["name_book", "description", "creator", "publisher", "file_book", "is_accepted", "uuid", "categories", "borrow_book"]}', '[]', '2024-05-16 22:38:29.156000', '2024-05-16 22:38:29.156000', NULL, NULL),
	(125, 'plugin::content-manager.explorer.update', '{}', 'api::book-library.book-library', '{"fields": ["name_book", "description", "creator", "publisher", "file_book", "is_accepted", "uuid", "categories", "borrow_book"]}', '[]', '2024-05-16 22:38:29.164000', '2024-05-16 22:38:29.164000', NULL, NULL),
	(142, 'plugin::content-manager.explorer.create', '{}', 'api::borrow-book.borrow-book', '{"fields": ["borrow_date", "book_libraries", "users_permissions_user", "status"]}', '[]', '2024-05-16 22:42:58.626000', '2024-05-16 22:42:58.626000', NULL, NULL),
	(143, 'plugin::content-manager.explorer.read', '{}', 'api::borrow-book.borrow-book', '{"fields": ["borrow_date", "book_libraries", "users_permissions_user", "status"]}', '[]', '2024-05-16 22:42:58.631000', '2024-05-16 22:42:58.631000', NULL, NULL),
	(144, 'plugin::content-manager.explorer.update', '{}', 'api::borrow-book.borrow-book', '{"fields": ["borrow_date", "book_libraries", "users_permissions_user", "status"]}', '[]', '2024-05-16 22:42:58.635000', '2024-05-16 22:42:58.635000', NULL, NULL),
	(148, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "photo", "uuid", "borrow_books"]}', '[]', '2024-05-16 22:45:33.870000', '2024-05-16 22:45:33.870000', NULL, NULL),
	(149, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "photo", "uuid", "borrow_books"]}', '[]', '2024-05-16 22:45:33.875000', '2024-05-16 22:45:33.875000', NULL, NULL),
	(150, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "photo", "uuid", "borrow_books"]}', '[]', '2024-05-16 22:45:33.879000', '2024-05-16 22:45:33.879000', NULL, NULL);

-- Dumping structure for table elibrary.admin_permissions_role_links
CREATE TABLE IF NOT EXISTS `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.admin_permissions_role_links: ~69 rows (approximately)
INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 1, 2, 1),
	(2, 2, 2, 2),
	(3, 3, 2, 3),
	(4, 4, 2, 4),
	(5, 5, 2, 5),
	(6, 6, 2, 6),
	(7, 7, 3, 1),
	(8, 8, 3, 2),
	(9, 9, 3, 3),
	(10, 10, 3, 4),
	(11, 11, 3, 5),
	(12, 12, 3, 6),
	(16, 16, 1, 4),
	(17, 17, 1, 5),
	(18, 18, 1, 6),
	(19, 19, 1, 7),
	(20, 20, 1, 8),
	(21, 21, 1, 9),
	(22, 22, 1, 10),
	(23, 23, 1, 11),
	(24, 24, 1, 12),
	(25, 25, 1, 13),
	(26, 26, 1, 14),
	(27, 27, 1, 15),
	(28, 28, 1, 16),
	(29, 29, 1, 17),
	(30, 30, 1, 18),
	(31, 31, 1, 19),
	(32, 32, 1, 20),
	(33, 33, 1, 21),
	(34, 34, 1, 22),
	(35, 35, 1, 23),
	(36, 36, 1, 24),
	(37, 37, 1, 25),
	(38, 38, 1, 26),
	(39, 39, 1, 27),
	(40, 40, 1, 28),
	(41, 41, 1, 29),
	(42, 42, 1, 30),
	(43, 43, 1, 31),
	(44, 44, 1, 32),
	(45, 45, 1, 33),
	(46, 46, 1, 34),
	(47, 47, 1, 35),
	(48, 48, 1, 36),
	(49, 49, 1, 37),
	(50, 50, 1, 38),
	(51, 51, 1, 39),
	(52, 52, 1, 40),
	(53, 53, 1, 41),
	(54, 54, 1, 42),
	(55, 55, 1, 43),
	(56, 56, 1, 44),
	(57, 57, 1, 45),
	(58, 58, 1, 46),
	(59, 59, 1, 47),
	(60, 60, 1, 48),
	(61, 61, 1, 49),
	(62, 62, 1, 50),
	(63, 63, 1, 51),
	(64, 64, 1, 52),
	(65, 65, 1, 53),
	(66, 66, 1, 54),
	(67, 67, 1, 55),
	(68, 68, 1, 56),
	(69, 69, 1, 57),
	(73, 73, 1, 61),
	(74, 74, 1, 62),
	(78, 78, 1, 66),
	(79, 79, 1, 67),
	(101, 101, 1, 89),
	(103, 103, 1, 91),
	(105, 105, 1, 93),
	(109, 109, 1, 97),
	(110, 110, 1, 98),
	(111, 111, 1, 99),
	(112, 112, 1, 100),
	(116, 116, 1, 104),
	(117, 117, 1, 105),
	(121, 121, 1, 109),
	(123, 123, 1, 111),
	(125, 125, 1, 113),
	(142, 142, 1, 120),
	(143, 143, 1, 121),
	(144, 144, 1, 122),
	(148, 148, 1, 123),
	(149, 149, 1, 124),
	(150, 150, 1, 125);

-- Dumping structure for table elibrary.admin_roles
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.admin_roles: ~3 rows (approximately)
INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-05-16 20:56:09.092000', '2024-05-16 20:56:09.092000', NULL, NULL),
	(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-05-16 20:56:09.099000', '2024-05-16 20:56:09.099000', NULL, NULL),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-05-16 20:56:09.102000', '2024-05-16 20:56:09.102000', NULL, NULL);

-- Dumping structure for table elibrary.admin_users
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.admin_users: ~1 rows (approximately)
INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'admin', 'library', NULL, 'resqyhedy@gmail.com', '$2a$10$r5WTZIKLeEnWRszdR5ziI.eSPGEM3a46RwE9JGX9SM3gz8w5Mmeuu', NULL, NULL, 1, 0, NULL, '2024-05-16 20:56:43.128000', '2024-05-16 20:56:43.128000', NULL, NULL);

-- Dumping structure for table elibrary.admin_users_roles_links
CREATE TABLE IF NOT EXISTS `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` double unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.admin_users_roles_links: ~1 rows (approximately)
INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
	(1, 1, 1, 1, 1);

-- Dumping structure for table elibrary.book_libraries
CREATE TABLE IF NOT EXISTS `book_libraries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name_book` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_accepted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_libraries_uuid_unique` (`uuid`),
  KEY `book_libraries_created_by_id_fk` (`created_by_id`),
  KEY `book_libraries_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `book_libraries_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `book_libraries_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.book_libraries: ~2 rows (approximately)
INSERT INTO `book_libraries` (`id`, `name_book`, `description`, `creator`, `publisher`, `is_accepted`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `uuid`) VALUES
	(2, 'buku1', 'ini adalah buku pertamaku', 'udin', 'pt adayani', 1, '2024-05-16 22:06:07.259000', '2024-05-16 22:06:07.974000', '2024-05-16 22:06:07.971000', 1, 1, '42d6d154-568a-4724-bb22-b9104ecba9a2'),
	(3, 'buku2', 'ini adalah buku ke 2', 'udin', 'pt adayani', 1, '2024-05-16 22:06:26.428000', '2024-05-16 22:06:27.269000', '2024-05-16 22:06:27.266000', 1, 1, '59483992-e44a-4537-8441-a889ce1c5aa8');

-- Dumping structure for table elibrary.book_libraries_borrow_book_links
CREATE TABLE IF NOT EXISTS `book_libraries_borrow_book_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_library_id` int unsigned DEFAULT NULL,
  `borrow_book_id` int unsigned DEFAULT NULL,
  `book_library_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_libraries_borrow_book_links_unique` (`book_library_id`,`borrow_book_id`),
  KEY `book_libraries_borrow_book_links_fk` (`book_library_id`),
  KEY `book_libraries_borrow_book_links_inv_fk` (`borrow_book_id`),
  KEY `book_libraries_borrow_book_links_order_inv_fk` (`book_library_order`),
  CONSTRAINT `book_libraries_borrow_book_links_fk` FOREIGN KEY (`book_library_id`) REFERENCES `book_libraries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `book_libraries_borrow_book_links_inv_fk` FOREIGN KEY (`borrow_book_id`) REFERENCES `borrow_books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.book_libraries_borrow_book_links: ~0 rows (approximately)
INSERT INTO `book_libraries_borrow_book_links` (`id`, `book_library_id`, `borrow_book_id`, `book_library_order`) VALUES
	(1, 2, 1, 0);

-- Dumping structure for table elibrary.book_libraries_categories_links
CREATE TABLE IF NOT EXISTS `book_libraries_categories_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_library_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `category_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_libraries_categories_links_unique` (`book_library_id`,`category_id`),
  KEY `book_libraries_categories_links_fk` (`book_library_id`),
  KEY `book_libraries_categories_links_inv_fk` (`category_id`),
  KEY `book_libraries_categories_links_order_fk` (`category_order`),
  CONSTRAINT `book_libraries_categories_links_fk` FOREIGN KEY (`book_library_id`) REFERENCES `book_libraries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `book_libraries_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.book_libraries_categories_links: ~2 rows (approximately)
INSERT INTO `book_libraries_categories_links` (`id`, `book_library_id`, `category_id`, `category_order`) VALUES
	(1, 2, 1, 0),
	(2, 3, 2, 1),
	(3, 3, 1, 0);

-- Dumping structure for table elibrary.borrow_books
CREATE TABLE IF NOT EXISTS `borrow_books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `borrow_date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borrow_books_created_by_id_fk` (`created_by_id`),
  KEY `borrow_books_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `borrow_books_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `borrow_books_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.borrow_books: ~1 rows (approximately)
INSERT INTO `borrow_books` (`id`, `borrow_date`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `status`) VALUES
	(1, '2024-05-18', '2024-05-16 22:43:18.563000', '2024-05-16 22:43:22.404000', '2024-05-16 22:43:22.400000', 1, 1, 1);

-- Dumping structure for table elibrary.borrow_books_users_permissions_user_links
CREATE TABLE IF NOT EXISTS `borrow_books_users_permissions_user_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `borrow_book_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `borrow_book_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `borrow_books_users_permissions_user_links_unique` (`borrow_book_id`,`user_id`),
  KEY `borrow_books_users_permissions_user_links_fk` (`borrow_book_id`),
  KEY `borrow_books_users_permissions_user_links_inv_fk` (`user_id`),
  KEY `borrow_books_users_permissions_user_links_order_inv_fk` (`borrow_book_order`),
  CONSTRAINT `borrow_books_users_permissions_user_links_fk` FOREIGN KEY (`borrow_book_id`) REFERENCES `borrow_books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `borrow_books_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.borrow_books_users_permissions_user_links: ~1 rows (approximately)
INSERT INTO `borrow_books_users_permissions_user_links` (`id`, `borrow_book_id`, `user_id`, `borrow_book_order`) VALUES
	(1, 1, 1, 1);

-- Dumping structure for table elibrary.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name_category` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_created_by_id_fk` (`created_by_id`),
  KEY `categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.categories: ~2 rows (approximately)
INSERT INTO `categories` (`id`, `name_category`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'fantasy', '2024-05-16 22:05:23.054000', '2024-05-16 22:05:23.679000', '2024-05-16 22:05:23.677000', 1, 1),
	(2, 'pengembangan diri', '2024-05-16 22:05:33.046000', '2024-05-16 22:05:33.558000', '2024-05-16 22:05:33.556000', 1, 1),
	(3, 'komik', '2024-05-16 22:05:45.190000', '2024-05-16 22:05:45.688000', '2024-05-16 22:05:45.686000', 1, 1);

-- Dumping structure for table elibrary.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.files: ~0 rows (approximately)

-- Dumping structure for table elibrary.files_folder_links
CREATE TABLE IF NOT EXISTS `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.files_folder_links: ~0 rows (approximately)

-- Dumping structure for table elibrary.files_related_morphs
CREATE TABLE IF NOT EXISTS `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  KEY `files_related_morphs_order_index` (`order`),
  KEY `files_related_morphs_id_column_index` (`related_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.files_related_morphs: ~0 rows (approximately)

-- Dumping structure for table elibrary.i18n_locale
CREATE TABLE IF NOT EXISTS `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.i18n_locale: ~1 rows (approximately)
INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'English (en)', 'en', '2024-05-16 20:56:09.071000', '2024-05-16 20:56:09.071000', NULL, NULL);

-- Dumping structure for table elibrary.strapi_api_tokens
CREATE TABLE IF NOT EXISTS `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_api_tokens: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_api_token_permissions
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_api_token_permissions: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_api_token_permissions_token_links
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_api_token_permissions_token_links: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_core_store_settings
CREATE TABLE IF NOT EXISTS `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_core_store_settings: ~24 rows (approximately)
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'strapi_content_types_schema', '{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"api::book-library.book-library":{"kind":"collectionType","collectionName":"book_libraries","info":{"singularName":"book-library","pluralName":"book-libraries","displayName":"book-library","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_book":{"type":"string","required":false},"description":{"type":"string"},"creator":{"type":"string"},"publisher":{"type":"string"},"file_book":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","videos","audios","files"]},"is_accepted":{"type":"boolean","default":true},"uuid":{"type":"uid","customField":"plugin::strapi-advanced-uuid.uuid"},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category"},"borrow_book":{"type":"relation","relation":"manyToOne","target":"api::borrow-book.borrow-book","inversedBy":"book_libraries"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"book_libraries","info":{"singularName":"book-library","pluralName":"book-libraries","displayName":"book-library","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_book":{"type":"string","required":false},"description":{"type":"string"},"creator":{"type":"string"},"publisher":{"type":"string"},"file_book":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","videos","audios","files"]},"is_accepted":{"type":"boolean","default":true},"uuid":{"type":"customField","customField":"plugin::strapi-advanced-uuid.uuid"},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category"},"borrow_book":{"type":"relation","relation":"manyToOne","target":"api::borrow-book.borrow-book","inversedBy":"book_libraries"}},"kind":"collectionType"},"modelType":"contentType","modelName":"book-library","connection":"default","uid":"api::book-library.book-library","apiName":"book-library","globalId":"BookLibrary","actions":{},"lifecycles":{}},"api::borrow-book.borrow-book":{"kind":"collectionType","collectionName":"borrow_books","info":{"singularName":"borrow-book","pluralName":"borrow-books","displayName":"Borrow_book","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"borrow_date":{"type":"date"},"book_libraries":{"type":"relation","relation":"oneToMany","target":"api::book-library.book-library","mappedBy":"borrow_book"},"users_permissions_user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"borrow_books"},"status":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"borrow_books","info":{"singularName":"borrow-book","pluralName":"borrow-books","displayName":"Borrow_book","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"borrow_date":{"type":"date"},"book_libraries":{"type":"relation","relation":"oneToMany","target":"api::book-library.book-library","mappedBy":"borrow_book"},"users_permissions_user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"borrow_books"},"status":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"borrow-book","connection":"default","uid":"api::borrow-book.borrow-book","apiName":"borrow-book","globalId":"BorrowBook","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_category":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_category":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"uuid":{"type":"uid","customField":"plugin::strapi-advanced-uuid.uuid"},"borrow_books":{"type":"relation","relation":"oneToMany","target":"api::borrow-book.borrow-book","mappedBy":"users_permissions_user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"uuid":{"type":"customField","customField":"plugin::strapi-advanced-uuid.uuid"},"borrow_books":{"type":"relation","relation":"oneToMany","target":"api::borrow-book.borrow-book","mappedBy":"users_permissions_user"}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"}}', 'object', NULL, NULL),
	(2, 'plugin_content_manager_configuration_content_types::admin::user', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}', 'object', NULL, NULL),
	(3, 'plugin_content_manager_configuration_content_types::admin::permission', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}', 'object', NULL, NULL),
	(4, 'plugin_content_manager_configuration_content_types::admin::role', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}', 'object', NULL, NULL),
	(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}', 'object', NULL, NULL),
	(6, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}', 'object', NULL, NULL),
	(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}', 'object', NULL, NULL),
	(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}', 'object', NULL, NULL),
	(9, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}', 'object', NULL, NULL),
	(10, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}', 'object', NULL, NULL),
	(11, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}', 'object', NULL, NULL),
	(12, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}', 'object', NULL, NULL),
	(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"uuid":{"edit":{"label":"uuid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uuid","searchable":true,"sortable":true}},"borrow_books":{"edit":{"label":"borrow_books","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"borrow_books","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"photo","size":6},{"name":"uuid","size":6}],[{"name":"borrow_books","size":6}]]},"uid":"plugin::users-permissions.user"}', 'object', NULL, NULL),
	(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}', 'object', NULL, NULL),
	(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}', 'object', NULL, NULL),
	(16, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}', 'object', NULL, NULL),
	(17, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}', 'object', NULL, NULL),
	(18, 'plugin_upload_view_configuration', '{"pageSize":10,"sort":"createdAt:DESC"}', 'object', NULL, NULL),
	(19, 'plugin_upload_metrics', '{"weeklySchedule":"8 1 21 * * 4","lastWeeklyUpdate":1715864468036}', 'object', NULL, NULL),
	(20, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}', 'object', NULL, NULL),
	(21, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', NULL, NULL),
	(22, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', NULL, NULL),
	(23, 'plugin_i18n_default_locale', '"en"', 'string', NULL, NULL),
	(24, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}', 'object', NULL, NULL),
	(25, 'plugin_content_manager_configuration_content_types::api::book-library.book-library', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name_book","defaultSortBy":"name_book","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name_book":{"edit":{"label":"name_book","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_book","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"creator":{"edit":{"label":"creator","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"creator","searchable":true,"sortable":true}},"publisher":{"edit":{"label":"publisher","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"publisher","searchable":true,"sortable":true}},"file_book":{"edit":{"label":"file_book","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file_book","searchable":false,"sortable":false}},"is_accepted":{"edit":{"label":"is_accepted","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_accepted","searchable":true,"sortable":true}},"uuid":{"edit":{"label":"uuid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uuid","searchable":true,"sortable":true}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_category"},"list":{"label":"categories","searchable":false,"sortable":false}},"borrow_book":{"edit":{"label":"borrow_book","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"borrow_book","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name_book","description","creator"],"edit":[[{"name":"name_book","size":6},{"name":"description","size":6}],[{"name":"creator","size":6},{"name":"publisher","size":6}],[{"name":"file_book","size":6},{"name":"is_accepted","size":4}],[{"name":"uuid","size":6},{"name":"categories","size":6}],[{"name":"borrow_book","size":6}]]},"uid":"api::book-library.book-library"}', 'object', NULL, NULL),
	(26, 'plugin_content_manager_configuration_content_types::api::category.category', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name_category","defaultSortBy":"name_category","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name_category":{"edit":{"label":"name_category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_category","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name_category","createdAt","updatedAt"],"edit":[[{"name":"name_category","size":6}]]},"uid":"api::category.category"}', 'object', NULL, NULL),
	(28, 'plugin_documentation_config', '{"restrictedAccess":false}', 'object', NULL, NULL),
	(29, 'plugin_content_manager_configuration_content_types::api::borrow-book.borrow-book', '{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"borrow_date":{"edit":{"label":"borrow_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"borrow_date","searchable":true,"sortable":true}},"book_libraries":{"edit":{"label":"book_libraries","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_book"},"list":{"label":"book_libraries","searchable":false,"sortable":false}},"users_permissions_user":{"edit":{"label":"users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users_permissions_user","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","borrow_date","createdAt","updatedAt"],"edit":[[{"name":"borrow_date","size":4},{"name":"book_libraries","size":6}],[{"name":"users_permissions_user","size":6},{"name":"status","size":4}]]},"uid":"api::borrow-book.borrow-book"}', 'object', NULL, NULL);

-- Dumping structure for table elibrary.strapi_database_schema
CREATE TABLE IF NOT EXISTS `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_database_schema: ~0 rows (approximately)
INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
	(19, '{"tables": [{"name": "strapi_core_store_settings", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "value", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "environment", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "tag", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}], "indexes": [], "foreignKeys": []}, {"name": "strapi_webhooks", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "url", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "headers", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "events", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "enabled", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}], "indexes": [], "foreignKeys": []}, {"name": "admin_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "action_parameters", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "subject", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "properties", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "conditions", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_users", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "firstname", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lastname", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "username", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "email", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "password", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "reset_password_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "registration_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "is_active", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "blocked", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "prefered_language", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_users_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_users_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_users_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_users_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_roles", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "code", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_roles_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_roles_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_roles_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_roles_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_api_tokens", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "access_key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "last_used_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "expires_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lifespan", "type": "bigInteger", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_tokens_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_api_tokens_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_api_tokens_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_api_tokens_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_api_token_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_token_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_api_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_api_token_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_api_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_tokens", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "access_key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "last_used_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "expires_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lifespan", "type": "bigInteger", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_tokens_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_transfer_tokens_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_transfer_tokens_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_transfer_tokens_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_token_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_token_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_transfer_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_transfer_token_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_transfer_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "book_libraries", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name_book", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "creator", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "publisher", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "is_accepted", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "uuid", "type": "string", "unique": true, "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "book_libraries_uuid_unique", "type": "unique", "columns": ["uuid"]}, {"name": "book_libraries_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "book_libraries_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "book_libraries_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "book_libraries_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "borrow_books", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "borrow_date", "type": "date", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "status", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "borrow_books_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "borrow_books_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "borrow_books_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "borrow_books_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "categories", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name_category", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "categories_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "categories_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "categories_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "categories_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "files", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "alternative_text", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "caption", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "width", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "height", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "formats", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "hash", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "ext", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "mime", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [10, 2], "name": "size", "type": "decimal", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "url", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "preview_url", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider_metadata", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_path", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_files_folder_path_index", "type": null, "columns": ["folder_path"]}, {"name": "upload_files_created_at_index", "type": null, "columns": ["created_at"]}, {"name": "upload_files_updated_at_index", "type": null, "columns": ["updated_at"]}, {"name": "upload_files_name_index", "type": null, "columns": ["name"]}, {"name": "upload_files_size_index", "type": null, "columns": ["size"]}, {"name": "upload_files_ext_index", "type": null, "columns": ["ext"]}, {"name": "files_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "files_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "files_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "files_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "upload_folders", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "path_id", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "path", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_folders_path_id_index", "type": "unique", "columns": ["path_id"]}, {"name": "upload_folders_path_index", "type": "unique", "columns": ["path"]}, {"name": "upload_folders_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "upload_folders_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "upload_folders_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "upload_folders_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_releases", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "released_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "scheduled_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "timezone", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "status", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_releases_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_releases_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_releases_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_releases_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_release_actions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "target_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "target_type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "content_type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "locale", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "is_entry_valid", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_release_actions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_release_actions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_release_actions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_release_actions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "i18n_locale", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "code", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "i18n_locale_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "i18n_locale_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "i18n_locale_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "i18n_locale_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_roles", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_roles_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_roles_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_roles_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_roles_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_users", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "username", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "email", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "password", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "reset_password_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "confirmation_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "confirmed", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "blocked", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "uuid", "type": "string", "unique": true, "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_users_uuid_unique", "type": "unique", "columns": ["uuid"]}, {"name": "up_users_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_users_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_users_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_users_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_permissions_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_permissions_role_links_fk", "columns": ["permission_id"]}, {"name": "admin_permissions_role_links_inv_fk", "columns": ["role_id"]}, {"name": "admin_permissions_role_links_unique", "type": "unique", "columns": ["permission_id", "role_id"]}, {"name": "admin_permissions_role_links_order_inv_fk", "columns": ["permission_order"]}], "foreignKeys": [{"name": "admin_permissions_role_links_fk", "columns": ["permission_id"], "onDelete": "CASCADE", "referencedTable": "admin_permissions", "referencedColumns": ["id"]}, {"name": "admin_permissions_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "admin_roles", "referencedColumns": ["id"]}]}, {"name": "admin_users_roles_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "user_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "user_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_users_roles_links_fk", "columns": ["user_id"]}, {"name": "admin_users_roles_links_inv_fk", "columns": ["role_id"]}, {"name": "admin_users_roles_links_unique", "type": "unique", "columns": ["user_id", "role_id"]}, {"name": "admin_users_roles_links_order_fk", "columns": ["role_order"]}, {"name": "admin_users_roles_links_order_inv_fk", "columns": ["user_order"]}], "foreignKeys": [{"name": "admin_users_roles_links_fk", "columns": ["user_id"], "onDelete": "CASCADE", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_users_roles_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "admin_roles", "referencedColumns": ["id"]}]}, {"name": "strapi_api_token_permissions_token_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "api_token_permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "api_token_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "api_token_permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_token_permissions_token_links_fk", "columns": ["api_token_permission_id"]}, {"name": "strapi_api_token_permissions_token_links_inv_fk", "columns": ["api_token_id"]}, {"name": "strapi_api_token_permissions_token_links_unique", "type": "unique", "columns": ["api_token_permission_id", "api_token_id"]}, {"name": "strapi_api_token_permissions_token_links_order_inv_fk", "columns": ["api_token_permission_order"]}], "foreignKeys": [{"name": "strapi_api_token_permissions_token_links_fk", "columns": ["api_token_permission_id"], "onDelete": "CASCADE", "referencedTable": "strapi_api_token_permissions", "referencedColumns": ["id"]}, {"name": "strapi_api_token_permissions_token_links_inv_fk", "columns": ["api_token_id"], "onDelete": "CASCADE", "referencedTable": "strapi_api_tokens", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_token_permissions_token_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "transfer_token_permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "transfer_token_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "transfer_token_permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_token_permissions_token_links_fk", "columns": ["transfer_token_permission_id"]}, {"name": "strapi_transfer_token_permissions_token_links_inv_fk", "columns": ["transfer_token_id"]}, {"name": "strapi_transfer_token_permissions_token_links_unique", "type": "unique", "columns": ["transfer_token_permission_id", "transfer_token_id"]}, {"name": "strapi_transfer_token_permissions_token_links_order_inv_fk", "columns": ["transfer_token_permission_order"]}], "foreignKeys": [{"name": "strapi_transfer_token_permissions_token_links_fk", "columns": ["transfer_token_permission_id"], "onDelete": "CASCADE", "referencedTable": "strapi_transfer_token_permissions", "referencedColumns": ["id"]}, {"name": "strapi_transfer_token_permissions_token_links_inv_fk", "columns": ["transfer_token_id"], "onDelete": "CASCADE", "referencedTable": "strapi_transfer_tokens", "referencedColumns": ["id"]}]}, {"name": "book_libraries_categories_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "book_library_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "book_libraries_categories_links_fk", "columns": ["book_library_id"]}, {"name": "book_libraries_categories_links_inv_fk", "columns": ["category_id"]}, {"name": "book_libraries_categories_links_unique", "type": "unique", "columns": ["book_library_id", "category_id"]}, {"name": "book_libraries_categories_links_order_fk", "columns": ["category_order"]}], "foreignKeys": [{"name": "book_libraries_categories_links_fk", "columns": ["book_library_id"], "onDelete": "CASCADE", "referencedTable": "book_libraries", "referencedColumns": ["id"]}, {"name": "book_libraries_categories_links_inv_fk", "columns": ["category_id"], "onDelete": "CASCADE", "referencedTable": "categories", "referencedColumns": ["id"]}]}, {"name": "book_libraries_borrow_book_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "book_library_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "borrow_book_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "book_library_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "book_libraries_borrow_book_links_fk", "columns": ["book_library_id"]}, {"name": "book_libraries_borrow_book_links_inv_fk", "columns": ["borrow_book_id"]}, {"name": "book_libraries_borrow_book_links_unique", "type": "unique", "columns": ["book_library_id", "borrow_book_id"]}, {"name": "book_libraries_borrow_book_links_order_inv_fk", "columns": ["book_library_order"]}], "foreignKeys": [{"name": "book_libraries_borrow_book_links_fk", "columns": ["book_library_id"], "onDelete": "CASCADE", "referencedTable": "book_libraries", "referencedColumns": ["id"]}, {"name": "book_libraries_borrow_book_links_inv_fk", "columns": ["borrow_book_id"], "onDelete": "CASCADE", "referencedTable": "borrow_books", "referencedColumns": ["id"]}]}, {"name": "borrow_books_users_permissions_user_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "borrow_book_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "user_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "borrow_book_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "borrow_books_users_permissions_user_links_fk", "columns": ["borrow_book_id"]}, {"name": "borrow_books_users_permissions_user_links_inv_fk", "columns": ["user_id"]}, {"name": "borrow_books_users_permissions_user_links_unique", "type": "unique", "columns": ["borrow_book_id", "user_id"]}, {"name": "borrow_books_users_permissions_user_links_order_inv_fk", "columns": ["borrow_book_order"]}], "foreignKeys": [{"name": "borrow_books_users_permissions_user_links_fk", "columns": ["borrow_book_id"], "onDelete": "CASCADE", "referencedTable": "borrow_books", "referencedColumns": ["id"]}, {"name": "borrow_books_users_permissions_user_links_inv_fk", "columns": ["user_id"], "onDelete": "CASCADE", "referencedTable": "up_users", "referencedColumns": ["id"]}]}, {"name": "files_related_morphs", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "file_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "related_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "related_type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "field", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "files_related_morphs_fk", "columns": ["file_id"]}, {"name": "files_related_morphs_order_index", "columns": ["order"]}, {"name": "files_related_morphs_id_column_index", "columns": ["related_id"]}], "foreignKeys": [{"name": "files_related_morphs_fk", "columns": ["file_id"], "onDelete": "CASCADE", "referencedTable": "files", "referencedColumns": ["id"]}]}, {"name": "files_folder_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "file_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "file_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "files_folder_links_fk", "columns": ["file_id"]}, {"name": "files_folder_links_inv_fk", "columns": ["folder_id"]}, {"name": "files_folder_links_unique", "type": "unique", "columns": ["file_id", "folder_id"]}, {"name": "files_folder_links_order_inv_fk", "columns": ["file_order"]}], "foreignKeys": [{"name": "files_folder_links_fk", "columns": ["file_id"], "onDelete": "CASCADE", "referencedTable": "files", "referencedColumns": ["id"]}, {"name": "files_folder_links_inv_fk", "columns": ["folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}]}, {"name": "upload_folders_parent_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "inv_folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_folders_parent_links_fk", "columns": ["folder_id"]}, {"name": "upload_folders_parent_links_inv_fk", "columns": ["inv_folder_id"]}, {"name": "upload_folders_parent_links_unique", "type": "unique", "columns": ["folder_id", "inv_folder_id"]}, {"name": "upload_folders_parent_links_order_inv_fk", "columns": ["folder_order"]}], "foreignKeys": [{"name": "upload_folders_parent_links_fk", "columns": ["folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}, {"name": "upload_folders_parent_links_inv_fk", "columns": ["inv_folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}]}, {"name": "strapi_release_actions_release_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "release_action_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "release_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "release_action_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_release_actions_release_links_fk", "columns": ["release_action_id"]}, {"name": "strapi_release_actions_release_links_inv_fk", "columns": ["release_id"]}, {"name": "strapi_release_actions_release_links_unique", "type": "unique", "columns": ["release_action_id", "release_id"]}, {"name": "strapi_release_actions_release_links_order_inv_fk", "columns": ["release_action_order"]}], "foreignKeys": [{"name": "strapi_release_actions_release_links_fk", "columns": ["release_action_id"], "onDelete": "CASCADE", "referencedTable": "strapi_release_actions", "referencedColumns": ["id"]}, {"name": "strapi_release_actions_release_links_inv_fk", "columns": ["release_id"], "onDelete": "CASCADE", "referencedTable": "strapi_releases", "referencedColumns": ["id"]}]}, {"name": "up_permissions_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_permissions_role_links_fk", "columns": ["permission_id"]}, {"name": "up_permissions_role_links_inv_fk", "columns": ["role_id"]}, {"name": "up_permissions_role_links_unique", "type": "unique", "columns": ["permission_id", "role_id"]}, {"name": "up_permissions_role_links_order_inv_fk", "columns": ["permission_order"]}], "foreignKeys": [{"name": "up_permissions_role_links_fk", "columns": ["permission_id"], "onDelete": "CASCADE", "referencedTable": "up_permissions", "referencedColumns": ["id"]}, {"name": "up_permissions_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "up_roles", "referencedColumns": ["id"]}]}, {"name": "up_users_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "user_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "user_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_users_role_links_fk", "columns": ["user_id"]}, {"name": "up_users_role_links_inv_fk", "columns": ["role_id"]}, {"name": "up_users_role_links_unique", "type": "unique", "columns": ["user_id", "role_id"]}, {"name": "up_users_role_links_order_inv_fk", "columns": ["user_order"]}], "foreignKeys": [{"name": "up_users_role_links_fk", "columns": ["user_id"], "onDelete": "CASCADE", "referencedTable": "up_users", "referencedColumns": ["id"]}, {"name": "up_users_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "up_roles", "referencedColumns": ["id"]}]}]}', '2024-05-16 22:45:34', '82a8513033769d40f785f931c20f8e0f');

-- Dumping structure for table elibrary.strapi_migrations
CREATE TABLE IF NOT EXISTS `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_migrations: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_releases
CREATE TABLE IF NOT EXISTS `strapi_releases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_releases: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_release_actions
CREATE TABLE IF NOT EXISTS `strapi_release_actions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_release_actions: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_release_actions_release_links
CREATE TABLE IF NOT EXISTS `strapi_release_actions_release_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `release_action_id` int unsigned DEFAULT NULL,
  `release_id` int unsigned DEFAULT NULL,
  `release_action_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`),
  CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_release_actions_release_links: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_transfer_tokens
CREATE TABLE IF NOT EXISTS `strapi_transfer_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_transfer_tokens: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_transfer_token_permissions
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_transfer_token_permissions: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_transfer_token_permissions_token_links
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `transfer_token_permission_id` int unsigned DEFAULT NULL,
  `transfer_token_id` int unsigned DEFAULT NULL,
  `transfer_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`),
  CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_transfer_token_permissions_token_links: ~0 rows (approximately)

-- Dumping structure for table elibrary.strapi_webhooks
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_520_ci,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.strapi_webhooks: ~0 rows (approximately)

-- Dumping structure for table elibrary.upload_folders
CREATE TABLE IF NOT EXISTS `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.upload_folders: ~0 rows (approximately)

-- Dumping structure for table elibrary.upload_folders_parent_links
CREATE TABLE IF NOT EXISTS `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.upload_folders_parent_links: ~0 rows (approximately)

-- Dumping structure for table elibrary.up_permissions
CREATE TABLE IF NOT EXISTS `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.up_permissions: ~9 rows (approximately)
INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::users-permissions.user.me', '2024-05-16 20:56:09.014000', '2024-05-16 20:56:09.014000', NULL, NULL),
	(2, 'plugin::users-permissions.auth.changePassword', '2024-05-16 20:56:09.014000', '2024-05-16 20:56:09.014000', NULL, NULL),
	(3, 'plugin::users-permissions.auth.callback', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(4, 'plugin::users-permissions.auth.connect', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(5, 'plugin::users-permissions.auth.forgotPassword', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(6, 'plugin::users-permissions.auth.resetPassword', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(7, 'plugin::users-permissions.auth.register', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(8, 'plugin::users-permissions.auth.emailConfirmation', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-05-16 20:56:09.055000', '2024-05-16 20:56:09.055000', NULL, NULL),
	(10, 'api::book-library.book-library.find', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(11, 'api::book-library.book-library.findOne', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(12, 'api::category.category.find', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(13, 'api::category.category.findOne', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(14, 'plugin::users-permissions.auth.callback', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(15, 'plugin::users-permissions.auth.changePassword', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(16, 'plugin::users-permissions.auth.resetPassword', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(17, 'plugin::users-permissions.auth.connect', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(18, 'plugin::users-permissions.auth.forgotPassword', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(19, 'plugin::users-permissions.auth.register', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(20, 'plugin::users-permissions.auth.emailConfirmation', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(21, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(22, 'plugin::users-permissions.user.update', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(23, 'plugin::users-permissions.user.find', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(24, 'plugin::users-permissions.user.findOne', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(25, 'plugin::users-permissions.user.me', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(26, 'plugin::users-permissions.role.findOne', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(27, 'plugin::users-permissions.role.find', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(28, 'plugin::users-permissions.permissions.getPermissions', '2024-05-16 22:00:57.490000', '2024-05-16 22:00:57.490000', NULL, NULL),
	(29, 'api::book-library.book-library.find', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(30, 'api::book-library.book-library.findOne', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(31, 'api::book-library.book-library.create', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(32, 'api::book-library.book-library.update', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(33, 'api::book-library.book-library.delete', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(34, 'api::category.category.find', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(35, 'api::category.category.findOne', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(36, 'api::category.category.create', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(37, 'api::category.category.update', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(38, 'api::category.category.delete', '2024-05-16 22:02:14.153000', '2024-05-16 22:02:14.153000', NULL, NULL),
	(44, 'plugin::email.email.send', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(45, 'plugin::upload.content-api.find', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(46, 'plugin::upload.content-api.findOne', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(47, 'plugin::upload.content-api.destroy', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(48, 'plugin::upload.content-api.upload', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(49, 'plugin::users-permissions.auth.callback', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(50, 'plugin::users-permissions.auth.changePassword', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(51, 'plugin::users-permissions.auth.resetPassword', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(52, 'plugin::users-permissions.auth.connect', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(53, 'plugin::users-permissions.auth.forgotPassword', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(54, 'plugin::users-permissions.auth.register', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(55, 'plugin::users-permissions.auth.emailConfirmation', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(56, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(57, 'plugin::users-permissions.user.create', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(58, 'plugin::users-permissions.user.update', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(59, 'plugin::users-permissions.user.find', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(60, 'plugin::users-permissions.user.findOne', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(61, 'plugin::users-permissions.user.count', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(62, 'plugin::users-permissions.user.destroy', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(63, 'plugin::users-permissions.user.me', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(64, 'plugin::users-permissions.role.createRole', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(65, 'plugin::users-permissions.role.findOne', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(66, 'plugin::users-permissions.role.find', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(67, 'plugin::users-permissions.role.updateRole', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(68, 'plugin::users-permissions.role.deleteRole', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(69, 'plugin::users-permissions.permissions.getPermissions', '2024-05-16 22:02:14.154000', '2024-05-16 22:02:14.154000', NULL, NULL),
	(70, 'api::borrow-book.borrow-book.find', '2024-05-16 22:46:12.541000', '2024-05-16 22:46:12.541000', NULL, NULL),
	(71, 'api::borrow-book.borrow-book.findOne', '2024-05-16 22:46:12.541000', '2024-05-16 22:46:12.541000', NULL, NULL),
	(72, 'api::borrow-book.borrow-book.create', '2024-05-16 22:46:12.541000', '2024-05-16 22:46:12.541000', NULL, NULL),
	(73, 'api::borrow-book.borrow-book.delete', '2024-05-16 22:46:12.541000', '2024-05-16 22:46:12.541000', NULL, NULL);

-- Dumping structure for table elibrary.up_permissions_role_links
CREATE TABLE IF NOT EXISTS `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.up_permissions_role_links: ~9 rows (approximately)
INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 2, 1, 1),
	(2, 1, 1, 1),
	(3, 3, 2, 1),
	(4, 4, 2, 1),
	(5, 9, 2, 2),
	(6, 8, 2, 2),
	(7, 5, 2, 2),
	(8, 6, 2, 2),
	(9, 7, 2, 2),
	(10, 10, 3, 1),
	(11, 11, 3, 1),
	(12, 12, 3, 1),
	(13, 13, 3, 1),
	(14, 14, 3, 1),
	(15, 15, 3, 1),
	(16, 22, 3, 1),
	(17, 16, 3, 1),
	(18, 18, 3, 1),
	(19, 21, 3, 1),
	(20, 23, 3, 2),
	(21, 19, 3, 2),
	(22, 20, 3, 2),
	(23, 17, 3, 2),
	(24, 24, 3, 2),
	(25, 25, 3, 2),
	(26, 26, 3, 2),
	(27, 27, 3, 3),
	(28, 28, 3, 3),
	(29, 29, 4, 1),
	(30, 30, 4, 1),
	(31, 34, 4, 1),
	(32, 31, 4, 1),
	(33, 32, 4, 1),
	(34, 33, 4, 1),
	(35, 35, 4, 1),
	(37, 37, 4, 2),
	(39, 36, 4, 2),
	(40, 38, 4, 2),
	(43, 44, 4, 3),
	(45, 45, 4, 3),
	(46, 46, 4, 3),
	(47, 47, 4, 4),
	(48, 50, 4, 4),
	(49, 48, 4, 4),
	(50, 49, 4, 4),
	(51, 53, 4, 4),
	(52, 52, 4, 4),
	(53, 51, 4, 4),
	(54, 54, 4, 4),
	(55, 55, 4, 4),
	(56, 56, 4, 5),
	(57, 57, 4, 5),
	(58, 58, 4, 5),
	(59, 61, 4, 5),
	(60, 60, 4, 5),
	(61, 59, 4, 5),
	(62, 64, 4, 5),
	(63, 62, 4, 6),
	(64, 65, 4, 6),
	(65, 63, 4, 6),
	(66, 67, 4, 6),
	(67, 66, 4, 6),
	(68, 68, 4, 6),
	(69, 69, 4, 7),
	(70, 70, 3, 4),
	(71, 71, 3, 4),
	(72, 72, 3, 4),
	(73, 73, 3, 5);

-- Dumping structure for table elibrary.up_roles
CREATE TABLE IF NOT EXISTS `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.up_roles: ~2 rows (approximately)
INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-05-16 20:56:09.005000', '2024-05-16 20:56:09.005000', NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2024-05-16 20:56:09.008000', '2024-05-16 20:56:09.008000', NULL, NULL),
	(3, 'siswa', 'ini untuk siswa', 'siswa', '2024-05-16 22:00:57.485000', '2024-05-16 22:46:12.535000', NULL, NULL),
	(4, 'Admin', 'ini untuk user Admin', 'admin', '2024-05-16 22:02:14.150000', '2024-05-16 22:02:14.150000', NULL, NULL);

-- Dumping structure for table elibrary.up_users
CREATE TABLE IF NOT EXISTS `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_uuid_unique` (`uuid`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.up_users: ~0 rows (approximately)
INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `uuid`) VALUES
	(1, 'user1', 'user1@mail.com', 'local', '$2a$10$bgr2nzg3zcXjIyAII8Z0u.N1caLjiEiRbPMTqyH1ECUtlgiz/0H0.', NULL, NULL, 0, 0, '2024-05-16 22:02:48.135000', '2024-05-16 22:02:48.135000', 1, 1, '6da76fb2-7eb7-43af-a04d-27892fe19444'),
	(2, 'admin', 'admin@mail.com', 'local', '$2a$10$t9Hpz4TD2rQFjtbSAd9D.OZosruD08Q5NtObcpcovbWrCaxdGykyq', NULL, NULL, 0, 0, '2024-05-16 22:03:02.722000', '2024-05-16 22:03:02.722000', 1, 1, 'fb45b39a-4418-4d9c-978d-c40f746702e6');

-- Dumping structure for table elibrary.up_users_role_links
CREATE TABLE IF NOT EXISTS `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table elibrary.up_users_role_links: ~0 rows (approximately)
INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
	(1, 1, 3, 1),
	(2, 2, 4, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
