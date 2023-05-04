-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 04. 11:35
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `realestates`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `furnishings`
--

CREATE TABLE `furnishings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `furnishings`
--

INSERT INTO `furnishings` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'without furniture', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(2, 'basic equipment', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(3, 'fully furnished', '2023-05-02 20:20:13', '2023-05-02 20:20:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_23_061516_create_furnishings_table', 1),
(6, '2023_04_23_061520_create_realestates_table', 1),
(7, '2023_04_23_061521_create_rentals_table', 1),
(8, '2023_04_23_061522_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `realestates`
--

CREATE TABLE `realestates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `realestate_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` decimal(2,1) NOT NULL,
  `furnishing_id` bigint(20) UNSIGNED NOT NULL,
  `rental_fee` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `realestates`
--

INSERT INTO `realestates` (`id`, `realestate_code`, `address`, `room`, `furnishing_id`, `rental_fee`, `sale_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'MZB-720', '66223 Kovacek Crossing Suite 759\nPort Selenaside, AR 50996-4818', '4.5', 2, 751, NULL, 'YOU sing,\' said the Lory.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(2, 'TVE-000', '371 Ziemann Lodge Suite 570\nLake Janick, AZ 25138-2411', '2.5', 1, 184, NULL, 'And it\'ll fetch things when.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(3, 'SDF-840', '228 Rey Orchard\nMarleymouth, AR 80630-1863', '1.0', 1, NULL, 62, 'Alice hastily replied; \'only.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(4, 'ODU-014', '24419 Payton Causeway\nLockmanland, AK 03602', '2.0', 1, NULL, 141, 'Gryphon, \'that they WOULD.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(5, 'LHY-118', '8049 Griffin Union\nBernierton, CA 19933', '4.0', 2, 1279, 94, 'Alice knew it was out of.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(6, 'CBP-601', '8510 Dickinson Courts Apt. 824\nSwiftfort, VT 43446-4491', '0.5', 3, 1419, 90, 'Bill, the Lizard) could not.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(7, 'ZOU-774', '3420 Torphy Lane\nNew Kimburgh, OK 79326', '1.0', 1, 602, 140, 'However, everything is.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(8, 'INQ-614', '18143 Nikko Mews Apt. 442\nNorth Bethel, DE 22454', '0.5', 3, 1268, NULL, 'And the executioner myself,\'.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(9, 'TMU-713', '86007 Maryse Row\nNew Jedediah, TX 36442-3785', '1.5', 2, 752, 17, 'Alice very meekly: \'I\'m.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(10, 'EYM-092', '41982 Stroman Divide Suite 216\nWelchberg, RI 71601', '2.5', 3, 1320, 130, 'Alice; \'I daresay it\'s a.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(11, 'KWI-990', '53913 Ruecker Fort Suite 682\nVelvastad, TN 89198', '0.5', 3, 407, 105, 'Five, \'and I\'ll tell him--it.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(12, 'LCB-695', '44058 Haag Crest Suite 905\nAltenwerthfurt, VT 40830', '5.0', 3, 1324, 95, 'Duchess. \'I make you grow.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(13, 'HML-078', '339 Antonia Avenue\nEast Ronport, NH 67135', '3.0', 2, 563, NULL, 'But do cats eat bats, I.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(14, 'PSS-467', '840 Harvey Camp\nCarymouth, VA 97649', '3.5', 3, 967, 101, 'They all made of solid.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(15, 'ABN-734', '84677 Borer Locks\nWest Abbey, OR 39502', '4.0', 3, 380, 55, 'She was a little more.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(16, 'ZZL-588', '943 Yundt Prairie Apt. 509\nEmmerichshire, WA 76695', '5.0', 3, NULL, 133, 'Alice heard it say to itself.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(17, 'NYU-443', '726 Dooley Rue Suite 516\nReymundoshire, KS 06709-1383', '5.5', 2, 1109, NULL, 'WOULD not remember the.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(18, 'HNA-369', '93673 Cristopher Circles Apt. 850\nPort Hattie, KY 92881-8087', '5.5', 3, 833, 136, 'Pigeon. \'I\'m NOT a serpent!\'.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(19, 'YSA-411', '499 Waylon Crossroad\nLake Janie, OR 07913', '2.0', 3, 262, 101, 'While she was a large crowd.', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(20, 'MWF-158', '2705 Milan Forges\nPort Stephan, NH 65820-9991', '2.0', 3, NULL, 96, 'I don\'t put my arm round.', '2023-05-02 20:20:13', '2023-05-02 20:20:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `realestate_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `realestate_id`, `booking_date`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 12, 6, '2022-08-17', '2023-02-16', '2023-09-10', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(2, 2, 20, '2022-10-31', '2023-06-05', '2023-09-25', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(3, 16, 5, '2022-08-11', '2022-11-14', '2023-02-11', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(4, 3, 14, '2023-04-17', '2023-12-27', NULL, '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(5, 11, 4, '2022-10-30', '2023-07-24', NULL, '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(6, 4, 7, '2022-10-07', '2023-04-14', '2024-03-04', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(7, 3, 14, '2023-01-25', '2023-09-13', NULL, '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(8, 11, 1, '2022-05-03', '2022-12-01', NULL, '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(9, 3, 13, '2022-06-10', '2022-07-06', '2023-02-27', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(10, 2, 6, '2022-10-05', '2023-09-27', NULL, '2023-05-02 20:20:13', '2023-05-02 20:20:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `realestate_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `realestate_id`, `sale_date`, `created_at`, `updated_at`) VALUES
(1, 8, 5, '2024-10-12', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(2, 11, 8, '2025-02-28', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(3, 4, 6, '2024-09-08', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(4, 20, 11, '2024-10-27', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(5, 13, 9, '2025-04-16', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(6, 2, 13, '2025-02-28', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(7, 4, 10, '2024-09-16', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(8, 10, 7, '2024-05-28', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(9, 8, 15, '2025-03-10', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(10, 18, 1, '2024-08-02', '2023-05-02 20:20:13', '2023-05-02 20:20:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jeramie McKenzie', 'erdman.richard@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '43TLdKcgPI', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(2, 'Prof. Bria Lebsack', 'stokes.sonny@example.org', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0oO2Hl13h0', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(3, 'Prof. Selina Kassulke DVM', 'zfahey@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WLX9SpfoJZ', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(4, 'Mozelle Adams', 'buckridge.abdul@example.org', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yfzkrP81Ys', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(5, 'Zoila Braun', 'francesco96@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ydNeh6XIwB', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(6, 'Lori Sawayn', 'delphia13@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G55SIAhHNA', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(7, 'Miss Amira Waters', 'charity60@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7lk6pig7Qk', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(8, 'Eloy Greenholt', 'zconsidine@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dmq501C6Z7', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(9, 'Finn Bergnaum', 'nanderson@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5XV8780h77', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(10, 'Deon Welch', 'jamey.bradtke@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sVHysY7CqZ', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(11, 'Cleveland Kunde', 'harvey.madie@example.net', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HNego0bTXH', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(12, 'Ike Prosacco', 'leland31@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZMn0ox2W4g', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(13, 'Miss Myrtis Legros Sr.', 'carroll60@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6AhUK61kjA', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(14, 'Dr. Aron Runolfsson', 'kamryn.gerlach@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9RWnZ7qRSR', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(15, 'Ignatius D\'Amore', 'rkoss@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZlosQRxbGs', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(16, 'Daphne Tillman', 'qlangosh@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zNspQzY8hD', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(17, 'Dr. Desmond O\'Keefe', 'tierra21@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cfg2dY75ax', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(18, 'Oswald Larkin', 'mmoen@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yOtCTxuXPI', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(19, 'Ezequiel Murray', 'vhammes@example.org', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5BJqeGIU7T', '2023-05-02 20:20:13', '2023-05-02 20:20:13'),
(20, 'Arch Berge', 'stamm.mekhi@example.com', '2023-05-02 20:20:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvD1lkVXFI', '2023-05-02 20:20:13', '2023-05-02 20:20:13');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `furnishings`
--
ALTER TABLE `furnishings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `furnishings_type_unique` (`type`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `realestates`
--
ALTER TABLE `realestates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `realestates_realestate_code_unique` (`realestate_code`),
  ADD KEY `realestates_furnishing_id_foreign` (`furnishing_id`);

--
-- A tábla indexei `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_realestate_id_foreign` (`realestate_id`);

--
-- A tábla indexei `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_realestate_id_unique` (`realestate_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `furnishings`
--
ALTER TABLE `furnishings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `realestates`
--
ALTER TABLE `realestates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `realestates`
--
ALTER TABLE `realestates`
  ADD CONSTRAINT `realestates_furnishing_id_foreign` FOREIGN KEY (`furnishing_id`) REFERENCES `furnishings` (`id`);

--
-- Megkötések a táblához `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_realestate_id_foreign` FOREIGN KEY (`realestate_id`) REFERENCES `realestates` (`id`),
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_realestate_id_foreign` FOREIGN KEY (`realestate_id`) REFERENCES `realestates` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
