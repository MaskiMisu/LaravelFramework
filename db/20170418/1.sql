/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laravel_dev

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-18 18:07:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_banner
-- ----------------------------
DROP TABLE IF EXISTS `cms_banner`;
CREATE TABLE `cms_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `content` text,
  `link_upload` varchar(100) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `alt` text,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_banner
-- ----------------------------
INSERT INTO `cms_banner` VALUES ('3', '{\"vi\":\"Slider 1\"}', '5', '{\"vi\":\"<p>Slider 1<\\/p>\"}', 'banner/', '1491632509-slider_1.jpg', '{\"vi\":\"Slider 1\"}', '1', '0', '2017-04-08 06:19:53', '2017-04-08 06:21:49');
INSERT INTO `cms_banner` VALUES ('4', '{\"vi\":\"Slider 2\"}', '5', '{\"vi\":\"<p>Slider 2<\\/p>\"}', 'banner/', '1491632517-slider_2.jpg', '{\"vi\":\"Slider 2\"}', '1', '0', '2017-04-08 06:21:03', '2017-04-08 06:22:30');

-- ----------------------------
-- Table structure for cms_banner_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_banner_group`;
CREATE TABLE `cms_banner_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_key` varchar(50) DEFAULT NULL,
  `title` text,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_banner_group
-- ----------------------------
INSERT INTO `cms_banner_group` VALUES ('6', 'brand', '{\"vi\":\"Brand\",\"en\":\"Brand\",\"jp\":\"Brand\"}', '1', '0', '2017-04-08 04:14:38', '2017-04-08 04:14:38');
INSERT INTO `cms_banner_group` VALUES ('5', 'slider', '{\"vi\":\"Slider\",\"en\":\"Slider\",\"jp\":\"Slider\"}', '1', '0', '2017-04-08 04:14:32', '2017-04-08 04:14:32');

-- ----------------------------
-- Table structure for cms_blog
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog`;
CREATE TABLE `cms_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_upload` varchar(50) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `parent_nav` varchar(100) DEFAULT NULL,
  `title` text,
  `slug` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `num_views` int(11) DEFAULT '0',
  `short` text,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES ('27', 'blog/', '1490951278-blog2.jpg', '', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"tin-tuc-2\",\"en\":\"tin-tuc-2-en\",\"jp\":\"tin-tuc-2-jp\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '1', '0', '0', '{\"vi\":\"<p>Tin tức 2<\\/p>\",\"en\":\"<p>Tin tức 2<\\/p>\",\"jp\":\"<p>Tin tức 2<\\/p>\"}', '{\"vi\":\"<p>Tin tức 2<\\/p>\",\"en\":\"<p>Tin tức 2<\\/p>\",\"jp\":\"<p>Tin tức 2<\\/p>\"}', '2017-03-31 18:07:58', '2017-03-31 09:07:58');
INSERT INTO `cms_blog` VALUES ('28', 'blog/', '1490951083-dam1.jpg', '10', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"tin-tuc-3\",\"en\":\"tin-tuc-3-en\",\"jp\":\"tin-tuc-3-jp\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '0', '0', '0', '{\"vi\":\"<p>Tin tức 3<\\/p>\",\"en\":\"<p>Tin tức 3<\\/p>\",\"jp\":\"<p>Tin tức 3<\\/p>\"}', '{\"vi\":\"<p>Tin tức 3<\\/p>\",\"en\":\"<p>Tin tức 3<\\/p>\",\"jp\":\"<p>Tin tức 3<\\/p>\"}', '2017-03-31 18:38:31', '2017-03-31 18:38:31');
INSERT INTO `cms_blog` VALUES ('29', 'blog/', null, ',10,6', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"cong-nghe-1\",\"en\":\"cong-nghe-1-en\",\"jp\":\"cong-nghe-1-jp\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '1', '0', '0', '{\"vi\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ 1<\\/p>\"}', '{\"vi\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ 1<\\/p>\"}', '2017-03-31 18:43:42', '2017-03-31 09:43:42');
INSERT INTO `cms_blog` VALUES ('26', 'blog/', '1490949306-blog1.jpg', '', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"tin-tuc-1\",\"en\":\"tin-tuc-1-en\",\"jp\":\"tin-tuc-1-jp\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '0', '0', '0', '{\"vi\":\"<p>Tin tức 1<\\/p>\",\"en\":\"<p>Tin tức 1<\\/p>\",\"jp\":\"<p>Tin tức 1<\\/p>\"}', '{\"vi\":\"<p>Tin tức 1<\\/p>\",\"en\":\"<p>Tin tức 1<\\/p>\",\"jp\":\"<p>Tin tức 1<\\/p>\"}', '2017-03-31 17:35:06', '2017-03-31 08:35:06');
INSERT INTO `cms_blog` VALUES ('30', 'blog/', null, ',6', '{\"vi\":\"Công nghệ 2\",\"en\":\"132\",\"jp\":\"132\"}', '{\"vi\":\"cong-nghe-2\",\"en\":\"132-en\",\"jp\":\"132-jp\"}', '{\"vi\":\"Công nghệ 2\",\"en\":null,\"jp\":null}', '{\"vi\":\"Công nghệ 2\",\"en\":null,\"jp\":null}', '{\"vi\":\"Công nghệ 2\",\"en\":null,\"jp\":null}', '0', '0', '0', '{\"vi\":\"<p>C&ocirc;ng nghệ 2<\\/p>\",\"en\":null,\"jp\":null}', '{\"vi\":\"<p>C&ocirc;ng nghệ 2<\\/p>\",\"en\":null,\"jp\":null}', '2017-04-01 02:39:57', '2017-04-01 03:17:00');

-- ----------------------------
-- Table structure for cms_blog_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_group`;
CREATE TABLE `cms_blog_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentable` varchar(50) DEFAULT NULL,
  `parent_nav` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `slug` text NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_group
-- ----------------------------
INSERT INTO `cms_blog_group` VALUES ('12', 'no', '', '1', '0', '{\"vi\":\"tin-tuc-su-kien\",\"en\":\"tin-tuc-su-kien-en\",\"jp\":\"tin-tuc-su-kien-jp\"}', '{\"vi\":\"Tin tức - Sự kiện\",\"en\":\"Tin tức - Sự kiện\",\"jp\":\"Tin tức - Sự kiện\"}', '{\"vi\":\"<p>Tin tức - Sự kiện<\\/p>\",\"en\":\"<p>Tin tức - Sự kiện<\\/p>\",\"jp\":\"<p>Tin tức - Sự kiện<\\/p>\"}', '{\"vi\":\"Tin tức - Sự kiện\",\"en\":\"Tin tức - Sự kiện\",\"jp\":\"Tin tức - Sự kiện\"}', '{\"vi\":\"Tin tức - Sự kiện\",\"en\":\"Tin tức - Sự kiện\",\"jp\":\"Tin tức - Sự kiện\"}', '{\"vi\":\"Tin tức - Sự kiện\",\"en\":\"Tin tức - Sự kiện\",\"jp\":\"Tin tức - Sự kiện\"}', '2017-04-18 05:42:23', '2017-04-18 05:42:23');
INSERT INTO `cms_blog_group` VALUES ('13', 'no', '', '1', '0', '{\"vi\":\"bao-chi\",\"en\":\"bao-chi-en\",\"jp\":\"bao-chi-jp\"}', '{\"vi\":\"Báo chí\",\"en\":\"Báo chí\",\"jp\":\"Báo chí\"}', '{\"vi\":\"<p>B&aacute;o ch&iacute;<\\/p>\",\"en\":\"<p>B&aacute;o ch&iacute;<\\/p>\",\"jp\":\"<p>B&aacute;o ch&iacute;<\\/p>\"}', '{\"vi\":\"Báo chí\",\"en\":\"Báo chí\",\"jp\":\"Báo chí\"}', '{\"vi\":\"Báo chí\",\"en\":\"Báo chí\",\"jp\":\"Báo chí\"}', '{\"vi\":\"Báo chí\",\"en\":\"Báo chí\",\"jp\":\"Báo chí\"}', '2017-04-18 05:42:35', '2017-04-18 05:42:35');

-- ----------------------------
-- Table structure for cms_configuration
-- ----------------------------
DROP TABLE IF EXISTS `cms_configuration`;
CREATE TABLE `cms_configuration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` text,
  `email` varchar(255) DEFAULT NULL,
  `hotline` varchar(15) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `fanpage_facebook` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `currency` varchar(4) DEFAULT '',
  `location_province` varchar(255) DEFAULT NULL,
  `location_district` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `google_analytic` text,
  `zophim_chat` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_configuration
-- ----------------------------
INSERT INTO `cms_configuration` VALUES ('1', 'CMS', 'lienphantech@gmail.com', '0902020570', 'google', 'https://www.facebook.com/Mjustore/?fref=ts', '0902020570', '231 Dương Bá Trạc', 'đ', 'TP HCM', 'Quận 8', 'Việt Nam', 'Asia/Ho_Chi_Minh', 'Mã google analytic:', 'Mã zophim chat:', 'This is meta title', 'keyword1, keyword 2', 'This is me ta description', 'vi');
INSERT INTO `cms_configuration` VALUES ('2', 'CMS', 'lienphantech@gmail.com', '0902020570', null, null, '0902020570', '231 Dương Bá Trạc', 'đ', 'TP HCM', 'Quận 8', 'Việt Nam', null, null, null, null, null, null, 'en');
INSERT INTO `cms_configuration` VALUES ('3', 'CMS', 'lienphantech@gmail.com', '0902020570', null, null, '0902020570', '231 Dương Bá Trạc', 'đ', 'TP HCM', 'Quận 8', 'Việt Nam', null, null, null, null, null, null, 'jp');

