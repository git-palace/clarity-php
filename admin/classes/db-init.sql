-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 11:30 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_clarity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'hero_title', 'Everyone has the right to breathe clean air.', 'text'),
(2, 'hero_description', 'At Clarity, we leverage our expertise in air sensing technology, IoT devices, and data analytics to create solutions that revolutionize the way we understand and respond to air pollution. Founded in 2014, we are now deploying the next generation of dense air quality monitoring networks around the world to build smarter cities through smarter data.', 'text'),
(3, 'hiring_title', 'Clarity is Hiring!', 'text'),
(4, 'hiring_description', 'Passionate about using technology to change the world? We are accepting rolling applications for the following positions to join our team:', 'text'),
(5, 'job_title', 'Software Engineer - Full Stack Developer', 'text'),
(6, 'job_positions', 'OPEN POSITIONS', 'text'),
(7, 'job_summary', 'Berkeley · Full Time · $80K - $150K · 0.1% - 0.5%', 'text'),
(8, 'job_link', 'https://angel.co/claritymovement/jobs/171087-software-engineer-full-stack-developer', 'text'),
(9, 'team_member_1_img', '/assets/init/about/p1.jpg', 'image'),
(10, 'team_member_1_info', 'David Lu|Co-Founder', 'text'),
(11, 'team_member_2_img', '/assets/init/about/p2.jpg', 'image'),
(12, 'team_member_2_info', 'Paolo Micalizzi|Co-Founder', 'text'),
(13, 'team_member_3_img', '/assets/init/about/p3.jpg', 'image'),
(14, 'team_member_3_info', 'Meiling Gao, PhD|COO', 'text'),
(15, 'team_member_4_img', '/assets/init/about/p4.jpg', 'image'),
(16, 'team_member_4_info', 'Baljot Singh|Co-Founder', 'text'),
(17, 'team_member_5_img', '/assets/init/about/p5.jpg', 'image'),
(18, 'team_member_5_info', 'Deepak Talwar|Co-Founder', 'text'),
(19, 'team_member_6_img', '/assets/init/about/p6.jpg', 'image'),
(20, 'team_member_6_info', 'Sean Wihera|Director of Business Development', 'text'),
(21, 'team_member_7_img', '/assets/init/about/p7.jpg', 'image'),
(22, 'team_member_7_info', 'Yuchen Shi|Software Lead', 'text'),
(23, 'team_member_8_img', '/assets/init/about/p8.jpg', 'image'),
(24, 'team_member_8_info', 'James Stevick|Hardware Engineer', 'text'),
(25, 'team_member_9_img', '/assets/init/about/p9.jpg', 'image'),
(26, 'team_member_9_info', 'Vivian Bi|Communications Manager', 'text'),
(27, 'team_member_10_img', '/assets/init/about/p10.jpg', 'image'),
(28, 'team_member_10_info', 'Dean Ding|Software Engineer', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'hero_title', 'Get in Touch.', 'text'),
(2, 'hero_description', 'Clarity is looking to partner with leading government agencies, smart city solution aggregators, and other forward thinking institutions to deploy the next generation of distributed air quality monitoring networks.<br/><br/>Please fill out the following form and someone from Clarity will be in touch. <br/><br/>For individuals looking to purchase a personal air monitoring device, feel free to join our <a href=\"http://eepurl.com/cDJYlX\" target=\"_blank\" class=\"c-link u-color--grey u-underline\">mailing list</a> for an announcement when we launch our online store in 2018.', 'text'),
(3, 'interested_item_1', 'Learning More', 'text'),
(4, 'interested_item_2', 'Requesting a Quote', 'text'),
(5, 'interested_item_3', 'Becoming a Partner', 'text'),
(6, 'interested_item_4', 'Technical Support', 'text'),
(7, 'interested_item_5', 'Working at Clarity', 'text'),
(8, 'interested_item_6', 'Something Else', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_global`
--

CREATE TABLE `tbl_global` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
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

CREATE TABLE `tbl_home` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
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

CREATE TABLE `tbl_privacy` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_privacy`
--

INSERT INTO `tbl_privacy` (`option_id`, `option_key`, `option_value`, `option_type`) VALUES
(1, 'hero_title', 'Privacy Policy', 'text'),
(2, 'hero_image ', '/assets/init/privacy/hero.jpg', 'image'),
(3, 'hero_description', 'This Privacy Policy (“Policy”) describes how Clarity Movement Co. and its affiliates (“Clarity” or “we” or “our”) treat information collected or provided in connection with an end user’s (“you” or “your” or “user”) use of the Clarity website (the “Site”) and all services provided by Clarity in connection with the Site (such services together with the Site, the “Services”) including without limitation our environmental air monitoring services and technologies. Please note that your use of the Services constitutes your acceptance of this Policy as set forth below:', 'text'),
(4, 'privacy_and_policy', '<h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">1</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Effective Date Changes</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">This Policy applies to all information collected by or provided to us in connection with the Services. When we make any material changes to this Policy, we will change the Effective Date above and will inform you by e-mail sent to the address associated with your Services account and/or through the Services the next time you login. We will treat your continued use of the Services following such notice as your acceptance of the changes.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">2</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Third Parties</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">The Services may contain, and we may send to registered users, offers from third parties or links to third-party websites. This Policy does not apply to information that you may provide to or that may be collected by third parties. We encourage you to request that such third parties provide you with their applicable privacy policies and other terms and conditions before engaging with or making a purchase from such third parties.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">3</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Collected Information</h3><h5 class=\"u-marg-l-vw2of12 c-text--sm u-color--dark-grey | u-marg-l-0@sm\">Information You Submit</h5><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">When you log-in to or create an account with the Services, we collect the information you provide. This information may include personally identifiable information such as your mailing address, e-mail address and password. When we refer to “personally identifiable information” in this Policy, we mean information that we can directly associate with a specific person or entity without additional information. To the extent you decline to share certain personally identifiable information with us, we may not be able to provide some or all of the features and functionalities found on the Services.</p><h5 class=\"u-marg-l-vw2of12 c-text--sm u-color--dark-grey | u-marg-l-0@sm\">Information Collected Automatically</h5><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">When you use the Services, we automatically gather certain non-personally identifiable information from you. This includes usage information, such as information on when, how often and for how long you use the Services and the content you submit and view. This also includes server log data such as the IP address, operating system, or the webpage you were visiting before you came to our Site. As described below, we collect this information through a number of means, including server logs, cookies and other online tracking mechanisms. We may associate such non-personally identifiable information with the personally identifiable information that you provide in connection with the Services.</p><h5 class=\"u-marg-l-vw2of12 c-text--sm u-color--dark-grey | u-marg-l-0@sm\">Analytics Sites</h5><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">We use certain third-party services to assist us in analysis, auditing, research, and reporting regarding the Services. These third parties may use web logs or web beacons, and they may set and access cookies on your computer or other device. In particular, we use Google Analytics to help collect and analyze certain information for the purposes discussed in this Policy. For information about the privacy practices of Google Analytics, you can visit http://www.google.com/policies/privacy/partners/. You can learn how to opt out of the use of cookies by Google Analytics at https://tools.google.com/dlpage/gaoptout.</p><h5 class=\"u-marg-l-vw2of12 c-text--sm u-color--dark-grey | u-marg-l-0@sm\">Transactions</h5><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">If you participate in a transaction through the Services, such as making a payment through the Services for a product or setting up a recurring payment for our subscription services, our third-party payment processor will receive your payment information for purposes of processing such transaction and Clarity will receive such payment after any applicable fees have been deducted in accordance with Clarity’s agreement with such third party payment processor. Note that Clarity does not receive your credit card or bank information.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">4</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Use of Information</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">We use the personally identifiable and non-personally identifiable information that we collect about you as follows:</p><ul class=\"u-marg-l-vw2of12 o-list--none c-text--sm u-color--grey | u-marg-l-0@sm\"><li class=\"u-marg-b-sm\">— We will use submitted information for the purposes for which you provided the information, including, for example, to create and maintain a Services account for you or respond to a question that you e-mail to us or submit through our customer service chat functionality. We also use submitted information and collected information as necessary to provide the features and functionality of the Services to you.</li><li class=\"u-marg-b-sm\">— We may send you e-mails regarding updates or modifications to the Services.</li><li class=\"u-marg-b-sm\">— We may analyze collected information relating to your use of the Services in order to help us improve the Services and develop and improve other products and services.</li><li class=\"u-marg-b-sm\">— We may use submitted information and collected information to help troubleshoot problems, provide you with required notices, enforce our Terms and Conditions of Service or to alert you to changes in our policies or agreements that may affect your use of the Services.</li><li class=\"u-marg-b-sm\">— We may combine personally identifiable information collected through the Services with other information that we collect about you in other contexts—such as our communications with you via e-mail, phone or postal mail. We will handle such combined information in accordance with this Policy.</li></ul><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">5</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Disclosure of Information</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">We disclose the personally identifiable and non-personally identifiable information that we collect about you as follows:</p><ul class=\"u-marg-l-vw2of12 o-list--none c-text--sm u-color--grey | u-marg-l-0@sm\"><li class=\"u-marg-b-sm\">— We may provide advertisers and other third parties with aggregated, non-personally identifiable information about our user base and its usage patterns.</li><li class=\"u-marg-b-sm\">— We may disclose personally identifiable information to third-party partners, including (without limitation) organizations and institutions with which you indicate an affiliation, in furtherance of our business arrangements with them, including without limitation to jointly offer a product or service to you or create interoperability between our products and services and the products and services of such partners.</li><li class=\"u-marg-b-sm\">— Clarity uses contractors and third-party service providers to provide the Services to our users and to help us provide services in connection with the Services. For example, we use third parties for email marketing and product fulfillment. Such third parties may receive information from us for use for such purposes.</li><li class=\"u-marg-b-sm\">— We may report aggregated, de-identified data relating to activity on the Services to third parties or the general public. We may combine such data with data obtained from third-party sources in order to generate such reports.</li><li class=\"u-marg-b-sm\">— We will use and disclose information where we, in good faith, believe that the law or legal process (such as a court order, search warrant or subpoena) requires us to do so; to investigate, prevent, or take action regarding illegal activities, suspected fraud, or violations of our terms and conditions; or in other circumstances where we believe is necessary to protect the rights or property of Clarity, our users, and third parties.</li></ul><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">6</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Viewing and Amending Information</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">You can contact Clarity to amend or delete your user account information at any time. Please note that while changes or deletions to your account information are reflected promptly in active user databases, our servers may retain previously provided information. Note that changes to, or deletion of, your Services account user information does not affect any other information collected by Clarity, which Clarity may retain and continue to use or disclose in accordance with this Policy.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">7</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Online Behavioral Advertising</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">We may engage third party online advertising technology service providers to help us deliver advertisements to you on websites you visit after using the Services. This is a common practice known as “re-targeting.” For information about these practices, visit the Network Advertising Initiative website at <a class=\"c-link u-color--dark-grey\" href=\"http://www.networkadvertising.org/understanding-online-advertising\" target=\"_blank\" rel=\"noopener\">http://www.networkadvertising.org/understanding-online-advertising</a> or the Digital Advertising Alliance website at <a class=\"c-link u-color--dark-grey\" href=\"http://www.aboutads.info/\" target=\"_blank\" rel=\"noopener\">http://www.aboutads.info/</a>. You may remove yourself from targeted advertising of companies within the Network Advertising Initiative by opting out at <a class=\"c-link u-color--dark-grey\" href=\"http://www.networkadvertising.org/choices/\" target=\"_blank\" rel=\"noopener\">http://www.networkadvertising.org/choices/</a>, or of companies participating in the Digital Advertising Alliance program by opting out at <a class=\"c-link u-color--dark-grey\" href=\"http://www.aboutads.info/choices\" target=\"_blank\" rel=\"noopener\">http://www.aboutads.info/choices</a>. Like many websites, the Services does not currently respond to “do not track” browser headers, but you can limit tracking through these third-party programs by taking the steps discussed above.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">8</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Security</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">The personally identifiable information we collect about you is stored in limited access servers. We will maintain reasonable safeguards to protect the security of these servers and your personally identifiable information. However, no security measures are 100% effective and we cannot guarantee the security of your personally identifiable information.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">9</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Transfer As Corporate Asset</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">In the event of a merger, sale of capital stock or assets, reorganization, consolidation or similar transaction involving Clarity, the information we possess (including personally identifiable information) shall be transferred as a corporate asset to the acquiring entity, provided that such entity will continue to handle such information in accordance with this Policy.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">10</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Transfer to the U.S. or other Countries</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">Clarity is established in and uses facilities in the United States. Your information will be stored and processed in the United States or other countries where Clarity has facilities. By using the Services, you consent to the transfer of information outside of your country, even if your country has more rigorous data protection standards.</p><h2 class=\"c-hgiga u-color--light-grey | u-marg-b-md@sm u-marg-t-lg@sm u-relative@sm u-offset-t-sm@sm\">11</h2><h3 class=\"c-h4 u-color--brand u-marg-b-md\">Children Under 13</h3><p class=\"u-marg-l-vw2of12 c-text--sm u-color--grey u-marg-b-md | u-marg-l-0@sm\">Clarity does not knowingly collect information from children under 13 and the Services are intended for adults over the age of 18. If you are a parent and believe that your child under the age of 13 has used the Services and provided personally identifiable information to us through the Services, please contact us at contact@clarity.io and we will work to delete that Services account and any such personally identifiable information.</p>', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_solution`
--

CREATE TABLE `tbl_solution` (
  `option_id` int(11) NOT NULL,
  `option_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `option_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_global`
--
ALTER TABLE `tbl_global`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_privacy`
--
ALTER TABLE `tbl_privacy`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_solution`
--
ALTER TABLE `tbl_solution`
  ADD PRIMARY KEY (`option_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
