-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 09:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schbang_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `sa_commentmeta`
--

CREATE TABLE `sa_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sa_comments`
--

CREATE TABLE `sa_comments` (
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
-- Dumping data for table `sa_comments`
--

INSERT INTO `sa_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-07-30 05:57:52', '2022-07-30 05:57:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sa_contactus_detail`
--

CREATE TABLE `sa_contactus_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileno` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_contactus_detail`
--

INSERT INTO `sa_contactus_detail` (`id`, `name`, `emailid`, `mobileno`, `message`) VALUES
(15, 'Drashti', 'drashtishah123@gmail_com', '2343434343', 'testing'),
(17, 'Drashti shah', 'test123@gmail_com', '2343434343', 'testing 2');

-- --------------------------------------------------------

--
-- Table structure for table `sa_links`
--

CREATE TABLE `sa_links` (
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
-- Table structure for table `sa_options`
--

CREATE TABLE `sa_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_options`
--

INSERT INTO `sa_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/schbang_assignment', 'yes'),
(2, 'home', 'http://localhost/schbang_assignment', 'yes'),
(3, 'blogname', 'Schbang', 'yes'),
(4, 'blogdescription', 'Schbang Developer Assignment', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'drashtishah123@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"our-food/?$\";s:28:\"index.php?post_type=our-food\";s:41:\"our-food/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=our-food&feed=$matches[1]\";s:36:\"our-food/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=our-food&feed=$matches[1]\";s:28:\"our-food/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=our-food&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:36:\"our-food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"our-food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"our-food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"our-food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"our-food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"our-food/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"our-food/([^/]+)/embed/?$\";s:56:\"index.php?post_type=our-food&name=$matches[1]&embed=true\";s:29:\"our-food/([^/]+)/trackback/?$\";s:50:\"index.php?post_type=our-food&name=$matches[1]&tb=1\";s:49:\"our-food/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?post_type=our-food&name=$matches[1]&feed=$matches[2]\";s:44:\"our-food/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?post_type=our-food&name=$matches[1]&feed=$matches[2]\";s:37:\"our-food/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?post_type=our-food&name=$matches[1]&paged=$matches[2]\";s:44:\"our-food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:63:\"index.php?post_type=our-food&name=$matches[1]&cpage=$matches[2]\";s:33:\"our-food/([^/]+)(?:/([0-9]+))?/?$\";s:62:\"index.php?post_type=our-food&name=$matches[1]&page=$matches[2]\";s:25:\"our-food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"our-food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"our-food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"our-food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"our-food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"our-food/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"schbang/schbang.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'schbang', 'yes'),
(41, 'stylesheet', 'schbang', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1674712666', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'sa_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1659340675;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1659376675;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1659376700;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1659419873;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1659419900;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1659419904;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1659851873;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:1:{s:22:\"atY4W4pDcCPqh1eDyqZzPh\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B3TBrIphG.B73xFmv1Rm0.azZH4XUy0\";s:10:\"created_at\";i:1659297819;}}', 'yes'),
(124, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1659165001;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(130, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1659333560;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1659333564;s:7:\"checked\";a:1:{s:7:\"schbang\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(137, '_site_transient_timeout_browser_a0909810a6d132832e28ef6da18ec77c', '1659765501', 'no'),
(138, '_site_transient_browser_a0909810a6d132832e28ef6da18ec77c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(139, '_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8', '1659765503', 'no'),
(140, '_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(142, 'can_compress_scripts', '1', 'no'),
(157, 'WPLANG', '', 'yes'),
(158, 'new_admin_email', 'drashtishah123@gmail.com', 'yes'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(164, 'recently_activated', 'a:0:{}', 'yes'),
(169, 'acf_version', '5.12.2', 'yes'),
(171, '_transient_timeout_acf_plugin_updates', '1659333719', 'no'),
(172, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";}}', 'no'),
(180, 'current_theme', 'schbang', 'yes'),
(181, 'theme_mods_schbang', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:11:\"quick_links\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(182, 'theme_switched', '', 'yes'),
(184, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(209, 'category_children', 'a:0:{}', 'yes'),
(225, 'options_site_logo', '71', 'no'),
(226, '_options_site_logo', 'field_62e4dbfc4ffa2', 'no'),
(227, 'options_add_location', 'a:3:{s:5:\"title\";s:8:\"Hydrabad\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}', 'no'),
(228, '_options_add_location', 'field_62e4dc2e4ffa3', 'no'),
(229, 'options_footer_text', 'Get notified about new amazing products', 'no'),
(230, '_options_footer_text', 'field_62e4de86066f9', 'no'),
(231, 'options_footer_sub_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  It has been the industry\'s standard dummy text ever since. ', 'no'),
(232, '_options_footer_sub_text', 'field_62e4de98066fa', 'no'),
(233, 'options_social_icons', '3', 'no'),
(234, '_options_social_icons', 'field_62e4de4e066f7', 'no'),
(235, 'options_copy_right_text', '© 2022 indianpix', 'no'),
(236, '_options_copy_right_text', 'field_62e4deb1066fb', 'no'),
(237, 'options_cta_title', 'Download app for Exciting Deals', 'no'),
(238, '_options_cta_title', 'field_62e4dede1dc20', 'no'),
(239, 'options_cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'no'),
(240, '_options_cta_text', 'field_62e4deec1dc21', 'no'),
(241, 'options_cta_image', '76', 'no'),
(242, '_options_cta_image', 'field_62e4def61dc22', 'no'),
(243, 'options_cta_button', '2', 'no'),
(244, '_options_cta_button', 'field_62e4df051dc23', 'no'),
(245, 'recovery_mode_email_last_sent', '1659297817', 'yes'),
(268, 'options_social_icons_0_add_social_media', 'a:3:{s:5:\"title\";s:8:\"Facebook\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(269, '_options_social_icons_0_add_social_media', 'field_62e4de5d066f8', 'no'),
(270, 'options_social_icons_1_add_social_media', 'a:3:{s:5:\"title\";s:7:\"Twitter\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(271, '_options_social_icons_1_add_social_media', 'field_62e4de5d066f8', 'no'),
(272, 'options_social_icons_2_add_social_media', 'a:3:{s:5:\"title\";s:9:\"Instagram\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(273, '_options_social_icons_2_add_social_media', 'field_62e4de5d066f8', 'no'),
(274, 'options_cta_button_0_add_button', 'a:3:{s:5:\"title\";s:11:\"Google Play\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(275, '_options_cta_button_0_add_button', 'field_62e4df171dc24', 'no'),
(276, 'options_cta_button_1_add_button', 'a:3:{s:5:\"title\";s:9:\"App Store\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(277, '_options_cta_button_1_add_button', 'field_62e4df171dc24', 'no'),
(288, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(603, 'test_db_version', '1.0.0', 'yes'),
(733, '_site_transient_timeout_theme_roots', '1659335363', 'no'),
(734, '_site_transient_theme_roots', 'a:1:{s:7:\"schbang\";s:7:\"/themes\";}', 'no'),
(735, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1659333565;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";s:19:\"akismet/akismet.php\";s:5:\"4.2.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"schbang/schbang.php\";s:5:\"1.0.0\";}}', 'no'),
(802, '_transient_timeout_global_styles_schbang', '1659336809', 'no'),
(803, '_transient_global_styles_schbang', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(804, '_transient_timeout_global_styles_svg_filters_schbang', '1659336810', 'no'),
(805, '_transient_global_styles_svg_filters_schbang', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sa_postmeta`
--

CREATE TABLE `sa_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_postmeta`
--

INSERT INTO `sa_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_lock', '1659332525:1'),
(6, 11, '_edit_lock', '1659164335:1'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1659164497'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1659164497'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 7, '_wp_page_template', 'page-templates/page-home.php'),
(14, 16, '_edit_last', '1'),
(15, 16, '_edit_lock', '1659320552:1'),
(16, 22, '_menu_item_type', 'custom'),
(17, 22, '_menu_item_menu_item_parent', '0'),
(18, 22, '_menu_item_object_id', '22'),
(19, 22, '_menu_item_object', 'custom'),
(20, 22, '_menu_item_target', ''),
(21, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 22, '_menu_item_xfn', ''),
(23, 22, '_menu_item_url', '#'),
(25, 23, '_menu_item_type', 'custom'),
(26, 23, '_menu_item_menu_item_parent', '0'),
(27, 23, '_menu_item_object_id', '23'),
(28, 23, '_menu_item_object', 'custom'),
(29, 23, '_menu_item_target', ''),
(30, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 23, '_menu_item_xfn', ''),
(32, 23, '_menu_item_url', '#'),
(34, 24, '_menu_item_type', 'custom'),
(35, 24, '_menu_item_menu_item_parent', '0'),
(36, 24, '_menu_item_object_id', '24'),
(37, 24, '_menu_item_object', 'custom'),
(38, 24, '_menu_item_target', ''),
(39, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 24, '_menu_item_xfn', ''),
(41, 24, '_menu_item_url', '#'),
(43, 25, '_menu_item_type', 'custom'),
(44, 25, '_menu_item_menu_item_parent', '0'),
(45, 25, '_menu_item_object_id', '25'),
(46, 25, '_menu_item_object', 'custom'),
(47, 25, '_menu_item_target', ''),
(48, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 25, '_menu_item_xfn', ''),
(50, 25, '_menu_item_url', '#'),
(52, 26, '_edit_lock', '1659166058:1'),
(53, 28, '_edit_lock', '1659296846:1'),
(54, 29, '_edit_lock', '1659166089:1'),
(55, 30, '_edit_lock', '1659166100:1'),
(56, 34, '_menu_item_type', 'post_type'),
(57, 34, '_menu_item_menu_item_parent', '0'),
(58, 34, '_menu_item_object_id', '30'),
(59, 34, '_menu_item_object', 'page'),
(60, 34, '_menu_item_target', ''),
(61, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 34, '_menu_item_xfn', ''),
(63, 34, '_menu_item_url', ''),
(65, 35, '_menu_item_type', 'post_type'),
(66, 35, '_menu_item_menu_item_parent', '0'),
(67, 35, '_menu_item_object_id', '29'),
(68, 35, '_menu_item_object', 'page'),
(69, 35, '_menu_item_target', ''),
(70, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 35, '_menu_item_xfn', ''),
(72, 35, '_menu_item_url', ''),
(74, 36, '_menu_item_type', 'post_type'),
(75, 36, '_menu_item_menu_item_parent', '0'),
(76, 36, '_menu_item_object_id', '28'),
(77, 36, '_menu_item_object', 'page'),
(78, 36, '_menu_item_target', ''),
(79, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 36, '_menu_item_xfn', ''),
(81, 36, '_menu_item_url', ''),
(83, 37, '_menu_item_type', 'post_type'),
(84, 37, '_menu_item_menu_item_parent', '0'),
(85, 37, '_menu_item_object_id', '26'),
(86, 37, '_menu_item_object', 'page'),
(87, 37, '_menu_item_target', ''),
(88, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 37, '_menu_item_xfn', ''),
(90, 37, '_menu_item_url', ''),
(92, 48, '_edit_last', '1'),
(93, 48, '_edit_lock', '1659206571:1'),
(94, 60, '_edit_lock', '1659173649:1'),
(95, 6, '_edit_last', '1'),
(96, 6, '_edit_lock', '1659173158:1'),
(98, 63, '_wp_attached_file', '2022/07/5a1c7e70ca3fe7.9399725215118168168284.png'),
(99, 63, '_wp_attachment_image_alt', '5a1c7e70ca3fe7.9399725215118168168284'),
(100, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:530;s:6:\"height\";i:538;s:4:\"file\";s:49:\"2022/07/5a1c7e70ca3fe7.9399725215118168168284.png\";s:8:\"filesize\";i:255225;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"5a1c7e70ca3fe7.9399725215118168168284-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72550;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"5a1c7e70ca3fe7.9399725215118168168284-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21424;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 64, '_wp_attached_file', '2022/07/7es93lms.png'),
(102, 64, '_wp_attachment_image_alt', '7es93lms'),
(103, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:20:\"2022/07/7es93lms.png\";s:8:\"filesize\";i:211037;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"7es93lms-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:109872;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"7es93lms-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45840;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 65, '_wp_attached_file', '2022/07/aiu45f8t.png'),
(105, 65, '_wp_attachment_image_alt', 'Aiu45f8t'),
(106, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:20:\"2022/07/aiu45f8t.png\";s:8:\"filesize\";i:125454;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"aiu45f8t-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:69599;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"aiu45f8t-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35103;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 66, '_wp_attached_file', '2022/07/dish.png'),
(108, 66, '_wp_attachment_image_alt', 'Dish'),
(109, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:191;s:6:\"height\";i:191;s:4:\"file\";s:16:\"2022/07/dish.png\";s:8:\"filesize\";i:15723;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"dish-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15028;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 67, '_wp_attached_file', '2022/07/eaters-collective-172257-unsplash.png'),
(111, 67, '_wp_attachment_image_alt', 'Eaters Collective 172257 Unsplash'),
(112, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:45:\"2022/07/eaters-collective-172257-unsplash.png\";s:8:\"filesize\";i:175783;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"eaters-collective-172257-unsplash-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105222;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"eaters-collective-172257-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45544;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 68, '_wp_attached_file', '2022/07/food-photographer-jennifer-pallian-1.png'),
(114, 68, '_wp_attachment_image_alt', 'Food Photographer Jennifer Pallian 1'),
(115, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:637;s:6:\"height\";i:640;s:4:\"file\";s:48:\"2022/07/food-photographer-jennifer-pallian-1.png\";s:8:\"filesize\";i:246702;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"food-photographer-jennifer-pallian-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:157876;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"food-photographer-jennifer-pallian-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47157;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 69, '_wp_attached_file', '2022/07/food-photographer-jennifer-pallian-306915-unsplash.png'),
(117, 69, '_wp_attachment_image_alt', 'Food Photographer Jennifer Pallian 306915 Unsplash'),
(118, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:637;s:6:\"height\";i:640;s:4:\"file\";s:62:\"2022/07/food-photographer-jennifer-pallian-306915-unsplash.png\";s:8:\"filesize\";i:824601;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:62:\"food-photographer-jennifer-pallian-306915-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:187574;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:62:\"food-photographer-jennifer-pallian-306915-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55205;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 70, '_wp_attached_file', '2022/07/Group-86.png'),
(120, 70, '_wp_attachment_image_alt', 'Group 86'),
(121, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:895;s:4:\"file\";s:20:\"2022/07/Group-86.png\";s:8:\"filesize\";i:304324;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Group-86-251x300.png\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58695;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Group-86-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23835;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 71, '_wp_attached_file', '2022/07/logo.png'),
(123, 71, '_wp_attachment_image_alt', 'Logo'),
(124, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:155;s:6:\"height\";i:52;s:4:\"file\";s:16:\"2022/07/logo.png\";s:8:\"filesize\";i:2582;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x52.png\";s:5:\"width\";i:150;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2461;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 72, '_wp_attached_file', '2022/07/meeting.png'),
(126, 72, '_wp_attachment_image_alt', 'Meeting'),
(127, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:165;s:6:\"height\";i:194;s:4:\"file\";s:19:\"2022/07/meeting.png\";s:8:\"filesize\";i:7022;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"meeting-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10495;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 73, '_wp_attached_file', '2022/07/p9eh9haz.png'),
(129, 73, '_wp_attachment_image_alt', 'P9eh9haz'),
(130, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:20:\"2022/07/p9eh9haz.png\";s:8:\"filesize\";i:160482;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"p9eh9haz-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102716;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"p9eh9haz-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46990;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 74, '_wp_attached_file', '2022/07/—Pngtree—delicious-food_568171.png'),
(132, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:922;s:6:\"height\";i:914;s:4:\"file\";s:46:\"2022/07/—Pngtree—delicious-food_568171.png\";s:8:\"filesize\";i:1129322;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:46:\"—Pngtree—delicious-food_568171-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:145571;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"—Pngtree—delicious-food_568171-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42513;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:46:\"—Pngtree—delicious-food_568171-768x761.png\";s:5:\"width\";i:768;s:6:\"height\";i:761;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:770495;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 75, '_wp_attached_file', '2022/07/—Pngtree—lettuce_1175257.png'),
(134, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1006;s:6:\"height\";i:1551;s:4:\"file\";s:40:\"2022/07/—Pngtree—lettuce_1175257.png\";s:8:\"filesize\";i:994905;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"—Pngtree—lettuce_1175257-195x300.png\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54590;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"—Pngtree—lettuce_1175257-664x1024.png\";s:5:\"width\";i:664;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:405026;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"—Pngtree—lettuce_1175257-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32570;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"—Pngtree—lettuce_1175257-768x1184.png\";s:5:\"width\";i:768;s:6:\"height\";i:1184;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:509352;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"—Pngtree—lettuce_1175257-996x1536.png\";s:5:\"width\";i:996;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:757186;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 76, '_wp_attached_file', '2022/07/Product-page@2x.png'),
(136, 76, '_wp_attachment_image_alt', 'Product Page@2x'),
(137, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:405;s:6:\"height\";i:875;s:4:\"file\";s:27:\"2022/07/Product-page@2x.png\";s:8:\"filesize\";i:105074;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Product-page@2x-139x300.png\";s:5:\"width\";i:139;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29434;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Product-page@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13209;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 77, '_wp_attached_file', '2022/07/scooter.png'),
(139, 77, '_wp_attachment_image_alt', 'Scooter'),
(140, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:274;s:6:\"height\";i:207;s:4:\"file\";s:19:\"2022/07/scooter.png\";s:8:\"filesize\";i:9483;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"scooter-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12289;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 78, '_wp_attached_file', '2022/07/suts9k7v.png'),
(142, 78, '_wp_attachment_image_alt', 'Suts9k7v'),
(143, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:20:\"2022/07/suts9k7v.png\";s:8:\"filesize\";i:104718;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"suts9k7v-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68871;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"suts9k7v-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31663;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 60, '_thumbnail_id', '69'),
(146, 60, '_edit_last', '1'),
(148, 60, 'location', 'Hitech City'),
(149, 60, '_location', 'field_62e4e80495bf2'),
(150, 79, 'location', 'Hitech City'),
(151, 79, '_location', 'field_62e4e80495bf2'),
(152, 80, '_edit_lock', '1659173647:1'),
(154, 80, '_thumbnail_id', '68'),
(155, 80, '_edit_last', '1'),
(156, 80, 'location', 'Gachibowli'),
(157, 80, '_location', 'field_62e4e80495bf2'),
(158, 82, 'location', 'Gachibowli'),
(159, 82, '_location', 'field_62e4e80495bf2'),
(160, 95, '_edit_last', '1'),
(161, 95, '_edit_lock', '1659173191:1'),
(162, 97, '_edit_last', '1'),
(163, 97, '_edit_lock', '1659173512:1'),
(164, 97, '_thumbnail_id', '67'),
(165, 97, 'add_prize', '$10.50'),
(166, 97, '_add_prize', 'field_62e4f9c5b8bbb'),
(167, 98, '_edit_last', '1'),
(168, 98, '_edit_lock', '1659173497:1'),
(169, 99, '_edit_last', '1'),
(170, 99, '_edit_lock', '1659173498:1'),
(171, 100, '_edit_last', '1'),
(172, 100, '_edit_lock', '1659173499:1'),
(173, 101, '_edit_last', '1'),
(174, 101, '_edit_lock', '1659173499:1'),
(175, 102, '_edit_last', '1'),
(176, 102, '_edit_lock', '1659173499:1'),
(177, 102, '_thumbnail_id', '64'),
(178, 102, 'add_prize', '$10.50'),
(179, 102, '_add_prize', 'field_62e4f9c5b8bbb'),
(180, 101, '_thumbnail_id', '73'),
(181, 101, 'add_prize', '$10.50'),
(182, 101, '_add_prize', 'field_62e4f9c5b8bbb'),
(183, 100, '_thumbnail_id', '78'),
(184, 100, 'add_prize', '$10.50'),
(185, 100, '_add_prize', 'field_62e4f9c5b8bbb'),
(186, 99, '_thumbnail_id', '64'),
(187, 99, 'add_prize', '$10.50'),
(188, 99, '_add_prize', 'field_62e4f9c5b8bbb'),
(189, 98, '_thumbnail_id', '103'),
(190, 98, 'add_prize', '$10.50'),
(191, 98, '_add_prize', 'field_62e4f9c5b8bbb'),
(192, 103, '_wp_attached_file', '2022/07/an_vision-1188492-unsplash.png'),
(193, 103, '_wp_attachment_image_alt', 'An Vision 1188492 Unsplash'),
(194, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:275;s:4:\"file\";s:38:\"2022/07/an_vision-1188492-unsplash.png\";s:8:\"filesize\";i:138955;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"an_vision-1188492-unsplash-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78779;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"an_vision-1188492-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33839;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 7, '_edit_last', '1'),
(196, 7, 'banner_list_0_banner_title', 'Discover Restaurant & Delicious Food'),
(197, 7, '_banner_list_0_banner_title', 'field_62e4e3047de01'),
(198, 7, 'banner_list_0_banner_image', '74'),
(199, 7, '_banner_list_0_banner_image', 'field_62e4e30c7de02'),
(200, 7, 'banner_list', '1'),
(201, 7, '_banner_list', 'field_62e4e3267de03'),
(202, 7, 'content_heading', 'some top restaurant for dining out or in!'),
(203, 7, '_content_heading', 'field_62e4e7bce9329'),
(204, 7, 'content_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(205, 7, '_content_text', 'field_62e4e7c7e932a'),
(206, 7, 'slelect_post', 'a:2:{i:0;s:2:\"60\";i:1;s:2:\"80\";}'),
(207, 7, '_slelect_post', 'field_62e4f6a96512d'),
(208, 7, 'see_more_link', 'a:3:{s:5:\"title\";s:8:\"see more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(209, 7, '_see_more_link', 'field_62e4f6ec6512e'),
(210, 7, 'section_heading', 'advanced booking'),
(211, 7, '_section_heading', 'field_62e4f7266512f'),
(212, 7, 'search_form_shortcode', ''),
(213, 7, '_search_form_shortcode', 'field_62e4f73965130'),
(214, 7, 'service_heading', 'Our Services'),
(215, 7, '_service_heading', 'field_62e4f7d565131'),
(216, 7, 'services_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(217, 7, '_services_content', 'field_62e4f7e265132'),
(218, 7, 'services_listing_0_services_list_icon', '72'),
(219, 7, '_services_listing_0_services_list_icon', 'field_62e4f82465134'),
(220, 7, 'services_listing_0_services_list_title', 'advanced table booking'),
(221, 7, '_services_listing_0_services_list_title', 'field_62e4f83a65135'),
(222, 7, 'services_listing_0_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(223, 7, '_services_listing_0_services_list_content', 'field_62e4f84765136'),
(224, 7, 'services_listing_1_services_list_icon', '66'),
(225, 7, '_services_listing_1_services_list_icon', 'field_62e4f82465134'),
(226, 7, 'services_listing_1_services_list_title', 'Food for Free 24/7'),
(227, 7, '_services_listing_1_services_list_title', 'field_62e4f83a65135'),
(228, 7, 'services_listing_1_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(229, 7, '_services_listing_1_services_list_content', 'field_62e4f84765136'),
(230, 7, 'services_listing_2_services_list_icon', '77'),
(231, 7, '_services_listing_2_services_list_icon', 'field_62e4f82465134'),
(232, 7, 'services_listing_2_services_list_title', 'free home delivery at your door steps'),
(233, 7, '_services_listing_2_services_list_title', 'field_62e4f83a65135'),
(234, 7, 'services_listing_2_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(235, 7, '_services_listing_2_services_list_content', 'field_62e4f84765136'),
(236, 7, 'services_listing', '3'),
(237, 7, '_services_listing', 'field_62e4f80865133'),
(238, 7, '_', 'field_62e4f9443aef2'),
(239, 7, 'foods_section_content', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.'),
(240, 7, '_foods_section_content', 'field_62e4f9483aef3'),
(241, 104, 'banner_list_0_banner_title', 'Discover Restaurant & Delicious Food'),
(242, 104, '_banner_list_0_banner_title', 'field_62e4e3047de01'),
(243, 104, 'banner_list_0_banner_image', '74'),
(244, 104, '_banner_list_0_banner_image', 'field_62e4e30c7de02'),
(245, 104, 'banner_list', '1'),
(246, 104, '_banner_list', 'field_62e4e3267de03'),
(247, 104, 'content_heading', 'some top restaurant for dining out or in!'),
(248, 104, '_content_heading', 'field_62e4e7bce9329'),
(249, 104, 'content_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(250, 104, '_content_text', 'field_62e4e7c7e932a'),
(251, 104, 'slelect_post', 'a:2:{i:0;s:2:\"60\";i:1;s:2:\"80\";}'),
(252, 104, '_slelect_post', 'field_62e4f6a96512d'),
(253, 104, 'see_more_link', 'a:3:{s:5:\"title\";s:8:\"see more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(254, 104, '_see_more_link', 'field_62e4f6ec6512e'),
(255, 104, 'section_heading', 'advanced booking'),
(256, 104, '_section_heading', 'field_62e4f7266512f'),
(257, 104, 'search_form_shortcode', ''),
(258, 104, '_search_form_shortcode', 'field_62e4f73965130'),
(259, 104, 'service_heading', 'Our Services'),
(260, 104, '_service_heading', 'field_62e4f7d565131'),
(261, 104, 'services_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(262, 104, '_services_content', 'field_62e4f7e265132'),
(263, 104, 'services_listing_0_services_list_icon', '72'),
(264, 104, '_services_listing_0_services_list_icon', 'field_62e4f82465134'),
(265, 104, 'services_listing_0_services_list_title', 'advanced table booking'),
(266, 104, '_services_listing_0_services_list_title', 'field_62e4f83a65135'),
(267, 104, 'services_listing_0_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(268, 104, '_services_listing_0_services_list_content', 'field_62e4f84765136'),
(269, 104, 'services_listing_1_services_list_icon', '66'),
(270, 104, '_services_listing_1_services_list_icon', 'field_62e4f82465134'),
(271, 104, 'services_listing_1_services_list_title', 'Food for Free 24/7'),
(272, 104, '_services_listing_1_services_list_title', 'field_62e4f83a65135'),
(273, 104, 'services_listing_1_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(274, 104, '_services_listing_1_services_list_content', 'field_62e4f84765136'),
(275, 104, 'services_listing_2_services_list_icon', '77'),
(276, 104, '_services_listing_2_services_list_icon', 'field_62e4f82465134'),
(277, 104, 'services_listing_2_services_list_title', 'free home delivery at your door steps'),
(278, 104, '_services_listing_2_services_list_title', 'field_62e4f83a65135'),
(279, 104, 'services_listing_2_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(280, 104, '_services_listing_2_services_list_content', 'field_62e4f84765136'),
(281, 104, 'services_listing', '3'),
(282, 104, '_services_listing', 'field_62e4f80865133'),
(283, 104, 'foods_section_content', ''),
(284, 104, '_foods_section_content', 'field_62e4f9483aef3'),
(285, 105, 'banner_list_0_banner_title', 'Discover Restaurant & Delicious Food'),
(286, 105, '_banner_list_0_banner_title', 'field_62e4e3047de01'),
(287, 105, 'banner_list_0_banner_image', '74'),
(288, 105, '_banner_list_0_banner_image', 'field_62e4e30c7de02'),
(289, 105, 'banner_list', '1'),
(290, 105, '_banner_list', 'field_62e4e3267de03'),
(291, 105, 'content_heading', 'some top restaurant for dining out or in!'),
(292, 105, '_content_heading', 'field_62e4e7bce9329'),
(293, 105, 'content_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(294, 105, '_content_text', 'field_62e4e7c7e932a'),
(295, 105, 'slelect_post', 'a:2:{i:0;s:2:\"60\";i:1;s:2:\"80\";}'),
(296, 105, '_slelect_post', 'field_62e4f6a96512d'),
(297, 105, 'see_more_link', 'a:3:{s:5:\"title\";s:8:\"see more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(298, 105, '_see_more_link', 'field_62e4f6ec6512e'),
(299, 105, 'section_heading', 'advanced booking'),
(300, 105, '_section_heading', 'field_62e4f7266512f'),
(301, 105, 'search_form_shortcode', ''),
(302, 105, '_search_form_shortcode', 'field_62e4f73965130'),
(303, 105, 'service_heading', 'Our Services'),
(304, 105, '_service_heading', 'field_62e4f7d565131'),
(305, 105, 'services_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(306, 105, '_services_content', 'field_62e4f7e265132'),
(307, 105, 'services_listing_0_services_list_icon', '72'),
(308, 105, '_services_listing_0_services_list_icon', 'field_62e4f82465134'),
(309, 105, 'services_listing_0_services_list_title', 'advanced table booking'),
(310, 105, '_services_listing_0_services_list_title', 'field_62e4f83a65135'),
(311, 105, 'services_listing_0_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(312, 105, '_services_listing_0_services_list_content', 'field_62e4f84765136'),
(313, 105, 'services_listing_1_services_list_icon', '66'),
(314, 105, '_services_listing_1_services_list_icon', 'field_62e4f82465134'),
(315, 105, 'services_listing_1_services_list_title', 'Food for Free 24/7'),
(316, 105, '_services_listing_1_services_list_title', 'field_62e4f83a65135'),
(317, 105, 'services_listing_1_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(318, 105, '_services_listing_1_services_list_content', 'field_62e4f84765136'),
(319, 105, 'services_listing_2_services_list_icon', '77'),
(320, 105, '_services_listing_2_services_list_icon', 'field_62e4f82465134'),
(321, 105, 'services_listing_2_services_list_title', 'free home delivery at your door steps'),
(322, 105, '_services_listing_2_services_list_title', 'field_62e4f83a65135'),
(323, 105, 'services_listing_2_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(324, 105, '_services_listing_2_services_list_content', 'field_62e4f84765136'),
(325, 105, 'services_listing', '3'),
(326, 105, '_services_listing', 'field_62e4f80865133'),
(327, 105, 'foods_section_content', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.'),
(328, 105, '_foods_section_content', 'field_62e4f9483aef3'),
(331, 107, 'banner_list_0_banner_title', 'Discover Restaurant & Delicious Food'),
(332, 107, '_banner_list_0_banner_title', 'field_62e4e3047de01'),
(333, 107, 'banner_list_0_banner_image', '74'),
(334, 107, '_banner_list_0_banner_image', 'field_62e4e30c7de02'),
(335, 107, 'banner_list', '1'),
(336, 107, '_banner_list', 'field_62e4e3267de03'),
(337, 107, 'content_heading', 'some top restaurant for dining out or in!'),
(338, 107, '_content_heading', 'field_62e4e7bce9329'),
(339, 107, 'content_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(340, 107, '_content_text', 'field_62e4e7c7e932a'),
(341, 107, 'slelect_post', 'a:2:{i:0;s:2:\"60\";i:1;s:2:\"80\";}'),
(342, 107, '_slelect_post', 'field_62e4f6a96512d'),
(343, 107, 'see_more_link', 'a:3:{s:5:\"title\";s:8:\"see more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(344, 107, '_see_more_link', 'field_62e4f6ec6512e'),
(345, 107, 'section_heading', 'advanced booking'),
(346, 107, '_section_heading', 'field_62e4f7266512f'),
(347, 107, 'search_form_shortcode', ''),
(348, 107, '_search_form_shortcode', 'field_62e4f73965130'),
(349, 107, 'service_heading', 'Our Services'),
(350, 107, '_service_heading', 'field_62e4f7d565131'),
(351, 107, 'services_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(352, 107, '_services_content', 'field_62e4f7e265132'),
(353, 107, 'services_listing_0_services_list_icon', '72'),
(354, 107, '_services_listing_0_services_list_icon', 'field_62e4f82465134'),
(355, 107, 'services_listing_0_services_list_title', 'advanced table booking'),
(356, 107, '_services_listing_0_services_list_title', 'field_62e4f83a65135'),
(357, 107, 'services_listing_0_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(358, 107, '_services_listing_0_services_list_content', 'field_62e4f84765136'),
(359, 107, 'services_listing_1_services_list_icon', '66'),
(360, 107, '_services_listing_1_services_list_icon', 'field_62e4f82465134'),
(361, 107, 'services_listing_1_services_list_title', 'Food for Free 24/7'),
(362, 107, '_services_listing_1_services_list_title', 'field_62e4f83a65135'),
(363, 107, 'services_listing_1_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(364, 107, '_services_listing_1_services_list_content', 'field_62e4f84765136'),
(365, 107, 'services_listing_2_services_list_icon', '77'),
(366, 107, '_services_listing_2_services_list_icon', 'field_62e4f82465134'),
(367, 107, 'services_listing_2_services_list_title', 'free home delivery at your door steps'),
(368, 107, '_services_listing_2_services_list_title', 'field_62e4f83a65135'),
(369, 107, 'services_listing_2_services_list_content', 'Lorem ipsum dolor sit amet, consectetur '),
(370, 107, '_services_listing_2_services_list_content', 'field_62e4f84765136'),
(371, 107, 'services_listing', '3'),
(372, 107, '_services_listing', 'field_62e4f80865133'),
(373, 107, 'foods_section_content', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.'),
(374, 107, '_foods_section_content', 'field_62e4f9483aef3'),
(375, 28, '_wp_page_template', 'page-templates/page-contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `sa_posts`
--

CREATE TABLE `sa_posts` (
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
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_posts`
--

INSERT INTO `sa_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-07-30 05:57:52', '2022-07-30 05:57:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-07-30 05:57:52', '2022-07-30 05:57:52', '', 0, 'http://localhost/schbang_assignment/?p=1', 0, 'post', '', 1),
(2, 1, '2022-07-30 05:57:52', '2022-07-30 05:57:52', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/schbang_assignment/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-07-30 07:01:37', '2022-07-30 07:01:37', '', 0, 'http://localhost/schbang_assignment/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-07-30 05:57:52', '2022-07-30 05:57:52', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/schbang_assignment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-07-30 07:01:37', '2022-07-30 07:01:37', '', 0, 'http://localhost/schbang_assignment/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-07-30 05:58:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-30 05:58:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/schbang_assignment/?p=4', 0, 'post', '', 0),
(6, 1, '2022-07-30 08:13:28', '2022-07-30 08:13:28', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Post Fields', 'post-fields', 'publish', 'closed', 'closed', '', 'group_62e4ca90a2ed1', '', '', '2022-07-30 08:13:28', '2022-07-30 08:13:28', '', 0, 'http://localhost/schbang_assignment/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2022-07-30 06:56:24', '2022-07-30 06:56:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-07-30 15:03:14', '2022-07-30 15:03:14', '', 0, 'http://localhost/schbang_assignment/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-07-30 06:56:14', '2022-07-30 06:56:14', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-07-30 06:56:14', '2022-07-30 06:56:14', '', 0, 'http://localhost/schbang_assignment/index.php/2022/07/30/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(9, 1, '2022-07-30 06:56:24', '2022-07-30 06:56:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-07-30 06:56:24', '2022-07-30 06:56:24', '', 7, 'http://localhost/schbang_assignment/?p=9', 0, 'revision', '', 0),
(11, 1, '2022-07-30 07:01:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-07-30 07:01:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/schbang_assignment/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-07-30 07:01:37', '2022-07-30 07:01:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/schbang_assignment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-07-30 07:01:37', '2022-07-30 07:01:37', '', 3, 'http://localhost/schbang_assignment/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-07-30 07:01:37', '2022-07-30 07:01:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/schbang_assignment/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-07-30 07:01:37', '2022-07-30 07:01:37', '', 2, 'http://localhost/schbang_assignment/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-07-30 07:07:15', '2022-07-30 07:07:15', '<!-- wp:group {\"tagName\":\"header\",\"layout\":{\"inherit\":true}} -->\n<header class=\"wp-block-group\"><!-- wp:site-title /-->\n\n<!-- wp:site-tagline /--></header>\n<!-- /wp:group -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:group {\"tagName\":\"main\"} -->\n<main class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"inherit\":true}} -->\n<div class=\"wp-block-group\"><!-- wp:post-title /--></div>\n<!-- /wp:group -->\n\n<!-- wp:post-content {\"layout\":{\"inherit\":true}} /--></main>\n<!-- /wp:group -->', 'Home', '', 'publish', 'closed', 'closed', '', 'wp-custom-template-home', '', '', '2022-07-30 07:07:15', '2022-07-30 07:07:15', '', 0, 'http://localhost/schbang_assignment/index.php/2022/07/30/wp-custom-template-home/', 0, 'wp_template', '', 0),
(15, 1, '2022-07-30 07:13:20', '2022-07-30 07:13:20', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-schbang', '', '', '2022-07-30 07:13:20', '2022-07-30 07:13:20', '', 0, 'http://localhost/schbang_assignment/index.php/2022/07/30/wp-global-styles-schbang/', 0, 'wp_global_styles', '', 0),
(16, 1, '2022-07-30 07:17:33', '2022-07-30 07:17:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'General Fields', 'general-fields', 'publish', 'closed', 'closed', '', 'group_62e4da5acb14a', '', '', '2022-07-30 07:35:17', '2022-07-30 07:35:17', '', 0, 'http://localhost/schbang_assignment/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2022-07-30 07:18:18', '2022-07-30 07:18:18', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_62e4db0f0de31', '', '', '2022-07-30 07:18:18', '2022-07-30 07:18:18', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2022-07-30 07:18:18', '2022-07-30 07:18:18', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_62e4db1d0de32', '', '', '2022-07-30 07:24:33', '2022-07-30 07:24:33', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=18', 3, 'acf-field', '', 0),
(19, 1, '2022-07-30 07:18:19', '2022-07-30 07:18:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'CTA', 'cta', 'publish', 'closed', 'closed', '', 'field_62e4db2a0de33', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=19', 8, 'acf-field', '', 0),
(20, 1, '2022-07-30 07:24:33', '2022-07-30 07:24:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Logo', 'site_logo', 'publish', 'closed', 'closed', '', 'field_62e4dbfc4ffa2', '', '', '2022-07-30 07:24:33', '2022-07-30 07:24:33', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2022-07-30 07:24:33', '2022-07-30 07:24:33', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Add Location', 'add_location', 'publish', 'closed', 'closed', '', 'field_62e4dc2e4ffa3', '', '', '2022-07-30 07:24:33', '2022-07-30 07:24:33', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(22, 1, '2022-07-30 07:26:32', '2022-07-30 07:26:32', '', 'Manu One', '', 'publish', 'closed', 'closed', '', 'manu-one', '', '', '2022-07-30 07:26:32', '2022-07-30 07:26:32', '', 0, 'http://localhost/schbang_assignment/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2022-07-30 07:26:33', '2022-07-30 07:26:33', '', 'Manu Two', '', 'publish', 'closed', 'closed', '', 'manu-two', '', '', '2022-07-30 07:26:33', '2022-07-30 07:26:33', '', 0, 'http://localhost/schbang_assignment/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2022-07-30 07:26:33', '2022-07-30 07:26:33', '', 'Manu Three', '', 'publish', 'closed', 'closed', '', 'manu-three', '', '', '2022-07-30 07:26:33', '2022-07-30 07:26:33', '', 0, 'http://localhost/schbang_assignment/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2022-07-30 07:26:34', '2022-07-30 07:26:34', '', 'Manu Four', '', 'publish', 'closed', 'closed', '', 'manu-four', '', '', '2022-07-30 07:26:34', '2022-07-30 07:26:34', '', 0, 'http://localhost/schbang_assignment/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2022-07-30 07:29:47', '2022-07-30 07:29:47', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2022-07-30 07:29:47', '2022-07-30 07:29:47', '', 0, 'http://localhost/schbang_assignment/?page_id=26', 0, 'page', '', 0),
(27, 1, '2022-07-30 07:29:47', '2022-07-30 07:29:47', '', 'Product', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2022-07-30 07:29:47', '2022-07-30 07:29:47', '', 26, 'http://localhost/schbang_assignment/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-07-30 07:30:12', '2022-07-30 07:30:12', '', 'Company', '', 'publish', 'closed', 'closed', '', 'company', '', '', '2022-07-31 12:29:31', '2022-07-31 12:29:31', '', 0, 'http://localhost/schbang_assignment/?page_id=28', 0, 'page', '', 0),
(29, 1, '2022-07-30 07:30:28', '2022-07-30 07:30:28', '', 'Learn more', '', 'publish', 'closed', 'closed', '', 'learn-more', '', '', '2022-07-30 07:30:28', '2022-07-30 07:30:28', '', 0, 'http://localhost/schbang_assignment/?page_id=29', 0, 'page', '', 0),
(30, 1, '2022-07-30 07:30:41', '2022-07-30 07:30:41', '', 'Get in touch', '', 'publish', 'closed', 'closed', '', 'get-in-touch', '', '', '2022-07-30 07:30:41', '2022-07-30 07:30:41', '', 0, 'http://localhost/schbang_assignment/?page_id=30', 0, 'page', '', 0),
(31, 1, '2022-07-30 07:30:12', '2022-07-30 07:30:12', '', 'Company', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-07-30 07:30:12', '2022-07-30 07:30:12', '', 28, 'http://localhost/schbang_assignment/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-07-30 07:30:28', '2022-07-30 07:30:28', '', 'Learn more', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-07-30 07:30:28', '2022-07-30 07:30:28', '', 29, 'http://localhost/schbang_assignment/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-07-30 07:30:41', '2022-07-30 07:30:41', '', 'Get in touch', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-07-30 07:30:41', '2022-07-30 07:30:41', '', 30, 'http://localhost/schbang_assignment/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-07-30 07:31:19', '2022-07-30 07:31:19', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2022-07-30 07:31:19', '2022-07-30 07:31:19', '', 0, 'http://localhost/schbang_assignment/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2022-07-30 07:31:18', '2022-07-30 07:31:18', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2022-07-30 07:31:18', '2022-07-30 07:31:18', '', 0, 'http://localhost/schbang_assignment/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2022-07-30 07:31:18', '2022-07-30 07:31:18', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2022-07-30 07:31:18', '2022-07-30 07:31:18', '', 0, 'http://localhost/schbang_assignment/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2022-07-30 07:31:18', '2022-07-30 07:31:18', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2022-07-30 07:31:18', '2022-07-30 07:31:18', '', 0, 'http://localhost/schbang_assignment/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2022-07-30 07:33:30', '2022-07-30 07:33:30', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Footer Text', 'footer_text', 'publish', 'closed', 'closed', '', 'field_62e4de86066f9', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=38', 4, 'acf-field', '', 0),
(39, 1, '2022-07-30 07:33:30', '2022-07-30 07:33:30', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Footer Sub Text', 'footer_sub_text', 'publish', 'closed', 'closed', '', 'field_62e4de98066fa', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=39', 5, 'acf-field', '', 0),
(40, 1, '2022-07-30 07:33:30', '2022-07-30 07:33:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Social Icons', 'social_icons', 'publish', 'closed', 'closed', '', 'field_62e4de4e066f7', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=40', 6, 'acf-field', '', 0),
(41, 1, '2022-07-30 07:33:30', '2022-07-30 07:33:30', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Add Social Media', 'add_social_media', 'publish', 'closed', 'closed', '', 'field_62e4de5d066f8', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 40, 'http://localhost/schbang_assignment/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(42, 1, '2022-07-30 07:33:30', '2022-07-30 07:33:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copy Right Text', 'copy_right_text', 'publish', 'closed', 'closed', '', 'field_62e4deb1066fb', '', '', '2022-07-30 07:33:30', '2022-07-30 07:33:30', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=42', 7, 'acf-field', '', 0),
(43, 1, '2022-07-30 07:35:16', '2022-07-30 07:35:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CTA Title', 'cta_title', 'publish', 'closed', 'closed', '', 'field_62e4dede1dc20', '', '', '2022-07-30 07:35:16', '2022-07-30 07:35:16', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=43', 9, 'acf-field', '', 0),
(44, 1, '2022-07-30 07:35:16', '2022-07-30 07:35:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CTA Text', 'cta_text', 'publish', 'closed', 'closed', '', 'field_62e4deec1dc21', '', '', '2022-07-30 07:35:16', '2022-07-30 07:35:16', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=44', 10, 'acf-field', '', 0),
(45, 1, '2022-07-30 07:35:16', '2022-07-30 07:35:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'CTA Image', 'cta_image', 'publish', 'closed', 'closed', '', 'field_62e4def61dc22', '', '', '2022-07-30 07:35:16', '2022-07-30 07:35:16', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=45', 11, 'acf-field', '', 0),
(46, 1, '2022-07-30 07:35:16', '2022-07-30 07:35:16', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'CTA Button', 'cta_button', 'publish', 'closed', 'closed', '', 'field_62e4df051dc23', '', '', '2022-07-30 07:35:16', '2022-07-30 07:35:16', '', 16, 'http://localhost/schbang_assignment/?post_type=acf-field&p=46', 12, 'acf-field', '', 0),
(47, 1, '2022-07-30 07:35:16', '2022-07-30 07:35:16', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Add Button', 'add_button', 'publish', 'closed', 'closed', '', 'field_62e4df171dc24', '', '', '2022-07-30 07:35:16', '2022-07-30 07:35:16', '', 46, 'http://localhost/schbang_assignment/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2022-07-30 07:35:38', '2022-07-30 07:35:38', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"page-templates/page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page Field', 'home-page-field', 'publish', 'closed', 'closed', '', 'group_62e4df3b79850', '', '', '2022-07-30 18:20:33', '2022-07-30 18:20:33', '', 0, 'http://localhost/schbang_assignment/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner Section', 'banner_section', 'publish', 'closed', 'closed', '', 'field_62e4e19ae3719', '', '', '2022-07-30 07:49:57', '2022-07-30 07:49:57', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'After Banner Text Section', 'after_banner_text_section', 'publish', 'closed', 'closed', '', 'field_62e4e1b2e371a', '', '', '2022-07-30 07:52:42', '2022-07-30 07:52:42', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=50', 2, 'acf-field', '', 0),
(51, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Post listing Section', 'after_banner_text_section_copy', 'publish', 'closed', 'closed', '', 'field_62e4e1d3e371b', '', '', '2022-07-30 08:12:18', '2022-07-30 08:12:18', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=51', 5, 'acf-field', '', 0),
(52, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Advance Booking Section', 'advance_booking_section', 'publish', 'closed', 'closed', '', 'field_62e4e256e371c', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=52', 8, 'acf-field', '', 0),
(53, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Our Services Section', 'our_services_section', 'publish', 'closed', 'closed', '', 'field_62e4e272e371d', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=53', 11, 'acf-field', '', 0),
(54, 1, '2022-07-30 07:49:57', '2022-07-30 07:49:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Our Foods Section', 'our_foods_section', 'publish', 'closed', 'closed', '', 'field_62e4e28de371e', '', '', '2022-07-30 09:28:17', '2022-07-30 09:28:17', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=54', 15, 'acf-field', '', 0),
(55, 1, '2022-07-30 07:52:42', '2022-07-30 07:52:42', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Banner List', 'banner_list', 'publish', 'closed', 'closed', '', 'field_62e4e3267de03', '', '', '2022-07-30 07:52:42', '2022-07-30 07:52:42', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2022-07-30 07:52:42', '2022-07-30 07:52:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Title', 'banner_title', 'publish', 'closed', 'closed', '', 'field_62e4e3047de01', '', '', '2022-07-30 07:52:42', '2022-07-30 07:52:42', '', 55, 'http://localhost/schbang_assignment/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2022-07-30 07:52:42', '2022-07-30 07:52:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_62e4e30c7de02', '', '', '2022-07-30 07:52:42', '2022-07-30 07:52:42', '', 55, 'http://localhost/schbang_assignment/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2022-07-30 08:12:17', '2022-07-30 08:12:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content Heading', 'content_heading', 'publish', 'closed', 'closed', '', 'field_62e4e7bce9329', '', '', '2022-07-30 08:12:17', '2022-07-30 08:12:17', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=58', 3, 'acf-field', '', 0),
(59, 1, '2022-07-30 08:12:18', '2022-07-30 08:12:18', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content Text', 'content_text', 'publish', 'closed', 'closed', '', 'field_62e4e7c7e932a', '', '', '2022-07-30 08:12:18', '2022-07-30 08:12:18', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=59', 4, 'acf-field', '', 0),
(60, 1, '2022-07-30 08:14:30', '2022-07-30 08:14:30', '', 'Fire Water', '', 'publish', 'open', 'open', '', 'fire-water', '', '', '2022-07-30 09:10:27', '2022-07-30 09:10:27', '', 0, 'http://localhost/schbang_assignment/?p=60', 0, 'post', '', 0),
(61, 1, '2022-07-30 08:13:28', '2022-07-30 08:13:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_62e4e80495bf2', '', '', '2022-07-30 08:13:28', '2022-07-30 08:13:28', '', 6, 'http://localhost/schbang_assignment/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2022-07-30 08:14:30', '2022-07-30 08:14:30', '', 'Fire Water', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2022-07-30 08:14:30', '2022-07-30 08:14:30', '', 60, 'http://localhost/schbang_assignment/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-07-30 09:09:42', '2022-07-30 09:09:42', '', '5a1c7e70ca3fe7.9399725215118168168284', '', 'inherit', 'open', 'closed', '', '5a1c7e70ca3fe7-9399725215118168168284', '', '', '2022-07-30 09:09:42', '2022-07-30 09:09:42', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/5a1c7e70ca3fe7.9399725215118168168284.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2022-07-30 09:09:44', '2022-07-30 09:09:44', '', '7es93lms', '', 'inherit', 'open', 'closed', '', '7es93lms', '', '', '2022-07-30 09:09:44', '2022-07-30 09:09:44', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/7es93lms.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2022-07-30 09:09:45', '2022-07-30 09:09:45', '', 'aiu45f8t', '', 'inherit', 'open', 'closed', '', 'aiu45f8t', '', '', '2022-07-30 09:09:45', '2022-07-30 09:09:45', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/aiu45f8t.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2022-07-30 09:09:46', '2022-07-30 09:09:46', '', 'dish', '', 'inherit', 'open', 'closed', '', 'dish', '', '', '2022-07-30 09:09:46', '2022-07-30 09:09:46', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/dish.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2022-07-30 09:09:47', '2022-07-30 09:09:47', '', 'eaters-collective-172257-unsplash', '', 'inherit', 'open', 'closed', '', 'eaters-collective-172257-unsplash', '', '', '2022-07-30 09:09:47', '2022-07-30 09:09:47', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/eaters-collective-172257-unsplash.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2022-07-30 09:09:47', '2022-07-30 09:09:47', '', 'food-photographer-jennifer-pallian-1', '', 'inherit', 'open', 'closed', '', 'food-photographer-jennifer-pallian-1', '', '', '2022-07-30 09:09:47', '2022-07-30 09:09:47', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/food-photographer-jennifer-pallian-1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2022-07-30 09:09:48', '2022-07-30 09:09:48', '', 'food-photographer-jennifer-pallian-306915-unsplash', '', 'inherit', 'open', 'closed', '', 'food-photographer-jennifer-pallian-306915-unsplash', '', '', '2022-07-30 09:09:48', '2022-07-30 09:09:48', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/food-photographer-jennifer-pallian-306915-unsplash.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2022-07-30 09:09:49', '2022-07-30 09:09:49', '', 'Group 86', '', 'inherit', 'open', 'closed', '', 'group-86', '', '', '2022-07-30 09:09:49', '2022-07-30 09:09:49', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/Group-86.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2022-07-30 09:09:50', '2022-07-30 09:09:50', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-07-30 09:09:50', '2022-07-30 09:09:50', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/logo.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2022-07-30 09:09:51', '2022-07-30 09:09:51', '', 'meeting', '', 'inherit', 'open', 'closed', '', 'meeting', '', '', '2022-07-30 09:09:51', '2022-07-30 09:09:51', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/meeting.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2022-07-30 09:09:52', '2022-07-30 09:09:52', '', 'p9eh9haz', '', 'inherit', 'open', 'closed', '', 'p9eh9haz', '', '', '2022-07-30 09:09:52', '2022-07-30 09:09:52', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/p9eh9haz.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2022-07-30 09:09:52', '2022-07-30 09:09:52', '', '—Pngtree—delicious food_568171', '', 'inherit', 'open', 'closed', '', 'pngtree-delicious-food_568171', '', '', '2022-07-30 09:09:52', '2022-07-30 09:09:52', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/—Pngtree—delicious-food_568171.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2022-07-30 09:09:54', '2022-07-30 09:09:54', '', '—Pngtree—lettuce_1175257', '', 'inherit', 'open', 'closed', '', 'pngtree-lettuce_1175257', '', '', '2022-07-30 09:09:54', '2022-07-30 09:09:54', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/—Pngtree—lettuce_1175257.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2022-07-30 09:09:56', '2022-07-30 09:09:56', '', 'Product page@2x', '', 'inherit', 'open', 'closed', '', 'product-page2x', '', '', '2022-07-30 09:09:56', '2022-07-30 09:09:56', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/Product-page@2x.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2022-07-30 09:09:57', '2022-07-30 09:09:57', '', 'scooter', '', 'inherit', 'open', 'closed', '', 'scooter', '', '', '2022-07-30 09:09:57', '2022-07-30 09:09:57', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/scooter.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2022-07-30 09:09:59', '2022-07-30 09:09:59', '', 'suts9k7v', '', 'inherit', 'open', 'closed', '', 'suts9k7v', '', '', '2022-07-30 09:09:59', '2022-07-30 09:09:59', '', 60, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/suts9k7v.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2022-07-30 09:10:27', '2022-07-30 09:10:27', '', 'Fire Water', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2022-07-30 09:10:27', '2022-07-30 09:10:27', '', 60, 'http://localhost/schbang_assignment/?p=79', 0, 'revision', '', 0),
(80, 1, '2022-07-30 09:11:52', '2022-07-30 09:11:52', '', 'The Wonton', '', 'publish', 'open', 'open', '', 'the-wonton', '', '', '2022-07-30 09:11:54', '2022-07-30 09:11:54', '', 0, 'http://localhost/schbang_assignment/?p=80', 0, 'post', '', 0),
(81, 1, '2022-07-30 09:11:52', '2022-07-30 09:11:52', '', 'The Wonton', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2022-07-30 09:11:52', '2022-07-30 09:11:52', '', 80, 'http://localhost/schbang_assignment/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-07-30 09:11:54', '2022-07-30 09:11:54', '', 'The Wonton', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2022-07-30 09:11:54', '2022-07-30 09:11:54', '', 80, 'http://localhost/schbang_assignment/?p=82', 0, 'revision', '', 0),
(83, 1, '2022-07-30 09:23:28', '2022-07-30 09:23:28', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Slelect Post', 'slelect_post', 'publish', 'closed', 'closed', '', 'field_62e4f6a96512d', '', '', '2022-07-30 09:23:28', '2022-07-30 09:23:28', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=83', 6, 'acf-field', '', 0),
(84, 1, '2022-07-30 09:23:29', '2022-07-30 09:23:29', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'See More Link', 'see_more_link', 'publish', 'closed', 'closed', '', 'field_62e4f6ec6512e', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=84', 7, 'acf-field', '', 0),
(85, 1, '2022-07-30 09:23:29', '2022-07-30 09:23:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Heading', 'section_heading', 'publish', 'closed', 'closed', '', 'field_62e4f7266512f', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=85', 9, 'acf-field', '', 0),
(86, 1, '2022-07-30 09:23:29', '2022-07-30 09:23:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Search Form ShortCode', 'search_form_shortcode', 'publish', 'closed', 'closed', '', 'field_62e4f73965130', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=86', 10, 'acf-field', '', 0);
INSERT INTO `sa_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2022-07-30 09:23:29', '2022-07-30 09:23:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'service Heading', 'service_heading', 'publish', 'closed', 'closed', '', 'field_62e4f7d565131', '', '', '2022-07-30 09:23:29', '2022-07-30 09:23:29', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=87', 12, 'acf-field', '', 0),
(88, 1, '2022-07-30 09:23:29', '2022-07-30 09:23:29', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Services Content', 'services_content', 'publish', 'closed', 'closed', '', 'field_62e4f7e265132', '', '', '2022-07-30 09:28:17', '2022-07-30 09:28:17', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=88', 13, 'acf-field', '', 0),
(89, 1, '2022-07-30 09:23:30', '2022-07-30 09:23:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Services Listing', 'services_listing', 'publish', 'closed', 'closed', '', 'field_62e4f80865133', '', '', '2022-07-30 09:28:17', '2022-07-30 09:28:17', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=89', 14, 'acf-field', '', 0),
(90, 1, '2022-07-30 09:23:30', '2022-07-30 09:23:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Services List Icon', 'services_list_icon', 'publish', 'closed', 'closed', '', 'field_62e4f82465134', '', '', '2022-07-30 09:23:30', '2022-07-30 09:23:30', '', 89, 'http://localhost/schbang_assignment/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2022-07-30 09:23:30', '2022-07-30 09:23:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services List Title', 'services_list_title', 'publish', 'closed', 'closed', '', 'field_62e4f83a65135', '', '', '2022-07-30 09:23:30', '2022-07-30 09:23:30', '', 89, 'http://localhost/schbang_assignment/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2022-07-30 09:23:30', '2022-07-30 09:23:30', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Services List Content', 'services_list_content', 'publish', 'closed', 'closed', '', 'field_62e4f84765136', '', '', '2022-07-30 09:23:30', '2022-07-30 09:23:30', '', 89, 'http://localhost/schbang_assignment/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 1, '2022-07-30 09:28:17', '2022-07-30 09:28:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Foods Section Heading', 'foods_section_heading', 'publish', 'closed', 'closed', '', 'field_62e4f9443aef2', '', '', '2022-07-30 18:20:33', '2022-07-30 18:20:33', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&#038;p=93', 16, 'acf-field', '', 0),
(94, 1, '2022-07-30 09:28:17', '2022-07-30 09:28:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Foods Section Content', 'foods_section_content', 'publish', 'closed', 'closed', '', 'field_62e4f9483aef3', '', '', '2022-07-30 09:28:17', '2022-07-30 09:28:17', '', 48, 'http://localhost/schbang_assignment/?post_type=acf-field&p=94', 17, 'acf-field', '', 0),
(95, 1, '2022-07-30 09:28:52', '2022-07-30 09:28:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"our-food\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Foot Post', 'foot-post', 'publish', 'closed', 'closed', '', 'group_62e4f9b6ae4a0', '', '', '2022-07-30 09:28:52', '2022-07-30 09:28:52', '', 0, 'http://localhost/schbang_assignment/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2022-07-30 09:28:52', '2022-07-30 09:28:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Add Prize', 'add_prize', 'publish', 'closed', 'closed', '', 'field_62e4f9c5b8bbb', '', '', '2022-07-30 09:28:52', '2022-07-30 09:28:52', '', 95, 'http://localhost/schbang_assignment/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2022-07-30 09:29:49', '2022-07-30 09:29:49', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich', '', '', '2022-07-30 09:29:49', '2022-07-30 09:29:49', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=97', 0, 'our-food', '', 0),
(98, 1, '2022-07-30 09:32:53', '2022-07-30 09:32:53', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich-6', '', '', '2022-07-30 09:33:59', '2022-07-30 09:33:59', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=98', 0, 'our-food', '', 0),
(99, 1, '2022-07-30 09:32:46', '2022-07-30 09:32:46', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich-5', '', '', '2022-07-30 09:32:46', '2022-07-30 09:32:46', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=99', 0, 'our-food', '', 0),
(100, 1, '2022-07-30 09:32:36', '2022-07-30 09:32:36', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich-4', '', '', '2022-07-30 09:32:36', '2022-07-30 09:32:36', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=100', 0, 'our-food', '', 0),
(101, 1, '2022-07-30 09:32:14', '2022-07-30 09:32:14', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich-3', '', '', '2022-07-30 09:32:14', '2022-07-30 09:32:14', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=101', 0, 'our-food', '', 0),
(102, 1, '2022-07-30 09:32:06', '2022-07-30 09:32:06', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,', 'Ham Sandwich', '', 'publish', 'closed', 'closed', '', 'ham-sandwich-2', '', '', '2022-07-30 09:32:06', '2022-07-30 09:32:06', '', 0, 'http://localhost/schbang_assignment/?post_type=our-food&#038;p=102', 0, 'our-food', '', 0),
(103, 1, '2022-07-30 09:33:52', '2022-07-30 09:33:52', '', 'an_vision-1188492-unsplash', '', 'inherit', 'open', 'closed', '', 'an_vision-1188492-unsplash', '', '', '2022-07-30 09:33:52', '2022-07-30 09:33:52', '', 98, 'http://localhost/schbang_assignment/wp-content/uploads/2022/07/an_vision-1188492-unsplash.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2022-07-30 09:55:00', '2022-07-30 09:55:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-07-30 09:55:00', '2022-07-30 09:55:00', '', 7, 'http://localhost/schbang_assignment/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-07-30 09:55:30', '2022-07-30 09:55:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-07-30 09:55:30', '2022-07-30 09:55:30', '', 7, 'http://localhost/schbang_assignment/?p=105', 0, 'revision', '', 0),
(107, 1, '2022-07-30 15:03:14', '2022-07-30 15:03:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-07-30 15:03:14', '2022-07-30 15:03:14', '', 7, 'http://localhost/schbang_assignment/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-07-31 12:14:27', '2022-07-31 12:14:27', '<!-- wp:paragraph -->\n<p>[schbang_form]</p>\n<!-- /wp:paragraph -->', 'Company', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-07-31 12:14:27', '2022-07-31 12:14:27', '', 28, 'http://localhost/schbang_assignment/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-07-31 12:17:10', '2022-07-31 12:17:10', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>schbang_form</code></pre>\n<!-- /wp:code -->', 'Company', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-07-31 12:17:10', '2022-07-31 12:17:10', '', 28, 'http://localhost/schbang_assignment/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-07-31 12:17:19', '2022-07-31 12:17:19', '<!-- wp:shortcode -->\nschbang_form\n<!-- /wp:shortcode -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>schbang_form</code></pre>\n<!-- /wp:code -->', 'Company', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-07-31 12:17:19', '2022-07-31 12:17:19', '', 28, 'http://localhost/schbang_assignment/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-07-31 12:18:14', '2022-07-31 12:18:14', '<!-- wp:shortcode -->\nschbang_form\n<!-- /wp:shortcode -->', 'Company', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2022-07-31 12:18:14', '2022-07-31 12:18:14', '', 28, 'http://localhost/schbang_assignment/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-07-31 12:20:27', '2022-07-31 12:20:27', '', 'Company', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-07-31 12:20:27', '2022-07-31 12:20:27', '', 28, 'http://localhost/schbang_assignment/?p=112', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sa_termmeta`
--

CREATE TABLE `sa_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sa_terms`
--

CREATE TABLE `sa_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_terms`
--

INSERT INTO `sa_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'schbang', 'schbang', 0),
(4, 'Main Header Manu', 'main-header-manu', 0),
(5, 'Footer Manu', 'footer-manu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sa_term_relationships`
--

CREATE TABLE `sa_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_term_relationships`
--

INSERT INTO `sa_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(14, 2, 0),
(15, 3, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(34, 5, 0),
(35, 5, 0),
(36, 5, 0),
(37, 5, 0),
(60, 1, 0),
(80, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sa_term_taxonomy`
--

CREATE TABLE `sa_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_term_taxonomy`
--

INSERT INTO `sa_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 2),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sa_usermeta`
--

CREATE TABLE `sa_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sa_usermeta`
--

INSERT INTO `sa_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'schbang_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'sa_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'sa_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"60e54b248170da2989489f6a14798d017c9c2c080d6cd3a9a703619808685995\";a:4:{s:10:\"expiration\";i:1659333500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1659160700;}}'),
(17, 1, 'sa_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:22:\"add-post-type-our-food\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(20, 1, 'sa_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'sa_user-settings-time', '1659173385'),
(22, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `sa_users`
--

CREATE TABLE `sa_users` (
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
-- Dumping data for table `sa_users`
--

INSERT INTO `sa_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'schbang_admin', '$P$BVdeExN3M/ivjPczuvksxWkq7i9Upr/', 'schbang_admin', 'drashtishah123@gmail.com', 'http://localhost/schbang_assignment', '2022-07-30 05:57:52', '', 0, 'schbang_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sa_commentmeta`
--
ALTER TABLE `sa_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sa_comments`
--
ALTER TABLE `sa_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `sa_contactus_detail`
--
ALTER TABLE `sa_contactus_detail`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sa_links`
--
ALTER TABLE `sa_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `sa_options`
--
ALTER TABLE `sa_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `sa_postmeta`
--
ALTER TABLE `sa_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sa_posts`
--
ALTER TABLE `sa_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `sa_termmeta`
--
ALTER TABLE `sa_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sa_terms`
--
ALTER TABLE `sa_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `sa_term_relationships`
--
ALTER TABLE `sa_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `sa_term_taxonomy`
--
ALTER TABLE `sa_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `sa_usermeta`
--
ALTER TABLE `sa_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sa_users`
--
ALTER TABLE `sa_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sa_commentmeta`
--
ALTER TABLE `sa_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sa_comments`
--
ALTER TABLE `sa_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sa_contactus_detail`
--
ALTER TABLE `sa_contactus_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sa_links`
--
ALTER TABLE `sa_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sa_options`
--
ALTER TABLE `sa_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;

--
-- AUTO_INCREMENT for table `sa_postmeta`
--
ALTER TABLE `sa_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `sa_posts`
--
ALTER TABLE `sa_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `sa_termmeta`
--
ALTER TABLE `sa_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sa_terms`
--
ALTER TABLE `sa_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sa_term_taxonomy`
--
ALTER TABLE `sa_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sa_usermeta`
--
ALTER TABLE `sa_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sa_users`
--
ALTER TABLE `sa_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
