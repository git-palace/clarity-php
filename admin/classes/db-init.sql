-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 05:53 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_clarity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE IF NOT EXISTS `tbl_about` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_global`
--

CREATE TABLE IF NOT EXISTS `tbl_global` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_global`
--

INSERT INTO `tbl_global` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'logo', '/assets/init/global/logo.png', 'image'),
(2, 'logo_size', 'medium', 'radio'),
(3, 'logo-light', '/assets/init/global/logo-light.png', 'image'),
(4, 'background_image', '/assets/init/global/bg.jpg', 'image'),
(5, 'mask_image', '/assets/init/global/mask.jpg', 'image'),
(6, 'mask_mobile_image', '/assets/init/global/mask-mobile.jpg', 'image'),
(7, 'poster_image', '/assets/init/global/poster.jpg', 'image'),
(8, 'world_mobile_image', '/assets/init/global/world-mobile.jpg', 'image'),
(9, 'world_mobile_inv_image', '/assets/init/global/world-mobile-inv.jpg', 'image'),
(10, 'world_alpha_mobile_image', '/assets/init/global/world-alpha-mobile.jpg', 'image'),
(11, 'community_link', 'https://clarity.io/community', 'text'),
(12, 'login_button_text', 'Log in', 'text'),
(13, 'login_link', 'https://smartcity.clarity.io', 'text'),
(14, 'open_map_button_text', 'Open Map', 'text'),
(15, 'open_map_link', 'https://openmap.clarity.io', 'text'),
(16, 'add_one_more_button', 'no', 'boolean'),
(17, 'more_button_text', 'More', 'text'),
(18, 'more_button_link', 'https://google.com', 'text'),
(19, 'facebook_link', 'https://www.facebook.com/claritymovement', 'text'),
(20, 'twitter_link', 'https://twitter.com/JoinClarity', 'text'),
(21, 'linkedin_link', 'https://www.linkedin.com/company/claritymovement', 'text'),
(22, 'medium_link', 'https://medium.com/@claritymovement', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE IF NOT EXISTS `tbl_home` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_privacy`
--

CREATE TABLE IF NOT EXISTS `tbl_privacy` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_solution`
--

CREATE TABLE IF NOT EXISTS `tbl_solution` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
