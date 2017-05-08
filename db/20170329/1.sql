/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : laravel_dev

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-29 18:38:38
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `slug` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_group
-- ----------------------------
INSERT INTO `cms_blog_group` VALUES ('1', 'no', ',4', '0', '0', '2017-03-29 18:37:34', '2017-03-29 09:37:34', '{\"vi\":\"group-1\",\"en\":\"group-1-en\",\"jp\":\"group-1-jp\"}', '{\"vi\":\"Group 1\",\"en\":\"Group 1\",\"jp\":\"Group 1\"}', '{\"vi\":\"<p>Group 1<\\/p>\",\"en\":\"<p>Group 1<\\/p>\",\"jp\":\"<p>Group 1<\\/p>\"}', '{\"vi\":\"Group 1\",\"en\":\"Group 1\",\"jp\":\"Group 1\"}', '{\"vi\":\"Group 1\",\"en\":\"Group 1\",\"jp\":\"Group 1\"}', '{\"vi\":\"Group 1\",\"en\":\"Group 1\",\"jp\":\"Group 1\"}');
INSERT INTO `cms_blog_group` VALUES ('2', 'moderate', '1,4', '1', '0', '2017-03-29 18:09:25', '2017-03-29 18:09:25', '{\"vi\":\"group-2\",\"en\":\"group-2-en\",\"jp\":\"group-2-jp\"}', '{\"vi\":\"Group 2\",\"en\":\"Group 2\",\"jp\":\"Group 2\"}', '{\"vi\":\"<p>Group 2<\\/p>\",\"en\":\"<p>Group 2<\\/p>\",\"jp\":\"<p>Group 2<\\/p>\"}', '{\"vi\":\"Group 2\",\"en\":\"Group 2\",\"jp\":\"Group 2\"}', '{\"vi\":\"Group 2\",\"en\":\"Group 2\",\"jp\":\"Group 2\"}', '{\"vi\":\"Group 2\",\"en\":\"Group 2\",\"jp\":\"Group 2\"}');
INSERT INTO `cms_blog_group` VALUES ('3', 'yes', '2', '1', '0', '2017-03-29 08:02:36', '2017-03-29 08:02:36', '{\"vi\":\"group-3\",\"en\":\"group-3-en\",\"jp\":\"group-3-jp\"}', '{\"vi\":\"Group 3\",\"en\":\"Group 3\",\"jp\":\"Group 3\"}', '{\"vi\":\"<p>Group 3<\\/p>\",\"en\":\"<p>Group 3<\\/p>\",\"jp\":\"<p>Group 3<\\/p>\"}', '{\"vi\":\"Group 3\",\"en\":\"Group 3\",\"jp\":\"Group 3\"}', '{\"vi\":\"Group 3\",\"en\":\"Group 3\",\"jp\":\"Group 3\"}', '{\"vi\":\"Group 3\",\"en\":\"Group 3\",\"jp\":\"Group 3\"}');
INSERT INTO `cms_blog_group` VALUES ('4', 'moderate', '3', '1', '0', '2017-03-29 08:02:48', '2017-03-29 08:02:48', '{\"vi\":\"group-4\",\"en\":\"group-4-en\",\"jp\":\"group-4-jp\"}', '{\"vi\":\"Group 4\",\"en\":\"Group 4\",\"jp\":\"Group 4\"}', '{\"vi\":\"<p>Group 4<\\/p>\",\"en\":\"<p>Group 4<\\/p>\",\"jp\":\"<p>Group 4<\\/p>\"}', '{\"vi\":\"Group 4\",\"en\":\"Group 4\",\"jp\":\"Group 4\"}', '{\"vi\":\"Group 4\",\"en\":\"Group 4\",\"jp\":\"Group 4\"}', '{\"vi\":\"Group 4\",\"en\":\"Group 4\",\"jp\":\"Group 4\"}');
INSERT INTO `cms_blog_group` VALUES ('5', 'yes', '4', '1', '0', '2017-03-29 09:35:03', '2017-03-29 09:35:03', '{\"vi\":\"group-5\",\"en\":\"group-5-en\",\"jp\":\"group-5-jp\"}', '{\"vi\":\"Group 5\",\"en\":\"Group 5\",\"jp\":\"Group 5\"}', '{\"vi\":\"<p>Group 5<\\/p>\",\"en\":\"<p>Group 5<\\/p>\",\"jp\":\"<p>Group 5<\\/p>\"}', '{\"vi\":\"Group 5\",\"en\":\"Group 5\",\"jp\":\"Group 5\"}', '{\"vi\":\"Group 5\",\"en\":\"Group 5\",\"jp\":\"Group 5\"}', '{\"vi\":\"Group 5\",\"en\":\"Group 5\",\"jp\":\"Group 5\"}');
INSERT INTO `cms_blog_group` VALUES ('6', 'yes', '2', '0', '0', '2017-03-29 09:35:46', '2017-03-29 09:35:46', '{\"vi\":\"group-6\",\"en\":\"group-6-en\",\"jp\":\"group-6-jp\"}', '{\"vi\":\"Group 6\",\"en\":\"Group 6\",\"jp\":\"Group 6\"}', '{\"vi\":\"<p>Group 6<\\/p>\",\"en\":\"<p>Group 6<\\/p>\",\"jp\":\"<p>Group 6<\\/p>\"}', '{\"vi\":\"Group 6\",\"en\":\"Group 6\",\"jp\":\"Group 6\"}', '{\"vi\":\"Group 6\",\"en\":\"Group 6\",\"jp\":\"Group 6\"}', '{\"vi\":\"Group 6\",\"en\":\"Group 6\",\"jp\":\"Group 6\"}');

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
-- Table structure for cms_slug
-- ----------------------------
DROP TABLE IF EXISTS `cms_slug`;
CREATE TABLE `cms_slug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `title` text,
  `slug` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slug
-- ----------------------------
INSERT INTO `cms_slug` VALUES ('16', 'vi', 'blog_group', '1', 'groups', 'Group 1', 'group-1', '2017-03-29 08:02:06', '2017-03-29 08:02:06');
INSERT INTO `cms_slug` VALUES ('17', 'en', 'blog_group', '1', 'groups', 'Group 1', 'group-1-en', '2017-03-29 08:02:06', '2017-03-29 08:02:06');
INSERT INTO `cms_slug` VALUES ('18', 'jp', 'blog_group', '1', 'groups', 'Group 1', 'group-1-jp', '2017-03-29 08:02:06', '2017-03-29 08:02:06');
INSERT INTO `cms_slug` VALUES ('19', 'vi', 'blog_group', '2', 'groups', 'Group 2', 'group-2', '2017-03-29 08:02:24', '2017-03-29 08:02:24');
INSERT INTO `cms_slug` VALUES ('20', 'en', 'blog_group', '2', 'groups', 'Group 2', 'group-2-en', '2017-03-29 08:02:24', '2017-03-29 08:02:24');
INSERT INTO `cms_slug` VALUES ('21', 'jp', 'blog_group', '2', 'groups', 'Group 2', 'group-2-jp', '2017-03-29 08:02:24', '2017-03-29 08:02:24');
INSERT INTO `cms_slug` VALUES ('22', 'vi', 'blog_group', '3', 'groups', 'Group 3', 'group-3', '2017-03-29 08:02:36', '2017-03-29 08:02:36');
INSERT INTO `cms_slug` VALUES ('23', 'en', 'blog_group', '3', 'groups', 'Group 3', 'group-3-en', '2017-03-29 08:02:36', '2017-03-29 08:02:36');
INSERT INTO `cms_slug` VALUES ('24', 'jp', 'blog_group', '3', 'groups', 'Group 3', 'group-3-jp', '2017-03-29 08:02:36', '2017-03-29 08:02:36');
INSERT INTO `cms_slug` VALUES ('25', 'vi', 'blog_group', '4', 'groups', 'Group 4', 'group-4', '2017-03-29 08:02:48', '2017-03-29 08:02:48');
INSERT INTO `cms_slug` VALUES ('26', 'en', 'blog_group', '4', 'groups', 'Group 4', 'group-4-en', '2017-03-29 08:02:48', '2017-03-29 08:02:48');
INSERT INTO `cms_slug` VALUES ('27', 'jp', 'blog_group', '4', 'groups', 'Group 4', 'group-4-jp', '2017-03-29 08:02:48', '2017-03-29 08:02:48');
INSERT INTO `cms_slug` VALUES ('28', 'vi', 'blog_group', '5', 'groups', 'Group 5', 'group-5', '2017-03-29 09:35:03', '2017-03-29 09:35:03');
INSERT INTO `cms_slug` VALUES ('29', 'en', 'blog_group', '5', 'groups', 'Group 5', 'group-5-en', '2017-03-29 09:35:03', '2017-03-29 09:35:03');
INSERT INTO `cms_slug` VALUES ('30', 'jp', 'blog_group', '5', 'groups', 'Group 5', 'group-5-jp', '2017-03-29 09:35:03', '2017-03-29 09:35:03');
INSERT INTO `cms_slug` VALUES ('31', 'vi', 'blog_group', '6', 'groups', 'Group 6', 'group-6', '2017-03-29 09:35:46', '2017-03-29 09:35:46');
INSERT INTO `cms_slug` VALUES ('32', 'en', 'blog_group', '6', 'groups', 'Group 6', 'group-6-en', '2017-03-29 09:35:46', '2017-03-29 09:35:46');
INSERT INTO `cms_slug` VALUES ('33', 'jp', 'blog_group', '6', 'groups', 'Group 6', 'group-6-jp', '2017-03-29 09:35:46', '2017-03-29 09:35:46');

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
