-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 08:17 PM
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
(8, 'world_mobile_image', '/assets/init/global/world-mobile.jpg', 'image'),
(9, 'world_mobile_inv_image', '/assets/init/global/world-mobile-inv.jpg', 'image'),
(10, 'world_alpha_mobile_image', '/assets/init/global/world-alpha-mobile.jpg', 'image'),
(11, 'community_link', 'https://clarity.io/community', 'text'),
(12, 'login_button_text', 'Log in', 'text'),
(13, 'login_link', 'https://smartcity.clarity.io', 'text'),
(14, 'open_map_button_text', 'Open Map', 'text'),
(15, 'open_map_link', 'https://openmap.clarity.io', 'text'),
(16, 'add_one_more_button', 'yes', 'boolean'),
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

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'main_title_1', 'Transform your city with', 'text'),
(2, 'main_title_2', 'Clarity Air Monitoring', 'text'),
(3, 'section-1_main_title_1', 'Clarity Air Monitoring', 'text'),
(4, 'section-1_main_title_2', 'IoT Devices', 'text'),
(5, 'section-1_description', 'Create a reliable and ubiquitous air quality network that expands existing government monitoring stations.', 'text'),
(6, 'section-2_main_title_1', 'Collecting actionable', 'text'),
(7, 'section-2_main_title_2', 'Air Quality Data', 'text'),
(8, 'section-2_description', 'Access data perfected by high density sensor networks and machine learning technology.', 'text'),
(9, 'section-3_main_title_1', 'To create', 'text'),
(10, 'section-3_main_title_2', 'Healthy Communities', 'text'),
(11, 'section-3_description', 'Inform policies with highly localized data to create sustainable cities that support all communities.', 'text'),
(12, 'discover_button_text', 'Discover Video', 'text'),
(13, 'solution_button_text', 'Our Solution', 'text'),
(14, 'add_one_more_button', 'yes', 'boolean'),
(15, 'more_button_text', 'Subscribe Now', 'text'),
(16, 'more_button_link', 'https://google.com', 'text');

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

--
-- Dumping data for table `tbl_solution`
--

