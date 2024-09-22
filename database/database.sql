-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2024 at 11:06 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `ad_s`
--

CREATE TABLE `ad_s` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` int NOT NULL,
  `ad_position` int NOT NULL,
  `embed_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_status` int NOT NULL DEFAULT '1',
  `mobile_status` int NOT NULL DEFAULT '1',
  `theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl_ltr` tinyint NOT NULL DEFAULT '1' COMMENT '1=LTR,2=RTL',
  `negative_amount_symbol` tinyint NOT NULL DEFAULT '1' COMMENT '1=-,2=()',
  `floating_number` tinyint NOT NULL DEFAULT '1' COMMENT '1 = 0, 2 = 0.0 ,3= 0.00, 4= 0.000 ',
  `fixed_date` tinyint(1) NOT NULL DEFAULT '0',
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_collapsed_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `state_income_tax` int NOT NULL DEFAULT '5',
  `soc_sec_npf_tax` int NOT NULL DEFAULT '0',
  `employer_contribution` int NOT NULL DEFAULT '0' COMMENT 'Employer Contribution in Percent',
  `icf_amount` int NOT NULL DEFAULT '0',
  `footer_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_menu_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `newstriker_status` tinyint DEFAULT NULL,
  `preloader_status` tinyint DEFAULT NULL,
  `speed_optimization` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `language_id`, `currency_id`, `title`, `phone`, `email`, `website`, `prefix`, `address`, `tax_no`, `rtl_ltr`, `negative_amount_symbol`, `floating_number`, `fixed_date`, `footer_text`, `logo`, `sidebar_logo`, `favicon`, `sidebar_collapsed_logo`, `login_image`, `created_at`, `updated_at`, `deleted_at`, `state_income_tax`, `soc_sec_npf_tax`, `employer_contribution`, `icf_amount`, `footer_logo`, `app_logo`, `mobile_menu_image`, `time_zone`, `copy_right`, `newstriker_status`, `preloader_status`, `speed_optimization`) VALUES