-- ----------------------------
-- Table structure for cms_contact
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact`;
CREATE TABLE `cms_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contact
-- ----------------------------
INSERT INTO `cms_contact` VALUES ('2', 'phan van lien ', 'lienphanit@gmail.com', 'TP HCM', '0902020570', 'test nội dung contact lien hệ shop', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('3', 'phan van lien ', 'lienphanit@gmail.com', 'TP HCM', '0902020570', 'test nội dung contact lien hệ shop', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('5', 'nguyten van rot', 'lienphanit@gmail.com', 'Chân dung nghi phạm được họa sĩ phác họa chân thực, giúp cảnh sát nhanh chóng làm rõ nghi phạm và bắt giữ.', '0902020570', '<p>Ch&acirc;n dung nghi phạm được họa sĩ ph&aacute;c họa ch&acirc;n thực, gi&uacute;p cảnh s&aacute;t nhanh ch&oacute;ng l&agrave;m r&otilde; nghi phạm v&agrave; bắt giữ.</p>', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('6', 'Phan Văn Liền', 'lienphanit@gmail.com', '', '0902020570', 'adsdad', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('7', 'Phan Văn Liền', 'lienphanit@gmail.com', '', '0902020570', 'adsdad', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('8', 'Phan Văn Liền', 'lienphanit@gmail.com', 'TP HCM', '0902020570', 'noi dugn test gui mail', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('9', 'Phan Văn Liền', 'lienphanit@gmail.com', 'TP HCM', '0902020570', 'noi dugn test gui mail', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('10', 'Phan Văn Liền', 'lienphanit@gmail.com', 'TP HCM', '0902020570', '12313323', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('11', 'Phan Văn Liền', 'phanlien1093@gmail.com', 'asdasd', '0902020570', 'asdasds', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('12', 'Phan Văn Liền', 'phanlien1093@gmail.com', 'asdasd', '0902020570', 'asdasds', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('13', 'Phan Văn Liền', 'phanlien1093@gmail.com', 'TP HCM', '0902020570', 'kjghiojjop', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');
INSERT INTO `cms_contact` VALUES ('14', 'Phan Văn Liền', 'phanlien1093@gmail.com', 'TP HCM', '0902020570', 'noi dung content', '1', '2017-03-13 14:59:57', '2017-03-13 14:59:57');

-- ----------------------------
-- Table structure for cms_contact_maps
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact_maps`;
CREATE TABLE `cms_contact_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_contact_maps
-- ----------------------------
INSERT INTO `cms_contact_maps` VALUES ('11', 'Test add contact', '<p>Test add contact</p>', '44 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam', '10.774157', '106.7041069', '1', '0', '2017-04-12 07:54:02', '2017-04-12 07:54:02');
INSERT INTO `cms_contact_maps` VALUES ('12', 'Test add contact', '<p>Test add contact</p>', '44 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam', '10.774157', '106.7041069', '1', '0', '2017-04-12 07:54:34', '2017-04-12 07:54:34');
INSERT INTO `cms_contact_maps` VALUES ('13', 'Test add contact', '<p>Test add contact</p>', '44 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam', '10.774157', '106.7041069', '1', '0', '2017-04-12 07:54:36', '2017-04-12 07:54:36');
INSERT INTO `cms_contact_maps` VALUES ('14', 'Test add contact', '<p>Test add contact</p>', '44 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam', '10.774157', '106.7041069', '1', '0', '2017-04-12 07:54:38', '2017-04-12 07:54:38');

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `level` tinyint(5) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `menu_type` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('10', null, '0', '0', '{\"vi\":\"Main menu\",\"en\":\"Main menu\",\"jp\":\"Main menu\"}', '{\"vi\":\"main-menu\",\"en\":\"main-menu\",\"jp\":\"main-menu\"}', '2017-04-05 07:16:11', '2017-04-18 06:05:38', '0');
INSERT INTO `cms_menu` VALUES ('56', 'page', '50', '2', '{\"vi\":\"Tiện ích\",\"en\":\"Tiện ích\",\"jp\":\"Tiện ích\"}', '{\"vi\":\"tien-ich\",\"en\":\"tien-ich\",\"jp\":\"tien-ich\"}', '2017-04-18 06:06:37', '2017-04-18 06:06:37', '10');
INSERT INTO `cms_menu` VALUES ('55', 'page', '50', '2', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}', '{\"vi\":\"san-pham-1492495160\",\"en\":\"san-pham-1492495160\",\"jp\":\"san-pham-1492495160\"}', '2017-04-18 06:06:37', '2017-04-18 06:06:37', '10');
INSERT INTO `cms_menu` VALUES ('54', 'page', '50', '2', '{\"vi\":\"Dịch vụ\",\"en\":\"Dịch vụ\",\"jp\":\"Dịch vụ\"}', '{\"vi\":\"dich-vu\",\"en\":\"dich-vu\",\"jp\":\"dich-vu\"}', '2017-04-18 06:06:37', '2017-04-18 06:06:37', '10');
INSERT INTO `cms_menu` VALUES ('53', 'product_group', '10', '1', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"nha-cho-thue\",\"en\":\"nha-cho-thue\",\"jp\":\"nha-cho-thue\"}', '2017-04-18 06:05:38', '2017-04-18 06:05:38', '10');
INSERT INTO `cms_menu` VALUES ('52', 'product_group', '10', '1', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"nha-ban\",\"en\":\"nha-ban\",\"jp\":\"nha-ban\"}', '2017-04-18 06:05:38', '2017-04-18 06:05:38', '10');
INSERT INTO `cms_menu` VALUES ('51', 'blog', '10', '1', '{\"vi\":\"Tin tức\",\"en\":\"Tin tức\",\"jp\":\"Tin tức\"}', '{\"vi\":\"tin-tuc-su-kien\",\"en\":\"tin-tuc-su-kien\",\"jp\":\"tin-tuc-su-kien\"}', '2017-04-18 06:05:38', '2017-04-18 06:05:38', '10');
INSERT INTO `cms_menu` VALUES ('49', 'home', '10', '1', '{\"vi\":\"Trang chủ\",\"en\":\"Trang chủ\",\"jp\":\"Trang chủ\"}', '{\"vi\":\"trang-chu\",\"en\":\"trang-chu\",\"jp\":\"trang-chu\"}', '2017-04-18 05:43:59', '2017-04-18 06:05:38', '10');
INSERT INTO `cms_menu` VALUES ('50', 'page', '10', '1', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"gioi-thieu\",\"en\":\"gioi-thieu\",\"jp\":\"gioi-thieu\"}', '2017-04-18 06:05:38', '2017-04-18 06:06:37', '10');
INSERT INTO `cms_menu` VALUES ('21', null, '0', '0', '{\"vi\":\"Menu footer\",\"en\":\"Menu footer\",\"jp\":\"Menu footer\"}', '{\"vi\":\"menu-footer\",\"en\":\"menu-footer\",\"jp\":\"menu-footer\"}', '2017-04-05 07:16:57', '2017-04-18 06:58:54', '0');

-- ----------------------------
-- Table structure for cms_migrations
-- ----------------------------
DROP TABLE IF EXISTS `cms_migrations`;
CREATE TABLE `cms_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_migrations
-- ----------------------------
INSERT INTO `cms_migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `cms_migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for cms_page
-- ----------------------------
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_page
-- ----------------------------
INSERT INTO `cms_page` VALUES ('5', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"gioi-thieu\",\"en\":\"gioi-thieu-en\",\"jp\":\"gioi-thieu-jp\"}', '{\"vi\":\"<p><em>Egaland - Hệ thống căn hộ v&agrave; biệt thự&nbsp;với dịch vụ đẳng cấp của Tập đo&agrave;n Egagroup<\\/em><\\/p>\\r\\n<p>Egaland cung cấp đến kh&aacute;ch h&agrave;ng một ti&ecirc;u chuẩn sống đẳng cấp vượt trội mới, đ&acirc;y l&agrave; sự kết hợp ho&agrave;n chỉnh giữa bất động sản nh&agrave; ở v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn cao tại những khu đ&ocirc; thị quy m&ocirc; h&agrave;ng đầu Việt Nam mang đẳng cấp quốc tế do Egagroup đầu tư.<\\/p>\\r\\n<p>Với tầm nh&igrave;n chiến lược v&agrave; ph&aacute;t triển bền vững, mỗi khu đ&ocirc; thị trong hệ thống Egaland đều tọa lạc tại c&aacute;c vị tr&iacute; trung t&acirc;m H&agrave; Nội v&agrave; th&agrave;nh phố Hồ Ch&iacute; Minh, hội tụ những gi&aacute; trị vượt trội:&nbsp;<em><a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-san-pham-chat-luong\\\">Sản phẩm nh&agrave; ở chất lượng cao<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-dich-vu-chuyen-nghiep-5-sao\\\">Dịch vụ tại gia chuy&ecirc;n nghiệp<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-moi-truong-song\\\">M&ocirc;i trường sống xanh, sạch<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-van-hoa-cong-dong\\\">Văn h&oacute;a cộng đồng nh&acirc;n văn<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-an-ninh-anh-toan\\\">An ninh &ndash; An to&agrave;n được đảm bảo<\\/a>; v&agrave;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/vinhomes-tien-ich\\\">Tiện &iacute;ch đồng bộ, đầy đủ<\\/a><\\/em>.<\\/p>\\r\\n<p>Với Egaland, lần đầu ti&ecirc;n, cư d&acirc;n đ&atilde; v&agrave; đang được trải nghiệm một m&ocirc;i trường sống l&yacute; tưởng, ho&agrave;n to&agrave;n mới &ndash; nơi hạnh ph&uacute;c đến từ sự kết hợp ho&agrave;n chỉnh giữa tiện nghi sang trọng v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn 5*, tạo dựng một cuộc sống hạnh ph&uacute;c ngập tr&agrave;n.<\\/p>\\r\\n<p>C&aacute;c khu đ&ocirc; thị mang&nbsp;thương hiệu Egaland sẽ lu&ocirc;n l&agrave; sự lựa chọn ho&agrave;n hảo cho qu&yacute; vị.<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/TAN_2444.jpg\\\" alt=\\\"Vinhomes Royal City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Royal City (H&agrave; Nội) &ndash; Th&agrave;nh phố Ch&acirc;u &Acirc;u thu nhỏ&nbsp;<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/TAN_2423.jpg\\\" alt=\\\"Đồng hồ Times City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Egaland Times City (H&agrave; Nội) &ndash; Th&agrave;nh phố của thời đại mới<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/pano4.jpg\\\" alt=\\\"pano4.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Riverside (H&agrave; Nội) &ndash; Xứ sở thanh b&igrave;nh<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinhomes-ng-kh-i.jpg\\\" alt=\\\"Vinhomes Đồng Khởi\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Đồng Khởi (Tp. Hồ Ch&iacute; Minh) - vị tr&iacute; đắc địa v&agrave; năng động<\\/em><\\/p>\",\"en\":\"<p><em>Egaland - Hệ thống căn hộ v&agrave; biệt thự&nbsp;với dịch vụ đẳng cấp của Tập đo&agrave;n Egagroup<\\/em><\\/p>\\r\\n<p>Egaland cung cấp đến kh&aacute;ch h&agrave;ng một ti&ecirc;u chuẩn sống đẳng cấp vượt trội mới, đ&acirc;y l&agrave; sự kết hợp ho&agrave;n chỉnh giữa bất động sản nh&agrave; ở v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn cao tại những khu đ&ocirc; thị quy m&ocirc; h&agrave;ng đầu Việt Nam mang đẳng cấp quốc tế do Egagroup đầu tư.<\\/p>\\r\\n<p>Với tầm nh&igrave;n chiến lược v&agrave; ph&aacute;t triển bền vững, mỗi khu đ&ocirc; thị trong hệ thống Egaland đều tọa lạc tại c&aacute;c vị tr&iacute; trung t&acirc;m H&agrave; Nội v&agrave; th&agrave;nh phố Hồ Ch&iacute; Minh, hội tụ những gi&aacute; trị vượt trội:&nbsp;<em><a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-san-pham-chat-luong\\\">Sản phẩm nh&agrave; ở chất lượng cao<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-dich-vu-chuyen-nghiep-5-sao\\\">Dịch vụ tại gia chuy&ecirc;n nghiệp<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-moi-truong-song\\\">M&ocirc;i trường sống xanh, sạch<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-van-hoa-cong-dong\\\">Văn h&oacute;a cộng đồng nh&acirc;n văn<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-an-ninh-anh-toan\\\">An ninh &ndash; An to&agrave;n được đảm bảo<\\/a>; v&agrave;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/vinhomes-tien-ich\\\">Tiện &iacute;ch đồng bộ, đầy đủ<\\/a><\\/em>.<\\/p>\\r\\n<p>Với Egaland, lần đầu ti&ecirc;n, cư d&acirc;n đ&atilde; v&agrave; đang được trải nghiệm một m&ocirc;i trường sống l&yacute; tưởng, ho&agrave;n to&agrave;n mới &ndash; nơi hạnh ph&uacute;c đến từ sự kết hợp ho&agrave;n chỉnh giữa tiện nghi sang trọng v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn 5*, tạo dựng một cuộc sống hạnh ph&uacute;c ngập tr&agrave;n.<\\/p>\\r\\n<p>C&aacute;c khu đ&ocirc; thị mang&nbsp;thương hiệu Egaland sẽ lu&ocirc;n l&agrave; sự lựa chọn ho&agrave;n hảo cho qu&yacute; vị.<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/TAN_2444.jpg\\\" alt=\\\"Vinhomes Royal City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Royal City (H&agrave; Nội) &ndash; Th&agrave;nh phố Ch&acirc;u &Acirc;u thu nhỏ&nbsp;<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/TAN_2423.jpg\\\" alt=\\\"Đồng hồ Times City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Egaland Times City (H&agrave; Nội) &ndash; Th&agrave;nh phố của thời đại mới<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/pano4.jpg\\\" alt=\\\"pano4.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Riverside (H&agrave; Nội) &ndash; Xứ sở thanh b&igrave;nh<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinhomes-ng-kh-i.jpg\\\" alt=\\\"Vinhomes Đồng Khởi\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Đồng Khởi (Tp. Hồ Ch&iacute; Minh) - vị tr&iacute; đắc địa v&agrave; năng động<\\/em><\\/p>\",\"jp\":\"<p><em>Egaland - Hệ thống căn hộ v&agrave; biệt thự&nbsp;với dịch vụ đẳng cấp của Tập đo&agrave;n Egagroup<\\/em><\\/p>\\r\\n<p>Egaland cung cấp đến kh&aacute;ch h&agrave;ng một ti&ecirc;u chuẩn sống đẳng cấp vượt trội mới, đ&acirc;y l&agrave; sự kết hợp ho&agrave;n chỉnh giữa bất động sản nh&agrave; ở v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn cao tại những khu đ&ocirc; thị quy m&ocirc; h&agrave;ng đầu Việt Nam mang đẳng cấp quốc tế do Egagroup đầu tư.<\\/p>\\r\\n<p>Với tầm nh&igrave;n chiến lược v&agrave; ph&aacute;t triển bền vững, mỗi khu đ&ocirc; thị trong hệ thống Egaland đều tọa lạc tại c&aacute;c vị tr&iacute; trung t&acirc;m H&agrave; Nội v&agrave; th&agrave;nh phố Hồ Ch&iacute; Minh, hội tụ những gi&aacute; trị vượt trội:&nbsp;<em><a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-san-pham-chat-luong\\\">Sản phẩm nh&agrave; ở chất lượng cao<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-dich-vu-chuyen-nghiep-5-sao\\\">Dịch vụ tại gia chuy&ecirc;n nghiệp<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-moi-truong-song\\\">M&ocirc;i trường sống xanh, sạch<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-van-hoa-cong-dong\\\">Văn h&oacute;a cộng đồng nh&acirc;n văn<\\/a>;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/Vinhomes-an-ninh-anh-toan\\\">An ninh &ndash; An to&agrave;n được đảm bảo<\\/a>; v&agrave;&nbsp;<a href=\\\"http:\\/\\/vinhomes.vn\\/gioi-thieu\\/vinhomes-tap-doan-vingroup\\/vinhomes-tien-ich\\\">Tiện &iacute;ch đồng bộ, đầy đủ<\\/a><\\/em>.<\\/p>\\r\\n<p>Với Egaland, lần đầu ti&ecirc;n, cư d&acirc;n đ&atilde; v&agrave; đang được trải nghiệm một m&ocirc;i trường sống l&yacute; tưởng, ho&agrave;n to&agrave;n mới &ndash; nơi hạnh ph&uacute;c đến từ sự kết hợp ho&agrave;n chỉnh giữa tiện nghi sang trọng v&agrave; hệ thống dịch vụ ti&ecirc;u chuẩn 5*, tạo dựng một cuộc sống hạnh ph&uacute;c ngập tr&agrave;n.<\\/p>\\r\\n<p>C&aacute;c khu đ&ocirc; thị mang&nbsp;thương hiệu Egaland sẽ lu&ocirc;n l&agrave; sự lựa chọn ho&agrave;n hảo cho qu&yacute; vị.<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/TAN_2444.jpg\\\" alt=\\\"Vinhomes Royal City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Royal City (H&agrave; Nội) &ndash; Th&agrave;nh phố Ch&acirc;u &Acirc;u thu nhỏ&nbsp;<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/TAN_2423.jpg\\\" alt=\\\"Đồng hồ Times City\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Egaland Times City (H&agrave; Nội) &ndash; Th&agrave;nh phố của thời đại mới<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/pano4.jpg\\\" alt=\\\"pano4.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Riverside (H&agrave; Nội) &ndash; Xứ sở thanh b&igrave;nh<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinhomes-ng-kh-i.jpg\\\" alt=\\\"Vinhomes Đồng Khởi\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Egaland Đồng Khởi (Tp. Hồ Ch&iacute; Minh) - vị tr&iacute; đắc địa v&agrave; năng động<\\/em><\\/p>\"}', '1', '0', '2017-04-18 05:57:25', '2017-04-18 05:58:20', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}');
INSERT INTO `cms_page` VALUES ('6', '{\"vi\":\"Dịch vụ\",\"en\":\"Dịch vụ\",\"jp\":\"Dịch vụ\"}', '{\"vi\":\"dich-vu\",\"en\":\"dich-vu-en\",\"jp\":\"dich-vu-jp\"}', '{\"vi\":\"<p>Hệ thống dịch vụ cư d&acirc;n to&agrave;n diện v&agrave; kh&eacute;p k&iacute;n tại c&aacute;c khu đ&ocirc; thị Egaland cho ph&eacute;p Qu&yacute; cư d&acirc;n&nbsp;tận dụng quỹ thời gian rảnh rỗi qu&yacute; b&aacute;u b&ecirc;n gia đ&igrave;nh v&agrave; tận hưởng cuộc sống chất lượng 5 sao&nbsp;mỗi ng&agrave;y ngay tại ch&iacute;nh tổ ấm của m&igrave;nh. Egaland mang đến sự hỗ trợ tối đa cho cuộc sống của cư d&acirc;n bằng việc cung cấp c&aacute;c dịch vụ tại gia chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m:<\\/p>\\r\\n<ul>\\r\\n<li>Dịch vụ gia đ&igrave;nh: Dọn dẹp vệ sinh (thực hiện theo ti&ecirc;u chu&acirc;̉n 5 sao) bao gồm: Dọn nh&agrave;; Vệ sinh c&ocirc;ng nghiệp; Vệ sinh tinh; Giặt l&agrave;; Dịch vụ trồng c&acirc;y; Chăm s&oacute;c c&acirc;y, trồng\\/l&agrave;m cỏ; Chăm s&oacute;c s&acirc;n vườn.<\\/li>\\r\\n<li>Dịch vụ sửa chữa, bảo tr&igrave;: Sửa chữa kỹ thuật, bảo tr&igrave; c&aacute;c thiết bị trong căn hộ\\/biệt thự, điện nước, mộc, nề&hellip;<\\/li>\\r\\n<li>Dịch vụ ẩm thực phục vụ tại nh&agrave;: C&aacute;c y&ecirc;u cầu về ẩm thực sẽ được cung cấp tới tận căn hộ\\/biệt thự của cư d&acirc;n.<\\/li>\\r\\n<li>Dịch vụ văn ph&ograve;ng: Photocopy, in ấn, đặt v&eacute; m&aacute;y bay, thu&ecirc; &ocirc; t&ocirc;, chuyển ph&aacute;t nhanh, đặt hoa&hellip; Cư d&acirc;n c&oacute; thể sử dụng c&aacute;c dịch vụ văn ph&ograve;ng tại Trung t&acirc;m dịch vụ kh&aacute;ch h&agrave;ng hoặc ngay tại ch&iacute;nh căn hộ\\/biệt thư theo y&ecirc;u cầu.<\\/li>\\r\\n<li>Hỗ trợ cư d&acirc;n&nbsp;cho thu&ecirc; bất động sản v&agrave; quản l&yacute; kh&aacute;ch thu&ecirc; thay cho chủ nh&agrave;. Song song với đ&oacute;, Egaland sẽ cung cấp dịch vụ cho thu&ecirc; căn hộ ngắn hạn v&agrave; d&agrave;i hạn cho c&aacute;c chuy&ecirc;n gia trong v&agrave; ngo&agrave;i nước đang sống v&agrave; l&agrave;m việc tại Việt Nam.<\\/li>\\r\\n<li>Tại&nbsp;khu căn hộ&nbsp;của Egaland đều được bố tr&iacute; Lounge\\/Club House để tạo cho cư d&acirc;n một kh&ocirc;ng gian ri&ecirc;ng để gặp gỡ, hội họp, thư gi&atilde;n v&agrave; sinh hoạt chung của cư d&acirc;n v&agrave; kh&aacute;ch của cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/dich-vu.jpg?v=1461755684093\\\" alt=\\\"DSC_6188-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ chăm s&oacute;c v&agrave; dọn dẹp nh&agrave; cửa<\\/em><\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/DSC_7914.jpg\\\" alt=\\\"DSC_7914.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ ẩm thực tại gia<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/IMG_1958.jpg\\\" alt=\\\"IMG_1958.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Dịch vụ sửa chữa kỹ thuật<\\/em><\\/p>\",\"en\":\"<p>Hệ thống dịch vụ cư d&acirc;n to&agrave;n diện v&agrave; kh&eacute;p k&iacute;n tại c&aacute;c khu đ&ocirc; thị Egaland cho ph&eacute;p Qu&yacute; cư d&acirc;n&nbsp;tận dụng quỹ thời gian rảnh rỗi qu&yacute; b&aacute;u b&ecirc;n gia đ&igrave;nh v&agrave; tận hưởng cuộc sống chất lượng 5 sao&nbsp;mỗi ng&agrave;y ngay tại ch&iacute;nh tổ ấm của m&igrave;nh. Egaland mang đến sự hỗ trợ tối đa cho cuộc sống của cư d&acirc;n bằng việc cung cấp c&aacute;c dịch vụ tại gia chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m:<\\/p>\\r\\n<ul>\\r\\n<li>Dịch vụ gia đ&igrave;nh: Dọn dẹp vệ sinh (thực hiện theo ti&ecirc;u chu&acirc;̉n 5 sao) bao gồm: Dọn nh&agrave;; Vệ sinh c&ocirc;ng nghiệp; Vệ sinh tinh; Giặt l&agrave;; Dịch vụ trồng c&acirc;y; Chăm s&oacute;c c&acirc;y, trồng\\/l&agrave;m cỏ; Chăm s&oacute;c s&acirc;n vườn.<\\/li>\\r\\n<li>Dịch vụ sửa chữa, bảo tr&igrave;: Sửa chữa kỹ thuật, bảo tr&igrave; c&aacute;c thiết bị trong căn hộ\\/biệt thự, điện nước, mộc, nề&hellip;<\\/li>\\r\\n<li>Dịch vụ ẩm thực phục vụ tại nh&agrave;: C&aacute;c y&ecirc;u cầu về ẩm thực sẽ được cung cấp tới tận căn hộ\\/biệt thự của cư d&acirc;n.<\\/li>\\r\\n<li>Dịch vụ văn ph&ograve;ng: Photocopy, in ấn, đặt v&eacute; m&aacute;y bay, thu&ecirc; &ocirc; t&ocirc;, chuyển ph&aacute;t nhanh, đặt hoa&hellip; Cư d&acirc;n c&oacute; thể sử dụng c&aacute;c dịch vụ văn ph&ograve;ng tại Trung t&acirc;m dịch vụ kh&aacute;ch h&agrave;ng hoặc ngay tại ch&iacute;nh căn hộ\\/biệt thư theo y&ecirc;u cầu.<\\/li>\\r\\n<li>Hỗ trợ cư d&acirc;n&nbsp;cho thu&ecirc; bất động sản v&agrave; quản l&yacute; kh&aacute;ch thu&ecirc; thay cho chủ nh&agrave;. Song song với đ&oacute;, Egaland sẽ cung cấp dịch vụ cho thu&ecirc; căn hộ ngắn hạn v&agrave; d&agrave;i hạn cho c&aacute;c chuy&ecirc;n gia trong v&agrave; ngo&agrave;i nước đang sống v&agrave; l&agrave;m việc tại Việt Nam.<\\/li>\\r\\n<li>Tại&nbsp;khu căn hộ&nbsp;của Egaland đều được bố tr&iacute; Lounge\\/Club House để tạo cho cư d&acirc;n một kh&ocirc;ng gian ri&ecirc;ng để gặp gỡ, hội họp, thư gi&atilde;n v&agrave; sinh hoạt chung của cư d&acirc;n v&agrave; kh&aacute;ch của cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/dich-vu.jpg?v=1461755684093\\\" alt=\\\"DSC_6188-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ chăm s&oacute;c v&agrave; dọn dẹp nh&agrave; cửa<\\/em><\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/DSC_7914.jpg\\\" alt=\\\"DSC_7914.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ ẩm thực tại gia<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/IMG_1958.jpg\\\" alt=\\\"IMG_1958.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Dịch vụ sửa chữa kỹ thuật<\\/em><\\/p>\",\"jp\":\"<p>Hệ thống dịch vụ cư d&acirc;n to&agrave;n diện v&agrave; kh&eacute;p k&iacute;n tại c&aacute;c khu đ&ocirc; thị Egaland cho ph&eacute;p Qu&yacute; cư d&acirc;n&nbsp;tận dụng quỹ thời gian rảnh rỗi qu&yacute; b&aacute;u b&ecirc;n gia đ&igrave;nh v&agrave; tận hưởng cuộc sống chất lượng 5 sao&nbsp;mỗi ng&agrave;y ngay tại ch&iacute;nh tổ ấm của m&igrave;nh. Egaland mang đến sự hỗ trợ tối đa cho cuộc sống của cư d&acirc;n bằng việc cung cấp c&aacute;c dịch vụ tại gia chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m:<\\/p>\\r\\n<ul>\\r\\n<li>Dịch vụ gia đ&igrave;nh: Dọn dẹp vệ sinh (thực hiện theo ti&ecirc;u chu&acirc;̉n 5 sao) bao gồm: Dọn nh&agrave;; Vệ sinh c&ocirc;ng nghiệp; Vệ sinh tinh; Giặt l&agrave;; Dịch vụ trồng c&acirc;y; Chăm s&oacute;c c&acirc;y, trồng\\/l&agrave;m cỏ; Chăm s&oacute;c s&acirc;n vườn.<\\/li>\\r\\n<li>Dịch vụ sửa chữa, bảo tr&igrave;: Sửa chữa kỹ thuật, bảo tr&igrave; c&aacute;c thiết bị trong căn hộ\\/biệt thự, điện nước, mộc, nề&hellip;<\\/li>\\r\\n<li>Dịch vụ ẩm thực phục vụ tại nh&agrave;: C&aacute;c y&ecirc;u cầu về ẩm thực sẽ được cung cấp tới tận căn hộ\\/biệt thự của cư d&acirc;n.<\\/li>\\r\\n<li>Dịch vụ văn ph&ograve;ng: Photocopy, in ấn, đặt v&eacute; m&aacute;y bay, thu&ecirc; &ocirc; t&ocirc;, chuyển ph&aacute;t nhanh, đặt hoa&hellip; Cư d&acirc;n c&oacute; thể sử dụng c&aacute;c dịch vụ văn ph&ograve;ng tại Trung t&acirc;m dịch vụ kh&aacute;ch h&agrave;ng hoặc ngay tại ch&iacute;nh căn hộ\\/biệt thư theo y&ecirc;u cầu.<\\/li>\\r\\n<li>Hỗ trợ cư d&acirc;n&nbsp;cho thu&ecirc; bất động sản v&agrave; quản l&yacute; kh&aacute;ch thu&ecirc; thay cho chủ nh&agrave;. Song song với đ&oacute;, Egaland sẽ cung cấp dịch vụ cho thu&ecirc; căn hộ ngắn hạn v&agrave; d&agrave;i hạn cho c&aacute;c chuy&ecirc;n gia trong v&agrave; ngo&agrave;i nước đang sống v&agrave; l&agrave;m việc tại Việt Nam.<\\/li>\\r\\n<li>Tại&nbsp;khu căn hộ&nbsp;của Egaland đều được bố tr&iacute; Lounge\\/Club House để tạo cho cư d&acirc;n một kh&ocirc;ng gian ri&ecirc;ng để gặp gỡ, hội họp, thư gi&atilde;n v&agrave; sinh hoạt chung của cư d&acirc;n v&agrave; kh&aacute;ch của cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/dich-vu.jpg?v=1461755684093\\\" alt=\\\"DSC_6188-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ chăm s&oacute;c v&agrave; dọn dẹp nh&agrave; cửa<\\/em><\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/DSC_7914.jpg\\\" alt=\\\"DSC_7914.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p><em>Dịch vụ ẩm thực tại gia<\\/em><\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/IMG_1958.jpg\\\" alt=\\\"IMG_1958.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p><em>Dịch vụ sửa chữa kỹ thuật<\\/em><\\/p>\"}', '1', '0', '2017-04-18 05:58:51', '2017-04-18 05:58:51', '{\"vi\":\"Dịch vụ\",\"en\":\"Dịch vụ\",\"jp\":\"Dịch vụ\"}', '{\"vi\":\"Dịch vụ\",\"en\":\"Dịch vụ\",\"jp\":\"Dịch vụ\"}', '{\"vi\":\"Dịch vụ\",\"en\":\"Dịch vụ\",\"jp\":\"Dịch vụ\"}');
INSERT INTO `cms_page` VALUES ('7', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}', '{\"vi\":\"san-pham-1492495160\",\"en\":\"san-pham-en-1492495160\",\"jp\":\"san-pham-jp-1492495160\"}', '{\"vi\":\"<p>Sản phẩm nh&agrave; ở (căn hộ, biệt thự) của Egaland lu&ocirc;n lấy c&aacute;c yếu tố về chất lượng, thẩm mỹ l&agrave;m điều kiện ti&ecirc;n quyết, c&ugrave;ng với đ&oacute; l&agrave; c&aacute;c cam kết về tiến độ thi c&ocirc;ng cũng như dịch vụ bảo h&agrave;nh.<\\/p>\\r\\n<ul>\\r\\n<li>Thiết kế sang trọng, tinh tế v&agrave; h&agrave;i h&ograve;a với kiến tr&uacute;c xung quanh, mang đến sự tiện nghi tối ưu, hiện đại v&agrave; c&aacute;c điều kiện sống tốt nhất cho mỗi gia đ&igrave;nh.<\\/li>\\r\\n<li>Thi c&ocirc;ng chuy&ecirc;n nghiệp, đảm bảo chất lượng v&agrave; đ&aacute;p ứng đ&uacute;ng tiến độ ho&agrave;n th&agrave;nh.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Chế độ bảo h&agrave;nh vượt trội cam kết mang đến cho kh&aacute;ch h&agrave;ng sự tin cậy tối đa v&agrave; uy t&iacute;n d&agrave;i l&acirc;u.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/san-pham.jpg?v=1461755907727\\\" alt=\\\"vincom-village_retouch-11-12-_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Nội thất tiện nghi tinh tế tới từng chi tiết đ&aacute;p ứng c&ocirc;ng năng sử dụng cao&nbsp;cho chủ nh&acirc;n<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" alt=\\\"vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>Biệt thự đơn lập Egaland Riverside với phong c&aacute;ch kiến tr&uacute;c hiện đại v&agrave; sang trọng<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em><img class=\\\"lazy\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/nha-mau-vtc-sale-2-.jpg\\\" alt=\\\"nha-mau-vtc-sale-2-.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>C&aacute;c căn hộ v&agrave; biệt thự được thiết kế tinh tế gi&uacute;p cư d&acirc;n dễ d&agrave;ng bố tr&iacute; nội thất<\\/em><\\/p>\",\"en\":\"<p>Sản phẩm nh&agrave; ở (căn hộ, biệt thự) của Egaland lu&ocirc;n lấy c&aacute;c yếu tố về chất lượng, thẩm mỹ l&agrave;m điều kiện ti&ecirc;n quyết, c&ugrave;ng với đ&oacute; l&agrave; c&aacute;c cam kết về tiến độ thi c&ocirc;ng cũng như dịch vụ bảo h&agrave;nh.<\\/p>\\r\\n<ul>\\r\\n<li>Thiết kế sang trọng, tinh tế v&agrave; h&agrave;i h&ograve;a với kiến tr&uacute;c xung quanh, mang đến sự tiện nghi tối ưu, hiện đại v&agrave; c&aacute;c điều kiện sống tốt nhất cho mỗi gia đ&igrave;nh.<\\/li>\\r\\n<li>Thi c&ocirc;ng chuy&ecirc;n nghiệp, đảm bảo chất lượng v&agrave; đ&aacute;p ứng đ&uacute;ng tiến độ ho&agrave;n th&agrave;nh.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Chế độ bảo h&agrave;nh vượt trội cam kết mang đến cho kh&aacute;ch h&agrave;ng sự tin cậy tối đa v&agrave; uy t&iacute;n d&agrave;i l&acirc;u.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/san-pham.jpg?v=1461755907727\\\" alt=\\\"vincom-village_retouch-11-12-_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Nội thất tiện nghi tinh tế tới từng chi tiết đ&aacute;p ứng c&ocirc;ng năng sử dụng cao&nbsp;cho chủ nh&acirc;n<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" alt=\\\"vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>Biệt thự đơn lập Egaland Riverside với phong c&aacute;ch kiến tr&uacute;c hiện đại v&agrave; sang trọng<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em><img class=\\\"lazy\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/nha-mau-vtc-sale-2-.jpg\\\" alt=\\\"nha-mau-vtc-sale-2-.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>C&aacute;c căn hộ v&agrave; biệt thự được thiết kế tinh tế gi&uacute;p cư d&acirc;n dễ d&agrave;ng bố tr&iacute; nội thất<\\/em><\\/p>\",\"jp\":\"<p>Sản phẩm nh&agrave; ở (căn hộ, biệt thự) của Egaland lu&ocirc;n lấy c&aacute;c yếu tố về chất lượng, thẩm mỹ l&agrave;m điều kiện ti&ecirc;n quyết, c&ugrave;ng với đ&oacute; l&agrave; c&aacute;c cam kết về tiến độ thi c&ocirc;ng cũng như dịch vụ bảo h&agrave;nh.<\\/p>\\r\\n<ul>\\r\\n<li>Thiết kế sang trọng, tinh tế v&agrave; h&agrave;i h&ograve;a với kiến tr&uacute;c xung quanh, mang đến sự tiện nghi tối ưu, hiện đại v&agrave; c&aacute;c điều kiện sống tốt nhất cho mỗi gia đ&igrave;nh.<\\/li>\\r\\n<li>Thi c&ocirc;ng chuy&ecirc;n nghiệp, đảm bảo chất lượng v&agrave; đ&aacute;p ứng đ&uacute;ng tiến độ ho&agrave;n th&agrave;nh.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Chế độ bảo h&agrave;nh vượt trội cam kết mang đến cho kh&aacute;ch h&agrave;ng sự tin cậy tối đa v&agrave; uy t&iacute;n d&agrave;i l&acirc;u.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/san-pham.jpg?v=1461755907727\\\" alt=\\\"vincom-village_retouch-11-12-_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em>Nội thất tiện nghi tinh tế tới từng chi tiết đ&aacute;p ứng c&ocirc;ng năng sử dụng cao&nbsp;cho chủ nh&acirc;n<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" alt=\\\"vincom-village_retouch-1-14-chinh-sua_oki-copy-copy.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>Biệt thự đơn lập Egaland Riverside với phong c&aacute;ch kiến tr&uacute;c hiện đại v&agrave; sang trọng<\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em><img class=\\\"lazy\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/nha-mau-vtc-sale-2-.jpg\\\" alt=\\\"nha-mau-vtc-sale-2-.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p align=\\\"center\\\"><em>C&aacute;c căn hộ v&agrave; biệt thự được thiết kế tinh tế gi&uacute;p cư d&acirc;n dễ d&agrave;ng bố tr&iacute; nội thất<\\/em><\\/p>\"}', '1', '0', '2017-04-18 05:59:20', '2017-04-18 05:59:20', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}');
INSERT INTO `cms_page` VALUES ('8', '{\"vi\":\"Tiện ích\",\"en\":\"Tiện ích\",\"jp\":\"Tiện ích\"}', '{\"vi\":\"tien-ich\",\"en\":\"tien-ich-en\",\"jp\":\"tien-ich-jp\"}', '{\"vi\":\"<p>Tại c&aacute;c dự &aacute;n Egaland, cư d&acirc;n được hưởng thụ c&aacute;c tiện &iacute;ch vượt trội v&agrave; dịch vụ quản l&yacute; chuy&ecirc;n nghiệp, đẳng cấp trong khu đ&ocirc; thị kiểu mẫu, bao gồm:<\\/p>\\r\\n<ul>\\r\\n<li>Hệ thống nước cấp ổn định, nước n&oacute;ng sẵn s&agrave;ng.<\\/li>\\r\\n<li>Hệ thống điện dự ph&ograve;ng mạnh tại khu vực c&ocirc;ng cộng (100% khả năng).<\\/li>\\r\\n<li>Điều h&ograve;a trung t&acirc;m ổn định (cho diện t&iacute;ch h&agrave;nh lang chung).<\\/li>\\r\\n<li>Hạ tầng cảnh quan đường phố được bố tr&iacute; h&agrave;i h&ograve;a với những tiện &iacute;ch chung cho cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Đặc biệt, mỗi khu đ&ocirc; thị được x&acirc;y dựng tr&ecirc;n m&ocirc; h&igrave;nh một th&agrave;nh phố thu nhỏ với đầy đủ c&aacute;c tiện &iacute;ch hạ tầng đồng bộ v&agrave; vượt trội mang đẳng cấp quốc tế như: hạ tầng gi&aacute;o dục, y tế, thể thao, văn h&oacute;a, mua sắm, vui chơi giải tr&iacute;&hellip;&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/tien-ich.jpg?v=1461756179907\\\" alt=\\\"royal-city.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu trung t&acirc;m thương mại mua sắm v&agrave; ẩm thực Egacom v&agrave; Egacom Mega Mall&nbsp;l&agrave; địa điểm l&yacute; tưởng để kh&aacute;ch h&agrave;ng thỏa sức mua sắm, thưởng ngoạn v&agrave; tận hưởng kh&ocirc;ng gian thư gi&atilde;n v&agrave; ẩm thực thoải m&aacute;i. Tại c&aacute;c Khu đ&ocirc; thị Times City v&agrave; Royal City,&nbsp;<a href=\\\"http:\\/\\/www.vincomshoppingmall.com\\/\\\">hệ thống Egacom Mega Mall<\\/a>&nbsp;nằm ở c&aacute;c tầng ngầm dưới l&ograve;ng đất v&agrave; đặc biệt, Egacom Mega Mall - Royal&nbsp;City l&agrave; Quần thể Trung t&acirc;m thương mại (TTTM) v&agrave; Vui chơi giải tr&iacute; trong l&ograve;ng đất lớn nhất Ch&acirc;u &Aacute;.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinschool.jpg\\\" alt=\\\"vinschool.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Hạ tầng gi&aacute;o dục&nbsp;được triển khai với hai hệ thống gi&aacute;o dục li&ecirc;n cấp to&agrave;n diện, từ bậc mầm non, tiểu học, THCS v&agrave; THPT:&nbsp;<a href=\\\"http:\\/\\/vinschool.com\\/\\\">hệ thống Vinschool<\\/a>&nbsp;(được đầu tư bởi tập đo&agrave;n Vingroup) theo chuẩn gi&aacute;o dục Việt Nam chất lượng cao, v&agrave; hệ thống BIS\\/BVIS theo chuẩn gi&aacute;o dục Anh Quốc được c&ocirc;ng nhận tr&ecirc;n to&agrave;n thế giới.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vinmec.jpg\\\" alt=\\\"vinmec.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Y tế&nbsp;với hệ thống&nbsp;gồm&nbsp;<a href=\\\"http:\\/\\/www.vinmec.com\\/\\\">bệnh viện v&agrave; c&aacute;c ph&ograve;ng kh&aacute;m đa khoa quốc tế Vinmec<\\/a>&nbsp;tại c&aacute;c dự &aacute;n của Vingroup. Vinmec&nbsp;được x&acirc;y dựng theo m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn đa khoa quốc tế chất lượng cao đảm bảo c&aacute;c điều kiện chăm s&oacute;c sức khỏe trong điều kiện tốt nhất.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/Khu-tap-the-thao_oki.jpg\\\" alt=\\\"Khu-tap-the-thao_oki.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu phức hợp thể thao&nbsp;được trang bị s&acirc;n chơi thể thao chuy&ecirc;n nghiệp v&agrave; đa dạng (tennis, cầu l&ocirc;ng, b&oacute;ng đ&aacute;, b&oacute;ng rổ, bể bơi&hellip;) sẽ đ&aacute;p ứng mọi nhu cầu r&egrave;n luyện v&agrave; chăm s&oacute;c sức khỏe. Đặc biệt, Egaland c&oacute; hệ thống bể bơi bốn m&ugrave;a hiện đại ở tất cả c&aacute;c dự &aacute;n v&agrave; s&acirc;n tập golf ri&ecirc;ng thời thượng&nbsp; tại Egaland&nbsp;Riverside.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/Thuycung_1.JPG\\\" alt=\\\"Thuycung_1.JPG\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu vui chơi, giải tr&iacute; hiện đại, độc đ&aacute;o.&nbsp;C&aacute;c dự &aacute;n của Egaland đều được kiến thiết l&agrave; những điểm nhấn vui chơi giải tr&iacute; t&acirc;m điểm của thủ đ&ocirc;. Ngo&agrave;i c&aacute;c cụm rạp chiếu phim 3D, 4D hiện đại, khu thế giới tr&ograve; chơi Vinpearl&nbsp;Games th&uacute; vị. Times City c&ograve;n c&oacute; Thủy Cung Vinpearl Aquarium &ndash; thế giới đại dương sinh động v&agrave; khu Nhạc Nước ho&agrave;nh tr&aacute;ng. Royal City c&oacute; C&ocirc;ng vi&ecirc;n nước trong nh&agrave; Vinpearl Water Park hấp dẫn v&agrave; s&acirc;n băng Vinpeark Ice Rink đầy kỳ th&uacute;.<em>&nbsp;<\\/em>Ngo&agrave;i ra, c&aacute;c khu căn hộ đều c&oacute; sảnh tiếp kh&aacute;ch d&agrave;nh cho cư d&acirc;n.<\\/p>\",\"en\":\"<p>Tại c&aacute;c dự &aacute;n Egaland, cư d&acirc;n được hưởng thụ c&aacute;c tiện &iacute;ch vượt trội v&agrave; dịch vụ quản l&yacute; chuy&ecirc;n nghiệp, đẳng cấp trong khu đ&ocirc; thị kiểu mẫu, bao gồm:<\\/p>\\r\\n<ul>\\r\\n<li>Hệ thống nước cấp ổn định, nước n&oacute;ng sẵn s&agrave;ng.<\\/li>\\r\\n<li>Hệ thống điện dự ph&ograve;ng mạnh tại khu vực c&ocirc;ng cộng (100% khả năng).<\\/li>\\r\\n<li>Điều h&ograve;a trung t&acirc;m ổn định (cho diện t&iacute;ch h&agrave;nh lang chung).<\\/li>\\r\\n<li>Hạ tầng cảnh quan đường phố được bố tr&iacute; h&agrave;i h&ograve;a với những tiện &iacute;ch chung cho cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Đặc biệt, mỗi khu đ&ocirc; thị được x&acirc;y dựng tr&ecirc;n m&ocirc; h&igrave;nh một th&agrave;nh phố thu nhỏ với đầy đủ c&aacute;c tiện &iacute;ch hạ tầng đồng bộ v&agrave; vượt trội mang đẳng cấp quốc tế như: hạ tầng gi&aacute;o dục, y tế, thể thao, văn h&oacute;a, mua sắm, vui chơi giải tr&iacute;&hellip;&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/tien-ich.jpg?v=1461756179907\\\" alt=\\\"royal-city.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu trung t&acirc;m thương mại mua sắm v&agrave; ẩm thực Egacom v&agrave; Egacom Mega Mall&nbsp;l&agrave; địa điểm l&yacute; tưởng để kh&aacute;ch h&agrave;ng thỏa sức mua sắm, thưởng ngoạn v&agrave; tận hưởng kh&ocirc;ng gian thư gi&atilde;n v&agrave; ẩm thực thoải m&aacute;i. Tại c&aacute;c Khu đ&ocirc; thị Times City v&agrave; Royal City,&nbsp;<a href=\\\"http:\\/\\/www.vincomshoppingmall.com\\/\\\">hệ thống Egacom Mega Mall<\\/a>&nbsp;nằm ở c&aacute;c tầng ngầm dưới l&ograve;ng đất v&agrave; đặc biệt, Egacom Mega Mall - Royal&nbsp;City l&agrave; Quần thể Trung t&acirc;m thương mại (TTTM) v&agrave; Vui chơi giải tr&iacute; trong l&ograve;ng đất lớn nhất Ch&acirc;u &Aacute;.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinschool.jpg\\\" alt=\\\"vinschool.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Hạ tầng gi&aacute;o dục&nbsp;được triển khai với hai hệ thống gi&aacute;o dục li&ecirc;n cấp to&agrave;n diện, từ bậc mầm non, tiểu học, THCS v&agrave; THPT:&nbsp;<a href=\\\"http:\\/\\/vinschool.com\\/\\\">hệ thống Vinschool<\\/a>&nbsp;(được đầu tư bởi tập đo&agrave;n Vingroup) theo chuẩn gi&aacute;o dục Việt Nam chất lượng cao, v&agrave; hệ thống BIS\\/BVIS theo chuẩn gi&aacute;o dục Anh Quốc được c&ocirc;ng nhận tr&ecirc;n to&agrave;n thế giới.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vinmec.jpg\\\" alt=\\\"vinmec.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Y tế&nbsp;với hệ thống&nbsp;gồm&nbsp;<a href=\\\"http:\\/\\/www.vinmec.com\\/\\\">bệnh viện v&agrave; c&aacute;c ph&ograve;ng kh&aacute;m đa khoa quốc tế Vinmec<\\/a>&nbsp;tại c&aacute;c dự &aacute;n của Vingroup. Vinmec&nbsp;được x&acirc;y dựng theo m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn đa khoa quốc tế chất lượng cao đảm bảo c&aacute;c điều kiện chăm s&oacute;c sức khỏe trong điều kiện tốt nhất.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/Khu-tap-the-thao_oki.jpg\\\" alt=\\\"Khu-tap-the-thao_oki.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu phức hợp thể thao&nbsp;được trang bị s&acirc;n chơi thể thao chuy&ecirc;n nghiệp v&agrave; đa dạng (tennis, cầu l&ocirc;ng, b&oacute;ng đ&aacute;, b&oacute;ng rổ, bể bơi&hellip;) sẽ đ&aacute;p ứng mọi nhu cầu r&egrave;n luyện v&agrave; chăm s&oacute;c sức khỏe. Đặc biệt, Egaland c&oacute; hệ thống bể bơi bốn m&ugrave;a hiện đại ở tất cả c&aacute;c dự &aacute;n v&agrave; s&acirc;n tập golf ri&ecirc;ng thời thượng&nbsp; tại Egaland&nbsp;Riverside.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/Thuycung_1.JPG\\\" alt=\\\"Thuycung_1.JPG\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu vui chơi, giải tr&iacute; hiện đại, độc đ&aacute;o.&nbsp;C&aacute;c dự &aacute;n của Egaland đều được kiến thiết l&agrave; những điểm nhấn vui chơi giải tr&iacute; t&acirc;m điểm của thủ đ&ocirc;. Ngo&agrave;i c&aacute;c cụm rạp chiếu phim 3D, 4D hiện đại, khu thế giới tr&ograve; chơi Vinpearl&nbsp;Games th&uacute; vị. Times City c&ograve;n c&oacute; Thủy Cung Vinpearl Aquarium &ndash; thế giới đại dương sinh động v&agrave; khu Nhạc Nước ho&agrave;nh tr&aacute;ng. Royal City c&oacute; C&ocirc;ng vi&ecirc;n nước trong nh&agrave; Vinpearl Water Park hấp dẫn v&agrave; s&acirc;n băng Vinpeark Ice Rink đầy kỳ th&uacute;.<em>&nbsp;<\\/em>Ngo&agrave;i ra, c&aacute;c khu căn hộ đều c&oacute; sảnh tiếp kh&aacute;ch d&agrave;nh cho cư d&acirc;n.<\\/p>\",\"jp\":\"<p>Tại c&aacute;c dự &aacute;n Egaland, cư d&acirc;n được hưởng thụ c&aacute;c tiện &iacute;ch vượt trội v&agrave; dịch vụ quản l&yacute; chuy&ecirc;n nghiệp, đẳng cấp trong khu đ&ocirc; thị kiểu mẫu, bao gồm:<\\/p>\\r\\n<ul>\\r\\n<li>Hệ thống nước cấp ổn định, nước n&oacute;ng sẵn s&agrave;ng.<\\/li>\\r\\n<li>Hệ thống điện dự ph&ograve;ng mạnh tại khu vực c&ocirc;ng cộng (100% khả năng).<\\/li>\\r\\n<li>Điều h&ograve;a trung t&acirc;m ổn định (cho diện t&iacute;ch h&agrave;nh lang chung).<\\/li>\\r\\n<li>Hạ tầng cảnh quan đường phố được bố tr&iacute; h&agrave;i h&ograve;a với những tiện &iacute;ch chung cho cư d&acirc;n.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Đặc biệt, mỗi khu đ&ocirc; thị được x&acirc;y dựng tr&ecirc;n m&ocirc; h&igrave;nh một th&agrave;nh phố thu nhỏ với đầy đủ c&aacute;c tiện &iacute;ch hạ tầng đồng bộ v&agrave; vượt trội mang đẳng cấp quốc tế như: hạ tầng gi&aacute;o dục, y tế, thể thao, văn h&oacute;a, mua sắm, vui chơi giải tr&iacute;&hellip;&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"https:\\/\\/bizweb.dktcdn.net\\/100\\/075\\/918\\/files\\/tien-ich.jpg?v=1461756179907\\\" alt=\\\"royal-city.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu trung t&acirc;m thương mại mua sắm v&agrave; ẩm thực Egacom v&agrave; Egacom Mega Mall&nbsp;l&agrave; địa điểm l&yacute; tưởng để kh&aacute;ch h&agrave;ng thỏa sức mua sắm, thưởng ngoạn v&agrave; tận hưởng kh&ocirc;ng gian thư gi&atilde;n v&agrave; ẩm thực thoải m&aacute;i. Tại c&aacute;c Khu đ&ocirc; thị Times City v&agrave; Royal City,&nbsp;<a href=\\\"http:\\/\\/www.vincomshoppingmall.com\\/\\\">hệ thống Egacom Mega Mall<\\/a>&nbsp;nằm ở c&aacute;c tầng ngầm dưới l&ograve;ng đất v&agrave; đặc biệt, Egacom Mega Mall - Royal&nbsp;City l&agrave; Quần thể Trung t&acirc;m thương mại (TTTM) v&agrave; Vui chơi giải tr&iacute; trong l&ograve;ng đất lớn nhất Ch&acirc;u &Aacute;.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/vinschool.jpg\\\" alt=\\\"vinschool.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Hạ tầng gi&aacute;o dục&nbsp;được triển khai với hai hệ thống gi&aacute;o dục li&ecirc;n cấp to&agrave;n diện, từ bậc mầm non, tiểu học, THCS v&agrave; THPT:&nbsp;<a href=\\\"http:\\/\\/vinschool.com\\/\\\">hệ thống Vinschool<\\/a>&nbsp;(được đầu tư bởi tập đo&agrave;n Vingroup) theo chuẩn gi&aacute;o dục Việt Nam chất lượng cao, v&agrave; hệ thống BIS\\/BVIS theo chuẩn gi&aacute;o dục Anh Quốc được c&ocirc;ng nhận tr&ecirc;n to&agrave;n thế giới.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/vinmec.jpg\\\" alt=\\\"vinmec.jpg\\\" width=\\\"550\\\" \\/><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Y tế&nbsp;với hệ thống&nbsp;gồm&nbsp;<a href=\\\"http:\\/\\/www.vinmec.com\\/\\\">bệnh viện v&agrave; c&aacute;c ph&ograve;ng kh&aacute;m đa khoa quốc tế Vinmec<\\/a>&nbsp;tại c&aacute;c dự &aacute;n của Vingroup. Vinmec&nbsp;được x&acirc;y dựng theo m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn đa khoa quốc tế chất lượng cao đảm bảo c&aacute;c điều kiện chăm s&oacute;c sức khỏe trong điều kiện tốt nhất.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/03\\/Khu-tap-the-thao_oki.jpg\\\" alt=\\\"Khu-tap-the-thao_oki.jpg\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu phức hợp thể thao&nbsp;được trang bị s&acirc;n chơi thể thao chuy&ecirc;n nghiệp v&agrave; đa dạng (tennis, cầu l&ocirc;ng, b&oacute;ng đ&aacute;, b&oacute;ng rổ, bể bơi&hellip;) sẽ đ&aacute;p ứng mọi nhu cầu r&egrave;n luyện v&agrave; chăm s&oacute;c sức khỏe. Đặc biệt, Egaland c&oacute; hệ thống bể bơi bốn m&ugrave;a hiện đại ở tất cả c&aacute;c dự &aacute;n v&agrave; s&acirc;n tập golf ri&ecirc;ng thời thượng&nbsp; tại Egaland&nbsp;Riverside.&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><em><img class=\\\"lazy\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"http:\\/\\/vinhomes.vn\\/Cms_Data\\/Contents\\/Vinhomes_DB\\/Media\\/BaiViet\\/2014\\/04\\/Thuycung_1.JPG\\\" alt=\\\"Thuycung_1.JPG\\\" width=\\\"550\\\" \\/><\\/em><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Khu vui chơi, giải tr&iacute; hiện đại, độc đ&aacute;o.&nbsp;C&aacute;c dự &aacute;n của Egaland đều được kiến thiết l&agrave; những điểm nhấn vui chơi giải tr&iacute; t&acirc;m điểm của thủ đ&ocirc;. Ngo&agrave;i c&aacute;c cụm rạp chiếu phim 3D, 4D hiện đại, khu thế giới tr&ograve; chơi Vinpearl&nbsp;Games th&uacute; vị. Times City c&ograve;n c&oacute; Thủy Cung Vinpearl Aquarium &ndash; thế giới đại dương sinh động v&agrave; khu Nhạc Nước ho&agrave;nh tr&aacute;ng. Royal City c&oacute; C&ocirc;ng vi&ecirc;n nước trong nh&agrave; Vinpearl Water Park hấp dẫn v&agrave; s&acirc;n băng Vinpeark Ice Rink đầy kỳ th&uacute;.<em>&nbsp;<\\/em>Ngo&agrave;i ra, c&aacute;c khu căn hộ đều c&oacute; sảnh tiếp kh&aacute;ch d&agrave;nh cho cư d&acirc;n.<\\/p>\"}', '1', '0', '2017-04-18 06:00:08', '2017-04-18 06:00:08', '{\"vi\":\"Tiện ích\",\"en\":\"Tiện ích\",\"jp\":\"Tiện ích\"}', '{\"vi\":\"Tiện ích\",\"en\":\"Tiện ích\",\"jp\":\"Tiện ích\"}', '{\"vi\":\"Tiện ích\",\"en\":\"Tiện ích\",\"jp\":\"Tiện ích\"}');

-- ----------------------------
-- Table structure for cms_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `cms_password_resets`;
CREATE TABLE `cms_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for cms_product
-- ----------------------------
DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `parent_nav` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `link_upload` varchar(50) DEFAULT NULL,
  `price` decimal(50,0) DEFAULT NULL,
  `price_old` varchar(50) DEFAULT NULL,
  `price_si` varchar(50) DEFAULT NULL,
  `has_vat` tinyint(1) DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `title` text,
  `slug` text,
  `short` text,
  `content` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `manager_inventory` tinyint(1) DEFAULT '0',
  `inventory` tinyint(1) DEFAULT '0',
  `inventory_policy` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product
-- ----------------------------
INSERT INTO `cms_product` VALUES ('12', '1', '4', '1,4', 'sp1', '1491371708-iphone-7-plus-256gb-2-400x460.png', 'product/', '100000', '100000', '100000', '1', '2,3', '1', '0', '{\"vi\":\"Sản phẩm 1\",\"en\":\"Sản phẩm 1\",\"jp\":\"Sản phẩm 1\"}', '{\"vi\":\"san-pham-1\",\"en\":\"san-pham-1-en\",\"jp\":\"san-pham-1-jp\"}', '{\"vi\":\"<p>Sản phẩm 1<\\/p>\",\"en\":\"<p>Sản phẩm 1<\\/p>\",\"jp\":\"<p>Sản phẩm 1<\\/p>\"}', '{\"vi\":\"<p>Sản phẩm 1<\\/p>\",\"en\":\"<p>Sản phẩm 1<\\/p>\",\"jp\":\"<p>Sản phẩm 1<\\/p>\"}', '{\"vi\":\"1\",\"en\":\"1\",\"jp\":\"1\"}', '{\"vi\":\"1\",\"en\":\"1\",\"jp\":\"1\"}', '{\"vi\":\"1\",\"en\":\"1\",\"jp\":\"1\"}', '2017-04-05 05:55:08', '2017-04-05 05:55:08', '1', '0', '1', '1');
INSERT INTO `cms_product` VALUES ('13', '2', '3', '1,3', null, '1491371736-iphone-7-plus-256gb-mau-bac-org-3.jpg', 'product/', '2', '2', '2', '1', '2,4', '1', '0', '{\"vi\":\"Sản phẩm 2\",\"en\":\"Sản phẩm 2\",\"jp\":\"Sản phẩm 2\"}', '{\"vi\":\"san-pham-2\",\"en\":\"san-pham-2-en\",\"jp\":\"san-pham-2-jp\"}', '{\"vi\":\"<p>Sản phẩm 2<\\/p>\",\"en\":\"<p>Sản phẩm 2<\\/p>\",\"jp\":\"<p>Sản phẩm 2<\\/p>\"}', '{\"vi\":\"<p>Sản phẩm 2<\\/p>\",\"en\":\"<p>Sản phẩm 2<\\/p>\",\"jp\":\"<p>Sản phẩm 2<\\/p>\"}', '{\"vi\":\"2\",\"en\":\"2\",\"jp\":\"2\"}', '{\"vi\":\"2\",\"en\":\"2\",\"jp\":\"2\"}', '{\"vi\":\"2\",\"en\":\"2\",\"jp\":\"2\"}', '2017-04-05 05:55:36', '2017-04-05 05:55:36', '2', '0', '2', '1');

-- ----------------------------
-- Table structure for cms_product_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_product_group`;
CREATE TABLE `cms_product_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_upload` varchar(50) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `parent_nav` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` text,
  `slug` text,
  `short` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product_group
-- ----------------------------
INSERT INTO `cms_product_group` VALUES ('5', 'product_group/', '', '', '1492485476-home_banner_2.jpg', '1', '0', '2017-04-17 08:59:36', '2017-04-18 03:17:56', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"nha-ban\",\"en\":\"nha-ban-en\",\"jp\":\"nha-ban-jp\"}', '{\"vi\":\"<p>Nh&agrave; b&aacute;n<\\/p>\",\"en\":\"<p>Nh&agrave; b&aacute;n<\\/p>\",\"jp\":\"<p>Nh&agrave; b&aacute;n<\\/p>\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}');
INSERT INTO `cms_product_group` VALUES ('6', 'product_group/', '', '', '1492484388-home_banner_1.jpg', '1', '0', '2017-04-17 08:59:50', '2017-04-18 02:59:48', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"nha-cho-thue\",\"en\":\"nha-cho-thue-en\",\"jp\":\"nha-cho-thue-jp\"}', '{\"vi\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\",\"en\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\",\"jp\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}');

-- ----------------------------
-- Table structure for cms_product_images
-- ----------------------------
DROP TABLE IF EXISTS `cms_product_images`;
CREATE TABLE `cms_product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product_images
-- ----------------------------
INSERT INTO `cms_product_images` VALUES ('1', '1', '1491287055-iphone-7-plus-256gb-mau-bac-org-1.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('2', '1', '1491287055-iphone-7-plus-256gb-mau-bac-org-2.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('3', '1', '1491287055-iphone-7-plus-256gb-mau-bac-org-3.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('4', '1', '1491287055-iphone-7-plus-256gb-mau-bac-org-5.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('5', '1', '1491287055-iphone-7-plus-256gb-mau-den-org-1.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('6', '1', '1491287055-iphone-7-plus-256gb-mau-den-org-2.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:24:15', '2017-04-04 06:24:15');
INSERT INTO `cms_product_images` VALUES ('7', '9', '1491287055-iphone-7-plus-256gb-mau-bac-org-1.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:33:26', '2017-04-04 06:33:26');
INSERT INTO `cms_product_images` VALUES ('8', '9', '1491287055-iphone-7-plus-256gb-mau-bac-org-2.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:33:26', '2017-04-04 06:33:26');
INSERT INTO `cms_product_images` VALUES ('9', '9', '1491287055-iphone-7-plus-256gb-mau-bac-org-3.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:33:26', '2017-04-04 06:33:26');
INSERT INTO `cms_product_images` VALUES ('10', '9', '1491287055-iphone-7-plus-256gb-mau-bac-org-5.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:33:26', '2017-04-04 06:33:26');
INSERT INTO `cms_product_images` VALUES ('12', '9', '1491287055-iphone-7-plus-256gb-mau-den-org-2.jpg', 'Điện thoại iPhone 7 Plus 256GB', '2017-04-04 06:33:27', '2017-04-04 06:33:27');
INSERT INTO `cms_product_images` VALUES ('13', '10', '1491371346-iphone-7-plus-256gb-mau-bac-org-1.jpg', 'san pham 1', '2017-04-05 05:49:06', '2017-04-05 05:49:06');
INSERT INTO `cms_product_images` VALUES ('14', '10', '1491371346-iphone-7-plus-256gb-mau-bac-org-2.jpg', 'san pham 1', '2017-04-05 05:49:06', '2017-04-05 05:49:06');
INSERT INTO `cms_product_images` VALUES ('15', '11', '1491371648-iphone-7-plus-256gb-mau-bac-org-1.jpg', 'sp1', '2017-04-05 05:54:08', '2017-04-05 05:54:08');
INSERT INTO `cms_product_images` VALUES ('16', '11', '1491371648-iphone-7-plus-256gb-mau-bac-org-2.jpg', 'sp1', '2017-04-05 05:54:08', '2017-04-05 05:54:08');
INSERT INTO `cms_product_images` VALUES ('17', '12', '1491371708-iphone-7-plus-256gb-mau-bac-org-1.jpg', 'Sản phẩm 1', '2017-04-05 05:55:08', '2017-04-05 05:55:08');
INSERT INTO `cms_product_images` VALUES ('18', '12', '1491371708-iphone-7-plus-256gb-mau-bac-org-2.jpg', 'Sản phẩm 1', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_product_images` VALUES ('19', '13', '1491371736-iphone-7-plus-256gb-mau-den-org-1.jpg', 'Sản phẩm 2', '2017-04-05 05:55:36', '2017-04-05 05:55:36');

-- ----------------------------
-- Table structure for cms_product_type
-- ----------------------------
DROP TABLE IF EXISTS `cms_product_type`;
CREATE TABLE `cms_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `showhi` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product_type
-- ----------------------------
INSERT INTO `cms_product_type` VALUES ('1', '{\"vi\":\"Sản phẩm mới\",\"en\":\"Sản phẩm mới\",\"jp\":\"Sản phẩm mới\"}', '1', '2017-03-13 15:02:21', '2017-03-13 15:02:21', '0');
INSERT INTO `cms_product_type` VALUES ('2', '{\"vi\":\"Sản phẩm khuyến mãi\",\"en\":\"Sản phẩm khuyến mãi\",\"jp\":\"Sản phẩm khuyến mãi\"}', '1', '2017-03-13 15:02:21', '2017-03-13 15:02:21', '0');
INSERT INTO `cms_product_type` VALUES ('3', '{\"vi\":\"Sản phẩm nổi bật\",\"en\":\"Sản phẩm nổi bật\",\"jp\":\"Sản phẩm nổi bật\"}', '1', '2017-03-13 15:02:21', '2017-03-13 15:02:21', '0');
INSERT INTO `cms_product_type` VALUES ('4', '{\"vi\":\"Sản phẩm giảm giá\",\"en\":\"Sản phẩm giảm giá\",\"jp\":\"Sản phẩm giảm giá\"}', '1', '2017-03-13 15:02:21', '2017-03-13 15:02:21', '0');

-- ----------------------------
-- Table structure for cms_slug
-- ----------------------------
DROP TABLE IF EXISTS `cms_slug`;
CREATE TABLE `cms_slug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) NOT NULL,
  `table_action` varchar(50) NOT NULL,
  `table_id_action` int(11) NOT NULL DEFAULT '0',
  `action` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slug
-- ----------------------------
INSERT INTO `cms_slug` VALUES ('75', 'jp', 'blog_group', '13', 'group', 'Báo chí', 'bao-chi-jp', '2017-04-18 05:42:35', '2017-04-18 05:42:35');
INSERT INTO `cms_slug` VALUES ('64', 'vi', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('65', 'en', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban-en', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('66', 'jp', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban-jp', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('67', 'vi', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('68', 'en', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue-en', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('69', 'jp', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue-jp', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('70', 'vi', 'blog_group', '12', 'group', 'Tin tức - Sự kiện', 'tin-tuc-su-kien', '2017-04-18 05:42:23', '2017-04-18 05:42:23');
INSERT INTO `cms_slug` VALUES ('71', 'en', 'blog_group', '12', 'group', 'Tin tức - Sự kiện', 'tin-tuc-su-kien-en', '2017-04-18 05:42:23', '2017-04-18 05:42:23');
INSERT INTO `cms_slug` VALUES ('72', 'jp', 'blog_group', '12', 'group', 'Tin tức - Sự kiện', 'tin-tuc-su-kien-jp', '2017-04-18 05:42:23', '2017-04-18 05:42:23');
INSERT INTO `cms_slug` VALUES ('73', 'vi', 'blog_group', '13', 'group', 'Báo chí', 'bao-chi', '2017-04-18 05:42:35', '2017-04-18 05:42:35');
INSERT INTO `cms_slug` VALUES ('74', 'en', 'blog_group', '13', 'group', 'Báo chí', 'bao-chi-en', '2017-04-18 05:42:35', '2017-04-18 05:42:35');
INSERT INTO `cms_slug` VALUES ('63', 'jp', 'blog', '0', 'index', 'Tin tức', 'tin-tuc-jp', '2017-04-17 17:52:00', '2017-04-17 17:52:03');
INSERT INTO `cms_slug` VALUES ('62', 'en', 'blog', '0', 'index', 'Tin tức', 'tin-tuc-en', '2017-04-17 17:51:40', '2017-04-17 17:51:42');
INSERT INTO `cms_slug` VALUES ('55', 'vi', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('56', 'en', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1-en', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('57', 'jp', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1-jp', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('58', 'vi', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('59', 'en', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2-en', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('60', 'jp', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2-jp', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('61', 'vi', 'blog', '0', 'index', 'Tin tức', 'tin-tuc', '2017-04-17 17:50:53', '2017-04-17 17:50:56');
INSERT INTO `cms_slug` VALUES ('83', 'en', 'page', '7', 'detail', 'Sản phẩm', 'san-pham-en-1492495160', '2017-04-18 05:59:20', '2017-04-18 05:59:20');
INSERT INTO `cms_slug` VALUES ('76', 'vi', 'page', '5', 'detail', 'Giới thiệu', 'gioi-thieu', '2017-04-18 05:57:25', '2017-04-18 05:57:25');
INSERT INTO `cms_slug` VALUES ('77', 'en', 'page', '5', 'detail', 'Giới thiệu', 'gioi-thieu-en', '2017-04-18 05:57:25', '2017-04-18 05:57:25');
INSERT INTO `cms_slug` VALUES ('78', 'jp', 'page', '5', 'detail', 'Giới thiệu', 'gioi-thieu-jp', '2017-04-18 05:57:25', '2017-04-18 05:57:25');
INSERT INTO `cms_slug` VALUES ('79', 'vi', 'page', '6', 'detail', 'Dịch vụ', 'dich-vu', '2017-04-18 05:58:51', '2017-04-18 05:58:51');
INSERT INTO `cms_slug` VALUES ('80', 'en', 'page', '6', 'detail', 'Dịch vụ', 'dich-vu-en', '2017-04-18 05:58:51', '2017-04-18 05:58:51');
INSERT INTO `cms_slug` VALUES ('81', 'jp', 'page', '6', 'detail', 'Dịch vụ', 'dich-vu-jp', '2017-04-18 05:58:51', '2017-04-18 05:58:51');
INSERT INTO `cms_slug` VALUES ('82', 'vi', 'page', '7', 'detail', 'Sản phẩm', 'san-pham-1492495160', '2017-04-18 05:59:20', '2017-04-18 05:59:20');
INSERT INTO `cms_slug` VALUES ('34', 'vi', 'home', '0', 'home', 'Trang chủ', 'trang-chu', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('35', 'en', 'home', '0', 'home', 'Home', 'trang-chu-en', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('36', 'jp', 'home', '0', 'home', 'Home', 'trang-chu-jp', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('37', 'vi', 'product', '0', 'index', 'Sản phẩm', 'san-pham', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('38', 'en', 'product', '0', 'index', 'Product', 'san-pham-en', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('39', 'jp', 'product', '0', 'index', 'Product', 'san-pham-jp', '2017-04-05 11:13:25', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('40', 'vi', 'user', '0', 'signin', 'Đăng nhập', 'dang-nhap', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('41', 'en', 'user', '0', 'signin', 'Đăng nhập', 'dang-nhap-en', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('42', 'jp', 'user', '0', 'signin', 'Đăng nhập', 'dang-nhap-jp', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('43', 'vi', 'user', '0', 'signup', 'Đăng ký', 'dang-ky', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('44', 'en', 'user', '0', 'signup', 'Đăng ký', 'dang-ky-en', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('45', 'jp', 'user', '0', 'signup', 'Đăng ký', 'dang-ky-jp', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('46', 'vi', 'contact', '0', 'index', 'Liên hệ', 'lien-he', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('47', 'en', 'contact', '0', 'index', 'Liên hệ', 'lien-he-en', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('48', 'jp', 'contact', '0', 'index', 'Liên hệ', 'lien-he-jp', '2017-04-05 11:13:25', '2017-04-05 11:13:25');
INSERT INTO `cms_slug` VALUES ('84', 'jp', 'page', '7', 'detail', 'Sản phẩm', 'san-pham-jp-1492495160', '2017-04-18 05:59:20', '2017-04-18 05:59:20');
INSERT INTO `cms_slug` VALUES ('85', 'vi', 'page', '8', 'detail', 'Tiện ích', 'tien-ich', '2017-04-18 06:00:08', '2017-04-18 06:00:08');
INSERT INTO `cms_slug` VALUES ('86', 'en', 'page', '8', 'detail', 'Tiện ích', 'tien-ich-en', '2017-04-18 06:00:08', '2017-04-18 06:00:08');
INSERT INTO `cms_slug` VALUES ('87', 'jp', 'page', '8', 'detail', 'Tiện ích', 'tien-ich-jp', '2017-04-18 06:00:08', '2017-04-18 06:00:08');

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