INSERT INTO `tbl_solution` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'hero_title', 'Clarity Node + Clarity Cloud', 'text'),
(2, 'hero_image', '/assets/init/solutions/hero.jpg', 'image'),
(3, 'product_name', 'Clarity Air Monitoring', 'text'),
(4, 'how_it_works', 'By integrating Internet Of Things hardware with machine learning algorithms and cloud‑based data analytics, Clarity Air Monitoring delivers truly actionable air quality data aimed at transforming how cities understand and tackle air pollution.', 'text'),
(5, 'section_1_title', 'Deploying the Clarity Nodes', 'text'),
(6, 'section_1_description', 'At the core of our technology is the Clarity Node. The Nodes are configured on our web‑based deployment tool and installed in a matter of minutes. Hundreds to thousands of Nodes work together to form a scalable network of high density air quality monitoring points.', 'text'),
(7, 'section_1_option_title', 'POWER OPTIONS', 'text'),
(8, 'section_1_option_1', 'EXTERNALLY POWERED', 'text'),
(9, 'section_1_option_2', 'SOLAR POWERED', 'text'),
(10, 'section_1_image_for_video', '/assets/init/solutions/step-1.jpg', 'image'),
(11, 'section_1_mobile_image_for_vid', '/assets/init/solutions/step-1-mobile.jpg', 'image'),
(12, 'section_1_video', '/assets/init/solutions/step-1.mp4', 'video'),
(13, 'section_2_title', 'Measuring Air Quality', 'text'),
(14, 'section_2_description', 'Each Clarity Node contains a selection of state‑of-the-art low cost sensors in a small, weatherproof shell. A layer of sensor fusion algorithms is applied to improve sensor accuracy.', 'text'),
(15, 'section_2_option_title', 'COMPREHENSIVE MONITORING', 'text'),
(16, 'section_2_option_1', 'PARTICULATE MATTER, Total VOCs', 'text'),
(17, 'section_2_option_2', 'CO<sub>2</sub>, NO<sub>2</sub>, Total VOCs', 'text'),
(18, 'section_2_option_3', 'TEMPERATURE & HUMIDITY', 'text'),
(19, 'section_2_image_for_video', '/assets/init/solutions/step-2.jpg', 'image'),
(20, 'section_2_mobile_image_for_vid', '/assets/init/solutions/step-2-mobile.jpg', 'image'),
(21, 'section_2_video', '/assets/init/solutions/step-2.mp4', 'video'),
(22, 'section_3_title', 'Uploading to Clarity Cloud', 'text'),
(23, 'section_3_description', 'Clarity Cloud is our centralized cloud‑based software platform. Data collected from the Nodes are securely uploaded to the cloud through a range of communication options. The raw data will undergo a series of rigorous analyses to improve accuracy.', 'text'),
(24, 'section_3_option_title', 'MODULAR COMMUNICATION', 'text'),
(25, 'section_3_option_1', 'CELLULAR', 'text'),
(26, 'section_3_option_2', 'WI-FI', 'text'),
(27, 'section_3_option_3', 'LoRa', 'text'),
(28, 'section_3_image_for_video', '/assets/init/solutions/step-3.jpg', 'image'),
(29, 'section_4_title', 'Refining Data Quality', 'text'),
(30, 'section_4_description', 'Clarity’s proprietary Smart Calibration technology uses machine learning algorithms to refine data quality through cross analysis with local environmental parameters. As Clarity Nodes continue to collect more data, Smart Calibration improves accuracy over time.', 'text'),
(31, 'section_4_option_title', 'SMART CALIBRATION', 'text'),
(32, 'section_4_option_1', 'GOVERNMENT REFERENCE DATA', 'text'),
(33, 'section_4_option_2', 'TEMPORAL TRENDS', 'text'),
(34, 'section_4_option_3', 'METEOROLOGY', 'text'),
(35, 'section_4_option_4', 'METEOROLOGY', 'text'),
(36, 'section_4_image_for_video', '/assets/init/solutions/step-4.jpg', 'image'),
(37, 'section_4_mobile_image_for_vid', '/assets/init/solutions/step-4-mobile.jpg', 'image'),
(38, 'section_5_title', 'Accessing Air Quality Data', 'text'),
(39, 'section_5_description', 'Users log in to Clarity’s Smart City Web App to interact with the air quality data network. The secure web‑based platform offers data visualizations, high resolution maps, and a download tool for in-depth data analyses.', 'text'),
(40, 'section_5_option_title', 'CENTRALIZED PLATFORM', 'text'),
(41, 'section_5_option_1', 'NETWORK MANAGEMENT', 'text'),
(42, 'section_5_option_2', 'REAL-TIME API', 'text'),
(43, 'section_5_option_3', 'HISTORICAL DATA DOWNLOAD', 'text'),
(44, 'section_5_gmap_image', '/assets/init/solutions/gmap-ui.jpg', 'image'),
(45, 'section_5_image_for_video', '/assets/init/solutions/step-5.jpg', 'image'),
(46, 'section_5_video', '/assets/init/solutions/step-5.mp4', 'video'),
(47, 'section_6_image_for_video', '/assets/init/solutions/poster.jpg', 'image'),
(48, 'section_6_video', '/assets/init/global/clarity_brand_vision_video.mp4', 'video'),
(49, 'benefits_hero_image', '/assets/init/global/benefits.jpg', 'image'),
(50, 'benefits_main_title', 'Solution Benefits', 'text'),
(51, 'benefit_option_1', 'Trace pollutant sources', 'text'),
(52, 'benefit_option_2', 'Identify pollution hotspots', 'text'),
(53, 'benefit_option_3', 'Evaluate policy effectiveness', 'text'),
(54, 'benefit_option_4', 'Allocate scarce resources', 'text'),
(55, 'benefit_option_5', 'Quantify personal exposure', 'text'),
(56, 'benefit_option_6', 'Forecast peak pollution events', 'text'),
(57, 'benefit_option_7', 'Share air quality information', 'text'),
(58, 'partner_logo_1', '/assets/images/init/solutions/partner-1.jpg', 'image'),
(59, 'partner_logo_2', '/assets/images/init/solutions/partner-2.jpg', 'image'),
(60, 'partner_logo_3', '/assets/images/init/solutions/partner-3.jpg', 'image'),
(61, 'partner_logo_4', '/assets/images/init/solutions/partner-4.jpg', 'image'),
(62, 'partner_logo_5', '/assets/images/init/solutions/partner-5.jpg', 'image'),
(63, 'partner_logo_6', '/assets/images/init/solutions/partner-6.jpg', 'image'),
(64, 'partner_logo_7', '/assets/images/init/solutions/partner-7.jpg', 'image'),
(65, 'partner_logo_8', '/assets/images/init/solutions/partner-8.jpg', 'image'),
(66, 'partner_logo_9', '/assets/images/init/solutions/partner-9.jpg', 'image'),
(67, 'partner_logo_10', '/assets/images/init/solutions/partner-10.jpg', 'image');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
