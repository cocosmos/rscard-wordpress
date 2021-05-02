-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 11:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testwordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2021-04-12 14:39:08', '2021-04-12 16:39:08', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1618238348;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1618238348;}', 1, 1, '2021-04-12 14:39:11', '2021-04-12 16:39:11', 0, NULL),
(7, 'wc-admin_import_customers', 'complete', '2021-04-12 14:50:27', '2021-04-12 16:50:27', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1618239027;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1618239027;}', 2, 1, '2021-04-12 14:50:36', '2021-04-12 16:50:36', 0, NULL),
(8, 'wc-admin_import_orders', 'complete', '2021-04-12 14:50:27', '2021-04-12 16:50:27', '[17]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1618239027;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1618239027;}', 2, 1, '2021-04-12 14:50:36', '2021-04-12 16:50:36', 0, NULL),
(9, 'wc-admin_import_customers', 'complete', '2021-04-12 14:58:57', '2021-04-12 16:58:57', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1618239537;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1618239537;}', 2, 1, '2021-04-12 15:00:48', '2021-04-12 17:00:48', 0, NULL),
(10, 'wc-admin_import_orders', 'complete', '2021-04-12 14:58:57', '2021-04-12 16:58:57', '[18]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1618239537;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1618239537;}', 2, 1, '2021-04-12 15:00:48', '2021-04-12 17:00:48', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action créée', '2021-04-12 14:38:08', '2021-04-12 16:38:08'),
(2, 6, 'action lancée via Async Request', '2021-04-12 14:39:11', '2021-04-12 16:39:11'),
(3, 6, 'action terminée via Async Request', '2021-04-12 14:39:11', '2021-04-12 16:39:11'),
(4, 7, 'action créée', '2021-04-12 14:50:22', '2021-04-12 16:50:22'),
(5, 8, 'action créée', '2021-04-12 14:50:22', '2021-04-12 16:50:22'),
(6, 7, 'action lancée via Async Request', '2021-04-12 14:50:36', '2021-04-12 16:50:36'),
(7, 7, 'action terminée via Async Request', '2021-04-12 14:50:36', '2021-04-12 16:50:36'),
(8, 8, 'action lancée via Async Request', '2021-04-12 14:50:36', '2021-04-12 16:50:36'),
(9, 8, 'action terminée via Async Request', '2021-04-12 14:50:36', '2021-04-12 16:50:36'),
(10, 9, 'action créée', '2021-04-12 14:58:52', '2021-04-12 16:58:52'),
(11, 10, 'action créée', '2021-04-12 14:58:52', '2021-04-12 16:58:52'),
(12, 9, 'action lancée via WP Cron', '2021-04-12 15:00:48', '2021-04-12 17:00:48'),
(13, 9, 'action terminée via WP Cron', '2021-04-12 15:00:48', '2021-04-12 17:00:48'),
(14, 10, 'action lancée via WP Cron', '2021-04-12 15:00:48', '2021-04-12 17:00:48'),
(15, 10, 'action terminée via WP Cron', '2021-04-12 15:00:48', '2021-04-12 17:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, '_wp_trash_meta_status', '1'),
(2, 3, '_wp_trash_meta_time', '1619991376'),
(3, 2, '_wp_trash_meta_status', '1'),
(4, 2, '_wp_trash_meta_time', '1619991377');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-12 15:59:59', '2021-04-12 13:59:59', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 17, 'WooCommerce', '', '', '', '2021-04-12 16:50:22', '2021-04-12 14:50:22', 'Paiement à effectuer à la livraison. État de la commande modifié de Attente paiement à En attente.', 0, 'trash', 'WooCommerce', 'order_note', 0, 0),
(3, 18, 'WooCommerce', '', '', '', '2021-04-12 16:58:52', '2021-04-12 14:58:52', 'Paiement à effectuer à la livraison. État de la commande modifié de Attente paiement à En attente.', 0, 'trash', 'WooCommerce', 'order_note', 0, 0),
(4, 140, 'Mipam', 'mipam.guillot@gmail.com', 'http://localhost/site/WORDPRESS/wordpress', '::1', '2021-05-02 18:51:53', '2021-05-02 16:51:53', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 1),
(5, 140, 'Mipam', 'mipam.guillot@gmail.com', 'http://localhost/site/WORDPRESS/wordpress', '::1', '2021-05-02 18:51:58', '2021-05-02 16:51:58', 'teste', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 4, 1),
(6, 318, 'Mipam', 'mipam.guillot@gmail.com', 'http://localhost/site/WORDPRESS/wordpress', '::1', '2021-05-02 23:16:03', '2021-05-02 21:16:03', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/site/WORDPRESS/wordpress', 'yes'),
(2, 'home', 'http://localhost/site/WORDPRESS/wordpress', 'yes'),
(3, 'blogname', 'RS', 'yes'),
(4, 'blogdescription', 'card', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mipam.guillot@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '50', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:13:\"experience/?$\";s:30:\"index.php?post_type=experience\";s:43:\"experience/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=experience&feed=$matches[1]\";s:38:\"experience/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=experience&feed=$matches[1]\";s:30:\"experience/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=experience&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"experience/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"experience/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"experience/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"experience/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"experience/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"experience/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"experience/([^/]+)/embed/?$\";s:43:\"index.php?experience=$matches[1]&embed=true\";s:31:\"experience/([^/]+)/trackback/?$\";s:37:\"index.php?experience=$matches[1]&tb=1\";s:51:\"experience/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?experience=$matches[1]&feed=$matches[2]\";s:46:\"experience/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?experience=$matches[1]&feed=$matches[2]\";s:39:\"experience/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?experience=$matches[1]&paged=$matches[2]\";s:46:\"experience/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?experience=$matches[1]&cpage=$matches[2]\";s:35:\"experience/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?experience=$matches[1]&page=$matches[2]\";s:27:\"experience/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"experience/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"experience/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"experience/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"experience/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"experience/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=150&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:29:\"custom-fonts/custom-fonts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:75:\"C:\\xampp\\htdocs\\site\\WORDPRESS\\wordpress/wp-content/themes/rscard/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'rscard', 'yes'),
(41, 'stylesheet', 'rscard', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '150', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '105', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1633787999', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_FR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:10:{i:1619992799;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619995088;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619995093;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620007199;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620050399;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620050409;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620050410;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620052688;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620136799;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:1:{s:22:\"BENkzUSTcqGNipJdQ2qZy9\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B8XqFvKQEEzNg4dE.qZN8SnQMXQ7VK0\";s:10:\"created_at\";i:1619957134;}}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619955658;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(145, 'finished_updating_comment_type', '1', 'yes'),
(146, 'recently_activated', 'a:3:{s:51:\"featured-image-from-url/featured-image-from-url.php\";i:1619972665;s:23:\"ml-slider/ml-slider.php\";i:1619906331;s:29:\"use-any-font/use-any-font.php\";i:1619883998;}', 'yes'),
(149, 'current_theme', 'Rscard Mipam', 'yes'),
(150, 'theme_mods_mipam', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619956825;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(161, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(162, 'schema-ActionScheduler_StoreSchema', '3.0.1618238286', 'yes'),
(163, 'schema-ActionScheduler_LoggerSchema', '2.0.1618238286', 'yes'),
(166, 'woocommerce_schema_version', '430', 'yes'),
(167, 'woocommerce_store_address', 'Rue Adrien-Lachenal 20', 'yes'),
(168, 'woocommerce_store_address_2', '', 'yes'),
(169, 'woocommerce_store_city', 'Geneve', 'yes'),
(170, 'woocommerce_default_country', 'CH:GE', 'yes'),
(171, 'woocommerce_store_postcode', '1207', 'yes'),
(172, 'woocommerce_allowed_countries', 'all', 'yes'),
(173, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(174, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(175, 'woocommerce_ship_to_countries', 'disabled', 'yes'),
(176, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(177, 'woocommerce_default_customer_address', '', 'yes'),
(178, 'woocommerce_calc_taxes', 'yes', 'yes'),
(179, 'woocommerce_enable_coupons', 'yes', 'yes'),
(180, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(181, 'woocommerce_currency', 'CHF', 'yes'),
(182, 'woocommerce_currency_pos', 'left_space', 'yes'),
(183, 'woocommerce_price_thousand_sep', '\'', 'yes'),
(184, 'woocommerce_price_decimal_sep', '.', 'yes'),
(185, 'woocommerce_price_num_decimals', '2', 'yes'),
(186, 'woocommerce_shop_page_id', '6', 'yes'),
(187, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(188, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(189, 'woocommerce_placeholder_image', '5', 'yes'),
(190, 'woocommerce_weight_unit', 'kg', 'yes'),
(191, 'woocommerce_dimension_unit', 'cm', 'yes'),
(192, 'woocommerce_enable_reviews', 'yes', 'yes'),
(193, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(194, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(195, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(196, 'woocommerce_review_rating_required', 'yes', 'no'),
(197, 'woocommerce_manage_stock', 'yes', 'yes'),
(198, 'woocommerce_hold_stock_minutes', '60', 'no'),
(199, 'woocommerce_notify_low_stock', 'yes', 'no'),
(200, 'woocommerce_notify_no_stock', 'yes', 'no'),
(201, 'woocommerce_stock_email_recipient', 'mipam.guillot@gmail.com', 'no'),
(202, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(203, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(204, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(205, 'woocommerce_stock_format', '', 'yes'),
(206, 'woocommerce_file_download_method', 'force', 'no'),
(207, 'woocommerce_downloads_require_login', 'no', 'no'),
(208, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(209, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(210, 'woocommerce_prices_include_tax', 'yes', 'yes'),
(211, 'woocommerce_tax_based_on', 'billing', 'yes'),
(212, 'woocommerce_shipping_tax_class', '', 'yes'),
(213, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(214, 'woocommerce_tax_classes', '', 'yes'),
(215, 'woocommerce_tax_display_shop', 'incl', 'yes'),
(216, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(217, 'woocommerce_price_display_suffix', '', 'yes'),
(218, 'woocommerce_tax_total_display', 'itemized', 'no'),
(219, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(220, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(221, 'woocommerce_ship_to_destination', 'billing', 'no'),
(222, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(223, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(225, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(226, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(227, 'woocommerce_registration_generate_username', 'yes', 'no'),
(228, 'woocommerce_registration_generate_password', 'yes', 'no'),
(229, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(230, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(231, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(232, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(233, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(234, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(235, 'woocommerce_trash_pending_orders', '', 'no'),
(236, 'woocommerce_trash_failed_orders', '', 'no'),
(237, 'woocommerce_trash_cancelled_orders', '', 'no'),
(238, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(239, 'woocommerce_email_from_name', 'TestWordpress', 'no'),
(240, 'woocommerce_email_from_address', 'mipam.guillot@gmail.com', 'no'),
(241, 'woocommerce_email_header_image', '', 'no'),
(242, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(243, 'woocommerce_email_base_color', '#96588a', 'no'),
(244, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(245, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(246, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(247, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(248, 'woocommerce_cart_page_id', '7', 'no'),
(249, 'woocommerce_checkout_page_id', '8', 'no'),
(250, 'woocommerce_myaccount_page_id', '9', 'no'),
(251, 'woocommerce_terms_page_id', '', 'no'),
(252, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(253, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(254, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(255, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(256, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(257, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(258, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(259, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(260, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(261, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(262, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(263, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(264, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(265, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(266, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(267, 'woocommerce_api_enabled', 'no', 'yes'),
(268, 'woocommerce_allow_tracking', 'yes', 'no'),
(269, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(270, 'woocommerce_single_image_width', '600', 'yes'),
(271, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(272, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(273, 'woocommerce_demo_store', 'no', 'no'),
(274, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(275, 'current_theme_supports_woocommerce', 'no', 'yes'),
(276, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(277, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(279, 'default_product_cat', '15', 'yes'),
(282, 'woocommerce_version', '5.1.0', 'yes'),
(283, 'woocommerce_db_version', '5.1.0', 'yes'),
(287, '_transient_jetpack_autoloader_plugin_paths', 'a:0:{}', 'yes'),
(288, 'action_scheduler_lock_async-request-runner', '1618320138', 'yes'),
(289, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(290, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"eAELYzRaCaTipcsQEWiKgG7k9mw3LEbr\";}', 'yes'),
(291, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(292, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'woocommerce_admin_version', '2.0.2', 'yes'),
(307, 'woocommerce_admin_install_timestamp', '1618238288', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(311, 'wc_remote_inbox_notifications_specs', 'a:15:{s:20:\"paypal_ppcp_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"paypal_ppcp_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Offer more options with the new PayPal\";s:7:\"content\";s:113:\"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"open_wc_paypal_payments_product_page\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:61:\"https://woocommerce.com/products/woocommerce-paypal-payments/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-04-05 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-04-21 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-gateway-paypal-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:37:\"woocommerce-gateway-paypal-pro-hosted\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-advanced\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:40:\"woocommerce-gateway-paypal-digital-goods\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"woocommerce-paypal-here-gateway\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-paypal-adaptive-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:27:\"woocommerce-paypal-payments\";s:7:\"version\";s:5:\"1.2.1\";s:8:\"operator\";s:1:\"<\";}}}}}s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:168:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-02-15 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-02-29 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.1.4\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wcpay-apple-pay-is-now-available\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wcpay-apple-pay-is-now-available\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Apple Pay is now available with WooCommerce Payments!\";s:7:\"content\";s:397:\"Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:13:\"add-apple-pay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Add Apple Pay\";}}s:3:\"url\";s:69:\"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:121:\"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.2.0\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";b:0;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}s:27:\"wcpay-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:205:\"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:96:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"wcpay-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"wcpay-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Grow your business with WooCommerce Payments and Apple Pay\";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:103:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}}', 'yes'),
(312, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":3:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;s:17:\"new_product_count\";i:0;}', 'yes'),
(314, 'wc_blocks_db_schema_version', '260', 'yes'),
(315, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(319, '_transient_woocommerce_reports-transient-version', '1618299628', 'yes'),
(330, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}}s:13:\"product_types\";a:2:{i:0;s:8:\"physical\";i:1;s:9:\"downloads\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:5:\"mipam\";s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(340, 'woocommerce_task_list_tracked_completed_tasks', 'a:5:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:3:\"tax\";i:4;s:10:\"appearance\";}', 'yes'),
(343, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(345, '_transient_product_query-transient-version', '1618319531', 'yes'),
(346, '_transient_product-transient-version', '1618265092', 'yes'),
(351, 'woocommerce_ces_tracks_queue', 'a:0:{}', 'yes'),
(353, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(358, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(361, '_transient_shipping-transient-version', '1618238522', 'yes'),
(362, '_transient_timeout_wc_shipping_method_count', '1620830524', 'no'),
(363, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1618238522\";s:5:\"value\";i:0;}', 'no'),
(368, 'wpo_wcpdf_random_string', 'bcd2bbefc0e2d23752b0c6094e37b849', 'yes'),
(369, 'wpo_wcpdf_settings_general', 'a:11:{s:16:\"download_display\";s:7:\"display\";s:13:\"template_path\";s:74:\"wp-content/plugins/woocommerce-pdf-invoices-packing-slips/templates/Simple\";s:10:\"paper_size\";s:2:\"a4\";s:11:\"header_logo\";s:2:\"10\";s:18:\"header_logo_height\";s:0:\"\";s:9:\"shop_name\";a:1:{s:7:\"default\";s:9:\"KALAPA SA\";}s:12:\"shop_address\";a:1:{s:7:\"default\";s:35:\"CHEMIN DE AMNN\r\n12122 VESEA\r\nSUISSE\";}s:6:\"footer\";a:1:{s:7:\"default\";s:23:\"Merci de votre commande\";}s:7:\"extra_1\";a:1:{s:7:\"default\";s:4:\"test\";}s:7:\"extra_2\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_3\";a:1:{s:7:\"default\";s:0:\"\";}}', 'yes'),
(370, 'wpo_wcpdf_documents_settings_invoice', 'a:7:{s:7:\"enabled\";s:1:\"1\";s:24:\"display_shipping_address\";s:0:\"\";s:22:\"display_customer_notes\";s:1:\"1\";s:12:\"display_date\";s:10:\"order_date\";s:14:\"display_number\";s:14:\"invoice_number\";s:13:\"number_format\";a:3:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:7:\"padding\";s:0:\"\";}s:18:\"my_account_buttons\";s:9:\"available\";}', 'yes'),
(371, 'wpo_wcpdf_documents_settings_packing-slip', 'a:1:{s:7:\"enabled\";i:1;}', 'yes'),
(372, 'wpo_wcpdf_settings_debug', 'a:2:{s:14:\"enable_cleanup\";i:1;s:12:\"cleanup_days\";i:7;}', 'yes'),
(375, 'wpo_wcpdf_version', '2.8.3', 'yes'),
(384, 'woocommerce_onboarding_homepage_post_id', '13', 'yes'),
(385, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(386, 'woocommerce_demo_store_notice', '', 'yes'),
(396, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(405, '_transient_timeout_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', '1620912085', 'no'),
(406, '_transient_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', 'a:2:{s:7:\"version\";s:10:\"1618319531\";s:5:\"value\";a:2:{i:0;i:19;i:1;i:11;}}', 'no'),
(409, '_transient_orders-transient-version', '1618239534', 'yes'),
(430, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(476, 'Wf_Woocommerce_Packing_List', 'a:18:{s:38:\"woocommerce_wf_packinglist_companyname\";s:9:\"KALAPA SA\";s:31:\"woocommerce_wf_packinglist_logo\";s:80:\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/album-1.jpg\";s:33:\"woocommerce_wf_packinglist_footer\";s:0:\"\";s:38:\"woocommerce_wf_packinglist_sender_name\";s:13:\"Mipam Guillot\";s:47:\"woocommerce_wf_packinglist_sender_address_line1\";s:22:\"Rue Adrien-Lachenal 20\";s:47:\"woocommerce_wf_packinglist_sender_address_line2\";s:0:\"\";s:38:\"woocommerce_wf_packinglist_sender_city\";s:6:\"Geneve\";s:10:\"wf_country\";s:2:\"AF\";s:44:\"woocommerce_wf_packinglist_sender_postalcode\";s:4:\"1207\";s:48:\"woocommerce_wf_packinglist_sender_contact_number\";s:10:\"0791059375\";s:37:\"woocommerce_wf_packinglist_sender_vat\";s:0:\"\";s:34:\"woocommerce_wf_packinglist_preview\";s:7:\"enabled\";s:39:\"woocommerce_wf_packinglist_package_type\";s:14:\"single_packing\";s:32:\"woocommerce_wf_packinglist_boxes\";a:0:{}s:30:\"woocommerce_wf_add_rtl_support\";s:2:\"No\";s:18:\"active_pdf_library\";s:6:\"dompdf\";s:37:\"woocommerce_wf_generate_for_taxstatus\";a:1:{i:0;s:6:\"ex_tax\";}s:25:\"wf_additional_data_fields\";a:0:{}}', 'yes'),
(477, 'wf_pklist_options_migrated', '1', 'yes'),
(478, 'wf_woocommerce_packing_list_invoice', 'a:17:{s:39:\"woocommerce_wf_generate_for_orderstatus\";a:1:{i:0;s:12:\"wc-completed\";}s:29:\"woocommerce_wf_attach_invoice\";a:0:{}s:31:\"woocommerce_wf_packinglist_logo\";s:0:\"\";s:34:\"woocommerce_wf_add_invoice_in_mail\";s:2:\"No\";s:40:\"woocommerce_wf_packinglist_frontend_info\";s:2:\"No\";s:36:\"woocommerce_wf_invoice_number_format\";s:8:\"[number]\";s:37:\"woocommerce_wf_Current_Invoice_number\";s:1:\"1\";s:35:\"woocommerce_wf_invoice_start_number\";s:1:\"1\";s:36:\"woocommerce_wf_invoice_number_prefix\";s:0:\"\";s:37:\"woocommerce_wf_invoice_padding_number\";s:1:\"0\";s:37:\"woocommerce_wf_invoice_number_postfix\";s:0:\"\";s:37:\"woocommerce_wf_invoice_as_ordernumber\";s:3:\"Yes\";s:29:\"woocommerce_wf_enable_invoice\";s:3:\"Yes\";s:43:\"woocommerce_wf_add_customer_note_in_invoice\";s:2:\"No\";s:41:\"woocommerce_wf_packinglist_variation_data\";s:3:\"Yes\";s:26:\"wf_invoice_contactno_email\";a:2:{i:0;s:14:\"contact_number\";i:1;s:5:\"email\";}s:39:\"woocommerce_wf_orderdate_as_invoicedate\";s:3:\"Yes\";}', 'yes'),
(479, 'wf_woocommerce_packing_list_packinglist', 'a:3:{s:39:\"woocommerce_wf_attach_image_packinglist\";s:3:\"Yes\";s:47:\"woocommerce_wf_add_customer_note_in_packinglist\";s:2:\"No\";s:36:\"woocommerce_wf_packinglist_footer_pk\";s:2:\"No\";}', 'yes'),
(480, 'wf_woocommerce_packing_list_deliverynote', 'a:3:{s:40:\"woocommerce_wf_attach_image_deliverynote\";s:3:\"Yes\";s:48:\"woocommerce_wf_add_customer_note_in_deliverynote\";s:2:\"No\";s:36:\"woocommerce_wf_packinglist_footer_dn\";s:2:\"No\";}', 'yes'),
(481, 'wf_woocommerce_packing_list_dispatchlabel', 'a:2:{s:49:\"woocommerce_wf_add_customer_note_in_dispatchlabel\";s:2:\"No\";s:36:\"woocommerce_wf_packinglist_footer_dl\";s:2:\"No\";}', 'yes'),
(482, 'wf_woocommerce_packing_list_shippinglabel', 'a:1:{s:36:\"woocommerce_wf_packinglist_footer_sl\";s:2:\"No\";}', 'yes'),
(483, 'wf_pklist_templates_migrated', '1', 'yes'),
(484, 'wf_pklist_module_status_migrated', '1', 'yes'),
(485, 'wt_pklist_common_modules', 'a:5:{s:7:\"invoice\";i:1;s:11:\"packinglist\";i:0;s:13:\"shippinglabel\";i:0;s:12:\"deliverynote\";i:0;s:13:\"dispatchlabel\";i:0;}', 'yes'),
(486, 'wt_pklist_start_date', '1618242313', 'yes'),
(487, 'wt_pklist_admin_modules', 'a:3:{s:10:\"customizer\";i:1;s:18:\"uninstall-feedback\";i:1;s:9:\"freevspro\";i:1;}', 'yes'),
(493, 'wcdn_admin_email_print_link', 'no', 'yes'),
(680, 'WC_PDF_INVOICE_LATEST_DB_VERSION', '57', 'yes'),
(705, 'product_cat_children', 'a:0:{}', 'yes'),
(707, '_transient_timeout_wc_low_stock_count', '1620857122', 'no'),
(708, '_transient_wc_low_stock_count', '0', 'no'),
(709, '_transient_timeout_wc_outofstock_count', '1620857122', 'no'),
(710, '_transient_wc_outofstock_count', '0', 'no'),
(711, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:17:\"Virement bancaire\";s:11:\"description\";s:216:\"Effectuez le paiement directement depuis votre compte bancaire. Veuillez utiliser l’ID de votre commande comme référence du paiement. Votre commande ne sera pas expédiée tant que les fonds ne seront pas reçus.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(712, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:21:\"Paiements par chèque\";s:11:\"description\";s:81:\"Veuillez envoyer un chèque à Nom de la boutique, rue, code postal, ville, pays.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(713, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(735, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";}', 'yes'),
(759, '_transient_timeout_wc_term_counts', '1620893153', 'no'),
(760, '_transient_wc_term_counts', 'a:2:{i:16;s:1:\"1\";i:17;s:1:\"1\";}', 'no'),
(804, 'recovery_mode_email_last_sent', '1619957134', 'yes'),
(829, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:19;}}', 'yes'),
(857, 'acf_version', '5.9.5', 'yes'),
(881, 'theme_mods_dev4', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619798077;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(900, 'theme_mods_rscard', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(943, '_transient_health-check-site-status-result', '{\"good\":\"14\",\"recommended\":\"5\",\"critical\":\"1\"}', 'yes'),
(956, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"mipam.guillot@gmail.com\";s:7:\"version\";s:5:\"5.7.1\";s:9:\"timestamp\";i:1619117505;}', 'no'),
(968, '_site_transient_timeout_browser_87532f5c229247f5166d216fad1d829f', '1620148057', 'no'),
(969, '_site_transient_browser_87532f5c229247f5166d216fad1d829f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.85\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(994, '_site_transient_timeout_browser_3651f072395347537c74089989c88a66', '1620402774', 'no'),
(995, '_site_transient_browser_3651f072395347537c74089989c88a66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(996, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1620402774', 'no'),
(997, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(998, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1620035293', 'no'),
(999, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669500/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-04 07:00:00\";s:8:\"end_date\";s:19:\"2021-05-04 08:00:00\";s:20:\"start_unix_timestamp\";i:1620136800;s:18:\"end_unix_timestamp\";i:1620140400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.9036063;}}i:2;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2021/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2021-06-07 00:00:00\";s:8:\"end_date\";s:19:\"2021-06-10 00:00:00\";s:20:\"start_unix_timestamp\";i:1623020400;s:18:\"end_unix_timestamp\";i:1623279600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1622022;s:9:\"longitude\";d:-8.6570588;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"WE ARE BACK | WordPress Meetup St.Gallen #12 – Plugin Night\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-St-Gallen/events/277806867/\";s:6:\"meetup\";s:19:\"WordPress St.Gallen\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-St-Gallen/\";s:4:\"date\";s:19:\"2021-05-19 18:30:00\";s:8:\"end_date\";s:19:\"2021-05-19 20:30:00\";s:20:\"start_unix_timestamp\";i:1621441800;s:18:\"end_unix_timestamp\";i:1621449000;s:8:\"location\";a:4:{s:8:\"location\";s:23:\"St. Gallen, Switzerland\";s:7:\"country\";s:2:\"ch\";s:8:\"latitude\";d:47.418807983398;s:9:\"longitude\";d:9.3666296005249;}}i:4;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Besucherstatistiken ohne Google Analytics\";s:3:\"url\";s:55:\"https://www.meetup.com/WordPress-Bern/events/276397140/\";s:6:\"meetup\";s:14:\"WordPress Bern\";s:10:\"meetup_url\";s:38:\"https://www.meetup.com/WordPress-Bern/\";s:4:\"date\";s:19:\"2021-05-27 18:00:00\";s:8:\"end_date\";s:19:\"2021-05-27 20:00:00\";s:20:\"start_unix_timestamp\";i:1622131200;s:18:\"end_unix_timestamp\";i:1622138400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.950000762939;s:9:\"longitude\";d:7.4400000572205;}}}}', 'no'),
(1008, 'theme_switched_via_customizer', '', 'yes'),
(1009, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(1011, 'theme_mods_RSCARDFINAL', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619883249;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(1068, 'uaf_css_updated_timestamp', '1619883960', 'yes'),
(1069, 'uaf_site_url', 'aHR0cDovL2xvY2FsaG9zdC9zaXRlL1dPUkRQUkVTUy93b3JkcHJlc3M=', 'yes'),
(1070, 'uaf_install_date', '2021-05-01', 'yes'),
(1071, 'uaf_current_version', '6.0.5', 'yes'),
(1072, 'uaf_api_key', 'dbcc7c9686833495e70fc7d1d9e2451d', 'yes'),
(1073, 'uaf_server_url_type', 'default', 'yes'),
(1074, 'uaf_activated_url', 'aHR0cDovL2xvY2FsaG9zdC9zaXRlL1dPUkRQUkVTUy93b3JkcHJlc3M=', 'yes'),
(1075, 'uaf_uploader_type', 'js', 'yes'),
(1076, 'uaf_font_display_property', 'auto', 'yes'),
(1077, 'uaf_enable_multi_lang_support', '0', 'yes'),
(1078, 'uaf_disbale_editor_font_list', '0', 'yes'),
(1079, 'uaf_use_absolute_font_path', '0', 'yes'),
(1080, 'uaf_font_data', '{\"210501034600\":{\"font_name\":\"icomoon\",\"font_path\":\"6651icomoon\"}}', 'yes'),
(1083, '_custom_fonts_db_version', '1.3.2', 'yes'),
(1084, 'bsf_analytics_installed_time', '1619884034', 'no'),
(1085, 'taxonomy_bsf_custom_fonts_22', 'a:9:{s:13:\"font_fallback\";s:0:\"\";s:12:\"font-display\";s:4:\"auto\";s:13:\"font-weight-0\";s:3:\"400\";s:13:\"font_woff_2-0\";s:0:\"\";s:11:\"font_woff-0\";s:81:\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.woff\";s:10:\"font_ttf-0\";s:80:\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.ttf\";s:10:\"font_eot-0\";s:80:\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.eot\";s:10:\"font_svg-0\";s:80:\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.svg\";s:10:\"font_otf-0\";s:0:\"\";}', 'yes'),
(1124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1619972445;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619972466;s:7:\"checked\";a:5:{s:4:\"dev4\";s:5:\"0.0.1\";s:5:\"mipam\";s:5:\"0.0.1\";s:6:\"rscard\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1127, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1128, 'metaslider_optin_via', 'notice', 'yes'),
(1129, 'metaslider_optin_user_extras', 'a:4:{s:2:\"id\";i:1;s:5:\"email\";s:23:\"mipam.guillot@gmail.com\";s:2:\"ip\";s:3:\"::1\";s:4:\"time\";i:1619906284;}', 'yes'),
(1130, 'ml-slider_allow_tracking', 'yes', 'yes'),
(1132, 'ml-slider_tracking_last_send', '1619906285', 'yes'),
(1133, 'metaslider_global_settings', 'a:1:{s:5:\"optIn\";i:1;}', 'yes'),
(1134, 'ms_hide_all_ads_until', '1621115887', 'yes'),
(1136, 'metaslider_systemcheck', 'a:1:{s:16:\"wordPressVersion\";b:0;}', 'no'),
(1137, 'metagallery_opened', '1', 'yes'),
(1148, '_transient_timeout_feed_0d2db5fea5a8633b56992c916819b198', '1619998614', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1149, '_transient_feed_0d2db5fea5a8633b56992c916819b198', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Blog | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://fr.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 15:39:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50799\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"Le 30 avril 2021, rejoignez-nous pour un nouveau WordPress Translation Day FR !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Apr 2021 10:33:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Évènement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2028\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"Les WordCamps et Meetups ne sont toujours pas à l&#8217;ordre du jour… mais la communauté WordPress s&#8217;organise&#160;! Cette année, les équipes de traduction et de documentation de WP en français vous proposent de participer à un nouveau WordPress Translation Day FR en ligne le vendredi 30 avril 2021. Cet évènement se déroulera donc le vendredi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2462:\"\n<p>Les WordCamps et Meetups ne sont toujours pas à l&rsquo;ordre du jour… mais la communauté WordPress s&rsquo;organise&nbsp;!</p>\n\n\n\n<p>Cette année, les équipes de traduction et de documentation de WP en français vous proposent de participer à un nouveau WordPress Translation Day FR en ligne le vendredi 30 avril 2021.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1.png\"><img loading=\"lazy\" width=\"1024\" height=\"487\" src=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-1024x487.png\" alt=\"\" class=\"wp-image-2038\" srcset=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-1024x487.png 1024w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-300x143.png 300w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-768x365.png 768w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1.png 1467w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Cet évènement se déroulera donc le vendredi 30 avril de 14h à 18h, en visioconférence via Zoom.</p>\n\n\n\n<p>Durant cette après-midi 4 GTE (<em>General Translation Editors</em>) seront présents pour vous aider (<a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>, <a href=\"https://profile.wordpress.org/fxbenard\">FX Bénard</a>, <a href=\"https://profile.wordpress.org/wolforg\">Didier Wolforg</a> et <a href=\"https://profile.wordpress.org/audrasjb\">Jb Audras</a>) ainsi que les responsables de la documentation de WordPress en français (<a href=\"https://profile.wordpress.org/chaton666\">Marie Comet</a> et <a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>).</p>\n\n\n\n<p>L’objectif est d’accueillir, orienter et accompagner un maximum de nouvelles personnes pour les initier à la traduction du cœur de WordPress, mais aussi des thèmes, des extensions et de la documentation relative au fonctionnement de ce CMS.</p>\n\n\n\n<p>Tout au long de l’après-midi nous accueillerons les personnes désireuses de participer et si besoin, nous organiserons des mini-formations pour aider les personnes débutantes.</p>\n\n\n\n<p>Nous vous attendons nombreuses et nombreux ! Alors rendez-vous sur le Slack de la communauté WordPress-fr&nbsp;:&nbsp;<a href=\"https://wpfr.net/slack/\">https://wpfr.net/slack/</a>&nbsp;puis dans le canal&nbsp;<strong>#wptranslationday</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:74:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 5.7 « Esperanza »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Mar 2021 21:42:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1996\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:409:\"Souhaitez la bienvenue à «&#160;Esperanza&#160;», la première version de WordPress de l&#8217;année 2021. Elle a été nommée ainsi en l&#8217;honneur de la bassiste de jazz Esperanza Spalding. Son chemin de musicienne est varié et inspirant — apprenez-en plus sur elle&#160;et n’hésitez pas écouter l&#8217;un de ses albums&#160;! Avec cette nouvelle version, WordPress vous propose de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\";s:6:\"length\";s:6:\"183815\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:45063:\"\n<div class=\"wp-block-cover\" style=\"background-color:#0a5b89\"><img loading=\"lazy\" width=\"1000\" height=\"517\" class=\"wp-block-cover__image-background wp-image-1997\" alt=\"\" src=\"https://fr.wordpress.org/files/2021/03/about-header-brushes.png\" style=\"object-position:52% 67%\" data-object-fit=\"cover\" data-object-position=\"52% 67%\" srcset=\"https://fr.wordpress.org/files/2021/03/about-header-brushes.png 1000w, https://fr.wordpress.org/files/2021/03/about-header-brushes-300x155.png 300w, https://fr.wordpress.org/files/2021/03/about-header-brushes-768x397.png 768w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" /><div class=\"wp-block-cover__inner-container\">\n<p class=\"has-text-align-center has-large-font-size\"><strong>WordPress&nbsp;5.7</strong> <br><strong><em>«&nbsp;Esperanza&nbsp;»</em></strong></p>\n\n\n\n<p>Rafraîchissement des couleurs de l&rsquo;administration, simplifications des interactions dans l’éditeur, des outils placés là où vous en avez besoin, WordPress&nbsp;5.7 vous permet de vous concentrer sur le contenu que vous créez.</p>\n\n\n\n<div style=\"height:220px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\n\n\n<p>Souhaitez la bienvenue à «&nbsp;Esperanza&nbsp;», la première version de WordPress de l&rsquo;année 2021. Elle a été nommée ainsi en l&rsquo;honneur de la bassiste de jazz Esperanza Spalding. Son chemin de musicienne est varié et inspirant — <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://en.wikipedia.org/wiki/Esperanza_Spalding\">apprenez-en plus sur elle</a>&nbsp;et n’hésitez pas écouter l&rsquo;un de ses albums&nbsp;!</p>\n\n\n\n<p>Avec cette nouvelle version, WordPress vous propose de nouvelles couleurs et son éditeur vous aidera à accomplir des actions que vous ne pouviez pas envisager auparavant — du moins, pas sans écrire du code ou engager un pro. Les réglages que vous utilisez le plus souvent, comme celui de la taille des caractères, sont présents sur davantage de blocs. Et des modifications de mise en page telles que le passage des images en pleine hauteur deviennent enfin plus simples à réaliser.</p>\n\n\n\n<span id=\"more-1996\"></span>\n\n\n\n<h2>Maintenant, l’éditeur est plus simple à utiliser</h2>\n\n\n\n<p><strong>Plus d’endroits pour gérer la taille des polices&nbsp;:</strong>&nbsp;les contrôles de la taille des polices sont maintenant disponibles là où vous en avez besoin, notamment sur les blocs liste et code. Plus besoin de se rendre sur un autre écran pour effectuer cette simple modification&nbsp;!</p>\n\n\n\n<p><strong><strong>Blocs réutilisables&nbsp;:</strong>&nbsp;</strong>plusieurs améliorations rendent les blocs réutilisables plus stables et plus faciles à utiliser. Et maintenant, ils s’enregistrent automatiquement lorsque vous sauvegardez une publication.</p>\n\n\n\n<p><strong>Outil d’insertion de blocs en glisser-déposer&nbsp;:</strong>&nbsp;glissez les blocs et les compositions de blocs de l’outil d’insertion directement dans votre publication.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\"></video></figure>\n\n\n\n<h2>Vous pouvez faire plus, sans écrire la moindre ligne de code</h2>\n\n\n\n<p><strong>Alignement en hauteur&nbsp;:</strong>&nbsp;avez-vous déjà voulu donner au bloc bannière une hauteur égale à la hauteur de la fenêtre&nbsp;? Maintenant, vous pouvez.</p>\n\n\n\n<p><strong>Bloc Boutons&nbsp;:</strong>&nbsp;vous pouvez désormais choisir entre une disposition verticale ou horizontale des boutons. Et vous pouvez régler la largeur des boutons à un pourcentage prédéfini.</p>\n\n\n\n<p><strong>Bloc d’icônes de réseaux sociaux&nbsp;:</strong>&nbsp;vous pouvez maintenant modifier la taille des icônes.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.7/about-57-cover.jpg\" alt=\"\" /></figure>\n\n\n\n<h2>Simplification de la palette de couleurs par défaut</h2>\n\n\n\n<p>Cette nouvelle palette de couleurs simplifiée réduit le nombre de couleurs qui se trouvaient auparavant dans le cœur de WordPress à sept couleurs principales et un jeu de 56 nuances conformes au rapport de contraste&nbsp;<a href=\"https://www.w3.org/WAI/WCAG2AAA-Conformance\">WCAG 2.0 AA recommandé</a>.</p>\n\n\n\n<p>En terme de perception, les variations de couleurs sont uniformes du clair au foncé dans chaque gamme de couleur ce qui signifie qu’elles vont du plus clair vers le plus foncé avec les mêmes paliers.</p>\n\n\n\n<p>La moitié de la gamme de couleurs a un rapport de contraste de 4,5 ou plus par rapport au noir, et l’autre moitié propose le même rapport de contraste par rapport au blanc.</p>\n\n\n\n<p>Vous découvrirez cette nouvelle palette de couleurs par défaut sur votre tableau de bord WordPress. Si vous créez des thèmes, des extensions ou tout autre composant, pensez à l’utiliser. Pour plus de détails,&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7\">consultez la note de développement concernant cette palette de couleurs (en anglais)</a>.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57.png\"><img loading=\"lazy\" width=\"1024\" height=\"20\" src=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57-1024x20.png\" alt=\"\" class=\"wp-image-2008\" srcset=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57-1024x20.png 1024w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-300x6.png 300w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-768x15.png 768w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-1536x30.png 1536w, https://fr.wordpress.org/files/2021/03/frise-color-wp57.png 1808w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<h3>De HTTP à HTTPS en un clic</h3>\n\n\n\n<p>Le passage d’un site de HTTP à HTTPS se fait maintenant en un clic. WordPress mettra automatiquement à jour les URL en base de données lorsque vous passerez au HTTPS. Ne perdez plus votre temps à chercher les URL à modifier&nbsp;!</p>\n\n\n\n<h3>Nouvelle API Robots</h3>\n\n\n\n<p>La nouvelle API Robots vous permet d’inclure des directives de filtrage dans la balise méta «&nbsp;robots&nbsp;», et l’API intègre par défaut la directive&nbsp;<code>max-image-preview: large</code>. Cela signifie que les moteurs de recherche peuvent maintenant afficher de plus grandes images de prévisualisation (à moins que le site ne soit pas public), ce qui peut améliorer votre trafic.</p>\n\n\n\n<h3>Poursuite du nettoyage nécessaire après la mise à jour vers jQuery 3.5.1</h3>\n\n\n\n<p>Pendant des années, jQuery a aidé à animer les choses à l’écran de façon très efficace — mais les choses évoluent sans cesse, et jQuery n’est pas en reste.</p>\n\n\n\n<p>Avec WP&nbsp;5.7, jQuery devient moins intrusif et retourne moins de messages dans la console de votre navigateur.</p>\n\n\n\n<h3>Chargez vos iframes en différé</h3>\n\n\n\n<p>Dorénavant, les iframes pourront se charger en différé. Par défaut, WordPress ajoutera un attribut&nbsp;<code>loading=\"lazy\"</code>&nbsp;aux balises iframe lorsque leur largeur et leur hauteur seront spécifiées.</p>\n\n\n\n<h3>Consultez le guide technique de la version pour en savoir plus&nbsp;!</h3>\n\n\n\n<p>Consultez le guide des changements techniques de WordPress&nbsp;5.7. Il met en avant les notes de développement pour chaque modification que vous souhaiteriez approfondir&nbsp;:&nbsp;<a href=\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/\">guide des changements techniques de WordPress 5.7</a></p>\n\n\n\n<h2>L&rsquo;équipe de direction de WordPress 5.7</h2>\n\n\n\n<p>La version 5.7 de WordPress a été dirigée par une équipe réduite mais expérimentée&nbsp;:</p>\n\n\n\n<ul><li><strong>Responsable de la version&nbsp;:</strong>&nbsp;Matt Mullenweg (<a href=\'https://profiles.wordpress.org/matt/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>matt</a>)</li><li><strong>Coordinatrice de la version&nbsp;:</strong>&nbsp;Ebonie Butler (<a href=\'https://profiles.wordpress.org/metalandcoffee/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>metalandcoffee</a>)</li><li><strong>Responsable des tickets&nbsp;:</strong>&nbsp;Tonya Mork (<a href=\'https://profiles.wordpress.org/hellofromtonya/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hellofromtonya</a>)</li><li><strong style=\", sans-serif\">Responsable technique côté cœur&nbsp;:</strong><span style=\", sans-serif\">&nbsp;Sergey Biryukov (<a href=\'https://profiles.wordpress.org/sergeybiryukov/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sergeybiryukov</a>)</span></li><li><strong>Responsable technique côté éditeur&nbsp;:</strong>&nbsp;Robert Anderson (<a href=\'https://profiles.wordpress.org/noisysocks/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>noisysocks</a>)</li><li><strong>Responsable du design&nbsp;:</strong>&nbsp;Tim Hengeveld (<a href=\'https://profiles.wordpress.org/hedgefield/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hedgefield</a>)</li><li><strong>Responsable accessibilité&nbsp;:</strong>&nbsp;Sarah Ricker (@sarahricke<strong>r</strong>)</li><li><strong>Responsable de la documentation&nbsp;:&nbsp;</strong>Jb Audras (<a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a>)</li><li><strong>Responsable des tests&nbsp;:</strong>&nbsp;Monika Rao (<a href=\'https://profiles.wordpress.org/monikarao/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>monikarao</a>)</li></ul>\n\n\n\n<p>Cette version est le résultat du dur labeur de 481 contributrices et contributeurs. Cela représente environ 250 tickets sur Trac et plus de 950 <em>pull requests</em> sur GitHub.</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/7studio/\">7studio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaribaud/\">aaribaud</a>,&nbsp;<a href=\"https://profiles.wordpress.org/technosailor/\">Aaron Brazell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaronrobertshaw/\">aaronrobertshaw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/abagtcs/\">abagtcs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/acerempel/\">acerempel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/activecoder/\">activecoder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ad7six/\">ad7six</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bosconiandynamics/\">Adam Bosco</a>,&nbsp;<a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/adamboro/\">adamboro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/addiestavlo/\">Addison Stavlo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrahmadawais/\">Ahmad Awais</a>,&nbsp;<a href=\"https://profiles.wordpress.org/engahmeds3ed/\">Ahmed Saeed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/albertomake/\">albertomake</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexwoollam/\">Alex Woollam</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alex27/\">alex27</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chemiker/\">Alexander Lueken</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexstine/\">alexstine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>,&nbsp;<a href=\"https://profiles.wordpress.org/almendron/\">almendron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amandariu/\">Amanda Riu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ambienthack/\">ambienthack</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nosolosw/\">André Maneiro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antonlukin/\">Anton Lukin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anyssa/\">Anyssa Ferreira</a>,&nbsp;<a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/artpi/\">Artur Piszek</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maigret/\">Aurélien Denis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bartosz777/\">bartosz777</a>,&nbsp;<a href=\"https://profiles.wordpress.org/basscan/\">basscan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bduclos/\">bduclos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/becdetat/\">becdetat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixolin/\">Bego Mario Garde</a>,&nbsp;<a href=\"https://profiles.wordpress.org/scruffian/\">Ben Dwyer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bernhard%20reiter/\">Bernhard Reiter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bhanusinghkre/\">bhanusinghkre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bonniebeeman/\">bonniebeeman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibdz/\">Boy Witthaya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>,&nbsp;<a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>,&nbsp;<a href=\"https://profiles.wordpress.org/brijeshb42/\">brijeshb42</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burnuser/\">burnuser</a>,&nbsp;<a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carike/\">Carike</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carloscastilloadhoc/\">carloscastilloadhoc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carlosgprim/\">carlosgprim</a>,&nbsp;<a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>,&nbsp;<a href=\"https://profiles.wordpress.org/celendesign/\">celendesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cenay/\">Cenay Nailor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ceyhun0/\">ceyhun0</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chexwarrior/\">chexwarrior</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amethystanswers/\">Christina Workman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cfinke/\">Christopher Finke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clayray/\">clayray</a>,&nbsp;<a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/codeamp/\">Code Amp</a>,&nbsp;<a href=\"https://profiles.wordpress.org/collizo4sky/\">Collins Agbonghama</a>,&nbsp;<a href=\"https://profiles.wordpress.org/copons/\">Copons</a>,&nbsp;<a href=\"https://profiles.wordpress.org/coreyw/\">Corey</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cristinasoponar/\">cristinasoponar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dam6pl/\">Damian Nowak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/danfarrow/\">Dan Farrow</a>,&nbsp;<a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dvankooten/\">Danny van Kooten</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dariak/\">Daria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dpcalhoun/\">David Calhoun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davecpage/\">David Page</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbinda/\">david.binda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dbtedg/\">dbtedg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dd32/\">dd32</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>,&nbsp;<a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/denishua/\">denishua</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>,&nbsp;<a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dratwas/\">dratwas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidszabo/\">Dávid Szabó</a>,&nbsp;<a href=\"https://profiles.wordpress.org/e_baker/\">e_baker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Durpe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van&nbsp;Durpe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/erichmond/\">Elliott Richmond</a>,&nbsp;<a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgorić</a>,&nbsp;<a href=\"https://profiles.wordpress.org/enricocarraro/\">Enrico Carraro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/epicfaace/\">epicfaace</a>,&nbsp;<a href=\"https://profiles.wordpress.org/epiqueras/\">epiqueras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Andrew Lewis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ebinnion/\">Eric Binnion</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericmann/\">Eric Mann</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/folletto/\">Erin &lsquo;Folletto&rsquo; Casali</a>,&nbsp;<a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>,&nbsp;<a href=\"https://profiles.wordpress.org/eventualo/\">eventualo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>,&nbsp;<a href=\"https://profiles.wordpress.org/florianziegler/\">Florian Ziegler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/floriswt/\">floriswt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>,&nbsp;<a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ecgan/\">Gan Eng Chin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geekpress/\">GeekPress</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geekzebre/\">geekzebre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geoffguillain/\">Geoff Guillain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gkibria69/\">gKibria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gmariani405/\">gmariani405</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alinod/\">Gord</a>,&nbsp;<a href=\"https://profiles.wordpress.org/greatsaltlake/\">greatsaltlake</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/grzim/\">grzim</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gumacahin/\">gumacahin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gunnard/\">gunnard</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bordoni/\">Gustavo Bordoni</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hansjovisyoast/\">Hans-Christiaan Braun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hardeepasrani/\">Hardeep Asrani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hauvong/\">hauvong</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/helmutwalker/\">helmutwalker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tejwanihemant/\">Hemant Tejwani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nonverbla/\">hirasso</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hmabpera/\">hmabpera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hsingyuc7/\">hsingyuc7</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibiza69/\">ibiza69</a>,&nbsp;<a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ingereck/\">ingereck</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iprg/\">iprg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ismailelkorchi/\">Ismail El Korchi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iviweb/\">iviweb</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jadeddragoon/\">jadeddragoon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jakeparis/\">jakeparis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jakubtyrcha/\">jakub.tyrcha</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jamesgol/\">James Golovich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jamesros161/\">James Rosado</a>,&nbsp;<a href=\"https://profiles.wordpress.org/janthiel/\">Jan Thiel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jason_the_adams/\">Jason Adams</a>,&nbsp;<a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/viablethought/\">Jason Ryan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeffr0/\">Jeff Chandler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jmdodd/\">Jennifer M. Dodd</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jdy68/\">Jenny Dupuy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jessplease/\">Jessica Duarte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joanrho/\">joanrho</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joelclimbsthings/\">joelclimbsthings</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jordesign/\">jordesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jomisica/\">José Miguel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jose64/\">Jose Luis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/accessiblejoe/\">Joseph Karr O&rsquo;Connor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joshuatf/\">joshuatf</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tai/\">JOTAKI, Taisuke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jsmoriss/\">JS Morisset</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/justinsainton/\">Justin Sainton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jtsternberg/\">Justin Sternberg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kafleg/\">kafleg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kevin940726/\">Kai Hao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>,&nbsp;<a href=\"https://profiles.wordpress.org/karamcnair/\">kara.mcnair</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vyskoczilova/\">Karolina Vyskocilova</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tmfespresso/\">kimdcottrell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kirilzh/\">Kiril Zhelyazkov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kburgoine/\">Kirsty Burgoine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>,&nbsp;<a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hwk-fr/\">Konrad Chmielewski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kurtpayne/\">Kurt Payne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/notlaura/\">Lara Schenck</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oellin/\">Lihä</a>,&nbsp;<a href=\"https://profiles.wordpress.org/litemotiv/\">litemotiv</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lovor/\">lovor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lucasbustamante/\">lucasbustamante</a>,&nbsp;<a href=\"https://profiles.wordpress.org/_luigi/\">Luigi Cavalieri</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lpawlik/\">Lukas Pawlik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lukecarbis/\">Luke Carbis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/happiryu/\">Luke Walczak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/magnuswebdesign/\">magnuswebdesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mahfuz01/\">Mahafuz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/akramipro/\">Mahdi Akrami</a>,&nbsp;<a href=\"https://profiles.wordpress.org/malinajirka/\">malinajirka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mallorydxw/\">mallorydxw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tomdxw/\">mallorydxw-old</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manzurahammed/\">Manzur Ahammed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chaton666/\">Marie Comet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marijnkoopman/\">Marijn Koopman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tyxla/\">Marin Atanasov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mdwolinski/\">Mark D Wolinski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/markhowellsmead/\">Mark Howells-Mead</a>,&nbsp;<a href=\"https://profiles.wordpress.org/markscottrobson/\">Mark Robson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vindl/\">Marko Andrijasevic</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flootr/\">Markus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mberard/\">Mathieu Berard Smartfire</a>,&nbsp;<a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mattchowning/\">Matt Chowning</a>,&nbsp;<a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mdrockwell/\">mdrockwell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/megphillips91/\">Meg Phillips</a>,&nbsp;<a href=\"https://profiles.wordpress.org/megabyterose/\">megabyterose</a>,&nbsp;<a href=\"https://profiles.wordpress.org/meher/\">Meher Bala</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mehrshaddarzi/\">Mehrshad Darzi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mehulkaklotar/\">Mehul Kaklotar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mendezcode/\">mendezcode</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mgol/\">mgol</a>,&nbsp;<a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mbabker/\">Michael Babker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>,&nbsp;<a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>,&nbsp;<a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>,&nbsp;<a href=\"https://profiles.wordpress.org/0mirka00/\">mirka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/daddou/\">Mohamed El Amine DADDOU</a>,&nbsp;<a href=\"https://profiles.wordpress.org/monika/\">Monika</a>,&nbsp;<a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/morenaf/\">morenaf</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrjoeldean/\">mrjoeldean</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mzorz/\">mzorz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/naveen17797/\">Naveen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/krstarica/\">net</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nre/\">nicky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nico23/\">Nico</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nico_martin/\">Nico Martin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolalaserra/\">Nicola Laserra</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolaskulka/\">NicolasKulka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nwjames/\">nwjames</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ovidiul/\">ovidiul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oxyc/\">oxyc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>,&nbsp;<a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pabline/\">Paul Bunkham</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pawki07/\">pawki07</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbking/\">pbking</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gungeekatx/\">Pete Nelson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/psmits1567/\">Peter Smits</a>,&nbsp;<a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pinkalbeladiya/\">Pinkal Devani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boniu91/\">Piotrek Boniu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/freewebmentor/\">Prem Tiwari</a>,&nbsp;<a href=\"https://profiles.wordpress.org/presstoke/\">presstoke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/prettyboymp/\">prettyboymp</a>,&nbsp;<a href=\"https://profiles.wordpress.org/princeahmed/\">Prince</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pypwalters/\">pypwalters</a>,&nbsp;<a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a>,&nbsp;<a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rafaelgalani/\">Rafael Galani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rafhun/\">rafhun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rahmohn/\">Ramon Ahnert</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ratneshk/\">ratneshk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jontyravi/\">Ravi Vaghela</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ravipatel/\">ravipatel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>,&nbsp;<a href=\"https://profiles.wordpress.org/reardestani/\">Reza Ardestani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iamfriendly/\">Richard Tape</a>,&nbsp;<a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rodrigosprimo/\">Rodrigo Primo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/roger995/\">roger995</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rolfsiebers/\">Rolf Siebers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/romain-d/\">Romain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burtrw/\">Ronnie Burt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/magicroundabout/\">Ross Wintle</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a>,&nbsp;<a href=\"https://profiles.wordpress.org/soean/\">Sören Wrede</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stodorovic/\">Saša</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sanketchodavadiya/\">Sanket Chodavadiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sarahricker/\">Sarah Ricker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sarayourfriend/\">sarayourfriend</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebsz/\">SeBsZ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shahinsid07/\">Shahin Sid</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>,&nbsp;<a href=\"https://profiles.wordpress.org/slaffik/\">Slava Abakumov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>,&nbsp;<a href=\"https://profiles.wordpress.org/souri_wpaustria/\">souri_wpaustria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>,&nbsp;<a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/quadthemes/\">Sunny</a>,&nbsp;<a href=\"https://profiles.wordpress.org/t-p/\">t-p</a>,&nbsp;<a href=\"https://profiles.wordpress.org/inc2734/\">Takashi Kitajima</a>,&nbsp;<a href=\"https://profiles.wordpress.org/patopaiar/\">Tami</a>,&nbsp;<a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>,&nbsp;<a href=\"https://profiles.wordpress.org/voboghure/\">Tapan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/teamdnk/\">TeamDNK</a>,&nbsp;<a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tweetythierry/\">Thierry Muller</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thorlentz/\">thorlentz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tnolte/\">Tim Nolte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>,&nbsp;<a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tinodidriksen/\">tinodidriksen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemerö</a>,&nbsp;<a href=\"https://profiles.wordpress.org/arcangelini/\">Tony A</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tonysandwich/\">tonysandwich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>,&nbsp;<a href=\"https://profiles.wordpress.org/transl8or/\">transl8or</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tylertork/\">Tyler Tork</a>,&nbsp;<a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/umangvaghela123/\">Umang Vaghela</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vandestouwe/\">vandestouwe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vcanales/\">vcanales</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vipulc2/\">Vipul Chandel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T.</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webcommsat/\">webcommsat AbhaNonStopNewsUK</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design | Oliver Juhas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wendyjchen/\">Wendy Chen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wesselvandenberg/\">wesselvandenberg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wallstead/\">Willis Allstead</a>,&nbsp;<a href=\"https://profiles.wordpress.org/worldedu/\">worldedu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wponlinesupport/\">WP OnlineSupport</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tikifez/\">Xristopher Anderton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yannkozon/\">Yann Kozon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yscik/\">yscik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yuliyan/\">yuliyan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a> et&nbsp;<a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>.</p>\n\n\n\n<p><em>Merci <a href=\"https://profiles.wordpress.org/chaton666\">Marie Comet</a> pour la relecture de ce communiqué.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:74:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Les changements techniques à venir sur WordPress 5.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 24 Feb 2021 10:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1939\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Dans ces temps difficiles, WordPress 5.7 vous propose de nouvelles fonctionnalités et des améliorations pour vous aider à démarrer cette année 2021 sur une note positive ! Pour cette nouvelle version de WordPress, une petite équipe – mais expérimentée – a été mise sur pied afin de diriger le développement de cette nouvelle version embarquant un paquet de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:78:\"https://fr.wordpress.org/files/2021/02/send-password-reset-profile-setting.mp4\";s:6:\"length\";s:6:\"222292\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:31223:\"\n<div class=\"wp-block-group has-background\" style=\"background-color:#0d5a89\"><div class=\"wp-block-group__inner-container\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner.png\"><img loading=\"lazy\" width=\"1024\" height=\"458\" src=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1024x458.png\" alt=\"\" class=\"wp-image-1940\" srcset=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1024x458.png 1024w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-300x134.png 300w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-768x344.png 768w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1536x688.png 1536w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner.png 1568w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<div class=\"wp-block-group has-white-color has-text-color\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\">\n<p>&nbsp;</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<p class=\"has-normal-font-size\">La sortie de WordPress 5.7 est prévue pour le 9 mars 2021.</p>\n\n\n\n<p class=\"has-small-font-size\">Avec maintenant plus de 40&nbsp;% de parts de marché, le logiciel libre WordPress poursuit son ascension impressionnante au sein de l&rsquo;écosystème des CMS.</p>\n\n\n\n<p class=\"has-small-font-size\">Découvrez dans cet article les nouveautés qui vous attendent pour cette nouvelle version de l’outil de création de sites web le plus populaire au monde&nbsp;!</p>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:2px\">&nbsp;</p>\n</div>\n</div>\n</div></div>\n</div></div>\n\n\n\n<span id=\"more-1939\"></span>\n\n\n\n<p>Dans ces temps difficiles, WordPress 5.7 vous propose de nouvelles fonctionnalités et des améliorations pour vous aider à démarrer cette année 2021 sur une note positive ! Pour cette nouvelle version de WordPress, une <a href=\"https://make.wordpress.org/core/2020/12/21/wordpress-5-7-planning-roundup/\">petite équipe – mais expérimentée –</a> a été mise sur pied afin de diriger le développement de cette nouvelle version embarquant un paquet de nouvelles fonctionnalités techniques et des corrections attendues par les développeurs et développeuses.</p>\n\n\n\n<p>En tant qu’utilisatrice ou utilisateur de WordPress, vous retrouverez un éditeur de blocs encore plus efficace, l&rsquo;arrivée du chargement différé des iframes, un outil de migration vous permettant de passer de HTTP à HTTPS en un clic, de nouvelles couleurs standardisées pour l&rsquo;administration de votre site WordPress, une nouvelle API destinée à la gestion des instructions pour les robots d&rsquo;indexation.</p>\n\n\n\n<p>En tant que développeuse ou développeur, vous retrouverez <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">66 améliorations et nouvelles fonctionnalités</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.7&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">127 corrections de bugs</a>, et bien plus encore&nbsp;! Les personnes qui s&rsquo;intéressent à la technique seront sûrement attentives <a href=\"https://core.trac.wordpress.org/ticket/51812\">à la tâche de nettoyage des erreurs JavaScript qui a été conduite après la mise à niveau vers jQuery 3.5.1 en tant qu’étape 3 de notre processus de mise à niveau de la bibliothèque jQuery</a>.</p>\n\n\n\n<p>Dans ce guide technique, vous trouverez tous les changements qui pourront vous concerner en tant que personne utilisant WordPress au quotidien. Les liens proposés mènent tous à des ressources en anglais.</p>\n\n\n\n<h2>Administration&nbsp;: une nouvelle palette de couleurs standardisée</h2>\n\n\n\n<p>Il s&rsquo;agit de la première partie d&rsquo;un projet plus large visant à nettoyer les feuilles de styles de l&rsquo;administration de WP. Avec WP 5.7, toutes les couleurs déclarées en CSS sont regroupées au sein de l&rsquo;une des 12 variations de bleu, vert, rouge et jaune, ou dans l&rsquo;une des 13 variations de gris, noir et le blanc. Cela peut paraître encore présenter trop de variations, mais il faut savoir qu&rsquo;il y en avait bien plus auparavant, et surtout qu&rsquo;elles n&rsquo;obéissaient pas du tout à des variations strictes et prévisibles.</p>\n\n\n\n<p>La nouvelle palette de couleurs regroupe donc toutes les couleurs du code source de WordPress dans une palette de 56 couleurs qui permettent de satisfaire les ratios de contrastes demandés par les <a href=\"https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html\">Règles d&rsquo;accessibilités des contenus web (WCAG)</a> au niveau AA entre ces couleurs, et le blanc ou le noir.</p>\n\n\n\n<p>La standardisation de la palette de couleurs de l&rsquo;administration pourra aider les personnes contribuant à WordPress à prendre des décisions de conception accessibles. Les développeuses et développeurs de thèmes sont encouragé·e·s à utiliser cette nouvelle palette de couleurs afin de proposer une meilleur cohérence entre leur produit et le cœur de WordPress.</p>\n\n\n\n<p>Dans la note de développement liée ci-dessous, vous trouverez toutes les indications techniques pour vous permettre de rendre le code de vos développements conforme à la palette de couleurs de l&rsquo;administration de WP.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"1C0xgLs7Cz\"><a href=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7/\">Standardization of WP-Admin colors in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Standardization of WP-Admin colors in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7/embed/#?secret=1C0xgLs7Cz\" data-secret=\"1C0xgLs7Cz\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>L&rsquo;éditeur de blocs – Gutenberg</h2>\n\n\n\n<p>L&rsquo;éditeur de blocs Gutenberg poursuit ses itérations rapides.&nbsp;La version 9.9 de Gutenberg est pleinement intégrée à  WordPress 5.7, ce qui représente 7 nouvelles versions supplémentaires de Gutenberg (les versions&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/04/whats-new-in-gutenberg-4-november/\">9.3</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/19/whats-new-in-gutenberg-18-november-2/\">9.4</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/12/02/whats-new-in-gutenberg-2-december/\">9.5</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/12/23/whats-new-in-gutenberg-23-december/\">9.6</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2021/01/07/whats-new-in-gutenberg-6-january/\">9.7</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2021/01/20/whats-new-in-gutenberg-9-8-20-january/\">9.8</a> et&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/05/whats-new-in-gutenberg-9-9-5-february/\">9.9</a>), toutes comprises dans cette nouvelle version de WP. Des correctifs de bogues et des améliorations de performances provenant des versions&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/17/whats-new-in-gutenberg-10-0-february/\">10.0</a>&nbsp;et 10.1 font aussi partie de WP 5.7.</p>\n\n\n\n<p>Il y a un paquet de nouvelles fonctionnalités liées à Gutenberg dans WP 5.7. Citons par exemple le glisser-déposer depuis l&rsquo;outil d&rsquo;insertion de blocs, l&rsquo;alignement en pleine hauteur pour certains blocs, l&rsquo;affichage des variations de styles dans l&rsquo;inspecteur, des améliorations d&rsquo;utilisabilité et de stabilité sur les blocs réutilisables, les alignements verticaux dans les blocs boutons, la possibilité de modifier la taille des icônes dans le bloc icônes de réseaux sociaux, ou encore la possibilité de modifier la taille de police dans les blocs de liste ou d&rsquo;affichage de bouts de code.</p>\n\n\n\n<p>Pour les mises à jour techniques, voici quelques notes de développement (en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"J3inin7OuR\"><a href=\"https://make.wordpress.org/core/2021/02/18/wordpress-5-7-a-new-dynamic-hook-to-filter-the-content-of-a-single-block/\">WordPress 5.7: A new dynamic hook to filter the content of a single block</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;WordPress 5.7: A new dynamic hook to filter the content of a single block&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/18/wordpress-5-7-a-new-dynamic-hook-to-filter-the-content-of-a-single-block/embed/#?secret=J3inin7OuR\" data-secret=\"J3inin7OuR\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"J94wgc0nlt\"><a href=\"https://make.wordpress.org/core/2021/02/22/changes-in-wordpress-data-api/\">Changes in @wordpress/data API</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Changes in @wordpress/data API&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/changes-in-wordpress-data-api/embed/#?secret=J94wgc0nlt\" data-secret=\"J94wgc0nlt\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"cRxoDVWHgL\"><a href=\"https://make.wordpress.org/core/2021/02/22/new-block-variation-apis-in-5-7/\">New block variation APIs in 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New block variation APIs in 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/new-block-variation-apis-in-5-7/embed/#?secret=cRxoDVWHgL\" data-secret=\"cRxoDVWHgL\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"vc2JDHxqEZ\"><a href=\"https://make.wordpress.org/core/2021/02/23/inner-blocks-api-changes/\">Inner Blocks API Changes</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Inner Blocks API Changes&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/inner-blocks-api-changes/embed/#?secret=vc2JDHxqEZ\" data-secret=\"vc2JDHxqEZ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Y8C8DE5CAV\"><a href=\"https://make.wordpress.org/core/2021/02/23/new-i18n-filters-createi18n-changes/\">New i18n filters &amp; createI18n() changes</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New i18n filters &amp; createI18n() changes&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/new-i18n-filters-createi18n-changes/embed/#?secret=Y8C8DE5CAV\" data-secret=\"Y8C8DE5CAV\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Outils d&rsquo;importation et d&rsquo;exportation</h2>\n\n\n\n<p>Plusieurs changements importants impactent les outils d&rsquo;importation et d&rsquo;exportation&nbsp;: un crochet a été créé pour filtrer le titre des publications avant exportation&nbsp;; la date de dernière modification a été ajoutée dans les données d&rsquo;exportation&nbsp;; des améliorations significatives de performances ont été apportées pour une importation plus rapide des menus de navigation. Ces éléments sont détaillés dans la note de développement dédiée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"VyczrpHE2F\"><a href=\"https://make.wordpress.org/core/2021/02/23/enhancements-to-the-import-export-feature-in-wordpress-5-7/\">Enhancements to the Import/Export feature in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Enhancements to the Import/Export feature in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/enhancements-to-the-import-export-feature-in-wordpress-5-7/embed/#?secret=VyczrpHE2F\" data-secret=\"VyczrpHE2F\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Gestion des médias</h2>\n\n\n\n<p>La principale amélioration concernant les médias est la mise en place du chargement différé par défaut des iframes. Cela fera gagner à votre sites quelques précieux dixièmes de secondes de temps de chargement. D&rsquo;autres changements relatifs à la médiathèque sont listés plus bas dans les améliorations diverses, mais cette nouvelle fonctionnalité méritait sa rubrique dédiée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"24vK7JdlIB\"><a href=\"https://make.wordpress.org/core/2021/02/19/lazy-loading-iframes-in-5-7/\">Lazy-loading iframes in 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Lazy-loading iframes in 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/19/lazy-loading-iframes-in-5-7/embed/#?secret=24vK7JdlIB\" data-secret=\"24vK7JdlIB\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Gestion des comptes des utilisatrices et utilisateurs de votre site</h2>\n\n\n\n<p>À partir de WordPress 5.7, il est possible pour les administratrices et administrateurs de sites WordPress de générer facilement l&rsquo;envoi de l&rsquo;e-mail de réinitialisation de mot de passe à n&rsquo;importe quel compte déjà inscrit sur le site. Pour cela, il suffit de se rendre sur l&rsquo;écran de modification du compte et de cliquer sur le bouton d&rsquo;envoi de l&rsquo;e-mail contenant le lien de réinitialisation, comme décrit dans cette petite vidéo (montrant l&rsquo;interface en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://fr.wordpress.org/files/2021/02/send-password-reset-profile-setting.mp4\"></video></figure>\n\n\n\n<p>Il est aussi possible d&rsquo;utiliser les liens d&rsquo;accès rapide présents dans la liste des comptes du site sur chaque ligne correspondant à un utilisateur ou une utilisatrice, ou encore d&rsquo;envoyer ce lien de réinitialisation à un grand nombre de comptes en utilisant l&rsquo;outil de traitement par lots. Consultez l&rsquo;article d&rsquo;origine en anglais pour plus de détails&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"V84RfcthGK\"><a href=\"https://make.wordpress.org/core/2021/02/22/send-reset-password-links-in-wordpress-5-7/\">Send reset password links in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Send reset password links in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/send-reset-password-links-in-wordpress-5-7/embed/#?secret=V84RfcthGK\" data-secret=\"V84RfcthGK\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>API REST</h2>\n\n\n\n<p>Des modifications ont été apportées à l’API REST, notamment concernant des changements de points de terminaison, des changements de paramètres disponibles ou acceptés, ou encore des changements concernant la gestion des mots de passe d&rsquo;application.</p>\n\n\n\n<p>Ces changements sont récapitulés sur cet article en anglais&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"LkKIGqGLiv\"><a href=\"https://make.wordpress.org/core/2021/02/23/rest-api-changes-in-wordpress-5-7/\">REST API Changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;REST API Changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/rest-api-changes-in-wordpress-5-7/embed/#?secret=LkKIGqGLiv\" data-secret=\"LkKIGqGLiv\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>API Robots</h2>\n\n\n\n<p>Une nouvelle API fait son arrivée dans WordPress&nbsp;! L’API Robots permet de gérer de façon précise et contrôlée l&rsquo;affichage des balises méta <code>robots</code> sur les pages de votre site. Pour tout savoir sur cette amélioration destinées aux personnes souhaitant optimiser leur site aux petits oignons pour le référencement, consultez cette note de développement&nbsp;: </p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Cjzdm2rSaO\"><a href=\"https://make.wordpress.org/core/2021/02/19/robots-api-and-max-image-preview-directive-in-wordpress-5-7/\">Robots API and max-image-preview directive in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Robots API and max-image-preview directive in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/19/robots-api-and-max-image-preview-directive-in-wordpress-5-7/embed/#?secret=Cjzdm2rSaO\" data-secret=\"Cjzdm2rSaO\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Sécurité</h2>\n\n\n\n<p>Pas de correctif de faille de sécurité dans cette version car rappelons-le&nbsp;: ce n&rsquo;est pas le but des versions majeures&nbsp;! Mais en revanche, plusieurs améliorations intéressantes&nbsp;: tout d&rsquo;abord, l&rsquo;outil de contrôle de la santé de votre site (Outils &gt; Santé du site) sera maintenant à même de vérifier si votre site dispose d&rsquo;un certificat SSL (permettant le passage de votre site en HTTPS) et le cas échéant de vous proposer de migrer votre site de HTTP à HTTPS. Il fera également un état des lieux de la migration et vous permettra de corriger les erreurs éventuelles. Enfin, un premier pas vers l&rsquo;intégration des entêtes Content-Security-Policy (CSP) est fait avec la mise en place d&rsquo;outils permettant aux développeurs et développeuses d&rsquo;utiliser des attributs dédiés sur les scripts qu&rsquo;ils et elles ajoutent sur WordPress afin notamment d&rsquo;en vérifier l&rsquo;origine. Pour plus de détails&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"onU2eWtR2Z\"><a href=\"https://make.wordpress.org/core/2021/02/22/improved-https-detection-and-migration-in-wordpress-5-7/\">Improved HTTPS detection and migration in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Improved HTTPS detection and migration in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/improved-https-detection-and-migration-in-wordpress-5-7/embed/#?secret=onU2eWtR2Z\" data-secret=\"onU2eWtR2Z\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"xYibzHZ3Es\"><a href=\"https://make.wordpress.org/core/2021/02/23/introducing-script-attributes-related-functions-in-wordpress-5-7/\">Introducing script attributes related functions in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing script attributes related functions in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/introducing-script-attributes-related-functions-in-wordpress-5-7/embed/#?secret=xYibzHZ3Es\" data-secret=\"xYibzHZ3Es\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Autres mises à jour techniques de WordPress&nbsp;5.7</h2>\n\n\n\n<p>Des modifications concernant les écrans de connexion et d&rsquo;inscription on également été faites&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"SQskB7miUR\"><a href=\"https://make.wordpress.org/core/2021/02/16/login-registration-screens-changes-in-wordpress-5-7/\">Login &amp; registration screens changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Login &amp; registration screens changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/16/login-registration-screens-changes-in-wordpress-5-7/embed/#?secret=SQskB7miUR\" data-secret=\"SQskB7miUR\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Utile pour les développeuses et développeurs de thèmes, un nouveau marqueur de modèle et un nouveau marqueur conditionnel permettant de récupérer ou tester les publications parentes d&rsquo;une publication donnée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"5eT1aLYOGx\"><a href=\"https://make.wordpress.org/core/2021/02/10/introducing-new-post-parent-related-functions-in-wordpress-5-7/\">Introducing new Post Parent related functions in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing new Post Parent related functions in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/10/introducing-new-post-parent-related-functions-in-wordpress-5-7/embed/#?secret=5eT1aLYOGx\" data-secret=\"5eT1aLYOGx\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Deux nouvelles fonctions ont été ajoutées dans WP 5.7 afin de déterminer si une publication est visualisable publiquement ou non. Le marqueur conditionnel <code>is_post_publicly_viewable()</code> est notamment particulièrement intéressant car il combine plusieurs vérifications en une seule fonction. Pour plus de détails (en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"o95wmnzqCC\"><a href=\"https://make.wordpress.org/core/2021/02/18/introducing-additional-functions-to-check-if-a-post-is-publicly-viewable-in-wordpress-5-7/\">Introducing additional functions to check if a post is publicly viewable in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing additional functions to check if a post is publicly viewable in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/18/introducing-additional-functions-to-check-if-a-post-is-publicly-viewable-in-wordpress-5-7/embed/#?secret=o95wmnzqCC\" data-secret=\"o95wmnzqCC\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Pour finir, voici une note de développement contenant pêle-mêle une liste de toutes les petites améliorations notables destinées aux développeuses et développeurs&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"x30T5MYHjK\"><a href=\"https://make.wordpress.org/core/2021/02/23/miscellaneous-developer-focused-changes-in-wordpress-5-7/\">Miscellaneous developer focused changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Miscellaneous developer focused changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/miscellaneous-developer-focused-changes-in-wordpress-5-7/embed/#?secret=x30T5MYHjK\" data-secret=\"x30T5MYHjK\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Et bien plus encore…</h2>\n\n\n\n<p>WordPress&nbsp;5.7 contient bien d&rsquo;autres améliorations et modifications !<br>Plus de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">127</a>&nbsp;bugs ont été corrigés,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">66</a>&nbsp;améliorations et nouvelles fonctionnalités ont été implémentées et <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=task+(blessed)&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">29</a>&nbsp;tâches courantes ont été&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">clôturées dans WordPress 5.7</a>. Voici une poignée d&rsquo;autres modifications qui n&rsquo;ont pas été évoquées dans les notes de développement listées ci-dessus&nbsp;:</p>\n\n\n\n<ul><li>Éditeur&nbsp;: prise en charge du filtrage des paramètres dans l&rsquo;enregistrement de nouveaux types de blocs à partir de métadonnées (<a href=\"https://core.trac.wordpress.org/ticket/52138\">#52138</a>)</li><li>Menus&nbsp;: ajout d&rsquo;un pied de section épinglé au gestionnaire d&rsquo;éléments de menus afin d&rsquo;éviter de dupliquer les boutons de sauvegarde (<a href=\"https://core.trac.wordpress.org/ticket/51631\">#51631</a>)</li><li>Mises à jour&nbsp;: affichage du numéro de la version qui sera réinstallée sur le bouton de réinstallation disponible sur la page de mise à jour de WP (<a href=\"https://core.trac.wordpress.org/ticket/51774\">#51774</a>)</li><li>Mises à jour&nbsp;: prise en charge de la valeur <code>development</code>&nbsp;pour la constante&nbsp;<code>WP_AUTO_UPDATE_CORE</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51978\">#51978</a>)</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Pour rappel, la sortie de WordPress 5.7 est prévue le 9 mars 2021. Vous pouvez d’ores et déjà la tester en version&nbsp;<em>Release Candidate</em>&nbsp;en installant l’extension officielle&nbsp;<em>WordPress Beta Tester</em>&nbsp;puis en allant dans ses réglages et en cochant la case&nbsp;Beta / Version de développement puis en mettant à jour votre installation de façon classique.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-plugin-directory wp-block-embed-plugin-directory\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"wUWSt9zkGg\"><a href=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« WordPress Beta Tester » &#8212; Plugin Directory\" src=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/embed/#?secret=wUWSt9zkGg\" data-secret=\"wUWSt9zkGg\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p><em>Merci à <a href=\'https://profiles.wordpress.org/jdy68/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jdy68</a>, <a href=\'https://profiles.wordpress.org/wolforg/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wolforg</a>, <a href=\'https://profiles.wordpress.org/chaton666/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chaton666</a> et <a href=\'https://profiles.wordpress.org/crash_47/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>crash_47</a> pour leur relecture de ce guide.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.6 « Simone »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Dec 2020 23:53:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1899\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:398:\"Voici « Simone », la dernière version de WordPress. Nommée en l’honneur de la légendaire interprète de jazz Nina Simone, connue pour des tubes tels que « Feeling Good », « Young, Gifted and Black » ou encore « Four Women ». Lancez quelques-unes de ses chansons phares en fond sonore et découvrez les nouveautés que nous vous avons réservé. Partager vos histoires [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:78679:\"\n<p>Voici « Simone », la dernière version de WordPress. Nommée en l’honneur de la légendaire interprète de jazz Nina Simone, connue pour des tubes tels que <em>« Feeling Good »</em>, <em>« Young, Gifted and Black »</em> ou encore <em>« Four Women »</em>. Lancez quelques-unes de ses <a rel=\"noreferrer noopener\" href=\"https://youtu.be/D5Y11hwjMNs\" target=\"_blank\">chansons phares</a> en fond sonore et découvrez les nouveautés que nous vous avons réservé.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/wordpress-5-6_cover-03.jpg?resize=632%2C633&amp;ssl=1\" alt=\"WordPress 5.6 Simone with a photo of Nina Simone\" class=\"wp-image-9385\" /></figure>\n\n\n\n<span id=\"more-1899\"></span>\n\n\n\n<h3>Partager vos histoires n’a jamais été aussi facile</h3>\n\n\n\n<p>WordPress 5.6 vous apporte de nombreuses façons de donner vie à vos idées. Avec un tout nouveau thème par défaut comme toile vierge, cette version prend en charge une collection de blocs toujours plus grande. Peignez avec des mots, des images, des sons… et des médias embarqués enrichis.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-1.jpeg?resize=632%2C234&amp;ssl=1\" alt=\"colored circles\" class=\"wp-image-9346\" /></figure>\n\n\n\n<h3>Une plus grande flexibilité de mise en page</h3>\n\n\n\n<p>Donnez vie à vos histoires avec encore plus d’outils pour modifier vos mises en page avec ou sans code. Blocs avec une seule colonne, mises en page utilisant des largeurs mixtes et des colonnes, en-têtes en pleine largeur, bannières vidéos… faites de petits changements ou révolutionnez vos mises en page avec la même facilité.</p>\n\n\n\n<h3>Plus de compositions de blocs</h3>\n\n\n\n<p>Les compositions de blocs pré-configurées sur les thèmes facilitent la mise en place de pages standards sur votre site. Testez la force des compositions pour rendre votre flux de travail plus efficace et partagez cela facilement en vous épargnant quelques clics.</p>\n\n\n\n<h3>Un sous-titrage vidéo directement dans l’éditeur</h3>\n\n\n\n<p>Pour vous aider à ajouter des sous-titres ou des légendes à vos vidéos, vous pouvez désormais les téléverser dans vos articles et vos pages. Il est maintenant très simple de rendre vos vidéos accessibles à toute personne ayant besoin ou préférant utiliser des sous-titres.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-2.jpeg?resize=632%2C120&amp;ssl=1\" alt=\"black vertical line\" class=\"wp-image-9347\" /></figure>\n\n\n\n<h2>Twenty Twenty-One est là&nbsp;!</h2>\n\n\n\n<p>Twenty Twenty-One est une toile vierge pour exprimer vos idées, et l’éditeur de blocs sera votre meilleur pinceau. Ce thème est construit pour l’éditeur de blocs et embarque de nouvelles compositions de blocs dédiées. Essayez différentes mises en page en quelques secondes, et laissez le design intemporel de ce thème faire briller vos contenus.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-5.jpeg?resize=632%2C231&amp;ssl=1\" alt=\"examples of what WordPress 5.6 could look like\" class=\"wp-image-9348\" /></figure>\n\n\n\n<p>De plus, ce thème par défaut place l’accessibilité au cœur de votre site. Il est conforme aux&nbsp;<a href=\"https://make.wordpress.org/themes/handbook/review/accessibility/\">Règles d’accessibilité de WordPress</a>&nbsp;et à la plupart des règles de standards tels que les&nbsp;<a href=\"https://www.w3.org/WAI/WCAG2AAA-Conformance\">Règles pour l’accessibilité des contenus web (WCAG) 2.1 au niveau AAA</a>. Cela vous aidera à atteindre les plus hauts niveaux des standards internationaux d’accessibilité… dans la mesure où vous créerez des contenus accessibles et où vous choisirez des extensions également accessibles&nbsp;!</p>\n\n\n\n<h3>Un arc-en-ciel de couleurs pastel</h3>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-6.jpeg?resize=632%2C631&amp;ssl=1\" alt=\"Examples of block patterns available in select default themes.\" class=\"wp-image-9349\" /></figure>\n\n\n\n<p>Parfait pour la nouvelle année, Twenty Twenty-One vous propose une palette de couleurs pastel présélectionnées, toutes conformes aux normes de contraste AAA. Vous pouvez également choisir votre propre couleur d’arrière-plan pour le thème, et le thème choisit pour vous des couleurs de texte adaptées à l’accessibilité &#8211; automatiquement&nbsp;!</p>\n\n\n\n<p>Besoin de plus de flexibilité que cela&nbsp;? Vous pouvez également choisir votre propre palette de couleurs à partir du sélecteur de couleurs.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-3.jpeg?resize=632%2C151&amp;ssl=1\" alt=\"colored circles\" class=\"wp-image-9351\" /></figure>\n\n\n\n<h2>Des améliorations pour tout le monde</h2>\n\n\n\n<h3>Extension des mises à jour automatiques</h3>\n\n\n\n<p>Depuis des années, les mises à jour automatiques de WordPress n’étaient accessibles que via un développement spécifique. Maintenant, cette option est disponible directement dans votre tableau de bord. S’il s’agit de votre premier site, les mises à jour automatiques sont déjà en place. Si vous avez mis à jour un site déjà existant alors tout est resté comme avant. L’option d’activation/désactivation des mises à jour automatiques est disponible sur l’écran Tableau de bord &gt; Mises à jour.</p>\n\n\n\n<h3>Modèle de déclaration d’accessibilité</h3>\n\n\n\n<p>Même sans disposer d’une grande expertise à ce sujet, vous pouvez faire connaître les engagements pris par votre site en termes d’accessibilité juste en cliquant sur un bouton. Une nouvelle&nbsp;<a href=\"https://github.com/10degrees/accessibility-statement-plugin\">extension de fonctionnalités</a>&nbsp;comprend un modèle de texte que vous n’avez qu’à réadapter et à publier. Il a été écrit pour prendre en charge différents contextes et juridictions.</p>\n\n\n\n<h3>Des compositions de blocs intégrées</h3>\n\n\n\n<p>Si vous n’avez pas encore eu l’occasion de jouer avec les compositions de blocs, sachez que tous les thèmes natifs comprennent maintenant une sélection de compositions de blocs qui vous permet de créer des mises en pages complexes. Ces compositions peuvent être personnalisées à votre gré avec les textes, images ou couleurs qui conviennent à votre contenu ou à votre image de marque.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-4.jpeg?resize=632%2C185&amp;ssl=1\" alt=\"colored and textured rectangles\" class=\"wp-image-9352\" /></figure>\n\n\n\n<h2>Pour les développeurs et les développeuses</h2>\n\n\n\n<h3>Authentification sur l’API REST avec les mots de passe d’application</h3>\n\n\n\n<p>Grâce à la nouvelle API de mots de passe d’application, les applications tierces peuvent se connecter de façon transparente et sécurisée à votre site. Cette nouvelle fonctionnalité de l’API REST vous permet de surveiller les applications qui se connectent à votre site et de contrôler ce qu’elles font.</p>\n\n\n\n<h3>Une meilleure prise en charge de PHP&nbsp;8</h3>\n\n\n\n<p>WordPress 5.6 marque le premier pas vers la prise en charge de PHP&nbsp;8 par WordPress. Il est grand temps de commencer à planifier la façon dont vos produits, services et sites tournant sur WordPress prennent en charge la dernière version de PHP. Pour plus d’information, lisez&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/23/wordpress-and-php-8-0/\">la note de développement concernant PHP&nbsp;8 (en anglais)</a>.</p>\n\n\n\n<h3>jQuery</h3>\n\n\n\n<p>La mise à jour de la bibliothèque jQuery se déroule sur trois versions de WordPress&nbsp;: 5.5, 5.6 et 5.7. Comme nous arrivons à mi-chemin du processus, vous pouvez lancer&nbsp;<a href=\"https://fr.wordpress.org/plugins/wp-jquery-update-test/\">l’extension de test de mise à jour</a>&nbsp;pour vérifier par avance d’éventuelles erreurs sur vos sites.</p>\n\n\n\n<p>Si vous rencontrez des problèmes d’affichage sur votre site (ex&nbsp;: un diaporama qui ne fonctionne plus, un bouton qui n’a aucun effet), installez&nbsp;<a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">l’extension jQuery Migrate</a>.</p>\n\n\n\n<p>Nous vous recommandons également la lecture de <a href=\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/\" data-type=\"post\" data-id=\"1835\">cet article complet en français concernant les changements sur jQuery sur WordPress 5.6</a> et comment les gérer en tant que responsable d&rsquo;un site internet WordPress.</p>\n\n\n\n<h3>Consultez le guide de la version pour en savoir plus</h3>\n\n\n\n<p>Consultez le guide des changements techniques de WordPress 5.6. Il met en avant les notes de développement de chaque modification que vous souhaiteriez connaître&nbsp;:&nbsp;<a href=\"https://fr.wordpress.org/2020/11/24/les-changements-techniques-a-venir-sur-wordpress-5-6/\" data-type=\"post\" data-id=\"1766\">Guide des changements techniques de WordPress 5.6</a>.</p>\n\n\n\n<h3>Changements dans la traduction de WordPress en français</h3>\n\n\n\n<p>La traduction de WordPress en français devient plus inclusive&nbsp;! Consultez les <a href=\"https://fr.wordpress.org/2020/11/26/wordpress-5-6-des-changements-visant-a-ameliorer-linclusivite-de-linterface-dadministration/\" data-type=\"post\" data-id=\"1801\">détails de ces changements de traduction visant à rendre WordPress plus inclusif sur notre article dédié</a>.</p>\n\n\n\n<figure class=\"wp-block-pullquote\"><blockquote><p>It’s a new day, it’s a new life for me<br>…and I’m feeling good.</p><cite>~Nina Simone</cite></blockquote></figure>\n\n\n\n<h2>L’équipe de direction de WordPress&nbsp;5.6 «&nbsp;Simone&nbsp;»</h2>\n\n\n\n<p>Pour la première fois dans l&rsquo;écosystème WordPress, cette version majeure a été dirigée par une équipe 100&nbsp;% féminine&nbsp;: </p>\n\n\n\n<ul><li><strong>Direction&nbsp;:</strong> Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>). Aidée de Chloé Bringmann (<a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>) et Angela Jin (<a href=\"https://profiles.wordpress.org/angelasjin/\">@angelasjin</a>).</li><li><strong>Coordination&nbsp;:</strong> Dee Teal (<a href=\"https://profiles.wordpress.org/thewebprincess/\">@thewebprincess</a>).&nbsp;Aidée de Thelma Mutete (<a href=\"https://profiles.wordpress.org/thelmachido/\">@thelmachido</a>) et Laura Nelson (<a href=\"https://profiles.wordpress.org/laurora/\">@laurora</a>).</li><li><strong>Suivi&nbsp;:</strong> Tonya Mork (<a href=\"https://profiles.wordpress.org/hellofromtonya/\">@hellofromtonya</a>).&nbsp;</li><li><strong>Direction technique du cœur WP&nbsp;:</strong> Helen Hou-Sandì (<a href=\"https://profiles.wordpress.org/helen/\">@helen</a>).&nbsp;Aidée de Amy Kamala (<a href=\"https://profiles.wordpress.org/amykamala/\">@amykamala</a>) et Ebonie Butler (<a href=\"https://profiles.wordpress.org/metalandcoffee/\">@metalandcoffee</a>).</li><li><strong>Direction technique de l’éditeur Gutenberg&nbsp;:</strong> Isabel Brison (<a href=\"https://profiles.wordpress.org/isabel_brison/\">@isabel_brison</a>).&nbsp;Aidée de Chandrika Guntur (<a href=\"https://profiles.wordpress.org/cguntur/\">@cguntur</a>), Anchen le Roux (<a href=\"https://profiles.wordpress.org/anchenlr/\">@anchenlr</a>), et Rebecca Hum (<a href=\"https://profiles.wordpress.org/rebasaurus/\">@rebasauru<strong>s</strong></a>).</li><li><strong>Direction artistique&nbsp;:</strong> Ellen Bauer (<a href=\"https://profiles.wordpress.org/elmastudio/\">@elmastudio</a>) et Tammie Lister (<a href=\"https://profiles.wordpress.org/karmatosed/\">@karmatosed</a>).&nbsp;Aidées de Anyssa Ferreira (<a href=\"https://profiles.wordpress.org/anyssa/\">@anyssa</a>), Estela Rueda (<a href=\"https://profiles.wordpress.org/estelaris/\">@estelaris</a>), Tracy Apps (<a href=\"https://profiles.wordpress.org/tray/\">@tray</a>), et Sophia DeRosia (<a href=\"https://profiles.wordpress.org/eringoblog/\">@eringoblog</a>).</li><li><strong>Accompagnement technique de la direction artistique&nbsp;:</strong> Shital Marakana (<a href=\"https://profiles.wordpress.org/shital-patel/\">@shital-patel</a>).</li><li><strong>Directrice du focus accessibilité&nbsp;:</strong> Sarah Ricker (<a href=\"https://profiles.wordpress.org/sarahricker/\">@sarahricke<strong>r</strong></a>).&nbsp;Aidée de Hauwa Abashiya (<a href=\"https://profiles.wordpress.org/azhiyadev/\">@azhiyadev</a>).</li><li><strong>Direction du marketing et de la communications&nbsp;:</strong> Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>) et Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a>).&nbsp;Aidées de Nalini Thakor (<a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">@nalininonstopnewsuk</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>), Olga Gleckler (<a href=\"https://profiles.wordpress.org/oglekler/\">@ogleckler</a>), Larissa Murrillo (<a href=\"https://profiles.wordpress.org/lmurillom/\">@lmurillom</a>), Michelle Frechette (<a href=\"https://profiles.wordpress.org/michelleames/\">@michelleames</a>), Breann McDede (<a href=\"https://profiles.wordpress.org/bmcdede/\">@bmcdede</a>), et Afshana Diya (<a href=\"https://profiles.wordpress.org/afshanadiya/\">@afshanadiya</a>).</li><li><strong>Direction de la documentation&nbsp;: </strong>Shawntelle Coker (<a href=\"https://profiles.wordpress.org/sncoker/\">@sncoker</a>). Aidée de Daisy Olsen (<a href=\"https://wordpress.slack.com/team/U8D7JFA3X\">@DaisyO</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>) et Winstina Hughes (<a href=\"https://profiles.wordpress.org/planningwrite/\">@planningwrite</a>).</li><li><strong>Relecture et validation de la documentation&nbsp;:</strong> Michele Butcher-Jones (<a href=\"https://profiles.wordpress.org/m_butcher/\">@m_butcher</a>).&nbsp;Aidée de Nidhi Jain (<a href=\"https://profiles.wordpress.org/jainnidhi/\">@jainnidhi</a>) et Laura Byrne Cristiano (<a href=\"https://wordpress.org/support/users/newyorkerlaura/\">@newyorkerlaura</a>).</li><li><strong>Direction artistique du nouveau thème natif&nbsp;:</strong> Mel Choyce-Dwan (<a href=\"https://profiles.wordpress.org/melchoyce/\">@melchoyce</a>).&nbsp;Aidée de Ellen Bauer (<a href=\"https://profiles.wordpress.org/elmastudio/\">@elmastudio</a>).</li><li><strong>Direction technique du nouveau thème natif&nbsp;:</strong> Carolina Nymark (<a href=\"https://profiles.wordpress.org/poena/\">@poena</a>).&nbsp;Aidée de Kelly Choyce-Dwan (<a href=\"https://profiles.wordpress.org/ryelle/\">@ryelle</a>) et Jessica Lyschik (<a href=\"https://profiles.wordpress.org/luminuu/\">@luminuu</a>).</li><li><strong>Suivi du développement du nouveau thème natif&nbsp;:</strong> Jessica Lyschik (<a href=\"https://profiles.wordpress.org/luminuu/\">@luminuu</a>).</li><li><strong>Direction de l’équipe de test&nbsp;:</strong> Monika Rao (<a href=\"https://profiles.wordpress.org/monikarao/\">@monikarao</a>). Aidée de Allie Nimmons (<a href=\"https://profiles.wordpress.org/alliennimmons/\">@alliennimmons</a>).</li><li><strong>Direction du support à destination des utilisatrices et utilisateurs finaux&nbsp;:</strong> Bet Hannon (<a href=\"https://profiles.wordpress.org/bethannon1/\">@bethannon1</a>).</li></ul>\n\n\n\n<p>Comme toujours, cette nouvelle version est surtout le reflet du travail de centaines de formidables contributrices et contributeurs&nbsp;:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/a2hosting/\">A2 Hosting</a>, <a href=\"https://profiles.wordpress.org/a4jpcom/\">a4jp . com</a>, <a href=\"https://profiles.wordpress.org/a6software/\">a6software</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abderrahman/\">abderrahman</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">Abha Thakor</a>, <a href=\"https://profiles.wordpress.org/ibachal/\">Achal Jain</a>, <a href=\"https://profiles.wordpress.org/achbed/\">achbed</a>, <a href=\"https://profiles.wordpress.org/achyuthajoy/\">Achyuth Ajoy</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/acsnaterse/\">acsnaterse</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/addyosmani/\">addyosmani</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/adrian/\">adrian</a>, <a href=\"https://profiles.wordpress.org/airamerica/\">airamerica</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1/\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/akbarhusen/\">akbarhusen</a>, <a href=\"https://profiles.wordpress.org/akbarhusen429/\">akbarhusen429</a>, <a href=\"https://profiles.wordpress.org/akhileshsabharwal/\">Akhilesh Sabharwal</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/alishanvr/\">Ali Shan</a>, <a href=\"https://profiles.wordpress.org/ali11007/\">ali11007</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/amaschas/\">amaschas</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/anbumz/\">anbumz</a>, <a href=\"https://profiles.wordpress.org/andfinally/\">andfinally</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey « Rarst » Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andrés Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/akissz/\">Angel Hess</a>, <a href=\"https://profiles.wordpress.org/angelasjin/\">Angela Jin</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/rilwis/\">Anh Tran</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">Ankit Gade</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta/\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/ahortin/\">Anthony Hortin</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/antonisme/\">Antonis Lilis</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/argentite/\">argentite</a>, <a href=\"https://profiles.wordpress.org/arpitgshah/\">Arpit G Shah</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/asalce/\">asalce</a>, <a href=\"https://profiles.wordpress.org/ashiagr/\">ashiagr</a>, <a href=\"https://profiles.wordpress.org/ashour/\">ashour</a>, <a href=\"https://profiles.wordpress.org/tacitonic/\">Atharva Dhekne</a>, <a href=\"https://profiles.wordpress.org/ajoah/\">Aurélien Joahny</a>, <a href=\"https://profiles.wordpress.org/aussi/\">aussi</a>, <a href=\"https://profiles.wordpress.org/automaton/\">automaton</a>, <a href=\"https://profiles.wordpress.org/avixansa/\">avixansa</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/barry/\">Barry</a>, <a href=\"https://profiles.wordpress.org/barryceelen/\">Barry Ceelen</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bartekcholewa/\">bartekcholewa</a>, <a href=\"https://profiles.wordpress.org/bartkalisz/\">bartkalisz</a>, <a href=\"https://profiles.wordpress.org/bastho/\">Bastien Ho</a>, <a href=\"https://profiles.wordpress.org/bmartinent/\">Bastien Martinent</a>, <a href=\"https://profiles.wordpress.org/bcworkz/\">bcworkz</a>, <a href=\"https://profiles.wordpress.org/bdbch/\">bdbch</a>, <a href=\"https://profiles.wordpress.org/bdcstr/\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/empireoflight/\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/grapestain/\">Bence Szalai</a>, <a href=\"https://profiles.wordpress.org/bencroskery/\">bencroskery</a>, <a href=\"https://profiles.wordpress.org/benjamingosset/\">Benjamin Gosset</a>, <a href=\"https://profiles.wordpress.org/benoitchantre/\">Benoit Chantre</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/bettyjj/\">BettyJJ</a>, <a href=\"https://profiles.wordpress.org/bgermann/\">bgermann</a>, <a href=\"https://profiles.wordpress.org/bigcloudmedia/\">bigcloudmedia</a>, <a href=\"https://profiles.wordpress.org/bigdawggi/\">bigdawggi</a>, <a href=\"https://profiles.wordpress.org/billerickson/\">Bill Erickson</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bbrdaric/\">Boris Brdarić</a>, <a href=\"https://profiles.wordpress.org/ibdz/\">Boy Witthaya</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/brianhogg/\">Brian Hogg</a>, <a href=\"https://profiles.wordpress.org/krogsgard/\">Brian Krogsgard</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/bruandet/\">bruandet</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90/\">Bunty</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/caiocrcosta/\">caiocrcosta</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/cameronamcintyre/\">cameronamcintyre</a>, <a href=\"https://profiles.wordpress.org/carike/\">Carike</a>, <a href=\"https://profiles.wordpress.org/stuffradio/\">Carl Wuensche</a>, <a href=\"https://profiles.wordpress.org/carloslfu/\">Carlos Galarza</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sixhours/\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/carriganvb/\">Carrigan</a>, <a href=\"https://profiles.wordpress.org/ceyhun/\">ceyhun</a>, <a href=\"https://profiles.wordpress.org/shireling/\">Chad</a>, <a href=\"https://profiles.wordpress.org/cbutlerjr/\">Chad Butler</a>, <a href=\"https://profiles.wordpress.org/mackensen/\">Charles Fulton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>, <a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriscct7/\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/cjbj/\">Christian Jongeneel</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/needle/\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/christophherr/\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/vimes1984/\">Christopher Churchill</a>, <a href=\"https://profiles.wordpress.org/chunkysteveo/\">chunkysteveo</a>, <a href=\"https://profiles.wordpress.org/cklee/\">cklee</a>, <a href=\"https://profiles.wordpress.org/clayray/\">clayray</a>, <a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>, <a href=\"https://profiles.wordpress.org/cliffpaulick/\">Clifford Paulick</a>, <a href=\"https://profiles.wordpress.org/codeforest/\">codeforest</a>, <a href=\"https://profiles.wordpress.org/commeuneimage/\">Commeuneimage</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/cpasqualini/\">cpasqualini</a>, <a href=\"https://profiles.wordpress.org/cristovaov/\">Cristovao Verstraeten</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/curtisbelt/\">Curtis Belt</a>, <a href=\"https://profiles.wordpress.org/clarinetlord/\">Cyrus Collier</a>, <a href=\"https://profiles.wordpress.org/dperonne/\">D.PERONNE</a>, <a href=\"https://profiles.wordpress.org/dsixinetu/\">d6</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danielhuesken/\">Daniel Hüsken</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/confridin/\">Daniel Roch</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">danieltj</a>, <a href=\"https://profiles.wordpress.org/dboy1988/\">Danny</a>, <a href=\"https://profiles.wordpress.org/darkog/\">Darko G.</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/dmchale/\">Dave McHale</a>, <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dbrumbaugh10up/\">David Brumbaugh</a>, <a href=\"https://profiles.wordpress.org/desmith/\">David E. Smith</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">David Smith</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">david.binda</a>, <a href=\"https://profiles.wordpress.org/davidvee/\">davidvee</a>, <a href=\"https://profiles.wordpress.org/davisshaver/\">Davis Shaver</a>, <a href=\"https://profiles.wordpress.org/dchymko/\">dchymko</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/deepaklalwani/\">Deepak Lalwani</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/demetris/\">demetris (Demetris Kikizas)</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/derekakelly/\">derekakelly</a>, <a href=\"https://profiles.wordpress.org/pcfreak30/\">Derrick Hammer</a>, <a href=\"https://profiles.wordpress.org/emrikol/\">Derrick Tennant</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dimitrism/\">Dimitris Mitsis</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency/\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/djennez/\">djennez</a>, <a href=\"https://profiles.wordpress.org/dmenard/\">dmenard</a>, <a href=\"https://profiles.wordpress.org/dmethvin/\">dmethvin</a>, <a href=\"https://profiles.wordpress.org/doc987/\">doc987</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/doobeedoo/\">Doobeedoo</a>, <a href=\"https://profiles.wordpress.org/dossy/\">Dossy Shiobara</a>, <a href=\"https://profiles.wordpress.org/dpacks/\">dpacks</a>, <a href=\"https://profiles.wordpress.org/dratwas/\">dratwas</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/drlightman/\">DrLightman</a>, <a href=\"https://profiles.wordpress.org/drprotocols/\">DrProtocols</a>, <a href=\"https://profiles.wordpress.org/dsifford/\">dsifford</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/dushakov/\">dushakov</a>, <a href=\"https://profiles.wordpress.org/dustinbolton/\">Dustin Bolton</a>, <a href=\"https://profiles.wordpress.org/dvershinin/\">dvershinin</a>, <a href=\"https://profiles.wordpress.org/cyberhobo/\">Dylan Kuhn</a>, <a href=\"https://profiles.wordpress.org/elrae/\">Earle Davies</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eddiemoya/\">Eddie Moya</a>, <a href=\"https://profiles.wordpress.org/eddystile/\">Eddy</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/itsjusteileen/\">Eileen Violini</a>, <a href=\"https://profiles.wordpress.org/ekatherine/\">Ekaterina</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">elmastudio</a>, <a href=\"https://profiles.wordpress.org/emanuel_blagonic/\">Emanuel Blagonic</a>, <a href=\"https://profiles.wordpress.org/emlebrun/\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">Emmanuel Hesry</a>, <a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgoric</a>, <a href=\"https://profiles.wordpress.org/enricosorcinelli/\">Enrico Sorcinelli</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/shamai/\">Eric</a>, <a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/ebinnion/\">Eric Binnion</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a>, <a href=\"https://profiles.wordpress.org/folletto/\">Erin &lsquo;Folletto&rsquo; Casali</a>, <a href=\"https://profiles.wordpress.org/esemlabel/\">esemlabel</a>, <a href=\"https://profiles.wordpress.org/esoj/\">esoj</a>, <a href=\"https://profiles.wordpress.org/espiat/\">espiat</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>, <a href=\"https://profiles.wordpress.org/etruel/\">etruel</a>, <a href=\"https://profiles.wordpress.org/ev3rywh3re/\">Ev3rywh3re</a>, <a href=\"https://profiles.wordpress.org/circlecube/\">Evan Mullins</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a>, <a href=\"https://profiles.wordpress.org/gaambo/\">Fabian Todt</a>, <a href=\"https://profiles.wordpress.org/fftfaisal/\">Faisal Ahmed</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/felix-edelmann/\">Felix Edelmann</a>, <a href=\"https://profiles.wordpress.org/ferdiesletering/\">ferdiesletering</a>, <a href=\"https://profiles.wordpress.org/finomeno/\">finomeno</a>, <a href=\"https://profiles.wordpress.org/florianbrinkmann/\">Florian Brinkmann</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/truchot/\">Florian Truchot</a>, <a href=\"https://profiles.wordpress.org/florianatwhodunit/\">florianatwhodunit</a>, <a href=\"https://profiles.wordpress.org/foliovision/\">FolioVision</a>, <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>, <a href=\"https://profiles.wordpress.org/francoist/\">Francois Thibaud</a>, <a href=\"https://profiles.wordpress.org/futtta/\">Frank Goossens</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/frankprendergast/\">Frank.Prendergast</a>, <a href=\"https://profiles.wordpress.org/fjarrett/\">Frankie Jarrett</a>, <a href=\"https://profiles.wordpress.org/franzarmas/\">Franz Armas</a>, <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>, <a href=\"https://profiles.wordpress.org/mintindeed/\">Gabriel Koen</a>, <a href=\"https://profiles.wordpress.org/gma992/\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/gmays/\">Gabriel Mays</a>, <a href=\"https://profiles.wordpress.org/gadgetroid/\">gadgetroid</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garavani/\">Garavani</a>, <a href=\"https://profiles.wordpress.org/garethgillman/\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyc40/\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/geertdd/\">Geert De Deckere</a>, <a href=\"https://profiles.wordpress.org/geminilabs/\">Gemini Labs</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/giorgio25b/\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/gisselfeldt/\">gisselfeldt</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>, <a href=\"https://profiles.wordpress.org/goldsounds/\">goldsounds</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/gkloveweb/\">Govind Kumar</a>, <a href=\"https://profiles.wordpress.org/greglone/\">Grégory Viguier</a>, <a href=\"https://profiles.wordpress.org/gradina/\">gradina</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gregmulhauser/\">gregmulhauser</a>, <a href=\"https://profiles.wordpress.org/grierson/\">grierson</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/gsmumbo/\">gsmumbo</a>, <a href=\"https://profiles.wordpress.org/wido/\">Guido Scialfa</a>, <a href=\"https://profiles.wordpress.org/guidobras/\">guidobras</a>, <a href=\"https://profiles.wordpress.org/netsurfer2705/\">Gunther Pilz</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hvar/\">H-var</a>, <a href=\"https://profiles.wordpress.org/hakre/\">hakre</a>, <a href=\"https://profiles.wordpress.org/halgatewood/\">Hal Gatewood</a>, <a href=\"https://profiles.wordpress.org/hankthetank/\">hankthetank</a>, <a href=\"https://profiles.wordpress.org/psdtohtmlguru/\">Hapiuc Robert</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/haukep/\">haukep</a>, <a href=\"https://profiles.wordpress.org/azhiyadev/\">Hauwa Abashiya</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/h71/\">Hector Farahani</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/hlanggo/\">hlanggo</a>, <a href=\"https://profiles.wordpress.org/hommealone/\">hommealone</a>, <a href=\"https://profiles.wordpress.org/ryanshoover/\">Hoover</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hronak/\">Hronak Nahar</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/huntlyc/\">huntlyc</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/iandstewart/\">Ian Stewart</a>, <a href=\"https://profiles.wordpress.org/ianjvr/\">ianjvr</a>, <a href=\"https://profiles.wordpress.org/ifrins/\">ifrins</a>, <a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>, <a href=\"https://profiles.wordpress.org/infinum/\">infinum</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ishitaka/\">ishitaka</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jackfungi/\">jackfungi</a>, <a href=\"https://profiles.wordpress.org/jacklinkers/\">jacklinkers</a>, <a href=\"https://profiles.wordpress.org/jadonn/\">Jadon N</a>, <a href=\"https://profiles.wordpress.org/jadpm/\">jadpm</a>, <a href=\"https://profiles.wordpress.org/jagirbahesh/\">jagirbahesh</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/twentyzerotwo/\">Jake Whiteley</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/foack/\">Jan Koch</a>, <a href=\"https://profiles.wordpress.org/janr/\">Jan Reilink</a>, <a href=\"https://profiles.wordpress.org/janthiel/\">Jan Thiel</a>, <a href=\"https://profiles.wordpress.org/javidalkaruzi/\">Janvo Aldred</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/jason_the_adams/\">Jason Adams</a>, <a href=\"https://profiles.wordpress.org/strangerstudios/\">Jason Coleman</a>, <a href=\"https://profiles.wordpress.org/boogah/\">Jason Cosper</a>, <a href=\"https://profiles.wordpress.org/coolmann/\">Jason Crouse</a>, <a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a>, <a href=\"https://profiles.wordpress.org/jaz_on/\">Jason Rouet</a>, <a href=\"https://profiles.wordpress.org/jaswsinc/\">JasWSInc</a>, <a href=\"https://profiles.wordpress.org/javiercasares/\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/shiki/\">Jayson Basanes</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">jbinda</a>, <a href=\"https://profiles.wordpress.org/jbouganim/\">jbouganim</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jeffr0/\">Jeff Chandler</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jenmylo/\">Jen</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">jeryj</a>, <a href=\"https://profiles.wordpress.org/jesin/\">Jesin A</a>, <a href=\"https://profiles.wordpress.org/jigneshnakrani/\">Jignesh Nakrani</a>, <a href=\"https://profiles.wordpress.org/jim_panse/\">Jim_Panse</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jivanpal/\">jivanpal</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johannadevos/\">Johanna de Vos</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/jdorner/\">John Dorner</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">John P. Green</a>, <a href=\"https://profiles.wordpress.org/rastaban/\">John Richards II</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/johnnyb/\">johnnyb</a>, <a href=\"https://profiles.wordpress.org/jb510/\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a>, <a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>, <a href=\"https://profiles.wordpress.org/jchristopher/\">Jonathan Christopher</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>, <a href=\"https://profiles.wordpress.org/jonkolbert/\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonnybot/\">jonnybot</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/josephdickson/\">Joseph Dickson</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/procifer/\">Josh Smith</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juanlopez4691/\">juanlopez4691</a>, <a href=\"https://profiles.wordpress.org/jules-colle/\">Jules Colle</a>, <a href=\"https://profiles.wordpress.org/julianm/\">julianm</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/jgrodel/\">Julka Grodel</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/devesine/\">Justin de Vesine</a>, <a href=\"https://profiles.wordpress.org/greenshady/\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/justlevine/\">justlevine</a>, <a href=\"https://profiles.wordpress.org/justnorris/\">justnorris</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kaira/\">Kaira</a>, <a href=\"https://profiles.wordpress.org/kaitlin414/\">Kaitlin Bolling</a>, <a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>, <a href=\"https://profiles.wordpress.org/kamataryo/\">KamataRyo</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/properlypurple/\">Kavya Gokul</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer/\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kellybleck/\">kellybleck</a>, <a href=\"https://profiles.wordpress.org/kennethroberson5556/\">kennethroberson5556</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/itzmekhokan/\">Khokan Sardar</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kirilzh/\">Kiril Zhelyazkov</a>, <a href=\"https://profiles.wordpress.org/kburgoine/\">Kirsty Burgoine</a>, <a href=\"https://profiles.wordpress.org/kishanjasani/\">Kishan Jasani</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kittmedia/\">KittMedia</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/ksoares/\">ksoares</a>, <a href=\"https://profiles.wordpress.org/kthmd/\">KT Cheung</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>, <a href=\"https://profiles.wordpress.org/lalitpendhare/\">lalitpendhare</a>, <a href=\"https://profiles.wordpress.org/landau/\">landau</a>, <a href=\"https://profiles.wordpress.org/laternastudio/\">Laterna Studio</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/offereins/\">Laurens Offereins</a>, <a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>, <a href=\"https://profiles.wordpress.org/gamerz/\">Lester Chan</a>, <a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a>, <a href=\"https://profiles.wordpress.org/layotte/\">Lew Ayotte</a>, <a href=\"https://profiles.wordpress.org/lex_robinson/\">Lex Robinson</a>, <a href=\"https://profiles.wordpress.org/linyows/\">linyows</a>, <a href=\"https://profiles.wordpress.org/lipathor/\">lipathor</a>, <a href=\"https://profiles.wordpress.org/lschuyler/\">Lisa Schuyler</a>, <a href=\"https://profiles.wordpress.org/liuhaibin/\">liuhaibin</a>, <a href=\"https://profiles.wordpress.org/ljharb/\">ljharb</a>, <a href=\"https://profiles.wordpress.org/logig/\">logig</a>, <a href=\"https://profiles.wordpress.org/lucasbustamante/\">lucasbustamante</a>, <a href=\"https://profiles.wordpress.org/lwill/\">luiswill</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">Luke Walczak</a>, <a href=\"https://profiles.wordpress.org/lukestramasonder/\">lukestramasonder</a>, <a href=\"https://profiles.wordpress.org/asif2bd/\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/msafi/\">M.K. Safi</a>, <a href=\"https://profiles.wordpress.org/cloudstek/\">Maarten de Boer</a>, <a href=\"https://profiles.wordpress.org/aladin02dz/\">Mahfoudh Arous</a>, <a href=\"https://profiles.wordpress.org/mailnew2ster/\">mailnew2ster</a>, <a href=\"https://profiles.wordpress.org/manojlovic/\">manojlovic</a>, <a href=\"https://profiles.wordpress.org/targz-1/\">Manuel Schmalstieg</a>, <a href=\"https://profiles.wordpress.org/neodjandre/\">maraki</a>, <a href=\"https://profiles.wordpress.org/iworks/\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/pereirinha/\">Marco Pereirinha</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/mariovalney/\">Mario Valney</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/machouinard/\">Mark Chouinard</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/markparnell/\">Mark Parnell</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markdubois/\">markdubois</a>, <a href=\"https://profiles.wordpress.org/markgoho/\">markgoho</a>, <a href=\"https://profiles.wordpress.org/vindl/\">Marko Andrijasevic</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/markshep/\">markshep</a>, <a href=\"https://profiles.wordpress.org/markusthiel/\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/martijn-van-der-kooij/\">Martijn van der Kooij</a>, <a href=\"https://profiles.wordpress.org/martychc23/\">martychc23</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matheusfd/\">Matheus Martins</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/matjack1/\">matjack1</a>, <a href=\"https://profiles.wordpress.org/webdevmattcrom/\">Matt Cromwell</a>, <a href=\"https://profiles.wordpress.org/gothickgothickorguk/\">Matt Gibson</a>, <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattrad/\">Matt Radford</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheweppelsheimer/\">Matthew Eppelsheimer</a>, <a href=\"https://profiles.wordpress.org/beatpanda/\">Matthew Gerring</a>, <a href=\"https://profiles.wordpress.org/pfefferle/\">Matthias Pfefferle</a>, <a href=\"https://profiles.wordpress.org/matthieumota/\">Matthieu Mota</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maximeculea/\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/mcshane/\">mcshane</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/menakas/\">Menaka S.</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/lilmike/\">Michael</a>, <a href=\"https://profiles.wordpress.org/michaelarestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/mfields/\">Michael Fields</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/m_butcher/\">Michele Butcher-Jones</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mikaumoto/\">mikaumoto</a>, <a href=\"https://profiles.wordpress.org/mihai2u/\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mdgl/\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mike-haydon-swo/\">Mike Haydon</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeyarce/\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/milindmore22/\">Milind More</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mislavjuric/\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/opurockey/\">Mohammad Rockeybul Alam</a>, <a href=\"https://profiles.wordpress.org/mohsinrasool/\">Mohsin Rasool</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/gwendydd/\">Morgan Kay</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mt8biz/\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mrgrt/\">mrgrt</a>, <a href=\"https://profiles.wordpress.org/mrmist/\">mrmist</a>, <a href=\"https://profiles.wordpress.org/mrtall/\">mrTall</a>, <a href=\"https://profiles.wordpress.org/msaggiorato/\">msaggiorato</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/nabilmoqbel/\">Nabil Moqbel</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">Nalini Thakor</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/narwen/\">narwen</a>, <a href=\"https://profiles.wordpress.org/nateinaction/\">Nate Gay</a>, <a href=\"https://profiles.wordpress.org/nathanrice/\">Nathan Rice</a>, <a href=\"https://profiles.wordpress.org/navidos/\">Navid</a>, <a href=\"https://profiles.wordpress.org/neonkowy/\">neonkowy</a>, <a href=\"https://profiles.wordpress.org/krstarica/\">net</a>, <a href=\"https://profiles.wordpress.org/netpassprodsr/\">netpassprodsr</a>, <a href=\"https://profiles.wordpress.org/nextendweb/\">Nextendweb</a>, <a href=\"https://profiles.wordpress.org/calvin_ngan/\">Ngan Tengyuen</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicolaskulka/\">NicolasKulka</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw/\">Niels de Blaauw</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nigrosimone/\">nigro.simone</a>, <a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi/\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/nbachiyski/\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/nilovelez/\">Nilo Velez</a>, <a href=\"https://profiles.wordpress.org/niresh12495/\">Niresh</a>, <a href=\"https://profiles.wordpress.org/nmenescardi/\">nmenescardi</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a>, <a href=\"https://profiles.wordpress.org/numidwasnotavailable/\">NumidWasNotAvailable</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/obliviousharmony/\">obliviousharmony</a>, <a href=\"https://profiles.wordpress.org/ockham/\">ockham</a>, <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/onokazu/\">onokazu</a>, <a href=\"https://profiles.wordpress.org/optimizingmatters/\">Optimizing Matters</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/ovann86/\">ovann86</a>, <a href=\"https://profiles.wordpress.org/overclokk/\">overclokk</a>, <a href=\"https://profiles.wordpress.org/p_enrique/\">p_enrique</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/pablohoneyhoney/\">Pablo Honey</a>, <a href=\"https://profiles.wordpress.org/paddy/\">Paddy</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/paresh07/\">Paresh Shinde</a>, <a href=\"https://profiles.wordpress.org/parvand/\">Parvand</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pdfernhout/\">Paul Fernhout</a>, <a href=\"https://profiles.wordpress.org/djpaul/\">Paul Gibbs</a>, <a href=\"https://profiles.wordpress.org/figureone/\">Paul Ryan</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulstonier/\">Paul Stonier</a>, <a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>, <a href=\"https://profiles.wordpress.org/pavelevap/\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a>, <a href=\"https://profiles.wordpress.org/pentatonicfunk/\">pentatonicfunk</a>, <a href=\"https://profiles.wordpress.org/pputzer/\">pepe</a>, <a href=\"https://profiles.wordpress.org/pessoft/\">Peter « Pessoft » Kolínek</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pderksen/\">Phil Derksen</a>, <a href=\"https://profiles.wordpress.org/johnstonphilip/\">Phil Johnston</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pigdog234/\">pigdog234</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">Pinar</a>, <a href=\"https://profiles.wordpress.org/pingram3541/\">pingram</a>, <a href=\"https://profiles.wordpress.org/pionect/\">Pionect</a>, <a href=\"https://profiles.wordpress.org/piyushmca/\">Piyush Patel</a>, <a href=\"https://profiles.wordpress.org/pkarjala/\">pkarjala</a>, <a href=\"https://profiles.wordpress.org/pkvillanueva/\">pkvillanueva</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/pratik028/\">pratik028</a>, <a href=\"https://profiles.wordpress.org/pravinparmar2404/\">Pravin Parmar</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/presslabs/\">Presslabs</a>, <a href=\"https://profiles.wordpress.org/priyankkpatel/\">Priyank Patel</a>, <a href=\"https://profiles.wordpress.org/priyomukul/\">Priyo Mukul</a>, <a href=\"https://profiles.wordpress.org/prografika/\">ProGrafika</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/puneetsahalot/\">Puneet Sahalot</a>, <a href=\"https://profiles.wordpress.org/punitsoftac/\">punitsoftac</a>, <a href=\"https://profiles.wordpress.org/pvogel2/\">pvogel2</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/raajtram/\">Raaj Trambadia</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/raineorshine/\">raine</a>, <a href=\"https://profiles.wordpress.org/rajeshsingh520/\">rajeshsingh520</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/ravatparmar/\">Ravat Parmar</a>, <a href=\"https://profiles.wordpress.org/ravenswd/\">ravenswd</a>, <a href=\"https://profiles.wordpress.org/rawrly/\">rawrly</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/redsand/\">Red Sand Media Group</a>, <a href=\"https://profiles.wordpress.org/regankhadgi/\">Regan Khadgi</a>, <a href=\"https://profiles.wordpress.org/tabrisrp/\">Remy Perona</a>, <a href=\"https://profiles.wordpress.org/remzicavdar/\">Remzi Cavdar</a>, <a href=\"https://profiles.wordpress.org/renathoc/\">Renatho</a>, <a href=\"https://profiles.wordpress.org/renggo888/\">renggo888</a>, <a href=\"https://profiles.wordpress.org/retlehs/\">retlehs</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/riaanlom/\">riaanlom</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/riasat/\">riasat</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/ringisha/\">Ringisha</a>, <a href=\"https://profiles.wordpress.org/ritterml/\">ritterml</a>, <a href=\"https://profiles.wordpress.org/rnaby/\">Rnaby</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/robertpeake/\">Robert Peake</a>, <a href=\"https://profiles.wordpress.org/nullbyte/\">Robert Windisch</a>, <a href=\"https://profiles.wordpress.org/kreppar/\">Rodrigo Arias</a>, <a href=\"https://profiles.wordpress.org/ronalfy/\">Ronald Huereca</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Wolný</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/rtagliento/\">rtagliento</a>, <a href=\"https://profiles.wordpress.org/ruxandra/\">Ruxandra</a>, <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/ryotasakamoto/\">Ryota Sakamoto</a>, <a href=\"https://profiles.wordpress.org/ryotsun/\">ryotsun</a>, <a href=\"https://profiles.wordpress.org/soean/\">Sören Wrede</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">Søren Brønsted</a>, <a href=\"https://profiles.wordpress.org/sachittandukar/\">Sachit Tandukar</a>, <a href=\"https://profiles.wordpress.org/sagarjadhav/\">Sagar Jadhav</a>, <a href=\"https://profiles.wordpress.org/sajjad67/\">Sajjad Hossain Sagor</a>, <a href=\"https://profiles.wordpress.org/salcode/\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/salvatoreformisano/\">Salvatore Formisano</a>, <a href=\"https://profiles.wordpress.org/salvoaranzulla/\">salvoaranzulla</a>, <a href=\"https://profiles.wordpress.org/samful/\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/sswebster/\">Sam Webster</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samueljseay/\">samueljseay</a>, <a href=\"https://profiles.wordpress.org/pacifika/\">Sander van Dragt</a>, <a href=\"https://profiles.wordpress.org/sanzeeb3/\">Sanjeev Aryal</a>, <a href=\"https://profiles.wordpress.org/progremzion/\">Sanket Mehta</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">sarahricker</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/scarolan/\">scarolan</a>, <a href=\"https://profiles.wordpress.org/scholdstrom/\">scholdstrom</a>, <a href=\"https://profiles.wordpress.org/sc0ttkclark/\">Scott Kingsley Clark</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/scottsmith/\">Scott Smith</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scribu/\">scribu</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/seanpaulrasmussen/\">seanpaulrasmussen</a>, <a href=\"https://profiles.wordpress.org/seayou/\">seayou</a>, <a href=\"https://profiles.wordpress.org/senatorman/\">senatorman</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/vjik/\">Sergey Predvoditelev</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/functionalrhyme/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/wpshades/\">Shantanu Desai</a>, <a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/shawnz/\">shawnz</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shulard/\">shulard</a>, <a href=\"https://profiles.wordpress.org/siliconforks/\">siliconforks</a>, <a href=\"https://profiles.wordpress.org/simonwheatley/\">Simon Wheatley</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sjmur/\">sjmur</a>, <a href=\"https://profiles.wordpress.org/skarabeq/\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/skoskie/\">skoskie</a>, <a href=\"https://profiles.wordpress.org/slushman/\">slushman</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/seth17/\">SpearsMarketing</a>, <a href=\"https://profiles.wordpress.org/sphakka/\">sphakka</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/sreedoap/\">sreedoap</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/garubi/\">Stefano Garuti</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sswells/\">Steph Wells</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/stephencronin/\">Stephen Cronin</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegibson12/\">stevegibson12</a>, <a href=\"https://profiles.wordpress.org/sterndata/\">Steven Stern (sterndata)</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/stevenkussmaul/\">stevenkussmaul</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sum1/\">SUM1</a>, <a href=\"https://profiles.wordpress.org/quadthemes/\">Sunny</a>, <a href=\"https://profiles.wordpress.org/sunnyratilal/\">Sunny Ratilal</a>, <a href=\"https://profiles.wordpress.org/sushyant/\">Sushyant Zavarzadeh</a>, <a href=\"https://profiles.wordpress.org/suzylah/\">suzylah</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/smub/\">Syed Balkhi</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tangrufus/\">Tang Rufus</a>, <a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/tessawatkinsllc/\">Tessa Watkins LLC</a>, <a href=\"https://profiles.wordpress.org/wildworks/\">Tetsuaki Hamano</a>, <a href=\"https://profiles.wordpress.org/themiked/\">theMikeD</a>, <a href=\"https://profiles.wordpress.org/theolg/\">theolg</a>, <a href=\"https://profiles.wordpress.org/tweetythierry/\">Thierry Muller</a>, <a href=\"https://profiles.wordpress.org/thimalw/\">Thimal Wickremage</a>, <a href=\"https://profiles.wordpress.org/webzunft/\">Thomas M</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith/\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/tiagohillebrandt/\">Tiago Hillebrandt</a>, <a href=\"https://profiles.wordpress.org/tillkruess/\">Till Krüss</a>, <a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmdesigned/\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tmoore41/\">tmoore41</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tofandel/\">Tofandel</a>, <a href=\"https://profiles.wordpress.org/tomdude/\">tomdude</a>, <a href=\"https://profiles.wordpress.org/tferry/\">Tommy Ferry</a>, <a href=\"https://profiles.wordpress.org/starbuck/\">Tony G</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul I Chowdhury</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, <a href=\"https://profiles.wordpress.org/truongwp/\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tsimmons/\">tsimmons</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vagios/\">Vagios Vlachos</a>, <a href=\"https://profiles.wordpress.org/valchovski/\">valchovski</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/vayu/\">Vayu Robins</a>, <a href=\"https://profiles.wordpress.org/veromary/\">veromary</a>, <a href=\"https://profiles.wordpress.org/szepeviktor/\">Viktor Szépe</a>, <a href=\"https://profiles.wordpress.org/vinayakanivase/\">Vinayak Anivase</a>, <a href=\"https://profiles.wordpress.org/vinkla/\">vinkla</a>, <a href=\"https://profiles.wordpress.org/virginienacci/\">virginienacci</a>, <a href=\"https://profiles.wordpress.org/planvova/\">Vladimir</a>, <a href=\"https://profiles.wordpress.org/vabrashev/\">Vladislav Abrashev</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/voyager131/\">voyager131</a>, <a href=\"https://profiles.wordpress.org/vtieu/\">vtieu</a>, <a href=\"https://profiles.wordpress.org/webaware/\">webaware</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a>, <a href=\"https://profiles.wordpress.org/planningwrite/\">Winstina Hughes</a>, <a href=\"https://profiles.wordpress.org/wittich/\">wittich</a>, <a href=\"https://profiles.wordpress.org/wpdesk/\">wpdesk</a>, <a href=\"https://profiles.wordpress.org/wpdo5ea/\">WPDO</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>, <a href=\"https://profiles.wordpress.org/yashrs/\">yashrs</a>, <a href=\"https://profiles.wordpress.org/yoancutillas/\">yoancutillas</a>, <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>, <a href=\"https://profiles.wordpress.org/yuhin/\">yuhin</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/ysalame/\">Yuri Salame</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zaheerahmad/\">zaheerahmad</a>, <a href=\"https://profiles.wordpress.org/zakkath/\">zakkath</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>, and <a href=\"https://profiles.wordpress.org/chesio/\">Česlav Przywara</a>.</p>\n\n\n\n<p>Pour finir, un grand merci à celles et ceux qui ont participé à la traduction de WordPress 5.6 en français&nbsp;:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/anthonychaussin\">Anthony Chaussin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ajoah\">Aurélien Joahny</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bastho\">Bastien Ho</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bonaldi\">Bonaldi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/btpub\">Bruno Tritsch</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clementpolito\">Clément Polito</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cryptrz\">cryptrz</a>, <a href=\"https://profiles.wordpress.org/wolforg\">Didier Demory / Wolforg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drixe\">drixe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/emlebrun\">Emilie LEBRUN</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fxbenard\">FX Bénard</a>, <a href=\"https://profiles.wordpress.org/jdy68\">Jenny Dupuy</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeherve\">Jeremy Herve</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leprincenoir\">Kantari Samy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/peexy\">Laurent Naudier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webaxones\">Loïc Antignac</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chaton666\">Marie Comet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maximejobin\">Maxime Jobin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maxpertici\">Maxime Pertici</a>,&nbsp;<a href=\"https://profiles.wordpress.org/momo-fr\">momo-fr</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolasricher\">Nicolas Richer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/papicx\">papicx</a>,&nbsp;<a href=\"https://profiles.wordpress.org/casiepa\">Pascal Casier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixxxel\">Pierre Bichet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/larrach\">Rachel Peter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienserre\">Sébastien SERRE</a>,&nbsp;<a href=\"https://profiles.wordpress.org/crash_47\">Thomas Piron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spaceshipone\">Timothée Brosille</a>,&nbsp;<a href=\"https://profiles.wordpress.org/translationsbyautomattic\">Translations by Automattic</a>, et&nbsp;<a href=\"https://profiles.wordpress.org/wptranslationsorg\">WP-Translations</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"Gestion des problèmes potentiels liés à la mise à jour de jQuery dans WordPress 5.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Dec 2020 16:29:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Guide\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1835\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"En août 2020, WordPress 5.5 a cessé d&#8217;utiliser le script jQuery Migrate par défaut. Avec la sortie prochaine de WordPress 5.6, la version embarquée de jQuery sera mise à jour de la version 1.12.4-wp à la version 3.5.1. Il est important de préciser que cette mise à jour de jQuery est aujourd&#8217;hui indispensable, car cette [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Justin Ahinon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:14872:\"\n<p>En août 2020, WordPress 5.5 a cessé d&rsquo;utiliser le script jQuery Migrate par défaut. <strong>Avec la sortie prochaine de WordPress 5.6, la version embarquée de jQuery sera mise à jour de la version <code>1.12.4-wp</code> à la version <code>3.5.1</code>.</strong></p>\n\n\n\n<p>Il est important de préciser que cette mise à jour de jQuery est aujourd&rsquo;hui indispensable, car cette ancienne version n&rsquo;est plus prise en charge par jQuery et la conserver pose des problèmes de sécurité sur le long terme.</p>\n\n\n\n<p>Dans cet article, vous trouverez l&rsquo;ensemble des préconisations pour réduire au maximum les risques lors de la mise à jour de votre site vers WordPress 5.6 et sa nouvelle version de jQuery.</p>\n\n\n\n<span id=\"more-1835\"></span>\n\n\n\n<p>Ainsi, avec la mise à jour majeure WordPress 5.6, qui elle-même met à jour la version de jQuery, certaines extensions ou certains thèmes qui s&rsquo;appuient sur du code jQuery obsolète risquent de présenter des problèmes, allant de simples avertissement affichés uniquement sur la console du navigateur à des problèmes plus graves pouvant générer des erreurs fatales d&rsquo;exécution du code JavaScript.</p>\n\n\n\n<h2>La solution utilisée lors de la sortie de WordPress 5.5</h2>\n\n\n\n<p>Pour la sortie de WordPress 5.5, l’extension <a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">Enable jQuery Migrate Helper</a> a été publiée sur le répertoire officiel des extensions WordPress. Elle permettait de réactiver le script jQuery Migrate et de mettre en évidence les éléments à corriger sur l&rsquo;interface d&rsquo;administration de WordPress.</p>\n\n\n\n<p>Initialement, cette extension devait être une solution temporaire pour donner aux personnes développant des extensions ou des thèmes un peu plus de temps pour faire les mises à jour au cas où les changements de la version 5.5 les prendraient au dépourvu.</p>\n\n\n\n<p>Malheureusement, de nombreuses extensions et thèmes (au moment de la publication de cet article, avant la sortie de WordPress 5.6) présents sur le répertoire officiel WordPress.org sont encore basés sur un code obsolète, sans parler des extensions et thèmes payants proposés sur les places de marché premium.</p>\n\n\n\n<p>Cette extension est donc encore massivement utilisée dans l&rsquo;écosystème.</p>\n\n\n\n<h2>Anticiper les problèmes de compatibilité jQuery pour WordPress 5.6</h2>\n\n\n\n<p>Compte tenu de ces éléments, l’extension <a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">Enable jQuery Migrate Helper</a> a été mise à jour pour la sortie de WordPress 5.6, afin que votre site puisse continuer à utiliser les anciennes versions de jQuery en cas de besoin.</p>\n\n\n\n<p class=\"has-background has-medium-font-size\" style=\"background-color:#b4d9dd\">Nous vous conseillons donc d&rsquo;installer (ou si vous l&rsquo;avez déjà, de conserver) l’extension Enable jQuery Migrate Helper sur votre site lors de votre passage à WordPress 5.6.</p>\n\n\n\n<p>Cette solution doit cependant être considérée comme étant provisoire, car les anciennes versions de jQuery ne reçoivent plus de mises à jour de sécurité, et qu&rsquo;elles pourront donc à l&rsquo;avenir compromettre la sécurité de votre site.</p>\n\n\n\n<h2>Présentation de l&rsquo;extension <em>Enable jQuery Migrate Helper</em></h2>\n\n\n\n<p>Cette extension propose des fonctionnalités et des outils permettant de passer d&rsquo;une version de jQuery à une autre, soit par le biais d&rsquo;une mise à jour du code des extensions ou des thèmes par leurs auteurs, soit en donnant au propriétaire du site le temps de trouver des alternatives.</p>\n\n\n\n<h3>Remontée des éléments posant problème</h3>\n\n\n\n<p>L&rsquo;extension permet de détecter les problèmes rencontrés sur votre site&nbsp;: lorsque vous naviguez sur votre site avec l&rsquo;extension active, elle identifie les dépréciations relatives à du code jQuery obsolète et vous les affiche, si vous être connecté·e avec votre compte d&rsquo;administration du site.</p>\n\n\n\n<p>Les dépréciations sont des avertissements liés à une utilisation de code obsolète, mais qui sera encore pris en charge pendant une période de transition. Toute fonctionnalité marquée comme étant dépréciée doit être remplacée par du code moderne dès que possible, afin de s&rsquo;assurer que tout fonctionne correctement sur le long terme.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png\"><img loading=\"lazy\" width=\"920\" height=\"32\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1837\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png 920w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress-300x10.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress-768x27.png 768w\" sizes=\"(max-width: 920px) 100vw, 920px\" /></a><figcaption><small>Ci-dessus, la barre d&rsquo;administration affichant les avertissements de dépréciation. Cliquez sur l&rsquo;image pour l&rsquo;ouvrir en taille originale dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>Le premier emplacement où vous rencontrerez ces avertissements de dépréciations sera la barre d&rsquo;administration située en haut de page lorsque vous êtes connecté·e en tant qu&rsquo;administrateur ou administratrice.</p>\n\n\n\n<p>Vous y trouverez le nombre de problèmes rencontrés sur la page courante. Les avertissements de dépréciations sur la partie publique du site sont enregistrés et visualisables sur une page dédiée à cela et uniquement visible par les admins. Sur l&rsquo;interface d&rsquo;administration, les avertissements sont directement affichés à l&rsquo;écran, et sont également enregistrés, la configuration choisie au niveau des réglages de l&rsquo;extension.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Outils-‹-WordPress-Trunk-—-WordPress.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"160\" height=\"274\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Outils-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1838\" /></a></figure></div>\n\n\n\n<p>Si des dépréciations ont déjà été enregistrées, elles peuvent également afficher dans le menu d’administration un indicateur du nombre d&rsquo;éléments enregistrés comme le montre la capture d&rsquo;écran ci-contre.</p>\n\n\n\n<p>Ces éléments resteront marqués jusqu&rsquo;à ce que vous effaciez les enregistrements concernés.</p>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"1152\" height=\"368\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1839\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png 1152w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-300x96.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-1024x327.png 1024w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-768x245.png 768w\" sizes=\"(max-width: 1152px) 100vw, 1152px\" /></a><figcaption><small>Ci-dessus, un aperçu des journaux de dépréciations, avec des exemples d&rsquo;extensions contenant du code déprécié. Cliquez sur l&rsquo;image pour l&rsquo;afficher en grand dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>La page du journal des dépréciations permet d’avoir dans la console JavaScript une représentation visuelle des avertissements souvent cachés et destinés aux développeurs et développeuses.</p>\n\n\n\n<p>Elle contient aussi un lien direct vers le site web de l’extension ou du thème, ou vers le site de la personne qui développe l&rsquo;extension ou le thème, si aucun autre lien n&rsquo;est disponible. Ce type d&rsquo;accès direct aidera, nous l&rsquo;espérons, les utilisateurs et utilisatrices de WordPress à obtenir des versions mises à jour ou à remonter les problèmes rencontrés aux développeurs et développeuses d&rsquo;extensions et de thèmes.</p>\n\n\n\n<h2>Basculer sur l&rsquo;ancienne version de jQuery</h2>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png\"><img loading=\"lazy\" width=\"1181\" height=\"471\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png\" alt=\"\" class=\"wp-image-1841\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png 1181w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-300x120.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-1024x408.png 1024w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-768x306.png 768w\" sizes=\"(max-width: 1181px) 100vw, 1181px\" /></a><figcaption><small>La page de réglages de l&rsquo;extension, avec les options pour changer les versions de jQuery. Cliquer sur l&rsquo;image pour l&rsquo;ouvrir en grand dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>La page des réglages de l&rsquo;extension permet aux administrateurs et administratrices de sites de choisir entre l&rsquo;utilisation de l&rsquo;ancienne version de jQuery (avec un avertissement visible par les admins sur chaque page avec les erreurs remontées), et une option permettant d&rsquo;activer l&rsquo;enregistrement des dépréciations générées par les personnes visitant le site (option nommée «&nbsp;journalisation publique&nbsp;»).</p>\n\n\n\n<p>La journalisation publique peut entraîner une charge supplémentaire sur votre serveur, car toute personne qui consulte une page présentant des erreurs générera automatiquement une nouvelle entrée dans le journal des erreurs. Cette option n&rsquo;est a activer que si le support de WordPress ou d&rsquo;une extension vous le demande</p>\n\n\n\n<h3>Changement automatique de version de jQuery</h3>\n\n\n\n<p>Nous sommes conscients que le public cible du logiciel WordPress est largement constitué de personnes n&rsquo;ayant pas forcément les connaissances techniques permettant de prendre les bonnes décisions.</p>\n\n\n\n<p>C&rsquo;est pourquoi un mécanisme automatisé a été mis en place sur l&rsquo;extension <em>Enable jQuery Migrate Helper</em> afin de basculer automatiquement sur l&rsquo;ancienne version de jQuery dans le cas où le site ne serait pas fonctionnel sur la nouvelle version. Un e-mail de notification sera alors envoyé au propriétaire du site pour l&rsquo;informer de cela.</p>\n\n\n\n<h2>Envoi de notifications e-mail automatisées</h2>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/image-6.png\"><img loading=\"lazy\" width=\"1643\" height=\"471\" src=\"https://fr.wordpress.org/files/2020/12/image-6.png\" alt=\"\" class=\"wp-image-1843\" srcset=\"https://fr.wordpress.org/files/2020/12/image-6.png 1643w, https://fr.wordpress.org/files/2020/12/image-6-300x86.png 300w, https://fr.wordpress.org/files/2020/12/image-6-1024x294.png 1024w, https://fr.wordpress.org/files/2020/12/image-6-768x220.png 768w, https://fr.wordpress.org/files/2020/12/image-6-1536x440.png 1536w\" sizes=\"(max-width: 1643px) 100vw, 1643px\" /></a><figcaption><small>Exemple de notification e-mail envoyée lors de l&rsquo;utilisation d&rsquo;une ancienne version de jQuery.</small></figcaption></figure>\n\n\n\n<p>Une fois par semaine, l&rsquo;extension enverra un e-mail à la personne chargée de l&rsquo;administration du site pour l&rsquo;informer de l&rsquo;état actuel de son site. Cette notification contient des informations sur les problèmes liés à jQuery qui ont été enregistrés au cours de la semaine écoulée.</p>\n\n\n\n<p>Nous espérons ainsi que les personnes chargées de l’administration de leur site pourront ainsi prendre en main la résolution des problèmes touchant leur site, notamment en mettant à jour les extensions et thèmes générant des erreurs sur le site.</p>\n\n\n\n<p>Dans ces mêmes e-mails, nous encourageons également la suppression de l&rsquo;extension jQuery Migrate Helper si aucune dépréciation n&rsquo;a été enregistrée au cours de la semaine écoulée. Cela permettra aux équipes de WordPress.org d&rsquo;avoir un aperçu en temps réel des problèmes de compatibilité jQuery, en observant le nombre d&rsquo;installations actives de l&rsquo;extension.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Si vous avez des questions ou si vous avez besoin d&rsquo;aide, n&rsquo;hésitez pas à vous inscrire sur le <a href=\"https://wpfr.net/support\">forum d&rsquo;entraide de l&rsquo;association WordPress Francophone</a> ou à <a href=\"https://wpfr.net/slack\">rejoindre le Slack WordPress-Fr</a>.</p>\n\n\n\n<p>Cet article est une traduction par <a href=\'https://profiles.wordpress.org/justinahinon/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>justinahinon</a> de l’article <em><a href=\"https://make.wordpress.org/support/2020/12/handling-potential-jquery-issues-in-wordpress-5-6/\">Handling potential jQuery issues in WordPress 5.6</a></em><a href=\"https://make.wordpress.org/support/2020/12/handling-potential-jquery-issues-in-wordpress-5-6/\"> (article en anglais)</a>, initialement publié par <a href=\'https://profiles.wordpress.org/clorith/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>clorith</a> sur le blog de développement du cœur WordPress. Relu et adapté par <a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a> et <a href=\'https://profiles.wordpress.org/fxbenard/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>fxbenard</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"WordPress 5.6 : des changements visant à améliorer l’inclusivité de l’interface d’administration\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"https://fr.wordpress.org/2020/11/26/wordpress-5-6-des-changements-visant-a-ameliorer-linclusivite-de-linterface-dadministration/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:137:\"https://fr.wordpress.org/2020/11/26/wordpress-5-6-des-changements-visant-a-ameliorer-linclusivite-de-linterface-dadministration/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Nov 2020 08:41:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1801\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"Depuis maintenant quelques années, l’équipe de traduction de WordPress en français vise à rendre la traduction de WP la plus inclusive possible, notamment sur les questions de genres. Cela s’ancre dans le positionnement plus global de WordPress en tant qu’écosystème, et se trouve finalement être le reflet des valeurs portées par ce projet open-source au [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WordPress FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11450:\"\n<p>Depuis maintenant quelques années, l’équipe de traduction de WordPress en français vise à rendre la traduction de WP la plus inclusive possible, notamment sur les questions de genres.</p>\n\n\n\n<p>Cela s’ancre dans le positionnement plus global de WordPress en tant qu’écosystème, et se trouve finalement être le reflet des valeurs portées par ce projet open-source au niveau mondial. Ces valeurs d’inclusivité et de promotion de la diversité se retrouvent lors des Meetups et WordCamps –&nbsp;les évènements rassemblant la communauté&nbsp;– tout comme au sein du projet. Citons notamment les prises de position sur des <a href=\"https://fr.wordpress.org/team/2020/07/21/retrait-des-termes-whitelist-et-blacklist-du-lexique-wordpress/\">points de terminologie</a> à la suite du mouvement Black Lives Matter, ou encore la décision de l’équipe <em>Core</em> du CMS d&rsquo;agir pour améliorer la représentation des femmes dans le logiciel libre et au sein de la «&nbsp;tech&nbsp;» en général, en nommant une équipe de direction 100% féminine (ou non-binaire) pour la version majeure 5.6 de WordPress.</p>\n\n\n\n<p>Après de nombreuses modifications de traduction ces dernières années, nous avons abouti il y a plus d’un an à une règle d’écriture, déjà appliquée de longue date dans la traduction française de WordPress, de ses extensions et de ses thèmes. L’objectif de cette règle était de remplacer les traductions utilisant le masculin uniquement par des traductions inclusives, c&rsquo;est-à-dire s’adressant à toutes et tous.</p>\n\n\n\n<p>L’équipe de traduction de WordPress comprend les réserves souvent portées sur la lisibilité de l’écriture basée sur l’usage du point médian. L’utilisation du point médian arrive donc en troisième position lorsqu’il s’agit de faire un choix de traduction. Pour rappel, voici l’ordre de préférence de l’équipe de traduction pour remplacer un terme uniquement masculin par une formulation plus inclusive&nbsp;:</p>\n\n\n\n<ol><li><strong>Formulation neutre<br></strong>Exemple&nbsp;: «&nbsp;Les personnes chargées de l’administration&nbsp;»</li><li><strong>Formulation combinée<br></strong>Exemple&nbsp;: «&nbsp;Les administrateurs et administratrices&nbsp;»</li><li><strong>Formulation basée sur l’usage du point médian<br></strong>Exemple&nbsp;:&nbsp;«&nbsp;Les administrateur·ice·s&nbsp;»</li></ol>\n\n\n\n<p>Cette règle est appliquée depuis longtemps sur WordPress. Mais il restait encore un point particulièrement complexe et «&nbsp;sensible&nbsp;» celui de l&rsquo;écran <em>«&nbsp;Utilisateurs&nbsp;»</em> de l’administration et des rôles liés à ces <em>«&nbsp;utilisateurs&nbsp;»</em>. Puisqu&rsquo;il s&rsquo;agissait des derniers emplacements de l’administration du logiciel où des termes uniquement masculins étaient utilisés pour qualifier les utilisateurs et utilisatrices de l’outil, nous avons mis en place avec l’ensemble de l’équipe de traduction une démarche visant à faire évoluer la terminologie employée sur cette interface.</p>\n\n\n\n<p>Cette démarche s’est répartie sur quatre réunions de l’équipe de traduction (comptes-rendus disponibles à la fin du présent article).</p>\n\n\n\n<span id=\"more-1801\"></span>\n\n\n\n<h2>Étude de faisabilité des différentes hypothèses identifiées</h2>\n\n\n\n<p>Nous avons identifié trois hypothèses principales&nbsp;:</p>\n\n\n\n<ul><li>Neutralisation de l’interface en utilisant des termes épicènes</li><li>Utilisation de formulations combinant masculin et féminin</li><li>Utilisation du point médian</li></ul>\n\n\n\n<p>Partant de là, nous avons réalisé une extension permettant de mettre à l’épreuve ces trois hypothèses directement dans le tableau de bord. Nous avons ensuite organisé une séance en visioconférence avec l’équipe de traduction afin d’évaluer le rendu de chaque solution.</p>\n\n\n\n<p>Le compte rendu de cette étude de faisabilité est disponible dans les liens situés à la fin du présent article.</p>\n\n\n\n<h2>Décision finale de modification de traduction</h2>\n\n\n\n<p>Suite à cette étude de faisabilité, la réunion suivante de l’équipe de traduction a permis d’aboutir à la décision finale quant à ces changements de traduction.</p>\n\n\n\n<ul><li>Le terme «&nbsp;utilisateur&nbsp;» est remplacé par «&nbsp;compte&nbsp;» (formulation épicène)</li><li>Le nom de chaque rôle (administrateur, éditeur, auteur, contributeur, abonné) est remplacé par une combinaison du terme masculin et du terme féminin.<ul><li>Si la combinaison est faite au sein d’une phrase, la forme longue est privilégiée&nbsp;: «&nbsp;Un e-mail sera envoyé sur l&rsquo;adresse de messagerie de l’utilisatrice ou de l’utilisateur&nbsp;»</li><li>Si la combinaison est faite sur le rôle affiché seul, une forme courte est privilégiée (de préférence sans utiliser le point médian)&nbsp;: «&nbsp;éditeur/éditrice&nbsp;».</li><li>Concernant le choix de l’ordre entre le terme féminin et masculin, il a été décidé d’ordonner les rôles dans l’ordre alphabétique.</li></ul></li><li>Suivant les besoins et en fonction du contexte de la phrase, une formulation neutre peut être jugée appropriée. Par exemple, <em>«&nbsp;Vous pouvez activer l’affichage des avatars des visiteurs qui laissent un commentaire sur votre site&nbsp;»</em> est traduit par <em>«&nbsp;Vous pouvez activer l’affichage des avatars des personnes qui laissent un commentaire sur votre site&nbsp;»</em>.</li></ul>\n\n\n\n<h2>Phase d’implémentation de la modification de traduction</h2>\n\n\n\n<p>Nous avons ensuite procédé à l’implémentation de ces modifications dans la traduction de WordPress en français. Pour cela nous avons effectué nos traductions sur <em>TranslationPress</em>, un outil gracieusement mis à disposition par la société <em>WP-Translations</em>. Cet outil nous a permis de préparer l’ensemble des modifications sans altérer les paquets de traductions générés par <em>translate.wordpress.org</em>, mais aussi –&nbsp;et surtout&nbsp;– de tester ces modifications directement sur le tableau de bord afin de pouvoir nous assurer d’identifier les éléments de l’interface potentiellement problématiques.</p>\n\n\n\n<p>Une fois les modifications implémentées et testées, nous avons importé ces traductions dans la branche 5.6 de WordPress. En effet, cette modification ne sera portée que sur les versions égales ou supérieures à WordPress 5.6.</p>\n\n\n\n<p>Maintenant que ces changements ont été implémentés dans le cœur WordPress, il va être nécessaire de les porter au sein de l’écosystème, c&rsquo;est à dire dans les thèmes et les extensions. Cela sera fait progressivement pendant les prochaines semaines.</p>\n\n\n\n<h3>Captures d’écrans des principaux changements</h3>\n\n\n\n<p><strong>Écran de liste des comptes (anciennement liste des utilisateurs)&nbsp;:</strong></p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"1024\" height=\"591\" src=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-1024x591.png\" alt=\"\" class=\"wp-image-1804\" srcset=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-1024x591.png 1024w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-300x173.png 300w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-768x443.png 768w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-1536x887.png 1536w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-liste-2048x1182.png 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a><figcaption><em><small>Cliquer sur l&rsquo;image pour l&rsquo;ouvrir en taille réelle dans un nouvel onglet</small></em></figcaption></figure>\n\n\n\n<p><strong>Écran d’ajout d’un compte (anciennement ajout d’un utilisateur)&nbsp;:</strong></p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"1024\" height=\"758\" src=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-1024x758.png\" alt=\"\" class=\"wp-image-1803\" srcset=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-1024x758.png 1024w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-300x222.png 300w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-768x568.png 768w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-1536x1136.png 1536w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-comptes-ajout-2048x1515.png 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a><figcaption><em><small>Cliquer sur l&rsquo;image pour l&rsquo;ouvrir en taille réelle dans un nouvel onglet</small></em></figcaption></figure>\n\n\n\n<p><strong>Écran d’exportation des données privées (utilisation d’une combinaison utilisateur/utilisatrice)&nbsp;:</strong></p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"1024\" height=\"253\" src=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison-1024x253.png\" alt=\"\" class=\"wp-image-1802\" srcset=\"https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison-1024x253.png 1024w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison-300x74.png 300w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison-768x190.png 768w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison-1536x379.png 1536w, https://fr.wordpress.org/files/2020/11/changements-wordpress-francais-epicene-combinaison.png 2002w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a><figcaption><em><small>Cliquer sur l&rsquo;image pour l&rsquo;ouvrir en taille réelle dans un nouvel onglet</small></em></figcaption></figure>\n\n\n\n<h2>Liens vers les comptes-rendus de l’équipe de traduction</h2>\n\n\n\n<ul><li><a href=\"https://fr.wordpress.org/team/2020/09/08/compte-rendu-de-la-37eme-reunion-du-7-septembre-2020/\">7 septembre 2020&nbsp;: Lancement du travail</a></li><li><a href=\"https://fr.wordpress.org/team/2020/10/07/compte-rendu-de-la-38eme-reunion-du-6-octobre-2020/\">6 octobre 2020&nbsp;: Lancement des extensions de bêta test</a></li><li><a href=\"https://fr.wordpress.org/team/2020/11/01/compte-rendu-de-latelier-detude-de-faisabilite-des-changements-de-traduction-concernant-les-profils-utilisateurs-et-leurs-roles/\">15 octobre 2020&nbsp;: Étude de faisabilité en visio-conférence</a></li><li><a href=\"https://fr.wordpress.org/team/2020/11/03/compte-rendu-de-la-39eme-reunion-du-2-novembre-2020/\">2 novembre 2020&nbsp;: Décision finale et lancement de la phase d’implémentation</a></li></ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://fr.wordpress.org/2020/11/26/wordpress-5-6-des-changements-visant-a-ameliorer-linclusivite-de-linterface-dadministration/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"17\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Les changements techniques à venir sur WordPress 5.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://fr.wordpress.org/2020/11/24/les-changements-techniques-a-venir-sur-wordpress-5-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://fr.wordpress.org/2020/11/24/les-changements-techniques-a-venir-sur-wordpress-5-6/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Nov 2020 10:28:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1766\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:434:\"En tant qu&#8217;utilisateurs et utilisatrices de WordPress, vous allez voir arriver dans WordPress 5.6 la mise à jour automatique des versions majeures du cœur WP. Ces mises à jour seront activables ou désactivables manuellement dans l&#8217;interface d&#8217;administration. L’API REST de WordPress proposera également l&#8217;authentification externe à l&#8217;aide de la nouvelle fonctionnalité de mots de passe [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:33008:\"\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/11/wp-5-6-banniere.png\"><img loading=\"lazy\" width=\"1024\" height=\"586\" src=\"https://fr.wordpress.org/files/2020/11/wp-5-6-banniere-1024x586.png\" alt=\"\" class=\"wp-image-1780\" srcset=\"https://fr.wordpress.org/files/2020/11/wp-5-6-banniere-1024x586.png 1024w, https://fr.wordpress.org/files/2020/11/wp-5-6-banniere-300x172.png 300w, https://fr.wordpress.org/files/2020/11/wp-5-6-banniere-768x440.png 768w, https://fr.wordpress.org/files/2020/11/wp-5-6-banniere-1536x879.png 1536w, https://fr.wordpress.org/files/2020/11/wp-5-6-banniere.png 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<div class=\"wp-block-group has-background\" style=\"background-color:#d0e3db\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\">\n<p></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<p class=\"has-medium-font-size\"><strong>La sortie de&nbsp;WordPress 5.6&nbsp;est prévue le 8 décembre 2020 !&nbsp;<img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f384.png\" alt=\"🎄\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></strong></p>\n\n\n\n<p>L&rsquo;équipe de direction de cette nouvelle version majeure de WordPress est <em>intégralement</em> constituée de femmes ou de personnes non-binaires. L&rsquo;objectif est de valoriser la place des femmes dans les postes de direction au sein d&rsquo;un écosystème open-source (et <em>IT</em> d&rsquo;une manière générale) bien souvent encore très masculin.</p>\n\n\n\n<p>À l&rsquo;orée des 39&nbsp;% de parts de marché sur les systèmes de gestion de contenus web dans le monde, le logiciel libre et open-source WordPress entend ainsi contribuer à sa manière à réduire les inégalités qui pèsent sur le monde de la <em>tech</em>, notamment sur les postes de direction. WordPress poursuit par ailleurs sa politique de promotion de la diversité dans son ensemble, entreprise depuis plusieurs années.</p>\n\n\n\n<p class=\"has-text-align-center has-medium-font-size\"><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-200d-1f4bb.png\" alt=\"👩‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-1f3fb-200d-1f4bb.png\" alt=\"👩🏻‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-1f3fc-200d-1f4bb.png\" alt=\"👩🏼‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-1f3fd-200d-1f4bb.png\" alt=\"👩🏽‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-1f3fe-200d-1f4bb.png\" alt=\"👩🏾‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f469-1f3ff-200d-1f4bb.png\" alt=\"👩🏿‍💻\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:2%\"></div>\n</div>\n</div></div>\n\n\n\n<p>En tant qu&rsquo;utilisateurs et utilisatrices de WordPress, vous allez voir arriver dans WordPress 5.6 la mise à jour automatique des versions majeures du cœur WP. Ces mises à jour seront activables ou désactivables manuellement dans l&rsquo;interface d&rsquo;administration. L’API REST de WordPress proposera également l&rsquo;authentification externe à l&rsquo;aide de la nouvelle fonctionnalité de mots de passe d&rsquo;applications, la prise en charge de PHP 8, les dernières fonctionnalités développées dans l&rsquo;éditeur de blocs, et un nouveau thème par défaut qui proposera nativement une conformité aux Règles d&rsquo;accessibilité pour les contenus web (WCAG) 2.1 niveau AAA.</p>\n\n\n\n<p>En tant que développeur ou développeuse, vous trouverez dans WP 5.6 plus de&nbsp;<a href=\"https://core.trac.wordpress.org/query?type=enhancement&amp;type=feature+request&amp;milestone=5.6&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">85 améliorations et nouvelles fonctionnalités and feature requests</a> et plus de&nbsp;<a href=\"https://core.trac.wordpress.org/query?type=defect+(bug)&amp;milestone=5.6&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">200 corrections de bugs</a>.</p>\n\n\n\n<p>Bien entendu, tout cela induit des changements de code dans le cœur du CMS, ce qui pourrait vous demander d’effectuer des modifications dans le code de votre site, de vos thèmes ou de vos extensions.</p>\n\n\n\n<p>Dans cet article, nous nous concentrerons justement sur les changements techniques majeurs de cette nouvelle version. Les articles liés sont tous en anglais, ce guide ayant pour objet de donner une synthèse en français.</p>\n\n\n\n<span id=\"more-1766\"></span>\n\n\n\n<h2>Mots de passe d’applications</h2>\n\n\n\n<p>Sur les <a href=\"https://core.trac.wordpress.org/query?component=Login+and+Registration&amp;milestone=5.6&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">8 mises à jour du composant <em>Login and Registration</em></a>, il est important de noter plusieurs changements d&rsquo;ampleur sur l&rsquo;API WordPress détaillés dans le guide d’implémentation de l&rsquo;API Application Passwords. Vous pouvez désormais réaliser des requêtes authentifiées sur diverses API WordPress avec cette nouvelle fonctionnalité.</p>\n\n\n\n<p>Le guide d&rsquo;implémentation comprend des détails sur le format des mots de passe d&rsquo;application, le catalogue de données complet de la fonctionnalité, des explications sur la manière de générer des identifiants manuellement ou avec du code, et des détails sur la façon d’utiliser ces identifiants avec l&rsquo;API REST ou l’API XML-RPC. De plus, des indications y sont données concernant les développements à venir de l&rsquo;API REST.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"9SpdbpppZQ\"><a href=\"https://make.wordpress.org/core/2020/11/05/application-passwords-integration-guide/\">Application Passwords: Integration Guide</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Application Passwords: Integration Guide&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/05/application-passwords-integration-guide/embed/#?secret=9SpdbpppZQ\" data-secret=\"9SpdbpppZQ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Mises à jour automatiques</h2>\n\n\n\n<p>L’équipe <em>Core Auto-updates</em> de WordPress a travaillé sur une nouvelle interface permettant aux administrateurs et administratrices de sites d’activer les mises à jour automatiques pour toutes les nouvelles versions de WordPress, y compris les versions majeures. Les mises à jour automatiques pour les versions majeures seront désactivées par défaut pour les installations existantes et activées sur les nouvelles installations. Le réglage de la fonctionnalité peut se faire manuellement sur Tableau de bord&nbsp;&gt;&nbsp;Mises à jour ou peut être forcé via un filtre ou une constante.</p>\n\n\n\n<p>Lisez cette note de développement pour en savoir davantage sur la nouvelle interface, sur son fonctionnement, sur les constantes et filtres permettant de forcer ces réglages et sur les possibilités d&rsquo;extension de cette fonctionnalité.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Ao0kHgxiJU\"><a href=\"https://make.wordpress.org/core/2020/11/24/core-major-versions-auto-updates-ui-changes-in-wordpress-5-6-correction/\">Core major versions auto-updates UI changes in WordPress 5.6 – Correction</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Core major versions auto-updates UI changes in WordPress 5.6 – Correction&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/24/core-major-versions-auto-updates-ui-changes-in-wordpress-5-6-correction/embed/#?secret=Ao0kHgxiJU\" data-secret=\"Ao0kHgxiJU\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Éditeur / Gutenberg</h3>\n\n\n\n<p>Le développement de l’éditeur a continué son évolution rapide depuis la version 5.0 de WordPress. Aujourd’hui, la version 9.2 de Gutenberg a été intégrée dans WordPress 5.6, ce qui fait sept versions de Gutenberg de différence avec la version qui avait été intégrée dans WordPress 5.5 en août dernier&nbsp;! WordPress 5.5 comprend donc les versions&nbsp;<a href=\"https://make.wordpress.org/core/2020/07/22/whats-new-in-gutenberg-july-22/\">8.6</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/08/05/whats-new-in-gutenberg-august-5/\">8.7</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/08/19/whats-new-in-gutenberg-august-19/\">8.8</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/09/03/whats-new-in-gutenberg-2-september/\">8.9</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/09/16/whats-new-in-gutenberg-16-september/\">9.0</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/10/01/whats-new-in-gutenberg-30-september/\">9.1</a>, and&nbsp;<a href=\"https://make.wordpress.org/core/2020/10/21/whats-new-in-gutenberg-21-october/\">9.2</a>, mais aussi des correctifs et des améliorations de performance ayant été faits sur les versions&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/04/whats-new-in-gutenberg-4-november/\">9.3</a>&nbsp;and&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/19/whats-new-in-gutenberg-18-november-2/\">9.4</a> de Gutenberg.</p>\n\n\n\n<p>L’annonce de sortie de&nbsp;<a href=\"https://wordpress.org/news/2020/07/wordpress-5-5-beta-1/\">WordPress 5.5 Beta 1 (en anglais)</a>&nbsp;met en évidence la plupart des nouvelles fonctionnalités et améliorations de ces différentes versions de Gutenberg. Notons particulièrement l&rsquo;utilisation de la vidéo dans les blocs Bannière, des améliorations sur les compositions de blocs, le décompte des caractères dans le panneau d&rsquo;informations, l&rsquo;amélioration de la navigation au clavier et une interface améliorée pour la fonctionnalité de glisser-déposer.</p>\n\n\n\n<p>Ci-dessous, vous trouverez des détails sur la nouvelle version de l’API Block qui permet désormais aux blocs de définir leur propre élément parent, et une nouvelle API&nbsp;<code>createBlocksFromInnerBlocksTemplate</code>&nbsp;pour créer des blocs à partir du modèle&nbsp;<code>InnerBlocks</code>. Vous verrez également le support de nouveaux blocs et de nouvelles possibilités pour les blocs dynamiques. Des améliorations d&rsquo;accessibilité et d&rsquo;utilisabilité on en outre été faites dans l&rsquo;éditeur, et les blocs réutilisables ont été extraits du composant <code>@wordpress/editor</code>&nbsp;vers le composant&nbsp;<code>@wordpress/reusable-blocks</code>&nbsp;afin de rendre disponibles les blocs réutilisables dans d&rsquo;autres éditeurs. Des changements ont également été faits sur les composants&nbsp;<code>Toolbar</code>.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"sMrKOQHkcC\"><a href=\"https://make.wordpress.org/core/2020/11/18/block-api-version-2/\">Block API version 2</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block API version 2&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/block-api-version-2/embed/#?secret=sMrKOQHkcC\" data-secret=\"sMrKOQHkcC\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"CszCYhJyZ6\"><a href=\"https://make.wordpress.org/core/2020/11/18/new-createblocksfrominnerblockstemplate-block-api/\">New createBlocksFromInnerBlocksTemplate Block API</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New createBlocksFromInnerBlocksTemplate Block API&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/new-createblocksfrominnerblockstemplate-block-api/embed/#?secret=CszCYhJyZ6\" data-secret=\"CszCYhJyZ6\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"gst1jxct70\"><a href=\"https://make.wordpress.org/core/2020/11/18/block-supports-in-wordpress-5-6/\">Block Supports In WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block Supports In WordPress 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/block-supports-in-wordpress-5-6/embed/#?secret=gst1jxct70\" data-secret=\"gst1jxct70\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"uuBaNhmzJs\"><a href=\"https://make.wordpress.org/core/2020/11/18/editor-styling-changes-in-wordpress-5-6/\">Editor styling changes in WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Editor styling changes in WordPress 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/editor-styling-changes-in-wordpress-5-6/embed/#?secret=uuBaNhmzJs\" data-secret=\"uuBaNhmzJs\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"iqTosbm2ke\"><a href=\"https://make.wordpress.org/core/2020/11/18/reusable-blocks-extracted-into-a-separate-package/\">Reusable Blocks extracted into a separate package</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Reusable Blocks extracted into a separate package&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/reusable-blocks-extracted-into-a-separate-package/embed/#?secret=iqTosbm2ke\" data-secret=\"iqTosbm2ke\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"3elHbDK13d\"><a href=\"https://make.wordpress.org/core/2020/11/18/changes-to-toolbar-components-in-wordpress-5-6/\">Changes to Toolbar components in WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Changes to Toolbar components in WordPress 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/18/changes-to-toolbar-components-in-wordpress-5-6/embed/#?secret=3elHbDK13d\" data-secret=\"3elHbDK13d\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Poursuite de la migration de la version de jQuery</h3>\n\n\n\n<p>WordPress 5.6 comprend la partie 2 du plan en 3 étapes pour <a href=\"https://make.wordpress.org/core/2020/06/29/updating-jquery-version-shipped-with-wordpress/\">mettre à jour la version de jQuery comprise dans le cœur WordPress</a>. La deuxième étape de ce plan est la mise à jour de jQuery vers la version 3.5.1 et de jQuery Migrate vers la version 3.3.1. La note de développement ci-dessous inclut des détails sur cette partie 2 de ce plan, qui est prévu pour être terminé dans WordPress 5.7 au premier trimestre 2021.</p>\n\n\n\n<p>Comme WordPress 5.6 comprend une mise à jour majeure de la bibliothèque jQuery, il a été proposé aux développeurs et développeuses d&rsquo;extensions et de thèmes (via des notes de développement et même par e-mail) de tester leurs produits et services autant que possible, et de les mettre à jour si besoin pour éviter toute casse sur les sites les utilisant. </p>\n\n\n\n<p>En tant que propriétaire de site, vous pouvez lancer&nbsp;<a href=\"https://fr.wordpress.org/plugins/wp-jquery-update-test/\">l’extension de test de mise à jour</a>&nbsp;pour vérifier par avance d’éventuelles erreurs sur vos sites.</p>\n\n\n\n<p>Si vous rencontrez des problèmes d’affichage sur votre site (par exemple un diaporama qui ne fonctionne plus, un bouton qui n’a aucun effet), installez&nbsp;<a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">l’extension jQuery Migrate</a>.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"C2IHWXIwAX\"><a href=\"https://make.wordpress.org/core/2020/11/05/updating-core-jquery-to-version-3-part-2/\">Updating core jQuery to version 3 &#8211; part 2</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Updating core jQuery to version 3 &#8211; part 2&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/05/updating-core-jquery-to-version-3-part-2/embed/#?secret=C2IHWXIwAX\" data-secret=\"C2IHWXIwAX\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Prise en charge de PHP&nbsp;8</h3>\n\n\n\n<p>La nouvelle version majeure de PHP, la version 8.0.0 est sortie et le projet WordPress a une longue histoire concernant le fait de présenter la meilleure compatibilité possible avec les nouvelles versions de PHP, le plus tôt possible. Comme PHP 8 est une version majeure, cette version de PHP peut casser des choses qui fonctionnaient auparavant. Même si tous les soucis liés au cœur WordPress sont corrigés, il y a des chances que vos extensions et vos thèmes ne soient pas compatibles. Il est donc nécessaire de vérifier la compatibilité PHP&nbsp;8 de l&rsquo;ensemble de vos thèmes et extensions avant de mettre à jour la version de PHP sur votre serveur. Vous en saurez davantage sur cette note de développement&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"zPzosvlS2S\"><a href=\"https://make.wordpress.org/core/2020/11/23/wordpress-and-php-8-0/\">WordPress and PHP 8.0</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;WordPress and PHP 8.0&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/23/wordpress-and-php-8-0/embed/#?secret=zPzosvlS2S\" data-secret=\"zPzosvlS2S\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>API REST</h3>\n\n\n\n<p>Sur les&nbsp;<a href=\"https://core.trac.wordpress.org/query?component=REST+API&amp;milestone=5.6&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">28 modifications sur l’API REST</a>, vous porterez une attention particulière au nouveau cadre de développement permettant d&rsquo;envoyer une série d&rsquo;appels à l&rsquo;API en une seule requête sur le serveur, ainsi qu&rsquo;à la nouvelle action <code>wp_after_insert_post</code>&nbsp;qui permet aux développeurs et développeuses de thèmes et d&rsquo;extensions de faire tourner du code sur-mesure après qu’une publication, un terme de taxonomie ou une méta-donnée a été mis à jour.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"wLdnVAraKs\"><a href=\"https://make.wordpress.org/core/2020/11/20/rest-api-batch-framework-in-wordpress-5-6/\">REST API Batch Framework in WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;REST API Batch Framework in WordPress 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/20/rest-api-batch-framework-in-wordpress-5-6/embed/#?secret=wLdnVAraKs\" data-secret=\"wLdnVAraKs\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"jJVGFvazau\"><a href=\"https://make.wordpress.org/core/2020/11/20/new-action-wp_after_insert_post-in-wordpress-5-6/\">New action wp_after_insert_post in WordPress 5.6.</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New action wp_after_insert_post in WordPress 5.6.&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/20/new-action-wp_after_insert_post-in-wordpress-5-6/embed/#?secret=jJVGFvazau\" data-secret=\"jJVGFvazau\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Santé du site</h3>\n\n\n\n<p>Il y a&nbsp;<a href=\"https://core.trac.wordpress.org/query?component=Site+Health&amp;milestone=5.6&amp;group=type&amp;max=500&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=id\">11 mises à jour du composant Santé du site</a>&nbsp;sur WordPress&nbsp;5.6. Notez particulièrement les améliorations sur la façon dont ce composant gère et valide les vérifications de santé du site. Tous ces changements sont listés dans la note de développement ci-dessous&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"JuTXAmaPm9\"><a href=\"https://make.wordpress.org/core/2020/11/15/site-health-check-changes-in-5-6/\">Site Health Check changes in 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Site Health Check changes in 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/15/site-health-check-changes-in-5-6/embed/#?secret=JuTXAmaPm9\" data-secret=\"JuTXAmaPm9\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Thèmes</h3>\n\n\n\n<p>Cette nouvelle version de WordPress poursuit la tradition de sortir un nouveau thème par défaut. Cette année, Twenty Twenty-One innove avec un thème présentant la meilleure conformité possible avec les Règles d&rsquo;accessibilité sur les contenus web (WCAG) version 2.1 au niveau&nbsp;<a href=\"https://www.w3.org/TR/UNDERSTANDING-WCAG20/conformance.html#uc-levels-head\">AAA</a>. Pour ce nouveau thème, notre équipe d&rsquo;experts en accessibilité a été inclue dans les décisions de design dès le début du projet, ce qui permet aujourd&rsquo;hui de présenter la meilleure conformité possible pour Twenty Twenty-One.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"dhrUOjijIp\"><a href=\"https://make.wordpress.org/core/2020/09/23/introducing-twenty-twenty-one/\">Introducing Twenty Twenty-One</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing Twenty Twenty-One&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/09/23/introducing-twenty-twenty-one/embed/#?secret=dhrUOjijIp\" data-secret=\"dhrUOjijIp\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Vous pouvez également consulter cet article en français&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-francais wp-block-embed-francais\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"kTx23780u5\"><a href=\"https://fr.wordpress.org/2020/09/25/twenty-twenty-one-le-theme-natif-de-wordpress-5-6/\">Twenty Twenty One, le thème natif de WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« Twenty Twenty One, le thème natif de WordPress 5.6 » &#8212; Français\" src=\"https://fr.wordpress.org/2020/09/25/twenty-twenty-one-le-theme-natif-de-wordpress-5-6/embed/#?secret=kTx23780u5\" data-secret=\"kTx23780u5\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h3>Autres mises à jour techniques</h3>\n\n\n\n<p>Mais ce n&rsquo;est pas tout&nbsp;! Vous pouvez également lire la note de développement ci-dessous pour en savoir davantage sur les changements à venir sur les composants suivants&nbsp;: Administration, Outils de <em>build</em>/test, Base de données, Médias, Multisite, Pings/trackbacks, Édition rapide et édition par lots, Santé du site, Taxonomies, Comptes, Mise à niveau et installation, Widgets, Gestion des erreurs PHP et JSON.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"cjbR38ka4E\"><a href=\"https://make.wordpress.org/core/2020/11/20/miscellaneous-developer-focused-changes-in-wordpress-5-6/\">Miscellaneous developer focused changes in WordPress 5.6</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Miscellaneous developer focused changes in WordPress 5.6&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2020/11/20/miscellaneous-developer-focused-changes-in-wordpress-5-6/embed/#?secret=cjbR38ka4E\" data-secret=\"cjbR38ka4E\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Dans WordPress 5.6, plus de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">197 bugs</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">85 améliorations et nouvelles fonctionnalités</a> et&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=task+(blessed)&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">39 tâches diverses</a>&nbsp;on été&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.6&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">marqués comme étant clôturés par WordPress 5.6</a>.</p>\n\n\n\n<p>Nous souhaitons également mettre en évidence quelques changements qui n’ont pas fait l’objet de notes de développement spécifiques (cliquez sur le numéro de ticket pour accéder au ticket en question sur Trac). Dans la liste ci-dessous, la description du ticket est conservée en anglais pour une meilleure traçabilité&nbsp;:</p>\n\n\n\n<ul><li>Bundled Theme: Added block patterns for Twenty Twenty (<a href=\"https://core.trac.wordpress.org/ticket/51098\">#51098</a>) and Twenty Nineteen (<a href=\"https://core.trac.wordpress.org/ticket/51099\">#51099</a>) themes.</li><li>Bundled Theme: Added theme support for navigation-widgets (see&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51445\">#51445</a>).</li><li>Build/Test Tools: Update&nbsp;<code>akismet</code>&nbsp;from&nbsp;<code>4.1.6</code>&nbsp;to&nbsp;<code>4.1.7</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51610\">#51610</a>).</li><li>Build/Test Tools: Composer 2.0 Support (<a href=\"https://core.trac.wordpress.org/ticket/51624\">#51624</a>).</li><li>Emoji: Update&nbsp;<code>twemoji</code>&nbsp;from&nbsp;<code>13.0.0</code>&nbsp;to&nbsp;<code>13.0.1</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51356\">#51356</a>).</li><li>External Libraries: Update&nbsp;<code>lodash</code>&nbsp;from&nbsp;<code>4.17.15</code>&nbsp;to&nbsp;<code>4.17.19</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51505\">#51505</a>).</li><li>External Libraries: Update&nbsp;<code>react</code>&nbsp;and&nbsp;<code>react-dom</code>&nbsp;from&nbsp;<code>16.9.0</code>&nbsp;to&nbsp;<code>16.13.1</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51505\">#51505</a>).</li><li>Media: Added indicator to image details for images attached to a site option (<a href=\"https://core.trac.wordpress.org/ticket/42063\">#42063</a>).</li><li>REST API: Fixed incorrect slashes in the&nbsp;URL&nbsp;if the parent is empty for REST API (see&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/44745\">#44745</a>).</li><li>Site Health: Added better handling of unexpected values in Site Health (<a href=\"https://core.trac.wordpress.org/ticket/50145\">#50145</a>).</li><li>Site Health: Added a test to Site Health to verify that the&nbsp;<code>Authorization</code>&nbsp;header&nbsp;is working as expected for Application Passwords (see&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51638\">#51638</a>).</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Pour rappel, la sortie de WordPress 5.6 est prévue le 8 décembre 2020. Vous pouvez d’ores et déjà la tester en version&nbsp;<em>Release Candidate</em>&nbsp;en installant l’extension officielle <em>WordPress Beta Tester</em> puis en allant dans ses réglages et en cochant la case&nbsp;Beta/ version de développement puis en mettant à jour votre installation de façon classique.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-plugin-directory wp-block-embed-plugin-directory\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"SDmAZkDXE3\"><a href=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« WordPress Beta Tester » &#8212; Plugin Directory\" src=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/embed/#?secret=SDmAZkDXE3\" data-secret=\"SDmAZkDXE3\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p><em>Merci à <a href=\'https://profiles.wordpress.org/bastho/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>bastho</a>, <a href=\'https://profiles.wordpress.org/wolforg/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wolforg</a> et <a href=\'https://profiles.wordpress.org/fxbenard/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>fxbenard</a> pour leur relecture de cet article.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://fr.wordpress.org/2020/11/24/les-changements-techniques-a-venir-sur-wordpress-5-6/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Sortie de WordPress 5.5.3 : détails techniques importants\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://fr.wordpress.org/2020/10/31/sortie-de-wordpress-5-5-3-details-techniques-importants/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://fr.wordpress.org/2020/10/31/sortie-de-wordpress-5-5-3-details-techniques-importants/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 31 Oct 2020 09:53:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1731\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"Le 30 octobre 2020, la version 5.5.3 de WordPress est sortie, le jour suivant la sortie de la version 5.5.2. La sortie de deux nouvelles versions en moins de 24 heures d&#8217;écart est loin d’être une situation optimale, et elle n&#8217;est généralement pas voulue par l&#8217;équipe de développement de WordPress. Dans cet article, nous reviendrons [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7276:\"\n<p><strong>Le 30 octobre 2020, la version 5.5.3 de WordPress est sortie, le jour suivant la sortie de la version 5.5.2.</strong></p>\n\n\n\n<p>La sortie de deux nouvelles versions en moins de 24 heures d&rsquo;écart est loin d’être une situation optimale, et elle n&rsquo;est généralement pas voulue par l&rsquo;équipe de développement de WordPress.</p>\n\n\n\n<p>Dans cet article, nous reviendrons sur l&rsquo;incident ayant eu lieu sur WP 5.5.2, qui a entraîné également un autre incident complémentaire&nbsp;: certaines installations ont été mises à jour de façon intempestive vers une version de développement, WP 5.5.3-alpha. L&rsquo;objectif est de donner un retour objectif et transparent aux utilisatrices et utilisateurs de WordPress.</p>\n\n\n\n<h2>Résolution du problème de WP 5.5.2 et des installations via le fichier ZIP fourni sur WordPress.org</h2>\n\n\n\n<p>Un problème avec l’un des correctifs contenus dans WordPress 5.5.2 a entraîné un souci sur le fichier ZIP d&rsquo;installation disponible sur WordPress.org. Cette erreur était présente sur les fichiers d&rsquo;installation des versions 5.5.x, 5.4.x, 5.3.x, 5.2.x et 5.1.x. L&rsquo;installation de WordPress ne pouvait être réalisée via ces fichiers d&rsquo;installation à cause d&rsquo;une erreur de base de données. Ce problème n&rsquo;affectait en revanche «&nbsp;que&nbsp;» les procédures d&rsquo;installation n&rsquo;utilisant pas de fichier <code>wp-config.php</code> et utilisant l&rsquo;assistant d&rsquo;installation dans le navigateur.</p>\n\n\n\n<p>Lors de la publication de la version 5.5.2, le processus de test de l&rsquo;installation retourna un faux positif qui explique la non-détection du problème. Il s&rsquo;agit d&rsquo;un problème difficile à identifier mais notre première action sera déjà de mettre à jour la documentation existante pour que les futures équipes de direction de WordPress puissent tirer profit de cette expérience. Des recherches plus poussées seront nécessaires afin de trouver des solutions plus robustes sur le long terme. Les progrès réalisés sur ce point seront partagés sur des articles sur le <a href=\"https://make.wordpress.org/core\">blog de développement de l’équipe cœur de WordPress (en anglais)</a>.</p>\n\n\n\n<p>Pour corriger le problème, l’équipe de développement de WP a publié WordPress 5.5.3. Cette version fournit un fichier ZIP d&rsquo;installation pour chacune des autres versions de WordPress qui étaient affectées. Ainsi, ce sont 5 versions qui sont sorties le 30 octobre 2020&nbsp;: 5.5.3, 5.4.4, 5.3.6, 5.2.9 et 5.1.8.</p>\n\n\n\n<h2>Résolution du problème de la mise à jour automatique vers la version 5.5.3-alpha</h2>\n\n\n\n<p>Pendant le travail de préparation de WordPress 5.5.3, l’équipe chargée de l&rsquo;infrastructure WordPress.org a essayé de rendre la version 5.5.2 indisponible au téléchargement afin de limiter la portée du problème détaillé ci-dessus, puisqu&rsquo;il ne concernait que les nouvelles installations et pas les installations WordPress existantes. Cette action n&rsquo;était pas prévue dans les procédures de déploiement et de contrôle de mission et a entraîné malencontreusement certaines installations à être mises à jour vers une version de développement «&nbsp;5.5.3-alpha&nbsp;». Cette mise à jour automatique non désirée s&rsquo;est déroulée entre 16h30 et 17h (heure française) et a été stoppée dès que cela a été techniquement possible.</p>\n\n\n\n<p>Cette pseudo-version de développement était en fait strictement similaire à WordPress 5.5.2, excepté son numéro de version. Il n&rsquo;y a donc pas eu de conséquence pour l&rsquo;intégrité des sites concernés. Depuis la sortie de WordPress 5.5.3, l&rsquo;ensemble des sites qui étaient passés sur cette pseudo version 5.5.3-alpha ont été automatiquement mis à jour en version 5.5.3.</p>\n\n\n\n<p>La seule conséquence visible de ce souci a été – pour les sites concernés uniquement&nbsp;– l&rsquo;installation de l&rsquo;intégralité des thèmes natifs et l&rsquo;installation de l&rsquo;extension Akismet. Si vous êtes concerné, vous pouvez procéder à leur désinstallation et à leur suppression. L&rsquo;équipe de développement de WordPress est sincèrement désolée pour la gène occasionnée. Cela étant dit, ces thèmes et cette extension n&rsquo;étant pas actifs, cela n&rsquo;a pas eu de conséquence sur votre site.</p>\n\n\n\n<h2>En guise de conclusion</h2>\n\n\n\n<p>S&rsquo;il y a de nombreux processus améliorables pour pallier à ce type de situation – et nous avons à cœur de les améliorer – le déroulement de cette journée montre également l&rsquo;attachement de l&rsquo;équipe de développement de WordPress, répartie sur la planète entière, à se mobiliser pour trouver des solutions rapides lorsque des problèmes difficilement anticipables surviennent.</p>\n\n\n\n<p>Tout au long de cette fin de journée, l’équipe de développement s&rsquo;est efforcée d&rsquo;analyser la situation, d&rsquo;en tirer des conclusions, d&rsquo;agir puis enfin de communiquer de façon transparente sur ce qui s&rsquo;est passé. Les erreurs ayant donné lieu aux problématiques rencontrées ce vendredi ont été réparées aussitôt. Elles ont donné lieu à l&rsquo;identification d&rsquo;optimisations à réaliser sur les procédures de déploiement de nouvelles versions.</p>\n\n\n\n<p><strong>À aucun moment le moindre site WordPress n&rsquo;a été impacté au niveau fonctionnel</strong> et c&rsquo;est ce que nous souhaitons mettre en avant aujourd&rsquo;hui, car ce fut la préoccupation de l&rsquo;équipe tout au long de la journée.</p>\n\n\n\n<p>Merci à l&rsquo;équipe qui a travaillé pour résoudre cette situation&nbsp;: <a href=\"https://profiles.wordpress.org/whyisjake\"></a><a href=\"https://profiles.wordpress.org/whyisjake\">@whyisjake</a> (release lead 5.5.2), <a href=\"https://profiles.wordpress.org/audrasjb\">@audrasjb</a>, <a href=\"https://profiles.wordpress.org/barry/\">@barry</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald\">@davidbaumwald</a>, <a href=\"https://profiles.wordpress.org/desrosj\">@desrosj</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya\">@hellofromtonya</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">@jeffpaul</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">@johnbillion</a>, <a href=\"https://profiles.wordpress.org/garubi\">@garubi</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee\">@metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">@mukesh27</a>, <a href=\"https://profiles.wordpress.org/otto42/\">@otto42</a>, <a href=\"http://punitsoftac/\">@punitsoftac</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">@sergeybiryukov</a> et <a href=\"https://profiles.wordpress.org/xknown\">@xknown</a>.</p>\n\n\n\n<p>Vous pourrez retrouver des explications complémentaires avec les liens suivants&nbsp;:</p>\n\n\n\n<ul><li><a href=\"https://wordpress.org/news/2020/10/wordpress-5-5-3-maintenance-release/\">Annonce de sortie de WordPress 5.5.3 (en anglais)</a></li><li><a href=\"https://make.wordpress.org/core/2020/10/30/wordpress-5-5-3-release-some-technical-details/\">Détails techniques autour de la sortie de WP 5.5.3 (en anglais)</a></li></ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://fr.wordpress.org/2020/10/31/sortie-de-wordpress-5-5-3-details-techniques-importants/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"Questionnaire annuel 2020 sur votre utilisation de WordPress et résultats de l’enquête 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://fr.wordpress.org/2020/10/28/questionnaire-annuel-2020-sur-votre-utilisation-de-wordpress-et-resultats-de-lenquete-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://fr.wordpress.org/2020/10/28/questionnaire-annuel-2020-sur-votre-utilisation-de-wordpress-et-resultats-de-lenquete-2019/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Oct 2020 09:25:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Questionnaires/sondages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1725\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:444:\"Le questionnaire 2020 Comme chaque année, l’équipe «&#160;Community&#160;» de WordPress lance son questionnaire à destination des utilisatrices et utilisateurs de WordPress afin de mieux les connaître et de comprendre leurs besoins. Comme l&#8217;année dernière, le questionnaire a été traduit en français. Ainsi, l’anglais n’est pas une barrière pour y répondre&#160;🙂 L&#8217;équipe Community de WordPress est [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2118:\"\n<h2>Le questionnaire 2020</h2>\n\n\n\n<p>Comme chaque année, l’équipe «&nbsp;Community&nbsp;» de WordPress lance son questionnaire à destination des utilisatrices et utilisateurs de WordPress afin de mieux les connaître et de comprendre leurs besoins.</p>\n\n\n\n<p>Comme l&rsquo;année dernière, le questionnaire a été traduit en français. Ainsi, l’anglais n’est pas une barrière pour y répondre&nbsp;<img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p class=\"has-small-font-size\">L&rsquo;équipe Community de WordPress est en revanche passée par une traduction automatique (pour des questions de temps) plutôt que par l&rsquo;équipe de traduction, ce qui occasionne quelques étrangetés dans certaines questions. Merci de vous montrer indulgents <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Nous ferons en sorte que la traduction soit manuelle l&rsquo;année prochaine&nbsp;!</p>\n\n\n\n<p>Cela ne vous prendra que quelques minutes, merci d’avance&nbsp;!</p>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-background\" href=\"https://wordpressdotorg.survey.fm/wordpress-2020-survey-french\" style=\"background-color:#0b679c\" target=\"_blank\" rel=\"noreferrer noopener\">Répondre au questionnaire</a></div>\n</div>\n\n\n\n<p>Les résultats du questionnaire seront publiés au premier trimestre 2021. Toutes les données personnelles sont anonymisées : les adresses e-mail et adresses IP sont automatiquement dissociées des données collectées. Pour en savoir plus, vous pouvez consulter notre&nbsp;<a href=\"https://fr.wordpress.org/about/privacy/\">politique de confidentialité</a>.</p>\n\n\n\n<h2>Les résultats de l&rsquo;enquête 2019</h2>\n\n\n\n<p>Vous pouvez <a href=\"https://docs.google.com/presentation/d/1FI7eEvSB5SHTSILIBpwOmH9rBffgD6mFnnqSkrEScYo/edit?usp=sharing\">consulter les résultats de l&rsquo;enquête 2019 en suivant ce lien (en anglais)</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"https://fr.wordpress.org/2020/10/28/questionnaire-annuel-2020-sur-votre-utilisation-de-wordpress-et-resultats-de-lenquete-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:79:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"Participez au WordPress Translation Day FR en visioconférence le 03 octobre 2020 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://fr.wordpress.org/2020/10/02/participez-au-wordpress-translation-day-fr-en-visioconference-le-03-octobre-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"https://fr.wordpress.org/2020/10/02/participez-au-wordpress-translation-day-fr-en-visioconference-le-03-octobre-2020/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Oct 2020 16:53:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Évènement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Contribuer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1711\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:347:\"Toute la semaine aux quatre coins du globe, du Japon au Portugal en passant par de nombreux pays comme la Russie, l’Indonésie et bien d’autres les communautés de polyglottes du monde se sont réunies pour fêter la semaine de la traduction de WordPress. C’est maintenant à la communauté Francophone de se joindre à la fête… [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jenny Dupuy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3326:\"\n<p>Toute la semaine aux quatre coins du globe, du Japon au Portugal en passant par de nombreux pays comme la Russie, l’Indonésie et bien d’autres les communautés de polyglottes du monde se sont réunies pour fêter la semaine de la traduction de WordPress. </p>\n\n\n\n<p>C’est maintenant à la communauté Francophone de se joindre à la fête… </p>\n\n\n\n<p>Le <strong>samedi 3 octobre 2020</strong>. Nous vous attendons polyglottes pour participer au mini-évènement de la <strong>Journée de la traduction de WordPress en France, </strong>sur Zoom et le Slack FR<strong>.</strong></p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://wpfr.net/files/2020/09/banniere.jpg\" alt=\"\" class=\"wp-image-2354256\" /></figure></div>\n\n\n\n<h2 id=\"comment-cela-va-t-il-se-derouler\">Comment cela va-t-il se passer&nbsp;?</h2>\n\n\n\n<p>C’est très simple&nbsp;: rendez-vous à partir de 13 heures sur la conférence Zoom. Si vous ne pouvez pas vous libérer dès 13 heures, n’hésitez pas à nous rejoindre en cours de route&nbsp;!</p>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-background\" href=\"https://us02web.zoom.us/webinar/register/WN_LOV3-RH7S32zT7deLcrEwQ\" style=\"border-radius:7px;background-color:#1d7ab0\">S’inscrire à la visioconférence Zoom</a></div>\n</div>\n\n\n\n<p>Durant cette après-midi de traduction 3 GTE (<em>General Translation Editors</em>) seront présents pour vous aider : Jenny Dupuy, FX Bénard et JB Audras.</p>\n\n\n\n<p>L’objectif est d’accueillir, orienter et accompagner un maximum de nouvelles personnes pour les initier à la traduction du cœur de WordPress, mais aussi des thèmes, des extensions et de la documentation relative au fonctionnement de ce CMS.</p>\n\n\n\n<p>Tout au long de l’après-midi les GTE accueilleront les personnes désireuses de participer et organiseront des mini-formations pour aider les personnes débutantes.</p>\n\n\n\n<p>Les personnes plus expérimentées pourront continuer ou commencer de traduire.</p>\n\n\n\n<h2 id=\"pourquoi-participer-et-que-traduire\">Pourquoi participer et que traduire&nbsp;?</h2>\n\n\n\n<p>La traduction est une manière de <strong>contribuer au projet Open Source WordPress</strong>. Il est plus agréable et plus compréhensible d’utiliser WordPress, une extension ou un thème dans notre langue maternelle. C’est aussi plus inclusif, car il existe des personnes ne parlant pas anglais <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>Concernant ce que nous pouvons traduire, nous conseillons, en règle générale, de traduire des extensions, thèmes que nous avons toutes et tous l’habitude d’utiliser.</p>\n\n\n\n<div class=\"wp-block-buttons aligncenter\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-background\" href=\"https://us02web.zoom.us/webinar/register/WN_LOV3-RH7S32zT7deLcrEwQ\" style=\"border-radius:7px;background-color:#1d7ab0\">S’inscrire à la visioconférence Zoom</a></div>\n</div>\n\n\n\n<p>Nous vous attendons nombreuses et nombreux ! Alors rendez-vous sur le Slack de la communauté WordPress-fr : <a href=\"https://wpfr.net/slack/\">https://wpfr.net/slack/</a> puis dans le canal <strong>#wptranslationday</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"https://fr.wordpress.org/2020/10/02/participez-au-wordpress-translation-day-fr-en-visioconference-le-03-octobre-2020/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://fr.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 02 May 2021 11:36:53 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 29 Apr 2021 13:04:02 GMT\";s:4:\"link\";s:61:\"<https://fr.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20210412135253\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1150, '_transient_timeout_feed_mod_0d2db5fea5a8633b56992c916819b198', '1619998614', 'no'),
(1151, '_transient_feed_mod_0d2db5fea5a8633b56992c916819b198', '1619955414', 'no'),
(1152, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1619998615', 'no'),
(1153, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\'>Le 30 avril 2021, rejoignez-nous pour un nouveau WordPress Translation Day FR !</a></li><li><a class=\'rsswidget\' href=\'https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/\'>WordPress 5.7 « Esperanza »</a></li></ul></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> A feed could not be found at `https://feeds.feedburner.com/wpfr`; the status code is `200` and content-type is `text/html; charset=UTF-8`</p></div>', 'no'),
(1156, 'theme_switch_menu_locations', 'a:1:{s:7:\"primary\";i:19;}', 'yes'),
(1168, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:19;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619974381;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(1192, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1619983208', 'no'),
(1193, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4863;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4762;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2716;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2591;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1997;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1855;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1831;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1510;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1505;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1497;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1488;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1480;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1467;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1255;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1242;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1227;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1152;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1124;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1051;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:946;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:926;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:904;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:886;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:876;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:821;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:815;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:806;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:803;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:780;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:761;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:742;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:727;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:724;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:712;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:711;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:677;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:670;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:663;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:661;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:659;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:651;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:646;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:625;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:599;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:597;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:588;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:588;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:576;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:571;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:564;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:561;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:557;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:556;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:544;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:543;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:542;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:539;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:517;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:510;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:501;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:499;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:499;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:491;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:490;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:488;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:486;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:473;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:463;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:458;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:454;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:446;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:445;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:444;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:443;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:441;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:435;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:419;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:409;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:407;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:406;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:406;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:390;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:390;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:388;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:380;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:379;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:372;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:371;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:364;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:363;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:355;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:354;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:347;}}', 'no'),
(1195, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619972468;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:29:\"custom-fonts/custom-fonts.php\";s:5:\"1.3.2\";s:51:\"featured-image-from-url/featured-image-from-url.php\";s:5:\"3.5.8\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"custom-fonts/custom-fonts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/custom-fonts\";s:4:\"slug\";s:12:\"custom-fonts\";s:6:\"plugin\";s:29:\"custom-fonts/custom-fonts.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/custom-fonts/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/custom-fonts.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/custom-fonts/assets/icon-256x256.png?rev=1816364\";s:2:\"1x\";s:65:\"https://ps.w.org/custom-fonts/assets/icon-128x128.png?rev=1816364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/custom-fonts/assets/banner-1544x500.png?rev=1816364\";s:2:\"1x\";s:67:\"https://ps.w.org/custom-fonts/assets/banner-772x250.png?rev=1816364\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"featured-image-from-url/featured-image-from-url.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/featured-image-from-url\";s:4:\"slug\";s:23:\"featured-image-from-url\";s:6:\"plugin\";s:51:\"featured-image-from-url/featured-image-from-url.php\";s:11:\"new_version\";s:5:\"3.5.8\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/featured-image-from-url/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/featured-image-from-url.3.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/featured-image-from-url/assets/icon-256x256.png?rev=2384757\";s:2:\"1x\";s:76:\"https://ps.w.org/featured-image-from-url/assets/icon-128x128.png?rev=2384757\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/featured-image-from-url/assets/banner-1544x500.png?rev=1694895\";s:2:\"1x\";s:78:\"https://ps.w.org/featured-image-from-url/assets/banner-772x250.png?rev=1694895\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1196, 'fifu_social', 'toggleon', 'no'),
(1197, 'fifu_social_image_only', 'toggleoff', 'no'),
(1198, 'fifu_lazy', 'toggleoff', 'yes'),
(1199, 'fifu_reset', 'toggleoff', 'no'),
(1200, 'fifu_content', 'toggleoff', 'yes'),
(1201, 'fifu_content_page', 'toggleoff', 'yes'),
(1202, 'fifu_content_cpt', 'toggleoff', 'yes'),
(1203, 'fifu_enable_default_url', 'toggleoff', 'yes'),
(1204, 'fifu_spinner_db', '1000', 'no'),
(1205, 'fifu_spinner_nth', '1', 'yes'),
(1206, 'fifu_fake', 'toggleon', 'no'),
(1207, 'fifu_default_url', '', 'yes'),
(1208, 'fifu_wc_lbox', 'toggleon', 'yes'),
(1209, 'fifu_wc_zoom', 'toggleon', 'yes'),
(1210, 'fifu_hide_page', 'toggleoff', 'yes'),
(1211, 'fifu_hide_post', 'toggleoff', 'yes'),
(1212, 'fifu_hide_cpt', 'toggleoff', 'yes'),
(1213, 'fifu_get_first', 'toggleoff', 'yes'),
(1214, 'fifu_pop_first', 'toggleoff', 'yes'),
(1215, 'fifu_ovw_first', 'toggleoff', 'yes'),
(1216, 'fifu_query_strings', 'toggleoff', 'yes'),
(1217, 'fifu_confirm_delete_all', 'toggleoff', 'no'),
(1218, 'fifu_run_delete_all', 'toggleoff', 'no'),
(1219, 'fifu_column_height', '64', 'no'),
(1220, 'fifu_decode', 'toggleoff', 'yes'),
(1221, 'fifu_grid_category', 'toggleoff', 'yes'),
(1222, 'fifu_auto_alt', 'toggleon', 'yes'),
(1223, 'fifu_dynamic_alt', 'toggleoff', 'yes'),
(1224, 'fifu_data_clean', 'toggleoff', 'no'),
(1244, 'bsf_analytics_optin', 'no', 'no'),
(1265, 'category_children', 'a:0:{}', 'yes'),
(1270, '_site_transient_timeout_available_translations', '1620001173', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1271, '_site_transient_available_translations', 'a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-23 11:41:38\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-21 20:16:59\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.16\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.16/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-30 11:27:51\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.17/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-07-01 06:36:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.5/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.5/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-25 07:27:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:10:23\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-19 06:51:04\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 10:32:41\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-20 06:42:13\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 19:15:18\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-14 20:06:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.7.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:41:08\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:43:41\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-14 20:06:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 13:33:04\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-27 18:07:44\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 07:31:22\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:40\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 07:22:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-18 09:35:35\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-03 15:32:45\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-11 17:28:23\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 02:05:15\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 15:04:44\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-24 16:46:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.6.3\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.3/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.5/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.10\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.10/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 13:07:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 02:17:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 02:05:34\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-18 11:35:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-01 11:39:36\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-02 13:52:39\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-27 17:53:38\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-28 18:07:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-30 13:29:35\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.16\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.16/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 18:17:43\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.17/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.24\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.24/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 12:47:15\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-27 09:02:30\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 13:34:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-23 17:06:16\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-24 02:11:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.17/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-25 18:51:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-20 23:32:04\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.17/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-29 10:00:46\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-11 22:04:53\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.17/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.10\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.10/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.17/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-21 08:25:29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-29 01:20:15\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 19:35:51\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.17/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.17/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.29\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.29/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 16:50:37\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.10\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.10/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-25 19:59:32\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 06:38:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 05:37:11\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.16\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.16/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-26 06:40:10\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.25\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.25/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-22 11:19:45\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 08:18:42\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-26 17:10:08\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-12-08 14:21:04\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-29 18:45:05\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:46:07\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.5/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:31:32\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-23 11:54:14\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.1.9\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.9/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 09:02:54\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-14 22:03:48\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-29 13:05:40\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.3.7\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.7/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.29\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.29/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.5.4\";s:7:\"updated\";s:19:\"2021-04-22 18:43:36\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.16\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.16/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 03:34:29\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.17\";s:7:\"updated\";s:19:\"2018-05-16 07:36:13\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.17/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-24 18:04:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.5\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 06:03:58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-07 07:43:24\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-30 04:47:06\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 05:47:07\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1275, '_site_transient_timeout_theme_roots', '1619993647', 'no'),
(1276, '_site_transient_theme_roots', 'a:3:{s:6:\"rscard\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_wp_attached_file', '2021/04/album-1.jpg'),
(6, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2021/04/album-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 10, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(8, 11, '_regular_price', '15'),
(9, 11, 'total_sales', '2'),
(10, 11, '_tax_status', 'taxable'),
(11, 11, '_tax_class', ''),
(12, 11, '_manage_stock', 'no'),
(13, 11, '_backorders', 'no'),
(14, 11, '_sold_individually', 'no'),
(15, 11, '_virtual', 'yes'),
(16, 11, '_downloadable', 'yes'),
(17, 11, '_download_limit', '1'),
(18, 11, '_download_expiry', '1'),
(19, 11, '_thumbnail_id', '10'),
(21, 11, '_stock_status', 'instock'),
(22, 11, '_wc_average_rating', '0'),
(23, 11, '_wc_review_count', '0'),
(24, 11, '_downloadable_files', 'a:2:{s:36:\"0b1829b4-a945-4262-8a2e-c25d74a5f7e7\";a:3:{s:2:\"id\";s:36:\"0b1829b4-a945-4262-8a2e-c25d74a5f7e7\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"20186c03-2726-4dc7-a7e1-31813fdc5057\";a:3:{s:2:\"id\";s:36:\"20186c03-2726-4dc7-a7e1-31813fdc5057\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(25, 11, '_product_version', '5.1.0'),
(26, 11, '_price', '15'),
(27, 11, '_wpcom_is_markdown', '1'),
(28, 11, '_edit_lock', '1618238266:1'),
(29, 11, '_edit_last', '1'),
(33, 14, '_wp_attached_file', '2021/04/other-small.jpg'),
(34, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2021/04/other-small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 14, '_source_url', 'http://localhost/site/WORDPRESS/wordpress/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(37, 17, '_order_key', 'wc_order_uw1CbEKpeqrfd'),
(38, 17, '_customer_user', '1'),
(39, 17, '_payment_method', 'cod'),
(40, 17, '_payment_method_title', 'Paiement à la livraison'),
(41, 17, '_customer_ip_address', '::1'),
(42, 17, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36'),
(43, 17, '_created_via', 'checkout'),
(44, 17, '_cart_hash', '7d585246ffa941c378c9d78b2a60d922'),
(45, 17, '_billing_first_name', 'test'),
(46, 17, '_billing_last_name', 'test'),
(47, 17, '_billing_company', 'KALAPA SA'),
(48, 17, '_billing_address_1', 'test'),
(49, 17, '_billing_city', 'est'),
(50, 17, '_billing_postcode', '1207'),
(51, 17, '_billing_country', 'LK'),
(52, 17, '_billing_email', 'mipam.guillot@gmail.com'),
(53, 17, '_billing_phone', '0791059375'),
(54, 17, '_order_currency', 'CHF'),
(55, 17, '_cart_discount', '0'),
(56, 17, '_cart_discount_tax', '0'),
(57, 17, '_order_shipping', '0.00'),
(58, 17, '_order_shipping_tax', '0'),
(59, 17, '_order_tax', '0'),
(60, 17, '_order_total', '15.00'),
(61, 17, '_order_version', '5.1.0'),
(62, 17, '_prices_include_tax', 'yes'),
(63, 17, '_billing_address_index', 'test test KALAPA SA test  est  1207 LK mipam.guillot@gmail.com 0791059375'),
(64, 17, '_shipping_address_index', '        '),
(65, 17, 'is_vat_exempt', 'no'),
(66, 17, '_recorded_sales', 'yes'),
(67, 17, '_recorded_coupon_usage_counts', 'yes'),
(68, 17, '_order_stock_reduced', 'yes'),
(69, 17, '_new_order_email_sent', 'true'),
(70, 17, '_edit_lock', '1618243630:1'),
(71, 17, '_wcpdf_invoice_settings', 'a:17:{s:7:\"enabled\";s:1:\"1\";s:24:\"display_shipping_address\";s:0:\"\";s:22:\"display_customer_notes\";s:1:\"1\";s:12:\"display_date\";s:10:\"order_date\";s:14:\"display_number\";s:14:\"invoice_number\";s:13:\"number_format\";a:3:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:7:\"padding\";s:0:\"\";}s:18:\"my_account_buttons\";s:9:\"available\";s:10:\"paper_size\";s:2:\"a4\";s:15:\"font_subsetting\";b:0;s:11:\"header_logo\";s:2:\"10\";s:18:\"header_logo_height\";s:0:\"\";s:9:\"shop_name\";a:1:{s:7:\"default\";s:9:\"KALAPA SA\";}s:12:\"shop_address\";a:1:{s:7:\"default\";s:35:\"CHEMIN DE AMNN\r\n12122 VESEA\r\nSUISSE\";}s:6:\"footer\";a:1:{s:7:\"default\";s:23:\"Merci de votre commande\";}s:7:\"extra_1\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_2\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_3\";a:1:{s:7:\"default\";s:0:\"\";}}'),
(72, 17, '_wcpdf_invoice_date', '1618239022'),
(73, 17, '_wcpdf_invoice_date_formatted', '2021-04-12 16:50:22'),
(74, 17, '_wcpdf_invoice_number', '20220201'),
(75, 17, '_wcpdf_invoice_number_data', 'a:7:{s:6:\"number\";i:20220201;s:16:\"formatted_number\";s:8:\"20220201\";s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:13:\"document_type\";s:7:\"invoice\";s:8:\"order_id\";i:17;s:7:\"padding\";s:0:\"\";}'),
(76, 18, '_order_key', 'wc_order_aKHyLs4STLDrI'),
(77, 18, '_customer_user', '1'),
(78, 18, '_payment_method', 'cod'),
(79, 18, '_payment_method_title', 'Paiement à la livraison'),
(80, 18, '_customer_ip_address', '::1'),
(81, 18, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36'),
(82, 18, '_created_via', 'checkout'),
(83, 18, '_cart_hash', 'a1837cd235db131fa80a1d6e86f2ad00'),
(84, 18, '_billing_first_name', 'test'),
(85, 18, '_billing_last_name', 'test'),
(86, 18, '_billing_company', 'KALAPA SA'),
(87, 18, '_billing_address_1', 'test'),
(88, 18, '_billing_city', 'est'),
(89, 18, '_billing_postcode', '1207'),
(90, 18, '_billing_country', 'CH'),
(91, 18, '_billing_email', 'mipam.guillot@gmail.com'),
(92, 18, '_billing_phone', '0791059375'),
(93, 18, '_order_currency', 'CHF'),
(94, 18, '_cart_discount', '0'),
(95, 18, '_cart_discount_tax', '0'),
(96, 18, '_order_shipping', '0.00'),
(97, 18, '_order_shipping_tax', '0'),
(98, 18, '_order_tax', '1.07'),
(99, 18, '_order_total', '15.00'),
(100, 18, '_order_version', '5.1.0'),
(101, 18, '_prices_include_tax', 'yes'),
(102, 18, '_billing_address_index', 'test test KALAPA SA test  est  1207 CH mipam.guillot@gmail.com 0791059375'),
(103, 18, '_shipping_address_index', '        '),
(104, 18, 'is_vat_exempt', 'no'),
(105, 18, '_recorded_sales', 'yes'),
(106, 18, '_recorded_coupon_usage_counts', 'yes'),
(107, 18, '_order_stock_reduced', 'yes'),
(108, 18, '_new_order_email_sent', 'true'),
(109, 18, '_wcpdf_invoice_settings', 'a:17:{s:7:\"enabled\";s:1:\"1\";s:24:\"display_shipping_address\";s:0:\"\";s:22:\"display_customer_notes\";s:1:\"1\";s:12:\"display_date\";s:10:\"order_date\";s:14:\"display_number\";s:14:\"invoice_number\";s:13:\"number_format\";a:3:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:7:\"padding\";s:0:\"\";}s:18:\"my_account_buttons\";s:9:\"available\";s:10:\"paper_size\";s:2:\"a4\";s:15:\"font_subsetting\";b:0;s:11:\"header_logo\";s:2:\"10\";s:18:\"header_logo_height\";s:0:\"\";s:9:\"shop_name\";a:1:{s:7:\"default\";s:9:\"KALAPA SA\";}s:12:\"shop_address\";a:1:{s:7:\"default\";s:35:\"CHEMIN DE AMNN\r\n12122 VESEA\r\nSUISSE\";}s:6:\"footer\";a:1:{s:7:\"default\";s:23:\"Merci de votre commande\";}s:7:\"extra_1\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_2\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_3\";a:1:{s:7:\"default\";s:0:\"\";}}'),
(110, 18, '_wcpdf_invoice_date', '1618239532'),
(111, 18, '_wcpdf_invoice_date_formatted', '2021-04-12 16:58:52'),
(112, 18, '_wcpdf_invoice_number', '20220202'),
(113, 18, '_wcpdf_invoice_number_data', 'a:7:{s:6:\"number\";i:20220202;s:16:\"formatted_number\";s:8:\"20220202\";s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:13:\"document_type\";s:7:\"invoice\";s:8:\"order_id\";i:18;s:7:\"padding\";s:0:\"\";}'),
(114, 18, 'wf_invoice_number', '18'),
(115, 18, '_wf_invoice_date', '1618203532'),
(116, 18, '_edit_lock', '1618243568:1'),
(117, 19, '_edit_last', '1'),
(118, 19, '_edit_lock', '1618264958:1'),
(119, 19, '_regular_price', '50'),
(120, 19, 'total_sales', '0'),
(121, 19, '_tax_status', 'taxable'),
(122, 19, '_tax_class', ''),
(123, 19, '_manage_stock', 'no'),
(124, 19, '_backorders', 'no'),
(125, 19, '_sold_individually', 'no'),
(126, 19, '_virtual', 'no'),
(127, 19, '_downloadable', 'no'),
(128, 19, '_download_limit', '-1'),
(129, 19, '_download_expiry', '-1'),
(130, 19, '_stock', NULL),
(131, 19, '_stock_status', 'instock'),
(132, 19, '_wc_average_rating', '0'),
(133, 19, '_wc_review_count', '0'),
(134, 19, '_product_version', '5.1.0'),
(135, 19, '_price', '50'),
(139, 21, '_edit_lock', '1619904853:1'),
(142, 21, '_edit_last', '1'),
(145, 21, '_wp_old_date', '2021-04-13'),
(147, 1, '_edit_lock', '1619868683:1'),
(150, 1, '_thumbnail_id', '14'),
(151, 26, '_menu_item_type', 'custom'),
(152, 26, '_menu_item_menu_item_parent', '0'),
(153, 26, '_menu_item_object_id', '26'),
(154, 26, '_menu_item_object', 'custom'),
(155, 26, '_menu_item_target', ''),
(156, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 26, '_menu_item_xfn', ''),
(158, 26, '_menu_item_url', 'http://localhost/site/WORDPRESS/wordpress'),
(175, 25, '_wp_trash_meta_status', 'publish'),
(176, 25, '_wp_trash_meta_time', '1618307154'),
(177, 29, '_edit_last', '1'),
(178, 29, '_edit_lock', '1618313709:1'),
(179, 30, '_wp_attached_file', '2021/04/MV5BNTQ5MTgzNDg4OF5BMl5BanBnXkFtZTcwMjAyODEzOQ@@._V1_UX182_CR00182268_AL_.jpg'),
(180, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:268;s:4:\"file\";s:85:\"2021/04/MV5BNTQ5MTgzNDg4OF5BMl5BanBnXkFtZTcwMjAyODEzOQ@@._V1_UX182_CR00182268_AL_.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 29, '_thumbnail_id', '30'),
(182, 31, '_edit_last', '1'),
(183, 31, '_edit_lock', '1619973968:1'),
(184, 29, 'duration', '2'),
(185, 29, '_duration', 'field_60756dbade845'),
(186, 29, 'note_personnelle', '9.1'),
(187, 29, '_note_personnelle', 'field_60756dedde846'),
(188, 29, 'personel', 'test'),
(189, 29, '_personel', 'field_60756e13de847'),
(190, 29, 'bande_annonce', 'https://www.youtube.com/watch?v=p-5mdlb-M4A'),
(191, 29, '_bande_annonce', 'field_60756e8e84979'),
(194, 40, '_wp_attached_file', '2021/04/image-alignment-150x1501-1.jpg'),
(195, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:38:\"2021/04/image-alignment-150x1501-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 41, '_wp_attached_file', '2021/04/image-alignment-300x2001-1.jpg'),
(197, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"file\";s:38:\"2021/04/image-alignment-300x2001-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 42, '_wp_attached_file', '2021/04/image-alignment-580x3001-1.jpg'),
(199, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:300;s:4:\"file\";s:38:\"2021/04/image-alignment-580x3001-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 43, '_wp_attached_file', '2021/04/image-alignment-1200x40021-1.jpg'),
(201, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:400;s:4:\"file\";s:40:\"2021/04/image-alignment-1200x40021-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 44, '_wp_attached_file', '2021/04/rs-avatar-60x60-1.jpg'),
(203, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:29:\"2021/04/rs-avatar-60x60-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 45, '_wp_attached_file', '2021/04/rs-calendar-cover.jpg'),
(205, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:413;s:4:\"file\";s:29:\"2021/04/rs-calendar-cover.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 46, '_wp_attached_file', '2021/04/rs-cover.jpg'),
(207, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2200;s:6:\"height\";i:912;s:4:\"file\";s:20:\"2021/04/rs-cover.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 47, '_wp_attached_file', '2021/04/rs-photo-v1.jpg'),
(209, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:809;s:6:\"height\";i:937;s:4:\"file\";s:23:\"2021/04/rs-photo-v1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 48, '_wp_attached_file', '2021/04/rs-photo-v2.jpg'),
(211, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:295;s:4:\"file\";s:23:\"2021/04/rs-photo-v2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 49, '_wp_attached_file', '2021/04/rs-thumb-509x319-1.jpg'),
(213, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:509;s:6:\"height\";i:319;s:4:\"file\";s:30:\"2021/04/rs-thumb-509x319-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 50, '_wp_attached_file', '2021/04/rs-thumb-610x396-1.jpg'),
(215, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:396;s:4:\"file\";s:30:\"2021/04/rs-thumb-610x396-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 51, '_wp_attached_file', '2021/04/thumb-78x56-1.jpg'),
(217, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:78;s:6:\"height\";i:56;s:4:\"file\";s:25:\"2021/04/thumb-78x56-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 52, '_wp_attached_file', '2021/04/thumb-78x56-2.jpg'),
(219, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:78;s:6:\"height\";i:56;s:4:\"file\";s:25:\"2021/04/thumb-78x56-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 53, '_wp_attached_file', '2021/04/thumb-78x56-3.jpg'),
(221, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:78;s:6:\"height\";i:56;s:4:\"file\";s:25:\"2021/04/thumb-78x56-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 54, '_wp_attached_file', '2021/04/thumb-449x286-1.jpg'),
(223, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 55, '_wp_attached_file', '2021/04/thumb-449x286-2.jpg'),
(225, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 56, '_wp_attached_file', '2021/04/thumb-449x286-3.jpg'),
(227, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 57, '_wp_attached_file', '2021/04/thumb-449x286-4.jpg'),
(229, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 58, '_wp_attached_file', '2021/04/thumb-449x286-5.jpg'),
(231, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 59, '_wp_attached_file', '2021/04/thumb-449x286-6.jpg'),
(233, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 60, '_wp_attached_file', '2021/04/thumb-449x286-7.jpg'),
(235, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 61, '_wp_attached_file', '2021/04/thumb-449x286-8.jpg'),
(237, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:286;s:4:\"file\";s:27:\"2021/04/thumb-449x286-8.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 62, '_wp_attached_file', '2021/04/logo-angularjs.png'),
(239, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:170;s:6:\"height\";i:44;s:4:\"file\";s:26:\"2021/04/logo-angularjs.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 63, '_wp_attached_file', '2021/04/logo-bootstrap.png'),
(241, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:170;s:6:\"height\";i:34;s:4:\"file\";s:26:\"2021/04/logo-bootstrap.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 64, '_wp_attached_file', '2021/04/logo-compass.png'),
(243, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:170;s:6:\"height\";i:38;s:4:\"file\";s:24:\"2021/04/logo-compass.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 65, '_wp_attached_file', '2021/04/logo-envato.png'),
(245, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:111;s:6:\"height\";i:24;s:4:\"file\";s:23:\"2021/04/logo-envato.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 66, '_wp_attached_file', '2021/04/logo-evernote.png'),
(247, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:161;s:6:\"height\";i:40;s:4:\"file\";s:25:\"2021/04/logo-evernote.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 67, '_wp_attached_file', '2021/04/logo-jasmine.png'),
(249, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:139;s:6:\"height\";i:43;s:4:\"file\";s:24:\"2021/04/logo-jasmine.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 68, '_wp_attached_file', '2021/04/logo-jquery.png'),
(251, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:142;s:6:\"height\";i:35;s:4:\"file\";s:23:\"2021/04/logo-jquery.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 69, '_wp_attached_file', '2021/04/logo-teaspoon.png'),
(253, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:36;s:4:\"file\";s:25:\"2021/04/logo-teaspoon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 70, '_wp_attached_file', '2021/04/logo-wordpress.png'),
(255, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:36;s:4:\"file\";s:26:\"2021/04/logo-wordpress.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 71, '_wp_attached_file', '2021/04/echo-hereweare.jpg'),
(257, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:26:\"2021/04/echo-hereweare.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 72, '_wp_attached_file', '2021/04/echo-hereweare.mp3'),
(259, 72, '_wp_attachment_metadata', 'a:16:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:266755.38427819987;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.18902734146697836;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:1490491;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:4:\"text\";s:4:\"M4VP\";s:16:\"encoder_settings\";s:12:\"Lavf56.4.101\";}'),
(260, 73, '_wp_attached_file', '2021/04/echo-hereweare.mp4'),
(261, 73, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:5360323;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1279896083;}'),
(262, 74, '_wp_attached_file', '2021/04/echo-hereweare.ogv'),
(263, 75, '_wp_attached_file', '2021/04/echo-hereweare.webm'),
(264, 75, '_wp_attachment_metadata', 'a:10:{s:7:\"bitrate\";i:447350;s:8:\"filesize\";i:3389922;s:9:\"mime_type\";s:10:\"video/webm\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"fileformat\";s:4:\"webm\";s:10:\"dataformat\";s:3:\"vp8\";s:5:\"audio\";a:10:{s:10:\"dataformat\";s:6:\"vorbis\";s:11:\"sample_rate\";i:44100;s:8:\"channels\";i:2;s:8:\"language\";s:3:\"eng\";s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:12:\"bitrate_mode\";s:3:\"abr\";s:7:\"bitrate\";i:160000;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.11337868480725624;}}'),
(265, 76, '_wp_attached_file', '2021/04/echo-hereweare-1.jpg'),
(266, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:28:\"2021/04/echo-hereweare-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 77, '_wp_attached_file', '2021/04/echo-hereweare-1.mp4'),
(268, 77, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:5360323;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1279896083;}'),
(269, 78, '_wp_attached_file', '2021/04/echo-hereweare-1.ogv'),
(270, 79, '_wp_attached_file', '2021/04/echo-hereweare-1.webm'),
(271, 79, '_wp_attachment_metadata', 'a:10:{s:7:\"bitrate\";i:447350;s:8:\"filesize\";i:3389922;s:9:\"mime_type\";s:10:\"video/webm\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"fileformat\";s:4:\"webm\";s:10:\"dataformat\";s:3:\"vp8\";s:5:\"audio\";a:10:{s:10:\"dataformat\";s:6:\"vorbis\";s:11:\"sample_rate\";i:44100;s:8:\"channels\";i:2;s:8:\"language\";s:3:\"eng\";s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:12:\"bitrate_mode\";s:3:\"abr\";s:7:\"bitrate\";i:160000;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.11337868480725624;}}'),
(272, 80, '_wp_attached_file', '2021/04/portfolio-thumb-01-289x281-1.jpg'),
(273, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-01-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 81, '_wp_attached_file', '2021/04/portfolio-thumb-01-large.jpg'),
(275, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:529;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-01-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 82, '_wp_attached_file', '2021/04/portfolio-thumb-02-289x281-1.jpg'),
(277, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-02-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 83, '_wp_attached_file', '2021/04/portfolio-thumb-02-large.jpg'),
(279, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:528;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-02-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 84, '_wp_attached_file', '2021/04/portfolio-thumb-03-289x281-1.jpg'),
(281, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-03-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 85, '_wp_attached_file', '2021/04/portfolio-thumb-03-large.jpg'),
(283, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:530;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-03-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 86, '_wp_attached_file', '2021/04/portfolio-thumb-04-289x281-1.jpg'),
(285, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-04-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 87, '_wp_attached_file', '2021/04/portfolio-thumb-04-large.jpg'),
(287, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:596;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-04-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 88, '_wp_attached_file', '2021/04/portfolio-thumb-05-610x600-1.jpg'),
(289, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:600;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-05-610x600-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 89, '_wp_attached_file', '2021/04/portfolio-thumb-05-large.jpg'),
(291, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:530;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-05-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 90, '_wp_attached_file', '2021/04/portfolio-thumb-06-289x281-1.jpg'),
(293, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-06-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 91, '_wp_attached_file', '2021/04/portfolio-thumb-06-large.jpg'),
(295, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:530;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-06-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 92, '_wp_attached_file', '2021/04/portfolio-thumb-07-289x281-1.jpg'),
(297, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-07-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 93, '_wp_attached_file', '2021/04/portfolio-thumb-07-large.jpg'),
(299, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:530;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-07-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 94, '_wp_attached_file', '2021/04/portfolio-thumb-08-289x281-1.jpg'),
(301, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-08-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 95, '_wp_attached_file', '2021/04/portfolio-thumb-09-610x600-1.jpg'),
(303, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:600;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-09-610x600-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 96, '_wp_attached_file', '2021/04/portfolio-thumb-09-large.jpg'),
(305, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:530;s:4:\"file\";s:36:\"2021/04/portfolio-thumb-09-large.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 97, '_wp_attached_file', '2021/04/portfolio-thumb-10-289x281-1.jpg'),
(307, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-10-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 98, '_wp_attached_file', '2021/04/portfolio-thumb-11-289x281-1.jpg'),
(309, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-11-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 99, '_wp_attached_file', '2021/04/portfolio-thumb-12-289x281-1.jpg'),
(311, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:281;s:4:\"file\";s:40:\"2021/04/portfolio-thumb-12-289x281-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 100, '_wp_attached_file', '2021/04/ajax-loader.gif'),
(313, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:24;s:4:\"file\";s:23:\"2021/04/ajax-loader.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 101, '_wp_attached_file', '2021/04/ajax-loader-dark.gif'),
(315, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:24;s:4:\"file\";s:28:\"2021/04/ajax-loader-dark.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 102, '_wp_attached_file', '2021/04/arrows.png'),
(317, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:30;s:6:\"height\";i:41;s:4:\"file\";s:18:\"2021/04/arrows.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 103, '_wp_attached_file', '2021/04/fancybox_sprite.png'),
(319, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:135;s:6:\"height\";i:45;s:4:\"file\";s:27:\"2021/04/fancybox_sprite.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 104, '_wp_attached_file', '2021/04/fancybox_sprite@2x.png'),
(321, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:90;s:4:\"file\";s:30:\"2021/04/fancybox_sprite@2x.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 105, '_wp_attached_file', '2021/04/favicon.png'),
(323, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:19:\"2021/04/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(324, 106, '_wp_attached_file', '2021/04/overlay.png'),
(325, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:10;s:6:\"height\";i:10;s:4:\"file\";s:19:\"2021/04/overlay.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 107, '_wp_attached_file', '2021/04/rs-avatar-64x64-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(327, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:29:\"2021/04/rs-avatar-64x64-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 108, '_wp_trash_meta_status', 'publish'),
(329, 108, '_wp_trash_meta_time', '1618316278'),
(330, 109, '_edit_lock', '1618319498:1'),
(417, 109, '_wp_trash_meta_status', 'publish'),
(418, 109, '_wp_trash_meta_time', '1618319531'),
(419, 133, '_wp_trash_meta_status', 'publish'),
(420, 133, '_wp_trash_meta_time', '1618319921'),
(443, 140, '_edit_lock', '1619977348:1'),
(450, 140, '_thumbnail_id', '50'),
(453, 149, '_wp_trash_meta_status', 'publish'),
(454, 149, '_wp_trash_meta_time', '1619798077'),
(455, 1, '_edit_last', '1'),
(456, 150, '_edit_lock', '1619992271:1'),
(457, 151, '_menu_item_type', 'post_type'),
(458, 151, '_menu_item_menu_item_parent', '0'),
(459, 151, '_menu_item_object_id', '150'),
(460, 151, '_menu_item_object', 'page'),
(461, 151, '_menu_item_target', ''),
(462, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(463, 151, '_menu_item_xfn', ''),
(464, 151, '_menu_item_url', ''),
(489, 150, '_edit_last', '1'),
(490, 153, '_wp_trash_meta_status', 'publish'),
(491, 153, '_wp_trash_meta_time', '1619883147'),
(494, 155, '_wp_attached_file', '2021/05/icomoon.eot'),
(495, 156, '_wp_attached_file', '2021/05/icomoon.svg'),
(496, 157, '_wp_attached_file', '2021/05/icomoon.ttf'),
(497, 158, '_wp_attached_file', '2021/05/icomoon.woff'),
(498, 159, '_wp_trash_meta_status', 'publish'),
(499, 159, '_wp_trash_meta_time', '1619884477'),
(500, 160, '_wp_trash_meta_status', 'publish'),
(501, 160, '_wp_trash_meta_time', '1619884528'),
(502, 162, '_edit_last', '1'),
(503, 162, '_edit_lock', '1619991777:1'),
(504, 150, 'name', 'Mipam Guillot'),
(505, 150, '_name', 'field_608d7a7854dd7'),
(506, 150, 'work', 'Web Developper Student'),
(507, 150, '_work', 'field_608d7a9154dd8'),
(508, 150, 'age', '21'),
(509, 150, '_age', 'field_608d7aaa54dd9'),
(510, 150, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(511, 150, '_adress', 'field_608d7ad154dda'),
(512, 150, 'email', 'contact@mipam.ch'),
(513, 150, '_email', 'field_608d7ae254ddb'),
(514, 150, 'phone', '791059375'),
(515, 150, '_phone', 'field_608d7aea54ddc'),
(516, 150, 'freelance', '20210513'),
(517, 150, '_freelance', 'field_608d7b1a54ddd'),
(518, 150, 'vacation', '20210531'),
(519, 150, '_vacation', 'field_608d7b4854dde'),
(520, 150, 'image', '47'),
(521, 150, '_image', 'field_608d7c17d070e'),
(522, 172, 'name', 'Mipam Guillot'),
(523, 172, '_name', 'field_608d7a7854dd7'),
(524, 172, 'work', 'Web Developper'),
(525, 172, '_work', 'field_608d7a9154dd8'),
(526, 172, 'age', '21'),
(527, 172, '_age', 'field_608d7aaa54dd9'),
(528, 172, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(529, 172, '_adress', 'field_608d7ad154dda'),
(530, 172, 'email', 'contact@mipam.ch'),
(531, 172, '_email', 'field_608d7ae254ddb'),
(532, 172, 'phone', '791059375'),
(533, 172, '_phone', 'field_608d7aea54ddc'),
(534, 172, 'freelance', '20210513'),
(535, 172, '_freelance', 'field_608d7b1a54ddd'),
(536, 172, 'vacation', '20210531'),
(537, 172, '_vacation', 'field_608d7b4854dde'),
(538, 172, 'image', '47'),
(539, 172, '_image', 'field_608d7c17d070e'),
(540, 173, 'name', 'Mipam Guillot'),
(541, 173, '_name', 'field_608d7a7854dd7'),
(542, 173, 'work', 'Web Developper Student'),
(543, 173, '_work', 'field_608d7a9154dd8'),
(544, 173, 'age', '21'),
(545, 173, '_age', 'field_608d7aaa54dd9'),
(546, 173, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(547, 173, '_adress', 'field_608d7ad154dda'),
(548, 173, 'email', 'contact@mipam.ch'),
(549, 173, '_email', 'field_608d7ae254ddb'),
(550, 173, 'phone', '791059375'),
(551, 173, '_phone', 'field_608d7aea54ddc'),
(552, 173, 'freelance', '20210513'),
(553, 173, '_freelance', 'field_608d7b1a54ddd'),
(554, 173, 'vacation', '20210531'),
(555, 173, '_vacation', 'field_608d7b4854dde'),
(556, 173, 'image', '47'),
(557, 173, '_image', 'field_608d7c17d070e'),
(558, 150, 'info_name', 'Mipam Guillot'),
(559, 150, '_info_name', 'field_608d8123b5650'),
(560, 150, 'info_work', 'Student Developper'),
(561, 150, '_info_work', 'field_608d8144b5651'),
(562, 150, 'info_age', '21'),
(563, 150, '_info_age', 'field_608d8152b5652'),
(564, 150, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(565, 150, '_info_adress', 'field_608d815bb5653'),
(566, 150, 'info_email', 'contact@mipam.ch'),
(567, 150, '_info_email', 'field_608d8167b5654'),
(568, 150, 'info_phone', '+41 79 105 93 75'),
(569, 150, '_info_phone', 'field_608d8184b5655'),
(570, 150, 'info_freelance', '20210516'),
(571, 150, '_info_freelance', 'field_608d81a9b5656'),
(572, 150, 'info_vacation', '20210522'),
(573, 150, '_info_vacation', 'field_608d81c2b5657'),
(574, 150, 'info_image', '47'),
(575, 150, '_info_image', 'field_608d81dcb5658'),
(576, 150, 'info', ''),
(577, 150, '_info', 'field_608d7a7854dd7'),
(578, 184, 'name', 'Mipam Guillot'),
(579, 184, '_name', 'field_608d7a7854dd7'),
(580, 184, 'work', 'Web Developper Student'),
(581, 184, '_work', 'field_608d7a9154dd8'),
(582, 184, 'age', '21'),
(583, 184, '_age', 'field_608d7aaa54dd9'),
(584, 184, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(585, 184, '_adress', 'field_608d7ad154dda'),
(586, 184, 'email', 'contact@mipam.ch'),
(587, 184, '_email', 'field_608d7ae254ddb'),
(588, 184, 'phone', '791059375'),
(589, 184, '_phone', 'field_608d7aea54ddc'),
(590, 184, 'freelance', '20210513'),
(591, 184, '_freelance', 'field_608d7b1a54ddd'),
(592, 184, 'vacation', '20210531'),
(593, 184, '_vacation', 'field_608d7b4854dde'),
(594, 184, 'image', '47'),
(595, 184, '_image', 'field_608d7c17d070e'),
(596, 184, 'info_name', 'Mipam Guillot'),
(597, 184, '_info_name', 'field_608d8123b5650'),
(598, 184, 'info_work', 'Student Developper'),
(599, 184, '_info_work', 'field_608d8144b5651'),
(600, 184, 'info_age', '21'),
(601, 184, '_info_age', 'field_608d8152b5652'),
(602, 184, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(603, 184, '_info_adress', 'field_608d815bb5653'),
(604, 184, 'info_email', 'contact@mipam.ch'),
(605, 184, '_info_email', 'field_608d8167b5654'),
(606, 184, 'info_phone', '41791059375'),
(607, 184, '_info_phone', 'field_608d8184b5655'),
(608, 184, 'info_freelance', '20210516'),
(609, 184, '_info_freelance', 'field_608d81a9b5656'),
(610, 184, 'info_vacation', '20210522'),
(611, 184, '_info_vacation', 'field_608d81c2b5657'),
(612, 184, 'info_image', '47'),
(613, 184, '_info_image', 'field_608d81dcb5658'),
(614, 184, 'info', ''),
(615, 184, '_info', 'field_608d7a7854dd7'),
(616, 150, 'info_vacation_or_not', 'Available'),
(617, 150, '_info_vacation_or_not', 'field_608d84a97f343'),
(618, 186, 'name', 'Mipam Guillot'),
(619, 186, '_name', 'field_608d7a7854dd7'),
(620, 186, 'work', 'Web Developper Student'),
(621, 186, '_work', 'field_608d7a9154dd8'),
(622, 186, 'age', '21'),
(623, 186, '_age', 'field_608d7aaa54dd9'),
(624, 186, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(625, 186, '_adress', 'field_608d7ad154dda'),
(626, 186, 'email', 'contact@mipam.ch'),
(627, 186, '_email', 'field_608d7ae254ddb'),
(628, 186, 'phone', '791059375'),
(629, 186, '_phone', 'field_608d7aea54ddc'),
(630, 186, 'freelance', '20210513'),
(631, 186, '_freelance', 'field_608d7b1a54ddd'),
(632, 186, 'vacation', '20210531'),
(633, 186, '_vacation', 'field_608d7b4854dde'),
(634, 186, 'image', '47'),
(635, 186, '_image', 'field_608d7c17d070e'),
(636, 186, 'info_name', 'Mipam Guillot'),
(637, 186, '_info_name', 'field_608d8123b5650'),
(638, 186, 'info_work', 'Student Developper'),
(639, 186, '_info_work', 'field_608d8144b5651'),
(640, 186, 'info_age', '21'),
(641, 186, '_info_age', 'field_608d8152b5652'),
(642, 186, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(643, 186, '_info_adress', 'field_608d815bb5653'),
(644, 186, 'info_email', 'contact@mipam.ch'),
(645, 186, '_info_email', 'field_608d8167b5654'),
(646, 186, 'info_phone', '41791059375'),
(647, 186, '_info_phone', 'field_608d8184b5655'),
(648, 186, 'info_freelance', '20210516'),
(649, 186, '_info_freelance', 'field_608d81a9b5656'),
(650, 186, 'info_vacation', '20210522'),
(651, 186, '_info_vacation', 'field_608d81c2b5657'),
(652, 186, 'info_image', '47'),
(653, 186, '_info_image', 'field_608d81dcb5658'),
(654, 186, 'info', ''),
(655, 186, '_info', 'field_608d7a7854dd7'),
(656, 186, 'info_vacation_or_not', 'On Vacation'),
(657, 186, '_info_vacation_or_not', 'field_608d84a97f343'),
(658, 187, 'name', 'Mipam Guillot'),
(659, 187, '_name', 'field_608d7a7854dd7'),
(660, 187, 'work', 'Web Developper Student'),
(661, 187, '_work', 'field_608d7a9154dd8'),
(662, 187, 'age', '21'),
(663, 187, '_age', 'field_608d7aaa54dd9'),
(664, 187, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(665, 187, '_adress', 'field_608d7ad154dda'),
(666, 187, 'email', 'contact@mipam.ch'),
(667, 187, '_email', 'field_608d7ae254ddb'),
(668, 187, 'phone', '791059375'),
(669, 187, '_phone', 'field_608d7aea54ddc'),
(670, 187, 'freelance', '20210513'),
(671, 187, '_freelance', 'field_608d7b1a54ddd'),
(672, 187, 'vacation', '20210531'),
(673, 187, '_vacation', 'field_608d7b4854dde'),
(674, 187, 'image', '47'),
(675, 187, '_image', 'field_608d7c17d070e'),
(676, 187, 'info_name', 'Mipam Guillot'),
(677, 187, '_info_name', 'field_608d8123b5650'),
(678, 187, 'info_work', 'Student Developper'),
(679, 187, '_info_work', 'field_608d8144b5651'),
(680, 187, 'info_age', '21'),
(681, 187, '_info_age', 'field_608d8152b5652'),
(682, 187, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(683, 187, '_info_adress', 'field_608d815bb5653'),
(684, 187, 'info_email', 'contact@mipam.ch'),
(685, 187, '_info_email', 'field_608d8167b5654'),
(686, 187, 'info_phone', '41791059375'),
(687, 187, '_info_phone', 'field_608d8184b5655'),
(688, 187, 'info_freelance', '20210516'),
(689, 187, '_info_freelance', 'field_608d81a9b5656'),
(690, 187, 'info_vacation', '20210522'),
(691, 187, '_info_vacation', 'field_608d81c2b5657'),
(692, 187, 'info_image', '47'),
(693, 187, '_info_image', 'field_608d81dcb5658'),
(694, 187, 'info', ''),
(695, 187, '_info', 'field_608d7a7854dd7'),
(696, 187, 'info_vacation_or_not', 'Available'),
(697, 187, '_info_vacation_or_not', 'field_608d84a97f343'),
(698, 150, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(699, 150, '_info_description', 'field_608d8647d7e35'),
(700, 150, 'info_download', '192'),
(701, 150, '_info_download', 'field_608d86af9aacf'),
(702, 190, 'name', 'Mipam Guillot'),
(703, 190, '_name', 'field_608d7a7854dd7'),
(704, 190, 'work', 'Web Developper Student'),
(705, 190, '_work', 'field_608d7a9154dd8'),
(706, 190, 'age', '21'),
(707, 190, '_age', 'field_608d7aaa54dd9'),
(708, 190, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(709, 190, '_adress', 'field_608d7ad154dda'),
(710, 190, 'email', 'contact@mipam.ch'),
(711, 190, '_email', 'field_608d7ae254ddb'),
(712, 190, 'phone', '791059375'),
(713, 190, '_phone', 'field_608d7aea54ddc'),
(714, 190, 'freelance', '20210513'),
(715, 190, '_freelance', 'field_608d7b1a54ddd'),
(716, 190, 'vacation', '20210531'),
(717, 190, '_vacation', 'field_608d7b4854dde'),
(718, 190, 'image', '47'),
(719, 190, '_image', 'field_608d7c17d070e'),
(720, 190, 'info_name', 'Mipam Guillot'),
(721, 190, '_info_name', 'field_608d8123b5650'),
(722, 190, 'info_work', 'Student Developper'),
(723, 190, '_info_work', 'field_608d8144b5651'),
(724, 190, 'info_age', '21'),
(725, 190, '_info_age', 'field_608d8152b5652'),
(726, 190, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(727, 190, '_info_adress', 'field_608d815bb5653'),
(728, 190, 'info_email', 'contact@mipam.ch'),
(729, 190, '_info_email', 'field_608d8167b5654'),
(730, 190, 'info_phone', '41791059375'),
(731, 190, '_info_phone', 'field_608d8184b5655'),
(732, 190, 'info_freelance', '20210516'),
(733, 190, '_info_freelance', 'field_608d81a9b5656'),
(734, 190, 'info_vacation', '20210522'),
(735, 190, '_info_vacation', 'field_608d81c2b5657'),
(736, 190, 'info_image', '47'),
(737, 190, '_info_image', 'field_608d81dcb5658'),
(738, 190, 'info', ''),
(739, 190, '_info', 'field_608d7a7854dd7'),
(740, 190, 'info_vacation_or_not', 'Available'),
(741, 190, '_info_vacation_or_not', 'field_608d84a97f343'),
(742, 190, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(743, 190, '_info_description', 'field_608d8647d7e35'),
(744, 190, 'info_download', '47'),
(745, 190, '_info_download', 'field_608d86af9aacf'),
(746, 191, 'name', 'Mipam Guillot'),
(747, 191, '_name', 'field_608d7a7854dd7'),
(748, 191, 'work', 'Web Developper Student'),
(749, 191, '_work', 'field_608d7a9154dd8'),
(750, 191, 'age', '21'),
(751, 191, '_age', 'field_608d7aaa54dd9'),
(752, 191, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(753, 191, '_adress', 'field_608d7ad154dda'),
(754, 191, 'email', 'contact@mipam.ch'),
(755, 191, '_email', 'field_608d7ae254ddb'),
(756, 191, 'phone', '791059375'),
(757, 191, '_phone', 'field_608d7aea54ddc'),
(758, 191, 'freelance', '20210513'),
(759, 191, '_freelance', 'field_608d7b1a54ddd'),
(760, 191, 'vacation', '20210531'),
(761, 191, '_vacation', 'field_608d7b4854dde'),
(762, 191, 'image', '47'),
(763, 191, '_image', 'field_608d7c17d070e'),
(764, 191, 'info_name', 'Mipam Guillot'),
(765, 191, '_info_name', 'field_608d8123b5650'),
(766, 191, 'info_work', 'Student Developper'),
(767, 191, '_info_work', 'field_608d8144b5651'),
(768, 191, 'info_age', '21'),
(769, 191, '_info_age', 'field_608d8152b5652'),
(770, 191, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(771, 191, '_info_adress', 'field_608d815bb5653'),
(772, 191, 'info_email', 'contact@mipam.ch'),
(773, 191, '_info_email', 'field_608d8167b5654'),
(774, 191, 'info_phone', '41791059375'),
(775, 191, '_info_phone', 'field_608d8184b5655'),
(776, 191, 'info_freelance', '20210516'),
(777, 191, '_info_freelance', 'field_608d81a9b5656'),
(778, 191, 'info_vacation', '20210522'),
(779, 191, '_info_vacation', 'field_608d81c2b5657'),
(780, 191, 'info_image', '47'),
(781, 191, '_info_image', 'field_608d81dcb5658'),
(782, 191, 'info', ''),
(783, 191, '_info', 'field_608d7a7854dd7'),
(784, 191, 'info_vacation_or_not', 'Available'),
(785, 191, '_info_vacation_or_not', 'field_608d84a97f343'),
(786, 191, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(787, 191, '_info_description', 'field_608d8647d7e35'),
(788, 191, 'info_download', '47'),
(789, 191, '_info_download', 'field_608d86af9aacf'),
(790, 192, '_wp_attached_file', '2021/05/Make-Wordpress-Great-Again.pdf'),
(791, 193, 'name', 'Mipam Guillot'),
(792, 193, '_name', 'field_608d7a7854dd7'),
(793, 193, 'work', 'Web Developper Student'),
(794, 193, '_work', 'field_608d7a9154dd8'),
(795, 193, 'age', '21'),
(796, 193, '_age', 'field_608d7aaa54dd9'),
(797, 193, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(798, 193, '_adress', 'field_608d7ad154dda'),
(799, 193, 'email', 'contact@mipam.ch'),
(800, 193, '_email', 'field_608d7ae254ddb'),
(801, 193, 'phone', '791059375'),
(802, 193, '_phone', 'field_608d7aea54ddc'),
(803, 193, 'freelance', '20210513'),
(804, 193, '_freelance', 'field_608d7b1a54ddd'),
(805, 193, 'vacation', '20210531'),
(806, 193, '_vacation', 'field_608d7b4854dde'),
(807, 193, 'image', '47'),
(808, 193, '_image', 'field_608d7c17d070e'),
(809, 193, 'info_name', 'Mipam Guillot'),
(810, 193, '_info_name', 'field_608d8123b5650'),
(811, 193, 'info_work', 'Student Developper'),
(812, 193, '_info_work', 'field_608d8144b5651'),
(813, 193, 'info_age', '21'),
(814, 193, '_info_age', 'field_608d8152b5652'),
(815, 193, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(816, 193, '_info_adress', 'field_608d815bb5653'),
(817, 193, 'info_email', 'contact@mipam.ch'),
(818, 193, '_info_email', 'field_608d8167b5654'),
(819, 193, 'info_phone', '41791059375'),
(820, 193, '_info_phone', 'field_608d8184b5655'),
(821, 193, 'info_freelance', '20210516'),
(822, 193, '_info_freelance', 'field_608d81a9b5656'),
(823, 193, 'info_vacation', '20210522'),
(824, 193, '_info_vacation', 'field_608d81c2b5657'),
(825, 193, 'info_image', '47'),
(826, 193, '_info_image', 'field_608d81dcb5658'),
(827, 193, 'info', ''),
(828, 193, '_info', 'field_608d7a7854dd7'),
(829, 193, 'info_vacation_or_not', 'Available'),
(830, 193, '_info_vacation_or_not', 'field_608d84a97f343'),
(831, 193, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(832, 193, '_info_description', 'field_608d8647d7e35'),
(833, 193, 'info_download', '192'),
(834, 193, '_info_download', 'field_608d86af9aacf'),
(835, 150, 'skills_skills1_name', 'Wordpress'),
(836, 150, '_skills_skills1_name', 'field_608d89cecdbb7'),
(837, 150, 'skills_skills1_percentage', '70'),
(838, 150, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(839, 150, 'skills_skills1', ''),
(840, 150, '_skills_skills1', 'field_608d8910cdbb6'),
(841, 150, 'skills_skills2_name', 'JavaScipt'),
(842, 150, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(843, 150, 'skills_skills2_percentage', '53'),
(844, 150, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(845, 150, 'skills_skills2', ''),
(846, 150, '_skills_skills2', 'field_608d8ad2cdbb9'),
(847, 150, 'skills_skills3_name', 'Drupal'),
(848, 150, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(849, 150, 'skills_skills3_percentage', '30'),
(850, 150, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(851, 150, 'skills_skills3', ''),
(852, 150, '_skills_skills3', 'field_608d8c96cdbbc'),
(853, 150, 'skills_skills4_name', 'HTML & CSS '),
(854, 150, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(855, 150, 'skills_skills4_percentage', '89'),
(856, 150, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(857, 150, 'skills_skills4', ''),
(858, 150, '_skills_skills4', 'field_608d8ca1cdbbf'),
(859, 150, 'skills_skills5_name', 'PHP & MySQL'),
(860, 150, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(861, 150, 'skills_skills5_percentage', '95'),
(862, 150, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(863, 150, 'skills_skills5', ''),
(864, 150, '_skills_skills5', 'field_608d8cabcdbc2'),
(865, 150, 'skills_skills6_name', 'Photoshop'),
(866, 150, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(867, 150, 'skills_skills6_percentage', '18'),
(868, 150, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(869, 150, 'skills_skills6', ''),
(870, 150, '_skills_skills6', 'field_608d8cbacdbc5'),
(871, 150, 'skills', ''),
(872, 150, '_skills', 'field_608d88f5cdbb5'),
(873, 213, 'name', 'Mipam Guillot'),
(874, 213, '_name', 'field_608d7a7854dd7'),
(875, 213, 'work', 'Web Developper Student'),
(876, 213, '_work', 'field_608d7a9154dd8'),
(877, 213, 'age', '21'),
(878, 213, '_age', 'field_608d7aaa54dd9'),
(879, 213, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(880, 213, '_adress', 'field_608d7ad154dda'),
(881, 213, 'email', 'contact@mipam.ch'),
(882, 213, '_email', 'field_608d7ae254ddb'),
(883, 213, 'phone', '791059375'),
(884, 213, '_phone', 'field_608d7aea54ddc'),
(885, 213, 'freelance', '20210513'),
(886, 213, '_freelance', 'field_608d7b1a54ddd'),
(887, 213, 'vacation', '20210531'),
(888, 213, '_vacation', 'field_608d7b4854dde'),
(889, 213, 'image', '47'),
(890, 213, '_image', 'field_608d7c17d070e'),
(891, 213, 'info_name', 'Mipam Guillot'),
(892, 213, '_info_name', 'field_608d8123b5650'),
(893, 213, 'info_work', 'Student Developper'),
(894, 213, '_info_work', 'field_608d8144b5651'),
(895, 213, 'info_age', '21'),
(896, 213, '_info_age', 'field_608d8152b5652'),
(897, 213, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(898, 213, '_info_adress', 'field_608d815bb5653'),
(899, 213, 'info_email', 'contact@mipam.ch'),
(900, 213, '_info_email', 'field_608d8167b5654'),
(901, 213, 'info_phone', '791059375'),
(902, 213, '_info_phone', 'field_608d8184b5655'),
(903, 213, 'info_freelance', '20210516'),
(904, 213, '_info_freelance', 'field_608d81a9b5656'),
(905, 213, 'info_vacation', '20210522'),
(906, 213, '_info_vacation', 'field_608d81c2b5657'),
(907, 213, 'info_image', '47'),
(908, 213, '_info_image', 'field_608d81dcb5658'),
(909, 213, 'info', ''),
(910, 213, '_info', 'field_608d7a7854dd7'),
(911, 213, 'info_vacation_or_not', 'Available'),
(912, 213, '_info_vacation_or_not', 'field_608d84a97f343'),
(913, 213, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(914, 213, '_info_description', 'field_608d8647d7e35'),
(915, 213, 'info_download', '192'),
(916, 213, '_info_download', 'field_608d86af9aacf'),
(917, 213, 'skills_skills1_name', 'Wordpress'),
(918, 213, '_skills_skills1_name', 'field_608d89cecdbb7'),
(919, 213, 'skills_skills1_percentage', '70'),
(920, 213, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(921, 213, 'skills_skills1', ''),
(922, 213, '_skills_skills1', 'field_608d8910cdbb6'),
(923, 213, 'skills_skills2_name', 'JavaScipt'),
(924, 213, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(925, 213, 'skills_skills2_percentage', '53'),
(926, 213, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(927, 213, 'skills_skills2', ''),
(928, 213, '_skills_skills2', 'field_608d8ad2cdbb9'),
(929, 213, 'skills_skills3_name', 'Drupal'),
(930, 213, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(931, 213, 'skills_skills3_percentage', '30'),
(932, 213, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(933, 213, 'skills_skills3', ''),
(934, 213, '_skills_skills3', 'field_608d8c96cdbbc'),
(935, 213, 'skills_skills4_name', 'HTML & CSS '),
(936, 213, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(937, 213, 'skills_skills4_percentage', '89'),
(938, 213, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(939, 213, 'skills_skills4', ''),
(940, 213, '_skills_skills4', 'field_608d8ca1cdbbf'),
(941, 213, 'skills_skills5_name', 'PHP & MySQL'),
(942, 213, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(943, 213, 'skills_skills5_percentage', '95'),
(944, 213, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(945, 213, 'skills_skills5', ''),
(946, 213, '_skills_skills5', 'field_608d8cabcdbc2'),
(947, 213, 'skills_skills6_name', 'Photoshop'),
(948, 213, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(949, 213, 'skills_skills6_percentage', '0'),
(950, 213, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(951, 213, 'skills_skills6', ''),
(952, 213, '_skills_skills6', 'field_608d8cbacdbc5'),
(953, 213, 'skills', ''),
(954, 213, '_skills', 'field_608d88f5cdbb5'),
(955, 214, 'name', 'Mipam Guillot'),
(956, 214, '_name', 'field_608d7a7854dd7'),
(957, 214, 'work', 'Web Developper Student'),
(958, 214, '_work', 'field_608d7a9154dd8'),
(959, 214, 'age', '21'),
(960, 214, '_age', 'field_608d7aaa54dd9'),
(961, 214, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(962, 214, '_adress', 'field_608d7ad154dda'),
(963, 214, 'email', 'contact@mipam.ch'),
(964, 214, '_email', 'field_608d7ae254ddb'),
(965, 214, 'phone', '791059375'),
(966, 214, '_phone', 'field_608d7aea54ddc'),
(967, 214, 'freelance', '20210513'),
(968, 214, '_freelance', 'field_608d7b1a54ddd'),
(969, 214, 'vacation', '20210531'),
(970, 214, '_vacation', 'field_608d7b4854dde'),
(971, 214, 'image', '47'),
(972, 214, '_image', 'field_608d7c17d070e'),
(973, 214, 'info_name', 'Mipam Guillot'),
(974, 214, '_info_name', 'field_608d8123b5650'),
(975, 214, 'info_work', 'Student Developper'),
(976, 214, '_info_work', 'field_608d8144b5651'),
(977, 214, 'info_age', '21'),
(978, 214, '_info_age', 'field_608d8152b5652'),
(979, 214, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(980, 214, '_info_adress', 'field_608d815bb5653'),
(981, 214, 'info_email', 'contact@mipam.ch'),
(982, 214, '_info_email', 'field_608d8167b5654'),
(983, 214, 'info_phone', '791059375'),
(984, 214, '_info_phone', 'field_608d8184b5655'),
(985, 214, 'info_freelance', '20210516'),
(986, 214, '_info_freelance', 'field_608d81a9b5656'),
(987, 214, 'info_vacation', '20210522'),
(988, 214, '_info_vacation', 'field_608d81c2b5657'),
(989, 214, 'info_image', '47'),
(990, 214, '_info_image', 'field_608d81dcb5658'),
(991, 214, 'info', ''),
(992, 214, '_info', 'field_608d7a7854dd7'),
(993, 214, 'info_vacation_or_not', 'Available'),
(994, 214, '_info_vacation_or_not', 'field_608d84a97f343'),
(995, 214, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(996, 214, '_info_description', 'field_608d8647d7e35'),
(997, 214, 'info_download', '192'),
(998, 214, '_info_download', 'field_608d86af9aacf'),
(999, 214, 'skills_skills1_name', 'Wordpress'),
(1000, 214, '_skills_skills1_name', 'field_608d89cecdbb7'),
(1001, 214, 'skills_skills1_percentage', '70'),
(1002, 214, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(1003, 214, 'skills_skills1', ''),
(1004, 214, '_skills_skills1', 'field_608d8910cdbb6'),
(1005, 214, 'skills_skills2_name', 'JavaScipt'),
(1006, 214, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(1007, 214, 'skills_skills2_percentage', '53'),
(1008, 214, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(1009, 214, 'skills_skills2', ''),
(1010, 214, '_skills_skills2', 'field_608d8ad2cdbb9'),
(1011, 214, 'skills_skills3_name', 'Drupal'),
(1012, 214, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(1013, 214, 'skills_skills3_percentage', '30'),
(1014, 214, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(1015, 214, 'skills_skills3', ''),
(1016, 214, '_skills_skills3', 'field_608d8c96cdbbc'),
(1017, 214, 'skills_skills4_name', 'HTML & CSS '),
(1018, 214, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(1019, 214, 'skills_skills4_percentage', '89'),
(1020, 214, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(1021, 214, 'skills_skills4', ''),
(1022, 214, '_skills_skills4', 'field_608d8ca1cdbbf'),
(1023, 214, 'skills_skills5_name', 'PHP & MySQL'),
(1024, 214, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(1025, 214, 'skills_skills5_percentage', '95'),
(1026, 214, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(1027, 214, 'skills_skills5', ''),
(1028, 214, '_skills_skills5', 'field_608d8cabcdbc2'),
(1029, 214, 'skills_skills6_name', ''),
(1030, 214, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(1031, 214, 'skills_skills6_percentage', '0'),
(1032, 214, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(1033, 214, 'skills_skills6', ''),
(1034, 214, '_skills_skills6', 'field_608d8cbacdbc5'),
(1035, 214, 'skills', ''),
(1036, 214, '_skills', 'field_608d88f5cdbb5'),
(1037, 215, 'name', 'Mipam Guillot'),
(1038, 215, '_name', 'field_608d7a7854dd7'),
(1039, 215, 'work', 'Web Developper Student'),
(1040, 215, '_work', 'field_608d7a9154dd8'),
(1041, 215, 'age', '21'),
(1042, 215, '_age', 'field_608d7aaa54dd9'),
(1043, 215, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(1044, 215, '_adress', 'field_608d7ad154dda'),
(1045, 215, 'email', 'contact@mipam.ch'),
(1046, 215, '_email', 'field_608d7ae254ddb'),
(1047, 215, 'phone', '791059375'),
(1048, 215, '_phone', 'field_608d7aea54ddc'),
(1049, 215, 'freelance', '20210513'),
(1050, 215, '_freelance', 'field_608d7b1a54ddd'),
(1051, 215, 'vacation', '20210531'),
(1052, 215, '_vacation', 'field_608d7b4854dde'),
(1053, 215, 'image', '47'),
(1054, 215, '_image', 'field_608d7c17d070e'),
(1055, 215, 'info_name', 'Mipam Guillot'),
(1056, 215, '_info_name', 'field_608d8123b5650'),
(1057, 215, 'info_work', 'Student Developper'),
(1058, 215, '_info_work', 'field_608d8144b5651'),
(1059, 215, 'info_age', '21'),
(1060, 215, '_info_age', 'field_608d8152b5652'),
(1061, 215, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(1062, 215, '_info_adress', 'field_608d815bb5653'),
(1063, 215, 'info_email', 'contact@mipam.ch'),
(1064, 215, '_info_email', 'field_608d8167b5654'),
(1065, 215, 'info_phone', '791059375'),
(1066, 215, '_info_phone', 'field_608d8184b5655'),
(1067, 215, 'info_freelance', '20210516'),
(1068, 215, '_info_freelance', 'field_608d81a9b5656'),
(1069, 215, 'info_vacation', '20210522'),
(1070, 215, '_info_vacation', 'field_608d81c2b5657'),
(1071, 215, 'info_image', '47'),
(1072, 215, '_info_image', 'field_608d81dcb5658'),
(1073, 215, 'info', ''),
(1074, 215, '_info', 'field_608d7a7854dd7'),
(1075, 215, 'info_vacation_or_not', 'Available'),
(1076, 215, '_info_vacation_or_not', 'field_608d84a97f343'),
(1077, 215, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(1078, 215, '_info_description', 'field_608d8647d7e35'),
(1079, 215, 'info_download', '192'),
(1080, 215, '_info_download', 'field_608d86af9aacf'),
(1081, 215, 'skills_skills1_name', 'Wordpress'),
(1082, 215, '_skills_skills1_name', 'field_608d89cecdbb7'),
(1083, 215, 'skills_skills1_percentage', '70'),
(1084, 215, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(1085, 215, 'skills_skills1', ''),
(1086, 215, '_skills_skills1', 'field_608d8910cdbb6'),
(1087, 215, 'skills_skills2_name', 'JavaScipt'),
(1088, 215, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(1089, 215, 'skills_skills2_percentage', '53'),
(1090, 215, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(1091, 215, 'skills_skills2', ''),
(1092, 215, '_skills_skills2', 'field_608d8ad2cdbb9'),
(1093, 215, 'skills_skills3_name', 'Drupal'),
(1094, 215, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(1095, 215, 'skills_skills3_percentage', '30'),
(1096, 215, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(1097, 215, 'skills_skills3', ''),
(1098, 215, '_skills_skills3', 'field_608d8c96cdbbc'),
(1099, 215, 'skills_skills4_name', 'HTML & CSS '),
(1100, 215, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(1101, 215, 'skills_skills4_percentage', '89'),
(1102, 215, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(1103, 215, 'skills_skills4', ''),
(1104, 215, '_skills_skills4', 'field_608d8ca1cdbbf'),
(1105, 215, 'skills_skills5_name', 'PHP & MySQL'),
(1106, 215, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(1107, 215, 'skills_skills5_percentage', '95'),
(1108, 215, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(1109, 215, 'skills_skills5', ''),
(1110, 215, '_skills_skills5', 'field_608d8cabcdbc2'),
(1111, 215, 'skills_skills6_name', 'Photoshop'),
(1112, 215, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(1113, 215, 'skills_skills6_percentage', '18'),
(1114, 215, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(1115, 215, 'skills_skills6', ''),
(1116, 215, '_skills_skills6', 'field_608d8cbacdbc5'),
(1117, 215, 'skills', ''),
(1118, 215, '_skills', 'field_608d88f5cdbb5'),
(1119, 216, '_wp_attached_file', '2021/05/gfdgs.png'),
(1120, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1475;s:6:\"height\";i:1024;s:4:\"file\";s:17:\"2021/05/gfdgs.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1121, 1, '_wp_trash_meta_status', 'private'),
(1122, 1, '_wp_trash_meta_time', '1619890529'),
(1123, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(1124, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(1125, 217, '_edit_lock', '1619890396:1'),
(1126, 218, 'name', 'Mipam Guillot'),
(1127, 218, '_name', 'field_608d7a7854dd7'),
(1128, 218, 'work', 'Web Developper Student'),
(1129, 218, '_work', 'field_608d7a9154dd8'),
(1130, 218, 'age', '21'),
(1131, 218, '_age', 'field_608d7aaa54dd9'),
(1132, 218, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(1133, 218, '_adress', 'field_608d7ad154dda'),
(1134, 218, 'email', 'contact@mipam.ch'),
(1135, 218, '_email', 'field_608d7ae254ddb'),
(1136, 218, 'phone', '791059375'),
(1137, 218, '_phone', 'field_608d7aea54ddc'),
(1138, 218, 'freelance', '20210513'),
(1139, 218, '_freelance', 'field_608d7b1a54ddd'),
(1140, 218, 'vacation', '20210531'),
(1141, 218, '_vacation', 'field_608d7b4854dde'),
(1142, 218, 'image', '47'),
(1143, 218, '_image', 'field_608d7c17d070e'),
(1144, 218, 'info_name', 'Mipam Guillot'),
(1145, 218, '_info_name', 'field_608d8123b5650'),
(1146, 218, 'info_work', 'Student Developper'),
(1147, 218, '_info_work', 'field_608d8144b5651'),
(1148, 218, 'info_age', '21'),
(1149, 218, '_info_age', 'field_608d8152b5652'),
(1150, 218, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(1151, 218, '_info_adress', 'field_608d815bb5653'),
(1152, 218, 'info_email', 'contact@mipam.ch'),
(1153, 218, '_info_email', 'field_608d8167b5654'),
(1154, 218, 'info_phone', '+41 79 105 93 75'),
(1155, 218, '_info_phone', 'field_608d8184b5655'),
(1156, 218, 'info_freelance', '20210516'),
(1157, 218, '_info_freelance', 'field_608d81a9b5656'),
(1158, 218, 'info_vacation', '20210522'),
(1159, 218, '_info_vacation', 'field_608d81c2b5657'),
(1160, 218, 'info_image', '47'),
(1161, 218, '_info_image', 'field_608d81dcb5658'),
(1162, 218, 'info', ''),
(1163, 218, '_info', 'field_608d7a7854dd7'),
(1164, 218, 'info_vacation_or_not', 'Available'),
(1165, 218, '_info_vacation_or_not', 'field_608d84a97f343'),
(1166, 218, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(1167, 218, '_info_description', 'field_608d8647d7e35'),
(1168, 218, 'info_download', '192'),
(1169, 218, '_info_download', 'field_608d86af9aacf'),
(1170, 218, 'skills_skills1_name', 'Wordpress'),
(1171, 218, '_skills_skills1_name', 'field_608d89cecdbb7'),
(1172, 218, 'skills_skills1_percentage', '70'),
(1173, 218, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(1174, 218, 'skills_skills1', ''),
(1175, 218, '_skills_skills1', 'field_608d8910cdbb6'),
(1176, 218, 'skills_skills2_name', 'JavaScipt'),
(1177, 218, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(1178, 218, 'skills_skills2_percentage', '53'),
(1179, 218, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(1180, 218, 'skills_skills2', ''),
(1181, 218, '_skills_skills2', 'field_608d8ad2cdbb9'),
(1182, 218, 'skills_skills3_name', 'Drupal'),
(1183, 218, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(1184, 218, 'skills_skills3_percentage', '30'),
(1185, 218, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(1186, 218, 'skills_skills3', ''),
(1187, 218, '_skills_skills3', 'field_608d8c96cdbbc'),
(1188, 218, 'skills_skills4_name', 'HTML & CSS '),
(1189, 218, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(1190, 218, 'skills_skills4_percentage', '89'),
(1191, 218, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(1192, 218, 'skills_skills4', ''),
(1193, 218, '_skills_skills4', 'field_608d8ca1cdbbf'),
(1194, 218, 'skills_skills5_name', 'PHP & MySQL'),
(1195, 218, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(1196, 218, 'skills_skills5_percentage', '95'),
(1197, 218, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(1198, 218, 'skills_skills5', ''),
(1199, 218, '_skills_skills5', 'field_608d8cabcdbc2'),
(1200, 218, 'skills_skills6_name', 'Photoshop'),
(1201, 218, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(1202, 218, 'skills_skills6_percentage', '18'),
(1203, 218, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(1204, 218, 'skills_skills6', ''),
(1205, 218, '_skills_skills6', 'field_608d8cbacdbc5'),
(1206, 218, 'skills', ''),
(1207, 218, '_skills', 'field_608d88f5cdbb5'),
(1212, 224, '_edit_lock', '1619988823:1'),
(1215, 224, '_thumbnail_id', '88'),
(1216, 21, '_wp_trash_meta_status', 'draft'),
(1217, 21, '_wp_trash_meta_time', '1619905002'),
(1218, 21, '_wp_desired_post_slug', 'php-wordpress-test'),
(1221, 88, '_edit_lock', '1619905327:1'),
(1222, 88, '_wp_attachment_image_alt', 'PHOTOGRAPHY'),
(1223, 88, '_edit_last', '1'),
(1224, 98, '_wp_attachment_image_alt', 'BRIDGE'),
(1225, 228, '_edit_lock', '1619908597:1'),
(1226, 229, '_edit_lock', '1619908476:1'),
(1227, 230, '_edit_lock', '1619955331:1'),
(1228, 231, '_edit_lock', '1619955542:1'),
(1229, 232, '_wp_trash_meta_status', 'publish'),
(1230, 232, '_wp_trash_meta_time', '1619955635'),
(1231, 233, '_wp_trash_meta_status', 'publish'),
(1232, 233, '_wp_trash_meta_time', '1619955658'),
(1233, 234, '_wp_trash_meta_status', 'publish'),
(1234, 234, '_wp_trash_meta_time', '1619956152'),
(1235, 235, '_wp_trash_meta_status', 'publish'),
(1236, 235, '_wp_trash_meta_time', '1619956825'),
(1237, 241, '_edit_last', '1'),
(1238, 241, '_edit_lock', '1619980251:1'),
(1239, 242, '_edit_last', '1'),
(1240, 242, '_edit_lock', '1619958704:1'),
(1241, 241, 'work_work_title', 'Full Stack developer'),
(1242, 241, '_work_work_title', 'field_608e98cd66571'),
(1243, 241, 'work_year_begin', '20140502'),
(1244, 241, '_work_year_begin', 'field_608e98d966572'),
(1245, 241, 'work_year_finish', '20160521'),
(1246, 241, '_work_year_finish', 'field_608e990a66573'),
(1247, 241, 'work', 'Full Stack developer'),
(1248, 241, '_work', 'field_608e989566570'),
(1249, 248, '_edit_last', '1'),
(1250, 248, '_edit_lock', '1619980090:1'),
(1251, 248, 'work_work_title', 'WEB DEVELOPER'),
(1252, 248, '_work_work_title', 'field_608e98cd66571'),
(1253, 248, 'work_year_begin', '20120511'),
(1254, 248, '_work_year_begin', 'field_608e98d966572'),
(1255, 248, 'work_year_finish', '20140515'),
(1256, 248, '_work_year_finish', 'field_608e990a66573'),
(1257, 248, 'work', 'Web Developer'),
(1258, 248, '_work', 'field_608e989566570'),
(1259, 248, 'date_work_begin', '20110512'),
(1260, 248, '_date_work_begin', 'field_608e9afcafa69'),
(1261, 248, 'date_work_finish', '20140507'),
(1262, 248, '_date_work_finish', 'field_608e9b10afa6a'),
(1263, 241, 'date_work_begin', '20030515'),
(1264, 241, '_date_work_begin', 'field_608e9afcafa69'),
(1265, 241, 'date_work_finish', '20130516'),
(1266, 241, '_date_work_finish', 'field_608e9b10afa6a'),
(1267, 253, '_edit_lock', '1619961247:1'),
(1268, 253, '_wp_trash_meta_status', 'publish'),
(1269, 253, '_wp_trash_meta_time', '1619961254'),
(1278, 140, '_wp_old_date', '2021-04-13'),
(1279, 259, '_edit_lock', '1619972037:1'),
(1280, 260, '_edit_lock', '1619976403:1'),
(1283, 260, '_edit_last', '1'),
(1286, 260, 'duration', '4545'),
(1287, 260, '_duration', 'field_60756dbade845'),
(1288, 260, 'note_personnelle', '0'),
(1289, 260, '_note_personnelle', 'field_60756dedde846'),
(1290, 260, 'personel', ''),
(1291, 260, '_personel', 'field_60756e13de847'),
(1292, 260, 'bande_annonce', ''),
(1293, 260, '_bande_annonce', 'field_60756e8e84979'),
(1294, 262, 'duration', '4545'),
(1295, 262, '_duration', 'field_60756dbade845'),
(1296, 262, 'note_personnelle', '0'),
(1297, 262, '_note_personnelle', 'field_60756dedde846'),
(1298, 262, 'personel', ''),
(1299, 262, '_personel', 'field_60756e13de847'),
(1300, 262, 'bande_annonce', 'https://www.youtube.com/watch?v=XwqXshhQLIg'),
(1301, 262, '_bande_annonce', 'field_60756e8e84979'),
(1304, 263, 'duration', '4545'),
(1305, 263, '_duration', 'field_60756dbade845'),
(1306, 263, 'note_personnelle', '0'),
(1307, 263, '_note_personnelle', 'field_60756dedde846'),
(1308, 263, 'personel', ''),
(1309, 263, '_personel', 'field_60756e13de847'),
(1310, 263, 'bande_annonce', ''),
(1311, 263, '_bande_annonce', 'field_60756e8e84979'),
(1312, 260, 'fifu_image_url', 'https://www.youtube.com/watch?v=XwqXshhQLIg'),
(1313, 260, 'fifu_image_alt', 'khjk'),
(1315, 264, '_wp_attached_file', 'https://www.youtube.com/watch?v=XwqXshhQLIg'),
(1316, 264, '_wp_attachment_image_alt', 'khjk'),
(1321, 269, '_wp_trash_meta_status', 'publish'),
(1322, 269, '_wp_trash_meta_time', '1619974302'),
(1323, 270, '_wp_trash_meta_status', 'publish'),
(1324, 270, '_wp_trash_meta_time', '1619974382'),
(1325, 271, '_edit_last', '1'),
(1326, 271, '_edit_lock', '1619976497:1'),
(1331, 260, 'video', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=23'),
(1332, 260, '_video', 'field_608eda27e71f8'),
(1333, 273, 'duration', '4545'),
(1334, 273, '_duration', 'field_60756dbade845'),
(1335, 273, 'note_personnelle', '0'),
(1336, 273, '_note_personnelle', 'field_60756dedde846'),
(1337, 273, 'personel', ''),
(1338, 273, '_personel', 'field_60756e13de847'),
(1339, 273, 'bande_annonce', ''),
(1340, 273, '_bande_annonce', 'field_60756e8e84979'),
(1341, 273, 'video', ''),
(1342, 273, '_video', 'field_608eda27e71f8'),
(1345, 274, 'duration', '4545'),
(1346, 274, '_duration', 'field_60756dbade845'),
(1347, 274, 'note_personnelle', '0'),
(1348, 274, '_note_personnelle', 'field_60756dedde846'),
(1349, 274, 'personel', ''),
(1350, 274, '_personel', 'field_60756e13de847'),
(1351, 274, 'bande_annonce', ''),
(1352, 274, '_bande_annonce', 'field_60756e8e84979'),
(1353, 274, 'video', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=23'),
(1354, 274, '_video', 'field_608eda27e71f8'),
(1365, 260, 'video_embed', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=24'),
(1366, 260, '_video_embed', 'field_608eda27e71f8'),
(1367, 275, 'duration', '4545'),
(1368, 275, '_duration', 'field_60756dbade845'),
(1369, 275, 'note_personnelle', '0'),
(1370, 275, '_note_personnelle', 'field_60756dedde846'),
(1371, 275, 'personel', ''),
(1372, 275, '_personel', 'field_60756e13de847'),
(1373, 275, 'bande_annonce', ''),
(1374, 275, '_bande_annonce', 'field_60756e8e84979'),
(1375, 275, 'video', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=23'),
(1376, 275, '_video', 'field_608eda27e71f8'),
(1377, 275, 'video_embed', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=24'),
(1378, 275, '_video_embed', 'field_608eda27e71f8'),
(1381, 276, 'duration', '4545'),
(1382, 276, '_duration', 'field_60756dbade845'),
(1383, 276, 'note_personnelle', '0'),
(1384, 276, '_note_personnelle', 'field_60756dedde846'),
(1385, 276, 'personel', ''),
(1386, 276, '_personel', 'field_60756e13de847'),
(1387, 276, 'bande_annonce', ''),
(1388, 276, '_bande_annonce', 'field_60756e8e84979'),
(1389, 276, 'video', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=23'),
(1390, 276, '_video', 'field_608eda27e71f8'),
(1391, 276, 'video_embed', 'https://www.youtube.com/watch?v=2yCJjsxxNQw&list=RDCMUCrGZCgKfpPANtEG0bHESUOA&index=24'),
(1392, 276, '_video_embed', 'field_608eda27e71f8'),
(1395, 140, '_edit_last', '1'),
(1398, 140, 'video_embed', ''),
(1399, 140, '_video_embed', 'field_608eda27e71f8'),
(1400, 268, 'video_embed', ''),
(1401, 268, '_video_embed', 'field_608eda27e71f8'),
(1402, 248, 'work_title', 'Web developper'),
(1403, 248, '_work_title', 'field_608e989566570'),
(1404, 241, 'work_title', 'web developper'),
(1405, 241, '_work_title', 'field_608e989566570'),
(1406, 277, '_edit_last', '1'),
(1407, 277, '_edit_lock', '1619992301:1'),
(1408, 277, 'work_title', 'SYSTEMS ANALYST / WEB DEVELOPER'),
(1409, 277, '_work_title', 'field_608e989566570'),
(1410, 277, 'date_work_begin', '20210513'),
(1411, 277, '_date_work_begin', 'field_608e9afcafa69'),
(1412, 277, 'date_work_finish', '20210512'),
(1413, 277, '_date_work_finish', 'field_608e9b10afa6a'),
(1414, 278, '_edit_last', '1'),
(1415, 278, '_edit_lock', '1619983558:1'),
(1416, 279, '_edit_lock', '1619983912:1'),
(1417, 279, '_edit_last', '1'),
(1418, 278, 'school', 'MIT&T'),
(1419, 278, '_school', 'field_608efcc8c4659'),
(1420, 278, 'date_edu_begin', '20070518'),
(1421, 278, '_date_edu_begin', 'field_608efcc8c80ef'),
(1422, 278, 'date_edu_finish', '20190516'),
(1423, 278, '_date_edu_finish', 'field_608efcc8cbb7c'),
(1424, 283, '_edit_last', '1'),
(1425, 283, '_edit_lock', '1619983596:1'),
(1426, 283, 'school', 'HARWARG UNIVERSITEY'),
(1427, 283, '_school', 'field_608efcc8c4659'),
(1428, 283, 'date_edu_begin', '20040513'),
(1429, 283, '_date_edu_begin', 'field_608efcc8c80ef'),
(1430, 283, 'date_edu_finish', '20190516'),
(1431, 283, '_date_edu_finish', 'field_608efcc8cbb7c'),
(1432, 284, '_edit_last', '1'),
(1433, 284, '_edit_lock', '1619984236:1'),
(1434, 284, 'school', 'STANFOORB UNIVERSITEY'),
(1435, 284, '_school', 'field_608efcc8c4659'),
(1436, 284, 'date_edu_begin', '20130509'),
(1437, 284, '_date_edu_begin', 'field_608efcc8c80ef'),
(1438, 284, 'date_edu_finish', '20290512'),
(1439, 284, '_date_edu_finish', 'field_608efcc8cbb7c'),
(1440, 287, '_edit_last', '1'),
(1441, 287, '_edit_lock', '1619986381:1'),
(1442, 291, '_edit_last', '1'),
(1443, 291, 'person_name', 'Alexander Jokovich'),
(1444, 291, '_person_name', 'field_608f005577d54'),
(1445, 291, 'person_title', 'MODERN LLC , HR'),
(1446, 291, '_person_title', 'field_608f005e77d55'),
(1447, 291, 'profile_picture', '44'),
(1448, 291, '_profile_picture', 'field_608f006977d56'),
(1449, 291, '_edit_lock', '1619985085:1'),
(1450, 292, '_edit_last', '1'),
(1451, 292, 'person_name', 'Mipam Guillot'),
(1452, 292, '_person_name', 'field_608f005577d54'),
(1453, 292, 'person_title', 'CEO'),
(1454, 292, '_person_title', 'field_608f005e77d55'),
(1455, 292, 'profile_picture', '44'),
(1456, 292, '_profile_picture', 'field_608f006977d56'),
(1457, 292, '_edit_lock', '1619984931:1'),
(1458, 293, '_edit_last', '1'),
(1459, 293, '_edit_lock', '1619984974:1'),
(1460, 293, 'person_name', 'Jack'),
(1461, 293, '_person_name', 'field_608f005577d54'),
(1462, 293, 'person_title', 'test'),
(1463, 293, '_person_title', 'field_608f005e77d55'),
(1464, 293, 'profile_picture', '44'),
(1465, 293, '_profile_picture', 'field_608f006977d56'),
(1466, 150, 'text_section_title_section', 'Edit section'),
(1467, 150, '_text_section_title_section', 'field_608f03d787369'),
(1468, 150, 'text_section_text_section', 'Hello! I’m Robert Smith and this is custom editor section. You can add here any text or \"Strikethrough\" text and even you can add bulleted or numbered text and even you will be able to add blockquot text. You can align this text to left/right/center. One of the most interesting options is to divide this section to \"One half\" \"One Third\" and \"One Fourth\". You can use this for Honors or Achievments or Awards sections. You can insert images and photos right in this editor!'),
(1469, 150, '_text_section_text_section', 'field_608f03e28736a'),
(1470, 150, 'text_section', 'Hello! I’m Robert Smith and this is custom editor section. You can add here any text or \"Strikethrough\" text and even you can add bulleted or numbered text and even you will be able to add blockquot text. You can align this text to left/right/center. One of the most interesting options is to divide this section to \"One half\" \"One Third\" and \"One Fourth\". You can use this for Honors or Achievments or Awards sections. You can insert images and photos right in this editor!'),
(1471, 150, '_text_section', 'field_608f1d0be4894'),
(1472, 297, 'name', 'Mipam Guillot'),
(1473, 297, '_name', 'field_608d7a7854dd7'),
(1474, 297, 'work', 'Web Developper Student'),
(1475, 297, '_work', 'field_608d7a9154dd8'),
(1476, 297, 'age', '21'),
(1477, 297, '_age', 'field_608d7aaa54dd9'),
(1478, 297, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(1479, 297, '_adress', 'field_608d7ad154dda'),
(1480, 297, 'email', 'contact@mipam.ch'),
(1481, 297, '_email', 'field_608d7ae254ddb'),
(1482, 297, 'phone', '791059375'),
(1483, 297, '_phone', 'field_608d7aea54ddc'),
(1484, 297, 'freelance', '20210513'),
(1485, 297, '_freelance', 'field_608d7b1a54ddd'),
(1486, 297, 'vacation', '20210531'),
(1487, 297, '_vacation', 'field_608d7b4854dde'),
(1488, 297, 'image', '47'),
(1489, 297, '_image', 'field_608d7c17d070e'),
(1490, 297, 'info_name', 'Mipam Guillot'),
(1491, 297, '_info_name', 'field_608d8123b5650'),
(1492, 297, 'info_work', 'Student Developper'),
(1493, 297, '_info_work', 'field_608d8144b5651'),
(1494, 297, 'info_age', '21'),
(1495, 297, '_info_age', 'field_608d8152b5652'),
(1496, 297, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(1497, 297, '_info_adress', 'field_608d815bb5653'),
(1498, 297, 'info_email', 'contact@mipam.ch'),
(1499, 297, '_info_email', 'field_608d8167b5654'),
(1500, 297, 'info_phone', '+41 79 105 93 75'),
(1501, 297, '_info_phone', 'field_608d8184b5655'),
(1502, 297, 'info_freelance', '20210516'),
(1503, 297, '_info_freelance', 'field_608d81a9b5656'),
(1504, 297, 'info_vacation', '20210522'),
(1505, 297, '_info_vacation', 'field_608d81c2b5657'),
(1506, 297, 'info_image', '47'),
(1507, 297, '_info_image', 'field_608d81dcb5658'),
(1508, 297, 'info', ''),
(1509, 297, '_info', 'field_608d7a7854dd7'),
(1510, 297, 'info_vacation_or_not', 'Available'),
(1511, 297, '_info_vacation_or_not', 'field_608d84a97f343'),
(1512, 297, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(1513, 297, '_info_description', 'field_608d8647d7e35'),
(1514, 297, 'info_download', '192'),
(1515, 297, '_info_download', 'field_608d86af9aacf'),
(1516, 297, 'skills_skills1_name', 'Wordpress'),
(1517, 297, '_skills_skills1_name', 'field_608d89cecdbb7'),
(1518, 297, 'skills_skills1_percentage', '70'),
(1519, 297, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(1520, 297, 'skills_skills1', ''),
(1521, 297, '_skills_skills1', 'field_608d8910cdbb6'),
(1522, 297, 'skills_skills2_name', 'JavaScipt'),
(1523, 297, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(1524, 297, 'skills_skills2_percentage', '53'),
(1525, 297, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(1526, 297, 'skills_skills2', ''),
(1527, 297, '_skills_skills2', 'field_608d8ad2cdbb9'),
(1528, 297, 'skills_skills3_name', 'Drupal'),
(1529, 297, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(1530, 297, 'skills_skills3_percentage', '30'),
(1531, 297, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(1532, 297, 'skills_skills3', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1533, 297, '_skills_skills3', 'field_608d8c96cdbbc'),
(1534, 297, 'skills_skills4_name', 'HTML & CSS '),
(1535, 297, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(1536, 297, 'skills_skills4_percentage', '89'),
(1537, 297, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(1538, 297, 'skills_skills4', ''),
(1539, 297, '_skills_skills4', 'field_608d8ca1cdbbf'),
(1540, 297, 'skills_skills5_name', 'PHP & MySQL'),
(1541, 297, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(1542, 297, 'skills_skills5_percentage', '95'),
(1543, 297, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(1544, 297, 'skills_skills5', ''),
(1545, 297, '_skills_skills5', 'field_608d8cabcdbc2'),
(1546, 297, 'skills_skills6_name', 'Photoshop'),
(1547, 297, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(1548, 297, 'skills_skills6_percentage', '18'),
(1549, 297, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(1550, 297, 'skills_skills6', ''),
(1551, 297, '_skills_skills6', 'field_608d8cbacdbc5'),
(1552, 297, 'skills', ''),
(1553, 297, '_skills', 'field_608d88f5cdbb5'),
(1554, 297, 'text_section_title_section', 'Edit section'),
(1555, 297, '_text_section_title_section', 'field_608f03d787369'),
(1556, 297, 'text_section_text_section', 'Hello! I’m Robert Smith and this is custom editor section. You can add here any text or \"Strikethrough\" text and even you can add bulleted or numbered text and even you will be able to add blockquot text. You can align this text to left/right/center. One of the most interesting options is to divide this section to \"One half\" \"One Third\" and \"One Fourth\". You can use this for Honors or Achievments or Awards sections. You can insert images and photos right in this editor!'),
(1557, 297, '_text_section_text_section', 'field_608f03e28736a'),
(1558, 297, 'text_section', ''),
(1559, 297, '_text_section', 'field_608f036e9e7fe'),
(1560, 299, '_edit_last', '1'),
(1561, 299, '_edit_lock', '1619986366:1'),
(1562, 299, '_thumbnail_id', '88'),
(1563, 300, '_edit_last', '1'),
(1564, 300, '_edit_lock', '1619986423:1'),
(1565, 299, 'second_image', '89'),
(1566, 299, '_second_image', 'field_608f07a4bcf03'),
(1567, 299, 'category', 'PHOTOGRAPHY'),
(1568, 299, '_category', 'field_608f07e1bcf04'),
(1569, 299, 'video', ''),
(1570, 299, '_video', 'field_608f07efbcf05'),
(1571, 299, 'link', 'http://bit.ly/1YtB8he'),
(1572, 299, '_link', 'field_608f07f3bcf06'),
(1573, 306, '_edit_last', '1'),
(1574, 306, '_edit_lock', '1619986566:1'),
(1575, 306, '_thumbnail_id', '94'),
(1576, 306, 'second_image', ''),
(1577, 306, '_second_image', 'field_608f07a4bcf03'),
(1578, 306, 'category', 'BRIDGE'),
(1579, 306, '_category', 'field_608f07e1bcf04'),
(1580, 306, 'video', 'https://vimeo.com/118244244'),
(1581, 306, '_video', 'field_608f07efbcf05'),
(1582, 306, 'link', 'http://bit.ly/1YtB8he'),
(1583, 306, '_link', 'field_608f07f3bcf06'),
(1584, 307, '_edit_lock', '1619988319:1'),
(1585, 307, '_wp_trash_meta_status', 'publish'),
(1586, 307, '_wp_trash_meta_time', '1619988351'),
(1587, 309, '_menu_item_type', 'custom'),
(1588, 309, '_menu_item_menu_item_parent', '0'),
(1589, 309, '_menu_item_object_id', '309'),
(1590, 309, '_menu_item_object', 'custom'),
(1591, 309, '_menu_item_target', ''),
(1592, 309, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1593, 309, '_menu_item_xfn', ''),
(1594, 309, '_menu_item_url', '#skills'),
(1595, 308, '_wp_trash_meta_status', 'publish'),
(1596, 308, '_wp_trash_meta_time', '1619988578'),
(1597, 310, '_edit_lock', '1619988694:1'),
(1598, 311, '_menu_item_type', 'custom'),
(1599, 311, '_menu_item_menu_item_parent', '0'),
(1600, 311, '_menu_item_object_id', '311'),
(1601, 311, '_menu_item_object', 'custom'),
(1602, 311, '_menu_item_target', ''),
(1603, 311, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1604, 311, '_menu_item_xfn', ''),
(1605, 311, '_menu_item_url', '#portfolio'),
(1606, 312, '_menu_item_type', 'custom'),
(1607, 312, '_menu_item_menu_item_parent', '0'),
(1608, 312, '_menu_item_object_id', '312'),
(1609, 312, '_menu_item_object', 'custom'),
(1610, 312, '_menu_item_target', ''),
(1611, 312, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1612, 312, '_menu_item_xfn', ''),
(1613, 312, '_menu_item_url', '#experience'),
(1614, 151, '_wp_old_date', '2021-05-01'),
(1615, 313, '_menu_item_type', 'custom'),
(1616, 313, '_menu_item_menu_item_parent', '0'),
(1617, 313, '_menu_item_object_id', '313'),
(1618, 313, '_menu_item_object', 'custom'),
(1619, 313, '_menu_item_target', ''),
(1620, 313, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1621, 313, '_menu_item_xfn', ''),
(1622, 313, '_menu_item_url', '#references'),
(1623, 314, '_menu_item_type', 'custom'),
(1624, 314, '_menu_item_menu_item_parent', '0'),
(1625, 314, '_menu_item_object_id', '314'),
(1626, 314, '_menu_item_object', 'custom'),
(1627, 314, '_menu_item_target', ''),
(1628, 314, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1629, 314, '_menu_item_xfn', ''),
(1630, 314, '_menu_item_url', '#blog'),
(1631, 315, '_menu_item_type', 'post_type'),
(1632, 315, '_menu_item_menu_item_parent', '314'),
(1633, 315, '_menu_item_object_id', '224'),
(1634, 315, '_menu_item_object', 'post'),
(1635, 315, '_menu_item_target', ''),
(1636, 315, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1637, 315, '_menu_item_xfn', ''),
(1638, 315, '_menu_item_url', ''),
(1639, 316, '_menu_item_type', 'custom'),
(1640, 316, '_menu_item_menu_item_parent', '0'),
(1641, 316, '_menu_item_object_id', '316'),
(1642, 316, '_menu_item_object', 'custom'),
(1643, 316, '_menu_item_target', ''),
(1644, 316, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1645, 316, '_menu_item_xfn', ''),
(1646, 316, '_menu_item_url', '#calendar'),
(1647, 317, '_menu_item_type', 'custom'),
(1648, 317, '_menu_item_menu_item_parent', '0'),
(1649, 317, '_menu_item_object_id', '317'),
(1650, 317, '_menu_item_object', 'custom'),
(1651, 317, '_menu_item_target', ''),
(1652, 317, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1653, 317, '_menu_item_xfn', ''),
(1654, 317, '_menu_item_url', '#contact'),
(1655, 310, '_wp_trash_meta_status', 'publish'),
(1656, 310, '_wp_trash_meta_time', '1619988735'),
(1657, 224, '_edit_last', '1'),
(1660, 224, '_wp_trash_meta_status', 'publish'),
(1661, 224, '_wp_trash_meta_time', '1619988825'),
(1662, 224, '_wp_desired_post_slug', 'street-photography'),
(1663, 260, '_wp_trash_meta_status', 'publish'),
(1664, 260, '_wp_trash_meta_time', '1619990005'),
(1665, 260, '_wp_desired_post_slug', 'khjk'),
(1666, 318, '_edit_lock', '1619990128:1'),
(1669, 318, '_edit_last', '1'),
(1670, 318, '_pingme', '1'),
(1671, 318, '_encloseme', '1'),
(1672, 318, 'video_embed', 'https://vimeo.com/90180971'),
(1673, 318, '_video_embed', 'field_608eda27e71f8'),
(1674, 320, 'video_embed', 'https://vimeo.com/90180971'),
(1675, 320, '_video_embed', 'field_608eda27e71f8'),
(1676, 150, 'title_section', 'Text Section'),
(1677, 150, '_title_section', 'field_608f036e9e7fe'),
(1678, 322, 'name', 'Mipam Guillot'),
(1679, 322, '_name', 'field_608d7a7854dd7'),
(1680, 322, 'work', 'Web Developper Student'),
(1681, 322, '_work', 'field_608d7a9154dd8'),
(1682, 322, 'age', '21'),
(1683, 322, '_age', 'field_608d7aaa54dd9'),
(1684, 322, 'adress', 'Chemin de Mancy, 1222 Vésenaz'),
(1685, 322, '_adress', 'field_608d7ad154dda'),
(1686, 322, 'email', 'contact@mipam.ch'),
(1687, 322, '_email', 'field_608d7ae254ddb'),
(1688, 322, 'phone', '791059375'),
(1689, 322, '_phone', 'field_608d7aea54ddc'),
(1690, 322, 'freelance', '20210513'),
(1691, 322, '_freelance', 'field_608d7b1a54ddd'),
(1692, 322, 'vacation', '20210531'),
(1693, 322, '_vacation', 'field_608d7b4854dde'),
(1694, 322, 'image', '47'),
(1695, 322, '_image', 'field_608d7c17d070e'),
(1696, 322, 'info_name', 'Mipam Guillot'),
(1697, 322, '_info_name', 'field_608d8123b5650'),
(1698, 322, 'info_work', 'Student Developper'),
(1699, 322, '_info_work', 'field_608d8144b5651'),
(1700, 322, 'info_age', '21'),
(1701, 322, '_info_age', 'field_608d8152b5652'),
(1702, 322, 'info_adress', '24058, Belgium, Brussels, Liutte 27, BE'),
(1703, 322, '_info_adress', 'field_608d815bb5653'),
(1704, 322, 'info_email', 'contact@mipam.ch'),
(1705, 322, '_info_email', 'field_608d8167b5654'),
(1706, 322, 'info_phone', '+41 79 105 93 75'),
(1707, 322, '_info_phone', 'field_608d8184b5655'),
(1708, 322, 'info_freelance', '20210516'),
(1709, 322, '_info_freelance', 'field_608d81a9b5656'),
(1710, 322, 'info_vacation', '20210522'),
(1711, 322, '_info_vacation', 'field_608d81c2b5657'),
(1712, 322, 'info_image', '47'),
(1713, 322, '_info_image', 'field_608d81dcb5658'),
(1714, 322, 'info', ''),
(1715, 322, '_info', 'field_608d7a7854dd7'),
(1716, 322, 'info_vacation_or_not', 'Available'),
(1717, 322, '_info_vacation_or_not', 'field_608d84a97f343'),
(1718, 322, 'info_description', 'Hello! I’m Robert Smith. Senior Web Developer specializing in front end development. Experienced with all stages of the development cycle for dynamic web projects. Well-versed in numerous programming languages including JavaScript, SQL, and C. Stng background in project management and customer relations.'),
(1719, 322, '_info_description', 'field_608d8647d7e35'),
(1720, 322, 'info_download', '192'),
(1721, 322, '_info_download', 'field_608d86af9aacf'),
(1722, 322, 'skills_skills1_name', 'Wordpress'),
(1723, 322, '_skills_skills1_name', 'field_608d89cecdbb7'),
(1724, 322, 'skills_skills1_percentage', '70'),
(1725, 322, '_skills_skills1_percentage', 'field_608d8a97cdbb8'),
(1726, 322, 'skills_skills1', ''),
(1727, 322, '_skills_skills1', 'field_608d8910cdbb6'),
(1728, 322, 'skills_skills2_name', 'JavaScipt'),
(1729, 322, '_skills_skills2_name', 'field_608d8ad2cdbba'),
(1730, 322, 'skills_skills2_percentage', '53'),
(1731, 322, '_skills_skills2_percentage', 'field_608d8ad2cdbbb'),
(1732, 322, 'skills_skills2', ''),
(1733, 322, '_skills_skills2', 'field_608d8ad2cdbb9'),
(1734, 322, 'skills_skills3_name', 'Drupal'),
(1735, 322, '_skills_skills3_name', 'field_608d8c96cdbbd'),
(1736, 322, 'skills_skills3_percentage', '30'),
(1737, 322, '_skills_skills3_percentage', 'field_608d8c96cdbbe'),
(1738, 322, 'skills_skills3', ''),
(1739, 322, '_skills_skills3', 'field_608d8c96cdbbc'),
(1740, 322, 'skills_skills4_name', 'HTML & CSS '),
(1741, 322, '_skills_skills4_name', 'field_608d8ca1cdbc0'),
(1742, 322, 'skills_skills4_percentage', '89'),
(1743, 322, '_skills_skills4_percentage', 'field_608d8ca1cdbc1'),
(1744, 322, 'skills_skills4', ''),
(1745, 322, '_skills_skills4', 'field_608d8ca1cdbbf'),
(1746, 322, 'skills_skills5_name', 'PHP & MySQL'),
(1747, 322, '_skills_skills5_name', 'field_608d8cabcdbc3'),
(1748, 322, 'skills_skills5_percentage', '95'),
(1749, 322, '_skills_skills5_percentage', 'field_608d8cabcdbc4'),
(1750, 322, 'skills_skills5', ''),
(1751, 322, '_skills_skills5', 'field_608d8cabcdbc2'),
(1752, 322, 'skills_skills6_name', 'Photoshop'),
(1753, 322, '_skills_skills6_name', 'field_608d8cbacdbc6'),
(1754, 322, 'skills_skills6_percentage', '18'),
(1755, 322, '_skills_skills6_percentage', 'field_608d8cbacdbc7'),
(1756, 322, 'skills_skills6', ''),
(1757, 322, '_skills_skills6', 'field_608d8cbacdbc5'),
(1758, 322, 'skills', ''),
(1759, 322, '_skills', 'field_608d88f5cdbb5'),
(1760, 322, 'text_section_title_section', 'Edit section'),
(1761, 322, '_text_section_title_section', 'field_608f03d787369'),
(1762, 322, 'text_section_text_section', 'Hello! I’m Robert Smith and this is custom editor section. You can add here any text or \"Strikethrough\" text and even you can add bulleted or numbered text and even you will be able to add blockquot text. You can align this text to left/right/center. One of the most interesting options is to divide this section to \"One half\" \"One Third\" and \"One Fourth\". You can use this for Honors or Achievments or Awards sections. You can insert images and photos right in this editor!'),
(1763, 322, '_text_section_text_section', 'field_608f03e28736a'),
(1764, 322, 'text_section', 'Hello! I’m Robert Smith and this is custom editor section. You can add here any text or \"Strikethrough\" text and even you can add bulleted or numbered text and even you will be able to add blockquot text. You can align this text to left/right/center. One of the most interesting options is to divide this section to \"One half\" \"One Third\" and \"One Fourth\". You can use this for Honors or Achievments or Awards sections. You can insert images and photos right in this editor!'),
(1765, 322, '_text_section', 'field_608f1d0be4894'),
(1766, 322, 'title_section', 'Text Section'),
(1767, 322, '_title_section', 'field_608f036e9e7fe');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-12 15:59:59', '2021-04-12 13:59:59', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2021-05-01 19:35:29', '2021-05-01 17:35:29', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=1', 0, 'post', '', 1),
(5, 1, '2021-04-12 16:38:07', '2021-04-12 14:38:07', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-04-12 16:38:07', '2021-04-12 14:38:07', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-04-12 16:39:43', '2021-04-12 14:39:43', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2021-04-12 16:39:43', '2021-04-12 14:39:43', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-04-12 16:39:43', '2021-04-12 14:39:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'TEST', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2021-04-12 16:40:04', '2021-04-12 14:40:04', '', 0, 'http://localhost/site/WORDPRESS/wordpress/produit/album/', 0, 'product', '', 0),
(14, 1, '2021-04-12 16:44:53', '2021-04-12 14:44:53', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2021-04-12 16:44:53', '2021-04-12 14:44:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-04-12 16:50:22', '2021-04-12 14:50:22', '', 'Order &ndash; avril 12, 2021 @ 04:50  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_uw1CbEKpeqrfd', 'commande-apr-12-2021-0250-pm', '', '', '2021-04-12 16:50:22', '2021-04-12 14:50:22', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=shop_order&#038;p=17', 0, 'shop_order', '', 0),
(18, 1, '2021-04-12 16:58:52', '2021-04-12 14:58:52', '', 'Order &ndash; avril 12, 2021 @ 04:58  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_aKHyLs4STLDrI', 'commande-apr-12-2021-0258-pm', '', '', '2021-04-12 16:58:52', '2021-04-12 14:58:52', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=shop_order&#038;p=18', 0, 'shop_order', '', 0),
(19, 1, '2021-04-13 00:04:52', '2021-04-12 22:04:52', '', 'testests', '', 'publish', 'open', 'closed', '', 'testests', '', '', '2021-04-13 00:04:52', '2021-04-12 22:04:52', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=product&#038;p=19', 0, 'product', '', 0),
(21, 1, '2021-03-13 10:06:27', '2021-03-13 09:06:27', '<!-- wp:woocommerce/all-products {\"columns\":3,\"rows\":3,\"alignButtons\":false,\"contentVisibility\":{\"orderBy\":true},\"orderby\":\"date\",\"layoutConfig\":[[\"woocommerce/product-image\"],[\"woocommerce/product-title\"],[\"woocommerce/product-price\"],[\"woocommerce/product-rating\"],[\"woocommerce/product-button\"]]} -->\n<div class=\"wp-block-woocommerce-all-products wc-block-all-products\" data-attributes=\"{&quot;alignButtons&quot;:false,&quot;columns&quot;:3,&quot;contentVisibility&quot;:{&quot;orderBy&quot;:true},&quot;isPreview&quot;:false,&quot;layoutConfig&quot;:[[&quot;woocommerce/product-image&quot;],[&quot;woocommerce/product-title&quot;],[&quot;woocommerce/product-price&quot;],[&quot;woocommerce/product-rating&quot;],[&quot;woocommerce/product-button&quot;]],&quot;orderby&quot;:&quot;date&quot;,&quot;rows&quot;:3}\"></div>\n<!-- /wp:woocommerce/all-products -->', 'PHP WORDPRESS TEST', '', 'trash', 'open', 'open', '', 'php-wordpress-test__trashed', '', '', '2021-05-01 23:36:42', '2021-05-01 21:36:42', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2021-04-13 10:06:27', '2021-04-13 08:06:27', '<!-- wp:woocommerce/all-products {\"columns\":3,\"rows\":3,\"alignButtons\":false,\"contentVisibility\":{\"orderBy\":true},\"orderby\":\"date\",\"layoutConfig\":[[\"woocommerce/product-image\"],[\"woocommerce/product-title\"],[\"woocommerce/product-price\"],[\"woocommerce/product-rating\"],[\"woocommerce/product-button\"]]} -->\n<div class=\"wp-block-woocommerce-all-products wc-block-all-products\" data-attributes=\"{&quot;alignButtons&quot;:false,&quot;columns&quot;:3,&quot;contentVisibility&quot;:{&quot;orderBy&quot;:true},&quot;isPreview&quot;:false,&quot;layoutConfig&quot;:[[&quot;woocommerce/product-image&quot;],[&quot;woocommerce/product-title&quot;],[&quot;woocommerce/product-price&quot;],[&quot;woocommerce/product-rating&quot;],[&quot;woocommerce/product-button&quot;]],&quot;orderby&quot;:&quot;date&quot;,&quot;rows&quot;:3}\"></div>\n<!-- /wp:woocommerce/all-products -->', 'PHP WORDPRESS TEST', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-04-13 10:06:27', '2021-04-13 08:06:27', '', 21, 'http://localhost/site/WORDPRESS/wordpress/?p=22', 0, 'revision', '', 0),
(24, 1, '2021-04-13 11:23:21', '2021-04-13 09:23:21', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-13 11:23:21', '2021-04-13 09:23:21', '', 1, 'http://localhost/site/WORDPRESS/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-04-13 11:45:53', '2021-04-13 09:45:53', '{\n    \"mipam::nav_menu_locations[primary]\": {\n        \"value\": -3704492684010463000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 09:45:53\"\n    },\n    \"nav_menu[-3704492684010463000]\": {\n        \"value\": {\n            \"name\": \"test\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 09:45:53\"\n    },\n    \"nav_menu_item[-2121234049365823500]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -3704492684010463000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 09:45:53\"\n    },\n    \"nav_menu_item[-8132638576175217000]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Page d\\u2019accueil\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress/page-daccueil/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Page d\\u2019accueil\",\n            \"nav_menu_term_id\": -3704492684010463000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 09:45:53\"\n    },\n    \"nav_menu_item[-1207284635934998500]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Mon compte\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress/mon-compte/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Mon compte\",\n            \"nav_menu_term_id\": -3704492684010463000,\n            \"_invalid\": false,\n            \"type_label\": \"Page Mon compte\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 09:45:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25b08fa0-c1c0-473f-b249-0f352dd7b81f', '', '', '2021-04-13 11:45:53', '2021-04-13 09:45:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/13/25b08fa0-c1c0-473f-b249-0f352dd7b81f/', 0, 'customize_changeset', '', 0),
(26, 1, '2021-04-13 11:45:53', '2021-04-13 09:45:53', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-04-13 11:45:53', '2021-04-13 09:45:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/13/accueil/', 1, 'nav_menu_item', '', 0),
(29, 1, '2021-04-13 11:51:53', '2021-04-13 09:51:53', 'Two hardened criminals get into trouble with the US border patrol after meeting with a Mexican drug lord, and then revelations start to unfold.', '2 guns', '', 'publish', 'closed', 'closed', '', '2-guns', '', '', '2021-04-13 12:16:03', '2021-04-13 10:16:03', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=movie&#038;p=29', 0, 'movie', '', 0),
(30, 1, '2021-04-13 11:50:51', '2021-04-13 09:50:51', '', 'MV5BNTQ5MTgzNDg4OF5BMl5BanBnXkFtZTcwMjAyODEzOQ@@._V1_UX182_CR0,0,182,268_AL_', '', 'inherit', 'open', 'closed', '', 'mv5bntq5mtgzndg4of5bml5banbnxkftztcwmjayodezoq-_v1_ux182_cr00182268_al_', '', '', '2021-04-13 11:50:51', '2021-04-13 09:50:51', '', 29, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/MV5BNTQ5MTgzNDg4OF5BMl5BanBnXkFtZTcwMjAyODEzOQ@@._V1_UX182_CR00182268_AL_.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2021-04-13 12:10:43', '2021-04-13 10:10:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Parametre du film', 'parametre-du-film', 'acf-disabled', 'closed', 'closed', '', 'group_60756d825f491', '', '', '2021-05-02 18:48:30', '2021-05-02 16:48:30', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2021-04-13 12:10:42', '2021-04-13 10:10:42', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Temps de lecture', 'duration', 'publish', 'closed', 'closed', '', 'field_60756dbade845', '', '', '2021-04-13 12:10:42', '2021-04-13 10:10:42', '', 31, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2021-04-13 12:10:43', '2021-04-13 10:10:43', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:10;s:4:\"step\";s:3:\"0.1\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'note personnelle', 'note_personnelle', 'publish', 'closed', 'closed', '', 'field_60756dedde846', '', '', '2021-04-13 12:10:43', '2021-04-13 10:10:43', '', 31, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2021-04-13 12:10:43', '2021-04-13 10:10:43', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'commentaire personel', 'personel', 'publish', 'closed', 'closed', '', 'field_60756e13de847', '', '', '2021-04-13 12:13:12', '2021-04-13 10:13:12', '', 31, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=34', 2, 'acf-field', '', 0),
(35, 1, '2021-04-13 12:13:12', '2021-04-13 10:13:12', 'a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'bande annonce', 'bande_annonce', 'publish', 'closed', 'closed', '', 'field_60756e8e84979', '', '', '2021-04-13 12:13:12', '2021-04-13 10:13:12', '', 31, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=35', 3, 'acf-field', '', 0),
(37, 1, '2021-04-13 12:15:28', '2021-04-13 10:15:28', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'ef78804805e5bab9a778a9769e0d4746', '', '', '2021-04-13 12:15:28', '2021-04-13 10:15:28', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/13/ef78804805e5bab9a778a9769e0d4746/', 0, 'oembed_cache', '', 0),
(40, 1, '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 'image-alignment-150x1501', '', 'inherit', 'open', 'closed', '', 'image-alignment-150x1501', '', '', '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/image-alignment-150x1501-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 'image-alignment-300x2001', '', 'inherit', 'open', 'closed', '', 'image-alignment-300x2001', '', '', '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/image-alignment-300x2001-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 'image-alignment-580x3001', '', 'inherit', 'open', 'closed', '', 'image-alignment-580x3001', '', '', '2021-04-13 14:16:42', '2021-04-13 12:16:42', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/image-alignment-580x3001-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-04-13 14:16:43', '2021-04-13 12:16:43', '', 'image-alignment-1200x40021', '', 'inherit', 'open', 'closed', '', 'image-alignment-1200x40021', '', '', '2021-04-13 14:16:43', '2021-04-13 12:16:43', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/image-alignment-1200x40021-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-04-13 14:16:43', '2021-04-13 12:16:43', '', 'rs-avatar-60x60', '', 'inherit', 'open', 'closed', '', 'rs-avatar-60x60', '', '', '2021-05-02 21:49:03', '2021-05-02 19:49:03', '', 291, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-avatar-60x60-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-04-13 14:16:44', '2021-04-13 12:16:44', '', 'rs-calendar-cover', '', 'inherit', 'open', 'closed', '', 'rs-calendar-cover', '', '', '2021-04-13 14:16:44', '2021-04-13 12:16:44', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-calendar-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-04-13 14:16:44', '2021-04-13 12:16:44', '', 'rs-cover', '', 'inherit', 'open', 'closed', '', 'rs-cover', '', '', '2021-04-13 14:16:44', '2021-04-13 12:16:44', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-04-13 14:16:45', '2021-04-13 12:16:45', '', 'rs-photo-v1', '', 'inherit', 'open', 'closed', '', 'rs-photo-v1', '', '', '2021-05-01 18:15:26', '2021-05-01 16:15:26', '', 150, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-photo-v1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-04-13 14:16:45', '2021-04-13 12:16:45', '', 'rs-photo-v2', '', 'inherit', 'open', 'closed', '', 'rs-photo-v2', '', '', '2021-04-13 14:16:45', '2021-04-13 12:16:45', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-photo-v2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 'rs-thumb-509x319', '', 'inherit', 'open', 'closed', '', 'rs-thumb-509x319', '', '', '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 'rs-thumb-610x396', '', 'inherit', 'open', 'closed', '', 'rs-thumb-610x396', '', '', '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-610x396-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 'thumb-78x56-1', '', 'inherit', 'open', 'closed', '', 'thumb-78x56-1', '', '', '2021-04-13 14:16:46', '2021-04-13 12:16:46', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-78x56-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-04-13 14:16:47', '2021-04-13 12:16:47', '', 'thumb-78x56-2', '', 'inherit', 'open', 'closed', '', 'thumb-78x56-2', '', '', '2021-04-13 14:16:47', '2021-04-13 12:16:47', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-78x56-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-04-13 14:16:47', '2021-04-13 12:16:47', '', 'thumb-78x56-3', '', 'inherit', 'open', 'closed', '', 'thumb-78x56-3', '', '', '2021-04-13 14:16:47', '2021-04-13 12:16:47', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-78x56-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-04-13 14:16:48', '2021-04-13 12:16:48', '', 'thumb-449x286-1', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-1', '', '', '2021-04-13 14:16:48', '2021-04-13 12:16:48', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-04-13 14:16:48', '2021-04-13 12:16:48', '', 'thumb-449x286-2', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-2', '', '', '2021-04-13 14:16:48', '2021-04-13 12:16:48', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-04-13 14:16:49', '2021-04-13 12:16:49', '', 'thumb-449x286-3', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-3', '', '', '2021-04-13 14:16:49', '2021-04-13 12:16:49', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-04-13 14:16:49', '2021-04-13 12:16:49', '', 'thumb-449x286-4', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-4', '', '', '2021-04-13 14:16:49', '2021-04-13 12:16:49', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 'thumb-449x286-5', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-5', '', '', '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 'thumb-449x286-6', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-6', '', '', '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 'thumb-449x286-7', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-7', '', '', '2021-04-13 14:16:50', '2021-04-13 12:16:50', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-04-13 14:16:51', '2021-04-13 12:16:51', '', 'thumb-449x286-8', '', 'inherit', 'open', 'closed', '', 'thumb-449x286-8', '', '', '2021-04-13 14:16:51', '2021-04-13 12:16:51', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-04-13 14:16:51', '2021-04-13 12:16:51', '', 'logo-angularjs', '', 'inherit', 'open', 'closed', '', 'logo-angularjs', '', '', '2021-04-13 14:16:51', '2021-04-13 12:16:51', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-angularjs.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2021-04-13 14:16:52', '2021-04-13 12:16:52', '', 'logo-bootstrap', '', 'inherit', 'open', 'closed', '', 'logo-bootstrap', '', '', '2021-04-13 14:16:52', '2021-04-13 12:16:52', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-bootstrap.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2021-04-13 14:16:52', '2021-04-13 12:16:52', '', 'logo-compass', '', 'inherit', 'open', 'closed', '', 'logo-compass', '', '', '2021-04-13 14:16:52', '2021-04-13 12:16:52', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-compass.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2021-04-13 14:16:53', '2021-04-13 12:16:53', '', 'logo-envato', '', 'inherit', 'open', 'closed', '', 'logo-envato', '', '', '2021-04-13 14:16:53', '2021-04-13 12:16:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-envato.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2021-04-13 14:16:53', '2021-04-13 12:16:53', '', 'logo-evernote', '', 'inherit', 'open', 'closed', '', 'logo-evernote', '', '', '2021-04-13 14:16:53', '2021-04-13 12:16:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-evernote.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 'logo-jasmine', '', 'inherit', 'open', 'closed', '', 'logo-jasmine', '', '', '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-jasmine.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 'logo-jquery', '', 'inherit', 'open', 'closed', '', 'logo-jquery', '', '', '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-jquery.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 'logo-teaspoon', '', 'inherit', 'open', 'closed', '', 'logo-teaspoon', '', '', '2021-04-13 14:16:54', '2021-04-13 12:16:54', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-teaspoon.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-04-13 14:16:55', '2021-04-13 12:16:55', '', 'logo-wordpress', '', 'inherit', 'open', 'closed', '', 'logo-wordpress', '', '', '2021-04-13 14:16:55', '2021-04-13 12:16:55', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/logo-wordpress.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2021-04-13 14:16:59', '2021-04-13 12:16:59', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare', '', '', '2021-04-13 14:16:59', '2021-04-13 12:16:59', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-04-13 14:17:00', '2021-04-13 12:17:00', '<i>echo-hereweare</i>.', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-2', '', '', '2021-04-13 14:17:00', '2021-04-13 12:17:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare.mp3', 0, 'attachment', 'audio/mpeg', 0),
(73, 1, '2021-04-13 14:17:00', '2021-04-13 12:17:00', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-3', '', '', '2021-04-13 14:17:00', '2021-04-13 12:17:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare.mp4', 0, 'attachment', 'video/mp4', 0),
(74, 1, '2021-04-13 14:17:01', '2021-04-13 12:17:01', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-4', '', '', '2021-04-13 14:17:01', '2021-04-13 12:17:01', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare.ogv', 0, 'attachment', 'video/ogg', 0),
(75, 1, '2021-04-13 14:17:01', '2021-04-13 12:17:01', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-5', '', '', '2021-04-13 14:17:01', '2021-04-13 12:17:01', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare.webm', 0, 'attachment', 'video/webm', 0),
(76, 1, '2021-04-13 14:17:10', '2021-04-13 12:17:10', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-6', '', '', '2021-04-13 14:17:10', '2021-04-13 12:17:10', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2021-04-13 14:17:12', '2021-04-13 12:17:12', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-7', '', '', '2021-04-13 14:17:12', '2021-04-13 12:17:12', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare-1.mp4', 0, 'attachment', 'video/mp4', 0),
(78, 1, '2021-04-13 14:17:15', '2021-04-13 12:17:15', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-8', '', '', '2021-04-13 14:17:15', '2021-04-13 12:17:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare-1.ogv', 0, 'attachment', 'video/ogg', 0),
(79, 1, '2021-04-13 14:17:16', '2021-04-13 12:17:16', '', 'echo-hereweare', '', 'inherit', 'open', 'closed', '', 'echo-hereweare-9', '', '', '2021-04-13 14:17:16', '2021-04-13 12:17:16', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/echo-hereweare-1.webm', 0, 'attachment', 'video/webm', 0),
(80, 1, '2021-04-13 14:17:16', '2021-04-13 12:17:16', '', 'portfolio-thumb-01-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-01-289x281', '', '', '2021-04-13 14:17:16', '2021-04-13 12:17:16', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-01-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2021-04-13 14:17:17', '2021-04-13 12:17:17', '', 'portfolio-thumb-01-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-01-large', '', '', '2021-04-13 14:17:17', '2021-04-13 12:17:17', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-01-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2021-04-13 14:17:17', '2021-04-13 12:17:17', '', 'portfolio-thumb-02-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-02-289x281', '', '', '2021-04-13 14:17:17', '2021-04-13 12:17:17', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-02-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 'portfolio-thumb-02-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-02-large', '', '', '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-02-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 'portfolio-thumb-03-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-03-289x281', '', '', '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-03-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 'portfolio-thumb-03-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-03-large', '', '', '2021-04-13 14:17:18', '2021-04-13 12:17:18', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-03-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2021-04-13 14:17:19', '2021-04-13 12:17:19', '', 'portfolio-thumb-04-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-04-289x281', '', '', '2021-04-13 14:17:19', '2021-04-13 12:17:19', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-04-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2021-04-13 14:17:19', '2021-04-13 12:17:19', '', 'portfolio-thumb-04-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-04-large', '', '', '2021-04-13 14:17:19', '2021-04-13 12:17:19', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-04-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2021-04-13 14:17:20', '2021-04-13 12:17:20', 'Street photography does not necessitate the presence of a street or even the urban environment. Though people usually feature directly, street photography might be absent of people and can be an object or environment where the image projects a decidedly human character in facsimile or aesthetic.', 'Street Photography', 'Street photography is photography that features the chance encounters and random accidents within public places.', 'inherit', 'open', 'closed', '', 'portfolio-thumb-05-610x600', '', '', '2021-05-01 23:44:09', '2021-05-01 21:44:09', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-05-610x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2021-04-13 14:17:20', '2021-04-13 12:17:20', '', 'portfolio-thumb-05-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-05-large', '', '', '2021-05-02 22:15:09', '2021-05-02 20:15:09', '', 299, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-05-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 'portfolio-thumb-06-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-06-289x281', '', '', '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-06-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 'portfolio-thumb-06-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-06-large', '', '', '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-06-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 'portfolio-thumb-07-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-07-289x281', '', '', '2021-04-13 14:17:21', '2021-04-13 12:17:21', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-07-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2021-04-13 14:17:22', '2021-04-13 12:17:22', '', 'portfolio-thumb-07-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-07-large', '', '', '2021-04-13 14:17:22', '2021-04-13 12:17:22', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-07-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2021-04-13 14:17:22', '2021-04-13 12:17:22', '', 'portfolio-thumb-08-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-08-289x281', '', '', '2021-04-13 14:17:22', '2021-04-13 12:17:22', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-08-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2021-04-13 14:17:23', '2021-04-13 12:17:23', '', 'portfolio-thumb-09-610x600', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-09-610x600', '', '', '2021-04-13 14:17:23', '2021-04-13 12:17:23', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-09-610x600-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2021-04-13 14:17:23', '2021-04-13 12:17:23', '', 'portfolio-thumb-09-large', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-09-large', '', '', '2021-04-13 14:17:23', '2021-04-13 12:17:23', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-09-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2021-04-13 14:17:24', '2021-04-13 12:17:24', '', 'portfolio-thumb-10-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-10-289x281', '', '', '2021-04-13 14:17:24', '2021-04-13 12:17:24', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-10-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2021-04-13 14:17:24', '2021-04-13 12:17:24', '', 'Suspension Bridge', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-11-289x281', '', '', '2021-05-01 23:45:17', '2021-05-01 21:45:17', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-11-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-04-13 14:17:25', '2021-04-13 12:17:25', '', 'portfolio-thumb-12-289x281', '', 'inherit', 'open', 'closed', '', 'portfolio-thumb-12-289x281', '', '', '2021-04-13 14:17:25', '2021-04-13 12:17:25', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-12-289x281-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 'ajax-loader', '', 'inherit', 'open', 'closed', '', 'ajax-loader', '', '', '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/ajax-loader.gif', 0, 'attachment', 'image/gif', 0),
(101, 1, '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 'ajax-loader-dark', '', 'inherit', 'open', 'closed', '', 'ajax-loader-dark', '', '', '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/ajax-loader-dark.gif', 0, 'attachment', 'image/gif', 0),
(102, 1, '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 'arrows', '', 'inherit', 'open', 'closed', '', 'arrows', '', '', '2021-04-13 14:17:34', '2021-04-13 12:17:34', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/arrows.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2021-04-13 14:17:35', '2021-04-13 12:17:35', '', 'fancybox_sprite', '', 'inherit', 'open', 'closed', '', 'fancybox_sprite', '', '', '2021-04-13 14:17:35', '2021-04-13 12:17:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/fancybox_sprite.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2021-04-13 14:17:35', '2021-04-13 12:17:35', '', 'fancybox_sprite@2x', '', 'inherit', 'open', 'closed', '', 'fancybox_sprite2x', '', '', '2021-04-13 14:17:35', '2021-04-13 12:17:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/fancybox_sprite@2x.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2021-04-13 14:17:36', '2021-04-13 12:17:36', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2021-04-13 14:17:36', '2021-04-13 12:17:36', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/favicon.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2021-04-13 14:17:36', '2021-04-13 12:17:36', '', 'overlay', '', 'inherit', 'open', 'closed', '', 'overlay', '', '', '2021-04-13 14:17:36', '2021-04-13 12:17:36', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/overlay.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-04-13 14:17:37', '2021-04-13 12:17:37', '', 'rs-avatar-64x64', '', 'inherit', 'open', 'closed', '', 'rs-avatar-64x64', '', '', '2021-04-13 14:17:37', '2021-04-13 12:17:37', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-avatar-64x64-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2021-04-13 14:17:58', '2021-04-13 12:17:58', '{\n    \"site_icon\": {\n        \"value\": 105,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 12:17:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0027c2af-a17b-426a-a06b-f858050f6569', '', '', '2021-04-13 14:17:58', '2021-04-13 12:17:58', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/13/0027c2af-a17b-426a-a06b-f858050f6569/', 0, 'customize_changeset', '', 0),
(109, 1, '2021-04-13 15:12:11', '2021-04-13 13:12:11', '{\n    \"rscard::nav_menu_locations[primary]\": {\n        \"value\": -6423386047770929000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:09:30\"\n    },\n    \"nav_menu[-6423386047770929000]\": {\n        \"value\": {\n            \"name\": \"primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:09:30\"\n    },\n    \"nav_menu_item[-4388146758857408500]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6423386047770929000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:09:30\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            110,\n            111,\n            112,\n            113,\n            114,\n            115,\n            116\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-5121534488389261000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:10:37\"\n    },\n    \"nav_menu_item[-7576532478595373000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-1313516688775727000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-6497998556596349000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-1889897366813212700]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-7810029386074251000]\": {\n        \"value\": {\n            \"object_id\": 114,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress/?page_id=114\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -6423386047770929000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:10:37\"\n    },\n    \"nav_menu_item[-3471531548583299000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    },\n    \"nav_menu_item[-2014879863280164900]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:11:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff181497-db37-4631-aca4-dfc230a78d77', '', '', '2021-04-13 15:12:11', '2021-04-13 13:12:11', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=109', 0, 'customize_changeset', '', 0),
(133, 1, '2021-04-13 15:18:41', '2021-04-13 13:18:41', '{\n    \"blogname\": {\n        \"value\": \"RScard\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-13 13:18:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '47e1bdd9-9c54-4969-8ba9-66a8fadd7130', '', '', '2021-04-13 15:18:41', '2021-04-13 13:18:41', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/13/47e1bdd9-9c54-4969-8ba9-66a8fadd7130/', 0, 'customize_changeset', '', 0),
(140, 1, '2021-04-15 15:33:00', '2021-04-15 13:33:00', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"</p><cite><a href=\"single-image.html\">John Doe</a>&nbsp;- Someone famous in Source Title</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cannot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'publish', 'open', 'open', '', 'image-post', '', '', '2021-05-02 19:42:28', '2021-05-02 17:42:28', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=140', 0, 'post', '', 2),
(141, 1, '2021-04-13 15:33:13', '2021-04-13 13:33:13', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:tag-cloud /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Image Post', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-04-13 15:33:13', '2021-04-13 13:33:13', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=141', 0, 'revision', '', 0),
(143, 1, '2021-04-13 15:35:53', '2021-04-13 13:35:53', '<!-- wp:image {\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Image Post', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-04-13 15:35:53', '2021-04-13 13:35:53', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=143', 0, 'revision', '', 0),
(145, 1, '2021-04-13 15:42:03', '2021-04-13 13:42:03', '', 'Image Post', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-04-13 15:42:03', '2021-04-13 13:42:03', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=145', 0, 'revision', '', 0),
(148, 1, '2021-04-27 19:07:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-27 19:07:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=148', 0, 'post', '', 0),
(149, 1, '2021-04-30 17:54:37', '2021-04-30 15:54:37', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-30 15:54:37\"\n    },\n    \"rscard::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-30 15:54:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3b51270-d574-4d01-bc51-b05fbf223b48', '', '', '2021-04-30 17:54:37', '2021-04-30 15:54:37', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/04/30/e3b51270-d574-4d01-bc51-b05fbf223b48/', 0, 'customize_changeset', '', 0),
(150, 1, '2021-05-01 14:08:25', '2021-05-01 12:08:25', '', 'About', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-02 23:46:01', '2021-05-02 21:46:01', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?page_id=150', 0, 'page', '', 0),
(151, 1, '2021-05-02 22:52:15', '2021-05-01 12:08:25', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/2021/05/01/151/', 1, 'nav_menu_item', '', 0),
(152, 1, '2021-05-01 14:08:25', '2021-05-01 12:08:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 14:08:25', '2021-05-01 12:08:25', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=152', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(153, 1, '2021-05-01 17:32:27', '2021-05-01 15:32:27', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-01 15:32:27\"\n    },\n    \"RSCARDFINAL::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-01 15:32:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '53c9b140-d513-4701-80f1-df7ac758ae8a', '', '', '2021-05-01 17:32:27', '2021-05-01 15:32:27', '', 0, 'http://localhost/site/WORDPRESS/wordpress/53c9b140-d513-4701-80f1-df7ac758ae8a/', 0, 'customize_changeset', '', 0),
(155, 1, '2021-05-01 17:48:34', '2021-05-01 15:48:34', '', 'icomoon', '', 'inherit', 'open', 'closed', '', 'icomoon', '', '', '2021-05-01 17:48:34', '2021-05-01 15:48:34', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.eot', 0, 'attachment', 'application/vnd.ms-fontobject', 0),
(156, 1, '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 'icomoon', '', 'inherit', 'open', 'closed', '', 'icomoon-2', '', '', '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.svg', 0, 'attachment', 'image/svg+xml', 0),
(157, 1, '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 'icomoon', '', 'inherit', 'open', 'closed', '', 'icomoon-3', '', '', '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.ttf', 0, 'attachment', 'application/x-font-ttf', 0),
(158, 1, '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 'icomoon', '', 'inherit', 'open', 'closed', '', 'icomoon-4', '', '', '2021-05-01 17:48:35', '2021-05-01 15:48:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/icomoon.woff', 0, 'attachment', 'application/x-font-woff', 0),
(159, 1, '2021-05-01 17:54:37', '2021-05-01 15:54:37', '{\n    \"blogname\": {\n        \"value\": \"card\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-01 15:54:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '335653a4-6737-4d47-a45d-accf69a18030', '', '', '2021-05-01 17:54:37', '2021-05-01 15:54:37', '', 0, 'http://localhost/site/WORDPRESS/wordpress/335653a4-6737-4d47-a45d-accf69a18030/', 0, 'customize_changeset', '', 0),
(160, 1, '2021-05-01 17:55:28', '2021-05-01 15:55:28', '{\n    \"blogname\": {\n        \"value\": \"RS\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-01 15:55:28\"\n    },\n    \"blogdescription\": {\n        \"value\": \"card\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-01 15:55:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16aaaca0-9a27-4d71-887b-0a1897f72ec3', '', '', '2021-05-01 17:55:28', '2021-05-01 15:55:28', '', 0, 'http://localhost/site/WORDPRESS/wordpress/16aaaca0-9a27-4d71-887b-0a1897f72ec3/', 0, 'customize_changeset', '', 0),
(161, 1, '2021-05-01 17:56:35', '2021-05-01 15:56:35', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 17:56:35', '2021-05-01 15:56:35', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=161', 0, 'revision', '', 0),
(162, 1, '2021-05-01 18:01:53', '2021-05-01 16:01:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'info front page', 'info-front-page', 'publish', 'closed', 'closed', '', 'group_608d7a57b1317', '', '', '2021-05-02 23:45:16', '2021-05-02 21:45:16', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=162', 0, 'acf-field-group', '', 0),
(163, 1, '2021-05-01 18:01:53', '2021-05-01 16:01:53', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'info', 'info', 'publish', 'closed', 'closed', '', 'field_608d7a7854dd7', '', '', '2021-05-01 18:29:57', '2021-05-01 16:29:57', '', 162, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=163', 0, 'acf-field', '', 0),
(172, 1, '2021-05-01 18:15:26', '2021-05-01 16:15:26', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:15:26', '2021-05-01 16:15:26', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=172', 0, 'revision', '', 0),
(173, 1, '2021-05-01 18:17:22', '2021-05-01 16:17:22', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:17:22', '2021-05-01 16:17:22', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=173', 0, 'revision', '', 0),
(174, 1, '2021-05-01 18:22:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-01 18:22:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&p=174', 0, 'acf-field-group', '', 0),
(175, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8123b5650', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=175', 1, 'acf-field', '', 0),
(176, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'work', 'work', 'publish', 'closed', 'closed', '', 'field_608d8144b5651', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=176', 2, 'acf-field', '', 0),
(177, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'age', 'age', 'publish', 'closed', 'closed', '', 'field_608d8152b5652', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=177', 3, 'acf-field', '', 0),
(178, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'adress', 'adress', 'publish', 'closed', 'closed', '', 'field_608d815bb5653', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=178', 4, 'acf-field', '', 0),
(179, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'email', 'email', 'publish', 'closed', 'closed', '', 'field_608d8167b5654', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=179', 5, 'acf-field', '', 0),
(180, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:3:\"+41\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'phone', 'phone', 'publish', 'closed', 'closed', '', 'field_608d8184b5655', '', '', '2021-05-01 19:46:55', '2021-05-01 17:46:55', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=180', 6, 'acf-field', '', 0),
(181, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}', 'freelance', 'freelance', 'publish', 'closed', 'closed', '', 'field_608d81a9b5656', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=181', 7, 'acf-field', '', 0),
(182, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d83de7f341\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}', 'vacation', 'vacation', 'publish', 'closed', 'closed', '', 'field_608d81c2b5657', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=182', 9, 'acf-field', '', 0),
(183, 1, '2021-05-01 18:29:57', '2021-05-01 16:29:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_608d81dcb5658', '', '', '2021-05-01 18:44:42', '2021-05-01 16:44:42', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=183', 0, 'acf-field', '', 0),
(184, 1, '2021-05-01 18:31:47', '2021-05-01 16:31:47', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:31:47', '2021-05-01 16:31:47', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=184', 0, 'revision', '', 0),
(185, 1, '2021-05-01 18:44:07', '2021-05-01 16:44:07', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:11:\"On Vacation\";s:11:\"On Vacation\";s:9:\"Available\";s:9:\"Available\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'vacation or not', 'vacation_or_not', 'publish', 'closed', 'closed', '', 'field_608d84a97f343', '', '', '2021-05-01 18:45:43', '2021-05-01 16:45:43', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=185', 8, 'acf-field', '', 0),
(186, 1, '2021-05-01 18:46:37', '2021-05-01 16:46:37', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:46:37', '2021-05-01 16:46:37', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=186', 0, 'revision', '', 0),
(187, 1, '2021-05-01 18:46:56', '2021-05-01 16:46:56', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:46:56', '2021-05-01 16:46:56', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=187', 0, 'revision', '', 0),
(188, 1, '2021-05-01 18:49:35', '2021-05-01 16:49:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_608d8647d7e35', '', '', '2021-05-01 18:49:35', '2021-05-01 16:49:35', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=188', 10, 'acf-field', '', 0),
(189, 1, '2021-05-01 18:50:24', '2021-05-01 16:50:24', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'download', 'download', 'publish', 'closed', 'closed', '', 'field_608d86af9aacf', '', '', '2021-05-01 18:50:24', '2021-05-01 16:50:24', '', 163, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=189', 11, 'acf-field', '', 0),
(190, 1, '2021-05-01 18:51:14', '2021-05-01 16:51:14', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:51:14', '2021-05-01 16:51:14', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=190', 0, 'revision', '', 0),
(191, 1, '2021-05-01 18:52:07', '2021-05-01 16:52:07', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:52:07', '2021-05-01 16:52:07', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=191', 0, 'revision', '', 0),
(192, 1, '2021-05-01 18:53:31', '2021-05-01 16:53:31', '', 'Make Wordpress Great Again', '', 'inherit', 'open', 'closed', '', 'make-wordpress-great-again', '', '', '2021-05-01 18:53:31', '2021-05-01 16:53:31', '', 150, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/Make-Wordpress-Great-Again.pdf', 0, 'attachment', 'application/pdf', 0),
(193, 1, '2021-05-01 18:53:36', '2021-05-01 16:53:36', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 18:53:36', '2021-05-01 16:53:36', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=193', 0, 'revision', '', 0),
(194, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills', 'skills', 'publish', 'closed', 'closed', '', 'field_608d88f5cdbb5', '', '', '2021-05-01 19:29:40', '2021-05-01 17:29:40', '', 162, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=194', 1, 'acf-field', '', 0),
(195, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills1', 'skills1', 'publish', 'closed', 'closed', '', 'field_608d8910cdbb6', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=195', 0, 'acf-field', '', 0),
(196, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d81dcb5658\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d89cecdbb7', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 195, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=196', 0, 'acf-field', '', 0),
(197, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8a97cdbb8', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 195, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=197', 1, 'acf-field', '', 0),
(198, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills2', 'skills2', 'publish', 'closed', 'closed', '', 'field_608d8ad2cdbb9', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=198', 1, 'acf-field', '', 0),
(199, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8ad2cdbba', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 198, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=199', 0, 'acf-field', '', 0),
(200, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d8a97cdbb8\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8ad2cdbbb', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 198, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=200', 1, 'acf-field', '', 0),
(201, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills3', 'skills3', 'publish', 'closed', 'closed', '', 'field_608d8c96cdbbc', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=201', 2, 'acf-field', '', 0),
(202, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8c96cdbbd', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 201, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=202', 0, 'acf-field', '', 0),
(203, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d8a97cdbb8\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8c96cdbbe', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 201, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=203', 1, 'acf-field', '', 0),
(204, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills4', 'skills4', 'publish', 'closed', 'closed', '', 'field_608d8ca1cdbbf', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=204', 3, 'acf-field', '', 0),
(205, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8ca1cdbc0', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 204, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=205', 0, 'acf-field', '', 0),
(206, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d8a97cdbb8\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8ca1cdbc1', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 204, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=206', 1, 'acf-field', '', 0),
(207, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills5', 'skills5', 'publish', 'closed', 'closed', '', 'field_608d8cabcdbc2', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=207', 4, 'acf-field', '', 0),
(208, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8cabcdbc3', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 207, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=208', 0, 'acf-field', '', 0),
(209, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d8a97cdbb8\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8cabcdbc4', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 207, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=209', 1, 'acf-field', '', 0),
(210, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'skills6', 'skills6', 'publish', 'closed', 'closed', '', 'field_608d8cbacdbc5', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 194, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=210', 5, 'acf-field', '', 0),
(211, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d89cecdbb7\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_608d8cbacdbc6', '', '', '2021-05-01 19:28:44', '2021-05-01 17:28:44', '', 210, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=211', 0, 'acf-field', '', 0),
(212, 1, '2021-05-01 19:16:10', '2021-05-01 17:16:10', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_608d8a97cdbb8\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:1:\"%\";}', 'percentage', 'percentage', 'publish', 'closed', 'closed', '', 'field_608d8cbacdbc7', '', '', '2021-05-01 19:16:10', '2021-05-01 17:16:10', '', 210, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=212', 1, 'acf-field', '', 0),
(213, 1, '2021-05-01 19:19:53', '2021-05-01 17:19:53', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 19:19:53', '2021-05-01 17:19:53', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=213', 0, 'revision', '', 0),
(214, 1, '2021-05-01 19:28:58', '2021-05-01 17:28:58', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 19:28:58', '2021-05-01 17:28:58', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=214', 0, 'revision', '', 0),
(215, 1, '2021-05-01 19:30:00', '2021-05-01 17:30:00', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 19:30:00', '2021-05-01 17:30:00', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=215', 0, 'revision', '', 0),
(216, 1, '2021-05-01 19:35:11', '2021-05-01 17:35:11', '', 'gfdgs', '', 'inherit', 'open', 'closed', '', 'gfdgs', '', '', '2021-05-01 19:35:11', '2021-05-01 17:35:11', '', 0, 'http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/05/gfdgs.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2021-05-01 19:35:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-01 19:35:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=217', 0, 'post', '', 0),
(218, 1, '2021-05-01 19:47:14', '2021-05-01 17:47:14', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-01 19:47:14', '2021-05-01 17:47:14', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=218', 0, 'revision', '', 0),
(221, 1, '2021-05-01 20:01:29', '2021-05-01 18:01:29', '<!-- wp:image {\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-1.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image -->', 'Image Post', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-01 20:01:29', '2021-05-01 18:01:29', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=221', 0, 'revision', '', 0),
(223, 1, '2021-05-01 20:09:10', '2021-05-01 18:09:10', '', 'Image Post', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-01 20:09:10', '2021-05-01 18:09:10', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=223', 0, 'revision', '', 0),
(224, 1, '2021-05-01 20:24:00', '2021-05-01 18:24:00', '<!-- wp:image {\"id\":89,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-05-large.jpg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Street photography is photography that features the chance encounters and random accidents within public places.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Street photography does not necessitate the presence of a street or even the urban environment. Though people usually feature directly, street photography might be absent of people and can be an object or environment where the image projects a decidedly human character in facsimile or aesthetic.</p>\n<!-- /wp:paragraph -->', 'Street Photography', '', 'trash', 'open', 'open', '', 'street-photography__trashed', '', '', '2021-05-02 22:53:45', '2021-05-02 20:53:45', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=224', 0, 'post', '', 0),
(225, 1, '2021-05-01 20:24:00', '2021-05-01 18:24:00', '<!-- wp:image {\"id\":89,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/portfolio-thumb-05-large.jpg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Street photography is photography that features the chance encounters and random accidents within public places.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Street photography does not necessitate the presence of a street or even the urban environment. Though people usually feature directly, street photography might be absent of people and can be an object or environment where the image projects a decidedly human character in facsimile or aesthetic.</p>\n<!-- /wp:paragraph -->', 'Street Photography', '', 'inherit', 'closed', 'closed', '', '224-revision-v1', '', '', '2021-05-01 20:24:00', '2021-05-01 18:24:00', '', 224, 'http://localhost/site/WORDPRESS/wordpress/?p=225', 0, 'revision', '', 0),
(227, 1, '2021-05-02 00:00:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 00:00:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&p=227', 0, 'acf-field-group', '', 0),
(228, 1, '2021-05-02 00:31:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 00:31:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?page_id=228', 0, 'page', '', 0),
(229, 1, '2021-05-02 00:36:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 00:36:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?page_id=229', 0, 'page', '', 0),
(230, 1, '2021-05-02 13:37:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 13:37:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?page_id=230', 0, 'page', '', 0),
(231, 1, '2021-05-02 13:38:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-02 13:38:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=231', 0, 'post', '', 0),
(232, 1, '2021-05-02 13:40:35', '2021-05-02 11:40:35', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:40:35\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:40:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3fb0547d-f54b-4272-bab3-cb6dcfa37bb2', '', '', '2021-05-02 13:40:35', '2021-05-02 11:40:35', '', 0, 'http://localhost/site/WORDPRESS/wordpress/3fb0547d-f54b-4272-bab3-cb6dcfa37bb2/', 0, 'customize_changeset', '', 0),
(233, 1, '2021-05-02 13:40:58', '2021-05-02 11:40:58', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:40:58\"\n    },\n    \"rscard::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:40:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b055fe81-b125-4b05-984e-882b7bb6789d', '', '', '2021-05-02 13:40:58', '2021-05-02 11:40:58', '', 0, 'http://localhost/site/WORDPRESS/wordpress/b055fe81-b125-4b05-984e-882b7bb6789d/', 0, 'customize_changeset', '', 0),
(234, 1, '2021-05-02 13:49:12', '2021-05-02 11:49:12', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:49:12\"\n    },\n    \"mipam::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 11:49:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bdd61ad7-b4de-424c-81f6-cf72e8cb8ebd', '', '', '2021-05-02 13:49:12', '2021-05-02 11:49:12', '', 0, 'http://localhost/site/WORDPRESS/wordpress/bdd61ad7-b4de-424c-81f6-cf72e8cb8ebd/', 0, 'customize_changeset', '', 0),
(235, 1, '2021-05-02 14:00:25', '2021-05-02 12:00:25', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 12:00:25\"\n    },\n    \"rscard::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 12:00:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24566119-ec4b-4b86-bb06-303fc61d8b60', '', '', '2021-05-02 14:00:25', '2021-05-02 12:00:25', '', 0, 'http://localhost/site/WORDPRESS/wordpress/24566119-ec4b-4b86-bb06-303fc61d8b60/', 0, 'customize_changeset', '', 0),
(236, 1, '2021-05-02 14:00:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:00:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=236', 0, 'experience', '', 0),
(237, 1, '2021-05-02 14:06:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:06:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=237', 0, 'experience', '', 0),
(238, 1, '2021-05-02 14:07:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:07:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=238', 0, 'experience', '', 0),
(239, 1, '2021-05-02 14:09:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:09:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=239', 0, 'experience', '', 0),
(240, 1, '2021-05-02 14:12:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:12:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=240', 0, 'experience', '', 0),
(241, 1, '2021-05-02 14:13:25', '2021-05-02 12:13:25', '<div>\r\n<div>Worked as part of a multi-disciplinary team, carrying out ad-hoc tasks as requested by the IT Manager. Had a specific brief to ensure the websites build for customer’s precisely matched their requirements. Developers and marketers.</div>\r\n</div>', 'PINEAPLE', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2021-05-02 20:33:13', '2021-05-02 18:33:13', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&#038;p=241', 0, 'experience', '', 0),
(242, 1, '2021-05-02 14:21:38', '2021-05-02 12:21:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"experience\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Work Experience', 'work-experience', 'publish', 'closed', 'closed', '', 'group_608e984948610', '', '', '2021-05-02 14:32:34', '2021-05-02 12:32:34', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=242', 0, 'acf-field-group', '', 0),
(243, 1, '2021-05-02 14:21:38', '2021-05-02 12:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'work title', 'work_title', 'publish', 'closed', 'closed', '', 'field_608e989566570', '', '', '2021-05-02 14:32:34', '2021-05-02 12:32:34', '', 242, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=243', 0, 'acf-field', '', 0),
(244, 1, '2021-05-02 14:21:38', '2021-05-02 12:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'work title', 'work_title', 'publish', 'closed', 'closed', '', 'field_608e98cd66571', '', '', '2021-05-02 14:21:38', '2021-05-02 12:21:38', '', 243, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=244', 0, 'acf-field', '', 0),
(245, 1, '2021-05-02 14:21:38', '2021-05-02 12:21:38', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'year begin', 'year_begin', 'publish', 'closed', 'closed', '', 'field_608e98d966572', '', '', '2021-05-02 14:21:38', '2021-05-02 12:21:38', '', 243, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=245', 1, 'acf-field', '', 0),
(246, 1, '2021-05-02 14:21:38', '2021-05-02 12:21:38', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'Year finish', 'year_finish', 'publish', 'closed', 'closed', '', 'field_608e990a66573', '', '', '2021-05-02 14:21:38', '2021-05-02 12:21:38', '', 243, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=246', 2, 'acf-field', '', 0),
(247, 1, '2021-05-02 14:22:44', '2021-05-02 12:22:44', 'teste', 'PINEAPLE', '', 'inherit', 'closed', 'closed', '', '241-autosave-v1', '', '', '2021-05-02 14:22:44', '2021-05-02 12:22:44', '', 241, 'http://localhost/site/WORDPRESS/wordpress/?p=247', 0, 'revision', '', 0),
(248, 1, '2021-05-02 14:24:21', '2021-05-02 12:24:21', 'I was responsible for working on a range of projects, designing appealing websites and interacting on a daily basis with graphic designers, back-end developers and marketers.', 'MACROSOOFT', '', 'publish', 'closed', 'closed', '', 'macrosooft', '', '', '2021-05-02 20:27:53', '2021-05-02 18:27:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&#038;p=248', 0, 'experience', '', 0),
(249, 1, '2021-05-02 14:30:04', '2021-05-02 12:30:04', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'date work begin', 'date_work_begin', 'publish', 'closed', 'closed', '', 'field_608e9afcafa69', '', '', '2021-05-02 14:30:04', '2021-05-02 12:30:04', '', 242, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=249', 1, 'acf-field', '', 0),
(250, 1, '2021-05-02 14:30:04', '2021-05-02 12:30:04', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'date work finish', 'date_work_finish', 'publish', 'closed', 'closed', '', 'field_608e9b10afa6a', '', '', '2021-05-02 14:30:04', '2021-05-02 12:30:04', '', 242, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=250', 2, 'acf-field', '', 0),
(251, 1, '2021-05-02 14:36:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:36:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=251', 0, 'experience', '', 0),
(252, 1, '2021-05-02 14:47:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 14:47:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&p=252', 0, 'experience', '', 0),
(253, 1, '2021-05-02 15:14:14', '2021-05-02 13:14:14', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 13:14:07\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 13:14:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a6bcf27-147a-414a-87a1-37c70bee0442', '', '', '2021-05-02 15:14:14', '2021-05-02 13:14:14', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=253', 0, 'customize_changeset', '', 0),
(255, 1, '2021-05-02 17:14:03', '2021-05-02 15:14:03', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-02 17:14:03', '2021-05-02 15:14:03', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=255', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(257, 1, '2021-05-02 17:18:44', '2021-05-02 15:18:44', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"</p><cite><a href=\"single-image.html\">John Doe</a> - Someone famous in Source Title</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cannot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-02 17:18:44', '2021-05-02 15:18:44', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=257', 0, 'revision', '', 0),
(258, 1, '2021-05-02 17:21:08', '2021-05-02 15:21:08', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"</p><cite><a href=\"single-image.html\">John Doe</a>&nbsp;- Someone famous in Source Title</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cannot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-02 17:21:08', '2021-05-02 15:21:08', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=258', 0, 'revision', '', 0),
(259, 1, '2021-05-02 18:09:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-02 18:09:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=259', 0, 'post', '', 0),
(260, 1, '2021-05-02 18:15:05', '2021-05-02 16:15:05', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'trash', 'open', 'open', '', 'khjk__trashed', '', '', '2021-05-02 23:13:25', '2021-05-02 21:13:25', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=260', 0, 'post', '', 0),
(261, 1, '2021-05-02 18:15:05', '2021-05-02 16:15:05', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 18:15:05', '2021-05-02 16:15:05', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=261', 0, 'revision', '', 0),
(262, 1, '2021-05-02 18:15:06', '2021-05-02 16:15:06', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 18:15:06', '2021-05-02 16:15:06', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=262', 0, 'revision', '', 0),
(263, 1, '2021-05-02 18:22:04', '2021-05-02 16:22:04', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 18:22:04', '2021-05-02 16:22:04', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=263', 0, 'revision', '', 0),
(264, 77777, '2021-05-02 18:22:04', '2021-05-02 18:22:04', '', 'khjk', '', 'inherit', 'open', 'open', '', '', '', '', '2021-05-02 18:22:04', '2021-05-02 18:22:04', '', 260, 'https://www.youtube.com/watch?v=XwqXshhQLIg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2021-05-02 18:49:12', '2021-05-02 16:49:12', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"</p><cite><a href=\"single-image.html\">John Doe</a>&nbsp;- Someone famous in Source Title</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/><figcaption class=\"wp-caption-text\">Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cannot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-02 18:49:12', '2021-05-02 16:49:12', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=267', 0, 'revision', '', 0),
(268, 1, '2021-05-02 18:49:32', '2021-05-02 16:49:32', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"</p><cite><a href=\"single-image.html\">John Doe</a>&nbsp;- Someone famous in Source Title</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":49,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/rs-thumb-509x319-1.jpg\" alt=\"\" class=\"wp-image-49\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cannot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE HISTORY AND FUTURE OF MOTORCYCLES', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-05-02 18:49:32', '2021-05-02 16:49:32', '', 140, 'http://localhost/site/WORDPRESS/wordpress/?p=268', 0, 'revision', '', 0),
(269, 1, '2021-05-02 18:51:42', '2021-05-02 16:51:42', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 16:51:42\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 16:51:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a6b71f2-8896-40c4-80a7-b92017417c36', '', '', '2021-05-02 18:51:42', '2021-05-02 16:51:42', '', 0, 'http://localhost/site/WORDPRESS/wordpress/4a6b71f2-8896-40c4-80a7-b92017417c36/', 0, 'customize_changeset', '', 0),
(270, 1, '2021-05-02 18:53:01', '2021-05-02 16:53:01', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 16:53:01\"\n    },\n    \"rscard::nav_menu_locations[primary]\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 16:53:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2ae1a0f-83e5-4d8a-a447-368a2763d10f', '', '', '2021-05-02 18:53:01', '2021-05-02 16:53:01', '', 0, 'http://localhost/site/WORDPRESS/wordpress/b2ae1a0f-83e5-4d8a-a447-368a2763d10f/', 0, 'customize_changeset', '', 0),
(271, 1, '2021-05-02 18:58:47', '2021-05-02 16:58:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'post details', 'post-details', 'publish', 'closed', 'closed', '', 'group_608eda20ed059', '', '', '2021-05-02 19:30:36', '2021-05-02 17:30:36', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=271', 0, 'acf-field-group', '', 0),
(272, 1, '2021-05-02 18:58:47', '2021-05-02 16:58:47', 'a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";i:616;s:6:\"height\";s:0:\"\";}', 'video', 'video_embed', 'publish', 'closed', 'closed', '', 'field_608eda27e71f8', '', '', '2021-05-02 19:30:36', '2021-05-02 17:30:36', '', 271, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=272', 0, 'acf-field', '', 0),
(273, 1, '2021-05-02 18:59:19', '2021-05-02 16:59:19', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 18:59:19', '2021-05-02 16:59:19', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=273', 0, 'revision', '', 0),
(274, 1, '2021-05-02 19:00:15', '2021-05-02 17:00:15', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 19:00:15', '2021-05-02 17:00:15', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=274', 0, 'revision', '', 0),
(275, 1, '2021-05-02 19:26:36', '2021-05-02 17:26:36', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 19:26:36', '2021-05-02 17:26:36', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=275', 0, 'revision', '', 0),
(276, 1, '2021-05-02 19:26:43', '2021-05-02 17:26:43', '<!-- wp:paragraph -->\n<p>khjkhjk</p>\n<!-- /wp:paragraph -->', 'khjk', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2021-05-02 19:26:43', '2021-05-02 17:26:43', '', 260, 'http://localhost/site/WORDPRESS/wordpress/?p=276', 0, 'revision', '', 0),
(277, 1, '2021-05-02 20:48:10', '2021-05-02 18:48:10', 'Rebuilt and enhanced existing ASP B2C site with ASP.NET 2.0 Framework and tools. Technology consists of ASP.NET 2.0 (C#), IIS, Microsoft SQL Server 2005, Stored Procedures &amp; PayPal Instant Payment Notification.\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -35px; top: 0px;\">\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', 'JOOJLE', '', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2021-05-02 23:54:04', '2021-05-02 21:54:04', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=experience&#038;p=277', 0, 'experience', '', 0),
(278, 1, '2021-05-02 21:25:42', '2021-05-02 19:25:42', '', 'Master of Information Technology', '', 'publish', 'closed', 'closed', '', 'master-of-information-technology', '', '', '2021-05-02 21:28:16', '2021-05-02 19:28:16', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=education&#038;p=278', 0, 'education', '', 0),
(279, 1, '2021-05-02 21:26:00', '2021-05-02 19:26:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"education\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Education', 'education', 'publish', 'closed', 'closed', '', 'group_608efcc8bdea6', '', '', '2021-05-02 21:34:14', '2021-05-02 19:34:14', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=279', 0, 'acf-field-group', '', 0),
(280, 1, '2021-05-02 21:26:00', '2021-05-02 19:26:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'school', 'school', 'publish', 'closed', 'closed', '', 'field_608efcc8c4659', '', '', '2021-05-02 21:27:15', '2021-05-02 19:27:15', '', 279, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=280', 0, 'acf-field', '', 0),
(281, 1, '2021-05-02 21:26:00', '2021-05-02 19:26:00', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'date education begin', 'date_edu_begin', 'publish', 'closed', 'closed', '', 'field_608efcc8c80ef', '', '', '2021-05-02 21:27:15', '2021-05-02 19:27:15', '', 279, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=281', 1, 'acf-field', '', 0),
(282, 1, '2021-05-02 21:26:00', '2021-05-02 19:26:00', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'date edu finish', 'date_edu_finish', 'publish', 'closed', 'closed', '', 'field_608efcc8cbb7c', '', '', '2021-05-02 21:27:25', '2021-05-02 19:27:25', '', 279, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=282', 2, 'acf-field', '', 0),
(283, 1, '2021-05-02 21:28:53', '2021-05-02 19:28:53', '', 'Bachelor Computer Engineering', '', 'publish', 'closed', 'closed', '', 'bachelor-computer-engineering', '', '', '2021-05-02 21:28:53', '2021-05-02 19:28:53', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=education&#038;p=283', 0, 'education', '', 0),
(284, 1, '2021-05-02 21:29:34', '2021-05-02 19:29:34', '', 'Certificate for courses of Computer Science', '', 'publish', 'closed', 'closed', '', 'certificate-for-courses-of-computer-science', '', '', '2021-05-02 21:29:48', '2021-05-02 19:29:48', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=education&#038;p=284', 0, 'education', '', 0),
(285, 1, '2021-05-02 21:40:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 21:40:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=reference&p=285', 0, 'reference', '', 0),
(286, 1, '2021-05-02 21:40:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 21:40:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=reference&p=286', 0, 'reference', '', 0),
(287, 1, '2021-05-02 21:42:04', '2021-05-02 19:42:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"reference\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'references', 'references', 'publish', 'closed', 'closed', '', 'group_608f004b7556e', '', '', '2021-05-02 21:48:33', '2021-05-02 19:48:33', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=287', 0, 'acf-field-group', '', 0),
(288, 1, '2021-05-02 21:42:04', '2021-05-02 19:42:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'person_name', 'publish', 'closed', 'closed', '', 'field_608f005577d54', '', '', '2021-05-02 21:47:56', '2021-05-02 19:47:56', '', 287, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=288', 0, 'acf-field', '', 0),
(289, 1, '2021-05-02 21:42:04', '2021-05-02 19:42:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'person_title', 'publish', 'closed', 'closed', '', 'field_608f005e77d55', '', '', '2021-05-02 21:48:23', '2021-05-02 19:48:23', '', 287, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=289', 1, 'acf-field', '', 0),
(290, 1, '2021-05-02 21:42:04', '2021-05-02 19:42:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'profile picture', 'profile_picture', 'publish', 'closed', 'closed', '', 'field_608f006977d56', '', '', '2021-05-02 21:42:04', '2021-05-02 19:42:04', '', 287, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=290', 2, 'acf-field', '', 0),
(291, 1, '2021-05-02 21:49:03', '2021-05-02 19:49:03', 'I have known Robert Smith for 10 years as web developer. I can confirm that he is a man of great integrity, is extremely dedicated to his family and work, and is entirely peace-loving.', 'reference 2', '', 'publish', 'closed', 'closed', '', 'brouillon-auto', '', '', '2021-05-02 21:51:25', '2021-05-02 19:51:25', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=reference&#038;p=291', 0, 'reference', '', 0),
(292, 1, '2021-05-02 21:49:42', '2021-05-02 19:49:42', 'I confirm that New Company Ltd has been a customer of ours since 1998, during which time they have always made payments reliably, in full and on time.', 'Reference 1', '', 'publish', 'closed', 'closed', '', 'brouillon-auto-2', '', '', '2021-05-02 21:51:11', '2021-05-02 19:51:11', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=reference&#038;p=292', 0, 'reference', '', 0),
(293, 1, '2021-05-02 21:51:55', '2021-05-02 19:51:55', 'I have known Robert Smith for 10 years as web developer. I can confirm that he is a man of great integrity, is extremely dedicated to his family and work, and is entirely peace-loving.', 'reference 3', '', 'publish', 'closed', 'closed', '', 'reference-3', '', '', '2021-05-02 21:51:55', '2021-05-02 19:51:55', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=reference&#038;p=293', 0, 'reference', '', 0),
(294, 1, '2021-05-02 21:55:13', '2021-05-02 19:55:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title section', 'title_section', 'publish', 'closed', 'closed', '', 'field_608f036e9e7fe', '', '', '2021-05-02 23:44:39', '2021-05-02 21:44:39', '', 162, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=294', 2, 'acf-field', '', 0),
(295, 1, '2021-05-02 21:56:35', '2021-05-02 19:56:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title section', 'title_section', 'publish', 'closed', 'closed', '', 'field_608f03d787369', '', '', '2021-05-02 21:56:35', '2021-05-02 19:56:35', '', 294, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=295', 0, 'acf-field', '', 0),
(296, 1, '2021-05-02 21:56:35', '2021-05-02 19:56:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text section', 'text_section', 'publish', 'closed', 'closed', '', 'field_608f03e28736a', '', '', '2021-05-02 21:56:35', '2021-05-02 19:56:35', '', 294, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&p=296', 1, 'acf-field', '', 0),
(297, 1, '2021-05-02 21:57:03', '2021-05-02 19:57:03', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-02 21:57:03', '2021-05-02 19:57:03', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=297', 0, 'revision', '', 0),
(298, 1, '2021-05-02 22:07:26', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 22:07:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=portfolio&p=298', 0, 'portfolio', '', 0),
(299, 1, '2021-05-02 22:11:34', '2021-05-02 20:11:34', '<h2 class=\"inline-title\">Street photography is photography that features the chance encounters and random accidents within public places.</h2>\r\nStreet photography does not necessitate the presence of a street or even the urban environment. Though people usually feature directly, street photography might be absent of people and can be an object or environment where the image projects a decidedly human character in facsimile or aesthetic.', 'Street Photography', '', 'publish', 'closed', 'closed', '', 'street-photography', '', '', '2021-05-02 22:15:09', '2021-05-02 20:15:09', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=portfolio&#038;p=299', 0, 'portfolio', '', 0),
(300, 1, '2021-05-02 22:14:02', '2021-05-02 20:14:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_608f079d21300', '', '', '2021-05-02 22:16:04', '2021-05-02 20:16:04', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field-group&#038;p=300', 0, 'acf-field-group', '', 0),
(301, 1, '2021-05-02 22:14:02', '2021-05-02 20:14:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'second image', 'second_image', 'publish', 'closed', 'closed', '', 'field_608f07a4bcf03', '', '', '2021-05-02 22:15:37', '2021-05-02 20:15:37', '', 300, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=301', 0, 'acf-field', '', 0),
(302, 1, '2021-05-02 22:14:02', '2021-05-02 20:14:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'category', 'category', 'publish', 'closed', 'closed', '', 'field_608f07e1bcf04', '', '', '2021-05-02 22:14:24', '2021-05-02 20:14:24', '', 300, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=302', 1, 'acf-field', '', 0),
(303, 1, '2021-05-02 22:14:02', '2021-05-02 20:14:02', 'a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_608f07efbcf05', '', '', '2021-05-02 22:16:04', '2021-05-02 20:16:04', '', 300, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=303', 2, 'acf-field', '', 0),
(304, 1, '2021-05-02 22:14:02', '2021-05-02 20:14:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_608f07f3bcf06', '', '', '2021-05-02 22:14:24', '2021-05-02 20:14:24', '', 300, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=304', 3, 'acf-field', '', 0),
(305, 1, '2021-05-02 22:15:42', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-02 22:15:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=portfolio&p=305', 0, 'portfolio', '', 0),
(306, 1, '2021-05-02 22:18:29', '2021-05-02 20:18:29', '<h2 class=\"inline-title\">A Look Into Documenting Street Fashion Photography</h2>\r\nHB Nam is an internationally known street fashion photographer. In this Leica Camera Portrait, Nam explains how he started in photography and what photography means to him. For Nam, it\'s about documenting what\'s around him and the concentration required to achieve a good shot.', 'Suspension Bridge', '', 'publish', 'closed', 'closed', '', 'suspension-bridge', '', '', '2021-05-02 22:18:29', '2021-05-02 20:18:29', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?post_type=portfolio&#038;p=306', 0, 'portfolio', '', 0),
(307, 1, '2021-05-02 22:45:51', '2021-05-02 20:45:51', '{\n    \"nav_menu_item[117]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:39:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c320a7f2-282f-4f6c-a13f-5c1094148e38', '', '', '2021-05-02 22:45:51', '2021-05-02 20:45:51', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=307', 0, 'customize_changeset', '', 0),
(308, 1, '2021-05-02 22:49:38', '2021-05-02 20:49:38', '{\n    \"nav_menu_item[-2097415435000971300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Skills\",\n            \"url\": \"#skills\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Skills\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:49:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9162bba-abb9-4bad-b52c-582b78b79e8b', '', '', '2021-05-02 22:49:38', '2021-05-02 20:49:38', '', 0, 'http://localhost/site/WORDPRESS/wordpress/a9162bba-abb9-4bad-b52c-582b78b79e8b/', 0, 'customize_changeset', '', 0),
(309, 1, '2021-05-02 22:52:15', '2021-05-02 20:49:38', '', 'Skills', '', 'publish', 'closed', 'closed', '', 'skills', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/skills/', 2, 'nav_menu_item', '', 0),
(310, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '{\n    \"nav_menu_item[-4258105598995589000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Portfolio\",\n            \"url\": \"#portfolio\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Portfolio\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[-8950343342417148000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Experience\",\n            \"url\": \"#experience\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Experience\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[151]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 150,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page d\\u2019accueil\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 19,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[309]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Skills\",\n            \"url\": \"#skills\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Skills\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[-1630170726376085500]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"References\",\n            \"url\": \"#references\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"References\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[-4002784975653511000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Blog\",\n            \"url\": \"#blog\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[-7811311480535126000]\": {\n        \"value\": {\n            \"object_id\": 224,\n            \"object\": \"post\",\n            \"menu_item_parent\": -4002784975653511000,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Street Photography\",\n            \"url\": \"http://localhost/site/WORDPRESS/wordpress/street-photography/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Street Photography\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:51:34\"\n    },\n    \"nav_menu_item[-2443020419563057000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"custom\",\n            \"title\": \"Calendar\",\n            \"url\": \"#calendar\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Calendar\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:52:15\"\n    },\n    \"nav_menu_item[-7887902628114651000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"custom\",\n            \"title\": \"Contact\",\n            \"url\": \"#contact\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": 19,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-02 20:52:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '924f9f7a-8da7-4230-9c54-91a3da723f3e', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=310', 0, 'customize_changeset', '', 0),
(311, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/portfolio/', 3, 'nav_menu_item', '', 0),
(312, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'Experience', '', 'publish', 'closed', 'closed', '', 'experience', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/experience/', 4, 'nav_menu_item', '', 0),
(313, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'References', '', 'publish', 'closed', 'closed', '', 'references', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/references/', 5, 'nav_menu_item', '', 0),
(314, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/blog/', 6, 'nav_menu_item', '', 0),
(315, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', ' ', '', '', 'publish', 'closed', 'closed', '', '315', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/315/', 7, 'nav_menu_item', '', 0),
(316, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/calendar/', 7, 'nav_menu_item', '', 0),
(317, 1, '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-02 22:52:15', '2021-05-02 20:52:15', '', 0, 'http://localhost/site/WORDPRESS/wordpress/contact/', 8, 'nav_menu_item', '', 0),
(318, 1, '2021-05-02 23:15:26', '2021-05-02 21:15:26', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"<br><a href=\"single-vimeo.html\">John Doe</a>&nbsp;- Someone famous in Source Title</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div id=\"attachment_905\" class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-1.jpg\" alt=\"\" class=\"wp-image-54\" title=\"Image Alignment 509x319\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cnnot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->', 'TINY SYDNEY', '', 'publish', 'open', 'open', '', 'tiny-sydney', '', '', '2021-05-02 23:15:27', '2021-05-02 21:15:27', '', 0, 'http://localhost/site/WORDPRESS/wordpress/?p=318', 0, 'post', '', 1);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(319, 1, '2021-05-02 23:15:26', '2021-05-02 21:15:26', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"<br><a href=\"single-vimeo.html\">John Doe</a>&nbsp;- Someone famous in Source Title</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div id=\"attachment_905\" class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-1.jpg\" alt=\"\" class=\"wp-image-54\" title=\"Image Alignment 509x319\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cnnot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->', 'TINY SYDNEY', '', 'inherit', 'closed', 'closed', '', '318-revision-v1', '', '', '2021-05-02 23:15:26', '2021-05-02 21:15:26', '', 318, 'http://localhost/site/WORDPRESS/wordpress/?p=319', 0, 'revision', '', 0),
(320, 1, '2021-05-02 23:15:27', '2021-05-02 21:15:27', '<!-- wp:paragraph -->\n<p>Hello! The Sky People have sent us a message... that they can take whatever they want.<br>That no one can stop them.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Well, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they cnnot take whatever they want! And that this... this is our land!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>\"My commute is extremely short. Just 20 steps across the apartment to my office overlooking Butler St. Sometimes when I\'m feeling fancy, I\'ll walk 2 blocks down the street for coffee first. Either way, it\'s very convenient.\"<br><a href=\"single-vimeo.html\">John Doe</a>&nbsp;- Someone famous in Source Title</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":54,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div id=\"attachment_905\" class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost/site/WORDPRESS/wordpress/wp-content/uploads/2021/04/thumb-449x286-1.jpg\" alt=\"\" class=\"wp-image-54\" title=\"Image Alignment 509x319\"/><figcaption>Feels good to be right all the time.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tell them Toruk Macto calls to them!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>You fly now, with me;</li><li>My brothers! Sisters;</li><li>And we will show the Sky People.;</li><li>That they cnnot take whatever they want.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>You ride out as fast as the wind can carry you. You tell the other clans to come. Tell them Toruk Macto calls to them! You fly now, with me! My brothers! Sisters! And we will show the Sky People... that they caWell, we will send them a message. You ride out as fast as the wind can carry you. You tell the other clans to come.</p>\n<!-- /wp:paragraph -->', 'TINY SYDNEY', '', 'inherit', 'closed', 'closed', '', '318-revision-v1', '', '', '2021-05-02 23:15:27', '2021-05-02 21:15:27', '', 318, 'http://localhost/site/WORDPRESS/wordpress/?p=320', 0, 'revision', '', 0),
(321, 1, '2021-05-02 23:44:00', '2021-05-02 21:44:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text section', 'text_section', 'publish', 'closed', 'closed', '', 'field_608f1d0be4894', '', '', '2021-05-02 23:44:39', '2021-05-02 21:44:39', '', 162, 'http://localhost/site/WORDPRESS/wordpress/?post_type=acf-field&#038;p=321', 3, 'acf-field', '', 0),
(322, 1, '2021-05-02 23:46:01', '2021-05-02 21:46:01', '', 'About', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-05-02 23:46:01', '2021-05-02 21:46:01', '', 150, 'http://localhost/site/WORDPRESS/wordpress/?p=322', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rednao_wc_invoice`
--

CREATE TABLE `wp_rednao_wc_invoice` (
  `invoice_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `attach_to` varchar(1000) DEFAULT NULL,
  `options` mediumtext NOT NULL,
  `create_when` varchar(20) DEFAULT NULL,
  `html` mediumtext NOT NULL,
  `conditions` mediumtext DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `my_account_download` tinyint(4) DEFAULT NULL,
  `extensions` mediumtext DEFAULT NULL,
  `pages` mediumtext DEFAULT NULL,
  `email_config` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_rednao_wc_invoice`
--

INSERT INTO `wp_rednao_wc_invoice` (`invoice_id`, `name`, `attach_to`, `options`, `create_when`, `html`, `conditions`, `type`, `my_account_download`, `extensions`, `pages`, `email_config`) VALUES
(1, 'Default Template', '[\"customer_completed_order\"]', '{\"pageSize\":{\"type\":\"A4\",\"width\":794,\"height\":1123},\"headerOptions\":{\"height\":100,\"width\":794,\"position\":\"documentHeader\"},\"contentOptions\":{\"height\":923,\"width\":794,\"position\":\"documentContent\"},\"footerOptions\":{\"height\":100,\"width\":794,\"position\":\"documentFooter\"},\"fieldOptions\":[{\"targetId\":\"header\",\"styles\":{\"left\":\"504px\",\"top\":\"18px\",\"position\":\"absolute\",\"font-size\":\"14px\",\"width\":\"250px\",\"height\":\"32px\",\"overflow\":\"hidden\"},\"type\":\"field\",\"fieldID\":3,\"fieldOptions\":{\"fieldType\":\"order_number\",\"labelPosition\":\"left\",\"label\":\"Order Number:\",\"prefix\":\"\",\"sufix\":\"\",\"digits\":5}},{\"targetId\":\"header\",\"styles\":{\"left\":\"25px\",\"top\":\"34px\",\"position\":\"absolute\",\"font-size\":\"14px\",\"width\":\"177px\",\"height\":21},\"type\":\"text\",\"Text\":\"<p><span style=\\\"font-size: 24pt;\\\">Invoice<\\/span><\\/p>\",\"fieldID\":5},{\"targetId\":\"header\",\"styles\":{\"left\":\"503px\",\"top\":\"50px\",\"position\":\"absolute\",\"font-size\":\"14px\",\"width\":\"250px\",\"height\":\"50px\",\"overflow\":\"hidden\"},\"type\":\"field\",\"fieldID\":4,\"fieldOptions\":{\"fieldType\":\"inv_date\",\"labelPosition\":\"left\",\"format\":\"F j, Y\",\"label\":\"Order Date:\"}},{\"targetId\":\"content\",\"styles\":{\"left\":\"5%\",\"top\":\"57px\",\"position\":\"absolute\",\"font-size\":\"14px\",\"width\":\"90%\"},\"type\":\"table\",\"GridStyle\":\"1\",\"ColumnOptions\":[{\"header\":\"Product\",\"type\":\"prod\",\"width\":\"60%\",\"additionalProperties\":[]},{\"header\":\"Qty\",\"type\":\"qty\",\"width\":\"20%\",\"additionalProperties\":[]},{\"header\":\"Price\",\"type\":\"price\",\"width\":\"20%\",\"additionalProperties\":[]}],\"ShowShipping\":true,\"ShowSubtotal\":true,\"ShowTotal\":true,\"ShowTaxes\":true,\"ShowDiscount\":true,\"ShowFees\":true,\"ShippingLabel\":\"Shipping\",\"TotalLabel\":\"Total\",\"SubTotalLabel\":\"Subtotal\",\"TaxesLabel\":\"Tax\",\"DiscountLabel\":\"Discount\",\"SubTotalAdditionalProperties\":{\"includeTaxes\":false,\"includeDiscount\":false},\"fieldID\":6,\"DesignerHeight\":286},{\"targetId\":\"content\",\"styles\":{\"left\":\"64px\",\"top\":\"411px\",\"position\":\"absolute\",\"font-size\":\"14px\",\"width\":\"656px\",\"height\":\"217px\",\"overflow\":\"hidden\"},\"type\":\"field\",\"fieldID\":7,\"fieldOptions\":{\"fieldType\":\"customer_notes\",\"labelPosition\":\"top\",\"label\":\"\"}}],\"styles\":\"#pdfField_5 p{padding:0 !important;}#pdfField_6 .pdfTable,#pdfField_6 {border-collapse:collapse !important;}#pdfField_6 .pdfTable tr{border-spacing:0 !important;}#pdfField_6 .pdfTable .price{text-align:right !important;}#pdfField_6 .subTotalValue{text-align:right !important;}#pdfField_6 .th_price{text-align:right !important;}#pdfField_6 .qty{text-align:center !important;}#pdfField_6 .th_qty{text-align:center !important;}#pdfField_6 .invoiceDetailRow td{padding:5px 0 5px 0 !important;}#pdfField_6 .footerTable{margin-top:10px !important;}#pdfField_6 .footerTable th,#pdfField_6 .footerTable td{padding:7px 0 7px 0 !important;}#pdfField_6 .pdfTable thead th{background-color:black !important;color:white !important;padding:5px 2px 5px 2px !important;}#pdfField_6 .pdfTable > tbody td{border-bottom:1px #dfdfdf solid !important;}#pdfField_6 .subTotalLabel{padding-right:50px !important;font-size:12px !important;line-height:12px !important;}#pdfField_6 .subTotalRow .subTotalLabel,#pdfField_6  .subTotalRow .subTotalValue{border-top:1px #dfdfdf solid !important;}#pdfField_6 .total.subTotalRow .subTotalLabel,#pdfField_6  .total.subTotalRow .subTotalValue{border-top:2px black solid !important;border-bottom:2px black solid !important;}\"}', 'completed', '', NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rednao_wc_invoices_created`
--

CREATE TABLE `wp_rednao_wc_invoices_created` (
  `invoice_created_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_number` bigint(20) DEFAULT NULL,
  `formatted_invoice_number` varchar(2000) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `html` mediumtext DEFAULT NULL,
  `fields_dictionary` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rednao_wc_invoices_custom_field`
--

CREATE TABLE `wp_rednao_wc_invoices_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `custom_field_name` varchar(300) NOT NULL,
  `custom_field_text` mediumtext DEFAULT NULL,
  `custom_field_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'product_count_product_cat', '1'),
(2, 17, 'order', '0'),
(3, 17, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Non classé', 'non-classe', 0),
(16, 'Music', 'music', 0),
(17, 'pine-tree', 'pine-tree', 0),
(18, 'test', 'test', 0),
(19, 'primary', 'primary', 0),
(20, '#Photo', 'photo', 0),
(21, '#Architect', 'architect', 0),
(22, 'icomoon', 'icomoon', 0),
(26, 'Architecture', 'architecture', 0),
(27, 'Business', 'business', 0),
(28, 'Creative', 'creative', 0),
(29, 'Design', 'design', 0),
(30, 'Development', 'development', 0),
(31, 'Education', 'education', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(11, 16, 0),
(19, 2, 0),
(19, 17, 0),
(21, 1, 0),
(26, 18, 0),
(140, 20, 0),
(140, 21, 0),
(140, 26, 0),
(151, 19, 0),
(224, 1, 0),
(260, 1, 0),
(279, 1, 0),
(309, 19, 0),
(311, 19, 0),
(312, 19, 0),
(313, 19, 0),
(314, 19, 0),
(315, 19, 0),
(316, 19, 0),
(317, 19, 0),
(318, 1, 0),
(318, 20, 0),
(318, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 1),
(17, 17, 'product_cat', '', 0, 1),
(18, 18, 'nav_menu', '', 0, 1),
(19, 19, 'nav_menu', '', 0, 9),
(20, 20, 'post_tag', '', 0, 2),
(21, 21, 'post_tag', '', 0, 2),
(22, 22, 'bsf_custom_fonts', '', 0, 0),
(26, 26, 'category', '', 0, 1),
(27, 27, 'category', '', 0, 0),
(28, 28, 'category', '', 0, 0),
(29, 29, 'category', '', 0, 0),
(30, 30, 'category', '', 0, 0),
(31, 31, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Mipam'),
(2, 1, 'first_name', 'test'),
(3, 1, 'last_name', 'test'),
(4, 1, 'description', 'mipam'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:\"fbbb23df82f667c60ed9ab16466366ac94354732d95c6bec8872f0bbeeec2ab8\";a:4:{s:10:\"expiration\";i:1620040115;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619867315;}s:64:\"ee4e0b6e8337d47cf18683bbc08f3e19a88a2c21f559eb8bcaf96b056d6ded7a\";a:4:{s:10:\"expiration\";i:1620128212;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619955412;}s:64:\"9af9d887436d7079af39b52f8a08cd40ca62688176a1add225cdafe692848c76\";a:4:{s:10:\"expiration\";i:1620148840;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619976040;}s:64:\"81c8917eebba628949b8ad83c31ade034501574b06d90a1e47e5da47dad23b3e\";a:4:{s:10:\"expiration\";i:1620150053;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619977253;}s:64:\"3e95ffaea493c31b04769f8d83793cc0abdcf4782d2141cf83c438d6150b97cb\";a:4:{s:10:\"expiration\";i:1620150570;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619977770;}s:64:\"5c4c52724f5aaee561da5abb912ec3478a6199f5810c6558f08949857b6ef7e6\";a:4:{s:10:\"expiration\";i:1620150582;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619977782;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '148'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, '_woocommerce_tracks_anon_id', 'woo:2IWmoZM2etCbTcBYNlnIoUrS'),
(21, 1, 'last_update', '1618309487'),
(22, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1618243714465'),
(23, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"products\":1,\"payments\":1,\"tax\":1,\"appearance\":1,\"shipping\":1}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=0'),
(25, 1, 'wp_user-settings-time', '1619957600'),
(26, 1, 'wc_last_active', '1618272000'),
(28, 1, 'billing_first_name', 'test'),
(29, 1, 'billing_last_name', 'test'),
(30, 1, 'billing_company', ''),
(31, 1, 'billing_address_1', 'test'),
(32, 1, 'billing_city', 'est'),
(33, 1, 'billing_postcode', '1207'),
(34, 1, 'billing_country', 'CH'),
(35, 1, 'billing_email', 'mipam.guillot@gmail.com'),
(36, 1, 'billing_phone', '0791059375'),
(37, 1, 'shipping_method', ''),
(41, 1, '_order_count', '2'),
(42, 1, '_last_order', '18'),
(43, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:11:{s:3:\"key\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:3.21727019;}s:5:\"total\";a:1:{i:1;d:3.21727019;}}s:13:\"line_subtotal\";d:41.78272981;s:17:\"line_subtotal_tax\";d:3.22;s:10:\"line_total\";d:41.78272981;s:8:\"line_tax\";d:3.22;}s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:11:{s:3:\"key\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:3.57474466;}s:5:\"total\";a:1:{i:1;d:3.57474466;}}s:13:\"line_subtotal\";d:46.42525534000001;s:17:\"line_subtotal_tax\";d:3.57;s:10:\"line_total\";d:46.42525534000001;s:8:\"line_tax\";d:3.57;}}}'),
(45, 1, 'billing_address_2', ''),
(46, 1, 'billing_state', ''),
(47, 1, 'shipping_first_name', ''),
(48, 1, 'shipping_last_name', ''),
(49, 1, 'shipping_company', ''),
(50, 1, 'shipping_address_1', ''),
(51, 1, 'shipping_address_2', ''),
(52, 1, 'shipping_city', ''),
(53, 1, 'shipping_postcode', ''),
(54, 1, 'shipping_country', ''),
(55, 1, 'shipping_state', ''),
(56, 1, 'dismissed_no_secure_connection_notice', '1'),
(57, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(58, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(59, 1, 'nav_menu_recently_edited', '18'),
(60, 1, 'wp_media_library_mode', 'grid'),
(61, 1, 'wp_metaslider_user_saw_callout_gallery', '1'),
(62, 1, 'wp_metaslider_optin_notice_dismissed', '1619906285');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Mipam', '$P$BlKwKYCM6bH94VOTrngXHWU5MePTZQ1', 'mipam', 'mipam.guillot@gmail.com', 'http://localhost/site/WORDPRESS/wordpress', '2021-04-12 13:59:59', '', 0, 'Mipam');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wcpdf_invoice_number`
--

CREATE TABLE `wp_wcpdf_invoice_number` (
  `id` int(16) NOT NULL,
  `order_id` int(16) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `calculated_number` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wcpdf_invoice_number`
--

INSERT INTO `wp_wcpdf_invoice_number` (`id`, `order_id`, `date`, `calculated_number`) VALUES
(20220200, 0, '2021-04-12 16:44:28', NULL),
(20220201, 17, '2021-04-12 16:50:22', NULL),
(20220202, 18, '2021-04-12 16:58:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Inscrivez-vous pour recevoir des astuces, des mises à jour des produits et des sources d’inspiration', 'Nous sommes là pour vous, obtenir des astuces, mises à jour de produits et inspirations directement dans votre boîte e-mail', '{}', 'unactioned', 'woocommerce-admin', '2021-04-12 14:38:08', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connectez-vous à votre audience', 'Faites croître votre base clients et augmentez vos ventes avec les outils marketing créés pour WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-12 14:38:08', NULL, 0, 'plain', '', 0, 'info'),
(3, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(5, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-04-11 22:40:04', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'pending', 'woocommerce.com', '2021-04-11 16:38:08', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Se connecter à WooCommerce.com', 'Connectez-vous pour obtenir des notifications et des mises à jour importantes sur les produits.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-12 14:38:08', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'En savoir plus sur les produits variables', 'Les produits variables sont un type de produit puissant qui vous permet de proposer un ensemble de variantes d’un produit avec contrôle des prix, du stock, de l’image et plus pour chaque variante. Vous pouvez l’appliquer à un produit comme une chemise, disponible en plusieurs tailles et dans différentes couleurs.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-12 14:40:04', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-test-checkout', 'info', 'en_US', 'N’oubliez pas de tester votre processus de commande', 'Assurez-vous que votre processus de commande fonctionne correctement avant de mettre en ligne votre boutique. Testez votre processus de paiement dans son intégralité : de l’ajout d’un produit au panier, du choix d’un lieu d’expédition, jusqu’au paiement.', '{}', 'unactioned', 'woocommerce-admin', '2021-04-12 14:40:18', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Oui, s’il vous plait !', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Espace marketing', 'http://localhost/site/WORDPRESS/wordpress/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(19, 18, 'connect', 'Connecter', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(52, 19, 'learn-more', 'En savoir plus', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, ''),
(69, 20, 'test-checkout', 'Tester la validation de commande', 'http://localhost/site/WORDPRESS/wordpress/boutique/', 'actioned', 0, ''),
(182, 3, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, ''),
(183, 4, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(184, 5, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(185, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(186, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(187, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(188, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(189, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(190, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(191, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(192, 13, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, ''),
(193, 13, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, ''),
(194, 14, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
(195, 15, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
(196, 16, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(197, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'Mipam', 'test', 'test', 'mipam.guillot@gmail.com', '2021-04-12 22:00:00', '2021-04-12 11:59:59', 'CH', '1207', 'est', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 17, 11, 0, 1, '2021-04-12 16:50:22', 1, 15, 15, 0, 0, 0, 0),
(2, 18, 11, 0, 1, '2021-04-12 16:58:52', 1, 13.93, 15, 0, 1.07, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(17, 0, '2021-04-12 16:50:22', '2021-04-12 14:50:22', 1, 15, 0, 0, 15, 0, 'wc-on-hold', 1),
(18, 0, '2021-04-12 16:58:52', '2021-04-12 14:58:52', 1, 15, 1.07, 0, 13.93, 1, 'wc-on-hold', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

INSERT INTO `wp_wc_order_tax_lookup` (`order_id`, `tax_rate_id`, `date_created`, `shipping_tax`, `order_tax`, `total_tax`) VALUES
(18, 1, '2021-04-12 16:58:52', 0, 1.07, 1.07);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(11, '', 1, 1, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(19, '', 0, 0, '50.0000', '50.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taux réduit', 'taux-reduit'),
(2, 'Taux zéro', 'taux-zero');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpklist_template_data`
--

CREATE TABLE `wp_wfpklist_template_data` (
  `id_wfpklist_template_data` int(11) NOT NULL,
  `template_name` varchar(200) NOT NULL,
  `template_html` text NOT NULL,
  `template_from` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `template_type` varchar(200) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '11'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '15'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '15'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '11'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '13.927577'),
(15, 2, '_line_subtotal_tax', '1.07'),
(16, 2, '_line_total', '13.927577'),
(17, 2, '_line_tax', '1.07'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:8:\"1.072423\";}s:8:\"subtotal\";a:1:{i:1;s:8:\"1.072423\";}}'),
(19, 3, 'rate_id', '1'),
(20, 3, 'label', 'TVA'),
(21, 3, 'compound', ''),
(22, 3, 'tax_amount', '1.07'),
(23, 3, 'shipping_tax_amount', '0'),
(24, 3, 'rate_percent', '7.7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'TEST', 'line_item', 17),
(2, 'TEST', 'line_item', 18),
(3, 'CH-TVA-1', 'tax', 18);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:10:{s:4:\"cart\";s:942:\"a:2:{s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:11:{s:3:\"key\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:3.21727019;}s:5:\"total\";a:1:{i:1;d:3.21727019;}}s:13:\"line_subtotal\";d:41.78272981;s:17:\"line_subtotal_tax\";d:3.22;s:10:\"line_total\";d:41.78272981;s:8:\"line_tax\";d:3.22;}s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:11:{s:3:\"key\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:3.57474466;}s:5:\"total\";a:1:{i:1;d:3.57474466;}}s:13:\"line_subtotal\";d:46.42525534000001;s:17:\"line_subtotal_tax\";d:3.57;s:10:\"line_total\";d:46.42525534000001;s:8:\"line_tax\";d:3.57;}}\";s:11:\"cart_totals\";s:425:\"a:15:{s:8:\"subtotal\";s:5:\"88.21\";s:12:\"subtotal_tax\";d:6.79;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:5:\"88.21\";s:17:\"cart_contents_tax\";d:6.79;s:19:\"cart_contents_taxes\";a:1:{i:1;d:6.79;}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"95.00\";s:9:\"total_tax\";d:6.79;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:480:\"a:1:{s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:11:{s:3:\"key\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:7.14948932;}s:5:\"total\";a:1:{i:1;d:7.14948932;}}s:13:\"line_subtotal\";d:92.85051068000001;s:17:\"line_subtotal_tax\";d:7.15;s:10:\"line_total\";d:92.85051068000001;s:8:\"line_tax\";d:7.15;}}\";s:8:\"customer\";s:771:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-04-13T12:24:47+02:00\";s:8:\"postcode\";s:4:\"1207\";s:4:\"city\";s:3:\"est\";s:9:\"address_1\";s:4:\"test\";s:7:\"address\";s:4:\"test\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"CH\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"CH\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"test\";s:9:\"last_name\";s:4:\"test\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0791059375\";s:5:\"email\";s:23:\"mipam.guillot@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:6:\"cheque\";s:22:\"order_awaiting_payment\";N;s:10:\"wc_notices\";N;}', 1618411605);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'CH', '', '7.7000', 'TVA', 1, 0, 1, 0, ''),
(2, '', '', '0.0000', 'TVA', 1, 0, 1, 0, 'taux-zero');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rednao_wc_invoice`
--
ALTER TABLE `wp_rednao_wc_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `wp_rednao_wc_invoices_created`
--
ALTER TABLE `wp_rednao_wc_invoices_created`
  ADD PRIMARY KEY (`invoice_created_id`);

--
-- Indexes for table `wp_rednao_wc_invoices_custom_field`
--
ALTER TABLE `wp_rednao_wc_invoices_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wcpdf_invoice_number`
--
ALTER TABLE `wp_wcpdf_invoice_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wfpklist_template_data`
--
ALTER TABLE `wp_wfpklist_template_data`
  ADD PRIMARY KEY (`id_wfpklist_template_data`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1277;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1768;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `wp_rednao_wc_invoice`
--
ALTER TABLE `wp_rednao_wc_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_rednao_wc_invoices_created`
--
ALTER TABLE `wp_rednao_wc_invoices_created`
  MODIFY `invoice_created_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rednao_wc_invoices_custom_field`
--
ALTER TABLE `wp_rednao_wc_invoices_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wcpdf_invoice_number`
--
ALTER TABLE `wp_wcpdf_invoice_number`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20220203;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfpklist_template_data`
--
ALTER TABLE `wp_wfpklist_template_data`
  MODIFY `id_wfpklist_template_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
