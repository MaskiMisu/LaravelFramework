/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laravel_dev

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-01 18:24:54
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for cms_product
-- ----------------------------
DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `parent_nav` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `link_upload` varchar(50) DEFAULT NULL,
  `price` decimal(50,0) DEFAULT NULL,
  `price_old` varchar(50) DEFAULT NULL,
  `price_si` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `title` text,
  `slug` text,
  `short` text,
  `content` text,
  `meta_title` varchar(70) DEFAULT NULL,
  `meta_keywords` varchar(160) DEFAULT NULL,
  `meta_description` varchar(160) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product_group
-- ----------------------------
INSERT INTO `cms_product_group` VALUES ('41', 'product_group/', '', '', '1491033440-phone.jpg', '1', '0', '2017-04-01 07:57:20', '2017-04-01 07:57:20', '{\"vi\":\"Điện thoại\",\"en\":\"Điện thoại\",\"jp\":\"Điện thoại\"}', '{\"vi\":\"dien-thoai\",\"en\":\"dien-thoai-en\",\"jp\":\"dien-thoai-jp\"}', '{\"vi\":\"<p>Điện thoại<\\/p>\",\"en\":\"<p>Điện thoại<\\/p>\",\"jp\":\"<p>Điện thoại<\\/p>\"}', '{\"vi\":\"Điện thoại\",\"en\":\"Điện thoại\",\"jp\":\"Điện thoại\"}', '{\"vi\":\"Điện thoại\",\"en\":\"Điện thoại\",\"jp\":\"Điện thoại\"}', '{\"vi\":\"Điện thoại\",\"en\":\"Điện thoại\",\"jp\":\"Điện thoại\"}');
INSERT INTO `cms_product_group` VALUES ('42', 'product_group/', '41', '41', null, '0', '0', '2017-04-01 07:57:36', '2017-04-01 07:57:36', '{\"vi\":\"Samsung\",\"en\":\"Samsung\",\"jp\":\"Samsung\"}', '{\"vi\":\"samsung\",\"en\":\"samsung-en\",\"jp\":\"samsung-jp\"}', '{\"vi\":\"<p>Samsung<\\/p>\",\"en\":\"<p>Samsung<\\/p>\",\"jp\":\"<p>Samsung<\\/p>\"}', '{\"vi\":\"Samsung\",\"en\":\"Samsung\",\"jp\":\"Samsung\"}', '{\"vi\":\"Samsung\",\"en\":\"Samsung\",\"jp\":\"Samsung\"}', '{\"vi\":\"Samsung\",\"en\":\"Samsung\",\"jp\":\"Samsung\"}');
INSERT INTO `cms_product_group` VALUES ('43', 'product_group/', '41', '41', null, '1', '0', '2017-04-01 07:59:29', '2017-04-01 07:59:29', '{\"vi\":\"Apple\",\"en\":\"Apple\",\"jp\":\"Apple\"}', '{\"vi\":\"apple\",\"en\":\"apple-en\",\"jp\":\"apple-jp\"}', '{\"vi\":null,\"en\":null,\"jp\":null}', '{\"vi\":\"Apple\",\"en\":\"Apple\",\"jp\":\"Apple\"}', '{\"vi\":\"Apple\",\"en\":\"Apple\",\"jp\":\"Apple\"}', '{\"vi\":\"Apple\",\"en\":\"Apple\",\"jp\":\"Apple\"}');
INSERT INTO `cms_product_group` VALUES ('44', 'product_group/', '41', '41', null, '1', '0', '2017-04-01 08:02:08', '2017-04-01 08:02:08', '{\"vi\":\"LG\",\"en\":\"LG\",\"jp\":\"LG\"}', '{\"vi\":\"lg\",\"en\":\"lg-en\",\"jp\":\"lg-jp\"}', '{\"vi\":null,\"en\":null,\"jp\":null}', '{\"vi\":\"LG\",\"en\":\"LG\",\"jp\":\"LG\"}', '{\"vi\":\"LG\",\"en\":\"LG\",\"jp\":\"LG\"}', '{\"vi\":\"LG\",\"en\":\"LG\",\"jp\":\"LG\"}');
INSERT INTO `cms_product_group` VALUES ('45', 'product_group/', '44,43,42,41', '44,43,42,41', '1491034800-dieu-nhi.jpg', '1', '0', '2017-04-01 08:04:43', '2017-04-01 08:20:12', '{\"vi\":\"LG 1\",\"en\":\"LG 1\",\"jp\":\"LG 1\"}', '{\"vi\":\"lg-1\",\"en\":\"lg-1-en\",\"jp\":\"lg-1-jp\"}', '{\"vi\":\"<p>LG 1<\\/p>\",\"en\":\"<p>LG 1<\\/p>\",\"jp\":\"<p>LG 1<\\/p>\"}', '{\"vi\":\"LG 1\",\"en\":\"LG 1\",\"jp\":\"LG 1\"}', '{\"vi\":\"LG 1\",\"en\":\"LG 1\",\"jp\":\"LG 1\"}', '{\"vi\":\"LG 1\",\"en\":\"LG 1\",\"jp\":\"LG 1\"}');
INSERT INTO `cms_product_group` VALUES ('46', 'product_group/', '45,44,43,42,41', '45,44,43,42,41', '1491034880-dam4-3.jpg', '1', '0', '2017-04-01 08:20:45', '2017-04-01 08:21:20', '{\"vi\":\"LG 1 to 1\",\"en\":\"LG 1 to 1\",\"jp\":\"LG 1 to 1\"}', '{\"vi\":\"lg-1-to-1\",\"en\":\"lg-1-to-1-en\",\"jp\":\"lg-1-to-1-jp\"}', '{\"vi\":\"<p>LG 1 to 1<\\/p>\",\"en\":\"<p>LG 1 to 1<\\/p>\",\"jp\":\"<p>LG 1 to 1<\\/p>\"}', '{\"vi\":\"LG 1 to 1\",\"en\":\"LG 1 to 1\",\"jp\":\"LG 1 to 1\"}', '{\"vi\":\"LG 1 to 1\",\"en\":\"LG 1 to 1\",\"jp\":\"LG 1 to 1\"}', '{\"vi\":\"LG 1 to 1\",\"en\":\"LG 1 to 1\",\"jp\":\"LG 1 to 1\"}');

