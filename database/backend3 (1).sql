-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Ağu 2026, 14:17:44
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `backend3`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `colors`
--

INSERT INTO `colors` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'red', '2026-08-14 09:41:50', '2026-08-14 09:41:50'),
(2, 'Green', 'green', '2026-08-14 09:41:57', '2026-08-14 09:41:57'),
(3, 'Blue', 'blue', '2026-08-14 09:42:04', '2026-08-14 09:42:04'),
(4, 'Yellow', 'yellow', '2026-08-14 09:42:10', '2026-08-14 09:42:10'),
(5, 'Orange', 'orange', '2026-08-14 09:42:21', '2026-08-14 09:42:21'),
(6, 'Purple', 'purple', '2026-08-14 09:42:33', '2026-08-14 09:42:33'),
(7, 'Pink', 'pink', '2026-08-14 09:42:41', '2026-08-14 09:42:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 1, 13, NULL, NULL),
(5, 2, 13, NULL, NULL),
(6, 3, 13, NULL, NULL),
(7, 1, 12, NULL, NULL),
(8, 2, 12, NULL, NULL),
(9, 3, 12, NULL, NULL),
(10, 4, 12, NULL, NULL),
(11, 5, 11, NULL, NULL),
(12, 6, 11, NULL, NULL),
(13, 7, 11, NULL, NULL),
(14, 2, 10, NULL, NULL),
(15, 3, 10, NULL, NULL),
(16, 6, 10, NULL, NULL),
(17, 1, 9, NULL, NULL),
(18, 2, 9, NULL, NULL),
(19, 3, 9, NULL, NULL),
(20, 1, 8, NULL, NULL),
(21, 2, 8, NULL, NULL),
(22, 3, 8, NULL, NULL),
(23, 4, 8, NULL, NULL),
(24, 2, 7, NULL, NULL),
(25, 3, 7, NULL, NULL),
(26, 3, 6, NULL, NULL),
(27, 4, 6, NULL, NULL),
(28, 5, 6, NULL, NULL),
(29, 3, 5, NULL, NULL),
(30, 4, 5, NULL, NULL),
(31, 7, 5, NULL, NULL),
(32, 1, 4, NULL, NULL),
(33, 6, 4, NULL, NULL),
(34, 7, 4, NULL, NULL),
(35, 4, 3, NULL, NULL),
(36, 5, 3, NULL, NULL),
(37, 3, 2, NULL, NULL),
(38, 4, 2, NULL, NULL),
(39, 5, 2, NULL, NULL),
(40, 6, 2, NULL, NULL),
(41, 7, 2, NULL, NULL),
(42, 4, 1, NULL, NULL),
(43, 5, 1, NULL, NULL),
(44, 6, 1, NULL, NULL),
(45, 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_08_14_080709_create_roles_table', 1),
(5, '2026_08_14_080717_create_role_users_table', 1),
(6, '2026_08_14_113510_create_colors_table', 2),
(7, '2026_08_14_113517_create_sizes_table', 2),
(8, '2026_08_14_113527_create_products_table', 2),
(9, '2026_08_14_113605_create_color_product_table', 2),
(10, '2026_08_14_113638_create_product_size_table', 2),
(11, '2026_08_14_130957_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `quantity`, `thumbnail`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Men1', 'men1', 12.33, 12, 'storage/images/product/iw7qdLbl2sPyLC5BdIS1pEUQFcmpEhRxVpMaVNWy.jpg', 'Porttitor semper vivamus consectetur aenean vendor porttitor vendor elit. Tellus semper elementum. Nisi aenean elit leo lorem tellus. Aenean elit leo sit semper sit vendor tellus leo. Ipsum elit sed lorem ipsum sed leo aenean eiusmod. Vendor semper leo porttitor eiusmod elit aenean leo sit. Aenean sit consectetur. Ipsum. Dolor porttitor eiusmod ipsum dolor sed elit. Dolor sit aenean eiusmod lorem ipsum elit. Lorem dolor. Sed leo porttitor elementum lorem. Aenean dolor vendor porttitor tellus consectetur dolor. Aenean consectetur sit ipsum porttitor ipsum vendor. Consectetur semper vendor elementum vendor ipsum vivamus. Semper elementum vivamus lorem consectetur. Vivamus elementum vendor eiusmod.', '2026-08-11 02:39:17', '2026-08-14 10:05:48'),
(2, 'Men2', 'men2', 14.34, 14, 'storage/images/product/rGsLmr7df4epR52yuYF5otpFXt45kxDvM8rdhyBQ.jpg', 'Ipsum leo vivamus sed tellus lorem nisi porttitor nisi. Leo semper porttitor. Tellus vendor nisi. Vivamus. Consectetur ipsum. Leo sit porttitor aenean nisi lorem. Porttitor vivamus eiusmod. Vendor leo vivamus. Aenean consectetur elementum eiusmod consectetur. Ipsum. Leo sed vivamus tellus. Elit sed eiusmod aenean semper. Sed porttitor aenean semper. Vivamus. Eiusmod leo eiusmod vivamus sit dolor. Vivamus sed tellus dolor vendor lorem consectetur. Semper. Leo lorem elementum sit sed elementum. Nisi vendor sed nisi consectetur. Elit ipsum sit sed vivamus. Sed porttitor dolor nisi sed. Leo vivamus semper sit nisi vivamus. Nisi lorem consectetur ipsum sit elit dolor lorem. Eiusmod.', '2026-08-11 02:50:49', '2026-08-14 10:05:33'),
(3, 'Men3', 'men3', 15.50, 15, 'storage/images/product/D5pwpNzn7AkVxcUwuzBiTvC1orKnDOdI1X0weuva.jpg', 'Tellus vendor consectetur porttitor vivamus nisi tellus eiusmod elementum. Lorem leo elit tellus leo aenean semper tellus aenean. Vendor dolor aenean lorem porttitor nisi. Vendor semper nisi ipsum. Sed leo lorem consectetur semper elementum eiusmod. Elementum elit eiusmod nisi lorem. Aenean lorem ipsum consectetur ipsum. Sed nisi tellus. Semper ipsum semper elementum leo elementum aenean vendor. Semper sed leo elementum. Nisi porttitor nisi elit aenean sit. Consectetur sit eiusmod sed tellus lorem. Porttitor elit ipsum semper vivamus sit elementum porttitor semper. Sed dolor semper eiusmod. Aenean vendor ipsum nisi elit. Semper vendor sed vivamus consectetur sit sed aenean dolor. Nisi.', '2026-08-11 02:51:15', '2026-08-14 10:05:11'),
(4, 'Men4', 'men4', 11.34, 11, 'storage/images/product/0Ttw4PwycEU0Zk2a9QamYtAaD6Umfas0v5xl5z1g.jpg', 'Consectetur semper nisi tellus dolor tellus aenean vendor aenean. Lorem leo ipsum elit vendor porttitor elit eiusmod tellus. Lorem sed leo nisi sit eiusmod. Lorem. Sed nisi sit. Porttitor vivamus. Vendor lorem semper elit dolor elementum. Eiusmod vivamus leo aenean nisi eiusmod. Nisi elementum porttitor. Aenean leo consectetur sit sed. Elit dolor porttitor lorem. Consectetur nisi tellus vendor porttitor leo elementum sit semper. Consectetur sed porttitor elementum sed dolor ipsum sit lorem. Nisi dolor tellus eiusmod vivamus. Dolor ipsum dolor. Nisi. Elit sed sit consectetur ipsum sit lorem. Eiusmod dolor. Eiusmod aenean nisi eiusmod lorem dolor. Sed ipsum. Elit leo.', '2026-08-11 02:51:41', '2026-08-14 10:04:58'),
(5, 'Women1', 'women1', 18.33, 18, 'storage/images/product/cNpFqUDlWFCXtbmaRvQTCYA7QI6aD2cM89D0AHq4.jpg', 'Sit eiusmod porttitor leo ipsum. Elit leo consectetur leo. Vivamus sit consectetur aenean porttitor. Semper sit. Semper vivamus. Sed sit lorem consectetur aenean tellus. Ipsum. Nisi consectetur elit lorem semper. Consectetur eiusmod ipsum vendor vivamus sed. Nisi leo lorem porttitor. Lorem leo sed tellus vivamus. Elementum ipsum consectetur. Sit semper ipsum semper ipsum sit. Semper sit elementum aenean sit elementum. Consectetur sed elementum elit semper. Eiusmod vendor elit ipsum tellus sed nisi. Porttitor sed porttitor elementum sed elementum nisi porttitor. Vivamus lorem tellus sed elementum. Sed sit vivamus sed elementum. Sed lorem dolor semper sit. Porttitor. Vivamus elit vendor ipsum.', '2026-08-11 02:52:14', '2026-08-14 10:03:56'),
(6, 'Women2', 'women2', 12.45, 12, 'storage/images/product/77bP7WXimOBuNirx5XwAXmu5uS2LvqSWbLHJc3oE.jpg', 'Porttitor semper sit eiusmod sit consectetur. Elementum porttitor vendor ipsum. Sed elit. Vendor aenean. Porttitor. Ipsum semper porttitor vivamus ipsum. Vendor tellus elementum lorem. Tellus semper lorem eiusmod elit leo sit elementum. Elit aenean semper dolor. Sit lorem elit consectetur sit leo sit consectetur semper. Ipsum leo tellus dolor consectetur sit elit aenean tellus. Aenean. Ipsum. Sit leo sed eiusmod elementum elit consectetur leo. Vivamus nisi consectetur leo elit consectetur. Ipsum vendor vivamus elit tellus. Sit eiusmod elementum. Leo elementum leo sit nisi tellus. Semper nisi porttitor nisi lorem aenean porttitor. Vivamus sit dolor lorem. Consectetur. Ipsum vendor vivamus elit.', '2026-08-11 02:52:45', '2026-08-14 10:03:41'),
(7, 'Women3', 'women3', 21.30, 21, 'storage/images/product/mFguaxBUkBFeyh9WwhyXyxqGaIHVJHCg2NXX3DlJ.jpg', 'Semper porttitor dolor ipsum aenean sed. Eiusmod vivamus. Consectetur ipsum leo lorem leo lorem. Dolor. Tellus. Elit sed porttitor ipsum. Eiusmod aenean nisi lorem vendor dolor elementum. Nisi. Eiusmod sed. Vivamus vendor dolor sit semper. Vivamus ipsum aenean vendor lorem. Elit porttitor ipsum vivamus ipsum. Vendor semper elementum leo. Lorem porttitor vendor porttitor vivamus. Consectetur. Leo ipsum elementum lorem leo eiusmod vivamus sit. Vendor elit dolor. Sit lorem elit eiusmod. Aenean tellus. Porttitor ipsum elementum lorem ipsum. Semper sed eiusmod. Porttitor consectetur vendor semper sit consectetur eiusmod sed. Dolor ipsum. Sed. Lorem semper porttitor lorem. Consectetur semper consectetur. Dolor aenean.', '2026-08-11 02:53:12', '2026-08-14 10:03:25'),
(8, 'Old Men 1', 'old-men-1', 23.40, 23, 'storage/images/product/vHkjLoG6gF1d2cO7LelXUfz7Tngzc2mB8xJmMre0.jpg', 'Porttitor nisi vivamus nisi elementum elit porttitor leo nisi. Sit tellus porttitor elit tellus. Elit leo consectetur porttitor lorem semper aenean. Elit consectetur elementum lorem. Eiusmod ipsum sit vendor semper dolor consectetur. Ipsum aenean leo. Consectetur. Vivamus elit nisi lorem nisi semper. Vendor elit leo lorem semper tellus. Nisi. Sit vivamus elementum sed vivamus. Aenean. Sit lorem vendor eiusmod tellus. Semper sit elementum. Leo nisi. Porttitor. Leo elit sed vivamus. Elementum porttitor leo eiusmod consectetur. Lorem ipsum vivamus eiusmod elit aenean. Consectetur semper vendor nisi dolor ipsum dolor leo eiusmod. Leo. Aenean vivamus vendor tellus vendor nisi elementum. Tellus sit.', '2026-08-11 02:53:43', '2026-08-14 10:03:09'),
(9, 'Old Men2', 'old-men2', 23.40, 22, 'storage/images/product/zSfdfIbLQTu6q43jrydTGlzsdWJpaFvy9sTlLOLY.jpg', 'Elementum consectetur lorem dolor semper aenean leo elit. Tellus elementum nisi dolor leo consectetur. Vendor. Vivamus dolor vendor. Nisi aenean vivamus elit eiusmod sit. Nisi. Semper tellus dolor elementum leo. Lorem ipsum eiusmod consectetur porttitor sed. Tellus elit eiusmod porttitor leo consectetur ipsum aenean sit. Dolor aenean porttitor. Eiusmod consectetur vendor leo sit eiusmod ipsum consectetur. Aenean nisi leo vendor tellus vendor elit. Nisi sed ipsum elit leo vivamus dolor. Eiusmod sit porttitor sed vivamus. Consectetur aenean lorem sit lorem. Semper aenean ipsum eiusmod elit elementum consectetur sed. Vendor sit vivamus consectetur vendor sit tellus lorem. Aenean sed ipsum aenean.', '2026-08-11 02:54:24', '2026-08-14 10:02:40'),
(10, 'Old Man Tshirt3', 'old-man-tshirt3', 22.30, 12, 'storage/images/product/lV41qNUB5Ti5ulaCUcAf6fMHMnxauOOuIUe2M3hy.jpg', 'Aenean leo sit consectetur eiusmod dolor. Leo nisi. Lorem. Porttitor consectetur porttitor nisi vivamus porttitor semper ipsum leo. Elementum eiusmod sed. Vendor dolor vivamus semper porttitor nisi. Eiusmod vendor semper. Elementum lorem. Consectetur dolor nisi. Vendor. Aenean sit semper elementum aenean elementum lorem nisi consectetur. Aenean tellus eiusmod tellus. Eiusmod porttitor vendor lorem ipsum vivamus consectetur. Sit sed sit semper. Vivamus dolor sit elit sed tellus. Sed nisi vendor leo ipsum dolor. Eiusmod consectetur lorem consectetur sit ipsum eiusmod elementum elit. Lorem ipsum vendor dolor sit lorem tellus. Dolor eiusmod. Lorem elit sed lorem nisi leo tellus consectetur sit. Dolor.', '2026-08-11 02:55:08', '2026-08-14 10:02:24'),
(11, 'Old Man Tshirt4', 'old-man-tshirt4', 24.00, 24, 'storage/images/product/TiANLzdSh6bFmci97urucxay41wcc57VrM9x6Fn2.jpg', 'Lorem eiusmod aenean porttitor vendor elementum sed lorem. Sit. Nisi sit vivamus eiusmod lorem sit ipsum. Elit consectetur. Elementum semper consectetur vivamus ipsum elit. Elementum lorem porttitor aenean consectetur aenean. Sit eiusmod dolor nisi sit ipsum. Lorem consectetur dolor eiusmod sit consectetur. Elit vivamus semper vendor porttitor ipsum. Sit. Consectetur dolor leo porttitor dolor. Tellus ipsum. Nisi vendor elementum eiusmod. Vivamus leo consectetur. Eiusmod porttitor sed elementum porttitor dolor semper. Leo elit. Tellus leo elit vivamus tellus eiusmod aenean sed. Porttitor aenean sit aenean tellus elementum sed semper. Dolor sit. Leo ipsum sit vivamus porttitor aenean. Consectetur vendor. Ipsum elit.', '2026-08-11 02:56:35', '2026-08-14 10:02:07'),
(12, 'Men5', 'men5', 12.33, 12, 'storage/images/product/YPjROrmRPyLmvKwEkSKs7lR7KuqnhWPXz4547oxY.jpg', 'Sit leo elit tellus eiusmod vendor ipsum. Semper vendor nisi consectetur elit vendor tellus. Semper. Elit lorem leo. Elit lorem semper. Aenean porttitor tellus. Sed vendor lorem. Nisi semper ipsum. Vendor leo. Sed consectetur semper. Lorem aenean lorem nisi vivamus. Lorem sit. Elit eiusmod porttitor dolor sit tellus leo. Sit vivamus nisi vendor dolor eiusmod porttitor. Elit nisi sit tellus semper elit semper. Sit. Leo aenean vivamus sit tellus dolor leo nisi. Eiusmod aenean vivamus porttitor dolor nisi porttitor sed. Sit eiusmod sit aenean. Nisi tellus aenean sit elementum porttitor leo. Semper elementum tellus eiusmod. Leo. Porttitor aenean consectetur ipsum.', '2026-08-11 02:58:28', '2026-08-14 10:01:51'),
(13, 'Men6', 'men6', 23.40, 23, 'storage/images/product/RyNXIFy5TamHXylaqTeDudWBs6cSQHZHBqoBBpn6.jpg', 'Tellus dolor vendor aenean semper dolor tellus. Porttitor lorem sit vivamus dolor nisi tellus. Consectetur elit dolor lorem. Ipsum porttitor. Vendor. Aenean dolor elementum aenean nisi consectetur elementum. Semper sed vendor porttitor nisi aenean eiusmod sed. Aenean ipsum vendor ipsum elementum vivamus dolor aenean dolor. Eiusmod consectetur sed. Leo lorem aenean porttitor vendor porttitor. Vivamus porttitor. Elit lorem sit vivamus. Dolor elit leo semper vivamus ipsum. Dolor nisi consectetur elit vivamus elit. Sed elementum aenean. Elit porttitor leo. Elit sed. Elementum leo sed ipsum. Consectetur. Elit aenean leo vendor porttitor. Semper elementum sed aenean lorem. Ipsum. Elit sed sit aenean.', '2026-08-11 02:58:58', '2026-08-14 10:01:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 13, 2, NULL, NULL),
(2, 13, 3, NULL, NULL),
(3, 13, 4, NULL, NULL),
(4, 12, 1, NULL, NULL),
(5, 12, 2, NULL, NULL),
(6, 12, 3, NULL, NULL),
(7, 11, 5, NULL, NULL),
(8, 11, 6, NULL, NULL),
(9, 11, 7, NULL, NULL),
(10, 10, 2, NULL, NULL),
(11, 10, 3, NULL, NULL),
(12, 10, 4, NULL, NULL),
(13, 9, 1, NULL, NULL),
(14, 9, 2, NULL, NULL),
(15, 9, 3, NULL, NULL),
(16, 8, 2, NULL, NULL),
(17, 8, 3, NULL, NULL),
(18, 8, 4, NULL, NULL),
(19, 7, 1, NULL, NULL),
(20, 7, 2, NULL, NULL),
(21, 7, 3, NULL, NULL),
(22, 6, 2, NULL, NULL),
(23, 6, 3, NULL, NULL),
(24, 5, 2, NULL, NULL),
(25, 5, 3, NULL, NULL),
(26, 5, 4, NULL, NULL),
(27, 5, 5, NULL, NULL),
(28, 4, 1, NULL, NULL),
(29, 4, 2, NULL, NULL),
(30, 4, 3, NULL, NULL),
(31, 4, 4, NULL, NULL),
(32, 4, 5, NULL, NULL),
(33, 4, 6, NULL, NULL),
(34, 4, 7, NULL, NULL),
(35, 3, 2, NULL, NULL),
(36, 3, 3, NULL, NULL),
(37, 3, 4, NULL, NULL),
(38, 2, 1, NULL, NULL),
(39, 2, 2, NULL, NULL),
(40, 2, 3, NULL, NULL),
(41, 2, 4, NULL, NULL),
(42, 1, 4, NULL, NULL),
(43, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5bdQYtXOCdA8lZ48ToVh9NnrWrRw3RSMBQd3lEUP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJRd3V2czBaa2E5OUZaN3Noam5nNW1QOFVqeko4b2w1SE1GME1RYnU0IiwiX2ZsYXNoIjp7Im5ldyI6W10sIm9sZCI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2FkbWluXC9pbmRleCIsInJvdXRlIjoiYWRtaW4uaW5kZXgifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjF9', 1786716203);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'XS', 'xs', '2026-08-14 09:42:49', '2026-08-14 09:42:49'),
(2, 'S', 's', '2026-08-14 09:42:54', '2026-08-14 09:42:54'),
(3, 'M', 'm', '2026-08-14 09:43:03', '2026-08-14 09:43:03'),
(4, 'L', 'l', '2026-08-14 09:43:09', '2026-08-14 09:43:09'),
(5, 'XL', 'xl', '2026-08-14 09:43:16', '2026-08-14 09:43:16'),
(6, 'XXL', 'xxl', '2026-08-14 09:43:23', '2026-08-14 09:43:23'),
(7, 'XXXL', 'xxxl', '2026-08-14 09:43:30', '2026-08-14 09:43:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sezer Ünalmış', 'admin@email.com', NULL, '$2y$12$IUdxuRS8ntjvFINOyriINuDcp8UQOr8J1GYq4idX31UREEvk003O.', NULL, NULL, '2026-08-14 05:44:18');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Tablo için indeksler `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
