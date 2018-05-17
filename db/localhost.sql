-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2018 at 02:25 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chat`;

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) DEFAULT NULL,
  `user_two` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `user_one`, `user_two`) VALUES
(1, 1, 3),
(2, 1, 5),
(3, 1, 6),
(4, 1, 4),
(5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) DEFAULT NULL,
  `user_from` int(11) DEFAULT NULL,
  `user_to` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_from`, `user_to`, `message`) VALUES
(1, 0, 1, 6, 'hello'),
(2, 0, 1, 2, 'hello hunk'),
(3, 5, 1, 2, 'aa'),
(4, 5, 1, 2, 'rt65u5'),
(5, 5, 2, 1, 'Madarchood'),
(6, 5, 1, 2, 'asdfad'),
(7, 5, 2, 1, 'dsfa'),
(8, 5, 1, 2, 'sdfsdfsdf'),
(9, 5, 2, 1, 'sdfsdf'),
(10, 5, 1, 2, 'ddddddddddddd'),
(11, 5, 1, 2, 'dsf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `img`) VALUES
(1, 'husain', '123456', 'img/dp-1.jpg'),
(2, 'hunk', '123', 'img/dp-2.jpg'),
(3, 'hackerkernel', 'cc03e747a6afbbcbf8be7668acfebee5', 'img/dp-3.jpg'),
(4, 'murtaza', 'cc03e747a6afbbcbf8be7668acfebee5', 'img/dp-4.jpg'),
(5, 'qut', 'cc03e747a6afbbcbf8be7668acfebee5', 'img/dp-5.jpg'),
(6, 'sakina', 'cc03e747a6afbbcbf8be7668acfebee5', 'img/dp-6.jpg');
--
-- Database: `college_fact`
--
CREATE DATABASE IF NOT EXISTS `college_fact` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college_fact`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `src` longtext COLLATE utf8_unicode_ci NOT NULL,
  `banner_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_banner_type_id_foreign` (`banner_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `src`, `banner_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '/college_fact/public/img/user.jpeg', 1, NULL, NULL),
(2, 'Post poster', './img/Screenshot from 2018-04-01 09-50-18.png', 1, '2018-04-24 12:35:42', '2018-04-24 12:35:42'),
(3, 'Post poster', './img/bannersScreenshot from 2018-04-01 09-50-18.png', 1, '2018-04-24 12:36:30', '2018-04-24 12:36:30'),
(4, 'Post poster', './img/bannersScreenshot from 2018-04-01 09-50-18.png', 1, '2018-04-24 12:37:55', '2018-04-24 12:37:55'),
(5, 'Post poster', './img/bannersScreenshot from 2018-04-01 09-50-18.png', 1, '2018-04-24 12:38:15', '2018-04-24 12:38:15'),
(6, 'Post poster', './img/bannersScreenshot from 2018-04-01 09-50-18.png', 1, '2018-04-24 12:39:23', '2018-04-24 12:39:23'),
(7, 'Post poster', './img/bannersScreenshotfrom2018-03-2621-33-05.png', 1, '2018-04-24 12:50:07', '2018-04-24 12:50:07'),
(8, 'Post poster', './img/banners/Screenshotfrom2018-03-2621-33-05.png', 1, '2018-04-24 12:52:10', '2018-04-24 12:52:10'),
(9, 'Post poster', './img/banners/HD-Wallpapers-C76_Mhc5Pw6.jpg', 1, '2018-04-24 12:54:45', '2018-04-24 12:54:45'),
(10, 'Post poster', './img/banners/Screenshotfrom2018-04-0109-50-18.png', 1, '2018-04-24 12:57:07', '2018-04-24 12:57:07'),
(11, 'Post poster', './img/banners/HD-Wallpapers-C76_Mhc5Pw6.jpg', 1, '2018-04-24 21:10:45', '2018-04-24 21:10:45'),
(12, 'Post poster', './img/banners/15246353234141429366002.jpg', 1, '2018-04-25 00:19:03', '2018-04-25 00:19:03'),
(13, 'Post poster', './img/banners/Screenshotfrom2018-03-2717-24-39.png', 1, '2018-04-25 00:56:09', '2018-04-25 00:56:09'),
(14, 'Post poster', './img/banners/Screenshotfrom2018-03-2621-33-05.png', 1, '2018-04-27 00:24:33', '2018-04-27 00:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `banner_types`
--

CREATE TABLE IF NOT EXISTS `banner_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner_types`
--

INSERT INTO `banner_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Post poster', NULL, NULL),
(2, 'Event Poster', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `converstions`
--

CREATE TABLE IF NOT EXISTS `converstions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_one` int(10) UNSIGNED NOT NULL,
  `user_two` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `converstions_user_one_foreign` (`user_one`),
  KEY `converstions_user_two_foreign` (`user_two`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `converstions`
--

INSERT INTO `converstions` (`id`, `user_one`, `user_two`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(13, 2, 1, '2018-04-19 13:18:36', '2018-04-19 13:18:36'),
(14, 3, 2, '2018-04-20 00:39:17', '2018-04-20 00:39:17'),
(15, 3, 1, '2018-04-20 00:52:52', '2018-04-20 00:52:52'),
(16, 3, 4, '2018-04-20 06:16:31', '2018-04-20 06:16:31'),
(17, 3, 5, '2018-04-22 21:31:41', '2018-04-22 21:31:41'),
(18, 2, 4, '2018-04-23 07:45:26', '2018-04-23 07:45:26'),
(19, 2, 5, '2018-04-23 07:45:34', '2018-04-23 07:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 'Course 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inviter_id` int(10) UNSIGNED NOT NULL,
  `event_date` date NOT NULL,
  `event_type_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `poster` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_inviter_id_foreign` (`inviter_id`),
  KEY `events_event_type_id_foreign` (`event_type_id`),
  KEY `events_poster_foreign` (`poster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE IF NOT EXISTS `event_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'party', NULL, NULL),
(2, 'hiring drive', NULL, NULL),
(3, 'get together', NULL, NULL),
(4, 'seminar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `reciever_id` int(10) UNSIGNED NOT NULL,
  `request_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `friend_requests_sender_id_foreign` (`sender_id`),
  KEY `friend_requests_reciever_id_foreign` (`reciever_id`),
  KEY `friend_requests_request_type_id_foreign` (`request_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE IF NOT EXISTS `institutions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Institute 1', 'Address 1', NULL, NULL),
(2, 'Institute 2', 'Address of Institute', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `converstion_id` int(10) UNSIGNED NOT NULL,
  `user_to` int(10) UNSIGNED NOT NULL,
  `user_from` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_to_foreign` (`user_to`),
  KEY `messages_user_from_foreign` (`user_from`),
  KEY `messages_converstion_id_foreign` (`converstion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `converstion_id`, `user_to`, `user_from`, `message`, `created_at`, `updated_at`) VALUES
(3, 13, 1, 2, 'Message 1', '2018-04-20 00:30:56', '2018-04-20 00:30:56'),
(4, 13, 2, 1, 'Message 2', '2018-04-20 00:31:37', '2018-04-20 00:31:37'),
(5, 14, 3, 2, 'MEssage 3', '2018-04-20 00:40:42', '2018-04-20 00:40:42'),
(6, 14, 2, 3, 'Message 4', '2018-04-20 00:41:24', '2018-04-20 00:41:24'),
(7, 14, 2, 3, 'ssssssssss', '2018-04-23 07:16:42', '2018-04-23 07:16:42'),
(8, 14, 2, 3, 'New message', '2018-04-23 07:21:15', '2018-04-23 07:21:15'),
(9, 14, 2, 3, 'Very new one', '2018-04-23 07:23:51', '2018-04-23 07:23:51'),
(10, 14, 2, 3, 'Again a message', '2018-04-23 07:24:20', '2018-04-23 07:24:20'),
(11, 19, 5, 2, 'New Message', '2018-04-23 07:46:09', '2018-04-23 07:46:09'),
(12, 14, 3, 2, 'Hello', '2018-04-23 21:29:42', '2018-04-23 21:29:42'),
(13, 14, 3, 2, 'hello', '2018-04-23 21:29:54', '2018-04-23 21:29:54'),
(14, 14, 3, 2, 'Hello', '2018-04-23 21:30:18', '2018-04-23 21:30:18'),
(15, 14, 3, 2, 'Hi', '2018-04-23 21:32:20', '2018-04-23 21:32:20'),
(16, 19, 5, 2, 'Hi', '2018-04-23 21:32:35', '2018-04-23 21:32:35'),
(17, 14, 3, 2, 'hi', '2018-04-23 21:32:48', '2018-04-23 21:32:48'),
(18, 13, 1, 2, 'Yo', '2018-04-23 21:33:07', '2018-04-23 21:33:07'),
(19, 13, 1, 2, 'Adi', '2018-04-23 21:33:12', '2018-04-23 21:33:12'),
(20, 14, 2, 3, 'Hello', '2018-04-24 05:33:49', '2018-04-24 05:33:49'),
(21, 14, 2, 3, 'Kaise ho', '2018-04-24 05:34:09', '2018-04-24 05:34:09'),
(22, 14, 2, 3, 'Kaha ho aaj kal', '2018-04-24 05:34:41', '2018-04-24 05:34:41'),
(23, 14, 2, 3, 'Hi', '2018-04-24 05:52:14', '2018-04-24 05:52:14'),
(25, 15, 1, 3, 'HI ditya', '2018-04-24 06:27:54', '2018-04-24 06:27:54'),
(26, 14, 2, 3, 'How are you ?', '2018-04-24 10:13:51', '2018-04-24 10:13:51'),
(27, 14, 2, 3, 'kjk', '2018-04-25 00:08:03', '2018-04-25 00:08:03'),
(28, 16, 4, 3, 'Some message', '2018-04-25 00:09:38', '2018-04-25 00:09:38'),
(29, 15, 3, 1, 'Hello', '2018-04-25 00:17:21', '2018-04-25 00:17:21'),
(30, 15, 1, 3, 'dfdf', '2018-04-25 00:17:31', '2018-04-25 00:17:31'),
(31, 15, 3, 1, 'Hhhhhhhhhh', '2018-04-25 00:17:52', '2018-04-25 00:17:52'),
(32, 15, 1, 3, 'gggggggggg', '2018-04-25 00:56:39', '2018-04-25 00:56:39'),
(33, 16, 4, 3, 'hello ki', '2018-04-25 00:59:11', '2018-04-25 00:59:11'),
(34, 16, 4, 3, 'ds', '2018-04-26 11:56:06', '2018-04-26 11:56:06'),
(35, 15, 1, 3, 'cc', '2018-04-26 12:01:35', '2018-04-26 12:01:35'),
(36, 15, 3, 1, 'Yo aditya hwre', '2018-04-26 12:01:54', '2018-04-26 12:01:54'),
(37, 14, 2, 3, 'Yo', '2018-04-26 12:04:46', '2018-04-26 12:04:46'),
(38, 15, 1, 3, 'Yo man I recognize you', '2018-04-26 12:09:51', '2018-04-26 12:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_04_12_072409_create_courses_table', 1),
(9, '2018_04_12_072430_create_banner_types_table', 1),
(10, '2018_04_12_072453_create_user_types_table', 1),
(11, '2018_04_12_072510_create_institutions_table', 1),
(12, '2018_04_12_072527_create_banners_table', 1),
(13, '2018_04_12_072553_create_user_careers_table', 1),
(14, '2018_04_12_072614_create_request_types_table', 1),
(15, '2018_04_12_072630_create_friend_requests_table', 1),
(16, '2018_04_12_072705_create_posts_table', 1),
(17, '2018_04_12_072721_create_post_comment_types_table', 1),
(18, '2018_04_12_072732_create_post_comments_table', 1),
(19, '2018_04_12_072756_create_post_likes_table', 1),
(20, '2018_04_12_072826_create_post_shares_table', 1),
(21, '2018_04_12_072842_create_event_types_table', 1),
(22, '2018_04_12_072855_create_events_table', 1),
(23, '2018_04_17_114153_create_user_details_table', 1),
(24, '2018_04_18_181031_create_converstions_table', 1),
(25, '2018_04_18_181058_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1691cecffc3fc605e0a4a1a966c069d0717bd55f797227e59fb7b598f34d8916263c45d5c18f6ac1', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:07:09', '2018-04-19 07:07:09', '2019-04-19 12:37:09'),
('19b259172a6c8059089668444e0518f703617479a0f182958f7cc91c59cec9000977a3b6fd850c5f', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:49:43', '2018-04-19 06:49:43', '2019-04-19 12:19:43'),
('5030c731b484a4ea6fdec52e1eae15418e403e85761d106a8cd6652bd52934c54fe01b7d96c7eeee', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 04:31:00', '2018-04-19 04:31:00', '2019-04-19 10:01:00'),
('51208aa63b8d7447e0fb734a82c16a3fcd288d806d37a1cb2ea053790468aab35aba30f731a5a9fb', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:48:06', '2018-04-19 06:48:06', '2019-04-19 12:18:06'),
('577a2f37943eb22b2941a3e18059c58ca3a29703871cb2eaef64a62daaeb84b04f5307ccfe315c08', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:51:49', '2018-04-19 06:51:49', '2019-04-19 12:21:49'),
('5b7643e7afda2ddbf5234af8ac7ec7d692044cf7d187c731e65248bb5640c829a188af33fb4912ef', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:33:25', '2018-04-19 06:33:25', '2019-04-19 12:03:25'),
('7d974fb12171d1d2ad78b15a17dcaea7bd80032acb907d45dd5003aed0acbdbe3e8f0b5c9e10ee43', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:59', '2018-04-19 07:31:59', '2019-04-19 13:01:59'),
('83808a812d020a78d291e095c12fd77752049e850ecdd96298c4c30ae4731ed9e031ea68950b447d', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:07:07', '2018-04-19 07:07:07', '2019-04-19 12:37:07'),
('881360f6563ccd5f853e0b0a16cd3fb43ff3347ae0400fed307f582a4ec74c8d766c4e7f5e3ee642', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:21:25', '2018-04-19 07:21:25', '2019-04-19 12:51:25'),
('abf20de3783445f3c07b4db82eedfe7e18f9b63c6f1b293f08fcb9f8c54808969ec1cf1768cc7954', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:58', '2018-04-19 07:31:58', '2019-04-19 13:01:58'),
('baacf7aed1f811e67321c5b5b256db5e7f38cb46dfe222d1d332e355f6b585fbb77f94c19f08fb51', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:32:02', '2018-04-19 07:32:02', '2019-04-19 13:02:02'),
('bc2e8ed6bbb25857814bfa413702bd14afcf3174b0be593ab5841d7e6661d2862c2dd78627f16d43', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:42', '2018-04-19 07:31:42', '2019-04-19 13:01:42'),
('bfc45522491162bfe20815b0e831492b3599f605f128a1782386b8d4a7c21b3edd172b0060f42239', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:13', '2018-04-19 07:31:13', '2019-04-19 13:01:13'),
('ca2dd4bae2890ebf699e105fc7aec31853479d9e56e548de671adc77b8c1f39fc6c104ab00693130', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:32:00', '2018-04-19 07:32:00', '2019-04-19 13:02:00'),
('d240583b0364b7555292ba07aa4cbd8669c5cf33a4d244aed56fad3528731503e7ebf21dd582d7c9', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:14', '2018-04-19 07:31:14', '2019-04-19 13:01:14'),
('d891df512b17205cc8abcf2956bcff836928d44ab59ced4886b432492caf8e6d4001cc8a4fe00f88', 2, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:31:50', '2018-04-19 07:31:50', '2019-04-19 13:01:50'),
('de7276a88b055b7fdaab2c0616663ad5f3caa9618bc09d6391ab14b5a6489c9910adc94848682a95', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:49:40', '2018-04-19 06:49:40', '2019-04-19 12:19:40'),
('e0a61ac3a1d331e4bcce1aa5d52e37bbb9b608ed91b33f1423f6e3da664b6082d6960032abee3b73', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 04:31:59', '2018-04-19 04:31:59', '2019-04-19 10:01:59'),
('e2aa3ddc4731ee64bd1619eca79359fd804a28f4e54bde1c4a4719e626d6539886ce05a6d695e308', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 06:52:16', '2018-04-19 06:52:16', '2019-04-19 12:22:16'),
('e47539ac56a3d9950261d1ced091a3c3faf924a994a313e867e789d71576aaf83588b80ff2b6797c', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:23:03', '2018-04-19 07:23:03', '2019-04-19 12:53:03'),
('f243daf122c6e5ae65d09351597af4693d7b76e6de92ce1bb59d52d3aa41e39cce00478d686a8dfa', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:23:21', '2018-04-19 07:23:21', '2019-04-19 12:53:21'),
('f304597f3e005f4d69474bc7c2625e7c2088814c153b8f811485a12cb860da28fe04c24cfc75c364', 1, 1, 'CollegeFactionApp', '[]', 0, '2018-04-19 07:07:10', '2018-04-19 07:07:10', '2019-04-19 12:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'sn6Iw5IAaWUeECB8uxU80sSESMOemmyDTIcXVy4h', 'http://localhost', 1, 0, 0, '2018-04-19 01:27:04', '2018-04-19 01:27:04'),
(2, NULL, 'Laravel Password Grant Client', 'A7sx2LpG1his1i9kW6Hfr5I4rQ6cKrRxZoqfAir9', 'http://localhost', 0, 1, 0, '2018-04-19 01:27:04', '2018-04-19 01:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-19 01:27:04', '2018-04-19 01:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_sender_id_foreign` (`sender_id`),
  KEY `posts_banner_id_foreign` (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `sender_id`, `content`, `banner_id`, `created_at`, `updated_at`) VALUES
(11, 3, 'H', 8, '2018-04-24 06:14:09', '2018-04-24 06:14:09'),
(12, 3, 'dddd', 8, '2018-04-24 11:46:37', '2018-04-24 11:46:37'),
(13, 3, 'bv', 8, '2018-04-24 12:39:23', '2018-04-24 12:39:23'),
(14, 3, 'fg', 8, '2018-04-24 12:50:07', '2018-04-24 12:50:07'),
(15, 3, 'dsd', 8, '2018-04-24 12:52:10', '2018-04-24 12:52:10'),
(16, 3, 'New Post', 9, '2018-04-24 12:54:45', '2018-04-24 12:54:45'),
(17, 3, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 10, '2018-04-24 12:57:07', '2018-04-24 12:57:07'),
(18, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets', 11, '2018-04-24 21:10:45', '2018-04-24 21:10:45'),
(19, 1, 'Yo', 12, '2018-04-25 00:19:03', '2018-04-25 00:19:03'),
(20, 3, 'hhhhhhhhhhhh', 13, '2018-04-25 00:56:09', '2018-04-25 00:56:09'),
(21, 6, 'Helo', 14, '2018-04-27 00:24:33', '2018-04-27 00:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE IF NOT EXISTS `post_comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_comment_type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `like_count` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_comments_post_comment_type_id_foreign` (`post_comment_type_id`),
  KEY `post_comments_user_id_foreign` (`user_id`),
  KEY `post_comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comment_types`
--

CREATE TABLE IF NOT EXISTS `post_comment_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  KEY `post_likes_post_id_foreign` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_shares`
--

CREATE TABLE IF NOT EXISTS `post_shares` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_shares_user_id_foreign` (`user_id`),
  KEY `post_shares_post_id_foreign` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_types`
--

CREATE TABLE IF NOT EXISTS `request_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aditya Soni', 'adityasoni104@gmail.com', '$2y$10$8Jx./aYGj6u7WNAjfhpZIumMV/WA9HzZGCaOAtKyBUDxWrn/OO0vi', 'EUu43J3lPtmfNdweMYMPEBCw4UakBJTRFnYaUtT1GIlvOfYip3to9urmQxmA', '2018-04-19 01:27:33', '2018-04-19 01:27:33'),
(2, 'New', 'a@adi.com', '$2y$10$QHa6uKjOalY3kNziaXHvf.bQHAFdwFBXvbHF3uP8k/dake9Rdp336', 'fjGiUz5PRPdE5m14kcrgcCZzdfLnDBiynYisdnu5DKNcnqEyFNZriGM3cG80', '2018-04-19 01:36:03', '2018-04-19 01:36:03'),
(3, 'User', 'user@gmail.com', '$2y$10$dWYVQEv1DJ7HMvmpexdNye1Mp28.v2Vw471dpQQxGnx2gKc0rgPc6', 'H5veFLMOXuKVbTAUYqMujgpD7OSka8pLTnbdoydH8QggscEC68kh0Xi52P2D', '2018-04-19 01:45:42', '2018-04-19 01:45:42'),
(4, 'Other User', 'adityasoni@gmail.com', '$2y$10$PKFe2Qhg9CzWGkdd1W19NufYcTHig1r8zoyQvGWQkIjp9e94ahGq.', 'cD3t5FUPNKoOMqAYhWDaXIVd9ApUmlinKezxSIun1L4RSUU3CBJshT5lri5j', '2018-04-19 01:55:25', '2018-04-19 01:55:25'),
(5, 'ssdsdsd', 'adityasoni4@gmail.com', '$2y$10$B3uivpgWs8zCX6wpNiaRNuLWXkN0LOiniPorN86pMOQ4MzgVjY2Bq', 'mRkvltbk3Y8Pcb9KM9QQskdopLmK8806PHgbxoioAap1LC14eHzT758Tgng2', '2018-04-22 07:51:25', '2018-04-22 07:51:25'),
(6, 'sudeep', 'sud@gmail.com', '$2y$10$GvYkakoIMVNSdJ.RkbCDXeKtCa/TUWmr03pT3GKAwsam87rWoFLDi', 'YhJJiiBCwByUnrX2UbUgPoNZeOjfRgnr3LToVICts2farLRVk0tCNK3hkIt0', '2018-04-27 00:24:08', '2018-04-27 00:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_careers`
--

CREATE TABLE IF NOT EXISTS `user_careers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `organization` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `started_in` date NOT NULL,
  `worked_upto` date NOT NULL,
  `review` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_careers_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dob` date NOT NULL DEFAULT '1965-01-01',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user_type_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `alumini_status` tinyint(1) NOT NULL DEFAULT '0',
  `mobile` int(11) NOT NULL DEFAULT '0',
  `working_status` tinyint(1) NOT NULL DEFAULT '0',
  `year_of_passing` year(4) NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_details_username_unique` (`username`),
  KEY `user_details_user_id_foreign` (`user_id`),
  KEY `user_details_banner_id_foreign` (`banner_id`),
  KEY `user_details_institution_id_foreign` (`institution_id`),
  KEY `user_details_user_type_id_foreign` (`user_type_id`),
  KEY `user_details_course_id_foreign` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `username`, `banner_id`, `dob`, `address`, `institution_id`, `user_type_id`, `status`, `alumini_status`, `mobile`, `working_status`, `year_of_passing`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'adityasoni104@gmail.com', 1, '1965-01-01', 'No Address Given', 1, 1, 0, 0, 0, 0, 2018, 1, '2018-04-19 01:30:54', '2018-04-19 01:30:54'),
(12, 2, 'a@adi.com', 1, '1965-01-01', 'No Address Given', 1, 1, 0, 0, 0, 0, 2018, 1, '2018-04-19 01:44:17', '2018-04-19 01:44:17'),
(13, 3, 'user@gmail.com', 1, '1965-01-01', 'No Address Given', 1, 1, 0, 0, 0, 0, 2018, 1, '2018-04-19 01:45:49', '2018-04-19 01:45:49'),
(14, 4, 'adityasoni@gmail.com', 1, '1965-01-01', 'No Address Given', 1, 1, 0, 0, 0, 0, 2018, 1, '2018-04-19 01:55:32', '2018-04-19 01:55:32'),
(15, 5, 'adityasoni4@gmail.com', 1, '1965-01-01', 'No Address Given', 1, 1, 0, 0, 0, 0, 2018, 1, '2018-04-22 07:51:50', '2018-04-22 07:51:50'),
(16, 6, 'sud@gmail.com', 1, '1965-01-01', 'No Address Given', 2, 1, 0, 0, 0, 0, 2018, 1, '2018-04-27 00:24:21', '2018-04-27 00:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'User Type 1', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_banner_type_id_foreign` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `converstions`
--
ALTER TABLE `converstions`
  ADD CONSTRAINT `converstions_user_one_foreign` FOREIGN KEY (`user_one`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `converstions_user_two_foreign` FOREIGN KEY (`user_two`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_event_type_id_foreign` FOREIGN KEY (`event_type_id`) REFERENCES `event_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_inviter_id_foreign` FOREIGN KEY (`inviter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_poster_foreign` FOREIGN KEY (`poster`) REFERENCES `banners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD CONSTRAINT `friend_requests_reciever_id_foreign` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friend_requests_request_type_id_foreign` FOREIGN KEY (`request_type_id`) REFERENCES `request_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friend_requests_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_converstion_id_foreign` FOREIGN KEY (`converstion_id`) REFERENCES `converstions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_user_from_foreign` FOREIGN KEY (`user_from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_user_to_foreign` FOREIGN KEY (`user_to`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_comment_type_id_foreign` FOREIGN KEY (`post_comment_type_id`) REFERENCES `post_comment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_shares`
--
ALTER TABLE `post_shares`
  ADD CONSTRAINT `post_shares_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_shares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_careers`
--
ALTER TABLE `user_careers`
  ADD CONSTRAINT `user_careers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_details_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_details_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_details_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel_api`
--
CREATE DATABASE IF NOT EXISTS `laravel_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_api`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'New Title', 'Updated Body', '2018-04-04 03:25:26', '2018-04-04 06:28:04'),
(3, 'Earum optio aperiam possimus adipisci.', 'Sed quas autem aperiam eveniet omnis. Architecto mollitia nulla pariatur. Et aut et cupiditate perferendis tempora ipsam exercitationem.', '2018-04-04 03:25:26', '2018-04-04 03:25:26'),
(4, 'Rem ut qui aliquam voluptas.', 'Ut officiis quis molestias et. Eum autem possimus mollitia pariatur. Non voluptatibus quam aut eos. Quis distinctio sed ipsa ut fugiat.', '2018-04-04 03:25:26', '2018-04-04 03:25:26'),
(5, 'Ipsa aperiam assumenda voluptatem modi dolore.', 'In neque pariatur quia ducimus. Sit necessitatibus fugit expedita ut. Cum iste aspernatur aut minus. Illum ut et cumque quia. Illum tempore id debitis sit ducimus eius. Eos soluta ea ea velit.', '2018-04-04 03:25:26', '2018-04-04 03:25:26'),
(6, 'Quia adipisci quod molestiae illum.', 'Omnis velit doloremque odio blanditiis. Modi aut dolores exercitationem temporibus accusamus sit doloremque. Tempora minus quia repellendus eveniet qui cupiditate. Est provident magni amet et et.', '2018-04-04 03:25:26', '2018-04-04 03:25:26'),
(7, 'Qui qui sed repellat saepe nemo qui.', 'Eum est omnis ipsa saepe magnam. Nihil iusto neque nesciunt autem id consequatur. Placeat pariatur aliquam fugiat amet tempora quaerat necessitatibus.', '2018-04-04 03:25:26', '2018-04-04 03:25:26'),
(8, 'Aspernatur corporis aut et quasi temporibus quis.', 'Facilis saepe dolorem qui veritatis. Enim numquam voluptatem praesentium fugiat. Est sit et quis autem rem incidunt. Velit in et libero ut.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(9, 'Eligendi nisi vitae consequatur quaerat.', 'Aut cum excepturi pariatur beatae quia sapiente. Qui non vitae voluptas molestias quibusdam consectetur. Id ducimus omnis sit sed voluptatem quibusdam.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(10, 'Et illo iste molestias enim praesentium sequi.', 'Quae quos impedit fuga et asperiores eos nemo corporis. Omnis exercitationem est dolorum eius occaecati quod. Facere aut doloremque sit. Placeat aliquid excepturi aut amet similique.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(11, 'Rem ut minima ex rem voluptas ab quo.', 'Sit neque dolorem aliquid id modi hic inventore ut. Nemo qui sed fugit quam natus delectus molestiae. In quidem porro doloremque.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(12, 'Assumenda ab est excepturi exercitationem quo.', 'Sit ut odit et nam excepturi nam quia. Enim quos qui rerum dolores at. Porro cumque repellat enim aspernatur vero debitis.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(13, 'In ad omnis autem quo qui atque.', 'Quos voluptatibus vel pariatur corrupti aliquid. Cumque est quaerat corrupti vitae soluta. Beatae dolorem voluptatem est quas. Nesciunt eveniet qui non rem modi.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(14, 'Dolorum id laborum ratione.', 'Voluptatem quaerat asperiores nisi sunt architecto delectus est. Dolor occaecati commodi dolorem eum similique et et. Illum tempore porro qui eius sequi accusantium odit.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(15, 'Qui sed illo voluptas in mollitia enim.', 'Impedit ea quia fugiat quia eius. Quia eaque ea consectetur perferendis. Veritatis ut dolorum consequuntur pariatur velit.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(16, 'Alias labore non quas illum.', 'Esse nihil omnis dolor repudiandae. Architecto similique quaerat voluptas consequatur dolor vero. Nemo quia accusamus et assumenda.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(17, 'Quia nisi tenetur eaque.', 'Cum nulla et est aperiam nam quia fugiat. Beatae architecto cum aut aut.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(18, 'Quia nihil modi vel harum.', 'Vel rerum explicabo nihil occaecati amet. Et ea vel voluptatibus. Est autem id aut. Cum nam et et ut consectetur.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(19, 'Explicabo mollitia nulla sit corrupti.', 'Natus debitis recusandae inventore ipsa quam quas fugit. Quo vel sit reiciendis beatae.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(20, 'Voluptatem tenetur cum id minus.', 'Soluta sed eos asperiores autem saepe quis. Voluptas tempore sed qui officiis consequatur id laudantium. Facere dolores quam praesentium possimus et.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(21, 'Hic natus voluptatem perspiciatis neque harum.', 'Est qui nostrum rem iure in quia deserunt ut. Dolorem sint enim neque iusto aperiam magnam. Ipsum ipsum maiores magni nostrum adipisci recusandae et. Dignissimos dolorem recusandae recusandae.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(22, 'Voluptatem corporis qui voluptatem qui.', 'Id est numquam repellendus similique quia magnam incidunt. Laudantium est eum omnis ea sunt hic eum. Minima dolore veniam quasi libero rerum porro. Autem est et quia officiis.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(23, 'Provident eum alias hic.', 'Qui deserunt asperiores recusandae commodi ab voluptates adipisci. Illum modi exercitationem expedita officiis numquam temporibus aperiam. Aliquam enim aut enim nulla rerum aut.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(24, 'Molestias distinctio non quis.', 'Temporibus earum sint ex labore. Maiores eligendi placeat et soluta accusamus est nulla. Nihil quis quis molestias dolorem libero nulla.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(25, 'Nemo et aspernatur laboriosam non omnis enim.', 'Modi ut atque ut sit illum labore delectus quo. Enim iste odio esse temporibus numquam neque. Eum quis debitis voluptatem quia et. Dolorem qui et repellat et labore aperiam molestias.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(26, 'Molestiae quae qui et vel.', 'Excepturi aut labore omnis animi. Nesciunt veniam nesciunt voluptatem ad quia. Quia omnis eos qui. Alias eos voluptatibus fuga harum atque et. Animi et magni deserunt asperiores qui quam.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(27, 'A fugit eum ex.', 'Maiores temporibus sed cum non optio. Velit et nostrum dolores placeat impedit vitae. Aut dolores veritatis quae voluptas odio. Quo hic et sit aut.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(28, 'Dignissimos voluptatem rerum porro voluptatibus.', 'Aut laudantium placeat architecto maiores exercitationem. Earum earum dolores non numquam quas sunt eligendi. Repellendus ut aperiam et in ullam.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(29, 'Ratione nemo nesciunt impedit ut in quae dolorem.', 'Nisi accusantium possimus provident. Repellat et officiis aut deserunt officiis debitis quas laudantium. Error reiciendis pariatur id quis.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(30, 'Aliquid omnis et aliquid reiciendis possimus.', 'Id in aut modi molestiae at est dolor aut. Quaerat ut quas dolores ipsa. Voluptatem aut blanditiis nihil ipsa vitae. Consequatur quae impedit praesentium esse vel fugit.', '2018-04-04 03:25:27', '2018-04-04 03:25:27'),
(31, 'Test Title', 'test Body', '2018-04-04 06:26:10', '2018-04-04 06:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_04_083849_create_articles_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('058a7e36d96db66f1f2b2375b895e6f85dc61510e9bb1926d10f3906e9ecb9307544eab080e91a08', 5, 1, 'MyApp', '[]', 0, '2018-04-05 07:08:25', '2018-04-05 07:08:25', '2019-04-05 12:38:25'),
('07178514b6b1e010863c9df4c39ee341e97703976fc0092ef4b23853231dea754098fb368b90dd25', 9, 1, 'MyApp', '[]', 0, '2018-04-05 08:07:33', '2018-04-05 08:07:33', '2019-04-05 13:37:33'),
('17e422da5285dcf2e07ac1bf67d2893d400873bee845ff292f52171a1fff07a684a6bd1320020b46', 7, 1, 'MyApp', '[]', 0, '2018-04-05 07:19:30', '2018-04-05 07:19:30', '2019-04-05 12:49:30'),
('4b42b96d0a199eab597d3808f1753968a211af196e4974ecd97d2ce7ff22dfcc3ba96771fc28e480', 4, 1, 'MyApp', '[]', 0, '2018-04-05 07:04:56', '2018-04-05 07:04:56', '2019-04-05 12:34:56'),
('4d8cdb6b0020613f981e9df8fce9e4d1daf7b8533822a5cbf2b0029b20e2df7fbfb37da76944f2ff', 9, 1, 'MyApp', '[]', 0, '2018-04-05 08:08:07', '2018-04-05 08:08:07', '2019-04-05 13:38:07'),
('5d5e933d44eaaeedde80653e661aa5845966da6047374a3420755efacdfbb5a2ec7a68f65c81e5af', 8, 1, 'MyApp', '[]', 0, '2018-04-05 07:34:19', '2018-04-05 07:34:19', '2019-04-05 13:04:19'),
('9259df6b4830dc5793509ec0ee2725f784913f2c82991521f90a46c09dacbd4f4012e89a387247ea', 6, 1, 'MyApp', '[]', 0, '2018-04-05 07:11:01', '2018-04-05 07:11:01', '2019-04-05 12:41:01'),
('99ca58922b1605d5a9029e2d4b0491705444ab069511a289330d2f9d5cb2d481bba285b043cb204e', 3, 1, 'MyApp', '[]', 0, '2018-04-05 07:04:33', '2018-04-05 07:04:33', '2019-04-05 12:34:33'),
('fb1f63cc609f53560b14be8102a06cd44ff508d904ca186be8cd84cbcc8052df31dac6433e9e882c', 1, 1, 'MyApp', '[]', 0, '2018-04-05 07:04:04', '2018-04-05 07:04:04', '2019-04-05 12:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yVR677Ck3Ede1pWhJz1mzGrzjKkmUI6yXWS3Ru9n', 'http://localhost', 1, 0, 0, '2018-04-05 06:16:47', '2018-04-05 06:16:47'),
(2, NULL, 'Laravel Password Grant Client', '0wLTJCX03iilZHXZtAHHm3my0XiHzepcDHPzUrBH', 'http://localhost', 0, 1, 0, '2018-04-05 06:16:47', '2018-04-05 06:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-05 06:16:47', '2018-04-05 06:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Aditya', 'mail@mail.com', '$2y$10$y2SUa6xRIgkwsjLh.hXAV.FMLK05z/X4mULvSM2CBCH3HdjXEBFXK', NULL, '2018-04-05 08:07:33', '2018-04-05 08:07:33');
--
-- Database: `laravel_basics`
--
CREATE DATABASE IF NOT EXISTS `laravel_basics` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_basics`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 'Article', 'Body', '2018-03-31 02:38:34', '2018-03-31 02:38:34', '2018-03-30 18:30:00'),
(2, 2, 'Article auth', 'By new User', '2018-03-31 03:08:34', '2018-03-31 03:08:34', '2018-03-30 18:30:00'),
(3, 2, 'asfd', 'sdfsdfds', '2018-03-31 05:53:05', '2018-03-31 05:53:05', '2018-03-30 18:30:00'),
(4, 2, 'ddddddddddd', 'dddddd', '2018-03-31 05:53:26', '2018-03-31 05:53:26', '2018-03-30 18:30:00'),
(5, 2, 'ddddd', 'sss', '2018-03-31 05:54:02', '2018-03-31 05:54:02', '2018-04-06 18:30:00'),
(6, 2, 'Test', 'New test', '2018-03-31 06:01:14', '2018-03-31 06:01:14', '2018-03-30 18:30:00'),
(7, 2, 'ddddd', 'ddddddd', '2018-03-31 06:04:00', '2018-03-31 06:04:00', '2018-03-30 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_03_29_041348_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aditya Soni', 'adi@example.com', '$2y$10$JDW5yv8VlCgS.otWB47bYOEf1Lj5K22Mn1gI14FWgc.sep2M6StEa', NULL, '2018-03-31 02:31:27', '2018-03-31 02:31:27'),
(2, 'user', 'new@exam.com', '$2y$10$MAgNaqlwaX6.NNGtd884Kum7jQn3hS3vSNKFl8Q1o/33YGsbfCsRm', 'QdcjCT6iFPtO86rsq7ejWgoFRLUNhyJEt3GF25mgDOIJLRtxgcGQeJEkaJfJ', '2018-03-31 02:57:56', '2018-03-31 02:57:56'),
(3, 'asdfdd', 'adityasoni104@gmail.com', '$2y$10$YuSUsULE0UJ7SBTYWxGSc.ergUdDb1n7SUS8IdXo2L1M41A5vQyrS', 'poYANPGs79AClETDoP2CrCYPUzp0MMWUIbE77MSkuoX3tZadaQiFcB1eL9Zu', '2018-04-17 08:07:33', '2018-04-17 08:07:33');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `major_proj`
--
CREATE DATABASE IF NOT EXISTS `major_proj` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `major_proj`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hello Ward This is Aditya', 1, '2018-04-11 02:47:34', '2018-04-11 02:47:34'),
(2, 'sadfsdf', 2, '2018-04-11 03:31:55', '2018-04-11 03:31:55'),
(3, 'jsdkfjdskf', 2, '2018-04-11 03:32:03', '2018-04-11 03:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_06_125241_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ward Boehm', 'madelyn.bednar@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QrEVypwp2X', '2018-04-11 02:46:20', '2018-04-11 02:46:20'),
(2, 'Aditya', 'adityasoni104@gmail.com', '$2y$10$0z0LixsJ/jD3V14kj4y2bea7kmT1yb1zTxSY0iLjlDFqWRecws9hC', 'gXOPO4b8KevngtarbE7mmnuJU2mCodLwDHhQ39ePcgNvltvjiNF5fkMt4VXh', '2018-04-11 02:52:59', '2018-04-11 02:52:59');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"college_fact\",\"table\":\"institutions\"},{\"db\":\"college_fact\",\"table\":\"oauth_clients\"},{\"db\":\"college_fact\",\"table\":\"user_details\"},{\"db\":\"college_fact\",\"table\":\"users\"},{\"db\":\"college_fact\",\"table\":\"messages\"},{\"db\":\"college_fact\",\"table\":\"converstions\"},{\"db\":\"college_fact\",\"table\":\"events\"},{\"db\":\"college_fact\",\"table\":\"event_types\"},{\"db\":\"college_fact\",\"table\":\"user_types\"},{\"db\":\"college_fact\",\"table\":\"posts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-03-27 09:59:24', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