-- ----------------------------
-- Table structure for cms_slug
-- ----------------------------
DROP TABLE IF EXISTS `cms_slug`;
CREATE TABLE `cms_slug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) DEFAULT NULL,
  `table_action` varchar(50) DEFAULT NULL,
  `table_id_action` int(11) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `title` text,
  `slug` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slug
-- ----------------------------
INSERT INTO `cms_slug` VALUES ('120', 'jp', 'blog', '29', 'detail', 'Công nghệ 1', 'cong-nghe-1-jp', '2017-03-31 09:26:16', '2017-03-31 09:26:16');
INSERT INTO `cms_slug` VALUES ('28', 'vi', 'blog_group', '10', 'groups', 'Thời trang', 'thoi-trang', '2017-03-31 02:19:36', '2017-03-31 02:19:36');
INSERT INTO `cms_slug` VALUES ('30', 'jp', 'blog_group', '10', 'groups', 'Thời trang', 'thoi-trang-jp', '2017-03-31 02:19:36', '2017-03-31 02:19:36');
INSERT INTO `cms_slug` VALUES ('29', 'en', 'blog_group', '10', 'groups', 'Thời trang', 'thoi-trang-en', '2017-03-31 02:19:36', '2017-03-31 02:19:36');
INSERT INTO `cms_slug` VALUES ('18', 'jp', 'blog_group', '6', 'groups', 'Công nghệ', 'cong-nghe-jp', '2017-03-31 01:09:31', '2017-03-31 01:09:31');
INSERT INTO `cms_slug` VALUES ('16', 'vi', 'blog_group', '6', 'groups', 'Công nghệ', 'cong-nghe', '2017-03-31 01:09:31', '2017-03-31 01:09:31');
INSERT INTO `cms_slug` VALUES ('17', 'en', 'blog_group', '6', 'groups', 'Công nghệ', 'cong-nghe-en', '2017-03-31 01:09:31', '2017-03-31 01:09:31');
INSERT INTO `cms_slug` VALUES ('119', 'en', 'blog', '29', 'detail', 'Công nghệ 1', 'cong-nghe-1-en', '2017-03-31 09:26:16', '2017-03-31 09:26:16');
INSERT INTO `cms_slug` VALUES ('118', 'vi', 'blog', '29', 'detail', 'Công nghệ 1', 'cong-nghe-1', '2017-03-31 09:26:16', '2017-03-31 09:26:16');
INSERT INTO `cms_slug` VALUES ('117', 'jp', 'blog', '28', 'detail', 'Tin tức 3', 'tin-tuc-3-jp', '2017-03-31 08:54:34', '2017-03-31 08:54:34');
INSERT INTO `cms_slug` VALUES ('116', 'en', 'blog', '28', 'detail', 'Tin tức 3', 'tin-tuc-3-en', '2017-03-31 08:54:34', '2017-03-31 08:54:34');
INSERT INTO `cms_slug` VALUES ('115', 'vi', 'blog', '28', 'detail', 'Tin tức 3', 'tin-tuc-3', '2017-03-31 08:54:34', '2017-03-31 08:54:34');
INSERT INTO `cms_slug` VALUES ('114', 'jp', 'blog', '27', 'detail', 'Tin tức 2', 'tin-tuc-2-jp', '2017-03-31 08:35:23', '2017-03-31 08:35:23');
INSERT INTO `cms_slug` VALUES ('113', 'en', 'blog', '27', 'detail', 'Tin tức 2', 'tin-tuc-2-en', '2017-03-31 08:35:23', '2017-03-31 08:35:23');
INSERT INTO `cms_slug` VALUES ('112', 'vi', 'blog', '27', 'detail', 'Tin tức 2', 'tin-tuc-2', '2017-03-31 08:35:23', '2017-03-31 08:35:23');
INSERT INTO `cms_slug` VALUES ('109', 'vi', 'blog', '26', 'detail', 'Tin tức 1', 'tin-tuc-1', '2017-03-31 07:52:58', '2017-03-31 07:52:58');
INSERT INTO `cms_slug` VALUES ('110', 'en', 'blog', '26', 'detail', 'Tin tức 1', 'tin-tuc-1-en', '2017-03-31 07:52:58', '2017-03-31 07:52:58');
INSERT INTO `cms_slug` VALUES ('111', 'jp', 'blog', '26', 'detail', 'Tin tức 1', 'tin-tuc-1-jp', '2017-03-31 07:52:58', '2017-03-31 07:52:58');
INSERT INTO `cms_slug` VALUES ('121', 'vi', 'blog', '30', 'detail', 'Công nghệ 2', 'cong-nghe-2', '2017-04-01 02:39:57', '2017-04-01 02:39:57');
INSERT INTO `cms_slug` VALUES ('122', 'en', 'blog', '30', 'detail', '132', '132-en', '2017-04-01 02:39:57', '2017-04-01 02:39:57');
INSERT INTO `cms_slug` VALUES ('123', 'jp', 'blog', '30', 'detail', '132', '132-jp', '2017-04-01 02:39:57', '2017-04-01 02:39:57');
INSERT INTO `cms_slug` VALUES ('124', 'vi', 'blog_group', '11', 'groups', 'Cười', 'cuoi', '2017-04-01 03:54:46', '2017-04-01 03:54:46');
INSERT INTO `cms_slug` VALUES ('125', 'en', 'blog_group', '11', 'groups', 'Cười', 'cuoi-en', '2017-04-01 03:54:46', '2017-04-01 03:54:46');
INSERT INTO `cms_slug` VALUES ('126', 'jp', 'blog_group', '11', 'groups', 'Cười', 'cuoi-jp', '2017-04-01 03:54:46', '2017-04-01 03:54:46');
INSERT INTO `cms_slug` VALUES ('264', 'jp', 'product_group', '46', 'groups', 'LG 1 to 1', 'lg-1-to-1-jp', '2017-04-01 08:20:45', '2017-04-01 08:20:45');
INSERT INTO `cms_slug` VALUES ('263', 'en', 'product_group', '46', 'groups', 'LG 1 to 1', 'lg-1-to-1-en', '2017-04-01 08:20:45', '2017-04-01 08:20:45');
INSERT INTO `cms_slug` VALUES ('262', 'vi', 'product_group', '46', 'groups', 'LG 1 to 1', 'lg-1-to-1', '2017-04-01 08:20:45', '2017-04-01 08:20:45');
INSERT INTO `cms_slug` VALUES ('261', 'jp', 'product_group', '45', 'groups', 'LG 1', 'lg-1-jp', '2017-04-01 08:04:43', '2017-04-01 08:04:43');
INSERT INTO `cms_slug` VALUES ('260', 'en', 'product_group', '45', 'groups', 'LG 1', 'lg-1-en', '2017-04-01 08:04:43', '2017-04-01 08:04:43');
INSERT INTO `cms_slug` VALUES ('259', 'vi', 'product_group', '45', 'groups', 'LG 1', 'lg-1', '2017-04-01 08:04:43', '2017-04-01 08:04:43');
INSERT INTO `cms_slug` VALUES ('258', 'jp', 'product_group', '44', 'groups', 'LG', 'lg-jp', '2017-04-01 08:02:08', '2017-04-01 08:02:08');
INSERT INTO `cms_slug` VALUES ('257', 'en', 'product_group', '44', 'groups', 'LG', 'lg-en', '2017-04-01 08:02:08', '2017-04-01 08:02:08');
INSERT INTO `cms_slug` VALUES ('256', 'vi', 'product_group', '44', 'groups', 'LG', 'lg', '2017-04-01 08:02:08', '2017-04-01 08:02:08');
INSERT INTO `cms_slug` VALUES ('255', 'jp', 'product_group', '43', 'groups', 'Apple', 'apple-jp', '2017-04-01 07:59:29', '2017-04-01 07:59:29');
INSERT INTO `cms_slug` VALUES ('250', 'vi', 'product_group', '42', 'groups', 'Samsung', 'samsung', '2017-04-01 07:57:36', '2017-04-01 07:57:36');
INSERT INTO `cms_slug` VALUES ('249', 'jp', 'product_group', '41', 'groups', 'Điện thoại', 'dien-thoai-jp', '2017-04-01 07:57:20', '2017-04-01 07:57:20');
INSERT INTO `cms_slug` VALUES ('247', 'vi', 'product_group', '41', 'groups', 'Điện thoại', 'dien-thoai', '2017-04-01 07:57:20', '2017-04-01 07:57:20');
INSERT INTO `cms_slug` VALUES ('248', 'en', 'product_group', '41', 'groups', 'Điện thoại', 'dien-thoai-en', '2017-04-01 07:57:20', '2017-04-01 07:57:20');
INSERT INTO `cms_slug` VALUES ('251', 'en', 'product_group', '42', 'groups', 'Samsung', 'samsung-en', '2017-04-01 07:57:36', '2017-04-01 07:57:36');
INSERT INTO `cms_slug` VALUES ('252', 'jp', 'product_group', '42', 'groups', 'Samsung', 'samsung-jp', '2017-04-01 07:57:36', '2017-04-01 07:57:36');
INSERT INTO `cms_slug` VALUES ('253', 'vi', 'product_group', '43', 'groups', 'Apple', 'apple', '2017-04-01 07:59:29', '2017-04-01 07:59:29');
INSERT INTO `cms_slug` VALUES ('254', 'en', 'product_group', '43', 'groups', 'Apple', 'apple-en', '2017-04-01 07:59:29', '2017-04-01 07:59:29');

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
