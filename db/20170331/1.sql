/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laravel_dev

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-31 18:48:21
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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES ('27', 'blog/', '1490951278-blog2.jpg', '', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"tin-tuc-2\",\"en\":\"tin-tuc-2-en\",\"jp\":\"tin-tuc-2-jp\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '{\"vi\":\"Tin tức 2\",\"en\":\"Tin tức 2\",\"jp\":\"Tin tức 2\"}', '1', '0', '0', '{\"vi\":\"<p>Tin tức 2<\\/p>\",\"en\":\"<p>Tin tức 2<\\/p>\",\"jp\":\"<p>Tin tức 2<\\/p>\"}', '{\"vi\":\"<p>Tin tức 2<\\/p>\",\"en\":\"<p>Tin tức 2<\\/p>\",\"jp\":\"<p>Tin tức 2<\\/p>\"}', '2017-03-31 18:07:58', '2017-03-31 09:07:58');
INSERT INTO `cms_blog` VALUES ('28', 'blog/', '1490951083-dam1.jpg', '10', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"tin-tuc-3\",\"en\":\"tin-tuc-3-en\",\"jp\":\"tin-tuc-3-jp\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '{\"vi\":\"Tin tức 3\",\"en\":\"Tin tức 3\",\"jp\":\"Tin tức 3\"}', '1', '0', '0', '{\"vi\":\"<p>Tin tức 3<\\/p>\",\"en\":\"<p>Tin tức 3<\\/p>\",\"jp\":\"<p>Tin tức 3<\\/p>\"}', '{\"vi\":\"<p>Tin tức 3<\\/p>\",\"en\":\"<p>Tin tức 3<\\/p>\",\"jp\":\"<p>Tin tức 3<\\/p>\"}', '2017-03-31 18:38:31', '2017-03-31 18:38:31');
INSERT INTO `cms_blog` VALUES ('29', 'blog/', null, ',10,6', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"cong-nghe-1\",\"en\":\"cong-nghe-1-en\",\"jp\":\"cong-nghe-1-jp\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '{\"vi\":\"Công nghệ 1\",\"en\":\"Công nghệ 1\",\"jp\":\"Công nghệ 1\"}', '1', '0', '0', '{\"vi\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ 1<\\/p>\"}', '{\"vi\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ 1<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ 1<\\/p>\"}', '2017-03-31 18:43:42', '2017-03-31 09:43:42');
INSERT INTO `cms_blog` VALUES ('26', 'blog/', '1490949306-blog1.jpg', '', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"tin-tuc-1\",\"en\":\"tin-tuc-1-en\",\"jp\":\"tin-tuc-1-jp\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '{\"vi\":\"Tin tức 1\",\"en\":\"Tin tức 1\",\"jp\":\"Tin tức 1\"}', '1', '0', '0', '{\"vi\":\"<p>Tin tức 1<\\/p>\",\"en\":\"<p>Tin tức 1<\\/p>\",\"jp\":\"<p>Tin tức 1<\\/p>\"}', '{\"vi\":\"<p>Tin tức 1<\\/p>\",\"en\":\"<p>Tin tức 1<\\/p>\",\"jp\":\"<p>Tin tức 1<\\/p>\"}', '2017-03-31 17:35:06', '2017-03-31 08:35:06');

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
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `slug` text NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_group
-- ----------------------------
INSERT INTO `cms_blog_group` VALUES ('10', 'no', '', '1', '0', '2017-03-31 02:19:36', '2017-03-31 02:19:36', '{\"vi\":\"thoi-trang\",\"en\":\"thoi-trang-en\",\"jp\":\"thoi-trang-jp\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"<p>Thời trang<\\/p>\",\"en\":\"<p>Thời trang<\\/p>\",\"jp\":\"<p>Thời trang<\\/p>\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}', '{\"vi\":\"Thời trang\",\"en\":\"Thời trang\",\"jp\":\"Thời trang\"}');
INSERT INTO `cms_blog_group` VALUES ('6', 'no', '', '1', '0', '2017-03-31 10:30:06', '2017-03-31 10:30:06', '{\"vi\":\"cong-nghe\",\"en\":\"cong-nghe-en\",\"jp\":\"cong-nghe-jp\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"<p>C&ocirc;ng nghệ<\\/p>\",\"en\":\"<p>C&ocirc;ng nghệ<\\/p>\",\"jp\":\"<p>C&ocirc;ng nghệ<\\/p>\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}', '{\"vi\":\"Công nghệ\",\"en\":\"Công nghệ\",\"jp\":\"Công nghệ\"}');

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
-- Table structure for cms_product_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_product_group`;
CREATE TABLE `cms_product_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_upload` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `parent_nav` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` text,
  `slug` text,
  `short` text,
  `content` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_product_group
-- ----------------------------

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
