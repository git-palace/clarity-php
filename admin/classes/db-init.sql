CREATE TABLE IF NOT EXISTS `tbl_global` (
	`option_id` int(11) NOT NULL,
	`option_key` varchar(30) NOT NULL,
	`option_value` longtext,
	`option_type` varchar(30) NOT NULL DEFAULT 'text'
	PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tbl_about` (
	`option_id` int(11) NOT NULL,
	`option_key` varchar(30) NOT NULL,
	`option_value` longtext,
	`option_type` varchar(30) NOT NULL DEFAULT 'text'
	PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tbl_contact` (
	`option_id` int(11) NOT NULL,
	`option_key` varchar(30) NOT NULL,
	`option_value` longtext,
	`option_type` varchar(30) NOT NULL DEFAULT 'text'
	PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tbl_home` (
	`option_id` int(11) NOT NULL,
	`option_key` varchar(30) NOT NULL,
	`option_value` longtext,
	`option_type` varchar(30) NOT NULL DEFAULT 'text'
	PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tbl_solution` (
	`option_id` int(11) NOT NULL,
	`option_key` varchar(30) NOT NULL,
	`option_value` longtext,
	`option_type` varchar(30) NOT NULL DEFAULT 'text'
	PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (1, 'logo', '/assets/init/global/logo.png', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (2, 'logo-size', 'medium', 'radio');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (3, 'logo-light', '/assets/init/global/logo-light.png', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (4, 'bg', '/assets/init/global/bg.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (5, 'mask', '/assets/init/global/mask.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (6, 'mask-mobile', '/assets/init/global/mask-mobile.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (7, 'poster', '/assets/init/global/poster.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (8, 'world-mobile', '/assets/init/global/world-mobile.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (9, 'world-mobile-inv', '/assets/init/global/world-mobile-inv.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (10, 'world-alpha-mobile', '/assets/init/global/world-alpha-mobile.jpg', 'image');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (11, 'community-link', 'https://clarity.io/community', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (12, 'btn-login-text', 'Log in', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (13, 'btn-login-link', 'https://smartcity.clarity.io', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (14, 'btn-openmap-text', 'Open Map', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (15, 'btn-openmap-link', 'https://openmap.clarity.io', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (16, 'ismore', 'no', 'boolean');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (17, 'btn-more-text', 'More', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (18, 'btn-more-link', 'https://google.com', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (19, 'social-fb-link', 'https://www.facebook.com/claritymovement', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (20, 'social-tw-link', 'https://twitter.com/JoinClarity', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (21, 'social-ln-link', 'https://www.linkedin.com/company/claritymovement', 'text');
INSERT INTO `tbl_global`(`option_id`, `option_key`, `option_value`, `option_type`) VALUES (22, 'social-md-link', 'https://medium.com/@claritymovement', 'text');
