-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 09:30 PM
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
(8, 'section_1_options', 'EXTERNALLY POWERED|$$$|SOLAR POWERED', 'option-list'),
(9, 'section_1_image_for_video', '/assets/init/solutions/step-1.jpg', 'image'),
(10, 'section_1_mobile_image_for_vid', '/assets/init/solutions/step-1-mobile.jpg', 'image'),
(11, 'section_1_video', '/assets/init/solutions/step-1.mp4', 'video'),
(12, 'section_2_title', 'Measuring Air Quality', 'text'),
(13, 'section_2_description', 'Each Clarity Node contains a selection of state‑of-the-art low cost sensors in a small, weatherproof shell. A layer of sensor fusion algorithms is applied to improve sensor accuracy.', 'text'),
(14, 'section_2_option_title', 'COMPREHENSIVE MONITORING', 'text'),
(15, 'section_2_options', 'PARTICULATE MATTER|$$$|CO<sub>2</sub>, NO<sub>2</sub>, Total VOCs|$$$|TEMPERATURE & HUMIDITY', 'option-list'),
(16, 'section_2_image_for_video', '/assets/init/solutions/step-2.jpg', 'image'),
(17, 'section_2_mobile_image_for_vid', '/assets/init/solutions/step-2-mobile.jpg', 'image'),
(18, 'section_2_video', '/assets/init/solutions/step-2.mp4', 'video'),
(19, 'section_3_title', 'Uploading to Clarity Cloud', 'text'),
(20, 'section_3_description', 'Clarity Cloud is our centralized cloud‑based software platform. Data collected from the Nodes are securely uploaded to the cloud through a range of communication options. The raw data will undergo a series of rigorous analyses to improve accuracy.', 'text'),
(21, 'section_3_option_title', 'MODULAR COMMUNICATION', 'text'),
(22, 'section_3_options', 'CELLULAR|$$$|WI-FI|$$$|LoRa', 'option-list'),
(23, 'section_3_image_for_video', '/assets/init/solutions/step-3.jpg', 'image'),
(24, 'section_4_title', 'Refining Data Quality', 'text'),
(25, 'section_4_description', 'Clarity’s proprietary Smart Calibration technology uses machine learning algorithms to refine data quality through cross analysis with local environmental parameters. As Clarity Nodes continue to collect more data, Smart Calibration improves accuracy over time.', 'text'),
(26, 'section_4_option_title', 'SMART CALIBRATION', 'text'),
(27, 'section_4_options', 'GOVERNMENT REFERENCE DATA|$$$|TEMPORAL TRENDS|$$$|METEOROLOGY|$$$|METEOROLOGY', 'option-list'),
(28, 'section_4_image_for_video', '/assets/init/solutions/step-4.jpg', 'image'),
(29, 'section_4_mobile_image_for_vid', '/assets/init/solutions/step-4-mobile.jpg', 'image'),
(30, 'section_5_title', 'Accessing Air Quality Data', 'text'),
(31, 'section_5_description', 'Users log in to Clarity’s Smart City Web App to interact with the air quality data network. The secure web‑based platform offers data visualizations, high resolution maps, and a download tool for in-depth data analyses.', 'text'),
(32, 'section_5_option_title', 'CENTRALIZED PLATFORM', 'text'),
(33, 'section_5_options', 'NETWORK MANAGEMENT|$$$|REAL-TIME API|$$$|HISTORICAL DATA DOWNLOAD', 'option-list'),
(34, 'section_5_gmap_image', '/assets/init/solutions/gmap-ui.jpg', 'image'),
(35, 'section_5_image_for_video', '/assets/init/solutions/step-5.jpg', 'image'),
(36, 'section_5_video', '/assets/init/solutions/step-5.mp4', 'video'),
(37, 'section_6_image_for_video', '/assets/init/solutions/poster.jpg', 'image'),
(38, 'section_6_video', '/assets/init/global/clarity_brand_vision_video.mp4', 'video'),
(39, 'benefits_hero_image', '/assets/init/global/benefits.jpg', 'image'),
(40, 'benefits_main_title', 'Solution Benefits', 'text'),
(41, 'benefit_options', 'Trace pollutant sources|$$$|Identify pollution hotspots|$$$|Evaluate policy effectiveness|$$$|Allocate scarce resources|$$$|Quantify personal exposure|$$$|Forecast peak pollution events|$$$|Share air quality information', 'option-list'),
(42, 'partner_logo_list', '/assets/images/init/solutions/partner-1.jpg|$$$|/assets/images/init/solutions/partner-2.jpg|$$$|/assets/images/init/solutions/partner-3.jpg|$$$|/assets/images/init/solutions/partner-4.jpg|$$$|/assets/images/init/solutions/partner-5.jpg|$$$|/assets/images/init/solutions/partner-6.jpg|$$$|/assets/images/init/solutions/partner-7.jpg|$$$|/assets/images/init/solutions/partner-8.jpg|$$$|/assets/images/init/solutions/partner-9.jpg|$$$|/assets/images/init/solutions/partner-10.jpg', 'image-list');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
