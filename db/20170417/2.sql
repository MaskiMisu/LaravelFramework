/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laravel_dev

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-17 18:31:51
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_group
-- ----------------------------
INSERT INTO `cms_blog_group` VALUES ('10', 'no', '11,6', '1', '0', '{\"vi\":\"thoi-trang\",\"en\":\"thoi-trang-en\",\"jp\":\"thoi-trang-jp\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"<p>Thời trang<\\/p>\",\"en\":\"<p>Thời trang<\\/p>\",\"jp\":\"<p>Thời trang<\\/p>\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', null, '2017-04-01 03:59:40');
INSERT INTO `cms_blog_group` VALUES ('6', 'no', '', '1', '0', '{\"vi\":\"cong-nghe\",\"en\":\"cong-nghe-en\",\"jp\":\"cong-nghe-jp\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"<p>C&ocirc;ng nghệ<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ<\\/p>\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', null, null);
INSERT INTO `cms_blog_group` VALUES ('11', 'yes', '', '1', '0', '{\"vi\":\"cuoi\",\"en\":\"cuoi-en\",\"jp\":\"cuoi-jp\"}', '{\"vi\":\"Cười\",\"en\":\"Cười\",\"jp\":\"Cười\"}', '{\"vi\":\"<p>Cười<\\/p>\",\"en\":\"<p>Cười<\\/p>\",\"jp\":\"<p>Cười<\\/p>\"}', '{\"vi\":\"Cười\",\"en\":\"Cười\",\"jp\":\"Cười\"}', '{\"vi\":\"Cười\",\"en\":\"Cười\",\"jp\":\"Cười\"}', '{\"vi\":\"Cười\",\"en\":\"Cười\",\"jp\":\"Cười\"}', '2017-04-01 03:54:46', '2017-04-01 04:23:21');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('10', null, '0', '0', '{\"vi\":\"Main menu\",\"en\":\"Main menu\",\"jp\":\"Main menu\"}', '{\"vi\":\"main-menu\",\"en\":\"main-menu\",\"jp\":\"main-menu\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('11', 'home', '10', '1', '{\"vi\":\"Trang chủ\",\"en\":\"Trang chủ\",\"jp\":\"Trang chủ\"}', '{\"vi\":\"trang-chu\",\"en\":\"trang-chu\",\"jp\":\"trang-chu\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('12', 'signin', '10', '1', '{\"vi\":\"Đăng nhập\",\"en\":\"Đăng nhập\",\"jp\":\"Đăng nhập\"}', '{\"vi\":\"dang-nhap\",\"en\":\"dang-nhap\",\"jp\":\"dang-nhap\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('13', 'signup', '10', '1', '{\"vi\":\"Đăng ký\",\"en\":\"Đăng ký\",\"jp\":\"Đăng ký\"}', '{\"vi\":\"dang-ky\",\"en\":\"dang-ky\",\"jp\":\"dang-ky\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('14', 'contact', '10', '1', '{\"vi\":\"Liên hệ\",\"en\":\"Liên hệ\",\"jp\":\"Liên hệ\"}', '{\"vi\":\"lien-he\",\"en\":\"lien-he\",\"jp\":\"lien-he\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('15', 'product_group', '10', '1', '{\"vi\":\"Apple\",\"en\":\"Apple\",\"jp\":\"Apple\"}', '{\"vi\":\"apple\",\"en\":\"apple\",\"jp\":\"apple\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('16', 'product', '10', '1', '{\"vi\":\"Sp2\",\"en\":\"Sp2\",\"jp\":\"Sp2\"}', '{\"vi\":\"san-pham-2\",\"en\":\"san-pham-2\",\"jp\":\"san-pham-2\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('17', 'product_all', '10', '1', '{\"vi\":\"Sản phẩm\",\"en\":\"Sản phẩm\",\"jp\":\"Sản phẩm\"}', '{\"vi\":\"san-pham\",\"en\":\"san-pham\",\"jp\":\"san-pham\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('18', 'page', '10', '1', '{\"vi\":\"Hướng dẫn\",\"en\":\"Hướng dẫn\",\"jp\":\"Hướng dẫn\"}', '{\"vi\":\"huong-dan-mua-hang\",\"en\":\"huong-dan-mua-hang\",\"jp\":\"huong-dan-mua-hang\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('19', 'blog', '10', '1', '{\"vi\":\"Công nghệ\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"cong-nghe\",\"en\":\"thoi-trang\",\"jp\":\"thoi-trang\"}', '2017-04-05 07:16:11', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('42', 'web', '10', '1', '{\"vi\":\"24 h\",\"en\":\"24 h\",\"jp\":\"24 h\"}', '{\"vi\":\"http:\\/\\/24h.com.vn\\/\",\"en\":\"http:\\/\\/24h.com.vn\\/\",\"jp\":\"http:\\/\\/24h.com.vn\\/\"}', '2017-04-07 10:04:18', '2017-04-07 10:04:38');
INSERT INTO `cms_menu` VALUES ('21', null, '0', '0', '{\"vi\":\"Menu footer\",\"en\":\"Menu footer\",\"jp\":\"Menu footer\"}', '{\"vi\":\"menu-footer\",\"en\":\"menu-footer\",\"jp\":\"menu-footer\"}', '2017-04-05 07:16:57', '2017-04-05 07:16:57');
INSERT INTO `cms_menu` VALUES ('22', 'contact', '21', '1', '{\"vi\":\"Liên hệ\",\"en\":\"Liên hệ\",\"jp\":\"Liên hệ\"}', '{\"vi\":\"lien-he\",\"en\":\"lien-he\",\"jp\":\"lien-he\"}', '2017-04-05 07:16:57', '2017-04-05 07:16:57');
INSERT INTO `cms_menu` VALUES ('23', 'signin', '21', '1', '{\"vi\":\"Đăng nhập\",\"en\":\"Đăng nhập\",\"jp\":\"Đăng nhập\"}', '{\"vi\":\"dang-nhap\",\"en\":\"dang-nhap\",\"jp\":\"dang-nhap\"}', '2017-04-05 07:16:57', '2017-04-05 07:16:57');
INSERT INTO `cms_menu` VALUES ('24', 'signup', '21', '1', '{\"vi\":\"Đăng ký\",\"en\":\"Đăng ký\",\"jp\":\"Đăng ký\"}', '{\"vi\":\"dang-ky\",\"en\":\"dang-ky\",\"jp\":\"dang-ky\"}', '2017-04-05 07:16:57', '2017-04-05 07:16:57');
INSERT INTO `cms_menu` VALUES ('25', 'contact', '22', '2', '{\"vi\":\"Liên hệ\",\"en\":\"Liên hệ\",\"jp\":\"Liên hệ\"}', '{\"vi\":\"lien-he\",\"en\":\"lien-he\",\"jp\":\"lien-he\"}', '2017-04-05 16:40:33', '2017-04-05 16:40:41');
INSERT INTO `cms_menu` VALUES ('26', 'contact', '25', '3', '{\"vi\":\"Liên hệ 1\",\"en\":\"Liên hệ 1\",\"jp\":\"Liên hệ 1\"}', '{\"vi\":\"lien-he\",\"en\":\"lien-he\",\"jp\":\"lien-he\"}', '2017-04-05 18:01:23', '2017-04-07 09:51:18');
INSERT INTO `cms_menu` VALUES ('37', 'web', '26', '4', '{\"vi\":\"Liên hệ 1 của 1\",\"en\":\"Liên hệ 1 của 1\",\"jp\":\"Liên hệ 1 của 1\"}', '{\"vi\":\"http:\\/\\/dantri.com.vn\\/\",\"en\":\"http:\\/\\/dantri.com.vn\\/\",\"jp\":\"http:\\/\\/dantri.com.vn\\/\"}', '2017-04-07 09:51:18', '2017-04-17 05:40:38');
INSERT INTO `cms_menu` VALUES ('48', 'blog', '37', '5', '{\"vi\":\"Lien hệ 2 của 1 của 1\",\"en\":\"Lien hệ 2 của 1 của 1\",\"jp\":\"Lien hệ 2 của 1 của 1\"}', '{\"vi\":\"thoi-trang\",\"en\":\"thoi-trang\",\"jp\":\"thoi-trang\"}', '2017-04-17 05:40:38', '2017-04-17 05:40:38');
INSERT INTO `cms_menu` VALUES ('47', 'home', '37', '5', '{\"vi\":\"Lien hệ 1 của 1 của 1\",\"en\":\"Lien hệ 1 của 1 của 1\",\"jp\":\"Lien hệ 1 của 1 của 1\"}', '{\"vi\":\"trang-chu\",\"en\":\"trang-chu\",\"jp\":\"trang-chu\"}', '2017-04-17 05:40:15', '2017-04-17 05:40:38');

-- ----------------------------
-- Table structure for cms_migrations
-- ----------------------------
DROP TABLE IF EXISTS `cms_migrations`;
CREATE TABLE `cms_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_migrations
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_page
-- ----------------------------
INSERT INTO `cms_page` VALUES ('1', '{\"vi\":\"Hướng dẫn mua hàng\",\"en\":\"Hướng dẫn mua hàng\",\"jp\":\"Hướng dẫn mua hàng\"}', '{\"vi\":\"huong-dan-mua-hang\",\"en\":\"huong-dan-mua-hang-en\",\"jp\":\"huong-dan-mua-hang-jp\"}', '{\"vi\":\"<p>Hướng dẫn mua h&agrave;ng<\\/p>\",\"en\":\"<p>Hướng dẫn mua h&agrave;ng<\\/p>\",\"jp\":\"<p>Hướng dẫn mua h&agrave;ng<\\/p>\"}', '1', '0', '2017-04-04 08:48:58', '2017-04-04 08:48:58', '{\"vi\":\"Hướng dẫn mua hàng\",\"en\":\"Hướng dẫn mua hàng\",\"jp\":\"Hướng dẫn mua hàng\"}', '{\"vi\":\"Hướng dẫn mua hàng\",\"en\":\"Hướng dẫn mua hàng\",\"jp\":\"Hướng dẫn mua hàng\"}', '{\"vi\":\"Hướng dẫn mua hàng\",\"en\":\"Hướng dẫn mua hàng\",\"jp\":\"Hướng dẫn mua hàng\"}');
INSERT INTO `cms_page` VALUES ('2', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"gioi-thieu\",\"en\":\"gioi-thieu-en\",\"jp\":\"gioi-thieu-jp\"}', '{\"vi\":\"<p>Giới thiệu<\\/p>\",\"en\":\"<p>Giới thiệu<\\/p>\",\"jp\":\"<p>Giới thiệu<\\/p>\"}', '1', '0', '2017-04-04 08:51:23', '2017-04-04 09:05:18', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}');
INSERT INTO `cms_page` VALUES ('4', '{\"vi\":\"Giới thiệu 1\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"gioi-thieu-1\",\"en\":\"gioi-thieu-en-1491297419\",\"jp\":\"gioi-thieu-jp-1491297419\"}', '{\"vi\":\"<p>Giới thiệu<\\/p>\",\"en\":\"<p>Giới thiệu<\\/p>\",\"jp\":\"<p>Giới thiệu<\\/p>\"}', '1', '0', '2017-04-04 09:16:59', '2017-04-04 09:17:23', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}', '{\"vi\":\"Giới thiệu\",\"en\":\"Giới thiệu\",\"jp\":\"Giới thiệu\"}');

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
INSERT INTO `cms_product_group` VALUES ('5', 'product_group/', '', '', null, '1', '0', '2017-04-17 08:59:36', '2017-04-17 08:59:36', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"nha-ban\",\"en\":\"nha-ban-en\",\"jp\":\"nha-ban-jp\"}', '{\"vi\":\"<p>Nh&agrave; b&aacute;n<\\/p>\",\"en\":\"<p>Nh&agrave; b&aacute;n<\\/p>\",\"jp\":\"<p>Nh&agrave; b&aacute;n<\\/p>\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}', '{\"vi\":\"Nhà bán\",\"en\":\"Nhà bán\",\"jp\":\"Nhà bán\"}');
INSERT INTO `cms_product_group` VALUES ('6', 'product_group/', '', '', null, '1', '0', '2017-04-17 08:59:50', '2017-04-17 08:59:50', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"nha-cho-thue\",\"en\":\"nha-cho-thue-en\",\"jp\":\"nha-cho-thue-jp\"}', '{\"vi\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\",\"en\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\",\"jp\":\"<p>Nh&agrave; cho thu&ecirc;<\\/p>\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}', '{\"vi\":\"Nhà cho thuê\",\"en\":\"Nhà cho thuê\",\"jp\":\"Nhà cho thuê\"}');

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
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slug
-- ----------------------------
INSERT INTO `cms_slug` VALUES ('64', 'vi', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('65', 'en', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban-en', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('66', 'jp', 'product_group', '5', 'group', 'Nhà bán', 'nha-ban-jp', '2017-04-17 08:59:36', '2017-04-17 08:59:36');
INSERT INTO `cms_slug` VALUES ('67', 'vi', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('68', 'en', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue-en', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('69', 'jp', 'product_group', '6', 'group', 'Nhà cho thuê', 'nha-cho-thue-jp', '2017-04-17 08:59:50', '2017-04-17 08:59:50');
INSERT INTO `cms_slug` VALUES ('63', 'jp', 'blog', '0', 'index', 'Tin tức', 'tin-tuc-jp', '2017-04-17 17:52:00', '2017-04-17 17:52:03');
INSERT INTO `cms_slug` VALUES ('62', 'en', 'blog', '0', 'index', 'Tin tức', 'tin-tuc-en', '2017-04-17 17:51:40', '2017-04-17 17:51:42');
INSERT INTO `cms_slug` VALUES ('55', 'vi', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('56', 'en', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1-en', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('57', 'jp', 'product', '12', 'detail', 'Sản phẩm 1', 'san-pham-1-jp', '2017-04-05 05:55:09', '2017-04-05 05:55:09');
INSERT INTO `cms_slug` VALUES ('58', 'vi', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('59', 'en', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2-en', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('60', 'jp', 'product', '13', 'detail', 'Sản phẩm 2', 'san-pham-2-jp', '2017-04-05 05:55:36', '2017-04-05 05:55:36');
INSERT INTO `cms_slug` VALUES ('61', 'vi', 'blog', '0', 'index', 'Tin tức', 'tin-tuc', '2017-04-17 17:50:53', '2017-04-17 17:50:56');
INSERT INTO `cms_slug` VALUES ('22', 'vi', 'page', '1', 'detail', 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', '2017-04-04 08:48:58', '2017-04-04 08:48:58');
INSERT INTO `cms_slug` VALUES ('23', 'en', 'page', '1', 'detail', 'Hướng dẫn mua hàng', 'huong-dan-mua-hang-en', '2017-04-04 08:48:58', '2017-04-04 08:48:58');
INSERT INTO `cms_slug` VALUES ('24', 'jp', 'page', '1', 'detail', 'Hướng dẫn mua hàng', 'huong-dan-mua-hang-jp', '2017-04-04 08:48:58', '2017-04-04 08:48:58');
INSERT INTO `cms_slug` VALUES ('25', 'vi', 'page', '2', 'detail', 'Giới thiệu', 'gioi-thieu', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('26', 'en', 'page', '2', 'detail', 'Giới thiệu', 'gioi-thieu-en', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('27', 'jp', 'page', '2', 'detail', 'Giới thiệu', 'gioi-thieu-jp', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('33', 'jp', 'page', '4', 'detail', 'Giới thiệu', 'gioi-thieu-jp-1491297419', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('32', 'en', 'page', '4', 'detail', 'Giới thiệu', 'gioi-thieu-en-1491297419', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
INSERT INTO `cms_slug` VALUES ('31', 'vi', 'page', '4', 'detail', 'Giới thiệu 1', 'gioi-thieu-1', '2017-04-04 08:51:23', '2017-04-04 08:51:23');
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

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', 'Lien Phan', 'lienphanit@gmail.com', '$2y$10$tjxlR5y4yGREf1ucVfJZH.YuM.mDGDKC8UrzuglPjAAokoRksABjW', 'CBa2axgIkTxNCRPvA1amL8NOQygS1oSw3Ksn2u4nMvxjMNhqhwLYajlQUFj1', '2017-04-01 06:18:10', '2017-04-01 06:18:10');