(1, 1, 1, 'New365', '880-258970255', 'info@bdtask.com', 'https://www.bdtask.com', 'BT', 'B-25, Mannan Plaza, 4th Floor Khilkhet, Dhaka-1229, Bangladesh', '43242424', 1, 1, 1, 0, 'BDTASK © 2022. All Rights Reserved.', 'application/1723373981logo.png', 'application/1723374016sidebar-logo.png', 'application/1723374002favicon.png', 'application/1723374002sidebar-collapsed-logo.png', 'application/1723374002login-image.png', '2022-10-12 16:46:42', '2024-08-11 11:00:17', NULL, 5, 0, 0, 0, 'application/1723374017footer_logo.png', 'application/1723374017app_logo.png', 'application/1723374002mobile_menu_image.png', 'Africa/Abidjan', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appsettings`
--

CREATE TABLE `appsettings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptablerange` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleapi_authkey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_title` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `copy_right` text COLLATE utf8mb4_unicode_ci,
  `time_zone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltl_rtl` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_logo` text COLLATE utf8mb4_unicode_ci,
  `mobile_menu_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newstriker_status` tinyint DEFAULT NULL,
  `share_status` tinyint DEFAULT NULL,
  `preloader_status` tinyint DEFAULT NULL,
  `speed_optimization` tinyint DEFAULT NULL,
  `captcha` tinyint DEFAULT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `uuid`, `website_title`, `footer_text`, `copy_right`, `time_zone`, `ltl_rtl`, `logo`, `footer_logo`, `favicon`, `app_logo`, `mobile_menu_image`, `newstriker_status`, `share_status`, `preloader_status`, `speed_optimization`, `captcha`, `version`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dfce03ab-ccc9-480d-977a-614e95f3b2ab', 'New365', 'BDTASK © 2022. All Rights Reserved.', NULL, 'Africa/Abidjan', '1', 'application/1723373981logo.png', 'application/1723374017footer_logo.png', 'application/1723374002favicon.png', 'application/1723374017app_logo.png', 'application/1723374002mobile_menu_image.png', 1, NULL, 1, 1, NULL, NULL, 2, 1, '2024-07-27 23:33:02', '2024-08-11 11:00:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `breaking_news`
--

CREATE TABLE `breaking_news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_stamp` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` int NOT NULL DEFAULT '0',
  `position` int NOT NULL DEFAULT '1',
  `parents_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_imgae` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img_status` tinyint NOT NULL DEFAULT '0',
  `category_type` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_topics`
--

CREATE TABLE `category_topics` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_infos`
--

CREATE TABLE `comments_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_id` int NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_rating` int DEFAULT NULL,
  `news_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_user_id` int NOT NULL,
  `com_replay_id` int NOT NULL,
  `com_date_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_type` int DEFAULT NULL,
  `com_status` int NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country_id`, `title`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 'Taka', '৳', 1, '2024-06-26 10:49:45', '2024-06-26 10:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `department_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Reporting', NULL, NULL, NULL, NULL, NULL),
(2, 'Central', NULL, NULL, NULL, NULL, NULL),
(3, 'Country', NULL, NULL, NULL, NULL, NULL),
(4, 'Feature', NULL, NULL, NULL, NULL, NULL),
(5, 'Game', NULL, NULL, NULL, NULL, NULL),
(6, 'International', NULL, NULL, NULL, NULL, NULL),
(7, 'Editorial and research', NULL, NULL, NULL, NULL, NULL),
(8, 'Business Development and Marketing Department', NULL, NULL, NULL, NULL, NULL),
(9, 'Web', NULL, NULL, NULL, NULL, NULL),
(10, 'Social media', NULL, NULL, NULL, NULL, NULL),
(11, 'Video section', NULL, NULL, NULL, NULL, NULL),
(12, 'Administration Department', NULL, NULL, NULL, NULL, NULL),
(13, 'Others', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_expired_settings`
--

CREATE TABLE `doc_expired_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `primary_expiration_alert` int NOT NULL COMMENT 'Primary Expiration Alert in Days',
  `secondary_expiration_alert` int NOT NULL COMMENT 'Secondary Expiration Alert in Days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_configs`
--

CREATE TABLE `email_configs` (
  `id` bigint UNSIGNED NOT NULL,
  `protocol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mailtype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isinvoice` tinyint NOT NULL,
  `isservice` tinyint NOT NULL,
  `isquotation` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_positions`
--

CREATE TABLE `home_page_positions` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_news` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `id` int NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`id`, `name`, `value`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bengali/Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `langstrings`
--

CREATE TABLE `langstrings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `langstrvals`
--

CREATE TABLE `langstrvals` (
  `id` bigint UNSIGNED NOT NULL,
  `localize_id` bigint UNSIGNED NOT NULL,
  `langstring_id` bigint UNSIGNED NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `langname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `langname`, `value`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '2022-12-08 00:29:24', '2022-12-08 00:29:24'),
(3, 'Arabic', 'ar', '2024-08-04 10:03:42', '2024-08-04 10:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint UNSIGNED NOT NULL,
  `level` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `max_archive_settings`
--

CREATE TABLE `max_archive_settings` (
  `category_id` int NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_archive` int NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `style` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `mobile_status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `position`, `style`, `status`, `mobile_status`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 1, NULL, 1, 1, '2024-07-07 09:18:50', '2024-07-07 09:18:50'),
(2, 'Category', 2, NULL, 1, 1, '2024-07-07 09:18:50', '2024-07-07 09:18:50'),
(3, 'Page', 3, NULL, 0, 1, '2024-07-07 09:18:50', '2024-07-13 06:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `menu_contents`
--

CREATE TABLE `menu_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `content_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_id` bigint DEFAULT NULL,
  `menu_position` int DEFAULT NULL,
  `menu_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `menu_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_04_06_050120_create_pictures_table', 1),
(5, '2022_04_13_032828_create_applications_table', 1),
(6, '2022_04_13_050141_create_currencies_table', 1),
(7, '2022_04_18_075935_create_email_configs_table', 1),
(8, '2022_08_06_043012_create_users_table', 1),
(9, '2022_08_06_043013_create_user_types_table', 1),
(10, '2022_08_06_054634_create_password_settings_table', 1),
(11, '2022_08_08_034517_create_countries_table', 1),
(12, '2022_10_10_100252_create_permission_tables', 1),
(13, '2022_10_10_102515_create_per_menus_table', 1),
(14, '2022_11_10_035218_create_notifications_table', 1),
(15, '2022_12_07_071056_create_languages_table', 1),
(16, '2022_12_07_094945_create_langstrings_table', 1),
(17, '2022_12_07_095044_create_langstrvals_table', 1),
(18, '2023_04_29_104322_create_zkts_table', 1),
(19, '2023_05_07_094405_create_doc_expired_settings_table', 1),
(20, '2023_07_23_103802_create_prefixes_table', 1),
(21, '2023_08_13_104855_create_activity_log_table', 1),
(22, '2023_08_13_104856_add_event_column_to_activity_log_table', 1),
(23, '2023_08_13_104857_add_batch_uuid_column_to_activity_log_table', 1),
(24, '2024_05_05_053538_update_applications_table', 1),
(25, '2024_05_16_114541_create_appsettings_table', 1),
(26, '2024_06_10_064636_create_categories_table', 1),
(27, '2024_06_10_133007_create_category_topics_table', 1),
(28, '2024_06_11_080405_create_settings_table', 1),
(29, '2024_06_11_090858_create_advertisements_table', 1),
(30, '2024_06_12_104021_create_reporters_table', 1),
(31, '2024_06_13_065421_create_departments_table', 1),
(32, '2024_06_26_103727_create_pages_table', 2),
(40, '2024_07_02_133009_create_news_msts_table', 3),
(41, '2024_07_02_134555_create_photo_libraries_table', 3),
(43, '2024_07_02_174147_create_breaking_news_table', 4),
(44, '2024_07_03_121210_create_news_positions_table', 5),
(45, '2024_07_03_141901_create_post_seo_onpages_table', 6),
(46, '2024_07_03_145656_create_post_tags_table', 6),
(47, '2024_07_03_150558_create_schema_posts_table', 7),
(48, '2024_07_04_053959_create_top_breakings_table', 8),
(50, '2024_07_07_125014_create_menus_table', 9),
(51, '2024_07_07_181536_create_menu_contents_table', 10),
(52, '2024_07_07_185148_create_links_table', 11),
(53, '2024_07_08_101512_create_max_archive_settings_table', 12),
(54, '2024_07_08_101738_create_news_archives_table', 12),
(55, '2024_07_09_121219_create_news_routings_table', 12),
(56, '2024_07_10_153917_create_photo_posts_table', 13),
(57, '2024_07_10_162533_create_photo_post_details_table', 14),
(58, '2024_07_10_095451_add_logo_to_applications_table', 15),
(60, '2024_07_13_084058_create_comments_infos_table', 16),
(61, '2024_07_13_092407_create_subscriptions_table', 16),
(62, '2024_07_13_161905_create_space_credentials_table', 16),
(63, '2024_07_15_125006_add_disk_to_photo_libraries_table', 17),
(64, '2024_07_25_123841_add_image_title_to_news_msts_table', 18),
(65, '2024_07_25_135417_create_divisions_table', 19),
(66, '2024_07_25_140746_create_districts_table', 20),
(68, '2024_07_25_145009_create_upazilas_table', 21),
(71, '2024_08_04_103232_create_home_page_positions_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_archives`
--

CREATE TABLE `news_archives` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int NOT NULL,
  `encode_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_base_url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `podcust_id` int DEFAULT NULL,
  `image_alt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporter` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_date` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_by` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_stamp` int DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `is_latest` int DEFAULT NULL,
  `reader_hit` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_msts`
--

CREATE TABLE `news_msts` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint NOT NULL,
  `encode_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_base_url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `podcust_id` bigint DEFAULT NULL,
  `image_alt` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporter` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_date` date DEFAULT NULL,
  `post_by` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporter_id` bigint DEFAULT NULL,
  `update_by` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_stamp` int DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `is_latest` bigint DEFAULT NULL,
  `reader_hit` bigint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_positions`
--

CREATE TABLE `news_positions` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint NOT NULL,
  `page` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_routings`
--

CREATE TABLE `news_routings` (
  `news_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `routing_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_id` int DEFAULT NULL,
  `video_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishar_id` int DEFAULT NULL,
  `seo_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `reader_view` int DEFAULT NULL,
  `releted_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_settings`
--

CREATE TABLE `password_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_length` int NOT NULL,
  `max_lifetime` int NOT NULL,
  `password_complexcity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_history` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lock_out_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_idle_logout_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_menu_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `per_menu_id`, `created_at`, `updated_at`) VALUES
(1, 'read_dashboard', 'web', 1, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(2, 'create_advertise', 'web', 2, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(3, 'read_advertise', 'web', 2, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(4, 'update_advertise', 'web', 2, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(5, 'delete_advertise', 'web', 2, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(6, 'create_update_advertise', 'web', 3, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(7, 'read_update_advertise', 'web', 3, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(8, 'update_update_advertise', 'web', 3, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(9, 'delete_update_advertise', 'web', 3, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(10, 'create_analytics', 'web', 4, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(11, 'read_analytics', 'web', 4, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(12, 'update_analytics', 'web', 4, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(13, 'delete_analytics', 'web', 4, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(14, 'create_live_now', 'web', 5, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(15, 'read_live_now', 'web', 5, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(16, 'update_live_now', 'web', 5, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(17, 'delete_live_now', 'web', 5, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(18, 'create_location_Based', 'web', 6, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(19, 'read_location_Based', 'web', 6, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(20, 'update_location_Based', 'web', 6, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(21, 'delete_location_Based', 'web', 6, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(22, 'create_news_based', 'web', 7, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(23, 'read_news_based', 'web', 7, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(24, 'update_news_based', 'web', 7, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(25, 'delete_news_based', 'web', 7, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(26, 'create_clear_analytics', 'web', 8, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(27, 'read_clear_analytics', 'web', 8, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(28, 'update_clear_analytics', 'web', 8, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(29, 'delete_clear_analytics', 'web', 8, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(30, 'create_archive_setting', 'web', 9, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(31, 'read_archive_setting', 'web', 9, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(32, 'update_archive_setting', 'web', 9, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(33, 'delete_archive_setting', 'web', 9, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(34, 'create_category', 'web', 10, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(35, 'read_category', 'web', 10, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(36, 'update_category', 'web', 10, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(37, 'delete_category', 'web', 10, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(38, 'create_comment', 'web', 11, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(39, 'read_comment', 'web', 11, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(40, 'update_comment', 'web', 11, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(41, 'delete_comment', 'web', 11, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(42, 'create_media_library', 'web', 12, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(43, 'read_media_library', 'web', 12, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(44, 'update_media_library', 'web', 12, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(45, 'delete_media_library', 'web', 12, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(46, 'create_photo_upload', 'web', 13, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(47, 'read_photo_upload', 'web', 13, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(48, 'update_photo_upload', 'web', 13, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(49, 'delete_photo_upload', 'web', 13, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(50, 'create_photo_list', 'web', 14, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(51, 'read_photo_list', 'web', 14, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(52, 'update_photo_list', 'web', 14, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(53, 'delete_photo_list', 'web', 14, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(54, 'create_menu_setup', 'web', 15, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(55, 'read_menu_setup', 'web', 15, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(56, 'update_menu_setup', 'web', 15, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(57, 'delete_menu_setup', 'web', 15, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(58, 'create_news', 'web', 16, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(59, 'read_news', 'web', 16, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(60, 'update_news', 'web', 16, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(61, 'delete_news', 'web', 16, '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(62, 'create_post', 'web', 17, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(63, 'read_post', 'web', 17, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(64, 'update_post', 'web', 17, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(65, 'delete_post', 'web', 17, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(66, 'create_breaking_news', 'web', 18, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(67, 'read_breaking_news', 'web', 18, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(68, 'update_breaking_news', 'web', 18, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(69, 'delete_breaking_news', 'web', 18, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(70, 'create_positioning', 'web', 19, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(71, 'read_positioning', 'web', 19, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(72, 'update_positioning', 'web', 19, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(73, 'delete_positioning', 'web', 19, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(74, 'create_photo_post', 'web', 20, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(75, 'read_photo_post', 'web', 20, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(76, 'update_photo_post', 'web', 20, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(77, 'delete_photo_post', 'web', 20, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(78, 'create_page', 'web', 21, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(79, 'read_page', 'web', 21, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(80, 'update_page', 'web', 21, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(81, 'delete_page', 'web', 21, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(82, 'create_page_list', 'web', 22, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(83, 'read_page_list', 'web', 22, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(84, 'update_page_list', 'web', 22, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(85, 'delete_page_list', 'web', 22, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(86, 'create_reporter', 'web', 23, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(87, 'read_reporter', 'web', 23, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(88, 'update_reporter', 'web', 23, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(89, 'delete_reporter', 'web', 23, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(90, 'create_subscribers', 'web', 24, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(91, 'read_subscribers', 'web', 24, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(92, 'update_subscribers', 'web', 24, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(93, 'delete_subscribers', 'web', 24, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(94, 'create_last_20_access', 'web', 25, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(95, 'read_last_20_access', 'web', 25, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(96, 'update_last_20_access', 'web', 25, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(97, 'delete_last_20_access', 'web', 25, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(98, 'create_seo', 'web', 26, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(99, 'read_seo', 'web', 26, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(100, 'update_seo', 'web', 26, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(101, 'delete_seo', 'web', 26, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(102, 'create_meta_setting', 'web', 27, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(103, 'read_meta_setting', 'web', 27, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(104, 'update_meta_setting', 'web', 27, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(105, 'delete_meta_setting', 'web', 27, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(106, 'create_social_site', 'web', 28, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(107, 'read_social_site', 'web', 28, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(108, 'update_social_site', 'web', 28, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(109, 'delete_social_site', 'web', 28, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(110, 'create_social_link', 'web', 29, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(111, 'read_social_link', 'web', 29, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(112, 'update_social_link', 'web', 29, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(113, 'delete_social_link', 'web', 29, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(114, 'create_rss_sitemap_link', 'web', 30, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(115, 'read_rss_sitemap_link', 'web', 30, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(116, 'update_rss_sitemap_link', 'web', 30, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(117, 'delete_rss_sitemap_link', 'web', 30, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(118, 'create_setting', 'web', 31, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(119, 'read_setting', 'web', 31, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(120, 'update_setting', 'web', 31, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(121, 'delete_setting', 'web', 31, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(122, 'create_home_page', 'web', 32, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(123, 'read_home_page', 'web', 32, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(124, 'update_home_page', 'web', 32, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(125, 'delete_home_page', 'web', 32, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(126, 'create_contact_page_setup', 'web', 33, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(127, 'read_contact_page_setup', 'web', 33, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(128, 'update_contact_page_setup', 'web', 33, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(129, 'delete_contact_page_setup', 'web', 33, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(130, 'create_404_page_setting', 'web', 34, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(131, 'read_404_page_setting', 'web', 34, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(132, 'update_404_page_setting', 'web', 34, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(133, 'delete_404_page_setting', 'web', 34, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(134, 'create_color_setting', 'web', 35, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(135, 'read_color_setting', 'web', 35, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(136, 'update_color_setting', 'web', 35, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(137, 'delete_color_setting', 'web', 35, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(138, 'create_social_auth_setting', 'web', 36, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(139, 'read_social_auth_setting', 'web', 36, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(140, 'update_social_auth_setting', 'web', 36, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(141, 'delete_social_auth_setting', 'web', 36, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(142, 'create_cache_system', 'web', 37, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(143, 'read_cache_system', 'web', 37, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(144, 'update_cache_system', 'web', 37, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(145, 'delete_cache_system', 'web', 37, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(146, 'create_date_field_setup', 'web', 38, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(147, 'read_date_field_setup', 'web', 38, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(148, 'update_date_field_setup', 'web', 38, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(149, 'delete_date_field_setup', 'web', 38, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(150, 'create_panel_face', 'web', 39, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(151, 'read_panel_face', 'web', 39, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(152, 'update_panel_face', 'web', 39, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(153, 'delete_panel_face', 'web', 39, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(154, 'create_theme_setup', 'web', 40, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(155, 'read_theme_setup', 'web', 40, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(156, 'update_theme_setup', 'web', 40, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(157, 'delete_theme_setup', 'web', 40, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(158, 'create_software_setup', 'web', 41, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(159, 'read_software_setup', 'web', 41, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(160, 'update_software_setup', 'web', 41, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(161, 'delete_software_setup', 'web', 41, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(162, 'create_application', 'web', 42, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(163, 'read_application', 'web', 42, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(164, 'update_application', 'web', 42, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(165, 'delete_application', 'web', 42, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(166, 'create_apps_setting', 'web', 43, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(167, 'read_apps_setting', 'web', 43, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(168, 'update_apps_setting', 'web', 43, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(169, 'delete_apps_setting', 'web', 43, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(170, 'create_currency', 'web', 44, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(171, 'read_currency', 'web', 44, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(172, 'update_currency', 'web', 44, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(173, 'delete_currency', 'web', 44, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(174, 'create_mail_setup', 'web', 45, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(175, 'read_mail_setup', 'web', 45, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(176, 'update_mail_setup', 'web', 45, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(177, 'delete_mail_setup', 'web', 45, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(178, 'create_sms_setup', 'web', 46, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(179, 'read_sms_setup', 'web', 46, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(180, 'update_sms_setup', 'web', 46, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(181, 'delete_sms_setup', 'web', 46, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(182, 'create_password_setting', 'web', 47, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(183, 'read_password_setting', 'web', 47, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(184, 'update_password_setting', 'web', 47, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(185, 'delete_password_setting', 'web', 47, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(186, 'create_language', 'web', 48, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(187, 'read_language', 'web', 48, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(188, 'update_language', 'web', 48, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(189, 'delete_language', 'web', 48, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(190, 'create_add_language', 'web', 49, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(191, 'read_add_language', 'web', 49, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(192, 'update_add_language', 'web', 49, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(193, 'delete_add_language', 'web', 49, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(194, 'create_language_strings', 'web', 50, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(195, 'read_language_strings', 'web', 50, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(196, 'update_language_strings', 'web', 50, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(197, 'delete_language_strings', 'web', 50, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(198, 'create_user_management', 'web', 51, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(199, 'read_user_management', 'web', 51, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(200, 'update_user_management', 'web', 51, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(201, 'delete_user_management', 'web', 51, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(202, 'create_role_list', 'web', 52, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(203, 'read_role_list', 'web', 52, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(204, 'update_role_list', 'web', 52, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(205, 'delete_role_list', 'web', 52, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(206, 'create_user_list', 'web', 53, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(207, 'read_user_list', 'web', 53, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(208, 'update_user_list', 'web', 53, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(209, 'delete_user_list', 'web', 53, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(210, 'create_factory_reset', 'web', 54, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(211, 'read_factory_reset', 'web', 54, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(212, 'update_factory_reset', 'web', 54, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(213, 'delete_factory_reset', 'web', 54, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(214, 'create_backup_and_reset', 'web', 55, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(215, 'read_backup_and_reset', 'web', 55, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(216, 'update_backup_and_reset', 'web', 55, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(217, 'delete_backup_and_reset', 'web', 55, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(218, 'create_access_log', 'web', 56, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(219, 'read_access_log', 'web', 56, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(220, 'update_access_log', 'web', 56, '2024-06-26 10:49:46', '2024-06-26 10:49:46'),
(221, 'delete_access_log', 'web', 56, '2024-06-26 10:49:46', '2024-06-26 10:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `per_menus`
--

CREATE TABLE `per_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentmenu_id` bigint DEFAULT NULL,
  `lable` bigint NOT NULL,
  `menu_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_libraries`
--

CREATE TABLE `photo_libraries` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_base_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_image_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` bigint DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_stamp` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_posts`
--

CREATE TABLE `photo_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `stitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_by` bigint DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_post_details`
--

CREATE TABLE `photo_post_details` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_base_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint UNSIGNED NOT NULL,
  `imageable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `febicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Inactive , 1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_seo_onpages`
--

CREATE TABLE `post_seo_onpages` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint NOT NULL,
  `meta_keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint NOT NULL,
  `tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefixes`
--

CREATE TABLE `prefixes` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_requisition_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_received_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_return_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_quotation_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_invoice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_draft_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_return_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_adjustment_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wastage_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_invoice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reporters`
--

CREATE TABLE `reporters` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reporter_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `email` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pen_name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_one` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_id_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `post_ap_status` int NOT NULL DEFAULT '0',
  `department_id` int DEFAULT NULL,
  `designation` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2024-06-26 10:49:45', '2024-06-26 10:49:45'),
(2, 'Reporter', 'web', '2024-06-26 10:49:45', '2024-06-26 10:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(1, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schema_posts`
--

CREATE TABLE `schema_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishdate` date DEFAULT NULL,
  `modifidate` date DEFAULT NULL,
  `active_status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `event` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `event`, `details`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'main_menu', '{\"1\":{\"cat_name\":\"TECHNOLOGY\",\"slug\":\"Technology\",\"max_news\":null,\"category_id\":\"4\",\"status\":\"1\"},\"2\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":null,\"category_id\":\"8\",\"status\":\"1\"},\"3\":{\"cat_name\":\"VIDEO\",\"slug\":\"Video\",\"max_news\":null,\"category_id\":\"7\",\"status\":\"1\"},\"4\":{\"cat_name\":\"TRAVEL\",\"slug\":\"Travel\",\"max_news\":null,\"category_id\":\"2\",\"status\":\"1\"},\"5\":{\"cat_name\":\"HEALTH\",\"slug\":\"Health\",\"max_news\":null,\"category_id\":\"14\",\"status\":\"1\"},\"6\":{\"cat_name\":\"LIFESTYLE\",\"slug\":\"Lifestyle\",\"max_news\":null,\"category_id\":\"5\",\"status\":\"1\"},\"7\":{\"cat_name\":\"TRAVEL\",\"slug\":\"Travel\",\"max_news\":null,\"category_id\":\"2\",\"status\":\"1\"},\"8\":{\"cat_name\":\"SPORTS\",\"slug\":\"Sports\",\"max_news\":null,\"category_id\":\"13\",\"status\":\"1\"},\"9\":{\"cat_name\":\"WORLD\",\"slug\":\"world\",\"max_news\":null,\"category_id\":\"10\",\"status\":\"1\"},\"10\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":null,\"category_id\":\"8\",\"status\":0},\"11\":{\"cat_name\":\"EDITOR CHOICE\",\"slug\":\"Editor-Choice\",\"max_news\":null,\"category_id\":\"6\",\"status\":0},\"12\":{\"cat_name\":\"SCIENCE\",\"slug\":\"science\",\"max_news\":null,\"category_id\":\"11\",\"status\":0},\"14\":{\"cat_name\":\"BUSINESS\",\"slug\":\"Business\",\"max_news\":null,\"category_id\":\"12\",\"status\":0},\"15\":{\"cat_name\":\"FOOD\",\"slug\":\"Food\",\"max_news\":null,\"category_id\":\"3\",\"status\":0},\"13\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":null,\"category_id\":\"8\",\"status\":0}}', NULL, NULL, NULL, NULL, NULL),
(3, 'lang_settings', '{\"latest_news\":\"LATEST NEWS\",\"most_read\":\"MOST POPULAR\",\"whole_country\":\"Whole Country\",\"headline\":\"Headline\",\"home\":\"HOME\",\"such_more_news\":\"Related News\",\"details\":\"Read More\"}', NULL, NULL, NULL, NULL, NULL),
(4, 'home_page_cat_style', '{\"1\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"2\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"3\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"4\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"5\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"6\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"7\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"8\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"9\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"10\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"11\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"},\"12\":{\"cat_name\":\"Opinion\",\"slug\":\"opinion\",\"max_news\":null,\"category_id\":\"3\",\"status\":\"1\"}}', NULL, 1, NULL, '2024-08-01 07:10:45', NULL),
(5, 'meta', {"title":"News365","meta_tag":"news365","meta_description":"news365","google_analytics":"news365","default_image":"uploads\/images\/2023-11-19\/p.jpg"}, NULL, NULL, NULL, NULL, NULL),
(6, 'social_page', '{\"fb\":\"https:\\/\\/www.facebook.com\\/envato\\/\",\"tw\":\"https:\\/\\/twitter.com\\/\",\"status\":\"1\",\"mobile_status\":null}', NULL, NULL, NULL, NULL, NULL),
(8, 'user_analytics', '{\"user_analytics\":\"inactive\"}', NULL, NULL, NULL, NULL, NULL),
(16, 'default_theme', '{\"default_theme\":\"Osru-Theme\"}', NULL, NULL, NULL, NULL, NULL),
(18, 'prayer_time', '{\"prayer_time\":\"\"}', NULL, NULL, NULL, NULL, NULL),
(111, 'social_link', '{\"fb\":\"https:\/\/www.facebook.com\",\"tw\":\"https:\/\/www.twitter.com\",\"linkd\":\"https:\/\/plus.google.com\",\"pin\":\"https:\/\/au.pinterest.com\",\"vimo\":\"https:\/\/vimeo.com\",\"youtube\":\"https:\/\/www.youtube.com\",\"flickr\":\"https:\/\/www.flickr.com\",\"vk\":\"https:\/\/www.vk.com\",\"whats_app\":\"https:\/\/www.whatsapp.com\",\"google\":null}', NULL, NULL, NULL, NULL, NULL),
(113, 'contact_page_setup', '{\"editor\":\"Editor\",\"content\":\"To learn more about News365, Please feel free to contact with us\",\"address\":\"Dhaka, Bangladesh\",\"phone\":null,\"phone_two\":null,\"email\":\"business@bdtask.com\",\"website\":\"www.news365.com\",\"latitude\":\"23.824411570033433\",\"longitude\":\"90.41929284887331\",\"map\":\"https:\/\/www.google.com\/maps\/embed?pb=!1m14!1m8!1m3!1d12275.142575508362!2d90.4103705716535!3d23.839154058973467!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a4136c4b61:0x19549f5462616f04!2sBdtask Limited!5e0!3m2!1sen!2sbd!4v1699174239627!5m2!1sen!2sbd\"}', NULL, NULL, NULL, NULL, NULL),
(114, '404_page_setup', '{\"heading\":\"No Data Found\",\"details\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum dui.\",\"img404\":\"uploads\\/images\\/4.jpg\"}', NULL, NULL, NULL, NULL, NULL),
(115, 'others_settings', '{\"reg_status\":1,\"reg_mail_status\":0,\"contact_status\":1,\"contact_mail_status\":1,\"comments_status\":1}', NULL, NULL, NULL, NULL, NULL),
(116, 'dateconvert', '{\"zero\":\"\\u0660\",\"one\":\"\\u0661\",\"two\":\"\\u0662\",\"three\":\"\\u0663\",\"four\":\"\\u0664\",\"five\":\"\\u0665\",\"six\":\"\\u0666\",\"seven\":\"\\u0667\",\"eight\":\"\\u0668\",\"nine\":\"\\u0669\",\"sat\":\"\\u0627\\u0644\\u0633\\u0628\\u062a\",\"sun\":\"\\u0627\\u0644\\u0623\\u062d\\u062f\",\"mon\":\"\\u0627\\u0644\\u0625\\u062b\\u0646\\u064a\\u0646\",\"tue\":\"\\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0627\\u0621\",\"wed\":\"\\u0627\\u0644\\u0623\\u0631\\u0628\\u0639\\u0627\\u0621\",\"thu\":\"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633\",\"fri\":\"\\u0627\\u0644\\u062c\\u0645\\u0639\\u0629\",\"jan\":\"\\u064a\\u0646\\u0627\\u064a\\u0631\",\"feb\":\"\\u0641\\u0628\\u0631\\u0627\\u064a\\u0631\",\"mar\":\"\\u0645\\u0627\\u0631\\u0633\",\"app\":\"\\u0623\\u0628\\u0631\\u064a\\u0644\",\"may\":\"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633\",\"june\":\"\\u064a\\u0648\\u0646\\u064a\\u0648\",\"july\":\"\\u064a\\u0648\\u0644\\u064a\\u0648\",\"aug\":\"\\u0623\\u063a\\u0633\\u0637\\u0633\",\"sep\":\"\\u0633\\u0628\\u062a\\u0645\\u0628\\u0631\",\"oct\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631\",\"nov\":\"\\u0646\\u0648\\u0641\\u0645\\u0628\\u0631\",\"dec\":\"\\u062f\\u064a\\u0633\\u0645\\u0628\\u0631\",\"status\":null}', NULL, NULL, NULL, NULL, NULL),
(117, 'panel_face', '{\"fontone\":\"\",\"fonttwo\":\"\",\"color_code\":\"\",\"body_font_size\":\"14\",\"body_line_hight\":\"1.5\",\"content_text_color\":\"#aa0909\",\"logo_text_color\":\"#871717\",\"menubg_color\":\"#7f3434\",\"menu_hover_color\":\"#b41818\",\"menu_font_color\":\"#ffffff\",\"menu_font_size\":\"16\",\"active_menu_color\":\"#000000\",\"active_menu_bgcolor\":\"#7c0909\",\"active_status\":\"0\"}', NULL, NULL, NULL, NULL, NULL),
(118, 'post_default_img', '{\"img\":\"uploads/images/2021-02-20/d.jpg\"}', NULL, NULL, NULL, NULL, NULL),
(119, 'apenai', '{\"OPENAI_API_KEY\":\"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\",\"OPENAI_ORGANIZATION\":\"org-T56UKPukd7W7H0CJ8MnR75oo\",\"OPENAI_MAX_NUMBER_OF_RESULT\":\"10\",\"OPENAI_MAX_TOKENS\":\"1000\",\"active_status\":\"1\"}', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `space_credentials`
--

CREATE TABLE `space_credentials` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bucket` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(111) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(111) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `frequency` int DEFAULT NULL,
  `number_of_news` varchar(111) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subs_auth_code` int NOT NULL,
  `payment_status` int NOT NULL DEFAULT '1',
  `social_sheare` int NOT NULL DEFAULT '1',
  `subscription_date` date NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_breakings`
--

CREATE TABLE `top_breakings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zkts`
--

CREATE TABLE `zkts` (
  `id` bigint UNSIGNED NOT NULL,
  `device_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `ad_s`
--
ALTER TABLE `ad_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appsettings`
--
ALTER TABLE `appsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breaking_news`
--
ALTER TABLE `breaking_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_topics`
--
ALTER TABLE `category_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments_infos`
--
ALTER TABLE `comments_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_expired_settings`
--
ALTER TABLE `doc_expired_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configs`
--
ALTER TABLE `email_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_page_positions`
--
ALTER TABLE `home_page_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langstrings`
--
ALTER TABLE `langstrings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langstrvals`
--
ALTER TABLE `langstrvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `max_archive_settings`
--
ALTER TABLE `max_archive_settings`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_contents`
--
ALTER TABLE `menu_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news_archives`
--
ALTER TABLE `news_archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_msts`
--
ALTER TABLE `news_msts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_positions`
--
ALTER TABLE `news_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_routings`
--
ALTER TABLE `news_routings`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_settings`
--
ALTER TABLE `password_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `per_menus`
--
ALTER TABLE `per_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_libraries`
--
ALTER TABLE `photo_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_posts`
--
ALTER TABLE `photo_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_post_details`
--
ALTER TABLE `photo_post_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pictures_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `post_seo_onpages`
--
ALTER TABLE `post_seo_onpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prefixes`
--
ALTER TABLE `prefixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporters`
--
ALTER TABLE `reporters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schema_posts`
--
ALTER TABLE `schema_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `space_credentials`
--
ALTER TABLE `space_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_breakings`
--
ALTER TABLE `top_breakings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazilas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_contact_no_unique` (`contact_no`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zkts`
--
ALTER TABLE `zkts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ad_s`
--
ALTER TABLE `ad_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appsettings`
--
ALTER TABLE `appsettings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaking_news`
--
ALTER TABLE `breaking_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_topics`
--
ALTER TABLE `category_topics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_infos`
--
ALTER TABLE `comments_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_expired_settings`
--
ALTER TABLE `doc_expired_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_configs`
--
ALTER TABLE `email_configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_positions`
--
ALTER TABLE `home_page_positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `langstrings`
--
ALTER TABLE `langstrings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `langstrvals`
--
ALTER TABLE `langstrvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_contents`
--
ALTER TABLE `menu_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `news_archives`
--
ALTER TABLE `news_archives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_msts`
--
ALTER TABLE `news_msts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_positions`
--
ALTER TABLE `news_positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_settings`
--
ALTER TABLE `password_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `per_menus`
--
ALTER TABLE `per_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_libraries`
--
ALTER TABLE `photo_libraries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_posts`
--
ALTER TABLE `photo_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_post_details`
--
ALTER TABLE `photo_post_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_seo_onpages`
--
ALTER TABLE `post_seo_onpages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefixes`
--
ALTER TABLE `prefixes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporters`
--
ALTER TABLE `reporters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schema_posts`
--
ALTER TABLE `schema_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `space_credentials`
--
ALTER TABLE `space_credentials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_breakings`
--
ALTER TABLE `top_breakings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zkts`
--
ALTER TABLE `zkts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
