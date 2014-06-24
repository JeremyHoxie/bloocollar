-- MySQL dump 10.13  Distrib 5.5.35, for Linux (i686)
--
-- Host: 127.0.0.1    Database: wp_jeremyhoxie
-- ------------------------------------------------------
-- Server version	5.5.35-33.0-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (1,1,'_wp_trash_meta_status','1');
INSERT INTO `wp_commentmeta` VALUES (2,1,'_wp_trash_meta_time','1401471286');
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2014-05-02 17:59:26','2014-05-02 17:59:26','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=792 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://jeremyhoxie.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (2,'blogname','BlooCollar','yes');
INSERT INTO `wp_options` VALUES (3,'blogdescription','Connecting Local Customers with Local Contractors','yes');
INSERT INTO `wp_options` VALUES (4,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (5,'admin_email','jeremy.hoxie@gmail.com','yes');
INSERT INTO `wp_options` VALUES (6,'start_of_week','0','yes');
INSERT INTO `wp_options` VALUES (7,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (8,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (9,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (10,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (11,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (12,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (13,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (17,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (18,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (19,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (21,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (22,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (23,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (24,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (26,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (27,'permalink_structure','','yes');
INSERT INTO `wp_options` VALUES (28,'gzipcompression','0','yes');
INSERT INTO `wp_options` VALUES (29,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (30,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (31,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (32,'active_plugins','a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";i:3;s:42:\"wordpress-social-login/wp-social-login.php\";i:4;s:27:\"wp-pagenavi/wp-pagenavi.php\";}','yes');
INSERT INTO `wp_options` VALUES (33,'home','http://jeremyhoxie.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'advanced_edit','0','yes');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (40,'recently_edited','a:3:{i:0;s:77:\"/nas/wp/www/cluster-2209/jeremyhoxie/wp-content/themes/ProjectTheme/style.css\";i:1;s:86:\"/nas/wp/www/cluster-2209/jeremyhoxie/wp-content/themes/ProjectTheme/lib/admin_menu.php\";i:3;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (41,'template','ProjectTheme','yes');
INSERT INTO `wp_options` VALUES (42,'stylesheet','ProjectTheme','yes');
INSERT INTO `wp_options` VALUES (43,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (44,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (45,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (46,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (47,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (48,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (49,'db_version','27916','yes');
INSERT INTO `wp_options` VALUES (50,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (51,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (52,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (53,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (54,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (55,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (56,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (57,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (58,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (61,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (63,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (64,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (66,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (69,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (71,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (73,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (74,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (75,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (76,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (77,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (78,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (82,'uninstall_plugins','a:1:{s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";}','no');
INSERT INTO `wp_options` VALUES (83,'timezone_string','America/Detroit','yes');
INSERT INTO `wp_options` VALUES (84,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (85,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (86,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (87,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (88,'initial_db_version','27916','yes');
INSERT INTO `wp_options` VALUES (89,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:11:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:16:\"service_provider\";a:2:{s:4:\"name\";s:16:\"Service Provider\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:14:\"business_owner\";a:2:{s:4:\"name\";s:18:\"Service Contractor\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (90,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (91,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (92,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'sidebars_widgets','a:13:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"single-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"other-page-area\";a:0:{}s:22:\"home-right-widget-area\";a:0:{}s:21:\"home-left-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}s:19:\"project-widget-area\";a:0:{}s:21:\"main-page-widget-area\";a:0:{}s:17:\"main-stretch-area\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (96,'cron','a:4:{i:1403216134;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1403216266;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1403249280;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (100,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.9.1\";s:7:\"version\";s:5:\"3.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1403209539;s:15:\"version_checked\";s:5:\"3.9.1\";s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (106,'limit_login_retries','a:1:{s:13:\"72.80.108.242\";i:1;}','no');
INSERT INTO `wp_options` VALUES (107,'limit_login_retries_valid','a:1:{s:13:\"72.80.108.242\";i:1402154268;}','no');
INSERT INTO `wp_options` VALUES (108,'_transient_random_seed','6e3941e690b70baedfb7aa907de2762b','yes');
INSERT INTO `wp_options` VALUES (111,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (112,'wpe_notices_ttl','1403213124','yes');
INSERT INTO `wp_options` VALUES (114,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (132,'_transient_twentyfourteen_category_count','1','yes');
INSERT INTO `wp_options` VALUES (155,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1403209557;s:7:\"checked\";a:4:{s:12:\"ProjectTheme\";s:5:\"1.4.1\";s:14:\"twentyfourteen\";s:3:\"1.1\";s:14:\"twentythirteen\";s:3:\"1.2\";s:12:\"twentytwelve\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (156,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1401197738;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (157,'current_theme','ProjectTheme','yes');
INSERT INTO `wp_options` VALUES (158,'theme_mods_ProjectTheme','a:1:{i:0;b:0;}','yes');
INSERT INTO `wp_options` VALUES (159,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (160,'projectTheme_nr_max_of_images','15','yes');
INSERT INTO `wp_options` VALUES (161,'ProjectTheme_charge_fees_for_images','no','yes');
INSERT INTO `wp_options` VALUES (162,'ProjectTheme_enable_images_in_projects','yes','yes');
INSERT INTO `wp_options` VALUES (163,'ProjectTheme_enable_twitter_login','yes','yes');
INSERT INTO `wp_options` VALUES (164,'ProjectTheme_enable_facebook_login','yes','yes');
INSERT INTO `wp_options` VALUES (165,'ProjectTheme_enable_project_location','yes','yes');
INSERT INTO `wp_options` VALUES (166,'ProjectTheme_slider_in_front','yes','yes');
INSERT INTO `wp_options` VALUES (167,'ProjectTheme_show_blue_menu','yes','yes');
INSERT INTO `wp_options` VALUES (168,'project_theme_logo_url','','yes');
INSERT INTO `wp_options` VALUES (169,'projectTheme_currency','USD','yes');
INSERT INTO `wp_options` VALUES (170,'projectTheme_currency_symbol','$','yes');
INSERT INTO `wp_options` VALUES (171,'projectTheme_price_in_front','yes','yes');
INSERT INTO `wp_options` VALUES (172,'projectTheme_base_fee','0','yes');
INSERT INTO `wp_options` VALUES (173,'projectTheme_featured_fee','0','yes');
INSERT INTO `wp_options` VALUES (174,'projectTheme_projectmin_approves_each_project','30','yes');
INSERT INTO `wp_options` VALUES (175,'projectTheme_show_project_views','yes','yes');
INSERT INTO `wp_options` VALUES (176,'projectTheme_enable_blog','yes','yes');
INSERT INTO `wp_options` VALUES (177,'projectTheme_project_period_featured','35','yes');
INSERT INTO `wp_options` VALUES (178,'ProjectTheme_moderate_private_messages','no','yes');
INSERT INTO `wp_options` VALUES (179,'ProjectTheme_enable_2_user_tp','yes','yes');
INSERT INTO `wp_options` VALUES (180,'ProjectTheme_decimal_sum_separator','.','yes');
INSERT INTO `wp_options` VALUES (181,'ProjectTheme_thousands_sum_separator',',','yes');
INSERT INTO `wp_options` VALUES (182,'ProjectTheme_right_side_footer','','yes');
INSERT INTO `wp_options` VALUES (183,'ProjectTheme_left_side_footer','Copyright 2014 BlooCollar','yes');
INSERT INTO `wp_options` VALUES (184,'ProjectTheme_recently_closed_page_id','5','yes');
INSERT INTO `wp_options` VALUES (185,'ProjectTheme_all_blog_posts_page_id','6','yes');
INSERT INTO `wp_options` VALUES (186,'ProjectTheme_all_locations_page_id','7','yes');
INSERT INTO `wp_options` VALUES (187,'ProjectTheme_all_categories_page_id','8','yes');
INSERT INTO `wp_options` VALUES (188,'ProjectTheme_advanced_search_page_id','9','yes');
INSERT INTO `wp_options` VALUES (189,'ProjectTheme_provider_search_page_id','10','yes');
INSERT INTO `wp_options` VALUES (190,'ProjectTheme_post_new_page_id','11','yes');
INSERT INTO `wp_options` VALUES (191,'ProjectTheme_my_account_page_id','12','yes');
INSERT INTO `wp_options` VALUES (192,'ProjectTheme_my_account_personal_info_id','13','yes');
INSERT INTO `wp_options` VALUES (193,'ProjectTheme_my_account_payments_id','14','yes');
INSERT INTO `wp_options` VALUES (194,'ProjectTheme_my_account_private_messages_id','15','yes');
INSERT INTO `wp_options` VALUES (195,'ProjectTheme_my_account_feedback_id','16','yes');
INSERT INTO `wp_options` VALUES (196,'ProjectTheme_my_account_pay_for_project','17','yes');
INSERT INTO `wp_options` VALUES (197,'ProjectTheme_my_account_pay_with_credits','18','yes');
INSERT INTO `wp_options` VALUES (198,'ProjectTheme_my_account_won_projects_id','19','yes');
INSERT INTO `wp_options` VALUES (199,'ProjectTheme_my_account_bid_projects_id','20','yes');
INSERT INTO `wp_options` VALUES (200,'ProjectTheme_my_account_delivered_projects_id','21','yes');
INSERT INTO `wp_options` VALUES (201,'ProjectTheme_my_account_outstanding_projects_id','22','yes');
INSERT INTO `wp_options` VALUES (202,'ProjectTheme_my_account_awaiting_payments_id','23','yes');
INSERT INTO `wp_options` VALUES (203,'ProjectTheme_my_account_active_projects_id','24','yes');
INSERT INTO `wp_options` VALUES (204,'ProjectTheme_my_account_closed_projects_id','25','yes');
INSERT INTO `wp_options` VALUES (205,'ProjectTheme_my_account_unpublished_projects_id','26','yes');
INSERT INTO `wp_options` VALUES (206,'ProjectTheme_my_account_outstanding_payments_id','27','yes');
INSERT INTO `wp_options` VALUES (207,'ProjectTheme_my_account_completed_payments_id','28','yes');
INSERT INTO `wp_options` VALUES (208,'ProjectTheme_my_account_awaiting_completion_id','29','yes');
INSERT INTO `wp_options` VALUES (209,'ProjectTheme_upd138_ba','y','yes');
INSERT INTO `wp_options` VALUES (210,'ProjectTheme_upd138saa_bass001','y','yes');
INSERT INTO `wp_options` VALUES (211,'ProjectTheme_upd138_bass4a','y','yes');
INSERT INTO `wp_options` VALUES (212,'ProjectTheme_all_projects_page_id','30','yes');
INSERT INTO `wp_options` VALUES (213,'ProjectTheme_new_emails_135','DonE','yes');
INSERT INTO `wp_options` VALUES (214,'ProjectTheme_new_user_email_subject','Welcome to ##your_site_name##','yes');
INSERT INTO `wp_options` VALUES (215,'ProjectTheme_new_user_email_message','Hello ##username##,\n\nWelcome to our website.\nYour username: ##username##\nYour password: ##user_password##\n\nLogin here: ##site_login_url##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (216,'ProjectTheme_new_user_email_admin_subject','New user registration on your site','yes');
INSERT INTO `wp_options` VALUES (217,'ProjectTheme_new_user_email_admin_message','Hello admin,\n\nA new user has been registered on your website.\nSee the details below:\n\nUsername: ##username##\nEmail: ##user_email##','yes');
INSERT INTO `wp_options` VALUES (218,'ProjectTheme_new_project_email_approve_admin_subject','New project posted: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (219,'ProjectTheme_new_project_email_approve_admin_message','Hello admin,\n\nThe user ##username## has posted a new project on your website.\nThe project name: [##project_name##]\nThe project was automatically approve on your website.\n\nView the project here: ##project_link##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (220,'ProjectTheme_new_project_email_not_approve_admin_subject','New project posted. Must approve ##project_name##','yes');
INSERT INTO `wp_options` VALUES (221,'ProjectTheme_new_project_email_not_approve_admin_message','Hello admin,\n\nThe user ##username## has posted a new project on your website.\nThe project name: <b>##project_name##</b> \nThe project is not automatically approved so you have to manually approve the project before it appears on your website.\n\nYou can approve the project by going to your admin dashboard in your website\nGo here: ##your_site_url##/wp-admin','yes');
INSERT INTO `wp_options` VALUES (222,'ProjectTheme_new_project_email_not_approved_subject','Your new project posted, but not yet approved: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (223,'ProjectTheme_new_project_email_not_approved_message','Hello ##username##,\n\nYour project <b>##project_name##</b> has been posted on the website. However it is not live yet.\nThe project needs to be approved by the admin before it goes live. \nYou will be notified by email when the project is active and published.\n\nAfter is approved the project will appear here: ##project_link##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (224,'ProjectTheme_new_project_email_approved_subject','Your new project posted, and approved: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (225,'ProjectTheme_new_project_email_approved_message','Hello ##username##,\n\nYour project <b>##project_name##</b> has been posted on the website.\nThe project is live and you can see it here: ##project_link##\nAlso you can check your project offers here: ##my_account_url##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (226,'ProjectTheme_bid_project_owner_email_subject','Your have received a new bid to your project: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (227,'ProjectTheme_bid_project_owner_email_message','Hello ##username##,\n\nYou have received a new bid to your project <a href=\"##project_link##\"><b>##project_name##</b></a>.\nSee your bid details below:\n\nBidder Username: ##bidder_username##\nBid Value: ##bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (228,'ProjectTheme_bid_project_bidder_email_subject','Your has been posted to the project: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (229,'ProjectTheme_bid_project_bidder_email_message','Hello ##username##,\n\nYou posted a new bid to the project <a href=\"##project_link##\"><b>##project_name##</b></a>.\nSee your bid details below:\n\nProject Link: ##project_link##\nBid Value: ##bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (230,'ProjectTheme_won_project_loser_email_subject','The project: ##project_name## has ended. You did not win.','yes');
INSERT INTO `wp_options` VALUES (231,'ProjectTheme_won_project_loser_email_message','Hello ##username##,\n\nThe project: <a href=\"##project_link##\"><b>##project_name##</b></a> has ended.\nSorry, you did not win. See won project details below:\n\nProject Link: ##project_link##\nWinner Bid Value: ##winner_bid_value##\nWinner Username: ##winner_bid_username##\nYour bid on this project: ##user_bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (232,'ProjectTheme_won_project_winner_email_subject','The project: ##project_name## has ended. You are the winner!','yes');
INSERT INTO `wp_options` VALUES (233,'ProjectTheme_won_project_winner_email_message','Hello ##username##,\n\nThe project: <a href=\"##project_link##\"><b>##project_name##</b></a> has ended.\nYou just wont it. See won project details below:\n\nProject Link: ##project_link##\nWinner Bid Value: ##winner_bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (234,'ProjectTheme_won_project_owner_email_subject','Your have selected a winner for your project: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (235,'ProjectTheme_won_project_owner_email_message','Hello ##username##,\n\nYour project: <a href=\"##project_link##\"><b>##project_name##</b></a> \r\n																				has ended.\nYou just selected a winner for it. \r\n																				See won project details below:\n\nProject Link: ##project_link##\nWinner Bidder Username: ##winner_bid_username##\nWinner Bid Value: ##winner_bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (236,'ProjectTheme_rated_user_email_subject','Your were just rated for the project: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (237,'ProjectTheme_rated_user_email_message','Hello ##username##,\n\nYou have received a rating for the project: \r\n																				<a href=\"##project_link##\"><b>##project_name##</b></a>.\nSee rating details below:\n\nProject Link: ##project_link##\nRating: ##rating##\nComment: ##comment##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (238,'ProjectTheme_priv_mess_received_email_subject','Your have received a private message from user: ##sender_username##.','yes');
INSERT INTO `wp_options` VALUES (239,'ProjectTheme_priv_mess_received_email_message','Hello ##receiver_username##,\n\nYou have received a private message from <b>##sender_username##</b>\nTo read it, just login to your account: ##my_account_url##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (240,'ProjectTheme_completed_project_owner_email_subject','Project marked as completed by provider: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (241,'ProjectTheme_completed_project_owner_email_message','Hello ##username##,\n\nThe provider/winner of this project has marked it as completed <b>##project_name##</b> ( ##project_link## )\nTo check the project out and accept it go to your account area: ##my_account_url##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (242,'ProjectTheme_completed_project_bidder_email_subject','You completed the project: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (243,'ProjectTheme_completed_project_bidder_email_message','Hello ##username##,\n\nYou have just marked the following project as completed: <b>##project_name##</b> ( ##project_link## )\nYou will be notified when the project owner will accept your project.\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (244,'ProjectTheme_delivered_project_bidder_email_subject','Project marked delivered and accepted by the owner: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (245,'ProjectTheme_delivered_project_bidder_email_message','Hello ##username##,\n\nThe owner of the project: <b>##project_name##</b> ( ##project_link## ) has accepted and marked it as delivered.\nYou will be notified when the owner pays the project fee.\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (246,'ProjectTheme_delivered_project_owner_email_subject','Your project accepted as delivered: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (247,'ProjectTheme_delivered_project_owner_email_message','Hello ##username##,\n\nYou have just accepted as delivered your project: <b>##project_name##</b> ( ##project_link## ).\nYou need to login into your account area and pay the project fee.\nLogin here: ##my_account_url##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (248,'ProjectTheme_new_emails_138','DonE','yes');
INSERT INTO `wp_options` VALUES (249,'ProjectTheme_subscription_email_subject','Project matching your criteria: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (250,'ProjectTheme_subscription_email_message','Hello ##username##,\n\nA new project that matches your criteria has been posted: <b>##project_name##</b> ( ##project_link## ).\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (251,'ProjectTheme_message_board_owner_email_subject','New message on project message board: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (252,'ProjectTheme_message_board_owner_email_message','Hello ##username##,\n\nThe user ##message_owner_username## has posted a new message on the project message board.\nYou can check the message here: <b>##project_name##</b> ( ##project_link## )\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (253,'ProjectTheme_message_board_bidder_email_subject','New message on project message board: ##project_name##.','yes');
INSERT INTO `wp_options` VALUES (254,'ProjectTheme_message_board_bidder_email_message','Hello ##username##,\n\nThe project owner (##project_username##) has posted a reply on the project message board.\nYou can check the answer out here: <b>##project_name##</b> ( ##project_link## )\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (255,'ProjectTheme_new_emails_139','DonE','yes');
INSERT INTO `wp_options` VALUES (256,'ProjectTheme_payment_on_completed_project_subject','Your paid for the project: ##project_name##','yes');
INSERT INTO `wp_options` VALUES (257,'ProjectTheme_payment_on_completed_project_message','Hello ##username##,\n\nYou have paid the winning bid for your project <a href=\"##project_link##\"><b>##project_name##</b></a>.\nSee your payment details below:\n\nBidder Username: ##bidder_username##\nBid Value: ##bid_value##\n\nThank you,\n##your_site_name## Team','yes');
INSERT INTO `wp_options` VALUES (258,'widget_wpe_widget_powered_by','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (259,'widget_pages','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (260,'widget_calendar','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (261,'widget_tag_cloud','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (262,'widget_nav_menu','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (263,'widget_browse-by-category','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (264,'widget_browse-by-location','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (265,'widget_best-rated-users','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (266,'widget_most-view-projects','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (267,'widget_featured-projects','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (268,'widget_ending-soonest-projects','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (269,'widget_latest-posted-projects','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (270,'recently_activated','a:1:{s:43:\"breadcrumb-navxt/breadcrumb_navxt_admin.php\";i:1401470655;}','yes');
INSERT INTO `wp_options` VALUES (326,'pagenavi_options','a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:13:\"&laquo; First\";s:9:\"last_text\";s:12:\"Last &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (329,'akismet_available_servers','a:4:{s:12:\"192.0.80.244\";b:1;s:12:\"66.135.58.62\";b:1;s:12:\"192.0.80.246\";b:1;s:12:\"66.135.58.61\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (330,'akismet_connectivity_time','1401471327','yes');
INSERT INTO `wp_options` VALUES (331,'akismet_strictness','1','yes');
INSERT INTO `wp_options` VALUES (332,'akismet_show_user_comments_approved','0','yes');
INSERT INTO `wp_options` VALUES (333,'wordpress_api_key','77f7d713d0be','yes');
INSERT INTO `wp_options` VALUES (334,'bcn_options','a:50:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hmainsite_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hhome_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hblog_template_no_anchor\";s:8:\"%htitle%\";s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_page_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_page_root\";s:1:\"0\";s:15:\"Hpaged_template\";s:13:\"Page %htitle%\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_post_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_post_root\";s:1:\"0\";s:27:\"bpost_post_taxonomy_display\";b:1;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:35:\"Hpost_attachment_template_no_anchor\";s:8:\"%htitle%\";s:13:\"H404_template\";s:8:\"%htitle%\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:133:\"Search results for &#39;<a title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#39;\";s:26:\"Hsearch_template_no_anchor\";s:37:\"Search results for &#39;%htitle%&#39;\";s:18:\"Hpost_tag_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hpost_tag_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hpost_format_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:31:\"Hpost_format_template_no_anchor\";s:8:\"%htitle%\";s:16:\"Hauthor_template\";s:107:\"Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:21:\"Articles by: %htitle%\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:18:\"Hcategory_template\";s:89:\"<a title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hcategory_template_no_anchor\";s:8:\"%htitle%\";s:14:\"Hdate_template\";s:80:\"<a title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hdate_template_no_anchor\";s:8:\"%htitle%\";s:22:\"Hpost_project_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_project_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_project_archive_display\";s:12:\"project-list\";s:18:\"apost_project_root\";s:1:\"0\";s:30:\"bpost_project_taxonomy_display\";b:1;s:27:\"Spost_project_taxonomy_type\";s:8:\"post_tag\";s:21:\"Hproject_cat_template\";s:84:\"<a title=\"Go to the %title% Project Categories archives.\" href=\"%link%\">%htitle%</a>\";s:31:\"Hproject_cat_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hproject_location_template\";s:75:\"<a title=\"Go to the %title% Locations archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hproject_location_template_no_anchor\";s:8:\"%htitle%\";}','yes');
INSERT INTO `wp_options` VALUES (335,'bcn_options_bk','a:50:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hmainsite_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hhome_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hblog_template_no_anchor\";s:8:\"%htitle%\";s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_page_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_page_root\";s:1:\"0\";s:15:\"Hpaged_template\";s:13:\"Page %htitle%\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_post_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_post_root\";s:1:\"0\";s:27:\"bpost_post_taxonomy_display\";b:1;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:35:\"Hpost_attachment_template_no_anchor\";s:8:\"%htitle%\";s:13:\"H404_template\";s:8:\"%htitle%\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:133:\"Search results for &#39;<a title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#39;\";s:26:\"Hsearch_template_no_anchor\";s:37:\"Search results for &#39;%htitle%&#39;\";s:18:\"Hpost_tag_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hpost_tag_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hpost_format_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:31:\"Hpost_format_template_no_anchor\";s:8:\"%htitle%\";s:16:\"Hauthor_template\";s:107:\"Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:21:\"Articles by: %htitle%\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:18:\"Hcategory_template\";s:89:\"<a title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hcategory_template_no_anchor\";s:8:\"%htitle%\";s:14:\"Hdate_template\";s:80:\"<a title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hdate_template_no_anchor\";s:8:\"%htitle%\";s:22:\"Hpost_project_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_project_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_project_archive_display\";s:12:\"project-list\";s:18:\"apost_project_root\";s:1:\"0\";s:30:\"bpost_project_taxonomy_display\";b:1;s:27:\"Spost_project_taxonomy_type\";s:8:\"post_tag\";s:21:\"Hproject_cat_template\";s:84:\"<a title=\"Go to the %title% Project Categories archives.\" href=\"%link%\">%htitle%</a>\";s:31:\"Hproject_cat_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hproject_location_template\";s:75:\"<a title=\"Go to the %title% Locations archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hproject_location_template_no_anchor\";s:8:\"%htitle%\";}','no');
INSERT INTO `wp_options` VALUES (336,'bcn_version','5.0.1','no');
INSERT INTO `wp_options` VALUES (338,'wpseo_titles','a:82:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:14:\"hide-feedlinks\";b:0;s:12:\"hide-rsdlink\";b:0;s:14:\"hide-shortlink\";b:0;s:16:\"hide-wlwmanifest\";b:0;s:5:\"noodp\";b:0;s:6:\"noydir\";b:0;s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:0:\"\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:0:\"\";s:15:\"title-404-wpseo\";s:0:\"\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:17:\"noauthorship-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:17:\"noauthorship-page\";b:1;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:23:\"noauthorship-attachment\";b:1;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:13:\"title-project\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-project\";s:0:\"\";s:15:\"metakey-project\";s:0:\"\";s:15:\"noindex-project\";b:0;s:20:\"noauthorship-project\";b:1;s:16:\"showdate-project\";b:0;s:19:\"hideeditbox-project\";b:0;s:23:\"title-ptarchive-project\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-project\";s:0:\"\";s:25:\"metakey-ptarchive-project\";s:0:\"\";s:25:\"bctitle-ptarchive-project\";s:0:\"\";s:25:\"noindex-ptarchive-project\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:21:\"title-tax-project_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-project_cat\";s:0:\"\";s:23:\"metakey-tax-project_cat\";s:0:\"\";s:27:\"hideeditbox-tax-project_cat\";b:0;s:23:\"noindex-tax-project_cat\";b:0;s:26:\"title-tax-project_location\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-tax-project_location\";s:0:\"\";s:28:\"metakey-tax-project_location\";s:0:\"\";s:32:\"hideeditbox-tax-project_location\";b:0;s:28:\"noindex-tax-project_location\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (339,'wpseo','a:18:{s:14:\"blocking_files\";a:0:{}s:26:\"ignore_blog_public_warning\";b:1;s:31:\"ignore_meta_description_warning\";b:0;s:20:\"ignore_page_comments\";b:0;s:16:\"ignore_permalink\";b:0;s:11:\"ignore_tour\";b:1;s:15:\"ms_defaults_set\";b:0;s:23:\"theme_description_found\";s:0:\"\";s:21:\"theme_has_description\";b:0;s:19:\"tracking_popup_done\";b:1;s:7:\"version\";s:7:\"1.5.3.3\";s:11:\"alexaverify\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:14:\"yoast_tracking\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (381,'wsl_database_migration_version','4','yes');
INSERT INTO `wp_options` VALUES (382,'wsl_components_core_enabled','1','yes');
INSERT INTO `wp_options` VALUES (383,'wsl_components_networks_enabled','1','yes');
INSERT INTO `wp_options` VALUES (384,'wsl_components_login-widget_enabled','1','yes');
INSERT INTO `wp_options` VALUES (385,'wsl_components_bouncer_enabled','1','yes');
INSERT INTO `wp_options` VALUES (386,'wsl_components_diagnostics_enabled','1','yes');
INSERT INTO `wp_options` VALUES (387,'wsl_settings_welcome_panel_enabled','','yes');
INSERT INTO `wp_options` VALUES (388,'wsl_settings_redirect_url','http://jeremyhoxie.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (389,'wsl_settings_connect_with_label','Connect with:','yes');
INSERT INTO `wp_options` VALUES (390,'wsl_settings_use_popup','2','yes');
INSERT INTO `wp_options` VALUES (391,'wsl_settings_widget_display','1','yes');
INSERT INTO `wp_options` VALUES (392,'wsl_settings_authentication_widget_css','#wp-social-login-connect-with {font-weight: bold;}\n#wp-social-login-connect-options {padding:10px;}\n#wp-social-login-connect-options a {text-decoration: none;}\n#wp-social-login-connect-options img {border:0 none;}\n.wsl_connect_with_provider {}','yes');
INSERT INTO `wp_options` VALUES (393,'wsl_settings_bouncer_registration_enabled','1','yes');
INSERT INTO `wp_options` VALUES (394,'wsl_settings_bouncer_authentication_enabled','1','yes');
INSERT INTO `wp_options` VALUES (395,'wsl_settings_bouncer_linking_accounts_enabled','2','yes');
INSERT INTO `wp_options` VALUES (396,'wsl_settings_bouncer_profile_completion_require_email','2','yes');
INSERT INTO `wp_options` VALUES (397,'wsl_settings_bouncer_profile_completion_change_email','2','yes');
INSERT INTO `wp_options` VALUES (398,'wsl_settings_bouncer_profile_completion_change_username','2','yes');
INSERT INTO `wp_options` VALUES (399,'wsl_settings_bouncer_profile_completion_text_notice','Almost there, we just need to check a couple of things','yes');
INSERT INTO `wp_options` VALUES (400,'wsl_settings_bouncer_profile_completion_text_submit_button','Continue','yes');
INSERT INTO `wp_options` VALUES (401,'wsl_settings_bouncer_profile_completion_text_email','E-mail','yes');
INSERT INTO `wp_options` VALUES (402,'wsl_settings_bouncer_profile_completion_text_username','Username','yes');
INSERT INTO `wp_options` VALUES (403,'wsl_settings_bouncer_profile_completion_text_email_invalid','E-mail is not valid!','yes');
INSERT INTO `wp_options` VALUES (404,'wsl_settings_bouncer_profile_completion_text_username_invalid','Username is not valid!','yes');
INSERT INTO `wp_options` VALUES (405,'wsl_settings_bouncer_profile_completion_text_email_exists','That E-mail is already registered!','yes');
INSERT INTO `wp_options` VALUES (406,'wsl_settings_bouncer_profile_completion_text_username_exists','That Username is already registered!','yes');
INSERT INTO `wp_options` VALUES (407,'wsl_settings_bouncer_profile_completion_text_connected_with','You are now connected via','yes');
INSERT INTO `wp_options` VALUES (408,'wsl_settings_bouncer_new_users_moderation_level','1','yes');
INSERT INTO `wp_options` VALUES (409,'wsl_settings_bouncer_new_users_membership_default_role','default','yes');
INSERT INTO `wp_options` VALUES (410,'wsl_settings_bouncer_new_users_restrict_domain_enabled','2','yes');
INSERT INTO `wp_options` VALUES (411,'wsl_settings_bouncer_new_users_restrict_domain_text_bounce','Bouncer says no.','yes');
INSERT INTO `wp_options` VALUES (412,'wsl_settings_bouncer_new_users_restrict_email_enabled','2','yes');
INSERT INTO `wp_options` VALUES (413,'wsl_settings_bouncer_new_users_restrict_email_text_bounce','Bouncer say he refuses.','yes');
INSERT INTO `wp_options` VALUES (414,'wsl_settings_bouncer_new_users_restrict_profile_enabled','2','yes');
INSERT INTO `wp_options` VALUES (415,'wsl_settings_bouncer_new_users_restrict_profile_text_bounce','Bouncer say only Mundo can go where he pleases!','yes');
INSERT INTO `wp_options` VALUES (416,'wsl_settings_contacts_import_facebook','2','yes');
INSERT INTO `wp_options` VALUES (417,'wsl_settings_contacts_import_google','2','yes');
INSERT INTO `wp_options` VALUES (418,'wsl_settings_contacts_import_twitter','2','yes');
INSERT INTO `wp_options` VALUES (419,'wsl_settings_contacts_import_live','2','yes');
INSERT INTO `wp_options` VALUES (420,'wsl_settings_contacts_import_linkedin','2','yes');
INSERT INTO `wp_options` VALUES (421,'wsl_settings_Facebook_enabled','1','yes');
INSERT INTO `wp_options` VALUES (422,'wsl_settings_Google_enabled','1','yes');
INSERT INTO `wp_options` VALUES (423,'wsl_settings_Twitter_enabled','1','yes');
INSERT INTO `wp_options` VALUES (424,'ProjectTheme_enable_drop_down_menu','','yes');
INSERT INTO `wp_options` VALUES (425,'ProjectTheme_show_subcats_enbl','yes','yes');
INSERT INTO `wp_options` VALUES (426,'ProjectTheme_enable_hide_option','yes','yes');
INSERT INTO `wp_options` VALUES (427,'ProjectTheme_enable_sealed_option','yes','yes');
INSERT INTO `wp_options` VALUES (428,'ProjectTheme_enable_featured_option','yes','yes');
INSERT INTO `wp_options` VALUES (429,'ProjectTheme_enable_project_files','yes','yes');
INSERT INTO `wp_options` VALUES (430,'ProjectTheme_stretch_enable','yes','yes');
INSERT INTO `wp_options` VALUES (431,'projectTheme_custom_CSS','','yes');
INSERT INTO `wp_options` VALUES (432,'projectTheme_category_slug_link','','yes');
INSERT INTO `wp_options` VALUES (433,'projectTheme_location_slug_link','','yes');
INSERT INTO `wp_options` VALUES (434,'projectTheme_projects_slug_link','','yes');
INSERT INTO `wp_options` VALUES (435,'projectTheme_project_period','35','yes');
INSERT INTO `wp_options` VALUES (436,'projectTheme_logo_url','http://jeremyhoxie.wpengine.com/wp-content/uploads/2014/06/WebsiteLogo.png','yes');
INSERT INTO `wp_options` VALUES (437,'projectTheme_admin_approves_each_project','yes','yes');
INSERT INTO `wp_options` VALUES (438,'ProjectTheme_home_page_layout','5','yes');
INSERT INTO `wp_options` VALUES (439,'ProjectTheme_color_for_top_links','000000','yes');
INSERT INTO `wp_options` VALUES (440,'ProjectTheme_color_for_bk','ffffff','yes');
INSERT INTO `wp_options` VALUES (441,'ProjectTheme_color_for_footer','ffffff','yes');
INSERT INTO `wp_options` VALUES (446,'wsl_settings_Facebook_app_id','580190068763641','yes');
INSERT INTO `wp_options` VALUES (447,'wsl_settings_Facebook_app_secret','4274a3fa6fb1cbbb3490b9bacc1246aa','yes');
INSERT INTO `wp_options` VALUES (448,'wsl_settings_Google_app_id','','yes');
INSERT INTO `wp_options` VALUES (449,'wsl_settings_Google_app_secret','','yes');
INSERT INTO `wp_options` VALUES (450,'wsl_settings_Twitter_app_key','','yes');
INSERT INTO `wp_options` VALUES (451,'wsl_settings_Twitter_app_secret','','yes');
INSERT INTO `wp_options` VALUES (452,'wsl_settings_Live_enabled','','yes');
INSERT INTO `wp_options` VALUES (453,'wsl_settings_Live_app_id','','yes');
INSERT INTO `wp_options` VALUES (454,'wsl_settings_Live_app_secret','','yes');
INSERT INTO `wp_options` VALUES (455,'wsl_settings_Yahoo_enabled','','yes');
INSERT INTO `wp_options` VALUES (456,'wsl_settings_MySpace_enabled','','yes');
INSERT INTO `wp_options` VALUES (457,'wsl_settings_MySpace_app_key','','yes');
INSERT INTO `wp_options` VALUES (458,'wsl_settings_MySpace_app_secret','','yes');
INSERT INTO `wp_options` VALUES (459,'wsl_settings_Foursquare_enabled','','yes');
INSERT INTO `wp_options` VALUES (460,'wsl_settings_Foursquare_app_id','','yes');
INSERT INTO `wp_options` VALUES (461,'wsl_settings_Foursquare_app_secret','','yes');
INSERT INTO `wp_options` VALUES (462,'wsl_settings_LinkedIn_enabled','','yes');
INSERT INTO `wp_options` VALUES (463,'wsl_settings_LinkedIn_app_key','','yes');
INSERT INTO `wp_options` VALUES (464,'wsl_settings_LinkedIn_app_secret','','yes');
INSERT INTO `wp_options` VALUES (465,'wsl_settings_AOL_enabled','','yes');
INSERT INTO `wp_options` VALUES (466,'wsl_settings_Vkontakte_enabled','','yes');
INSERT INTO `wp_options` VALUES (467,'wsl_settings_Vkontakte_app_id','','yes');
INSERT INTO `wp_options` VALUES (468,'wsl_settings_Vkontakte_app_secret','','yes');
INSERT INTO `wp_options` VALUES (469,'wsl_settings_LastFM_enabled','','yes');
INSERT INTO `wp_options` VALUES (470,'wsl_settings_LastFM_app_key','','yes');
INSERT INTO `wp_options` VALUES (471,'wsl_settings_LastFM_app_secret','','yes');
INSERT INTO `wp_options` VALUES (472,'wsl_settings_Instagram_enabled','','yes');
INSERT INTO `wp_options` VALUES (473,'wsl_settings_Instagram_app_id','','yes');
INSERT INTO `wp_options` VALUES (474,'wsl_settings_Instagram_app_secret','','yes');
INSERT INTO `wp_options` VALUES (475,'wsl_settings_Identica_enabled','','yes');
INSERT INTO `wp_options` VALUES (476,'wsl_settings_Identica_app_key','','yes');
INSERT INTO `wp_options` VALUES (477,'wsl_settings_Identica_app_secret','','yes');
INSERT INTO `wp_options` VALUES (478,'wsl_settings_Tumblr_enabled','','yes');
INSERT INTO `wp_options` VALUES (479,'wsl_settings_Tumblr_app_key','','yes');
INSERT INTO `wp_options` VALUES (480,'wsl_settings_Tumblr_app_secret','','yes');
INSERT INTO `wp_options` VALUES (481,'wsl_settings_Goodreads_enabled','','yes');
INSERT INTO `wp_options` VALUES (482,'wsl_settings_Goodreads_app_key','','yes');
INSERT INTO `wp_options` VALUES (483,'wsl_settings_Goodreads_app_secret','','yes');
INSERT INTO `wp_options` VALUES (484,'wsl_settings_Stackoverflow_enabled','','yes');
INSERT INTO `wp_options` VALUES (485,'wsl_settings_GitHub_enabled','','yes');
INSERT INTO `wp_options` VALUES (486,'wsl_settings_GitHub_app_id','','yes');
INSERT INTO `wp_options` VALUES (487,'wsl_settings_GitHub_app_secret','','yes');
INSERT INTO `wp_options` VALUES (488,'wsl_settings_500px_enabled','','yes');
INSERT INTO `wp_options` VALUES (489,'wsl_settings_500px_app_key','','yes');
INSERT INTO `wp_options` VALUES (490,'wsl_settings_500px_app_secret','','yes');
INSERT INTO `wp_options` VALUES (491,'wsl_settings_Skyrock_enabled','','yes');
INSERT INTO `wp_options` VALUES (492,'wsl_settings_Skyrock_app_key','','yes');
INSERT INTO `wp_options` VALUES (493,'wsl_settings_Skyrock_app_secret','','yes');
INSERT INTO `wp_options` VALUES (494,'wsl_settings_Mixi_enabled','','yes');
INSERT INTO `wp_options` VALUES (495,'wsl_settings_Steam_enabled','','yes');
INSERT INTO `wp_options` VALUES (496,'wsl_settings_TwitchTV_enabled','','yes');
INSERT INTO `wp_options` VALUES (497,'wsl_settings_TwitchTV_app_id','','yes');
INSERT INTO `wp_options` VALUES (498,'wsl_settings_TwitchTV_app_secret','','yes');
INSERT INTO `wp_options` VALUES (499,'wsl_settings_Mailru_enabled','','yes');
INSERT INTO `wp_options` VALUES (500,'wsl_settings_Mailru_app_id','','yes');
INSERT INTO `wp_options` VALUES (501,'wsl_settings_Mailru_app_secret','','yes');
INSERT INTO `wp_options` VALUES (502,'wsl_settings_Yandex_enabled','','yes');
INSERT INTO `wp_options` VALUES (503,'wsl_settings_Yandex_app_id','','yes');
INSERT INTO `wp_options` VALUES (504,'wsl_settings_Yandex_app_secret','','yes');
INSERT INTO `wp_options` VALUES (505,'wsl_settings_Odnoklassniki_enabled','','yes');
INSERT INTO `wp_options` VALUES (506,'wsl_settings_Odnoklassniki_app_id','','yes');
INSERT INTO `wp_options` VALUES (507,'wsl_settings_Odnoklassniki_app_secret','','yes');
INSERT INTO `wp_options` VALUES (521,'project_cat_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (522,'project_location_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (673,'limit_login_lockouts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (675,'limit_login_lockouts_total','0','no');
INSERT INTO `wp_options` VALUES (676,'limit_login_client_type','REMOTE_ADDR','yes');
INSERT INTO `wp_options` VALUES (677,'limit_login_allowed_retries','4','yes');
INSERT INTO `wp_options` VALUES (678,'limit_login_lockout_duration','1200','yes');
INSERT INTO `wp_options` VALUES (679,'limit_login_allowed_lockouts','4','yes');
INSERT INTO `wp_options` VALUES (680,'limit_login_long_duration','86400','yes');
INSERT INTO `wp_options` VALUES (681,'limit_login_valid_duration','43200','yes');
INSERT INTO `wp_options` VALUES (682,'limit_login_lockout_notify','log','yes');
INSERT INTO `wp_options` VALUES (683,'limit_login_notify_email_after','4','yes');
INSERT INTO `wp_options` VALUES (684,'limit_login_cookies','1','yes');
INSERT INTO `wp_options` VALUES (719,'projectTheme_enable_custom_posting','no','yes');
INSERT INTO `wp_options` VALUES (720,'projectTheme_theme_custom_cat_9','','yes');
INSERT INTO `wp_options` VALUES (721,'projectTheme_theme_custom_cat_11','','yes');
INSERT INTO `wp_options` VALUES (722,'projectTheme_theme_custom_cat_5','','yes');
INSERT INTO `wp_options` VALUES (723,'projectTheme_theme_custom_cat_12','','yes');
INSERT INTO `wp_options` VALUES (724,'projectTheme_theme_custom_cat_3','','yes');
INSERT INTO `wp_options` VALUES (725,'projectTheme_theme_custom_cat_2','','yes');
INSERT INTO `wp_options` VALUES (726,'projectTheme_theme_custom_cat_8','','yes');
INSERT INTO `wp_options` VALUES (727,'projectTheme_theme_custom_cat_10','','yes');
INSERT INTO `wp_options` VALUES (728,'projectTheme_theme_custom_cat_4','','yes');
INSERT INTO `wp_options` VALUES (729,'projectTheme_theme_custom_cat_13','','yes');
INSERT INTO `wp_options` VALUES (730,'projectTheme_theme_custom_cat_7','','yes');
INSERT INTO `wp_options` VALUES (731,'projectTheme_theme_custom_cat_6','','yes');
INSERT INTO `wp_options` VALUES (732,'projectTheme_enable_custom_bidding','no','yes');
INSERT INTO `wp_options` VALUES (733,'projectTheme_theme_bidding_cat_9','','yes');
INSERT INTO `wp_options` VALUES (734,'projectTheme_theme_bidding_cat_11','','yes');
INSERT INTO `wp_options` VALUES (735,'projectTheme_theme_bidding_cat_5','','yes');
INSERT INTO `wp_options` VALUES (736,'projectTheme_theme_bidding_cat_12','','yes');
INSERT INTO `wp_options` VALUES (737,'projectTheme_theme_bidding_cat_3','','yes');
INSERT INTO `wp_options` VALUES (738,'projectTheme_theme_bidding_cat_2','','yes');
INSERT INTO `wp_options` VALUES (739,'projectTheme_theme_bidding_cat_8','','yes');
INSERT INTO `wp_options` VALUES (740,'projectTheme_theme_bidding_cat_10','','yes');
INSERT INTO `wp_options` VALUES (741,'projectTheme_theme_bidding_cat_4','','yes');
INSERT INTO `wp_options` VALUES (742,'projectTheme_theme_bidding_cat_13','','yes');
INSERT INTO `wp_options` VALUES (743,'projectTheme_theme_bidding_cat_7','','yes');
INSERT INTO `wp_options` VALUES (744,'projectTheme_theme_bidding_cat_6','','yes');
INSERT INTO `wp_options` VALUES (745,'projectTheme_sealed_bidding_fee','','yes');
INSERT INTO `wp_options` VALUES (746,'projectTheme_hide_project_fee','','yes');
INSERT INTO `wp_options` VALUES (747,'projectTheme_fee_after_paid','10','yes');
INSERT INTO `wp_options` VALUES (748,'project_theme_min_withdraw','','yes');
INSERT INTO `wp_options` VALUES (773,'_site_transient_timeout_browser_da7e59f9726b059446c54367156443f3','1403814323','yes');
INSERT INTO `wp_options` VALUES (774,'_site_transient_browser_da7e59f9726b059446c54367156443f3','a:8:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"35.0.1916.116\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (791,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1403209619;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (5,6,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (6,7,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (7,8,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (8,9,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (9,10,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (10,11,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (11,12,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (12,13,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (13,14,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (14,15,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (15,16,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (16,17,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (17,18,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (18,19,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (19,20,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (20,21,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (21,22,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (22,23,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (23,24,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (24,25,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (25,26,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (26,27,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (27,28,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (28,29,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (29,30,'_wp_page_template','project-special-page-template.php');
INSERT INTO `wp_postmeta` VALUES (30,8,'_edit_lock','1401460710:1');
INSERT INTO `wp_postmeta` VALUES (31,32,'unpaid','0');
INSERT INTO `wp_postmeta` VALUES (32,32,'featured_paid','0');
INSERT INTO `wp_postmeta` VALUES (33,32,'private_bids_paid','0');
INSERT INTO `wp_postmeta` VALUES (34,32,'hide_project_paid','0');
INSERT INTO `wp_postmeta` VALUES (35,32,'base_fee_paid','0');
INSERT INTO `wp_postmeta` VALUES (40,1,'_edit_lock','1401471151:2');
INSERT INTO `wp_postmeta` VALUES (41,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (42,1,'_wp_trash_meta_time','1401471299');
INSERT INTO `wp_postmeta` VALUES (43,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:5:\"trash\";}');
INSERT INTO `wp_postmeta` VALUES (44,35,'unpaid','0');
INSERT INTO `wp_postmeta` VALUES (45,35,'featured_paid','0');
INSERT INTO `wp_postmeta` VALUES (46,35,'private_bids_paid','0');
INSERT INTO `wp_postmeta` VALUES (47,35,'hide_project_paid','0');
INSERT INTO `wp_postmeta` VALUES (48,35,'base_fee_paid','0');
INSERT INTO `wp_postmeta` VALUES (51,32,'finalised_posted','1');
INSERT INTO `wp_postmeta` VALUES (52,32,'Location','1039W Long Lake Rd');
INSERT INTO `wp_postmeta` VALUES (53,32,'price',' ($ - $)');
INSERT INTO `wp_postmeta` VALUES (54,32,'paid','1');
INSERT INTO `wp_postmeta` VALUES (55,32,'views','4');
INSERT INTO `wp_postmeta` VALUES (56,32,'budgets','');
INSERT INTO `wp_postmeta` VALUES (57,32,'made_me_date','1401538871');
INSERT INTO `wp_postmeta` VALUES (58,32,'closed','1');
INSERT INTO `wp_postmeta` VALUES (59,32,'closed_date','1402038390');
INSERT INTO `wp_postmeta` VALUES (60,32,'ending','1402012936');
INSERT INTO `wp_postmeta` VALUES (61,32,'featured','0');
INSERT INTO `wp_postmeta` VALUES (62,32,'private_bids','0');
INSERT INTO `wp_postmeta` VALUES (63,32,'hide_project','0');
INSERT INTO `wp_postmeta` VALUES (64,32,'image_fee_paid','0');
INSERT INTO `wp_postmeta` VALUES (65,32,'ProjectTheme_send_email_posted_project_not_approved','1');
INSERT INTO `wp_postmeta` VALUES (66,32,'ProjectTheme_send_email_posted_project_not_approved_admin','1');
INSERT INTO `wp_postmeta` VALUES (67,32,'_edit_lock','1401553259:2');
INSERT INTO `wp_postmeta` VALUES (68,32,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (69,32,'subscription_email_sent','111a');
INSERT INTO `wp_postmeta` VALUES (70,32,'ProjectTheme_send_email_posted_project_approved','1');
INSERT INTO `wp_postmeta` VALUES (71,32,'ProjectTheme_send_email_posted_project_approved_admin','1');
INSERT INTO `wp_postmeta` VALUES (72,32,'reverse','no');
INSERT INTO `wp_postmeta` VALUES (73,35,'finalised_posted','1');
INSERT INTO `wp_postmeta` VALUES (74,35,'Location','Maple Dr, Traverse City, MI 49686');
INSERT INTO `wp_postmeta` VALUES (75,35,'price',' ($ - $)');
INSERT INTO `wp_postmeta` VALUES (76,35,'paid','1');
INSERT INTO `wp_postmeta` VALUES (77,35,'views','0');
INSERT INTO `wp_postmeta` VALUES (78,35,'budgets','');
INSERT INTO `wp_postmeta` VALUES (79,35,'made_me_date','1401624866');
INSERT INTO `wp_postmeta` VALUES (80,35,'closed','0');
INSERT INTO `wp_postmeta` VALUES (81,35,'closed_date','0');
INSERT INTO `wp_postmeta` VALUES (82,35,'ending','1404648890');
INSERT INTO `wp_postmeta` VALUES (83,37,'_wp_attached_file','2014/06/Desert.jpg');
INSERT INTO `wp_postmeta` VALUES (84,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2014/06/Desert.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Desert-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Desert-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:7:\"???????\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1205503166;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (85,35,'featured','1');
INSERT INTO `wp_postmeta` VALUES (86,35,'private_bids','0');
INSERT INTO `wp_postmeta` VALUES (87,35,'hide_project','0');
INSERT INTO `wp_postmeta` VALUES (88,35,'image_fee_paid','0');
INSERT INTO `wp_postmeta` VALUES (89,35,'ProjectTheme_send_email_posted_project_not_approved','1');
INSERT INTO `wp_postmeta` VALUES (90,35,'ProjectTheme_send_email_posted_project_not_approved_admin','1');
INSERT INTO `wp_postmeta` VALUES (91,35,'_edit_lock','1401675423:2');
INSERT INTO `wp_postmeta` VALUES (92,35,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (93,35,'subscription_email_sent','111a');
INSERT INTO `wp_postmeta` VALUES (94,35,'ProjectTheme_send_email_posted_project_approved','1');
INSERT INTO `wp_postmeta` VALUES (95,35,'ProjectTheme_send_email_posted_project_approved_admin','1');
INSERT INTO `wp_postmeta` VALUES (96,35,'reverse','no');
INSERT INTO `wp_postmeta` VALUES (97,39,'unpaid','0');
INSERT INTO `wp_postmeta` VALUES (98,39,'featured_paid','0');
INSERT INTO `wp_postmeta` VALUES (99,39,'private_bids_paid','0');
INSERT INTO `wp_postmeta` VALUES (100,39,'hide_project_paid','0');
INSERT INTO `wp_postmeta` VALUES (101,39,'base_fee_paid','0');
INSERT INTO `wp_postmeta` VALUES (102,40,'unpaid','0');
INSERT INTO `wp_postmeta` VALUES (103,40,'featured_paid','0');
INSERT INTO `wp_postmeta` VALUES (104,40,'private_bids_paid','0');
INSERT INTO `wp_postmeta` VALUES (105,40,'hide_project_paid','0');
INSERT INTO `wp_postmeta` VALUES (106,40,'base_fee_paid','0');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-05-02 17:59:26','2014-05-02 17:59:26','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','trash','open','open','','hello-world','','','2014-05-30 17:34:59','2014-05-30 17:34:59','',0,'http://jeremyhoxie.wpengine.com/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (2,1,'2014-05-02 17:59:26','2014-05-02 17:59:26','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://jeremyhoxie.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-05-02 17:59:26','2014-05-02 17:59:26','',0,'http://jeremyhoxie.wpengine.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,2,'2014-05-26 22:17:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-05-26 22:17:46','0000-00-00 00:00:00','',0,'http://jeremyhoxie.wpengine.com/?p=3',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_recently_closed_projects]','Recently Closed Projects','','publish','open','closed','','recently-closed-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_all_blog_posts]','Blog Posts','','publish','open','closed','','blog-posts','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_all_locations]','All Locations','','publish','open','closed','','all-locations','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_all_categories]','All Categories','','publish','open','closed','','all-categories','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_advanced_search]','Advanced Search','','publish','open','closed','','advanced-search','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_provider_search]','Service Provider Search','','publish','open','closed','','service-provider-search','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_post_new]','Post New','','publish','open','closed','','post-new','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_home]','My Account','','publish','open','closed','','my-account','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_personal_info]','Personal Information','','publish','open','closed','','personal-information','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_payments]','Finances','','publish','open','closed','','finances','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_private_messages]','Private Messages','','publish','open','closed','','private-messages','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_feedback]','Feedback/Reviews','','publish','open','closed','','feedbackreviews','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_pay_for_project]','Pay for Project','','publish','open','closed','','pay-for-project','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_pay_with_credits]','Virtual Cash Payment','','publish','open','closed','','virtual-cash-payment','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_won_projects]','Projects I\'ve Won','','publish','open','closed','','projects-ive-won','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_bid_projects]','Projects I\'ve Bid','','publish','open','closed','','projects-ive-bid','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_delivered_projects]','Delivered Projects','','publish','open','closed','','delivered-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_outstanding_projects]','Outstanding Projects','','publish','open','closed','','outstanding-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_awaiting_payments]','Awaiting Payments','','publish','open','closed','','awaiting-payments','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_active_projects]','Active Projects','','publish','open','closed','','active-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_closed_projects]','Closed Projects','','publish','open','closed','','closed-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_unpublish_projects]','Unpublished Projects','','publish','open','closed','','unpublished-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_outstanding_payments]','Outstanding Payments','','publish','open','closed','','outstanding-payments','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_completed_projects]','Completed Payments','','publish','open','closed','','completed-payments','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=28',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_my_account_awaiting_completion]','Awaiting Completion','','publish','open','closed','','awaiting-completion','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',12,'http://jeremyhoxie.wpengine.com/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2014-05-27 13:35:38','2014-05-27 13:35:38','[project_theme_all_projects]','All Posted Projects','','publish','open','closed','','all-posted-projects','','','2014-05-27 13:35:38','2014-05-27 13:35:38','',0,'http://jeremyhoxie.wpengine.com/?page_id=30',0,'page','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2014-05-30 14:40:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-05-30 14:40:33','0000-00-00 00:00:00','',0,'http://jeremyhoxie.wpengine.com/?p=31',0,'post','',0);
INSERT INTO `wp_posts` VALUES (32,2,'2014-05-31 12:23:19','2014-05-31 16:23:19','Need my lawn mowed.','Lawn Mowed','','publish','open','open','','lawn-mowed','','','2014-05-31 12:23:19','2014-05-31 16:23:19','',0,'http://jeremyhoxie.wpengine.com/?post_type=project&#038;p=32',0,'project','',0);
INSERT INTO `wp_posts` VALUES (35,3,'2014-06-01 22:18:17','2014-06-02 02:18:17','35 windows. Both inside and out need washed. 15 are above head height.','I need my windows washed','','publish','open','open','','need-windows-washed','','','2014-06-01 22:18:17','2014-06-02 02:18:17','',0,'http://jeremyhoxie.wpengine.com/?post_type=project&#038;p=35',0,'project','',0);
INSERT INTO `wp_posts` VALUES (37,3,'2014-06-01 12:13:53','2014-06-01 16:13:53','','Uploaded image Desert.jpg','','inherit','open','open','','uploaded-image-desert-jpg','','','2014-06-01 12:13:53','2014-06-01 16:13:53','',35,'',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,4,'2014-06-01 22:21:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-06-01 22:21:13','0000-00-00 00:00:00','',0,'http://jeremyhoxie.wpengine.com/?p=38',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,3,'2014-06-05 14:57:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-06-05 14:57:41','0000-00-00 00:00:00','',0,'http://jeremyhoxie.wpengine.com/?post_type=project&p=39',0,'project','',0);
INSERT INTO `wp_posts` VALUES (40,4,'2014-06-06 23:24:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-06-06 23:24:53','0000-00-00 00:00:00','',0,'http://jeremyhoxie.wpengine.com/?post_type=project&p=40',0,'project','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_bidding_intervals`
--

DROP TABLE IF EXISTS `wp_project_bidding_intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_bidding_intervals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bidding_interval_name` varchar(255) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `high_limit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_bidding_intervals`
--

LOCK TABLES `wp_project_bidding_intervals` WRITE;
/*!40000 ALTER TABLE `wp_project_bidding_intervals` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_bidding_intervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_bids`
--

DROP TABLE IF EXISTS `wp_project_bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_bids` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_made` bigint(20) NOT NULL,
  `bid` double NOT NULL,
  `pid` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `winner` tinyint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `reserved1` varchar(255) NOT NULL DEFAULT '0',
  `date_choosen` bigint(20) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `days_done` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_bids`
--

LOCK TABLES `wp_project_bids` WRITE;
/*!40000 ALTER TABLE `wp_project_bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_coupons`
--

DROP TABLE IF EXISTS `wp_project_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_coupons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_solid_reduction` varchar(255) NOT NULL,
  `coupon_percent_reduction` varchar(255) NOT NULL,
  `ending` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `datemprojecte` varchar(255) NOT NULL,
  `featured_free` int(11) NOT NULL DEFAULT '0',
  `pause` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_coupons`
--

LOCK TABLES `wp_project_coupons` WRITE;
/*!40000 ALTER TABLE `wp_project_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_custom_fields`
--

DROP TABLE IF EXISTS `wp_project_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_custom_fields` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tp` varchar(48) NOT NULL,
  `ordr` int(11) NOT NULL,
  `cate` varchar(255) NOT NULL,
  `pause` int(11) NOT NULL DEFAULT '1',
  `step_me` varchar(255) NOT NULL,
  `content_box6` text NOT NULL,
  `is_mandatory` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_custom_fields`
--

LOCK TABLES `wp_project_custom_fields` WRITE;
/*!40000 ALTER TABLE `wp_project_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_custom_options`
--

DROP TABLE IF EXISTS `wp_project_custom_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_custom_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valval` varchar(255) NOT NULL,
  `ordr` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_custom_options`
--

LOCK TABLES `wp_project_custom_options` WRITE;
/*!40000 ALTER TABLE `wp_project_custom_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_custom_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_custom_relations`
--

DROP TABLE IF EXISTS `wp_project_custom_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_custom_relations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `custid` bigint(20) NOT NULL,
  `catid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_custom_relations`
--

LOCK TABLES `wp_project_custom_relations` WRITE;
/*!40000 ALTER TABLE `wp_project_custom_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_custom_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_email_alerts`
--

DROP TABLE IF EXISTS `wp_project_email_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_email_alerts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_email_alerts`
--

LOCK TABLES `wp_project_email_alerts` WRITE;
/*!40000 ALTER TABLE `wp_project_email_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_email_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_email_alerts_locs`
--

DROP TABLE IF EXISTS `wp_project_email_alerts_locs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_email_alerts_locs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_email_alerts_locs`
--

LOCK TABLES `wp_project_email_alerts_locs` WRITE;
/*!40000 ALTER TABLE `wp_project_email_alerts_locs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_email_alerts_locs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_escrow`
--

DROP TABLE IF EXISTS `wp_project_escrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_escrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) NOT NULL,
  `toid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `amount` double NOT NULL,
  `datemade` int(11) NOT NULL,
  `releasedate` int(11) NOT NULL,
  `released` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_escrow`
--

LOCK TABLES `wp_project_escrow` WRITE;
/*!40000 ALTER TABLE `wp_project_escrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_escrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_message_board`
--

DROP TABLE IF EXISTS `wp_project_message_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_message_board` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rd` tinyint(4) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL,
  `datemade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_message_board`
--

LOCK TABLES `wp_project_message_board` WRITE;
/*!40000 ALTER TABLE `wp_project_message_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_message_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_packs`
--

DROP TABLE IF EXISTS `wp_project_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_packs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(255) NOT NULL,
  `projects_number` int(11) NOT NULL DEFAULT '0',
  `pack_cost` varchar(255) NOT NULL,
  `datemprojecte` varchar(255) NOT NULL DEFAULT '0',
  `featured_free` int(11) NOT NULL DEFAULT '0',
  `pause` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_packs`
--

LOCK TABLES `wp_project_packs` WRITE;
/*!40000 ALTER TABLE `wp_project_packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_payment_transactions`
--

DROP TABLE IF EXISTS `wp_project_payment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_payment_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `datemade` int(11) NOT NULL,
  `amount` double NOT NULL,
  `tp` tinyint(4) NOT NULL DEFAULT '1',
  `uid2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_payment_transactions`
--

LOCK TABLES `wp_project_payment_transactions` WRITE;
/*!40000 ALTER TABLE `wp_project_payment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_payment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_pm`
--

DROP TABLE IF EXISTS `wp_project_pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_pm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subject` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rd` tinyint(4) NOT NULL DEFAULT '0',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL,
  `datemade` int(11) NOT NULL,
  `readdate` int(11) NOT NULL,
  `initiator` int(11) NOT NULL,
  `attached` int(11) NOT NULL,
  `show_to_source` tinyint(4) NOT NULL DEFAULT '1',
  `show_to_destination` tinyint(4) NOT NULL DEFAULT '1',
  `file_attached` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `approved_on` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_pm`
--

LOCK TABLES `wp_project_pm` WRITE;
/*!40000 ALTER TABLE `wp_project_pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_ratings`
--

DROP TABLE IF EXISTS `wp_project_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `fromuser` bigint(20) NOT NULL,
  `touser` bigint(20) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `grade` tinyint(4) NOT NULL,
  `datemade` bigint(20) NOT NULL,
  `awarded` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_ratings`
--

LOCK TABLES `wp_project_ratings` WRITE;
/*!40000 ALTER TABLE `wp_project_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_transactions`
--

DROP TABLE IF EXISTS `wp_project_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `datemprojecte` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `mc_currency` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `projectdress_country` varchar(255) NOT NULL,
  `projectdress_state` varchar(255) NOT NULL,
  `projectdress_country_code` varchar(255) NOT NULL,
  `projectdress_zip` varchar(255) NOT NULL,
  `projectdress_street` varchar(255) NOT NULL,
  `mc_fee` varchar(255) NOT NULL,
  `mc_gross` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_transactions`
--

LOCK TABLES `wp_project_transactions` WRITE;
/*!40000 ALTER TABLE `wp_project_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_user_custom_fields`
--

DROP TABLE IF EXISTS `wp_project_user_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_user_custom_fields` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tp` varchar(48) NOT NULL,
  `ordr` int(11) NOT NULL,
  `cate` varchar(255) NOT NULL,
  `pause` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_user_custom_fields`
--

LOCK TABLES `wp_project_user_custom_fields` WRITE;
/*!40000 ALTER TABLE `wp_project_user_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_user_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_user_custom_options`
--

DROP TABLE IF EXISTS `wp_project_user_custom_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_user_custom_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valval` varchar(255) NOT NULL,
  `ordr` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_user_custom_options`
--

LOCK TABLES `wp_project_user_custom_options` WRITE;
/*!40000 ALTER TABLE `wp_project_user_custom_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_user_custom_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_user_custom_relations`
--

DROP TABLE IF EXISTS `wp_project_user_custom_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_user_custom_relations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `custid` bigint(20) NOT NULL,
  `catid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_user_custom_relations`
--

LOCK TABLES `wp_project_user_custom_relations` WRITE;
/*!40000 ALTER TABLE `wp_project_user_custom_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_user_custom_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_project_withdraw`
--

DROP TABLE IF EXISTS `wp_project_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_project_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `datemade` int(11) NOT NULL,
  `done` int(11) NOT NULL,
  `datedone` int(11) NOT NULL,
  `payeremail` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `amount` double NOT NULL,
  `methods` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rejected` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_project_withdraw`
--

LOCK TABLES `wp_project_withdraw` WRITE;
/*!40000 ALTER TABLE `wp_project_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_project_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,14,0);
INSERT INTO `wp_term_relationships` VALUES (35,6,0);
INSERT INTO `wp_term_relationships` VALUES (35,14,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'project_cat','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'project_cat','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'project_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'project_location','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Lawn Care','lawn_care',0);
INSERT INTO `wp_terms` VALUES (3,'Landscaping','landscaping',0);
INSERT INTO `wp_terms` VALUES (4,'Snow Removal','snow_removal',0);
INSERT INTO `wp_terms` VALUES (5,'Construction','construction',0);
INSERT INTO `wp_terms` VALUES (6,'Window washing','window_washing',0);
INSERT INTO `wp_terms` VALUES (7,'Tree Removal','tree_removal',0);
INSERT INTO `wp_terms` VALUES (8,'Maid Services','maid_services',0);
INSERT INTO `wp_terms` VALUES (9,'Babysitting','babysitting',0);
INSERT INTO `wp_terms` VALUES (10,'Painting','painting',0);
INSERT INTO `wp_terms` VALUES (11,'Catering','catering',0);
INSERT INTO `wp_terms` VALUES (12,'Dock Handling','dock_handling',0);
INSERT INTO `wp_terms` VALUES (13,'Towing','towing',0);
INSERT INTO `wp_terms` VALUES (14,'Traverse City','traverse-city',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (2,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'nickname','wpengine');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (14,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (15,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (16,2,'nickname','BlooCollar');
INSERT INTO `wp_usermeta` VALUES (17,2,'description','');
INSERT INTO `wp_usermeta` VALUES (18,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (19,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (20,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (21,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (22,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (23,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (24,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (25,2,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (26,2,'wp_dashboard_quick_press_last_post_id','3');
INSERT INTO `wp_usermeta` VALUES (27,2,'dismissed_wp_pointers','wp390_widgets,wp350_media');
INSERT INTO `wp_usermeta` VALUES (28,1,'wp_dashboard_quick_press_last_post_id','31');
INSERT INTO `wp_usermeta` VALUES (31,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (32,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (33,3,'nickname','msutyler');
INSERT INTO `wp_usermeta` VALUES (34,3,'description','');
INSERT INTO `wp_usermeta` VALUES (35,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (36,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (37,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (38,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (39,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (40,3,'wp_capabilities','a:1:{s:14:\"business_owner\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (41,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (42,3,'user_tp','business_owner');
INSERT INTO `wp_usermeta` VALUES (43,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (44,2,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (45,2,'metaboxhidden_nav-menus','a:5:{i:0;s:8:\"add-post\";i:1;s:11:\"add-project\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-project_cat\";i:4;s:20:\"add-project_location\";}');
INSERT INTO `wp_usermeta` VALUES (47,2,'wp_user-settings','mfold=o');
INSERT INTO `wp_usermeta` VALUES (48,2,'wp_user-settings-time','1401474260');
INSERT INTO `wp_usermeta` VALUES (49,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (50,1,'metaboxhidden_nav-menus','a:5:{i:0;s:8:\"add-post\";i:1;s:11:\"add-project\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-project_cat\";i:4;s:20:\"add-project_location\";}');
INSERT INTO `wp_usermeta` VALUES (51,2,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (52,2,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (53,2,'wpseo_metakey','');
INSERT INTO `wp_usermeta` VALUES (54,2,'_yoast_wpseo_profile_updated','1401552646');
INSERT INTO `wp_usermeta` VALUES (55,2,'googleplus','');
INSERT INTO `wp_usermeta` VALUES (56,2,'twitter','BlooCollar');
INSERT INTO `wp_usermeta` VALUES (57,2,'facebook','BlooCollar');
INSERT INTO `wp_usermeta` VALUES (58,2,'user_description','');
INSERT INTO `wp_usermeta` VALUES (59,2,'per_hour','');
INSERT INTO `wp_usermeta` VALUES (60,2,'user_location','');
INSERT INTO `wp_usermeta` VALUES (61,2,'user_city','');
INSERT INTO `wp_usermeta` VALUES (62,2,'paypal_email','');
INSERT INTO `wp_usermeta` VALUES (63,2,'payza_email','');
INSERT INTO `wp_usermeta` VALUES (64,2,'moneybookers_email','');
INSERT INTO `wp_usermeta` VALUES (65,2,'user_url','');
INSERT INTO `wp_usermeta` VALUES (67,2,'credits','0');
INSERT INTO `wp_usermeta` VALUES (68,3,'user_description','');
INSERT INTO `wp_usermeta` VALUES (69,3,'per_hour','');
INSERT INTO `wp_usermeta` VALUES (70,3,'user_location','14');
INSERT INTO `wp_usermeta` VALUES (71,3,'user_city','');
INSERT INTO `wp_usermeta` VALUES (72,3,'paypal_email','');
INSERT INTO `wp_usermeta` VALUES (73,3,'payza_email','');
INSERT INTO `wp_usermeta` VALUES (74,3,'moneybookers_email','');
INSERT INTO `wp_usermeta` VALUES (75,3,'user_url','');
INSERT INTO `wp_usermeta` VALUES (77,3,'avatar','http://jeremyhoxie.wpengine.com/wp-content/uploads/2014/05/image.jpg');
INSERT INTO `wp_usermeta` VALUES (79,3,'wp_user-settings','mfold=o');
INSERT INTO `wp_usermeta` VALUES (80,3,'wp_user-settings-time','1401638736');
INSERT INTO `wp_usermeta` VALUES (81,3,'credits','0');
INSERT INTO `wp_usermeta` VALUES (82,4,'first_name','');
INSERT INTO `wp_usermeta` VALUES (83,4,'last_name','');
INSERT INTO `wp_usermeta` VALUES (84,4,'nickname','tyler');
INSERT INTO `wp_usermeta` VALUES (85,4,'description','');
INSERT INTO `wp_usermeta` VALUES (86,4,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (87,4,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (88,4,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (89,4,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (90,4,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (91,4,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (92,4,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (93,4,'user_tp','service_provider');
INSERT INTO `wp_usermeta` VALUES (94,4,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (95,4,'user_description','');
INSERT INTO `wp_usermeta` VALUES (96,4,'per_hour','');
INSERT INTO `wp_usermeta` VALUES (97,4,'user_location','');
INSERT INTO `wp_usermeta` VALUES (98,4,'user_city','');
INSERT INTO `wp_usermeta` VALUES (99,4,'paypal_email','');
INSERT INTO `wp_usermeta` VALUES (100,4,'payza_email','');
INSERT INTO `wp_usermeta` VALUES (101,4,'moneybookers_email','');
INSERT INTO `wp_usermeta` VALUES (102,4,'user_url','');
INSERT INTO `wp_usermeta` VALUES (104,4,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (105,4,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (106,4,'wpseo_metakey','');
INSERT INTO `wp_usermeta` VALUES (107,4,'_yoast_wpseo_profile_updated','1401675459');
INSERT INTO `wp_usermeta` VALUES (108,4,'googleplus','');
INSERT INTO `wp_usermeta` VALUES (109,4,'twitter','');
INSERT INTO `wp_usermeta` VALUES (110,4,'facebook','');
INSERT INTO `wp_usermeta` VALUES (111,4,'wp_dashboard_quick_press_last_post_id','38');
INSERT INTO `wp_usermeta` VALUES (112,4,'credits','0');
INSERT INTO `wp_usermeta` VALUES (113,1,'credits','0');
INSERT INTO `wp_usermeta` VALUES (114,3,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (115,3,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (116,3,'wpseo_metakey','');
INSERT INTO `wp_usermeta` VALUES (117,3,'_yoast_wpseo_profile_updated','1401938326');
INSERT INTO `wp_usermeta` VALUES (118,3,'googleplus','');
INSERT INTO `wp_usermeta` VALUES (119,3,'twitter','');
INSERT INTO `wp_usermeta` VALUES (120,3,'facebook','');
INSERT INTO `wp_usermeta` VALUES (121,4,'wp_user-settings','');
INSERT INTO `wp_usermeta` VALUES (122,4,'wp_user-settings-time','1402111173');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$B5Y36S2XrdC2Ax7OvPwLyy2Udb.7Gz1','wpengine','bitbucket@wpengine.com','http://wpengine.com','2014-05-02 17:59:26','',0,'wpengine');
INSERT INTO `wp_users` VALUES (2,'bloocollar','$P$Bnjs5.MMXk4NeQNgJO7mbfFQJHgrsH1','bloocollar','jeremy.hoxie@gmail.com','http://jeremyhoxie.wpengine.com','2014-05-26 22:13:56','',0,'BlooCollar');
INSERT INTO `wp_users` VALUES (3,'msutyler','$P$B2GOABuYwByrdtYfj2W0HA7SdaPACW.','msutyler','msutyler@gmail.com','','2014-05-30 17:32:03','',0,'msutyler');
INSERT INTO `wp_users` VALUES (4,'tyler','$P$BeuxUL7Kikb29YbYcFYV6SBN369AeE/','tyler','tyler@bloocollar.com','','2014-06-02 02:15:07','',0,'tyler');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wsluserscontacts`
--

DROP TABLE IF EXISTS `wp_wsluserscontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wsluserscontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wsluserscontacts`
--

LOCK TABLES `wp_wsluserscontacts` WRITE;
/*!40000 ALTER TABLE `wp_wsluserscontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wsluserscontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wslusersprofiles`
--

DROP TABLE IF EXISTS `wp_wslusersprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wslusersprofiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `object_sha` varchar(255) NOT NULL COMMENT 'to check if hybridauth user profile object has changed from last time, if yes we update the user profile here ',
  `identifier` varchar(255) NOT NULL,
  `profileurl` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `photourl` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `birthmonth` varchar(255) NOT NULL,
  `birthyear` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailverified` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wslusersprofiles`
--

LOCK TABLES `wp_wslusersprofiles` WRITE;
/*!40000 ALTER TABLE `wp_wslusersprofiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wslusersprofiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-24  0:15:34
