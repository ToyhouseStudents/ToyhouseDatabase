-- MySQL dump 10.13  Distrib 5.5.27, for Linux (i686)
--
-- Host: localhost    Database: toyhouse
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `calendar2`
--

DROP TABLE IF EXISTS `calendar2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '1',
  `summary` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `last_end` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `rrule` varchar(255) DEFAULT NULL,
  `recurrence_id` datetime DEFAULT NULL,
  `visibility` int(1) DEFAULT '1',
  `uid` varchar(255) NOT NULL,
  `last_modified` datetime NOT NULL,
  `uri` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar2`
--

LOCK TABLES `calendar2` WRITE;
/*!40000 ALTER TABLE `calendar2` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar2_excluded_dates`
--

DROP TABLE IF EXISTS `calendar2_excluded_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar2_excluded_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar2_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar2_excluded_dates`
--

LOCK TABLES `calendar2_excluded_dates` WRITE;
/*!40000 ALTER TABLE `calendar2_excluded_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar2_excluded_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar2_user_relation`
--

DROP TABLE IF EXISTS `calendar2_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar2_user_relation` (
  `calendar2_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirmation_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calendar2_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar2_user_relation`
--

LOCK TABLES `calendar2_user_relation` WRITE;
/*!40000 ALTER TABLE `calendar2_user_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar2_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `key_value` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `firstphone` varchar(255) NOT NULL,
  `secondphone` varchar(255) NOT NULL,
  `mobilephone` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `private` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_manager`
--

DROP TABLE IF EXISTS `database_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `table_field` varchar(60) DEFAULT NULL,
  `form_tab` int(11) DEFAULT NULL,
  `form_label` varchar(255) DEFAULT NULL,
  `form_type` varchar(50) DEFAULT NULL,
  `form_position` int(11) DEFAULT NULL,
  `form_columns` int(11) DEFAULT NULL,
  `form_regexp` varchar(255) DEFAULT NULL,
  `form_range` text,
  `default_value` varchar(255) DEFAULT NULL,
  `list_position` int(11) DEFAULT NULL,
  `list_align` varchar(20) DEFAULT NULL,
  `list_use_filter` int(4) DEFAULT NULL,
  `alt_position` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_integer` int(4) DEFAULT NULL,
  `is_required` int(4) DEFAULT NULL,
  `is_unique` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_manager`
--

LOCK TABLES `database_manager` WRITE;
/*!40000 ALTER TABLE `database_manager` DISABLE KEYS */;
INSERT INTO `database_manager` VALUES (1,'Project','title',1,'Title','text',1,1,NULL,NULL,NULL,1,'left',1,2,'1',0,1,0),(2,'Project','notes',1,'Notes','textarea',2,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(3,'Project','project_id',1,'Parent','selectValues',3,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(4,'Project','start_date',1,'Start date','date',4,1,NULL,NULL,NULL,3,'center',1,3,'1',0,0,0),(5,'Project','end_date',1,'End date','date',5,1,NULL,NULL,NULL,4,'center',1,4,'1',0,0,0),(6,'Project','priority',1,'Priority','rating',6,1,NULL,'10','5',5,'center',1,5,'1',1,0,0),(7,'Project','current_status',1,'Current status','selectValues',7,1,NULL,'1#Offered|2#Ordered|3#Working|4#Ended|5#Stopped|6#Re-Opened|7#Waiting','1',6,'center',1,6,'1',1,0,0),(8,'Project','complete_percent',1,'Complete percent','percentage',8,1,NULL,NULL,NULL,7,'center',1,7,'1',0,0,0),(9,'Project','budget',1,'Budget','text',9,1,NULL,NULL,NULL,0,NULL,1,8,'1',0,0,0),(10,'Project','hourly_wage_rate',1,'Hourly wage rate','text',10,1,NULL,NULL,NULL,0,NULL,1,0,'0',0,0,0),(11,'Project','contact_id',1,'Contact','selectValues',11,1,NULL,'Contact#id#name',NULL,0,NULL,1,9,'1',1,0,0),(12,'Contact','name',1,'Name','text',1,1,NULL,NULL,NULL,1,'left',1,0,'1',0,1,0),(13,'Contact','email',1,'E-Mail','text',2,1,NULL,NULL,NULL,2,'left',1,0,'1',0,0,0),(14,'Contact','company',1,'Company','text',3,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(15,'Contact','firstphone',1,'First phone','text',4,1,NULL,NULL,NULL,3,'left',1,0,'1',0,0,0),(16,'Contact','secondphone',1,'Second phone','text',5,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(17,'Contact','mobilephone',1,'Mobile phone','text',6,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(18,'Contact','street',1,'Street','text',7,1,NULL,NULL,NULL,4,'left',1,0,'1',0,0,0),(19,'Contact','city',1,'City','text',8,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(20,'Contact','zipcode',1,'Zip code','text',9,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(21,'Contact','country',1,'Country','text',10,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(22,'Contact','comment',1,'Comment','textarea',11,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(23,'Contact','private',1,'Private','selectValues',12,1,NULL,'0#No|1#Yes','0',5,'center',1,0,'1',1,0,0),(24,'Filemanager','title',1,'Title','text',1,1,NULL,NULL,NULL,1,'center',1,0,'1',0,1,0),(25,'Filemanager','comments',1,'Comments','textarea',2,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(26,'Filemanager','project_id',1,'Project','selectValues',3,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(27,'Filemanager','files',1,'Upload','upload',5,1,NULL,NULL,NULL,3,'center',1,0,'1',0,1,0),(28,'Helpdesk','title',1,'Title','text',1,1,NULL,NULL,NULL,1,'center',1,0,'1',0,1,0),(29,'Helpdesk','assigned',1,'Assigned','selectValues',3,1,NULL,'User#id#lastname',NULL,4,'center',1,0,'1',1,0,0),(30,'Helpdesk','date',1,'Date','display',4,1,NULL,NULL,NULL,2,'center',1,0,'1',0,1,0),(31,'Helpdesk','project_id',1,'Project','selectValues',6,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(32,'Helpdesk','priority',1,'Priority','rating',7,1,NULL,'10','5',5,'center',1,0,'1',1,0,0),(33,'Helpdesk','attachments',1,'Attachments','upload',8,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(34,'Helpdesk','description',1,'Description','textarea',11,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(35,'Helpdesk','status',1,'Status','selectValues',12,1,NULL,'1#Open|2#Assigned|3#Solved|4#Verified|5#Closed','1',6,'center',1,0,'1',1,1,0),(36,'Helpdesk','due_date',1,'Due date','date',5,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(37,'Helpdesk','author',1,'Author','display',2,1,NULL,'User#id#lastname',NULL,3,'center',1,0,'1',1,1,0),(38,'Helpdesk','solved_by',1,'Solved by','display',9,1,NULL,'User#id#lastname',NULL,0,NULL,1,0,'1',1,0,0),(39,'Helpdesk','solved_date',1,'Solved date','display',10,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(40,'Helpdesk','contact_id',1,'Contact','selectValues',13,1,NULL,'Contact#id#name',NULL,0,NULL,1,0,'1',1,0,0),(41,'Minutes','title',1,'Title','text',1,1,NULL,NULL,NULL,3,'center',1,0,'1',0,1,0),(42,'Minutes','meeting_datetime',1,'Start','datetime',2,1,NULL,NULL,NULL,1,'center',1,0,'1',0,1,0),(43,'Minutes','end_time',1,'End','time',3,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(44,'Minutes','project_id',1,'Project','selectValues',4,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(45,'Minutes','description',1,'Description','textarea',5,1,NULL,NULL,NULL,4,'center',1,0,'1',0,0,0),(46,'Minutes','place',1,'Place','text',6,1,NULL,NULL,NULL,5,'center',1,0,'1',0,0,0),(47,'Minutes','moderator',1,'Moderator','text',7,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(48,'Minutes','participants_invited',2,'Invited','multipleSelectValues',8,1,NULL,'User#id#username',NULL,0,NULL,1,0,'1',0,0,0),(49,'Minutes','participants_attending',2,'Attending','multipleSelectValues',9,1,NULL,'User#id#username',NULL,0,NULL,1,0,'1',0,0,0),(50,'Minutes','participants_excused',2,'Excused','multipleSelectValues',10,1,NULL,'User#id#username',NULL,0,NULL,1,0,'1',0,0,0),(51,'Minutes','item_status',1,'Status','selectValues',11,1,NULL,'1#Planned|2#Empty|3#Filled|4#Final','1',6,'center',1,0,'1',1,0,0),(52,'Note','project_id',1,'Project','selectValues',3,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(53,'Note','title',1,'Title','text',1,1,NULL,NULL,NULL,1,'left',1,2,'1',0,1,0),(54,'Note','comments',1,'Comments','textarea',2,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(55,'Todo','title',1,'Title','text',1,1,NULL,NULL,NULL,1,'left',1,2,'1',0,1,0),(56,'Todo','notes',1,'Notes','textarea',2,1,NULL,NULL,NULL,0,NULL,1,0,'1',0,0,0),(57,'Todo','start_date',1,'Start date','date',4,1,NULL,NULL,NULL,3,'center',1,3,'1',0,0,0),(58,'Todo','end_date',1,'End date','date',5,1,NULL,NULL,NULL,4,'center',1,4,'1',0,0,0),(59,'Todo','priority',1,'Priority','rating',6,1,NULL,'10','5',5,'center',1,5,'1',1,0,0),(60,'Todo','current_status',1,'Current status','selectValues',7,1,NULL,'1#Waiting|2#Accepted|3#Working|4#Stopped|5#Ended','1',7,'center',1,6,'1',1,0,0),(61,'Todo','project_id',1,'Project','selectValues',3,1,NULL,'Project#id#title',NULL,0,NULL,1,0,'1',1,1,0),(62,'Todo','user_id',1,'User','selectValues',8,1,NULL,'User#id#lastname',NULL,6,'left',1,7,'1',1,0,0);
/*!40000 ALTER TABLE `database_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1350218576'),('plugin_run_once','1350218576'),('elgg_widget_run_once','1350218576'),('installed','1350218605'),('path','/opt/lampp/htdocs/elgg/html/'),('dataroot','/opt/lampp/htdocs/elgg/data/'),('default_site','1'),('version','2012071100'),('simplecache_enabled','1'),('system_cache_enabled','1'),('processed_upgrades','a:40:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1350218644'),('simplecache_lastcached_default','1350218644'),('__site_secret__','cd89b57dac72b498020308298ee34ea6');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1350218605,1350218605,1350218605,'yes'),(2,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(3,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(4,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(5,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(6,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(7,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(8,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(9,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(10,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(11,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(12,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(13,'object',2,1,1,1,2,1350218605,1350218605,1350218605,'yes'),(14,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(15,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(16,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(17,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(18,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(19,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(20,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(21,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(22,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(23,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(24,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(25,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(26,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(27,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(28,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(29,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(30,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(31,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(32,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(33,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(34,'object',2,1,1,1,2,1350218606,1350218606,1350218606,'yes'),(35,'user',0,0,1,0,2,1350218642,1350218642,1350218642,'yes'),(36,'object',3,35,1,35,0,1350218642,1350218642,1350218642,'yes'),(37,'object',3,35,1,35,0,1350218642,1350218642,1350218642,'yes'),(38,'object',3,35,1,35,0,1350218642,1350218642,1350218642,'yes'),(39,'object',3,35,1,35,0,1350218642,1350218642,1350218642,'yes'),(40,'object',3,35,1,35,0,1350218642,1350218642,1350218642,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1350218606),(2,3,'active_plugin',1,1350218606),(3,11,'active_plugin',1,1350218606),(4,12,'active_plugin',1,1350218606),(5,13,'active_plugin',1,1350218606),(6,14,'active_plugin',1,1350218606),(7,15,'active_plugin',1,1350218606),(8,16,'active_plugin',1,1350218606),(9,17,'active_plugin',1,1350218606),(10,18,'active_plugin',1,1350218606),(11,19,'active_plugin',1,1350218606),(12,20,'active_plugin',1,1350218606),(13,21,'active_plugin',1,1350218606),(14,22,'active_plugin',1,1350218606),(15,24,'active_plugin',1,1350218606),(16,25,'active_plugin',1,1350218606),(17,26,'active_plugin',1,1350218606),(18,27,'active_plugin',1,1350218606),(19,29,'active_plugin',1,1350218606),(20,30,'active_plugin',1,1350218606),(21,33,'active_plugin',1,1350218606),(22,34,'active_plugin',1,1350218606),(23,35,'member_of_site',1,1350218642);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1350218605,'yes'),(2,35,3,4,'text',35,2,1350218642,'yes'),(3,35,5,4,'text',0,2,1350218642,'yes'),(4,35,6,7,'text',0,2,1350218642,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'toyhouse.database@gmail.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'oauth_api',''),(24,'pages',''),(25,'profile',''),(26,'reportedcontent',''),(27,'search',''),(28,'tagcloud',''),(29,'thewire',''),(30,'tinymce',''),(31,'twitter',''),(32,'twitter_api',''),(33,'uservalidationbyemail',''),(34,'zaudio',''),(36,'',''),(37,'',''),(38,'',''),(39,'',''),(40,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,33,'elgg:internal:priority','32'),(33,34,'elgg:internal:priority','33'),(34,36,'handler','control_panel'),(35,36,'context','admin'),(36,36,'column','1'),(37,36,'order','0'),(38,37,'handler','admin_welcome'),(39,37,'context','admin'),(40,37,'order','10'),(41,37,'column','1'),(42,38,'handler','online_users'),(43,38,'context','admin'),(44,38,'column','2'),(45,38,'order','0'),(46,39,'handler','new_users'),(47,39,'context','admin'),(48,39,'order','10'),(49,39,'column','2'),(50,40,'handler','content_stats'),(51,40,'context','admin'),(52,40,'order','20'),(53,40,'column','2'),(54,38,'num_display','8'),(55,39,'num_display','5'),(56,40,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'ToyhouseChina','','http://166.111.59.15/elgg/html/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218605,'59.66.190.156'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(32,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(33,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1350218606,'59.66.190.156'),(34,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(35,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(36,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(37,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(38,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(39,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(40,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(41,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(42,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(43,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(44,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(45,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(46,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1350218606,'59.66.190.156'),(47,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1350218642,'59.66.190.156'),(48,35,'ElggUser','user','','create',0,0,2,'yes',1350218642,'59.66.190.156'),(49,2,'ElggMetadata','metadata','notification:method:email','create',0,35,2,'yes',1350218642,'59.66.190.156'),(50,36,'ElggWidget','object','widget','create',0,35,0,'yes',1350218642,'59.66.190.156'),(51,37,'ElggWidget','object','widget','create',0,35,0,'yes',1350218642,'59.66.190.156'),(52,38,'ElggWidget','object','widget','create',0,35,0,'yes',1350218642,'59.66.190.156'),(53,39,'ElggWidget','object','widget','create',0,35,0,'yes',1350218642,'59.66.190.156'),(54,40,'ElggWidget','object','widget','create',0,35,0,'yes',1350218642,'59.66.190.156'),(55,35,'ElggUser','user','','make_admin',0,0,2,'yes',1350218642,'59.66.190.156'),(56,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1350218642,'59.66.190.156'),(57,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1350218642,'59.66.190.156'),(58,35,'ElggUser','user','','update',35,0,2,'yes',1350218642,'59.66.190.156'),(59,35,'ElggUser','user','','login',35,0,2,'yes',1350218642,'59.66.190.156');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (35,'ToyhouseChina','admin','5c98c14ce74bab2c8d650320d5e82bd3','5c24fc2f','toyhouse.database@gmail.com','en','','no','yes',1350218735,1350218733,1350218642,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('htk21h3qtplofekjchubk3mgt1',1350218735,'__elgg_session|s:32:\"b21e3eee74ee75e88f2aa07f630ca6cb\";user|O:8:\"ElggUser\":8:{s:15:\"\0*\0url_override\";N;s:16:\"\0*\0icon_override\";N;s:16:\"\0*\0temp_metadata\";a:0:{}s:19:\"\0*\0temp_annotations\";a:0:{}s:24:\"\0*\0temp_private_settings\";a:0:{}s:11:\"\0*\0volatile\";a:0:{}s:13:\"\0*\0attributes\";a:25:{s:12:\"time_created\";s:10:\"1350218642\";s:4:\"guid\";i:35;s:4:\"type\";s:4:\"user\";s:7:\"subtype\";s:1:\"0\";s:10:\"owner_guid\";s:1:\"0\";s:14:\"container_guid\";s:1:\"0\";s:9:\"site_guid\";s:1:\"1\";s:9:\"access_id\";s:1:\"2\";s:12:\"time_updated\";s:10:\"1350218642\";s:11:\"last_action\";s:10:\"1350218733\";s:7:\"enabled\";s:3:\"yes\";s:12:\"tables_split\";i:2;s:13:\"tables_loaded\";i:2;s:4:\"name\";s:13:\"ToyhouseChina\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:32:\"5c98c14ce74bab2c8d650320d5e82bd3\";s:4:\"salt\";s:8:\"5c24fc2f\";s:5:\"email\";s:27:\"toyhouse.database@gmail.com\";s:8:\"language\";s:2:\"en\";s:4:\"code\";s:0:\"\";s:6:\"banned\";s:2:\"no\";s:5:\"admin\";s:3:\"yes\";s:16:\"prev_last_action\";s:10:\"1350218733\";s:10:\"last_login\";s:10:\"1350218642\";s:15:\"prev_last_login\";s:1:\"0\";}s:8:\"\0*\0valid\";b:0;}guid|i:35;id|i:35;username|s:5:\"admin\";name|s:13:\"ToyhouseChina\";msg|a:0:{}'),('u9f9ekng6o14budt4mtuo2b076',1350220849,'__elgg_session|s:32:\"eef630e1be672a1fe0fd18a2c5d4fe8c\";msg|a:0:{}'),('anrjigi3mc4e0idg03tjgubkl4',1350224203,'__elgg_session|s:32:\"ec96dd6149907cfa7056c0ec935b67e3\";msg|a:0:{}'),('56b33r2jk2jpehqfp52bc886q1',1350280773,'__elgg_session|s:32:\"f5fce1af2002d4d742d917aec1d05baa\";msg|a:0:{}'),('hn7acm1drof3dfofo9n5ufn945',1350280777,'__elgg_session|s:32:\"b9557b70677e96dbfb02963ec52b4f64\";msg|a:0:{}'),('q1mrcgfkh49cn5fi305p1h3pd1',1350888725,'__elgg_session|s:32:\"53c72feb41228d1e5dfe6f552ef0a971\";msg|a:0:{}'),('59a5mh6cjdldm6dohntqg55v83',1350898708,'__elgg_session|s:32:\"63822f85b618504f93fbc629e48dff68\";msg|a:0:{}'),('jqhrhr2304bjhaejv1rr6pf4e7',1350969745,'__elgg_session|s:32:\"459a2adb3a484b5602a734cead54f9d7\";msg|a:0:{}'),('k17c0lc3ip85pa3etusmfkcq43',1350969624,'__elgg_session|s:32:\"d4cebc26ae0dc620d888f06c93140cb4\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemanager`
--

DROP TABLE IF EXISTS `filemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `comments` text,
  `project_id` int(11) NOT NULL,
  `files` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemanager`
--

LOCK TABLES `filemanager` WRITE;
/*!40000 ALTER TABLE `filemanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `filemanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_message`
--

DROP TABLE IF EXISTS `frontend_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `process` varchar(255) DEFAULT NULL,
  `recipient_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `valid_until` datetime NOT NULL,
  `valid_from` datetime NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `delivered` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_message`
--

LOCK TABLES `frontend_message` WRITE;
/*!40000 ALTER TABLE `frontend_message` DISABLE KEYS */;
INSERT INTO `frontend_message` VALUES (1,1,1,'login',2,0,0,'-','2012-10-14 14:07:27','2012-10-14 14:05:27','has logged in','a:0:{}',0),(2,2,1,'login',1,0,0,'-','2012-10-23 05:22:01','2012-10-23 05:20:01','has logged in','a:0:{}',0);
/*!40000 ALTER TABLE `frontend_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk`
--

DROP TABLE IF EXISTS `helpdesk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `assigned` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `attachments` text,
  `description` text,
  `status` int(2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `solved_by` int(11) DEFAULT NULL,
  `solved_date` date DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk`
--

LOCK TABLES `helpdesk` WRITE;
/*!40000 ALTER TABLE `helpdesk` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `old_value` text,
  `new_value` text,
  `action` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_rights`
--

DROP TABLE IF EXISTS `item_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_rights` (
  `module_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` int(3) NOT NULL,
  PRIMARY KEY (`module_id`,`item_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_rights`
--

LOCK TABLES `item_rights` WRITE;
/*!40000 ALTER TABLE `item_rights` DISABLE KEYS */;
INSERT INTO `item_rights` VALUES (1,1,1,255),(1,1,2,255),(1,2,1,255),(1,2,2,1),(1,3,1,255),(1,3,2,255);
/*!40000 ALTER TABLE `item_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minutes`
--

DROP TABLE IF EXISTS `minutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `meeting_datetime` datetime DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `moderator` varchar(255) DEFAULT NULL,
  `participants_invited` text,
  `participants_attending` text,
  `participants_excused` text,
  `item_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minutes`
--

LOCK TABLES `minutes` WRITE;
/*!40000 ALTER TABLE `minutes` DISABLE KEYS */;
/*!40000 ALTER TABLE `minutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minutes_item`
--

DROP TABLE IF EXISTS `minutes_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minutes_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `minutes_id` int(11) NOT NULL,
  `topic_type` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` text,
  `topic_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minutes_item`
--

LOCK TABLES `minutes_item` WRITE;
/*!40000 ALTER TABLE `minutes_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `minutes_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `save_type` int(1) NOT NULL DEFAULT '0',
  `version` varchar(20) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Project','Project',0,'6.1.0-dev',1),(2,'Calendar2','Calendar',1,'6.1.0-beta1',1),(3,'Contact','Contact',1,'6.0.0',1),(4,'Filemanager','Filemanager',0,'6.0.0',1),(5,'Gantt','Gantt',0,'6.0.0',1),(6,'Helpdesk','Helpdesk',0,'6.0.0',1),(7,'Minutes','Minute',0,'6.0.0',1),(8,'Note','Note',0,'6.0.0',1),(9,'Statistic','Statistic',0,'6.0.0',1),(10,'Timecard','Timecard',1,'6.0.0',1),(11,'Todo','Todo',0,'6.0.0',1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_tab_relation`
--

DROP TABLE IF EXISTS `module_tab_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_tab_relation` (
  `tab_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`tab_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_tab_relation`
--

LOCK TABLES `module_tab_relation` WRITE;
/*!40000 ALTER TABLE `module_tab_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_tab_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comments` text,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `path` varchar(50) NOT NULL DEFAULT '/',
  `title` varchar(255) NOT NULL,
  `notes` text,
  `owner_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `current_status` int(2) NOT NULL DEFAULT '3',
  `complete_percent` varchar(4) DEFAULT NULL,
  `hourly_wage_rate` varchar(10) DEFAULT NULL,
  `budget` varchar(10) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,NULL,'/','PHProjekt','Test',1,'2009-05-12','2009-07-28',1,3,'0',NULL,NULL,NULL),(2,1,'/1/','Project 1','Test',1,'2009-05-02','2009-07-02',2,3,'0',NULL,NULL,NULL),(3,2,'/1/2/','Sub Project','Test',1,'2009-05-02','2009-07-02',2,3,'0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_module_permissions`
--

DROP TABLE IF EXISTS `project_module_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_module_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_module_permissions`
--

LOCK TABLES `project_module_permissions` WRITE;
/*!40000 ALTER TABLE `project_module_permissions` DISABLE KEYS */;
INSERT INTO `project_module_permissions` VALUES (1,4,2),(2,6,2),(3,7,2),(4,8,2),(5,9,2),(6,11,2),(7,1,1),(8,1,2),(9,4,2),(10,6,2),(11,7,2),(12,8,2),(13,9,2),(14,11,2),(15,1,3),(16,2,1),(17,3,1),(18,4,1),(19,5,1),(20,5,2),(21,5,3),(22,6,1),(23,7,1),(24,8,1),(25,9,1),(26,10,1),(27,11,1);
/*!40000 ALTER TABLE `project_module_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_role_user_permissions`
--

DROP TABLE IF EXISTS `project_role_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_role_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_role_user_permissions`
--

LOCK TABLES `project_role_user_permissions` WRITE;
/*!40000 ALTER TABLE `project_role_user_permissions` DISABLE KEYS */;
INSERT INTO `project_role_user_permissions` VALUES (1,1,1,1),(2,1,2,1),(3,2,1,1),(4,2,2,2),(5,3,1,1),(6,3,2,4);
/*!40000 ALTER TABLE `project_role_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_blobs`
--

DROP TABLE IF EXISTS `qa_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_blobs` (
  `blobid` bigint(20) unsigned NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `content` mediumblob NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`blobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_blobs`
--

LOCK TABLES `qa_blobs` WRITE;
/*!40000 ALTER TABLE `qa_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_cache`
--

DROP TABLE IF EXISTS `qa_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_cache` (
  `type` char(8) CHARACTER SET ascii NOT NULL,
  `cacheid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob NOT NULL,
  `created` datetime NOT NULL,
  `lastread` datetime NOT NULL,
  PRIMARY KEY (`type`,`cacheid`),
  KEY `lastread` (`lastread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_cache`
--

LOCK TABLES `qa_cache` WRITE;
/*!40000 ALTER TABLE `qa_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_categories`
--

DROP TABLE IF EXISTS `qa_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_categories` (
  `categoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `parentid` (`parentid`,`tags`),
  UNIQUE KEY `parentid_2` (`parentid`,`position`),
  KEY `backpath` (`backpath`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_categories`
--

LOCK TABLES `qa_categories` WRITE;
/*!40000 ALTER TABLE `qa_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_categorymetas`
--

DROP TABLE IF EXISTS `qa_categorymetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_categorymetas` (
  `categoryid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`categoryid`,`title`),
  CONSTRAINT `qa_categorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_categorymetas`
--

LOCK TABLES `qa_categorymetas` WRITE;
/*!40000 ALTER TABLE `qa_categorymetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_categorymetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_contentwords`
--

DROP TABLE IF EXISTS `qa_contentwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_contentwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_contentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_contentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_contentwords`
--

LOCK TABLES `qa_contentwords` WRITE;
/*!40000 ALTER TABLE `qa_contentwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_contentwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_cookies`
--

DROP TABLE IF EXISTS `qa_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_cookies` (
  `cookieid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cookieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_cookies`
--

LOCK TABLES `qa_cookies` WRITE;
/*!40000 ALTER TABLE `qa_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_iplimits`
--

DROP TABLE IF EXISTS `qa_iplimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_iplimits` (
  `ip` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `ip` (`ip`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_iplimits`
--

LOCK TABLES `qa_iplimits` WRITE;
/*!40000 ALTER TABLE `qa_iplimits` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_iplimits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_messages`
--

DROP TABLE IF EXISTS `qa_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_messages` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromuserid` int(10) unsigned NOT NULL,
  `touserid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`messageid`),
  KEY `fromuserid` (`fromuserid`,`touserid`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_messages`
--

LOCK TABLES `qa_messages` WRITE;
/*!40000 ALTER TABLE `qa_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_options`
--

DROP TABLE IF EXISTS `qa_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_options` (
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_options`
--

LOCK TABLES `qa_options` WRITE;
/*!40000 ALTER TABLE `qa_options` DISABLE KEYS */;
INSERT INTO `qa_options` VALUES ('block_ips_write',''),('cache_qcount',''),('cache_tagcount',''),('cache_unaqcount',''),('cache_unselqcount',''),('cache_userpointscount','1'),('captcha_module','reCAPTCHA'),('captcha_on_anon_post','1'),('confirm_user_emails','1'),('custom_footer',''),('custom_header',''),('custom_in_head',''),('custom_welcome',''),('db_version','47'),('do_ask_check_qs','0'),('do_complete_tags','1'),('do_count_q_views','1'),('do_example_tags','1'),('editor_for_qs','WYSIWYG Editor'),('event_logger_to_database',''),('event_logger_to_files',''),('extra_field_active',''),('facebook_app_id',''),('feedback_email','toyhouse.database@gmail.com'),('feedback_enabled','1'),('feed_for_qa','1'),('feed_for_questions','1'),('feed_for_unanswered','1'),('feed_per_category','1'),('flagging_of_posts','1'),('from_email','no-reply@166.111.59.15'),('logo_height',''),('logo_show',''),('logo_url',''),('logo_width',''),('nav_activity',''),('nav_ask','1'),('nav_categories',''),('nav_home',''),('nav_hot',''),('nav_qa_is_home',''),('nav_questions','1'),('nav_tags','1'),('nav_unanswered','1'),('nav_users','1'),('neat_urls','5'),('notify_users_default','1'),('pages_prev_next','3'),('page_size_ask_tags','5'),('page_size_home','20'),('page_size_qs','20'),('page_size_una_qs','20'),('permit_delete_hidden','40'),('permit_hide_show','70'),('permit_moderate','100'),('permit_post_q','150'),('points_a_selected','30'),('points_a_voted_max_gain','20'),('points_a_voted_max_loss','5'),('points_base','100'),('points_multiple','10'),('points_per_a_voted',''),('points_per_a_voted_down','2'),('points_per_a_voted_up','2'),('points_per_q_voted',''),('points_per_q_voted_down','1'),('points_per_q_voted_up','1'),('points_post_a','4'),('points_post_q','2'),('points_q_voted_max_gain','10'),('points_q_voted_max_loss','3'),('points_select_a','3'),('points_vote_down_a','1'),('points_vote_down_q','1'),('points_vote_on_a',''),('points_vote_on_q',''),('points_vote_up_a','1'),('points_vote_up_q','1'),('recaptcha_public_key',''),('show_custom_ask',''),('show_custom_footer',''),('show_custom_header',''),('show_custom_home',''),('show_custom_in_head',''),('show_custom_sidebar','1'),('show_custom_sidepanel',''),('show_custom_welcome','1'),('show_home_description',''),('show_notice_visitor',''),('show_notice_welcome',''),('site_language',''),('site_maintenance','0'),('site_theme','Default'),('site_theme_mobile','Default'),('site_title','ToyhouseChina'),('site_url','http://166.111.59.15/q2a/'),('smtp_active',''),('tags_or_categories','tc'),('tag_separator_comma',''),('voting_on_as','1'),('wysiwyg_editor_upload_images','');
/*!40000 ALTER TABLE `qa_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_pages`
--

DROP TABLE IF EXISTS `qa_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_pages` (
  `pageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext,
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `tags` (`tags`),
  UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_pages`
--

LOCK TABLES `qa_pages` WRITE;
/*!40000 ALTER TABLE `qa_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_postmetas`
--

DROP TABLE IF EXISTS `qa_postmetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_postmetas` (
  `postid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`postid`,`title`),
  CONSTRAINT `qa_postmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_postmetas`
--

LOCK TABLES `qa_postmetas` WRITE;
/*!40000 ALTER TABLE `qa_postmetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_postmetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_posts`
--

DROP TABLE IF EXISTS `qa_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_posts` (
  `postid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) unsigned DEFAULT NULL,
  `categoryid` int(10) unsigned DEFAULT NULL,
  `catidpath1` int(10) unsigned DEFAULT NULL,
  `catidpath2` int(10) unsigned DEFAULT NULL,
  `catidpath3` int(10) unsigned DEFAULT NULL,
  `acount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selchildid` int(10) unsigned DEFAULT NULL,
  `closedbyid` int(10) unsigned DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `lastip` int(10) unsigned DEFAULT NULL,
  `upvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `downvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` int(10) unsigned DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `type` (`type`,`created`),
  KEY `type_2` (`type`,`acount`,`created`),
  KEY `type_4` (`type`,`netvotes`,`created`),
  KEY `type_5` (`type`,`views`,`created`),
  KEY `type_6` (`type`,`hotness`),
  KEY `type_7` (`type`,`amaxvote`,`created`),
  KEY `parentid` (`parentid`,`type`),
  KEY `userid` (`userid`,`type`,`created`),
  KEY `selchildid` (`selchildid`,`type`,`created`),
  KEY `closedbyid` (`closedbyid`),
  KEY `catidpath1` (`catidpath1`,`type`,`created`),
  KEY `catidpath2` (`catidpath2`,`type`,`created`),
  KEY `catidpath3` (`catidpath3`,`type`,`created`),
  KEY `categoryid` (`categoryid`,`type`,`created`),
  KEY `createip` (`createip`,`created`),
  KEY `updated` (`updated`,`type`),
  KEY `flagcount` (`flagcount`,`created`,`type`),
  KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  KEY `lastip` (`lastip`,`updated`,`type`),
  CONSTRAINT `qa_posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE SET NULL,
  CONSTRAINT `qa_posts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_posts` (`postid`),
  CONSTRAINT `qa_posts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE SET NULL,
  CONSTRAINT `qa_posts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_posts` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_posts`
--

LOCK TABLES `qa_posts` WRITE;
/*!40000 ALTER TABLE `qa_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_posttags`
--

DROP TABLE IF EXISTS `qa_posttags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_posttags` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `postcreated` datetime NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`,`postcreated`),
  CONSTRAINT `qa_posttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_posttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_posttags`
--

LOCK TABLES `qa_posttags` WRITE;
/*!40000 ALTER TABLE `qa_posttags` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_posttags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_sharedevents`
--

DROP TABLE IF EXISTS `qa_sharedevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_sharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  KEY `questionid` (`questionid`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_sharedevents`
--

LOCK TABLES `qa_sharedevents` WRITE;
/*!40000 ALTER TABLE `qa_sharedevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_sharedevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_tagmetas`
--

DROP TABLE IF EXISTS `qa_tagmetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_tagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`tag`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_tagmetas`
--

LOCK TABLES `qa_tagmetas` WRITE;
/*!40000 ALTER TABLE `qa_tagmetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_tagmetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_tagwords`
--

DROP TABLE IF EXISTS `qa_tagwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_tagwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_tagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_tagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_tagwords`
--

LOCK TABLES `qa_tagwords` WRITE;
/*!40000 ALTER TABLE `qa_tagwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_tagwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_titlewords`
--

DROP TABLE IF EXISTS `qa_titlewords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_titlewords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_titlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_titlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_titlewords`
--

LOCK TABLES `qa_titlewords` WRITE;
/*!40000 ALTER TABLE `qa_titlewords` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_titlewords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userevents`
--

DROP TABLE IF EXISTS `qa_userevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userevents` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `userid` (`userid`,`updated`),
  KEY `questionid` (`questionid`,`userid`),
  CONSTRAINT `qa_userevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userevents`
--

LOCK TABLES `qa_userevents` WRITE;
/*!40000 ALTER TABLE `qa_userevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userfavorites`
--

DROP TABLE IF EXISTS `qa_userfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userfavorites` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `nouserevents` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  KEY `userid` (`userid`,`nouserevents`),
  KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`),
  CONSTRAINT `qa_userfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userfavorites`
--

LOCK TABLES `qa_userfavorites` WRITE;
/*!40000 ALTER TABLE `qa_userfavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userfields`
--

DROP TABLE IF EXISTS `qa_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userfields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) DEFAULT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userfields`
--

LOCK TABLES `qa_userfields` WRITE;
/*!40000 ALTER TABLE `qa_userfields` DISABLE KEYS */;
INSERT INTO `qa_userfields` VALUES (1,'name',NULL,1,0),(2,'location',NULL,2,0),(3,'website',NULL,3,2),(4,'about',NULL,4,1);
/*!40000 ALTER TABLE `qa_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userlimits`
--

DROP TABLE IF EXISTS `qa_userlimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userlimits` (
  `userid` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `userid` (`userid`,`action`),
  CONSTRAINT `qa_userlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userlimits`
--

LOCK TABLES `qa_userlimits` WRITE;
/*!40000 ALTER TABLE `qa_userlimits` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userlimits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userlogins`
--

DROP TABLE IF EXISTS `qa_userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userlogins` (
  `userid` int(10) unsigned NOT NULL,
  `source` varchar(16) CHARACTER SET ascii NOT NULL,
  `identifier` varbinary(1024) NOT NULL,
  `identifiermd5` binary(16) NOT NULL,
  KEY `source` (`source`,`identifiermd5`),
  KEY `userid` (`userid`),
  CONSTRAINT `qa_userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userlogins`
--

LOCK TABLES `qa_userlogins` WRITE;
/*!40000 ALTER TABLE `qa_userlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_usermetas`
--

DROP TABLE IF EXISTS `qa_usermetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_usermetas` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`userid`,`title`),
  CONSTRAINT `qa_usermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_usermetas`
--

LOCK TABLES `qa_usermetas` WRITE;
/*!40000 ALTER TABLE `qa_usermetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_usermetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_usernotices`
--

DROP TABLE IF EXISTS `qa_usernotices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_usernotices` (
  `noticeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`noticeid`),
  KEY `userid` (`userid`,`created`),
  CONSTRAINT `qa_usernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_usernotices`
--

LOCK TABLES `qa_usernotices` WRITE;
/*!40000 ALTER TABLE `qa_usernotices` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_usernotices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userpoints`
--

DROP TABLE IF EXISTS `qa_userpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userpoints` (
  `userid` int(10) unsigned NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `points` (`points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userpoints`
--

LOCK TABLES `qa_userpoints` WRITE;
/*!40000 ALTER TABLE `qa_userpoints` DISABLE KEYS */;
INSERT INTO `qa_userpoints` VALUES (1,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `qa_userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userprofile`
--

DROP TABLE IF EXISTS `qa_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userprofile` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`title`),
  CONSTRAINT `qa_userprofile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userprofile`
--

LOCK TABLES `qa_userprofile` WRITE;
/*!40000 ALTER TABLE `qa_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_users`
--

DROP TABLE IF EXISTS `qa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_users` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `email` varchar(80) NOT NULL,
  `handle` varchar(20) NOT NULL,
  `avatarblobid` bigint(20) unsigned DEFAULT NULL,
  `avatarwidth` smallint(5) unsigned DEFAULT NULL,
  `avatarheight` smallint(5) unsigned DEFAULT NULL,
  `passsalt` binary(16) DEFAULT NULL,
  `passcheck` binary(20) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `loggedin` datetime NOT NULL,
  `loginip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  `emailcode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessioncode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessionsource` varchar(16) CHARACTER SET ascii DEFAULT '',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `email` (`email`),
  KEY `handle` (`handle`),
  KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_users`
--

LOCK TABLES `qa_users` WRITE;
/*!40000 ALTER TABLE `qa_users` DISABLE KEYS */;
INSERT INTO `qa_users` VALUES (1,'2012-10-14 21:21:40',994229916,'toyhouse.database@gmail.com','admin',NULL,NULL,NULL,'brw2kavaq4un5t40','��M������On�04X�',120,'2012-10-14 21:21:40',994229916,NULL,NULL,'','v04swd8z',NULL,0);
/*!40000 ALTER TABLE `qa_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_uservotes`
--

DROP TABLE IF EXISTS `qa_uservotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_uservotes` (
  `postid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`postid`),
  KEY `postid` (`postid`),
  CONSTRAINT `qa_uservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_uservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_uservotes`
--

LOCK TABLES `qa_uservotes` WRITE;
/*!40000 ALTER TABLE `qa_uservotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_uservotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_widgets`
--

DROP TABLE IF EXISTS `qa_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_widgets` (
  `widgetid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL,
  PRIMARY KEY (`widgetid`),
  UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_widgets`
--

LOCK TABLES `qa_widgets` WRITE;
/*!40000 ALTER TABLE `qa_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_words`
--

DROP TABLE IF EXISTS `qa_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_words` (
  `wordid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) unsigned NOT NULL DEFAULT '0',
  `contentcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagwordcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagcount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wordid`),
  KEY `word` (`word`),
  KEY `tagcount` (`tagcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_words`
--

LOCK TABLES `qa_words` WRITE;
/*!40000 ALTER TABLE `qa_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin in All',NULL),(2,'can Read TODOs only',NULL),(3,'admin in PROJECTs',NULL),(4,'read only in All',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_module_permissions`
--

DROP TABLE IF EXISTS `role_module_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_module_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `access` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_module_permissions`
--

LOCK TABLES `role_module_permissions` WRITE;
/*!40000 ALTER TABLE `role_module_permissions` DISABLE KEYS */;
INSERT INTO `role_module_permissions` VALUES (1,3,1,139),(2,2,1,0),(3,4,1,1),(4,2,4,0),(5,4,4,1),(6,3,4,0),(7,2,5,0),(8,4,5,1),(9,3,5,0),(10,2,6,0),(11,4,6,1),(12,3,6,0),(13,2,7,0),(14,4,7,1),(15,3,7,0),(16,2,8,0),(17,4,8,1),(18,3,8,0),(19,2,9,0),(20,4,9,1),(21,3,9,0),(22,3,11,0),(23,2,11,1),(24,4,11,1),(25,1,1,139),(26,1,2,139),(27,1,3,139),(28,1,4,139),(29,1,5,139),(30,1,6,139),(31,1,7,139),(32,1,8,139),(33,1,9,139),(34,1,10,139),(35,1,11,139);
/*!40000 ALTER TABLE `role_module_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_display`
--

DROP TABLE IF EXISTS `search_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_display` (
  `module_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `first_display` text,
  `second_display` text,
  PRIMARY KEY (`module_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_display`
--

LOCK TABLES `search_display` WRITE;
/*!40000 ALTER TABLE `search_display` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_word_module`
--

DROP TABLE IF EXISTS `search_word_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_word_module` (
  `item_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`module_id`,`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_word_module`
--

LOCK TABLES `search_word_module` WRITE;
/*!40000 ALTER TABLE `search_word_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_word_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_words`
--

DROP TABLE IF EXISTS `search_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_words`
--

LOCK TABLES `search_words` WRITE;
/*!40000 ALTER TABLE `search_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `key_value` varchar(255) NOT NULL,
  `value` text,
  `identifier` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,1,0,'password','a97546a740c18fdf62a80455158f079e','Core'),(2,1,0,'email','admin@admin.com','Core'),(3,1,0,'language','en','Core'),(4,1,0,'timeZone','000','Core'),(5,2,0,'password','156c3239dbfa5c5222b51514e9d12948','Core'),(6,2,0,'email','test@test.com','Core'),(7,2,0,'language','en','Core'),(8,2,0,'timeZone','000','Core');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab`
--

DROP TABLE IF EXISTS `tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab`
--

LOCK TABLES `tab` WRITE;
/*!40000 ALTER TABLE `tab` DISABLE KEYS */;
INSERT INTO `tab` VALUES (1,'Basic Data'),(2,'People');
/*!40000 ALTER TABLE `tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_modules`
--

DROP TABLE IF EXISTS `tags_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_modules` (
  `module_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_user_id` int(11) NOT NULL,
  PRIMARY KEY (`module_id`,`item_id`,`tag_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_modules`
--

LOCK TABLES `tags_modules` WRITE;
/*!40000 ALTER TABLE `tags_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_users`
--

DROP TABLE IF EXISTS `tags_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_users`
--

LOCK TABLES `tags_users` WRITE;
/*!40000 ALTER TABLE `tags_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timecard`
--

DROP TABLE IF EXISTS `timecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timecard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `notes` text,
  `module_id` int(11) DEFAULT '1',
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timecard`
--

LOCK TABLES `timecard` WRITE;
/*!40000 ALTER TABLE `timecard` DISABLE KEYS */;
/*!40000 ALTER TABLE `timecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `notes` text,
  `owner_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `current_status` int(2) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploaded_unused_files`
--

DROP TABLE IF EXISTS `uploaded_unused_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploaded_unused_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaded_unused_files`
--

LOCK TABLES `uploaded_unused_files` WRITE;
/*!40000 ALTER TABLE `uploaded_unused_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploaded_unused_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'A',
  `admin` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Admin','Admin','A',1),(2,'test','Test','Test','A',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_proxy`
--

DROP TABLE IF EXISTS `user_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_proxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proxyed_id` int(11) NOT NULL,
  `proxying_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_proxy`
--

LOCK TABLES `user_proxy` WRITE;
/*!40000 ALTER TABLE `user_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_archive`
--

DROP TABLE IF EXISTS `wiki_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_archive` (
  `ar_namespace` int(11) NOT NULL DEFAULT '0',
  `ar_title` varbinary(255) NOT NULL DEFAULT '',
  `ar_text` mediumblob NOT NULL,
  `ar_comment` tinyblob NOT NULL,
  `ar_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ar_user_text` varbinary(255) NOT NULL,
  `ar_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ar_minor_edit` tinyint(4) NOT NULL DEFAULT '0',
  `ar_flags` tinyblob NOT NULL,
  `ar_rev_id` int(10) unsigned DEFAULT NULL,
  `ar_text_id` int(10) unsigned DEFAULT NULL,
  `ar_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ar_len` int(10) unsigned DEFAULT NULL,
  `ar_page_id` int(10) unsigned DEFAULT NULL,
  `ar_parent_id` int(10) unsigned DEFAULT NULL,
  `ar_sha1` varbinary(32) NOT NULL DEFAULT '',
  KEY `name_title_timestamp` (`ar_namespace`,`ar_title`,`ar_timestamp`),
  KEY `usertext_timestamp` (`ar_user_text`,`ar_timestamp`),
  KEY `ar_revid` (`ar_rev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_archive`
--

LOCK TABLES `wiki_archive` WRITE;
/*!40000 ALTER TABLE `wiki_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_category`
--

DROP TABLE IF EXISTS `wiki_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varbinary(255) NOT NULL,
  `cat_pages` int(11) NOT NULL DEFAULT '0',
  `cat_subcats` int(11) NOT NULL DEFAULT '0',
  `cat_files` int(11) NOT NULL DEFAULT '0',
  `cat_hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_title` (`cat_title`),
  KEY `cat_pages` (`cat_pages`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_category`
--

LOCK TABLES `wiki_category` WRITE;
/*!40000 ALTER TABLE `wiki_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_categorylinks`
--

DROP TABLE IF EXISTS `wiki_categorylinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_categorylinks` (
  `cl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `cl_to` varbinary(255) NOT NULL DEFAULT '',
  `cl_sortkey` varbinary(230) NOT NULL DEFAULT '',
  `cl_sortkey_prefix` varbinary(255) NOT NULL DEFAULT '',
  `cl_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cl_collation` varbinary(32) NOT NULL DEFAULT '',
  `cl_type` enum('page','subcat','file') NOT NULL DEFAULT 'page',
  UNIQUE KEY `cl_from` (`cl_from`,`cl_to`),
  KEY `cl_sortkey` (`cl_to`,`cl_type`,`cl_sortkey`,`cl_from`),
  KEY `cl_timestamp` (`cl_to`,`cl_timestamp`),
  KEY `cl_collation` (`cl_collation`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_categorylinks`
--

LOCK TABLES `wiki_categorylinks` WRITE;
/*!40000 ALTER TABLE `wiki_categorylinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_categorylinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_change_tag`
--

DROP TABLE IF EXISTS `wiki_change_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_change_tag` (
  `ct_rc_id` int(11) DEFAULT NULL,
  `ct_log_id` int(11) DEFAULT NULL,
  `ct_rev_id` int(11) DEFAULT NULL,
  `ct_tag` varbinary(255) NOT NULL,
  `ct_params` blob,
  UNIQUE KEY `change_tag_rc_tag` (`ct_rc_id`,`ct_tag`),
  UNIQUE KEY `change_tag_log_tag` (`ct_log_id`,`ct_tag`),
  UNIQUE KEY `change_tag_rev_tag` (`ct_rev_id`,`ct_tag`),
  KEY `change_tag_tag_id` (`ct_tag`,`ct_rc_id`,`ct_rev_id`,`ct_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_change_tag`
--

LOCK TABLES `wiki_change_tag` WRITE;
/*!40000 ALTER TABLE `wiki_change_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_change_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_external_user`
--

DROP TABLE IF EXISTS `wiki_external_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_external_user` (
  `eu_local_id` int(10) unsigned NOT NULL,
  `eu_external_id` varbinary(255) NOT NULL,
  PRIMARY KEY (`eu_local_id`),
  UNIQUE KEY `eu_external_id` (`eu_external_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_external_user`
--

LOCK TABLES `wiki_external_user` WRITE;
/*!40000 ALTER TABLE `wiki_external_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_external_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_externallinks`
--

DROP TABLE IF EXISTS `wiki_externallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_externallinks` (
  `el_from` int(10) unsigned NOT NULL DEFAULT '0',
  `el_to` blob NOT NULL,
  `el_index` blob NOT NULL,
  KEY `el_from` (`el_from`,`el_to`(40)),
  KEY `el_to` (`el_to`(60),`el_from`),
  KEY `el_index` (`el_index`(60))
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_externallinks`
--

LOCK TABLES `wiki_externallinks` WRITE;
/*!40000 ALTER TABLE `wiki_externallinks` DISABLE KEYS */;
INSERT INTO `wiki_externallinks` VALUES (1,'//meta.wikimedia.org/wiki/Help:Contents','http://org.wikimedia.meta./wiki/Help:Contents'),(1,'//meta.wikimedia.org/wiki/Help:Contents','https://org.wikimedia.meta./wiki/Help:Contents'),(1,'//www.mediawiki.org/wiki/Manual:Configuration_settings','http://org.mediawiki.www./wiki/Manual:Configuration_settings'),(1,'//www.mediawiki.org/wiki/Manual:Configuration_settings','https://org.mediawiki.www./wiki/Manual:Configuration_settings'),(1,'//www.mediawiki.org/wiki/Manual:FAQ','http://org.mediawiki.www./wiki/Manual:FAQ'),(1,'//www.mediawiki.org/wiki/Manual:FAQ','https://org.mediawiki.www./wiki/Manual:FAQ'),(1,'https://lists.wikimedia.org/mailman/listinfo/mediawiki-announce','https://org.wikimedia.lists./mailman/listinfo/mediawiki-announce');
/*!40000 ALTER TABLE `wiki_externallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_filearchive`
--

DROP TABLE IF EXISTS `wiki_filearchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_filearchive` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fa_name` varbinary(255) NOT NULL DEFAULT '',
  `fa_archive_name` varbinary(255) DEFAULT '',
  `fa_storage_group` varbinary(16) DEFAULT NULL,
  `fa_storage_key` varbinary(64) DEFAULT '',
  `fa_deleted_user` int(11) DEFAULT NULL,
  `fa_deleted_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted_reason` blob,
  `fa_size` int(10) unsigned DEFAULT '0',
  `fa_width` int(11) DEFAULT '0',
  `fa_height` int(11) DEFAULT '0',
  `fa_metadata` mediumblob,
  `fa_bits` int(11) DEFAULT '0',
  `fa_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `fa_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart') DEFAULT 'unknown',
  `fa_minor_mime` varbinary(100) DEFAULT 'unknown',
  `fa_description` tinyblob,
  `fa_user` int(10) unsigned DEFAULT '0',
  `fa_user_text` varbinary(255) DEFAULT NULL,
  `fa_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fa_id`),
  KEY `fa_name` (`fa_name`,`fa_timestamp`),
  KEY `fa_storage_group` (`fa_storage_group`,`fa_storage_key`),
  KEY `fa_deleted_timestamp` (`fa_deleted_timestamp`),
  KEY `fa_user_timestamp` (`fa_user_text`,`fa_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_filearchive`
--

LOCK TABLES `wiki_filearchive` WRITE;
/*!40000 ALTER TABLE `wiki_filearchive` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_filearchive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_hitcounter`
--

DROP TABLE IF EXISTS `wiki_hitcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_hitcounter` (
  `hc_id` int(10) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1 MAX_ROWS=25000;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_hitcounter`
--

LOCK TABLES `wiki_hitcounter` WRITE;
/*!40000 ALTER TABLE `wiki_hitcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_hitcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_image`
--

DROP TABLE IF EXISTS `wiki_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_image` (
  `img_name` varbinary(255) NOT NULL DEFAULT '',
  `img_size` int(10) unsigned NOT NULL DEFAULT '0',
  `img_width` int(11) NOT NULL DEFAULT '0',
  `img_height` int(11) NOT NULL DEFAULT '0',
  `img_metadata` mediumblob NOT NULL,
  `img_bits` int(11) NOT NULL DEFAULT '0',
  `img_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `img_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart') NOT NULL DEFAULT 'unknown',
  `img_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `img_description` tinyblob NOT NULL,
  `img_user` int(10) unsigned NOT NULL DEFAULT '0',
  `img_user_text` varbinary(255) NOT NULL,
  `img_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `img_sha1` varbinary(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_name`),
  KEY `img_usertext_timestamp` (`img_user_text`,`img_timestamp`),
  KEY `img_size` (`img_size`),
  KEY `img_timestamp` (`img_timestamp`),
  KEY `img_sha1` (`img_sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_image`
--

LOCK TABLES `wiki_image` WRITE;
/*!40000 ALTER TABLE `wiki_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_imagelinks`
--

DROP TABLE IF EXISTS `wiki_imagelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_imagelinks` (
  `il_from` int(10) unsigned NOT NULL DEFAULT '0',
  `il_to` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `il_from` (`il_from`,`il_to`),
  UNIQUE KEY `il_to` (`il_to`,`il_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_imagelinks`
--

LOCK TABLES `wiki_imagelinks` WRITE;
/*!40000 ALTER TABLE `wiki_imagelinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_imagelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_interwiki`
--

DROP TABLE IF EXISTS `wiki_interwiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_interwiki` (
  `iw_prefix` varbinary(32) NOT NULL,
  `iw_url` blob NOT NULL,
  `iw_api` blob NOT NULL,
  `iw_wikiid` varbinary(64) NOT NULL,
  `iw_local` tinyint(1) NOT NULL,
  `iw_trans` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `iw_prefix` (`iw_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_interwiki`
--

LOCK TABLES `wiki_interwiki` WRITE;
/*!40000 ALTER TABLE `wiki_interwiki` DISABLE KEYS */;
INSERT INTO `wiki_interwiki` VALUES ('acronym','http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=$1','','',0,0),('advogato','http://www.advogato.org/$1','','',0,0),('annotationwiki','http://www.seedwiki.com/page.cfm?wikiid=368&doc=$1','','',0,0),('arxiv','http://www.arxiv.org/abs/$1','','',0,0),('c2find','http://c2.com/cgi/wiki?FindPage&value=$1','','',0,0),('cache','http://www.google.com/search?q=cache:$1','','',0,0),('commons','http://commons.wikimedia.org/wiki/$1','','',0,0),('corpknowpedia','http://corpknowpedia.org/wiki/index.php/$1','','',0,0),('dictionary','http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=$1','','',0,0),('disinfopedia','http://www.disinfopedia.org/wiki.phtml?title=$1','','',0,0),('docbook','http://wiki.docbook.org/topic/$1','','',0,0),('doi','http://dx.doi.org/$1','','',0,0),('drumcorpswiki','http://www.drumcorpswiki.com/index.php/$1','','',0,0),('dwjwiki','http://www.suberic.net/cgi-bin/dwj/wiki.cgi?$1','','',0,0),('elibre','http://enciclopedia.us.es/index.php/$1','','',0,0),('emacswiki','http://www.emacswiki.org/cgi-bin/wiki.pl?$1','','',0,0),('foldoc','http://foldoc.org/?$1','','',0,0),('foxwiki','http://fox.wikis.com/wc.dll?Wiki~$1','','',0,0),('freebsdman','http://www.FreeBSD.org/cgi/man.cgi?apropos=1&query=$1','','',0,0),('gej','http://www.esperanto.de/cgi-bin/aktivikio/wiki.pl?$1','','',0,0),('gentoo-wiki','http://gentoo-wiki.com/$1','','',0,0),('google','http://www.google.com/search?q=$1','','',0,0),('googlegroups','http://groups.google.com/groups?q=$1','','',0,0),('hammondwiki','http://www.dairiki.org/HammondWiki/$1','','',0,0),('hewikisource','http://he.wikisource.org/wiki/$1','','',1,0),('hrwiki','http://www.hrwiki.org/index.php/$1','','',0,0),('imdb','http://us.imdb.com/Title?$1','','',0,0),('jargonfile','http://sunir.org/apps/meta.pl?wiki=JargonFile&redirect=$1','','',0,0),('jspwiki','http://www.jspwiki.org/wiki/$1','','',0,0),('keiki','http://kei.ki/en/$1','','',0,0),('kmwiki','http://kmwiki.wikispaces.com/$1','','',0,0),('linuxwiki','http://linuxwiki.de/$1','','',0,0),('lojban','http://www.lojban.org/tiki/tiki-index.php?page=$1','','',0,0),('lqwiki','http://wiki.linuxquestions.org/wiki/$1','','',0,0),('lugkr','http://lug-kr.sourceforge.net/cgi-bin/lugwiki.pl?$1','','',0,0),('mathsongswiki','http://SeedWiki.com/page.cfm?wikiid=237&doc=$1','','',0,0),('meatball','http://www.usemod.com/cgi-bin/mb.pl?$1','','',0,0),('mediawikiwiki','http://www.mediawiki.org/wiki/$1','','',0,0),('mediazilla','https://bugzilla.wikimedia.org/$1','','',1,0),('memoryalpha','http://www.memory-alpha.org/en/index.php/$1','','',0,0),('metawiki','http://sunir.org/apps/meta.pl?$1','','',0,0),('metawikipedia','http://meta.wikimedia.org/wiki/$1','','',0,0),('moinmoin','http://purl.net/wiki/moin/$1','','',0,0),('mozillawiki','http://wiki.mozilla.org/index.php/$1','','',0,0),('mw','http://www.mediawiki.org/wiki/$1','','',0,0),('oeis','http://www.research.att.com/cgi-bin/access.cgi/as/njas/sequences/eisA.cgi?Anum=$1','','',0,0),('openfacts','http://openfacts.berlios.de/index.phtml?title=$1','','',0,0),('openwiki','http://openwiki.com/?$1','','',0,0),('pmeg','http://www.bertilow.com/pmeg/$1.php','','',0,0),('ppr','http://c2.com/cgi/wiki?$1','','',0,0),('pythoninfo','http://wiki.python.org/moin/$1','','',0,0),('rfc','http://www.rfc-editor.org/rfc/rfc$1.txt','','',0,0),('s23wiki','http://is-root.de/wiki/index.php/$1','','',0,0),('seattlewiki','http://seattle.wikia.com/wiki/$1','','',0,0),('seattlewireless','http://seattlewireless.net/?$1','','',0,0),('senseislibrary','http://senseis.xmp.net/?$1','','',0,0),('sourceforge','http://sourceforge.net/$1','','',0,0),('squeak','http://wiki.squeak.org/squeak/$1','','',0,0),('susning','http://www.susning.nu/$1','','',0,0),('svgwiki','http://wiki.svg.org/$1','','',0,0),('tavi','http://tavi.sourceforge.net/$1','','',0,0),('tejo','http://www.tejo.org/vikio/$1','','',0,0),('theopedia','http://www.theopedia.com/$1','','',0,0),('tmbw','http://www.tmbw.net/wiki/$1','','',0,0),('tmnet','http://www.technomanifestos.net/?$1','','',0,0),('tmwiki','http://www.EasyTopicMaps.com/?page=$1','','',0,0),('twiki','http://twiki.org/cgi-bin/view/$1','','',0,0),('uea','http://www.tejo.org/uea/$1','','',0,0),('unreal','http://wiki.beyondunreal.com/wiki/$1','','',0,0),('usemod','http://www.usemod.com/cgi-bin/wiki.pl?$1','','',0,0),('vinismo','http://vinismo.com/en/$1','','',0,0),('webseitzwiki','http://webseitz.fluxent.com/wiki/$1','','',0,0),('why','http://clublet.com/c/c/why?$1','','',0,0),('wiki','http://c2.com/cgi/wiki?$1','','',0,0),('wikia','http://www.wikia.com/wiki/$1','','',0,0),('wikibooks','http://en.wikibooks.org/wiki/$1','','',1,0),('wikicities','http://www.wikia.com/wiki/$1','','',0,0),('wikif1','http://www.wikif1.org/$1','','',0,0),('wikihow','http://www.wikihow.com/$1','','',0,0),('wikimedia','http://wikimediafoundation.org/wiki/$1','','',0,0),('wikinews','http://en.wikinews.org/wiki/$1','','',1,0),('wikinfo','http://www.wikinfo.org/index.php/$1','','',0,0),('wikipedia','http://en.wikipedia.org/wiki/$1','','',1,0),('wikiquote','http://en.wikiquote.org/wiki/$1','','',1,0),('wikisource','http://wikisource.org/wiki/$1','','',1,0),('wikispecies','http://species.wikimedia.org/wiki/$1','','',1,0),('wikitravel','http://wikitravel.org/en/$1','','',0,0),('wikiversity','http://en.wikiversity.org/wiki/$1','','',1,0),('wikt','http://en.wiktionary.org/wiki/$1','','',1,0),('wiktionary','http://en.wiktionary.org/wiki/$1','','',1,0),('wlug','http://www.wlug.org.nz/$1','','',0,0),('zwiki','http://zwiki.org/$1','','',0,0),('zzz wiki','http://wiki.zzz.ee/index.php/$1','','',0,0);
/*!40000 ALTER TABLE `wiki_interwiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_ipblocks`
--

DROP TABLE IF EXISTS `wiki_ipblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_ipblocks` (
  `ipb_id` int(11) NOT NULL AUTO_INCREMENT,
  `ipb_address` tinyblob NOT NULL,
  `ipb_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ipb_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ipb_by_text` varbinary(255) NOT NULL DEFAULT '',
  `ipb_reason` tinyblob NOT NULL,
  `ipb_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ipb_auto` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_anon_only` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_create_account` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_enable_autoblock` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_expiry` varbinary(14) NOT NULL DEFAULT '',
  `ipb_range_start` tinyblob NOT NULL,
  `ipb_range_end` tinyblob NOT NULL,
  `ipb_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_block_email` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_allow_usertalk` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipb_id`),
  UNIQUE KEY `ipb_address` (`ipb_address`(255),`ipb_user`,`ipb_auto`,`ipb_anon_only`),
  KEY `ipb_user` (`ipb_user`),
  KEY `ipb_range` (`ipb_range_start`(8),`ipb_range_end`(8)),
  KEY `ipb_timestamp` (`ipb_timestamp`),
  KEY `ipb_expiry` (`ipb_expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_ipblocks`
--

LOCK TABLES `wiki_ipblocks` WRITE;
/*!40000 ALTER TABLE `wiki_ipblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_ipblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_iwlinks`
--

DROP TABLE IF EXISTS `wiki_iwlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_iwlinks` (
  `iwl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `iwl_prefix` varbinary(20) NOT NULL DEFAULT '',
  `iwl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `iwl_from` (`iwl_from`,`iwl_prefix`,`iwl_title`),
  UNIQUE KEY `iwl_prefix_title_from` (`iwl_prefix`,`iwl_title`,`iwl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_iwlinks`
--

LOCK TABLES `wiki_iwlinks` WRITE;
/*!40000 ALTER TABLE `wiki_iwlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_iwlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_job`
--

DROP TABLE IF EXISTS `wiki_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_job` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_cmd` varbinary(60) NOT NULL DEFAULT '',
  `job_namespace` int(11) NOT NULL,
  `job_title` varbinary(255) NOT NULL,
  `job_timestamp` varbinary(14) DEFAULT NULL,
  `job_params` blob NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `job_cmd` (`job_cmd`,`job_namespace`,`job_title`,`job_params`(128)),
  KEY `job_timestamp` (`job_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_job`
--

LOCK TABLES `wiki_job` WRITE;
/*!40000 ALTER TABLE `wiki_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_l10n_cache`
--

DROP TABLE IF EXISTS `wiki_l10n_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_l10n_cache` (
  `lc_lang` varbinary(32) NOT NULL,
  `lc_key` varbinary(255) NOT NULL,
  `lc_value` mediumblob NOT NULL,
  KEY `lc_lang_key` (`lc_lang`,`lc_key`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_l10n_cache`
--

LOCK TABLES `wiki_l10n_cache` WRITE;
/*!40000 ALTER TABLE `wiki_l10n_cache` DISABLE KEYS */;
INSERT INTO `wiki_l10n_cache` VALUES ('en','fallback','b:0;'),('en','namespaceNames','a:17:{i:-2;s:5:\"Media\";i:-1;s:7:\"Special\";i:0;s:0:\"\";i:1;s:4:\"Talk\";i:2;s:4:\"User\";i:3;s:9:\"User_talk\";i:5;s:7:\"$1_talk\";i:6;s:4:\"File\";i:7;s:9:\"File_talk\";i:8;s:9:\"MediaWiki\";i:9;s:14:\"MediaWiki_talk\";i:10;s:8:\"Template\";i:11;s:13:\"Template_talk\";i:12;s:4:\"Help\";i:13;s:9:\"Help_talk\";i:14;s:8:\"Category\";i:15;s:13:\"Category_talk\";}'),('en','bookstoreList','a:4:{s:6:\"AddALL\";s:56:\"http://www.addall.com/New/Partner.cgi?query=$1&type=ISBN\";s:9:\"PriceSCAN\";s:53:\"http://www.pricescan.com/books/bookDetail.asp?isbn=$1\";s:14:\"Barnes & Noble\";s:67:\"http://search.barnesandnoble.com/bookSearch/isbnInquiry.asp?isbn=$1\";s:10:\"Amazon.com\";s:46:\"http://www.amazon.com/gp/search/?field-isbn=$1\";}'),('en','magicWords','a:179:{s:4:\"expr\";a:2:{i:0;i:0;i:1;s:4:\"expr\";}s:2:\"if\";a:2:{i:0;i:0;i:1;s:2:\"if\";}s:4:\"ifeq\";a:2:{i:0;i:0;i:1;s:4:\"ifeq\";}s:6:\"ifexpr\";a:2:{i:0;i:0;i:1;s:6:\"ifexpr\";}s:7:\"iferror\";a:2:{i:0;i:0;i:1;s:7:\"iferror\";}s:6:\"switch\";a:2:{i:0;i:0;i:1;s:6:\"switch\";}s:7:\"default\";a:2:{i:0;i:0;i:1;s:8:\"#default\";}s:7:\"ifexist\";a:2:{i:0;i:0;i:1;s:7:\"ifexist\";}s:4:\"time\";a:2:{i:0;i:0;i:1;s:4:\"time\";}s:5:\"timel\";a:2:{i:0;i:0;i:1;s:5:\"timel\";}s:7:\"rel2abs\";a:2:{i:0;i:0;i:1;s:7:\"rel2abs\";}s:10:\"titleparts\";a:2:{i:0;i:0;i:1;s:10:\"titleparts\";}s:7:\"convert\";a:2:{i:0;i:0;i:1;s:7:\"convert\";}s:10:\"sourceunit\";a:2:{i:0;i:0;i:1;s:11:\"#sourceunit\";}s:10:\"targetunit\";a:2:{i:0;i:0;i:1;s:11:\"#targetunit\";}s:8:\"linkunit\";a:2:{i:0;i:0;i:1;s:9:\"#linkunit\";}s:13:\"decimalplaces\";a:2:{i:0;i:0;i:1;s:3:\"#dp\";}s:18:\"significantfigures\";a:2:{i:0;i:0;i:1;s:3:\"#sf\";}s:10:\"abbreviate\";a:2:{i:0;i:0;i:1;s:11:\"#abbreviate\";}s:8:\"language\";a:3:{i:0;i:0;i:1;s:9:\"#language\";i:2;s:10:\"#LANGUAGE:\";}s:3:\"len\";a:2:{i:0;i:0;i:1;s:3:\"len\";}s:3:\"pos\";a:2:{i:0;i:0;i:1;s:3:\"pos\";}s:4:\"rpos\";a:2:{i:0;i:0;i:1;s:4:\"rpos\";}s:3:\"sub\";a:2:{i:0;i:0;i:1;s:3:\"sub\";}s:5:\"count\";a:2:{i:0;i:0;i:1;s:5:\"count\";}s:7:\"replace\";a:2:{i:0;i:0;i:1;s:7:\"replace\";}s:7:\"explode\";a:2:{i:0;i:0;i:1;s:7:\"explode\";}s:9:\"urldecode\";a:2:{i:0;i:0;i:1;s:9:\"urldecode\";}s:8:\"redirect\";a:2:{i:0;i:0;i:1;s:9:\"#REDIRECT\";}s:5:\"notoc\";a:2:{i:0;i:0;i:1;s:9:\"__NOTOC__\";}s:9:\"nogallery\";a:2:{i:0;i:0;i:1;s:13:\"__NOGALLERY__\";}s:8:\"forcetoc\";a:2:{i:0;i:0;i:1;s:12:\"__FORCETOC__\";}s:3:\"toc\";a:2:{i:0;i:0;i:1;s:7:\"__TOC__\";}s:13:\"noeditsection\";a:2:{i:0;i:0;i:1;s:17:\"__NOEDITSECTION__\";}s:8:\"noheader\";a:2:{i:0;i:0;i:1;s:12:\"__NOHEADER__\";}s:12:\"currentmonth\";a:3:{i:0;i:1;i:1;s:12:\"CURRENTMONTH\";i:2;s:13:\"CURRENTMONTH2\";}s:13:\"currentmonth1\";a:2:{i:0;i:1;i:1;s:13:\"CURRENTMONTH1\";}s:16:\"currentmonthname\";a:2:{i:0;i:1;i:1;s:16:\"CURRENTMONTHNAME\";}s:19:\"currentmonthnamegen\";a:2:{i:0;i:1;i:1;s:19:\"CURRENTMONTHNAMEGEN\";}s:18:\"currentmonthabbrev\";a:2:{i:0;i:1;i:1;s:18:\"CURRENTMONTHABBREV\";}s:10:\"currentday\";a:2:{i:0;i:1;i:1;s:10:\"CURRENTDAY\";}s:11:\"currentday2\";a:2:{i:0;i:1;i:1;s:11:\"CURRENTDAY2\";}s:14:\"currentdayname\";a:2:{i:0;i:1;i:1;s:14:\"CURRENTDAYNAME\";}s:11:\"currentyear\";a:2:{i:0;i:1;i:1;s:11:\"CURRENTYEAR\";}s:11:\"currenttime\";a:2:{i:0;i:1;i:1;s:11:\"CURRENTTIME\";}s:11:\"currenthour\";a:2:{i:0;i:1;i:1;s:11:\"CURRENTHOUR\";}s:10:\"localmonth\";a:3:{i:0;i:1;i:1;s:10:\"LOCALMONTH\";i:2;s:11:\"LOCALMONTH2\";}s:11:\"localmonth1\";a:2:{i:0;i:1;i:1;s:11:\"LOCALMONTH1\";}s:14:\"localmonthname\";a:2:{i:0;i:1;i:1;s:14:\"LOCALMONTHNAME\";}s:17:\"localmonthnamegen\";a:2:{i:0;i:1;i:1;s:17:\"LOCALMONTHNAMEGEN\";}s:16:\"localmonthabbrev\";a:2:{i:0;i:1;i:1;s:16:\"LOCALMONTHABBREV\";}s:8:\"localday\";a:2:{i:0;i:1;i:1;s:8:\"LOCALDAY\";}s:9:\"localday2\";a:2:{i:0;i:1;i:1;s:9:\"LOCALDAY2\";}s:12:\"localdayname\";a:2:{i:0;i:1;i:1;s:12:\"LOCALDAYNAME\";}s:9:\"localyear\";a:2:{i:0;i:1;i:1;s:9:\"LOCALYEAR\";}s:9:\"localtime\";a:2:{i:0;i:1;i:1;s:9:\"LOCALTIME\";}s:9:\"localhour\";a:2:{i:0;i:1;i:1;s:9:\"LOCALHOUR\";}s:13:\"numberofpages\";a:2:{i:0;i:1;i:1;s:13:\"NUMBEROFPAGES\";}s:16:\"numberofarticles\";a:2:{i:0;i:1;i:1;s:16:\"NUMBEROFARTICLES\";}s:13:\"numberoffiles\";a:2:{i:0;i:1;i:1;s:13:\"NUMBEROFFILES\";}s:13:\"numberofusers\";a:2:{i:0;i:1;i:1;s:13:\"NUMBEROFUSERS\";}s:19:\"numberofactiveusers\";a:2:{i:0;i:1;i:1;s:19:\"NUMBEROFACTIVEUSERS\";}s:13:\"numberofedits\";a:2:{i:0;i:1;i:1;s:13:\"NUMBEROFEDITS\";}s:13:\"numberofviews\";a:2:{i:0;i:1;i:1;s:13:\"NUMBEROFVIEWS\";}s:8:\"pagename\";a:2:{i:0;i:1;i:1;s:8:\"PAGENAME\";}s:9:\"pagenamee\";a:2:{i:0;i:1;i:1;s:9:\"PAGENAMEE\";}s:9:\"namespace\";a:2:{i:0;i:1;i:1;s:9:\"NAMESPACE\";}s:10:\"namespacee\";a:2:{i:0;i:1;i:1;s:10:\"NAMESPACEE\";}s:9:\"talkspace\";a:2:{i:0;i:1;i:1;s:9:\"TALKSPACE\";}s:10:\"talkspacee\";a:2:{i:0;i:1;i:1;s:10:\"TALKSPACEE\";}s:12:\"subjectspace\";a:3:{i:0;i:1;i:1;s:12:\"SUBJECTSPACE\";i:2;s:12:\"ARTICLESPACE\";}s:13:\"subjectspacee\";a:3:{i:0;i:1;i:1;s:13:\"SUBJECTSPACEE\";i:2;s:13:\"ARTICLESPACEE\";}s:12:\"fullpagename\";a:2:{i:0;i:1;i:1;s:12:\"FULLPAGENAME\";}s:13:\"fullpagenamee\";a:2:{i:0;i:1;i:1;s:13:\"FULLPAGENAMEE\";}s:11:\"subpagename\";a:2:{i:0;i:1;i:1;s:11:\"SUBPAGENAME\";}s:12:\"subpagenamee\";a:2:{i:0;i:1;i:1;s:12:\"SUBPAGENAMEE\";}s:12:\"basepagename\";a:2:{i:0;i:1;i:1;s:12:\"BASEPAGENAME\";}s:13:\"basepagenamee\";a:2:{i:0;i:1;i:1;s:13:\"BASEPAGENAMEE\";}s:12:\"talkpagename\";a:2:{i:0;i:1;i:1;s:12:\"TALKPAGENAME\";}s:13:\"talkpagenamee\";a:2:{i:0;i:1;i:1;s:13:\"TALKPAGENAMEE\";}s:15:\"subjectpagename\";a:3:{i:0;i:1;i:1;s:15:\"SUBJECTPAGENAME\";i:2;s:15:\"ARTICLEPAGENAME\";}s:16:\"subjectpagenamee\";a:3:{i:0;i:1;i:1;s:16:\"SUBJECTPAGENAMEE\";i:2;s:16:\"ARTICLEPAGENAMEE\";}s:3:\"msg\";a:2:{i:0;i:0;i:1;s:4:\"MSG:\";}s:5:\"subst\";a:2:{i:0;i:0;i:1;s:6:\"SUBST:\";}s:9:\"safesubst\";a:2:{i:0;i:0;i:1;s:10:\"SAFESUBST:\";}s:5:\"msgnw\";a:2:{i:0;i:0;i:1;s:6:\"MSGNW:\";}s:13:\"img_thumbnail\";a:3:{i:0;i:1;i:1;s:9:\"thumbnail\";i:2;s:5:\"thumb\";}s:15:\"img_manualthumb\";a:3:{i:0;i:1;i:1;s:12:\"thumbnail=$1\";i:2;s:8:\"thumb=$1\";}s:9:\"img_right\";a:2:{i:0;i:1;i:1;s:5:\"right\";}s:8:\"img_left\";a:2:{i:0;i:1;i:1;s:4:\"left\";}s:8:\"img_none\";a:2:{i:0;i:1;i:1;s:4:\"none\";}s:9:\"img_width\";a:2:{i:0;i:1;i:1;s:4:\"$1px\";}s:10:\"img_center\";a:3:{i:0;i:1;i:1;s:6:\"center\";i:2;s:6:\"centre\";}s:10:\"img_framed\";a:4:{i:0;i:1;i:1;s:6:\"framed\";i:2;s:8:\"enframed\";i:3;s:5:\"frame\";}s:13:\"img_frameless\";a:2:{i:0;i:1;i:1;s:9:\"frameless\";}s:8:\"img_page\";a:3:{i:0;i:1;i:1;s:7:\"page=$1\";i:2;s:7:\"page $1\";}s:11:\"img_upright\";a:4:{i:0;i:1;i:1;s:7:\"upright\";i:2;s:10:\"upright=$1\";i:3;s:10:\"upright $1\";}s:10:\"img_border\";a:2:{i:0;i:1;i:1;s:6:\"border\";}s:12:\"img_baseline\";a:2:{i:0;i:1;i:1;s:8:\"baseline\";}s:7:\"img_sub\";a:2:{i:0;i:1;i:1;s:3:\"sub\";}s:9:\"img_super\";a:3:{i:0;i:1;i:1;s:5:\"super\";i:2;s:3:\"sup\";}s:7:\"img_top\";a:2:{i:0;i:1;i:1;s:3:\"top\";}s:12:\"img_text_top\";a:2:{i:0;i:1;i:1;s:8:\"text-top\";}s:10:\"img_middle\";a:2:{i:0;i:1;i:1;s:6:\"middle\";}s:10:\"img_bottom\";a:2:{i:0;i:1;i:1;s:6:\"bottom\";}s:15:\"img_text_bottom\";a:2:{i:0;i:1;i:1;s:11:\"text-bottom\";}s:8:\"img_link\";a:2:{i:0;i:1;i:1;s:7:\"link=$1\";}s:7:\"img_alt\";a:2:{i:0;i:1;i:1;s:6:\"alt=$1\";}s:3:\"int\";a:2:{i:0;i:0;i:1;s:4:\"INT:\";}s:8:\"sitename\";a:2:{i:0;i:1;i:1;s:8:\"SITENAME\";}s:2:\"ns\";a:2:{i:0;i:0;i:1;s:3:\"NS:\";}s:3:\"nse\";a:2:{i:0;i:0;i:1;s:4:\"NSE:\";}s:8:\"localurl\";a:2:{i:0;i:0;i:1;s:9:\"LOCALURL:\";}s:9:\"localurle\";a:2:{i:0;i:0;i:1;s:10:\"LOCALURLE:\";}s:11:\"articlepath\";a:2:{i:0;i:0;i:1;s:11:\"ARTICLEPATH\";}s:6:\"server\";a:2:{i:0;i:0;i:1;s:6:\"SERVER\";}s:10:\"servername\";a:2:{i:0;i:0;i:1;s:10:\"SERVERNAME\";}s:10:\"scriptpath\";a:2:{i:0;i:0;i:1;s:10:\"SCRIPTPATH\";}s:9:\"stylepath\";a:2:{i:0;i:0;i:1;s:9:\"STYLEPATH\";}s:7:\"grammar\";a:2:{i:0;i:0;i:1;s:8:\"GRAMMAR:\";}s:6:\"gender\";a:2:{i:0;i:0;i:1;s:7:\"GENDER:\";}s:14:\"notitleconvert\";a:3:{i:0;i:0;i:1;s:18:\"__NOTITLECONVERT__\";i:2;s:8:\"__NOTC__\";}s:16:\"nocontentconvert\";a:3:{i:0;i:0;i:1;s:20:\"__NOCONTENTCONVERT__\";i:2;s:8:\"__NOCC__\";}s:11:\"currentweek\";a:2:{i:0;i:1;i:1;s:11:\"CURRENTWEEK\";}s:10:\"currentdow\";a:2:{i:0;i:1;i:1;s:10:\"CURRENTDOW\";}s:9:\"localweek\";a:2:{i:0;i:1;i:1;s:9:\"LOCALWEEK\";}s:8:\"localdow\";a:2:{i:0;i:1;i:1;s:8:\"LOCALDOW\";}s:10:\"revisionid\";a:2:{i:0;i:1;i:1;s:10:\"REVISIONID\";}s:11:\"revisionday\";a:2:{i:0;i:1;i:1;s:11:\"REVISIONDAY\";}s:12:\"revisionday2\";a:2:{i:0;i:1;i:1;s:12:\"REVISIONDAY2\";}s:13:\"revisionmonth\";a:2:{i:0;i:1;i:1;s:13:\"REVISIONMONTH\";}s:14:\"revisionmonth1\";a:2:{i:0;i:1;i:1;s:14:\"REVISIONMONTH1\";}s:12:\"revisionyear\";a:2:{i:0;i:1;i:1;s:12:\"REVISIONYEAR\";}s:17:\"revisiontimestamp\";a:2:{i:0;i:1;i:1;s:17:\"REVISIONTIMESTAMP\";}s:12:\"revisionuser\";a:2:{i:0;i:1;i:1;s:12:\"REVISIONUSER\";}s:6:\"plural\";a:2:{i:0;i:0;i:1;s:7:\"PLURAL:\";}s:7:\"fullurl\";a:2:{i:0;i:0;i:1;s:8:\"FULLURL:\";}s:8:\"fullurle\";a:2:{i:0;i:0;i:1;s:9:\"FULLURLE:\";}s:12:\"canonicalurl\";a:2:{i:0;i:0;i:1;s:13:\"CANONICALURL:\";}s:13:\"canonicalurle\";a:2:{i:0;i:0;i:1;s:14:\"CANONICALURLE:\";}s:7:\"lcfirst\";a:2:{i:0;i:0;i:1;s:8:\"LCFIRST:\";}s:7:\"ucfirst\";a:2:{i:0;i:0;i:1;s:8:\"UCFIRST:\";}s:2:\"lc\";a:2:{i:0;i:0;i:1;s:3:\"LC:\";}s:2:\"uc\";a:2:{i:0;i:0;i:1;s:3:\"UC:\";}s:3:\"raw\";a:2:{i:0;i:0;i:1;s:4:\"RAW:\";}s:12:\"displaytitle\";a:2:{i:0;i:1;i:1;s:12:\"DISPLAYTITLE\";}s:9:\"rawsuffix\";a:2:{i:0;i:1;i:1;s:1:\"R\";}s:14:\"newsectionlink\";a:2:{i:0;i:1;i:1;s:18:\"__NEWSECTIONLINK__\";}s:16:\"nonewsectionlink\";a:2:{i:0;i:1;i:1;s:20:\"__NONEWSECTIONLINK__\";}s:14:\"currentversion\";a:2:{i:0;i:1;i:1;s:14:\"CURRENTVERSION\";}s:9:\"urlencode\";a:2:{i:0;i:0;i:1;s:10:\"URLENCODE:\";}s:12:\"anchorencode\";a:2:{i:0;i:0;i:1;s:12:\"ANCHORENCODE\";}s:16:\"currenttimestamp\";a:2:{i:0;i:1;i:1;s:16:\"CURRENTTIMESTAMP\";}s:14:\"localtimestamp\";a:2:{i:0;i:1;i:1;s:14:\"LOCALTIMESTAMP\";}s:13:\"directionmark\";a:3:{i:0;i:1;i:1;s:13:\"DIRECTIONMARK\";i:2;s:7:\"DIRMARK\";}s:15:\"contentlanguage\";a:3:{i:0;i:1;i:1;s:15:\"CONTENTLANGUAGE\";i:2;s:11:\"CONTENTLANG\";}s:16:\"pagesinnamespace\";a:3:{i:0;i:1;i:1;s:17:\"PAGESINNAMESPACE:\";i:2;s:10:\"PAGESINNS:\";}s:14:\"numberofadmins\";a:2:{i:0;i:1;i:1;s:14:\"NUMBEROFADMINS\";}s:9:\"formatnum\";a:2:{i:0;i:0;i:1;s:9:\"FORMATNUM\";}s:7:\"padleft\";a:2:{i:0;i:0;i:1;s:7:\"PADLEFT\";}s:8:\"padright\";a:2:{i:0;i:0;i:1;s:8:\"PADRIGHT\";}s:7:\"special\";a:2:{i:0;i:0;i:1;s:7:\"special\";}s:11:\"defaultsort\";a:4:{i:0;i:1;i:1;s:12:\"DEFAULTSORT:\";i:2;s:15:\"DEFAULTSORTKEY:\";i:3;s:20:\"DEFAULTCATEGORYSORT:\";}s:8:\"filepath\";a:2:{i:0;i:0;i:1;s:9:\"FILEPATH:\";}s:3:\"tag\";a:2:{i:0;i:0;i:1;s:3:\"tag\";}s:9:\"hiddencat\";a:2:{i:0;i:1;i:1;s:13:\"__HIDDENCAT__\";}s:15:\"pagesincategory\";a:3:{i:0;i:1;i:1;s:15:\"PAGESINCATEGORY\";i:2;s:10:\"PAGESINCAT\";}s:8:\"pagesize\";a:2:{i:0;i:1;i:1;s:8:\"PAGESIZE\";}s:5:\"index\";a:2:{i:0;i:1;i:1;s:9:\"__INDEX__\";}s:7:\"noindex\";a:2:{i:0;i:1;i:1;s:11:\"__NOINDEX__\";}s:13:\"numberingroup\";a:3:{i:0;i:1;i:1;s:13:\"NUMBERINGROUP\";i:2;s:10:\"NUMINGROUP\";}s:14:\"staticredirect\";a:2:{i:0;i:1;i:1;s:18:\"__STATICREDIRECT__\";}s:15:\"protectionlevel\";a:2:{i:0;i:1;i:1;s:15:\"PROTECTIONLEVEL\";}s:10:\"formatdate\";a:3:{i:0;i:0;i:1;s:10:\"formatdate\";i:2;s:10:\"dateformat\";}s:8:\"url_path\";a:2:{i:0;i:0;i:1;s:4:\"PATH\";}s:8:\"url_wiki\";a:2:{i:0;i:0;i:1;s:4:\"WIKI\";}s:9:\"url_query\";a:2:{i:0;i:0;i:1;s:5:\"QUERY\";}s:19:\"defaultsort_noerror\";a:2:{i:0;i:0;i:1;s:7:\"noerror\";}s:21:\"defaultsort_noreplace\";a:2:{i:0;i:0;i:1;s:9:\"noreplace\";}}'),('en','messages:captcha-edit','s:122:\"To edit this page, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-desc','s:73:\"Provides CAPTCHA techniques to protect against spam and password-guessing\";'),('en','messages:captcha-label','s:7:\"CAPTCHA\";'),('en','messages:captcha-addurl','s:182:\"Your edit includes new external links.\nTo help protect against automated spam, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-badlogin','s:156:\"To help protect against automated password cracking, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-createaccount','s:155:\"To help protect against automated account creation, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-createaccount-fail','s:39:\"Incorrect or missing confirmation code.\";'),('en','messages:captcha-create','s:123:\"To create the page, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-sendemail','s:147:\"To help protect against automated spamming, please solve the simple sum below and enter the answer in the box ([[Special:Captcha/help|more info]]):\";'),('en','messages:captcha-sendemail-fail','s:39:\"Incorrect or missing confirmation code.\";'),('en','messages:captcha-disabledinapi','s:74:\"This action requires a captcha, so it cannot be performed through the API.\";'),('en','messages:captchahelp-title','s:12:\"CAPTCHA help\";'),('en','messages:captchahelp-cookies-needed','s:71:\"You will need to have cookies enabled in your browser for this to work.\";'),('en','messages:captchahelp-text','s:933:\"Web sites that accept postings from the public, like this wiki, are often abused by spammers who use automated tools to post their links to many sites.\nWhile these spam links can be removed, they are a significant nuisance.\n\nSometimes, especially when adding new web links to a page, the wiki may show you an image of colored or distorted text and ask you to type the words shown.\nSince this is a task that\'s hard to automate, it will allow most real humans to make their posts while stopping most spammers and other robotic attackers.\n\nUnfortunately this may inconvenience users with limited vision or using text-based or speech-based browsers.\nAt the moment we do not have an audio alternative available.\nPlease contact the  [[{{MediaWiki:Grouppage-sysop}}|site administrators]] for assistance if this is unexpectedly preventing you from making legitimate posts.\n\nHit the \'back\' button in your browser to return to the page editor.\";'),('en','messages:captcha-addurl-whitelist','s:285:\" #<!-- leave this line exactly as it is --> <pre>\n# Syntax is as follows:\n#   * Everything from a \"#\" character to the end of the line is a comment\n#   * Every non-blank line is a regex fragment which will only match hosts inside URLs\n #</pre> <!-- leave this line exactly as it is -->\";'),('en','messages:right-skipcaptcha','s:75:\"Perform CAPTCHA-triggering actions without having to go through the CAPTCHA\";'),('en','messages:gadgets-desc','s:116:\"Lets users select custom [[Special:Gadgets|CSS and JavaScript gadgets]] in their [[Special:Preferences|preferences]]\";'),('en','messages:prefs-gadgets','s:7:\"Gadgets\";'),('en','messages:gadgets-prefstext','s:535:\"Below is a list of special gadgets you can enable for your account.\nThese gadgets are mostly based on JavaScript, so JavaScript has to be enabled in your browser for them to work.\nNote that these gadgets will have no effect on this preferences page.\n\nAlso note that these special gadgets are not part of the MediaWiki software, and are usually developed and maintained by users on your local wiki.\nLocal administrators can edit the [[MediaWiki:Gadgets-definition|definitions]] and [[Special:Gadgets|descriptions]] of available gadgets.\";'),('en','messages:gadgets','s:7:\"Gadgets\";'),('en','messages:gadgets-definition','s:0:\"\";'),('en','messages:gadgets-title','s:7:\"Gadgets\";'),('en','messages:gadgets-pagetext','s:277:\"Below is a list of special gadgets users can enable on their [[Special:Preferences|preferences page]], as defined by the [[MediaWiki:Gadgets-definition|definitions]].\nThis overview provides easy access to the system message pages that define each gadget\'s description and code.\";'),('en','messages:gadgets-uses','s:4:\"Uses\";'),('en','messages:gadgets-required-rights','s:54:\"Requires the following {{PLURAL:$2|right|rights}}:\n\n$1\";'),('en','messages:gadgets-required-skins','s:59:\"Available on the {{PLURAL:$2|$1 skin|following skins: $1}}.\";'),('en','messages:gadgets-default','s:32:\"Enabled for everyone by default.\";'),('en','messages:gadgets-export','s:6:\"Export\";'),('en','messages:gadgets-export-title','s:13:\"Gadget export\";'),('en','messages:gadgets-not-found','s:22:\"Gadget \"$1\" not found.\";'),('en','messages:gadgets-export-text','s:382:\"To export the $1 gadget, click on \"{{int:gadgets-export-download}}\" button, save the downloaded file,\ngo to Special:Import on destination wiki and upload it. Then add the following to MediaWiki:Gadgets-definition page:\n<pre>$2</pre>\nYou must have appropriate permissions on destination wiki (including the right to edit system messages) and import from file uploads must be enabled.\";'),('en','messages:gadgets-export-download','s:8:\"Download\";'),('en','messages:nuke','s:11:\"Mass delete\";'),('en','messages:action-nuke','s:10:\"nuke pages\";'),('en','messages:nuke-desc','s:70:\"Gives administrators the ability to [[Special:Nuke|mass delete]] pages\";'),('en','messages:nuke-nopages','s:66:\"No new pages by [[Special:Contributions/$1|$1]] in recent changes.\";'),('en','messages:nuke-list','s:129:\"The following pages were recently created by [[Special:Contributions/$1|$1]];\nput in a comment and hit the button to delete them.\";'),('en','messages:nuke-list-multiple','s:94:\"The following pages were recently created;\nput in a comment and hit the button to delete them.\";'),('en','messages:nuke-defaultreason','s:34:\"Mass deletion of pages added by $1\";'),('en','messages:nuke-multiplepeople','s:37:\"Mass deletion of recently added pages\";'),('en','messages:nuke-tools','s:190:\"This tool allows for mass deletions of pages recently added by a given user or an IP address.\nInput the username or IP address to get a list of pages to delete, or leave blank for all users.\";'),('en','messages:nuke-submit-user','s:2:\"Go\";'),('en','messages:nuke-submit-delete','s:15:\"Delete selected\";'),('en','messages:right-nuke','s:17:\"Mass delete pages\";'),('en','messages:nuke-select','s:10:\"Select: $1\";'),('en','messages:nuke-userorip','s:30:\"Username, IP address or blank:\";'),('en','messages:nuke-maxpages','s:24:\"Maximum number of pages:\";'),('en','messages:nuke-editby','s:42:\"Created by [[Special:Contributions/$1|$1]]\";'),('en','messages:nuke-deleted','s:31:\"Page \'\'\'$1\'\'\' has been deleted.\";'),('en','messages:nuke-not-deleted','s:40:\"Page [[:$1]] \'\'\'could not\'\'\' be deleted.\";'),('en','messages:nuke-delete-more','s:34:\"[[Special:Nuke|Delete more pages]]\";'),('en','messages:nuke-pattern','s:26:\"Pattern for the page name:\";'),('en','messages:nuke-nopages-global','s:67:\"There are no new pages in [[Special:RecentChanges|recent changes]].\";'),('en','messages:nuke-viewchanges','s:12:\"view changes\";'),('en','messages:pfunc_desc','s:37:\"Enhance parser with logical functions\";'),('en','messages:pfunc_time_error','s:20:\"Error: Invalid time.\";'),('en','messages:pfunc_time_too_long','s:28:\"Error: Too many #time calls.\";'),('en','messages:pfunc_time_too_big','s:44:\"Error: #time only supports years up to 9999.\";'),('en','messages:pfunc_rel2abs_invalid_depth','s:80:\"Error: Invalid depth in path: \"$1\" (tried to access a node above the root node).\";'),('en','messages:pfunc_expr_stack_exhausted','s:34:\"Expression error: Stack exhausted.\";'),('en','messages:pfunc_expr_unexpected_number','s:36:\"Expression error: Unexpected number.\";'),('en','messages:pfunc_expr_preg_match_failure','s:48:\"Expression error: Unexpected preg_match failure.\";'),('en','messages:pfunc_expr_unrecognised_word','s:41:\"Expression error: Unrecognised word \"$1\".\";'),('en','messages:pfunc_expr_unexpected_operator','s:41:\"Expression error: Unexpected $1 operator.\";'),('en','messages:pfunc_expr_missing_operand','s:41:\"Expression error: Missing operand for $1.\";'),('en','messages:pfunc_expr_unexpected_closing_bracket','s:45:\"Expression error: Unexpected closing bracket.\";'),('en','messages:pfunc_expr_unrecognised_punctuation','s:58:\"Expression error: Unrecognised punctuation character \"$1\".\";'),('en','messages:pfunc_expr_unclosed_bracket','s:35:\"Expression error: Unclosed bracket.\";'),('en','messages:pfunc_expr_division_by_zero','s:17:\"Division by zero.\";'),('en','messages:pfunc_expr_invalid_argument','s:37:\"Invalid argument for $1: < -1 or > 1.\";'),('en','messages:pfunc_expr_invalid_argument_ln','s:30:\"Invalid argument for ln: <= 0.\";'),('en','messages:pfunc_expr_unknown_error','s:37:\"Expression error: Unknown error ($1).\";'),('en','messages:pfunc_expr_not_a_number','s:30:\"In $1: Result is not a number.\";'),('en','messages:pfunc_string_too_long','s:41:\"Error: String exceeds $1 character limit.\";'),('en','messages:pfunc-convert-dimensionmismatch','s:53:\"Error: Cannot convert between units of \"$1\" and \"$2\".\";'),('en','messages:pfunc-convert-unknownunit','s:25:\"Error: Unknown unit \"$1\".\";'),('en','messages:pfunc-convert-unknowndimension','s:30:\"Error: Unknown dimension \"$1\".\";'),('en','messages:pfunc-convert-invalidcompoundunit','s:34:\"Error: Invalid compound unit \"$1\".\";'),('en','messages:pfunc-convert-nounit','s:28:\"Error: No source unit given.\";'),('en','messages:pfunc-convert-doublecompoundunit','s:52:\"Error: Cannot parse double compound units like \"$1\".\";'),('en','messages:pfunc-convert-dimension-length','s:6:\"length\";'),('en','messages:pfunc-convert-dimension-area','s:4:\"area\";'),('en','messages:pfunc-convert-dimension-volume','s:6:\"volume\";'),('en','messages:pfunc-convert-dimension-time','s:4:\"time\";'),('en','messages:pfunc-convert-dimension-timesquared','s:16:\"time<sup>2</sup>\";'),('en','messages:pfunc-convert-dimension-mass','s:4:\"mass\";'),('en','messages:pfunc-convert-dimension-speed','s:5:\"speed\";'),('en','messages:pfunc-convert-dimension-temperature','s:11:\"temperature\";'),('en','messages:pfunc-convert-dimension-acceleration','s:12:\"acceleration\";'),('en','messages:pfunc-convert-dimension-force','s:5:\"force\";'),('en','messages:pfunc-convert-dimension-torque','s:6:\"torque\";'),('en','messages:pfunc-convert-dimension-energy','s:6:\"energy\";'),('en','messages:pfunc-convert-dimension-power','s:5:\"power\";'),('en','messages:pfunc-convert-dimension-pressure','s:8:\"pressure\";'),('en','messages:pfunc-convert-dimension-density','s:7:\"density\";'),('en','messages:pfunc-convert-dimension-fuelefficiencypositive','s:22:\"fuelefficiencypositive\";'),('en','messages:pfunc-convert-dimension-fuelefficiencynegative','s:22:\"fuelefficiencynegative\";'),('en','messages:pfunc-convert-prefix-yotta','s:5:\"yotta\";'),('en','messages:pfunc-convert-prefix-zetta','s:5:\"zetta\";'),('en','messages:pfunc-convert-prefix-exa','s:3:\"exa\";'),('en','messages:pfunc-convert-prefix-peta','s:4:\"peta\";'),('en','messages:pfunc-convert-prefix-tera','s:4:\"tera\";'),('en','messages:pfunc-convert-prefix-giga','s:4:\"giga\";'),('en','messages:pfunc-convert-prefix-mega','s:4:\"mega\";'),('en','messages:pfunc-convert-prefix-kilo','s:4:\"kilo\";'),('en','messages:pfunc-convert-prefix-hecto','s:5:\"hecto\";'),('en','messages:pfunc-convert-prefix-deca','s:4:\"deca\";'),('en','messages:pfunc-convert-prefix-deci','s:4:\"deci\";'),('en','messages:pfunc-convert-prefix-centi','s:5:\"centi\";'),('en','messages:pfunc-convert-prefix-milli','s:5:\"milli\";'),('en','messages:pfunc-convert-prefix-micro','s:5:\"micro\";'),('en','messages:pfunc-convert-prefix-nano','s:4:\"nano\";'),('en','messages:pfunc-convert-prefix-pico','s:4:\"pico\";'),('en','messages:pfunc-convert-prefix-femto','s:5:\"femto\";'),('en','messages:pfunc-convert-prefix-atto','s:4:\"atto\";'),('en','messages:pfunc-convert-prefix-zepto','s:5:\"zepto\";'),('en','messages:pfunc-convert-prefix-yocto','s:5:\"yocto\";'),('en','messages:pfunc-convert-prefix-yotta-abbr','s:1:\"Y\";'),('en','messages:pfunc-convert-prefix-zetta-abbr','s:1:\"Z\";'),('en','messages:pfunc-convert-prefix-exa-abbr','s:1:\"E\";'),('en','messages:pfunc-convert-prefix-peta-abbr','s:1:\"P\";'),('en','messages:pfunc-convert-prefix-tera-abbr','s:1:\"T\";'),('en','messages:pfunc-convert-prefix-giga-abbr','s:1:\"G\";'),('en','messages:pfunc-convert-prefix-mega-abbr','s:1:\"M\";'),('en','messages:pfunc-convert-prefix-kilo-abbr','s:1:\"k\";'),('en','messages:pfunc-convert-prefix-hecto-abbr','s:1:\"h\";'),('en','messages:pfunc-convert-prefix-deca-abbr','s:2:\"da\";'),('en','messages:pfunc-convert-prefix-deci-abbr','s:1:\"d\";'),('en','messages:pfunc-convert-prefix-centi-abbr','s:1:\"c\";'),('en','messages:pfunc-convert-prefix-milli-abbr','s:1:\"m\";'),('en','messages:pfunc-convert-prefix-micro-abbr','s:2:\"μ\";'),('en','messages:pfunc-convert-prefix-nano-abbr','s:1:\"n\";'),('en','messages:pfunc-convert-prefix-pico-abbr','s:1:\"p\";'),('en','messages:pfunc-convert-prefix-femto-abbr','s:1:\"f\";'),('en','messages:pfunc-convert-prefix-atto-abbr','s:1:\"a\";'),('en','messages:pfunc-convert-prefix-zepto-abbr','s:1:\"z\";'),('en','messages:pfunc-convert-prefix-yocto-abbr','s:1:\"y\";'),('en','messages:pfunc-convert-unit-length-metre','s:32:\"$1{{PLURAL:$2|$3meter|$3meters}}\";'),('en','messages:pfunc-convert-unit-length-angstrom','s:34:\"$1{{PLURAL:$2|angstrom|angstroms}}\";'),('en','messages:pfunc-convert-unit-length-mile','s:26:\"$1{{PLURAL:$2|mile|miles}}\";'),('en','messages:pfunc-convert-unit-length-furlong','s:32:\"$1{{PLURAL:$2|furlong|furlongs}}\";'),('en','messages:pfunc-convert-unit-length-chain','s:28:\"$1{{PLURAL:$2|chain|chains}}\";'),('en','messages:pfunc-convert-unit-length-rod','s:24:\"$1{{PLURAL:$2|rod|rods}}\";'),('en','messages:pfunc-convert-unit-length-fathom','s:30:\"$1{{PLURAL:$2|fathom|fathoms}}\";'),('en','messages:pfunc-convert-unit-length-yard','s:26:\"$1{{PLURAL:$2|yard|yards}}\";'),('en','messages:pfunc-convert-unit-length-foot','s:25:\"$1{{PLURAL:$2|foot|feet}}\";'),('en','messages:pfunc-convert-unit-length-hand','s:26:\"$1{{PLURAL:$2|hand|hands}}\";'),('en','messages:pfunc-convert-unit-length-inch','s:27:\"$1{{PLURAL:$2|inch|inches}}\";'),('en','messages:pfunc-convert-unit-length-nauticalmile','s:44:\"$1{{PLURAL:$2|nautical mile|nautical miles}}\";'),('en','messages:pfunc-convert-unit-length-nauticalmileuk','s:82:\"$1{{PLURAL:$2|nautical mile (pre-1970 British)|nautical miles (pre-1970 British)}}\";'),('en','messages:pfunc-convert-unit-length-nauticalmileus','s:72:\"$1{{PLURAL:$2|nautical mile (pre-1954 US)|nautical miles (pre-1954 US)}}\";'),('en','messages:pfunc-convert-unit-length-parsec','s:34:\"$1{{PLURAL:$2|$3parsec|$3parsecs}}\";'),('en','messages:pfunc-convert-unit-length-lightyear','s:40:\"$1{{PLURAL:$2|$3lightyear|$3lightyears}}\";'),('en','messages:pfunc-convert-unit-length-astronomicalunit','s:52:\"$1{{PLURAL:$2|astronomical unit|astronomical units}}\";'),('en','messages:pfunc-convert-unit-length-metre-abbr','s:5:\"$1$3m\";'),('en','messages:pfunc-convert-unit-length-angstrom-abbr','s:4:\"$1Å\";'),('en','messages:pfunc-convert-unit-length-mile-abbr','s:4:\"$1mi\";'),('en','messages:pfunc-convert-unit-length-furlong-abbr','s:9:\"$1furlong\";'),('en','messages:pfunc-convert-unit-length-chain-abbr','s:7:\"$1chain\";'),('en','messages:pfunc-convert-unit-length-rod-abbr','s:4:\"$1rd\";'),('en','messages:pfunc-convert-unit-length-fathom-abbr','s:8:\"$1fathom\";'),('en','messages:pfunc-convert-unit-length-yard-abbr','s:4:\"$1yd\";'),('en','messages:pfunc-convert-unit-length-foot-abbr','s:4:\"$1ft\";'),('en','messages:pfunc-convert-unit-length-hand-abbr','s:3:\"$1h\";'),('en','messages:pfunc-convert-unit-length-inch-abbr','s:4:\"$1in\";'),('en','messages:pfunc-convert-unit-length-nauticalmile-abbr','s:5:\"$1nmi\";'),('en','messages:pfunc-convert-unit-length-nauticalmileuk-abbr','s:12:\"$1nmi (Brit)\";'),('en','messages:pfunc-convert-unit-length-nauticalmileus-abbr','s:19:\"$1nmi (pre-1954 US)\";'),('en','messages:pfunc-convert-unit-length-parsec-abbr','s:6:\"$1$3pc\";'),('en','messages:pfunc-convert-unit-length-lightyear-abbr','s:6:\"$1$3ly\";'),('en','messages:pfunc-convert-unit-length-astronomicalunit-abbr','s:4:\"$1AU\";'),('en','messages:pfunc-convert-unit-area-squarekilometre','s:50:\"$1{{PLURAL:$2|square kilometer|square kilometers}}\";'),('en','messages:pfunc-convert-unit-area-squaremetre','s:42:\"$1{{PLURAL:$2|square meter|square meters}}\";'),('en','messages:pfunc-convert-unit-area-squarecentimetre','s:52:\"$1{{PLURAL:$2|square centimeter|square centimeters}}\";'),('en','messages:pfunc-convert-unit-area-squaremillimetre','s:52:\"$1{{PLURAL:$2|square millimeter|square millimeters}}\";'),('en','messages:pfunc-convert-unit-area-hectare','s:32:\"$1{{PLURAL:$2|hectare|hectares}}\";'),('en','messages:pfunc-convert-unit-area-squaremile','s:40:\"$1{{PLURAL:$2|square mile|square miles}}\";'),('en','messages:pfunc-convert-unit-area-acre','s:26:\"$1{{PLURAL:$2|acre|acres}}\";'),('en','messages:pfunc-convert-unit-area-squareyard','s:40:\"$1{{PLURAL:$2|square yard|square yards}}\";'),('en','messages:pfunc-convert-unit-area-squarefoot','s:39:\"$1{{PLURAL:$2|square foot|square feet}}\";'),('en','messages:pfunc-convert-unit-area-squareinch','s:41:\"$1{{PLURAL:$2|square inch|square inches}}\";'),('en','messages:pfunc-convert-unit-area-squarenauticalmile','s:58:\"$1{{PLURAL:$2|square nautical mile|square nautical miles}}\";'),('en','messages:pfunc-convert-unit-area-dunam','s:28:\"$1{{PLURAL:$2|dunam|dunams}}\";'),('en','messages:pfunc-convert-unit-area-tsubo','s:27:\"$1{{PLURAL:$2|tsubo|tsubo}}\";'),('en','messages:pfunc-convert-unit-area-squarekilometre-abbr','s:16:\"$1km<sup>2</sup>\";'),('en','messages:pfunc-convert-unit-area-squaremetre-abbr','s:15:\"$1m<sup>2</sup>\";'),('en','messages:pfunc-convert-unit-area-squarecentimetre-abbr','s:16:\"$1cm<sup>2</sup>\";'),('en','messages:pfunc-convert-unit-area-squaremillimetre-abbr','s:16:\"$1mm<sup>2</sup>\";'),('en','messages:pfunc-convert-unit-area-hectare-abbr','s:4:\"$1ha\";'),('en','messages:pfunc-convert-unit-area-squaremile-abbr','s:7:\"$1sq mi\";'),('en','messages:pfunc-convert-unit-area-acre-abbr','s:6:\"$1acre\";'),('en','messages:pfunc-convert-unit-area-squareyard-abbr','s:7:\"$1sq yd\";'),('en','messages:pfunc-convert-unit-area-squarefoot-abbr','s:7:\"$1sq ft\";'),('en','messages:pfunc-convert-unit-area-squareinch-abbr','s:7:\"$1sq in\";'),('en','messages:pfunc-convert-unit-area-squarenauticalmile-abbr','s:8:\"$1sq nmi\";'),('en','messages:pfunc-convert-unit-area-dunam-abbr','s:7:\"$1dunam\";'),('en','messages:pfunc-convert-unit-area-tsubo-abbr','s:7:\"$1tsubo\";'),('en','messages:pfunc-convert-unit-time-second','s:30:\"$1{{PLURAL:$2|second|seconds}}\";'),('en','messages:pfunc-convert-unit-time-year','s:30:\"$1{{PLURAL:$2|$3year|$3years}}\";'),('en','messages:pfunc-convert-unit-time-day','s:24:\"$1{{PLURAL:$2|day|days}}\";'),('en','messages:pfunc-convert-unit-time-hour','s:26:\"$1{{PLURAL:$2|hour|hours}}\";'),('en','messages:pfunc-convert-unit-time-minute','s:30:\"$1{{PLURAL:$2|minute|minutes}}\";'),('en','messages:pfunc-convert-unit-time-second-abbr','s:3:\"$1s\";'),('en','messages:pfunc-convert-unit-time-year-abbr','s:6:\"$1$3yr\";'),('en','messages:pfunc-convert-unit-time-day-abbr','s:5:\"$1day\";'),('en','messages:pfunc-convert-unit-time-hour-abbr','s:4:\"$1hr\";'),('en','messages:pfunc-convert-unit-time-minute-abbr','s:5:\"$1min\";'),('en','messages:pfunc-convert-unit-volume-cubicmetre','s:40:\"$1{{PLURAL:$2|cubic meter|cubic meters}}\";'),('en','messages:pfunc-convert-unit-volume-cubiccentimetre','s:50:\"$1{{PLURAL:$2|cubic centimeter|cubic centimeters}}\";'),('en','messages:pfunc-convert-unit-volume-cubicmillimetre','s:50:\"$1{{PLURAL:$2|cubic millimeter|cubic millimeters}}\";'),('en','messages:pfunc-convert-unit-volume-kilolitre','s:36:\"$1{{PLURAL:$2|kiloliter|kiloliters}}\";'),('en','messages:pfunc-convert-unit-volume-litre','s:28:\"$1{{PLURAL:$2|liter|liters}}\";'),('en','messages:pfunc-convert-unit-volume-centilitre','s:38:\"$1{{PLURAL:$2|centiliter|centiliters}}\";'),('en','messages:pfunc-convert-unit-volume-millilitre','s:38:\"$1{{PLURAL:$2|milliliter|milliliters}}\";'),('en','messages:pfunc-convert-unit-volume-cubicyard','s:38:\"$1{{PLURAL:$2|cubic yard|cubic yards}}\";'),('en','messages:pfunc-convert-unit-volume-cubicfoot','s:37:\"$1{{PLURAL:$2|cubic foot|cubic feet}}\";'),('en','messages:pfunc-convert-unit-volume-cubicinch','s:39:\"$1{{PLURAL:$2|cubic inch|cubic inches}}\";'),('en','messages:pfunc-convert-unit-volume-barrel','s:30:\"$1{{PLURAL:$2|barrel|barrels}}\";'),('en','messages:pfunc-convert-unit-volume-bushel','s:30:\"$1{{PLURAL:$2|bushel|bushels}}\";'),('en','messages:pfunc-convert-unit-volume-gallon','s:30:\"$1{{PLURAL:$2|gallon|gallons}}\";'),('en','messages:pfunc-convert-unit-volume-quart','s:28:\"$1{{PLURAL:$2|quart|quarts}}\";'),('en','messages:pfunc-convert-unit-volume-pint','s:26:\"$1{{PLURAL:$2|pint|pints}}\";'),('en','messages:pfunc-convert-unit-volume-fluidounce','s:40:\"$1{{PLURAL:$2|fluid ounce|fluid ounces}}\";'),('en','messages:pfunc-convert-unit-volume-barrelus','s:36:\"$1{{PLURAL:$2|US barrel|US barrels}}\";'),('en','messages:pfunc-convert-unit-volume-barreloil','s:29:\"$1{{PLURAL:$2|barrel|barrel}}\";'),('en','messages:pfunc-convert-unit-volume-barrelbeer','s:29:\"$1{{PLURAL:$2|barrel|barrel}}\";'),('en','messages:pfunc-convert-unit-volume-usgallon','s:36:\"$1{{PLURAL:$2|US gallon|US gallons}}\";'),('en','messages:pfunc-convert-unit-volume-usquart','s:34:\"$1{{PLURAL:$2|US quart|US quarts}}\";'),('en','messages:pfunc-convert-unit-volume-uspint','s:32:\"$1{{PLURAL:$2|US pint|US pints}}\";'),('en','messages:pfunc-convert-unit-volume-usfluidounce','s:46:\"$1{{PLURAL:$2|US fluid ounce|US fluid ounces}}\";'),('en','messages:pfunc-convert-unit-volume-usdrybarrel','s:44:\"$1{{PLURAL:$2|US dry barrel|US dry barrels}}\";'),('en','messages:pfunc-convert-unit-volume-usbushel','s:36:\"$1{{PLURAL:$2|US bushel|US bushels}}\";'),('en','messages:pfunc-convert-unit-volume-usdrygallon','s:44:\"$1{{PLURAL:$2|US dry gallon|US dry gallons}}\";'),('en','messages:pfunc-convert-unit-volume-usdryquart','s:42:\"$1{{PLURAL:$2|US dry quart|US dry quarts}}\";'),('en','messages:pfunc-convert-unit-volume-usdrypint','s:40:\"$1{{PLURAL:$2|US dry pint|US dry pints}}\";'),('en','messages:pfunc-convert-unit-volume-cubicmetre-abbr','s:15:\"$1m<sup>3</sup>\";'),('en','messages:pfunc-convert-unit-volume-cubiccentimetre-abbr','s:16:\"$1cm<sup>3</sup>\";'),('en','messages:pfunc-convert-unit-volume-cubicmillimetre-abbr','s:16:\"$1mm<sup>3</sup>\";'),('en','messages:pfunc-convert-unit-volume-litre-abbr','s:5:\"$1$3l\";'),('en','messages:pfunc-convert-unit-volume-cubicyard-abbr','s:7:\"$1cu yd\";'),('en','messages:pfunc-convert-unit-volume-cubicfoot-abbr','s:7:\"$1cu ft\";'),('en','messages:pfunc-convert-unit-volume-cubicinch-abbr','s:7:\"$1cu in\";'),('en','messages:pfunc-convert-unit-volume-barrel-abbr','s:5:\"$1bbl\";'),('en','messages:pfunc-convert-unit-volume-bushel-abbr','s:5:\"$1bsh\";'),('en','messages:pfunc-convert-unit-volume-gallon-abbr','s:5:\"$1gal\";'),('en','messages:pfunc-convert-unit-volume-quart-abbr','s:4:\"$1qt\";'),('en','messages:pfunc-convert-unit-volume-pint-abbr','s:4:\"$1pt\";'),('en','messages:pfunc-convert-unit-volume-fluidounce-abbr','s:7:\"$1fl oz\";'),('en','messages:pfunc-convert-unit-volume-barrelus-abbr','s:8:\"$1US bbl\";'),('en','messages:pfunc-convert-unit-volume-barreloil-abbr','s:5:\"$1bbl\";'),('en','messages:pfunc-convert-unit-volume-barrelbeer-abbr','s:5:\"$1bbl\";'),('en','messages:pfunc-convert-unit-volume-usgallon-abbr','s:8:\"$1US gal\";'),('en','messages:pfunc-convert-unit-volume-usquart-abbr','s:7:\"$1US qt\";'),('en','messages:pfunc-convert-unit-volume-uspint-abbr','s:7:\"$1US pt\";'),('en','messages:pfunc-convert-unit-volume-usfluidounce-abbr','s:10:\"$1US fl oz\";'),('en','messages:pfunc-convert-unit-volume-usdrybarrel-abbr','s:8:\"$1US bbl\";'),('en','messages:pfunc-convert-unit-volume-usbushel-abbr','s:8:\"$1US bsh\";'),('en','messages:pfunc-convert-unit-volume-usdrygallon-abbr','s:12:\"$1US dry gal\";'),('en','messages:pfunc-convert-unit-volume-usdryquart-abbr','s:11:\"$1US dry qt\";'),('en','messages:pfunc-convert-unit-volume-usdrypint-abbr','s:11:\"$1US dry pt\";'),('en','messages:pfunc-convert-unit-speed-mile-hour','s:16:\"$1miles per hour\";'),('en','messages:pfunc-convert-unit-speed-speedoflight','s:3:\"$1c\";'),('en','messages:pfunc-convert-unit-speed-mile-hour-abbr','s:5:\"$1mph\";'),('en','messages:pfunc-convert-unit-speed-speedoflight-abbr','s:3:\"$1c\";'),('en','messages:pfunc-convert-unit-pressure-pascal','s:34:\"$1{{PLURAL:$2|$3pascal|$3pascals}}\";'),('en','messages:pfunc-convert-unit-pressure-bar','s:5:\"$1bar\";'),('en','messages:pfunc-convert-unit-pressure-decibar','s:9:\"$1decibar\";'),('en','messages:pfunc-convert-unit-pressure-millibar','s:10:\"$1millibar\";'),('en','messages:pfunc-convert-unit-pressure-kilobarye','s:11:\"$1kilobarye\";'),('en','messages:pfunc-convert-unit-pressure-barye','s:7:\"$1barye\";'),('en','messages:pfunc-convert-unit-pressure-atmosphere','s:38:\"$1{{PLURAL:$2|atmosphere|atmospheres}}\";'),('en','messages:pfunc-convert-unit-pressure-torr','s:25:\"$1{{PLURAL:$2|Torr|Torr}}\";'),('en','messages:pfunc-convert-unit-pressure-mmhg','s:60:\"$1{{PLURAL:$2|millimeter of mercury|millimeters of mercury}}\";'),('en','messages:pfunc-convert-unit-pressure-inhg','s:49:\"$1{{PLURAL:$2|inch of mercury|inches of mercury}}\";'),('en','messages:pfunc-convert-unit-pressure-psi','s:60:\"$1{{PLURAL:$2|pound per square-inch|pounds per square-inch}}\";'),('en','messages:pfunc-convert-unit-pressure-pascal-abbr','s:6:\"$1$3Pa\";'),('en','messages:pfunc-convert-unit-pressure-bar-abbr','s:5:\"$1bar\";'),('en','messages:pfunc-convert-unit-pressure-decibar-abbr','s:6:\"$1dbar\";'),('en','messages:pfunc-convert-unit-pressure-millibar-abbr','s:6:\"$1mbar\";'),('en','messages:pfunc-convert-unit-pressure-kilobarye-abbr','s:5:\"$1kBa\";'),('en','messages:pfunc-convert-unit-pressure-barye-abbr','s:4:\"$1Ba\";'),('en','messages:pfunc-convert-unit-pressure-atmosphere-abbr','s:5:\"$1atm\";'),('en','messages:pfunc-convert-unit-pressure-torr-abbr','s:6:\"$1Torr\";'),('en','messages:pfunc-convert-unit-pressure-mmhg-abbr','s:6:\"$1mmHg\";'),('en','messages:pfunc-convert-unit-pressure-inhg-abbr','s:6:\"$1inHg\";'),('en','messages:pfunc-convert-unit-pressure-psi-abbr','s:5:\"$1psi\";'),('en','messages:renameuser','s:11:\"Rename user\";'),('en','messages:renameuser-linkoncontribs','s:11:\"rename user\";'),('en','messages:renameuser-linkoncontribs-text','s:16:\"Rename this user\";'),('en','messages:renameuser-desc','s:87:\"Adds a [[Special:Renameuser|special page]] to rename a user (need \'\'renameuser\'\' right)\";'),('en','messages:renameuser-summary','s:0:\"\";'),('en','messages:renameuserold','s:17:\"Current username:\";'),('en','messages:renameusernew','s:13:\"New username:\";'),('en','messages:renameuserreason','s:18:\"Reason for rename:\";'),('en','messages:renameusermove','s:57:\"Move user and talk pages (and their subpages) to new name\";'),('en','messages:renameusersuppress','s:39:\"Do not create redirects to the new name\";'),('en','messages:renameuserreserve','s:38:\"Block the old username from future use\";'),('en','messages:renameuserwarnings','s:9:\"Warnings:\";'),('en','messages:renameuserconfirm','s:20:\"Yes, rename the user\";'),('en','messages:renameusersubmit','s:6:\"Submit\";'),('en','messages:renameuser-submit-blocklog','s:23:\"Show block log for user\";'),('en','messages:renameusererrordoesnotexist','s:46:\"The user \"<nowiki>$1</nowiki>\" does not exist.\";'),('en','messages:renameusererrorexists','s:46:\"The user \"<nowiki>$1</nowiki>\" already exists.\";'),('en','messages:renameusererrorinvalid','s:46:\"The username \"<nowiki>$1</nowiki>\" is invalid.\";'),('en','messages:renameuser-error-request','s:77:\"There was a problem with receiving the request.\nPlease go back and try again.\";'),('en','messages:renameuser-error-same-user','s:53:\"You cannot rename a user to the same thing as before.\";'),('en','messages:renameusersuccess','s:73:\"The user \"<nowiki>$1</nowiki>\" has been renamed to \"<nowiki>$2</nowiki>\".\";'),('en','messages:renameuser-page-exists','s:67:\"The page $1 already exists and cannot be automatically overwritten.\";'),('en','messages:renameuser-page-moved','s:33:\"The page $1 has been moved to $2.\";'),('en','messages:renameuser-page-unmoved','s:37:\"The page $1 could not be moved to $2.\";'),('en','messages:renameuserlogpage','s:15:\"User rename log\";'),('en','messages:renameuserlogpagetext','s:39:\"This is a log of changes to user names.\";'),('en','messages:renameuserlogentry','s:18:\"renamed $1 to \"$2\"\";'),('en','messages:renameuser-log','s:41:\"{{PLURAL:$1|1 edit|$1 edits}}. Reason: $2\";'),('en','messages:renameuser-move-log','s:85:\"Automatically moved page while renaming the user \"[[User:$1|$1]]\" to \"[[User:$2|$2]]\"\";'),('en','messages:action-renameuser','s:12:\"rename users\";'),('en','messages:right-renameuser','s:12:\"Rename users\";'),('en','messages:renameuser-renamed-notice','s:75:\"This user has been renamed.\nThe rename log is provided below for reference.\";'),('en','messages:vector','s:26:\"UI improvements for Vector\";'),('en','messages:vector-desc','s:59:\"Improves on the user interface elements of the Vector skin.\";'),('en','messages:vector-collapsiblenav-preference','s:56:\"Enable collapsing of items in the sidebar in Vector skin\";'),('en','messages:vector-collapsiblenav-more','s:14:\"More languages\";'),('en','messages:vector-editwarning-warning','s:163:\"Leaving this page may cause you to lose any changes you have made.\nIf you are logged in, you can disable this warning in the \"Editing\" section of your preferences.\";'),('en','messages:vector-editwarning-preference','s:54:\"Warn me when I leave an edit page with unsaved changes\";'),('en','messages:vector-simplesearch-search','s:6:\"Search\";'),('en','messages:vector-simplesearch-containing','s:13:\"containing...\";'),('en','messages:vector-noexperiments-preference','s:35:\"Exclude me from feature experiments\";'),('en','messages:vector-footercleanup-transclusion','s:107:\"This page contains {{PLURAL:$1|transclusion|transclusions}} of {{PLURAL:$1|one other page|$1 other pages}}.\";'),('en','messages:wikieditor','s:35:\"Advanced wikitext editing interface\";'),('en','messages:wikieditor-desc','s:84:\"Provides an extendable wikitext editing interface and many feature-providing modules\";'),('en','messages:wikieditor-wikitext-tab','s:8:\"Wikitext\";'),('en','messages:wikieditor-loading','s:10:\"Loading...\";'),('en','messages:wikieditor-preview-preference','s:27:\"Enable side-by-side preview\";'),('en','messages:wikieditor-preview-tab','s:7:\"Preview\";'),('en','messages:wikieditor-preview-changes-tab','s:7:\"Changes\";'),('en','messages:wikieditor-preview-loading','s:10:\"Loading...\";'),('en','messages:wikieditor-previewDialog-preference','s:21:\"Enable preview dialog\";'),('en','messages:wikieditor-previewDialog-tab','s:7:\"Preview\";'),('en','messages:wikieditor-previewDialog-loading','s:10:\"Loading...\";'),('en','messages:wikieditor-publish-preference','s:30:\"Enable step-by-step publishing\";'),('en','messages:wikieditor-publish-button-publish','s:7:\"Publish\";'),('en','messages:wikieditor-publish-button-cancel','s:6:\"Cancel\";'),('en','messages:wikieditor-publish-dialog-title','s:23:\"Publish to {{SITENAME}}\";'),('en','messages:wikieditor-publish-dialog-summary','s:58:\"Edit summary (briefly describe the changes you have made):\";'),('en','messages:wikieditor-publish-dialog-minor','s:10:\"Minor edit\";'),('en','messages:wikieditor-publish-dialog-watch','s:15:\"Watch this page\";'),('en','messages:wikieditor-publish-dialog-publish','s:7:\"Publish\";'),('en','messages:wikieditor-publish-dialog-goback','s:7:\"Go back\";'),('en','messages:wikieditor-template-editor-preference','s:43:\"Enable form-based editing of wiki templates\";'),('en','messages:wikieditor-template-editor-dialog-title','s:13:\"Edit template\";'),('en','messages:wikieditor-template-editor-dialog-submit','s:6:\"Update\";'),('en','messages:wikieditor-template-editor-dialog-cancel','s:6:\"Cancel\";'),('en','messages:wikieditor-templates-preference','s:26:\"Enable template collapsing\";'),('en','messages:wikieditor-toc-preference','s:34:\"Enable navigable table of contents\";'),('en','messages:wikieditor-toc-show','s:13:\"Show contents\";'),('en','messages:wikieditor-toc-hide','s:13:\"Hide contents\";'),('en','messages:wikieditor-toolbar','s:15:\"Editing toolbar\";'),('en','messages:wikieditor-toolbar-desc','s:41:\"Edit page toolbar with enhanced usability\";'),('en','messages:wikieditor-toolbar-preference','s:31:\"Enable enhanced editing toolbar\";'),('en','messages:wikieditor-toolbar-dialogs-preference','s:51:\"Enable dialogs for inserting links, tables and more\";'),('en','messages:wikieditor-toolbar-hidesig','s:58:\"Hide the signature button from pages in the main namespace\";'),('en','messages:wikieditor-toolbar-loading','s:10:\"Loading...\";'),('en','messages:wikieditor-toolbar-tool-bold','s:4:\"Bold\";'),('en','messages:wikieditor-toolbar-tool-bold-example','s:9:\"Bold text\";'),('en','messages:wikieditor-toolbar-tool-italic','s:6:\"Italic\";'),('en','messages:wikieditor-toolbar-tool-italic-example','s:11:\"Italic text\";'),('en','messages:wikieditor-toolbar-tool-ilink','s:13:\"Internal link\";'),('en','messages:wikieditor-toolbar-tool-ilink-example','s:10:\"Link title\";'),('en','messages:wikieditor-toolbar-tool-xlink','s:39:\"External link (remember http:// prefix)\";'),('en','messages:wikieditor-toolbar-tool-xlink-example','s:33:\"http://www.example.com link title\";'),('en','messages:wikieditor-toolbar-tool-link','s:4:\"Link\";'),('en','messages:wikieditor-toolbar-tool-link-title','s:11:\"Insert link\";'),('en','messages:wikieditor-toolbar-tool-link-int','s:14:\"To a wiki page\";'),('en','messages:wikieditor-toolbar-tool-link-int-target','s:19:\"Target page or URL:\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-tooltip','s:17:\"Page title or URL\";'),('en','messages:wikieditor-toolbar-tool-link-int-text','s:16:\"Text to display:\";'),('en','messages:wikieditor-toolbar-tool-link-int-text-tooltip','s:20:\"Text to be displayed\";'),('en','messages:wikieditor-toolbar-tool-link-ext','s:23:\"To an external web page\";'),('en','messages:wikieditor-toolbar-tool-link-ext-target','s:9:\"Link URL:\";'),('en','messages:wikieditor-toolbar-tool-link-ext-text','s:10:\"Link text:\";'),('en','messages:wikieditor-toolbar-tool-link-insert','s:11:\"Insert link\";'),('en','messages:wikieditor-toolbar-tool-link-cancel','s:6:\"Cancel\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-status-exists','s:11:\"Page exists\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-status-notexists','s:19:\"Page does not exist\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-status-invalid','s:13:\"Invalid title\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-status-external','s:13:\"External link\";'),('en','messages:wikieditor-toolbar-tool-link-int-target-status-loading','s:26:\"Checking page existence...\";'),('en','messages:wikieditor-toolbar-tool-link-int-invalid','s:35:\"The title you specified is invalid.\";'),('en','messages:wikieditor-toolbar-tool-link-lookslikeinternal','s:121:\"The URL you specified looks like it was intended as a link to another wiki page.\nDo you want to make it an internal link?\";'),('en','messages:wikieditor-toolbar-tool-link-lookslikeinternal-int','s:13:\"Internal link\";'),('en','messages:wikieditor-toolbar-tool-link-lookslikeinternal-ext','s:13:\"External link\";'),('en','messages:wikieditor-toolbar-tool-link-empty','s:38:\"You did not enter anything to link to.\";'),('en','messages:wikieditor-toolbar-tool-file','s:13:\"Embedded file\";'),('en','messages:wikieditor-toolbar-tool-file-example','s:11:\"Example.jpg\";'),('en','messages:wikieditor-toolbar-tool-reference','s:9:\"Reference\";'),('en','messages:wikieditor-toolbar-tool-reference-example','s:25:\"Insert footnote text here\";'),('en','messages:wikieditor-toolbar-tool-reference-cancel','s:6:\"Cancel\";'),('en','messages:wikieditor-toolbar-tool-reference-title','s:16:\"Insert reference\";'),('en','messages:wikieditor-toolbar-tool-reference-insert','s:6:\"Insert\";'),('en','messages:wikieditor-toolbar-tool-reference-text','s:14:\"Reference text\";'),('en','messages:wikieditor-toolbar-tool-signature','s:23:\"Signature and timestamp\";'),('en','messages:wikieditor-toolbar-section-advanced','s:8:\"Advanced\";'),('en','messages:wikieditor-toolbar-tool-heading','s:7:\"Heading\";'),('en','messages:wikieditor-toolbar-tool-heading-1','s:7:\"Level 1\";'),('en','messages:wikieditor-toolbar-tool-heading-2','s:7:\"Level 2\";'),('en','messages:wikieditor-toolbar-tool-heading-3','s:7:\"Level 3\";'),('en','messages:wikieditor-toolbar-tool-heading-4','s:7:\"Level 4\";'),('en','messages:wikieditor-toolbar-tool-heading-5','s:7:\"Level 5\";'),('en','messages:wikieditor-toolbar-tool-heading-example','s:12:\"Heading text\";'),('en','messages:wikieditor-toolbar-group-format','s:6:\"Format\";'),('en','messages:wikieditor-toolbar-tool-ulist','s:13:\"Bulleted list\";'),('en','messages:wikieditor-toolbar-tool-ulist-example','s:18:\"Bulleted list item\";'),('en','messages:wikieditor-toolbar-tool-olist','s:13:\"Numbered list\";'),('en','messages:wikieditor-toolbar-tool-olist-example','s:18:\"Numbered list item\";'),('en','messages:wikieditor-toolbar-tool-indent','s:11:\"Indentation\";'),('en','messages:wikieditor-toolbar-tool-indent-example','s:13:\"Indented line\";'),('en','messages:wikieditor-toolbar-tool-nowiki','s:18:\"No wiki formatting\";'),('en','messages:wikieditor-toolbar-tool-nowiki-example','s:30:\"Insert non-formatted text here\";'),('en','messages:wikieditor-toolbar-tool-redirect','s:8:\"Redirect\";'),('en','messages:wikieditor-toolbar-tool-redirect-example','s:16:\"Target page name\";'),('en','messages:wikieditor-toolbar-tool-big','s:3:\"Big\";'),('en','messages:wikieditor-toolbar-tool-big-example','s:8:\"Big text\";'),('en','messages:wikieditor-toolbar-tool-small','s:5:\"Small\";'),('en','messages:wikieditor-toolbar-tool-small-example','s:10:\"Small text\";'),('en','messages:wikieditor-toolbar-tool-superscript','s:11:\"Superscript\";'),('en','messages:wikieditor-toolbar-tool-superscript-example','s:16:\"Superscript text\";'),('en','messages:wikieditor-toolbar-tool-subscript','s:9:\"Subscript\";'),('en','messages:wikieditor-toolbar-tool-subscript-example','s:14:\"Subscript text\";'),('en','messages:wikieditor-toolbar-group-insert','s:6:\"Insert\";'),('en','messages:wikieditor-toolbar-tool-gallery','s:15:\"Picture gallery\";'),('en','messages:wikieditor-toolbar-tool-gallery-example','s:47:\"$1:Example.jpg|Caption1\n$1:Example.jpg|Caption2\";'),('en','messages:wikieditor-toolbar-tool-newline','s:8:\"New line\";'),('en','messages:wikieditor-toolbar-tool-table','s:5:\"Table\";'),('en','messages:wikieditor-toolbar-tool-table-example-old','s:136:\"-\n! header 1\n! header 2\n! header 3\n|-\n| row 1, cell 1\n| row 1, cell 2\n| row 1, cell 3\n|-\n| row 2, cell 1\n| row 2, cell 2\n| row 2, cell 3\";'),('en','messages:wikieditor-toolbar-tool-table-example-cell-text','s:9:\"Cell text\";'),('en','messages:wikieditor-toolbar-tool-table-example-header','s:11:\"Header text\";'),('en','messages:wikieditor-toolbar-tool-table-title','s:12:\"Insert table\";'),('en','messages:wikieditor-toolbar-tool-table-dimensions-rows','s:4:\"Rows\";'),('en','messages:wikieditor-toolbar-tool-table-dimensions-columns','s:7:\"Columns\";'),('en','messages:wikieditor-toolbar-tool-table-dimensions-header','s:14:\"Add header row\";'),('en','messages:wikieditor-toolbar-tool-table-wikitable','s:18:\"Style with borders\";'),('en','messages:wikieditor-toolbar-tool-table-sortable','s:19:\"Make table sortable\";'),('en','messages:wikieditor-toolbar-tool-table-example','s:7:\"Example\";'),('en','messages:wikieditor-toolbar-tool-table-preview','s:7:\"Preview\";'),('en','messages:wikieditor-toolbar-tool-table-insert','s:6:\"Insert\";'),('en','messages:wikieditor-toolbar-tool-table-cancel','s:6:\"Cancel\";'),('en','messages:wikieditor-toolbar-tool-table-example-text','s:216:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec purus diam. Sed aliquam imperdiet nunc quis lacinia. Donec rutrum consectetur placerat. Sed volutpat neque non purus faucibus id ultricies enim euismod.\";'),('en','messages:wikieditor-toolbar-tool-table-toomany','s:75:\"Inserting a table with more than $1 cells is not possible with this dialog.\";'),('en','messages:wikieditor-toolbar-tool-table-invalidnumber','s:55:\"You have not entered a valid number of rows or columns.\";'),('en','messages:wikieditor-toolbar-tool-table-zero','s:52:\"You cannot insert a table with zero rows or columns.\";'),('en','messages:wikieditor-toolbar-tool-replace','s:18:\"Search and replace\";'),('en','messages:wikieditor-toolbar-tool-replace-title','s:18:\"Search and replace\";'),('en','messages:wikieditor-toolbar-tool-replace-search','s:11:\"Search for:\";'),('en','messages:wikieditor-toolbar-tool-replace-replace','s:13:\"Replace with:\";'),('en','messages:wikieditor-toolbar-tool-replace-case','s:10:\"Match case\";'),('en','messages:wikieditor-toolbar-tool-replace-regex','s:43:\"Treat search string as a regular expression\";'),('en','messages:wikieditor-toolbar-tool-replace-button-findnext','s:9:\"Find next\";'),('en','messages:wikieditor-toolbar-tool-replace-button-replace','s:7:\"Replace\";'),('en','messages:wikieditor-toolbar-tool-replace-button-replaceall','s:11:\"Replace all\";'),('en','messages:wikieditor-toolbar-tool-replace-close','s:5:\"Close\";'),('en','messages:wikieditor-toolbar-tool-replace-nomatch','s:35:\"Your search did not match anything.\";'),('en','messages:wikieditor-toolbar-tool-replace-success','s:23:\"$1 replacement(s) made.\";'),('en','messages:wikieditor-toolbar-tool-replace-emptysearch','s:41:\"You did not enter anything to search for.\";'),('en','messages:wikieditor-toolbar-tool-replace-invalidregex','s:49:\"The regular expression you entered is invalid: $1\";'),('en','messages:wikieditor-toolbar-section-characters','s:18:\"Special characters\";'),('en','messages:wikieditor-toolbar-characters-page-latin','s:5:\"Latin\";'),('en','messages:wikieditor-toolbar-characters-page-latinextended','s:14:\"Latin extended\";'),('en','messages:wikieditor-toolbar-characters-page-ipa','s:3:\"IPA\";'),('en','messages:wikieditor-toolbar-characters-page-symbols','s:7:\"Symbols\";'),('en','messages:wikieditor-toolbar-characters-page-greek','s:5:\"Greek\";'),('en','messages:wikieditor-toolbar-characters-page-cyrillic','s:8:\"Cyrillic\";'),('en','messages:wikieditor-toolbar-characters-page-arabic','s:6:\"Arabic\";'),('en','messages:wikieditor-toolbar-characters-page-arabicextended','s:15:\"Arabic extended\";'),('en','messages:wikieditor-toolbar-characters-page-persian','s:7:\"Persian\";'),('en','messages:wikieditor-toolbar-characters-page-hebrew','s:6:\"Hebrew\";'),('en','messages:wikieditor-toolbar-characters-page-bangla','s:6:\"Bangla\";'),('en','messages:wikieditor-toolbar-characters-page-tamil','s:5:\"Tamil\";'),('en','messages:wikieditor-toolbar-characters-page-telugu','s:6:\"Telugu\";'),('en','messages:wikieditor-toolbar-characters-page-sinhala','s:7:\"Sinhala\";'),('en','messages:wikieditor-toolbar-characters-page-gujarati','s:8:\"Gujarati\";'),('en','messages:wikieditor-toolbar-characters-page-devanagari','s:10:\"Devanagari\";'),('en','messages:wikieditor-toolbar-characters-page-thai','s:4:\"Thai\";'),('en','messages:wikieditor-toolbar-characters-page-lao','s:3:\"Lao\";'),('en','messages:wikieditor-toolbar-characters-page-khmer','s:5:\"Khmer\";'),('en','messages:wikieditor-toolbar-section-help','s:4:\"Help\";'),('en','messages:wikieditor-toolbar-help-heading-description','s:11:\"Description\";'),('en','messages:wikieditor-toolbar-help-heading-syntax','s:13:\"What you type\";'),('en','messages:wikieditor-toolbar-help-heading-result','s:12:\"What you get\";'),('en','messages:wikieditor-toolbar-help-page-format','s:10:\"Formatting\";'),('en','messages:wikieditor-toolbar-help-page-link','s:5:\"Links\";'),('en','messages:wikieditor-toolbar-help-page-heading','s:8:\"Headings\";'),('en','messages:wikieditor-toolbar-help-page-list','s:5:\"Lists\";'),('en','messages:wikieditor-toolbar-help-page-file','s:5:\"Files\";'),('en','messages:wikieditor-toolbar-help-page-reference','s:10:\"References\";'),('en','messages:wikieditor-toolbar-help-page-discussion','s:10:\"Discussion\";'),('en','messages:wikieditor-toolbar-help-content-italic-description','s:6:\"Italic\";'),('en','messages:wikieditor-toolbar-help-content-italic-syntax','s:15:\"\'\'Italic text\'\'\";'),('en','messages:wikieditor-toolbar-help-content-italic-result','s:20:\"<em>Italic text</em>\";'),('en','messages:wikieditor-toolbar-help-content-bold-description','s:4:\"Bold\";'),('en','messages:wikieditor-toolbar-help-content-bold-syntax','s:15:\"\'\'\'Bold text\'\'\'\";'),('en','messages:wikieditor-toolbar-help-content-bold-result','s:26:\"<strong>Bold text</strong>\";'),('en','messages:wikieditor-toolbar-help-content-bolditalic-description','s:17:\"Bold &amp; italic\";'),('en','messages:wikieditor-toolbar-help-content-bolditalic-syntax','s:32:\"\'\'\'\'\'Bold &amp; italic text\'\'\'\'\'\";'),('en','messages:wikieditor-toolbar-help-content-bolditalic-result','s:48:\"<strong><em>Bold &amp; italic text</em></strong>\";'),('en','messages:wikieditor-toolbar-help-content-ilink-description','s:13:\"Internal link\";'),('en','messages:wikieditor-toolbar-help-content-ilink-syntax','s:45:\"[[Page title|Link label]]<br />[[Page title]]\";'),('en','messages:wikieditor-toolbar-help-content-ilink-result','s:58:\"<a href=\'#\'>Link label</a><br /><a href=\'#\'>Page title</a>\";'),('en','messages:wikieditor-toolbar-help-content-xlink-description','s:13:\"External link\";'),('en','messages:wikieditor-toolbar-help-content-xlink-syntax','s:93:\"[http://www.example.org Link label]<br />[http://www.example.org]<br />http://www.example.org\";'),('en','messages:wikieditor-toolbar-help-content-xlink-result','s:157:\"<a href=\'#\' class=\'external\'>Link label</a><br /><a href=\'#\' class=\'external autonumber\'>[1]</a><br /><a href=\'#\' class=\'external\'>http://www.example.org</a>\";'),('en','messages:wikieditor-toolbar-help-content-heading2-description','s:17:\"2nd level heading\";'),('en','messages:wikieditor-toolbar-help-content-heading2-syntax','s:18:\"== Heading text ==\";'),('en','messages:wikieditor-toolbar-help-content-heading2-result','s:21:\"<h2>Heading text</h2>\";'),('en','messages:wikieditor-toolbar-help-content-heading3-description','s:17:\"3rd level heading\";'),('en','messages:wikieditor-toolbar-help-content-heading3-syntax','s:20:\"=== Heading text ===\";'),('en','messages:wikieditor-toolbar-help-content-heading3-result','s:21:\"<h3>Heading text</h3>\";'),('en','messages:wikieditor-toolbar-help-content-heading4-description','s:17:\"4th level heading\";'),('en','messages:wikieditor-toolbar-help-content-heading4-syntax','s:22:\"==== Heading text ====\";'),('en','messages:wikieditor-toolbar-help-content-heading4-result','s:21:\"<h4>Heading text</h4>\";'),('en','messages:wikieditor-toolbar-help-content-heading5-description','s:17:\"5th level heading\";'),('en','messages:wikieditor-toolbar-help-content-heading5-syntax','s:24:\"===== Heading text =====\";'),('en','messages:wikieditor-toolbar-help-content-heading5-result','s:21:\"<h5>Heading text</h5>\";'),('en','messages:wikieditor-toolbar-help-content-ulist-description','s:13:\"Bulleted list\";'),('en','messages:wikieditor-toolbar-help-content-ulist-syntax','s:28:\"* List item<br />* List item\";'),('en','messages:wikieditor-toolbar-help-content-ulist-result','s:45:\"<ul><li>List item</li><li>List item</li></ul>\";'),('en','messages:wikieditor-toolbar-help-content-olist-description','s:13:\"Numbered list\";'),('en','messages:wikieditor-toolbar-help-content-olist-syntax','s:28:\"# List item<br /># List item\";'),('en','messages:wikieditor-toolbar-help-content-olist-result','s:45:\"<ol><li>List item</li><li>List item</li></ol>\";'),('en','messages:wikieditor-toolbar-help-content-file-description','s:13:\"Embedded file\";'),('en','messages:wikieditor-toolbar-help-content-file-syntax','s:37:\"[[$1:Example.png|thumb|Caption text]]\";'),('en','messages:wikieditor-toolbar-help-content-file-result','s:434:\"<div style=\'width:104px;\' class=\'thumbinner\'><a title=\'Caption text\' class=\'image\' href=\'#\'><img height=\'50\' width=\'100\' border=\'0\' class=\'thumbimage\' src=\'extensions/WikiEditor/modules/images/toolbar/example-image.png\' alt=\'\'/></a><div class=\'thumbcaption\'><div class=\'magnify\'><a title=\'Enlarge\' class=\'internal\' href=\'#\'><img height=\'11\' width=\'15\' alt=\'\' src=\'$1/common/images/magnify-clip.png\'/></a></div>Caption text</div></div>\";'),('en','messages:wikieditor-toolbar-help-content-reference-description','s:9:\"Reference\";'),('en','messages:wikieditor-toolbar-help-content-reference-syntax','s:97:\"Page text.&lt;ref name=\"test\"&gt;[http://www.example.org Link text], additional text.&lt;/ref&gt;\";'),('en','messages:wikieditor-toolbar-help-content-reference-result','s:40:\"Page text.<sup><a href=\'#\'>[1]</a></sup>\";'),('en','messages:wikieditor-toolbar-help-content-rereference-description','s:32:\"Additional use of same reference\";'),('en','messages:wikieditor-toolbar-help-content-rereference-syntax','s:25:\"&lt;ref name=\"test\" /&gt;\";'),('en','messages:wikieditor-toolbar-help-content-rereference-result','s:40:\"Page text.<sup><a href=\'#\'>[1]</a></sup>\";'),('en','messages:wikieditor-toolbar-help-content-showreferences-description','s:18:\"Display references\";'),('en','messages:wikieditor-toolbar-help-content-showreferences-syntax','s:20:\"&lt;references /&gt;\";'),('en','messages:wikieditor-toolbar-help-content-showreferences-result','s:204:\"<ol class=\'references\'><li id=\'cite_note-test-0\'><b><a title=\'\' href=\'#\'>^</a></b> <a rel=\'nofollow\' title=\'http://www.example.org\' class=\'external text\' href=\'#\'>Link text</a>, additional text.</li></ol>\";'),('en','messages:wikieditor-toolbar-help-content-signaturetimestamp-description','s:24:\"Signature with timestamp\";'),('en','messages:wikieditor-toolbar-help-content-signaturetimestamp-syntax','s:4:\"~~~~\";'),('en','messages:wikieditor-toolbar-help-content-signaturetimestamp-result','s:129:\"<a href=\'#\' title=\'{{#special:mypage}}\'>Username</a> (<a href=\'#\' title=\'{{#special:mytalk}}\'>talk</a>) 15:54, 10 June 2009 (UTC)\";'),('en','messages:wikieditor-toolbar-help-content-signature-description','s:9:\"Signature\";'),('en','messages:wikieditor-toolbar-help-content-signature-syntax','s:3:\"~~~\";'),('en','messages:wikieditor-toolbar-help-content-signature-result','s:103:\"<a href=\'#\' title=\'{{#special:mypage}}\'>Username</a> (<a href=\'#\' title=\'{{#special:mytalk}}\'>talk</a>)\";'),('en','messages:wikieditor-toolbar-help-content-indent-description','s:6:\"Indent\";'),('en','messages:wikieditor-toolbar-help-content-indent-syntax','s:52:\"Normal text<br />:Indented text<br />::Indented text\";'),('en','messages:wikieditor-toolbar-help-content-indent-result','s:73:\"Normal text<dl><dd>Indented text<dl><dd>Indented text</dd></dl></dd></dl>\";'),('en','messages:sidebar','s:214:\"\n* navigation\n** mainpage|mainpage-description\n** portal-url|portal\n** currentevents-url|currentevents\n** recentchanges-url|recentchanges\n** randompage-url|randompage\n** helppage|help\n* SEARCH\n* TOOLBOX\n* LANGUAGES\";'),('en','messages:tog-underline','s:17:\"Link underlining:\";'),('en','messages:tog-highlightbroken','s:114:\"Format broken links <a href=\"\" class=\"new\">like this</a> (alternative: Like this<a href=\"\" class=\"internal\">?</a>)\";'),('en','messages:tog-justify','s:18:\"Justify paragraphs\";'),('en','messages:tog-hideminor','s:34:\"Hide minor edits in recent changes\";'),('en','messages:tog-hidepatrolled','s:38:\"Hide patrolled edits in recent changes\";'),('en','messages:tog-newpageshidepatrolled','s:39:\"Hide patrolled pages from new page list\";'),('en','messages:tog-extendwatchlist','s:62:\"Expand watchlist to show all changes, not just the most recent\";'),('en','messages:tog-usenewrc','s:75:\"Group changes by page in recent changes and watchlist (requires JavaScript)\";'),('en','messages:tog-numberheadings','s:20:\"Auto-number headings\";'),('en','messages:tog-showtoolbar','s:39:\"Show edit toolbar (requires JavaScript)\";'),('en','messages:tog-editondblclick','s:48:\"Edit pages on double click (requires JavaScript)\";'),('en','messages:tog-editsection','s:39:\"Enable section editing via [edit] links\";'),('en','messages:tog-editsectiononrightclick','s:80:\"Enable section editing by right clicking on section titles (requires JavaScript)\";'),('en','messages:tog-showtoc','s:60:\"Show table of contents (for pages with more than 3 headings)\";'),('en','messages:tog-rememberpassword','s:78:\"Remember my login on this browser (for a maximum of $1 {{PLURAL:$1|day|days}})\";'),('en','messages:tog-watchcreations','s:53:\"Add pages I create and files I upload to my watchlist\";'),('en','messages:tog-watchdefault','s:42:\"Add pages and files I edit to my watchlist\";'),('en','messages:tog-watchmoves','s:42:\"Add pages and files I move to my watchlist\";'),('en','messages:tog-watchdeletion','s:44:\"Add pages and files I delete to my watchlist\";'),('en','messages:tog-minordefault','s:31:\"Mark all edits minor by default\";'),('en','messages:tog-previewontop','s:28:\"Show preview before edit box\";'),('en','messages:tog-previewonfirst','s:26:\"Show preview on first edit\";'),('en','messages:tog-nocache','s:28:\"Disable browser page caching\";'),('en','messages:tog-enotifwatchlistpages','s:56:\"E-mail me when a page or file on my watchlist is changed\";'),('en','messages:tog-enotifusertalkpages','s:43:\"E-mail me when my user talk page is changed\";'),('en','messages:tog-enotifminoredits','s:49:\"E-mail me also for minor edits of pages and files\";'),('en','messages:tog-enotifrevealaddr','s:48:\"Reveal my e-mail address in notification e-mails\";'),('en','messages:tog-shownumberswatching','s:33:\"Show the number of watching users\";'),('en','messages:tog-oldsig','s:19:\"Existing signature:\";'),('en','messages:tog-fancysig','s:55:\"Treat signature as wikitext (without an automatic link)\";'),('en','messages:tog-externaleditor','s:160:\"Use external editor by default (for experts only, needs special settings on your computer. [//www.mediawiki.org/wiki/Manual:External_editors More information.])\";'),('en','messages:tog-externaldiff','s:158:\"Use external diff by default (for experts only, needs special settings on your computer. [//www.mediawiki.org/wiki/Manual:External_editors More information.])\";'),('en','messages:tog-showjumplinks','s:36:\"Enable \"jump to\" accessibility links\";'),('en','messages:tog-uselivepreview','s:53:\"Use live preview (requires JavaScript) (experimental)\";'),('en','messages:tog-forceeditsummary','s:44:\"Prompt me when entering a blank edit summary\";'),('en','messages:tog-watchlisthideown','s:32:\"Hide my edits from the watchlist\";'),('en','messages:tog-watchlisthidebots','s:33:\"Hide bot edits from the watchlist\";'),('en','messages:tog-watchlisthideminor','s:35:\"Hide minor edits from the watchlist\";'),('en','messages:tog-watchlisthideliu','s:48:\"Hide edits by logged in users from the watchlist\";'),('en','messages:tog-watchlisthideanons','s:48:\"Hide edits by anonymous users from the watchlist\";'),('en','messages:tog-watchlisthidepatrolled','s:39:\"Hide patrolled edits from the watchlist\";'),('en','messages:tog-nolangconversion','s:27:\"Disable variants conversion\";'),('en','messages:tog-ccmeonemails','s:47:\"Send me copies of e-mails I send to other users\";'),('en','messages:tog-diffonly','s:36:\"Do not show page content below diffs\";'),('en','messages:tog-showhiddencats','s:22:\"Show hidden categories\";'),('en','messages:tog-noconvertlink','s:29:\"Disable link title conversion\";'),('en','messages:tog-norollbackdiff','s:37:\"Omit diff after performing a rollback\";'),('en','messages:underline-always','s:6:\"Always\";'),('en','messages:underline-never','s:5:\"Never\";'),('en','messages:underline-default','s:15:\"Browser default\";'),('en','messages:editfont-style','s:21:\"Edit area font style:\";'),('en','messages:editfont-default','s:15:\"Browser default\";'),('en','messages:editfont-monospace','s:15:\"Monospaced font\";'),('en','messages:editfont-sansserif','s:15:\"Sans-serif font\";'),('en','messages:editfont-serif','s:10:\"Serif font\";'),('en','messages:sunday','s:6:\"Sunday\";'),('en','messages:monday','s:6:\"Monday\";'),('en','messages:tuesday','s:7:\"Tuesday\";'),('en','messages:wednesday','s:9:\"Wednesday\";'),('en','messages:thursday','s:8:\"Thursday\";'),('en','messages:friday','s:6:\"Friday\";'),('en','messages:saturday','s:8:\"Saturday\";'),('en','messages:sun','s:3:\"Sun\";'),('en','messages:mon','s:3:\"Mon\";'),('en','messages:tue','s:3:\"Tue\";'),('en','messages:wed','s:3:\"Wed\";'),('en','messages:thu','s:3:\"Thu\";'),('en','messages:fri','s:3:\"Fri\";'),('en','messages:sat','s:3:\"Sat\";'),('en','messages:january','s:7:\"January\";'),('en','messages:february','s:8:\"February\";'),('en','messages:march','s:5:\"March\";'),('en','messages:april','s:5:\"April\";'),('en','messages:may_long','s:3:\"May\";'),('en','messages:june','s:4:\"June\";'),('en','messages:july','s:4:\"July\";'),('en','messages:august','s:6:\"August\";'),('en','messages:september','s:9:\"September\";'),('en','messages:october','s:7:\"October\";'),('en','messages:november','s:8:\"November\";'),('en','messages:december','s:8:\"December\";'),('en','messages:january-gen','s:7:\"January\";'),('en','messages:february-gen','s:8:\"February\";'),('en','messages:march-gen','s:5:\"March\";'),('en','messages:april-gen','s:5:\"April\";'),('en','messages:may-gen','s:3:\"May\";'),('en','messages:june-gen','s:4:\"June\";'),('en','messages:july-gen','s:4:\"July\";'),('en','messages:august-gen','s:6:\"August\";'),('en','messages:september-gen','s:9:\"September\";'),('en','messages:october-gen','s:7:\"October\";'),('en','messages:november-gen','s:8:\"November\";'),('en','messages:december-gen','s:8:\"December\";'),('en','messages:jan','s:3:\"Jan\";'),('en','messages:feb','s:3:\"Feb\";'),('en','messages:mar','s:3:\"Mar\";'),('en','messages:apr','s:3:\"Apr\";'),('en','messages:may','s:3:\"May\";'),('en','messages:jun','s:3:\"Jun\";'),('en','messages:jul','s:3:\"Jul\";'),('en','messages:aug','s:3:\"Aug\";'),('en','messages:sep','s:3:\"Sep\";'),('en','messages:oct','s:3:\"Oct\";'),('en','messages:nov','s:3:\"Nov\";'),('en','messages:dec','s:3:\"Dec\";'),('en','messages:pagecategories','s:33:\"{{PLURAL:$1|Category|Categories}}\";'),('en','messages:pagecategorieslink','s:18:\"Special:Categories\";'),('en','messages:category_header','s:22:\"Pages in category \"$1\"\";'),('en','messages:subcategories','s:13:\"Subcategories\";'),('en','messages:category-media-header','s:22:\"Media in category \"$1\"\";'),('en','messages:category-empty','s:55:\"\'\'This category currently contains no pages or media.\'\'\";'),('en','messages:hidden-categories','s:47:\"{{PLURAL:$1|Hidden category|Hidden categories}}\";'),('en','messages:hidden-category-category','s:17:\"Hidden categories\";'),('en','messages:category-subcat-count','s:156:\"{{PLURAL:$2|This category has only the following subcategory.|This category has the following {{PLURAL:$1|subcategory|$1 subcategories}}, out of $2 total.}}\";'),('en','messages:category-subcat-count-limited','s:75:\"This category has the following {{PLURAL:$1|subcategory|$1 subcategories}}.\";'),('en','messages:category-article-count','s:145:\"{{PLURAL:$2|This category contains only the following page.|The following {{PLURAL:$1|page is|$1 pages are}} in this category, out of $2 total.}}\";'),('en','messages:category-article-count-limited','s:73:\"The following {{PLURAL:$1|page is|$1 pages are}} in the current category.\";'),('en','messages:category-file-count','s:145:\"{{PLURAL:$2|This category contains only the following file.|The following {{PLURAL:$1|file is|$1 files are}} in this category, out of $2 total.}}\";'),('en','messages:category-file-count-limited','s:73:\"The following {{PLURAL:$1|file is|$1 files are}} in the current category.\";'),('en','messages:listingcontinuesabbrev','s:5:\"cont.\";'),('en','messages:index-category','s:13:\"Indexed pages\";'),('en','messages:noindex-category','s:15:\"Noindexed pages\";'),('en','messages:broken-file-category','s:28:\"Pages with broken file links\";'),('en','messages:linkprefix','s:31:\"/^(.*?)([a-zA-Z\\x80-\\xff]+)$/sD\";'),('en','messages:about','s:5:\"About\";'),('en','messages:article','s:12:\"Content page\";'),('en','messages:newwindow','s:21:\"(opens in new window)\";'),('en','messages:cancel','s:6:\"Cancel\";'),('en','messages:moredotdotdot','s:7:\"More...\";'),('en','messages:mypage','s:7:\"My page\";'),('en','messages:mytalk','s:7:\"My talk\";'),('en','messages:anontalk','s:24:\"Talk for this IP address\";'),('en','messages:navigation','s:10:\"Navigation\";'),('en','messages:and','s:8:\"&#32;and\";'),('en','messages:qbfind','s:4:\"Find\";'),('en','messages:qbbrowse','s:6:\"Browse\";'),('en','messages:qbedit','s:4:\"Edit\";'),('en','messages:qbpageoptions','s:9:\"This page\";'),('en','messages:qbpageinfo','s:7:\"Context\";'),('en','messages:qbmyoptions','s:8:\"My pages\";'),('en','messages:qbspecialpages','s:13:\"Special pages\";'),('en','messages:faq','s:3:\"FAQ\";'),('en','messages:faqpage','s:11:\"Project:FAQ\";'),('en','messages:sitetitle','s:12:\"{{SITENAME}}\";'),('en','messages:sitesubtitle','s:0:\"\";'),('en','messages:vector-action-addsection','s:9:\"Add topic\";'),('en','messages:vector-action-delete','s:6:\"Delete\";'),('en','messages:vector-action-move','s:4:\"Move\";'),('en','messages:vector-action-protect','s:7:\"Protect\";'),('en','messages:vector-action-undelete','s:8:\"Undelete\";'),('en','messages:vector-action-unprotect','s:17:\"Change protection\";'),('en','messages:vector-simplesearch-preference','s:53:\"Enable enhanced search suggestions (Vector skin only)\";'),('en','messages:vector-view-create','s:6:\"Create\";'),('en','messages:vector-view-edit','s:4:\"Edit\";'),('en','messages:vector-view-history','s:12:\"View history\";'),('en','messages:vector-view-view','s:4:\"Read\";'),('en','messages:vector-view-viewsource','s:11:\"View source\";'),('en','messages:actions','s:7:\"Actions\";'),('en','messages:namespaces','s:10:\"Namespaces\";'),('en','messages:variants','s:8:\"Variants\";'),('en','messages:errorpagetitle','s:5:\"Error\";'),('en','messages:returnto','s:13:\"Return to $1.\";'),('en','messages:tagline','s:17:\"From {{SITENAME}}\";'),('en','messages:help','s:4:\"Help\";'),('en','messages:search','s:6:\"Search\";'),('en','messages:searchbutton','s:6:\"Search\";'),('en','messages:go','s:2:\"Go\";'),('en','messages:searcharticle','s:2:\"Go\";'),('en','messages:history','s:12:\"Page history\";'),('en','messages:history_short','s:7:\"History\";'),('en','messages:updatedmarker','s:27:\"updated since my last visit\";'),('en','messages:printableversion','s:17:\"Printable version\";'),('en','messages:permalink','s:14:\"Permanent link\";'),('en','messages:print','s:5:\"Print\";'),('en','messages:view','s:4:\"View\";'),('en','messages:edit','s:4:\"Edit\";'),('en','messages:create','s:6:\"Create\";'),('en','messages:editthispage','s:14:\"Edit this page\";'),('en','messages:create-this-page','s:16:\"Create this page\";'),('en','messages:delete','s:6:\"Delete\";'),('en','messages:deletethispage','s:16:\"Delete this page\";'),('en','messages:undelete_short','s:40:\"Undelete {{PLURAL:$1|one edit|$1 edits}}\";'),('en','messages:viewdeleted_short','s:52:\"View {{PLURAL:$1|one deleted edit|$1 deleted edits}}\";'),('en','messages:protect','s:7:\"Protect\";'),('en','messages:protect_change','s:6:\"change\";'),('en','messages:protectthispage','s:17:\"Protect this page\";'),('en','messages:unprotect','s:17:\"Change protection\";'),('en','messages:unprotectthispage','s:30:\"Change protection of this page\";'),('en','messages:newpage','s:8:\"New page\";'),('en','messages:talkpage','s:17:\"Discuss this page\";'),('en','messages:talkpagelinktext','s:4:\"Talk\";'),('en','messages:specialpage','s:12:\"Special page\";'),('en','messages:personaltools','s:14:\"Personal tools\";'),('en','messages:postcomment','s:11:\"New section\";'),('en','messages:addsection','s:1:\"+\";'),('en','messages:articlepage','s:17:\"View content page\";'),('en','messages:talk','s:10:\"Discussion\";'),('en','messages:views','s:5:\"Views\";'),('en','messages:toolbox','s:7:\"Toolbox\";'),('en','messages:userpage','s:14:\"View user page\";'),('en','messages:projectpage','s:17:\"View project page\";'),('en','messages:imagepage','s:14:\"View file page\";'),('en','messages:mediawikipage','s:17:\"View message page\";'),('en','messages:templatepage','s:18:\"View template page\";'),('en','messages:viewhelppage','s:14:\"View help page\";'),('en','messages:categorypage','s:18:\"View category page\";'),('en','messages:viewtalkpage','s:15:\"View discussion\";'),('en','messages:otherlanguages','s:18:\"In other languages\";'),('en','messages:redirectedfrom','s:20:\"(Redirected from $1)\";'),('en','messages:redirectpagesub','s:13:\"Redirect page\";'),('en','messages:talkpageheader','s:1:\"-\";'),('en','messages:lastmodifiedat','s:41:\"This page was last modified on $1, at $2.\";'),('en','messages:viewcount','s:56:\"This page has been accessed {{PLURAL:$1|once|$1 times}}.\";'),('en','messages:protectedpage','s:14:\"Protected page\";'),('en','messages:jumpto','s:8:\"Jump to:\";'),('en','messages:jumptonavigation','s:10:\"navigation\";'),('en','messages:jumptosearch','s:6:\"search\";'),('en','messages:view-pool-error','s:159:\"Sorry, the servers are overloaded at the moment.\nToo many users are trying to view this page.\nPlease wait a while before you try to access this page again.\n\n$1\";'),('en','messages:pool-timeout','s:28:\"Timeout waiting for the lock\";'),('en','messages:pool-queuefull','s:18:\"Pool queue is full\";'),('en','messages:pool-errorunknown','s:13:\"Unknown error\";'),('en','messages:aboutsite','s:18:\"About {{SITENAME}}\";'),('en','messages:aboutpage','s:13:\"Project:About\";'),('en','messages:copyright','s:30:\"Content is available under $1.\";'),('en','messages:copyrightpage','s:25:\"{{ns:project}}:Copyrights\";'),('en','messages:currentevents','s:14:\"Current events\";'),('en','messages:currentevents-url','s:22:\"Project:Current events\";'),('en','messages:disclaimers','s:11:\"Disclaimers\";'),('en','messages:disclaimerpage','s:26:\"Project:General disclaimer\";'),('en','messages:edithelp','s:12:\"Editing help\";'),('en','messages:edithelppage','s:12:\"Help:Editing\";'),('en','messages:helppage','s:13:\"Help:Contents\";'),('en','messages:mainpage','s:9:\"Main Page\";'),('en','messages:mainpage-description','s:9:\"Main page\";'),('en','messages:policy-url','s:14:\"Project:Policy\";'),('en','messages:portal','s:16:\"Community portal\";'),('en','messages:portal-url','s:24:\"Project:Community portal\";'),('en','messages:privacy','s:14:\"Privacy policy\";'),('en','messages:privacypage','s:22:\"Project:Privacy policy\";'),('en','messages:badaccess','s:16:\"Permission error\";'),('en','messages:badaccess-group0','s:61:\"You are not allowed to execute the action you have requested.\";'),('en','messages:badaccess-groups','s:99:\"The action you have requested is limited to users in {{PLURAL:$2|the group|one of the groups}}: $1.\";'),('en','messages:versionrequired','s:32:\"Version $1 of MediaWiki required\";'),('en','messages:versionrequiredtext','s:91:\"Version $1 of MediaWiki is required to use this page.\nSee [[Special:Version|version page]].\";'),('en','messages:ok','s:2:\"OK\";'),('en','messages:pagetitle','s:17:\"$1 - {{SITENAME}}\";'),('en','messages:pagetitle-view-mainpage','s:12:\"{{SITENAME}}\";'),('en','messages:backlinksubtitle','s:6:\"← $1\";'),('en','messages:retrievedfrom','s:19:\"Retrieved from \"$1\"\";'),('en','messages:youhavenewmessages','s:17:\"You have $1 ($2).\";'),('en','messages:newmessageslink','s:12:\"new messages\";'),('en','messages:newmessagesdifflink','s:11:\"last change\";'),('en','messages:youhavenewmessagesmulti','s:27:\"You have new messages on $1\";'),('en','messages:newtalkseparator','s:6:\",&#32;\";'),('en','messages:editsection','s:4:\"edit\";'),('en','messages:editsection-brackets','s:4:\"[$1]\";'),('en','messages:editold','s:4:\"edit\";'),('en','messages:viewsourceold','s:11:\"view source\";'),('en','messages:editlink','s:4:\"edit\";'),('en','messages:viewsourcelink','s:11:\"view source\";'),('en','messages:editsectionhint','s:16:\"Edit section: $1\";'),('en','messages:toc','s:8:\"Contents\";'),('en','messages:showtoc','s:4:\"show\";'),('en','messages:hidetoc','s:4:\"hide\";'),('en','messages:collapsible-collapse','s:8:\"Collapse\";'),('en','messages:collapsible-expand','s:6:\"Expand\";'),('en','messages:thisisdeleted','s:19:\"View or restore $1?\";'),('en','messages:viewdeleted','s:8:\"View $1?\";'),('en','messages:restorelink','s:47:\"{{PLURAL:$1|one deleted edit|$1 deleted edits}}\";'),('en','messages:feedlinks','s:5:\"Feed:\";'),('en','messages:feed-invalid','s:31:\"Invalid subscription feed type.\";'),('en','messages:feed-unavailable','s:35:\"Syndication feeds are not available\";'),('en','messages:site-rss-feed','s:11:\"$1 RSS feed\";'),('en','messages:site-atom-feed','s:12:\"$1 Atom feed\";'),('en','messages:page-rss-feed','s:13:\"\"$1\" RSS feed\";'),('en','messages:page-atom-feed','s:14:\"\"$1\" Atom feed\";'),('en','messages:feed-atom','s:4:\"Atom\";'),('en','messages:feed-rss','s:3:\"RSS\";'),('en','messages:sitenotice','s:1:\"-\";'),('en','messages:anonnotice','s:1:\"-\";'),('en','messages:newsectionheaderdefaultlevel','s:8:\"== $1 ==\";'),('en','messages:red-link-title','s:24:\"$1 (page does not exist)\";'),('en','messages:sort-descending','s:15:\"Sort descending\";'),('en','messages:sort-ascending','s:14:\"Sort ascending\";'),('en','messages:nstab-main','s:4:\"Page\";'),('en','messages:nstab-user','s:9:\"User page\";'),('en','messages:nstab-media','s:10:\"Media page\";'),('en','messages:nstab-special','s:12:\"Special page\";'),('en','messages:nstab-project','s:12:\"Project page\";'),('en','messages:nstab-image','s:4:\"File\";'),('en','messages:nstab-mediawiki','s:7:\"Message\";'),('en','messages:nstab-template','s:8:\"Template\";'),('en','messages:nstab-help','s:9:\"Help page\";'),('en','messages:nstab-category','s:8:\"Category\";'),('en','messages:mainpage-nstab','s:0:\"\";'),('en','messages:nosuchaction','s:14:\"No such action\";'),('en','messages:nosuchactiontext','s:176:\"The action specified by the URL is invalid.\nYou might have mistyped the URL, or followed an incorrect link.\nThis might also indicate a bug in the software used by {{SITENAME}}.\";'),('en','messages:nosuchspecialpage','s:20:\"No such special page\";'),('en','messages:nospecialpagetext','s:154:\"<strong>You have requested an invalid special page.</strong>\n\nA list of valid special pages can be found at [[Special:SpecialPages|{{int:specialpages}}]].\";'),('en','messages:error','s:5:\"Error\";'),('en','messages:databaseerror','s:14:\"Database error\";'),('en','messages:dberrortext','s:251:\"A database query syntax error has occurred.\nThis may indicate a bug in the software.\nThe last attempted database query was:\n<blockquote><code>$1</code></blockquote>\nfrom within function \"<code>$2</code>\".\nDatabase returned error \"<samp>$3: $4</samp>\".\";'),('en','messages:dberrortextcl','s:147:\"A database query syntax error has occurred.\nThe last attempted database query was:\n\"$1\"\nfrom within function \"$2\".\nDatabase returned error \"$3: $4\"\";'),('en','messages:laggedslavemode','s:51:\"\'\'\'Warning:\'\'\' Page may not contain recent updates.\";'),('en','messages:readonly','s:15:\"Database locked\";'),('en','messages:enterlockreason','s:84:\"Enter a reason for the lock, including an estimate of when the lock will be released\";'),('en','messages:readonlytext','s:216:\"The database is currently locked to new entries and other modifications, probably for routine database maintenance, after which it will be back to normal.\n\nThe administrator who locked it offered this explanation: $1\";'),('en','messages:missing-article','s:349:\"The database did not find the text of a page that it should have found, named \"$1\" $2.\n\nThis is usually caused by following an outdated diff or history link to a page that has been deleted.\n\nIf this is not the case, you may have found a bug in the software.\nPlease report this to an [[Special:ListUsers/sysop|administrator]], making note of the URL.\";'),('en','messages:missingarticle-rev','s:15:\"(revision#: $1)\";'),('en','messages:missingarticle-diff','s:14:\"(Diff: $1, $2)\";'),('en','messages:readonly_lag','s:98:\"The database has been automatically locked while the slave database servers catch up to the master\";'),('en','messages:internalerror','s:14:\"Internal error\";'),('en','messages:internalerror_info','s:18:\"Internal error: $1\";'),('en','messages:fileappenderrorread','s:34:\"Could not read \"$1\" during append.\";'),('en','messages:fileappenderror','s:30:\"Could not append \"$1\" to \"$2\".\";'),('en','messages:filecopyerror','s:33:\"Could not copy file \"$1\" to \"$2\".\";'),('en','messages:filerenameerror','s:35:\"Could not rename file \"$1\" to \"$2\".\";'),('en','messages:filedeleteerror','s:27:\"Could not delete file \"$1\".\";'),('en','messages:directorycreateerror','s:32:\"Could not create directory \"$1\".\";'),('en','messages:filenotfound','s:25:\"Could not find file \"$1\".\";'),('en','messages:fileexistserror','s:42:\"Unable to write to file \"$1\": File exists.\";'),('en','messages:unexpected','s:28:\"Unexpected value: \"$1\"=\"$2\".\";'),('en','messages:formerror','s:29:\"Error: Could not submit form.\";'),('en','messages:badarticleerror','s:45:\"This action cannot be performed on this page.\";'),('en','messages:cannotdelete','s:93:\"The page or file \"$1\" could not be deleted.\nIt may have already been deleted by someone else.\";'),('en','messages:cannotdelete-title','s:23:\"Cannot delete page \"$1\"\";'),('en','messages:badtitle','s:9:\"Bad title\";'),('en','messages:badtitletext','s:175:\"The requested page title was invalid, empty, or an incorrectly linked inter-language or inter-wiki title.\nIt may contain one or more characters which cannot be used in titles.\";'),('en','messages:perfcached','s:135:\"The following data is cached and may not be up to date. A maximum of {{PLURAL:$1|one result is|$1 results are}} available in the cache.\";'),('en','messages:perfcachedts','s:134:\"The following data is cached, and was last updated $1. A maximum of {{PLURAL:$4|one result is|$4 results are}} available in the cache.\";'),('en','messages:querypage-no-updates','s:88:\"Updates for this page are currently disabled.\nData here will not presently be refreshed.\";'),('en','messages:wrong_wfQuery_params','s:68:\"Incorrect parameters to wfQuery()<br />\nFunction: $1<br />\nQuery: $2\";'),('en','messages:viewsource','s:11:\"View source\";'),('en','messages:viewsource-title','s:18:\"View source for $1\";'),('en','messages:actionthrottled','s:16:\"Action throttled\";'),('en','messages:actionthrottledtext','s:178:\"As an anti-spam measure, you are limited from performing this action too many times in a short space of time, and you have exceeded this limit.\nPlease try again in a few minutes.\";'),('en','messages:protectedpagetext','s:48:\"This page has been protected to prevent editing.\";'),('en','messages:viewsourcetext','s:46:\"You can view and copy the source of this page:\";'),('en','messages:viewyourtext','s:66:\"You can view and copy the source of \'\'\'your edits\'\'\' to this page:\";'),('en','messages:protectedinterface','s:86:\"This page provides interface text for the software, and is protected to prevent abuse.\";'),('en','messages:editinginterface','s:325:\"\'\'\'Warning:\'\'\' You are editing a page which is used to provide interface text for the software.\nChanges to this page will affect the appearance of the user interface for other users.\nFor translations, please consider using [//translatewiki.net/wiki/Main_Page?setlang=en translatewiki.net], the MediaWiki localisation project.\";'),('en','messages:sqlhidden','s:18:\"(SQL query hidden)\";'),('en','messages:cascadeprotected','s:180:\"This page has been protected from editing, because it is included in the following {{PLURAL:$1|page, which is|pages, which are}} protected with the \"cascading\" option turned on:\n$2\";'),('en','messages:namespaceprotected','s:67:\"You do not have permission to edit pages in the \'\'\'$1\'\'\' namespace.\";'),('en','messages:customcssprotected','s:103:\"You do not have permission to edit this CSS page, because it contains another user\'s personal settings.\";'),('en','messages:customjsprotected','s:110:\"You do not have permission to edit this JavaScript page, because it contains another user\'s personal settings.\";'),('en','messages:ns-specialprotected','s:31:\"Special pages cannot be edited.\";'),('en','messages:titleprotected','s:92:\"This title has been protected from creation by [[User:$1|$1]].\nThe reason given is \"\'\'$2\'\'\".\";'),('en','messages:virus-badscanner','s:48:\"Bad configuration: Unknown virus scanner: \'\'$1\'\'\";'),('en','messages:virus-scanfailed','s:21:\"scan failed (code $1)\";'),('en','messages:virus-unknownscanner','s:18:\"unknown antivirus:\";'),('en','messages:logouttext','s:280:\"\'\'\'You are now logged out.\'\'\'\n\nYou can continue to use {{SITENAME}} anonymously, or you can [[Special:UserLogin|log in again]] as the same or as a different user.\nNote that some pages may continue to be displayed as if you were still logged in, until you clear your browser cache.\";'),('en','messages:welcomecreation','s:128:\"== Welcome, $1! ==\nYour account has been created.\nDo not forget to change your [[Special:Preferences|{{SITENAME}} preferences]].\";'),('en','messages:yourname','s:9:\"Username:\";'),('en','messages:yourpassword','s:9:\"Password:\";'),('en','messages:yourpasswordagain','s:16:\"Retype password:\";'),('en','messages:remembermypassword','s:78:\"Remember my login on this browser (for a maximum of $1 {{PLURAL:$1|day|days}})\";'),('en','messages:securelogin-stick-https','s:35:\"Stay connected to HTTPS after login\";'),('en','messages:yourdomainname','s:12:\"Your domain:\";'),('en','messages:externaldberror','s:105:\"There was either an authentication database error or you are not allowed to update your external account.\";'),('en','messages:login','s:6:\"Log in\";'),('en','messages:nav-login-createaccount','s:23:\"Log in / create account\";'),('en','messages:loginprompt','s:56:\"You must have cookies enabled to log in to {{SITENAME}}.\";'),('en','messages:userlogin','s:23:\"Log in / create account\";'),('en','messages:userloginnocreate','s:6:\"Log in\";'),('en','messages:logout','s:7:\"Log out\";'),('en','messages:userlogout','s:7:\"Log out\";'),('en','messages:notloggedin','s:13:\"Not logged in\";'),('en','messages:nologin','s:26:\"Don\'t have an account? $1.\";'),('en','messages:nologinlink','s:17:\"Create an account\";'),('en','messages:createaccount','s:14:\"Create account\";'),('en','messages:gotaccount','s:28:\"Already have an account? $1.\";'),('en','messages:gotaccountlink','s:6:\"Log in\";'),('en','messages:userlogin-resetlink','s:29:\"Forgotten your login details?\";'),('en','messages:createaccountmail','s:9:\"By e-mail\";'),('en','messages:createaccountreason','s:7:\"Reason:\";'),('en','messages:badretype','s:39:\"The passwords you entered do not match.\";'),('en','messages:userexists','s:64:\"Username entered already in use.\nPlease choose a different name.\";'),('en','messages:loginerror','s:11:\"Login error\";'),('en','messages:createaccounterror','s:28:\"Could not create account: $1\";'),('en','messages:nocookiesnew','s:195:\"The user account was created, but you are not logged in.\n{{SITENAME}} uses cookies to log in users.\nYou have cookies disabled.\nPlease enable them, then log in with your new username and password.\";'),('en','messages:nocookieslogin','s:103:\"{{SITENAME}} uses cookies to log in users.\nYou have cookies disabled.\nPlease enable them and try again.\";'),('en','messages:nocookiesfornew','s:134:\"The user account was not created, as we could not confirm its source.\nEnsure you have cookies enabled, reload this page and try again.\";'),('en','messages:nocookiesforlogin','s:22:\"{{int:nocookieslogin}}\";'),('en','messages:noname','s:40:\"You have not specified a valid username.\";'),('en','messages:loginsuccesstitle','s:16:\"Login successful\";'),('en','messages:loginsuccess','s:52:\"\'\'\'You are now logged in to {{SITENAME}} as \"$1\".\'\'\'\";'),('en','messages:nosuchuser','s:139:\"There is no user by the name \"$1\".\nUsernames are case sensitive.\nCheck your spelling, or [[Special:UserLogin/signup|create a new account]].\";'),('en','messages:nosuchusershort','s:55:\"There is no user by the name \"$1\".\nCheck your spelling.\";'),('en','messages:nouserspecified','s:31:\"You have to specify a username.\";'),('en','messages:login-userblocked','s:40:\"This user is blocked. Login not allowed.\";'),('en','messages:wrongpassword','s:45:\"Incorrect password entered.\nPlease try again.\";'),('en','messages:wrongpasswordempty','s:45:\"Password entered was blank.\nPlease try again.\";'),('en','messages:passwordtooshort','s:67:\"Passwords must be at least {{PLURAL:$1|1 character|$1 characters}}.\";'),('en','messages:password-name-match','s:51:\"Your password must be different from your username.\";'),('en','messages:password-login-forbidden','s:57:\"The use of this username and password has been forbidden.\";'),('en','messages:mailmypassword','s:19:\"E-mail new password\";'),('en','messages:passwordremindertitle','s:39:\"New temporary password for {{SITENAME}}\";'),('en','messages:passwordremindertext','s:493:\"Someone (probably you, from IP address $1) requested a new\npassword for {{SITENAME}} ($4). A temporary password for user\n\"$2\" has been created and was set to \"$3\". If this was your\nintent, you will need to log in and choose a new password now.\nYour temporary password will expire in {{PLURAL:$5|one day|$5 days}}.\n\nIf someone else made this request, or if you have remembered your password,\nand you no longer wish to change it, you may ignore this message and\ncontinue using your old password.\";'),('en','messages:noemail','s:50:\"There is no e-mail address recorded for user \"$1\".\";'),('en','messages:noemailcreate','s:42:\"You need to provide a valid e-mail address\";'),('en','messages:passwordsent','s:113:\"A new password has been sent to the e-mail address registered for \"$1\".\nPlease log in again after you receive it.\";'),('en','messages:blocked-mailpassword','s:118:\"Your IP address is blocked from editing, and so is not allowed to use the password recovery function to prevent abuse.\";'),('en','messages:eauthentsent','s:219:\"A confirmation e-mail has been sent to the nominated e-mail address.\nBefore any other e-mail is sent to the account, you will have to follow the instructions in the e-mail, to confirm that the account is actually yours.\";'),('en','messages:throttled-mailpassword','s:178:\"A password reminder has already been sent, within the last {{PLURAL:$1|hour|$1 hours}}.\nTo prevent abuse, only one password reminder will be sent per {{PLURAL:$1|hour|$1 hours}}.\";'),('en','messages:loginstart','s:0:\"\";'),('en','messages:loginend','s:0:\"\";'),('en','messages:loginend-https','s:0:\"\";'),('en','messages:signupstart','s:18:\"{{int:loginstart}}\";'),('en','messages:signupend','s:16:\"{{int:loginend}}\";'),('en','messages:signupend-https','s:0:\"\";'),('en','messages:mailerror','s:22:\"Error sending mail: $1\";'),('en','messages:acct_creation_throttle_hit','s:250:\"Visitors to this wiki using your IP address have created {{PLURAL:$1|1 account|$1 accounts}} in the last day, which is the maximum allowed in this time period.\nAs a result, visitors using this IP address cannot create any more accounts at the moment.\";'),('en','messages:emailauthenticated','s:50:\"Your e-mail address was authenticated on $2 at $3.\";'),('en','messages:emailnotauthenticated','s:103:\"Your e-mail address is not yet authenticated.\nNo e-mail will be sent for any of the following features.\";'),('en','messages:noemailprefs','s:73:\"Specify an e-mail address in your preferences for these features to work.\";'),('en','messages:emailconfirmlink','s:27:\"Confirm your e-mail address\";'),('en','messages:invalidemailaddress','s:137:\"The e-mail address cannot be accepted as it appears to have an invalid format.\nPlease enter a well-formatted address or empty that field.\";'),('en','messages:cannotchangeemail','s:56:\"Account e-mail addresses cannot be changed on this wiki.\";'),('en','messages:accountcreated','s:15:\"Account created\";'),('en','messages:accountcreatedtext','s:41:\"The user account for $1 has been created.\";'),('en','messages:createaccount-title','s:33:\"Account creation for {{SITENAME}}\";'),('en','messages:createaccount-text','s:219:\"Someone created an account for your e-mail address on {{SITENAME}} ($4) named \"$2\", with password \"$3\".\nYou should log in and change your password now.\n\nYou may ignore this message, if this account was created in error.\";'),('en','messages:usernamehasherror','s:39:\"Username cannot contain hash characters\";'),('en','messages:login-throttled','s:78:\"You have made too many recent login attempts.\nPlease wait before trying again.\";'),('en','messages:login-abort-generic','s:37:\"Your login was unsuccessful - Aborted\";'),('en','messages:loginlanguagelabel','s:12:\"Language: $1\";'),('en','messages:loginlanguagelinks','s:99:\"* Deutsch|de\n* English|en\n* Esperanto|eo\n* Français|fr\n* Español|es\n* Italiano|it\n* Nederlands|nl\";'),('en','messages:suspicious-userlogout','s:106:\"Your request to log out was denied because it looks like it was sent by a broken browser or caching proxy.\";'),('en','messages:pear-mail-error','s:2:\"$1\";'),('en','messages:php-mail-error','s:2:\"$1\";'),('en','messages:php-mail-error-unknown','s:39:\"Unknown error in PHP\'s mail() function.\";'),('en','messages:user-mail-no-addy','s:47:\"Tried to send e-mail without an e-mail address.\";'),('en','messages:resetpass','s:15:\"Change password\";'),('en','messages:resetpass_announce','s:101:\"You logged in with a temporary e-mailed code.\nTo finish logging in, you must set a new password here:\";'),('en','messages:resetpass_text','s:22:\"<!-- Add text here -->\";'),('en','messages:resetpass_header','s:23:\"Change account password\";'),('en','messages:oldpassword','s:13:\"Old password:\";'),('en','messages:newpassword','s:13:\"New password:\";'),('en','messages:retypenew','s:20:\"Retype new password:\";'),('en','messages:resetpass_submit','s:23:\"Set password and log in\";'),('en','messages:resetpass_success','s:66:\"Your password has been changed successfully!\nNow logging you in...\";'),('en','messages:resetpass_forbidden','s:27:\"Passwords cannot be changed\";'),('en','messages:resetpass-no-info','s:51:\"You must be logged in to access this page directly.\";'),('en','messages:resetpass-submit-loggedin','s:15:\"Change password\";'),('en','messages:resetpass-submit-cancel','s:6:\"Cancel\";'),('en','messages:resetpass-wrong-oldpass','s:133:\"Invalid temporary or current password.\nYou may have already successfully changed your password or requested a new temporary password.\";'),('en','messages:resetpass-temp-password','s:19:\"Temporary password:\";'),('en','messages:passwordreset','s:14:\"Reset password\";'),('en','messages:passwordreset-text','s:73:\"Complete this form to receive an e-mail reminder of your account details.\";'),('en','messages:passwordreset-legend','s:14:\"Reset password\";'),('en','messages:passwordreset-disabled','s:48:\"Password resets have been disabled on this wiki.\";'),('en','messages:passwordreset-pretext','s:52:\"{{PLURAL:$1||Enter one of the pieces of data below}}\";'),('en','messages:passwordreset-username','s:9:\"Username:\";'),('en','messages:passwordreset-domain','s:7:\"Domain:\";'),('en','messages:passwordreset-capture','s:26:\"View the resulting e-mail?\";'),('en','messages:passwordreset-capture-help','s:119:\"If you check this box, the e-mail (with the temporary password) will be shown to you as well as being sent to the user.\";'),('en','messages:passwordreset-email','s:15:\"E-mail address:\";'),('en','messages:passwordreset-emailtitle','s:31:\"Account details on {{SITENAME}}\";'),('en','messages:passwordreset-emailtext-ip','s:556:\"Someone (probably you, from IP address $1) requested a reminder of your\naccount details for {{SITENAME}} ($4). The following user {{PLURAL:$3|account is|accounts are}}\nassociated with this e-mail address:\n\n$2\n\n{{PLURAL:$3|This temporary password|These temporary passwords}} will expire in {{PLURAL:$5|one day|$5 days}}.\nYou should log in and choose a new password now. If someone else made this\nrequest, or if you have remembered your original password, and you no longer\nwish to change it, you may ignore this message and continue using your old\npassword.\";'),('en','messages:passwordreset-emailtext-user','s:537:\"User $1 on {{SITENAME}} requested a reminder of your account details for {{SITENAME}}\n($4). The following user {{PLURAL:$3|account is|accounts are}} associated with this e-mail address:\n\n$2\n\n{{PLURAL:$3|This temporary password|These temporary passwords}} will expire in {{PLURAL:$5|one day|$5 days}}.\nYou should log in and choose a new password now. If someone else made this\nrequest, or if you have remembered your original password, and you no longer\nwish to change it, you may ignore this message and continue using your old\npassword.\";'),('en','messages:passwordreset-emailelement','s:35:\"Username: $1\nTemporary password: $2\";'),('en','messages:passwordreset-emailsent','s:32:\"A reminder e-mail has been sent.\";'),('en','messages:passwordreset-emailsent-capture','s:54:\"A reminder e-mail has been sent, which is shown below.\";'),('en','messages:passwordreset-emailerror-capture','s:92:\"A reminder e-mail was generated, which is shown below, but sending it to the user failed: $1\";'),('en','messages:changeemail','s:21:\"Change e-mail address\";'),('en','messages:changeemail-header','s:29:\"Change account e-mail address\";'),('en','messages:changeemail-text','s:110:\"Complete this form to change your e-mail address. You will need to enter your password to confirm this change.\";'),('en','messages:changeemail-no-info','s:51:\"You must be logged in to access this page directly.\";'),('en','messages:changeemail-oldemail','s:23:\"Current e-mail address:\";'),('en','messages:changeemail-newemail','s:19:\"New e-mail address:\";'),('en','messages:changeemail-none','s:6:\"(none)\";'),('en','messages:changeemail-submit','s:13:\"Change e-mail\";'),('en','messages:changeemail-cancel','s:6:\"Cancel\";'),('en','messages:bold_sample','s:9:\"Bold text\";'),('en','messages:bold_tip','s:9:\"Bold text\";'),('en','messages:italic_sample','s:11:\"Italic text\";'),('en','messages:italic_tip','s:11:\"Italic text\";'),('en','messages:link_sample','s:10:\"Link title\";'),('en','messages:link_tip','s:13:\"Internal link\";'),('en','messages:extlink_sample','s:33:\"http://www.example.com link title\";'),('en','messages:extlink_tip','s:39:\"External link (remember http:// prefix)\";'),('en','messages:headline_sample','s:13:\"Headline text\";'),('en','messages:headline_tip','s:16:\"Level 2 headline\";'),('en','messages:nowiki_sample','s:30:\"Insert non-formatted text here\";'),('en','messages:nowiki_tip','s:22:\"Ignore wiki formatting\";'),('en','messages:image_sample','s:11:\"Example.jpg\";'),('en','messages:image_tip','s:13:\"Embedded file\";'),('en','messages:media_sample','s:11:\"Example.ogg\";'),('en','messages:media_tip','s:9:\"File link\";'),('en','messages:sig_tip','s:29:\"Your signature with timestamp\";'),('en','messages:hr_tip','s:31:\"Horizontal line (use sparingly)\";'),('en','messages:summary','s:8:\"Summary:\";'),('en','messages:subject','s:17:\"Subject/headline:\";'),('en','messages:minoredit','s:20:\"This is a minor edit\";'),('en','messages:watchthis','s:15:\"Watch this page\";'),('en','messages:savearticle','s:9:\"Save page\";'),('en','messages:preview','s:7:\"Preview\";'),('en','messages:showpreview','s:12:\"Show preview\";'),('en','messages:showlivepreview','s:12:\"Live preview\";'),('en','messages:showdiff','s:12:\"Show changes\";'),('en','messages:anoneditwarning','s:99:\"\'\'\'Warning:\'\'\' You are not logged in.\nYour IP address will be recorded in this page\'s edit history.\";'),('en','messages:anonpreviewwarning','s:90:\"\'\'You are not logged in. Saving will record your IP address in this page\'s edit history.\'\'\";'),('en','messages:missingsummary','s:133:\"\'\'\'Reminder:\'\'\' You have not provided an edit summary.\nIf you click \"{{int:savearticle}}\" again, your edit will be saved without one.\";'),('en','messages:missingcommenttext','s:29:\"Please enter a comment below.\";'),('en','messages:missingcommentheader','s:153:\"\'\'\'Reminder:\'\'\' You have not provided a subject/headline for this comment.\nIf you click \"{{int:savearticle}}\" again, your edit will be saved without one.\";'),('en','messages:summary-preview','s:16:\"Summary preview:\";'),('en','messages:subject-preview','s:25:\"Subject/headline preview:\";'),('en','messages:blockedtitle','s:15:\"User is blocked\";'),('en','messages:blockedtext','s:574:\"\'\'\'Your username or IP address has been blocked.\'\'\'\n\nThe block was made by $1.\nThe reason given is \'\'$2\'\'.\n\n* Start of block: $8\n* Expiry of block: $6\n* Intended blockee: $7\n\nYou can contact $1 or another [[{{MediaWiki:Grouppage-sysop}}|administrator]] to discuss the block.\nYou cannot use the \'e-mail this user\' feature unless a valid e-mail address is specified in your [[Special:Preferences|account preferences]] and you have not been blocked from using it.\nYour current IP address is $3, and the block ID is #$5.\nPlease include all above details in any queries you make.\";'),('en','messages:autoblockedtext','s:631:\"Your IP address has been automatically blocked because it was used by another user, who was blocked by $1.\nThe reason given is:\n\n:\'\'$2\'\'\n\n* Start of block: $8\n* Expiry of block: $6\n* Intended blockee: $7\n\nYou may contact $1 or one of the other [[{{MediaWiki:Grouppage-sysop}}|administrators]] to discuss the block.\n\nNote that you may not use the \"e-mail this user\" feature unless you have a valid e-mail address registered in your [[Special:Preferences|user preferences]] and you have not been blocked from using it.\n\nYour current IP address is $3, and the block ID is #$5.\nPlease include all above details in any queries you make.\";'),('en','messages:blockednoreason','s:15:\"no reason given\";'),('en','messages:whitelistedittext','s:29:\"You have to $1 to edit pages.\";'),('en','messages:confirmedittext','s:157:\"You must confirm your e-mail address before editing pages.\nPlease set and validate your e-mail address through your [[Special:Preferences|user preferences]].\";'),('en','messages:nosuchsectiontitle','s:19:\"Cannot find section\";'),('en','messages:nosuchsectiontext','s:115:\"You tried to edit a section that does not exist.\nIt may have been moved or deleted while you were viewing the page.\";'),('en','messages:loginreqtitle','s:14:\"Login required\";'),('en','messages:loginreqlink','s:6:\"log in\";'),('en','messages:loginreqpagetext','s:32:\"You must $1 to view other pages.\";'),('en','messages:accmailtitle','s:14:\"Password sent.\";'),('en','messages:accmailtext','s:200:\"A randomly generated password for [[User talk:$1|$1]] has been sent to $2.\n\nThe password for this new account can be changed on the \'\'[[Special:ChangePassword|change password]]\'\' page upon logging in.\";'),('en','messages:newarticle','s:5:\"(New)\";'),('en','messages:newarticletext','s:239:\"You have followed a link to a page that does not exist yet.\nTo create the page, start typing in the box below (see the [[{{MediaWiki:Helppage}}|help page]] for more info).\nIf you are here by mistake, click your browser\'s \'\'\'back\'\'\' button.\";'),('en','messages:newarticletextanon','s:22:\"{{int:newarticletext}}\";'),('en','messages:talkpagetext','s:31:\"<!-- MediaWiki:talkpagetext -->\";'),('en','messages:anontalkpagetext','s:469:\"----\'\'This is the discussion page for an anonymous user who has not created an account yet, or who does not use it.\nWe therefore have to use the numerical IP address to identify him/her.\nSuch an IP address can be shared by several users.\nIf you are an anonymous user and feel that irrelevant comments have been directed at you, please [[Special:UserLogin/signup|create an account]] or [[Special:UserLogin|log in]] to avoid future confusion with other anonymous users.\'\'\";'),('en','messages:noarticletext','s:296:\"There is currently no text in this page.\nYou can [[Special:Search/{{PAGENAME}}|search for this page title]] in other pages,\n<span class=\"plainlinks\">[{{fullurl:{{#Special:Log}}|page={{FULLPAGENAMEE}}}} search the related logs],\nor [{{fullurl:{{FULLPAGENAME}}|action=edit}} edit this page]</span>.\";'),('en','messages:noarticletext-nopermission','s:237:\"There is currently no text in this page.\nYou can [[Special:Search/{{PAGENAME}}|search for this page title]] in other pages,\nor <span class=\"plainlinks\">[{{fullurl:{{#Special:Log}}|page={{FULLPAGENAMEE}}}} search the related logs]</span>.\";'),('en','messages:noarticletextanon','s:21:\"{{int:noarticletext}}\";'),('en','messages:userpage-userdoesnotexist','s:87:\"User account \"$1\" is not registered.\nPlease check if you want to create/edit this page.\";'),('en','messages:userpage-userdoesnotexist-view','s:36:\"User account \"$1\" is not registered.\";'),('en','messages:blocked-notice-logextract','s:91:\"This user is currently blocked.\nThe latest block log entry is provided below for reference:\";'),('en','messages:clearyourcache','s:443:\"\'\'\'Note:\'\'\' After saving, you may have to bypass your browser\'s cache to see the changes.\n* \'\'\'Firefox / Safari:\'\'\' Hold \'\'Shift\'\' while clicking \'\'Reload\'\', or press either \'\'Ctrl-F5\'\' or \'\'Ctrl-R\'\' (\'\'⌘-R\'\' on a Mac)\n* \'\'\'Google Chrome:\'\'\' Press \'\'Ctrl-Shift-R\'\' (\'\'⌘-Shift-R\'\' on a Mac)\n* \'\'\'Internet Explorer:\'\'\' Hold \'\'Ctrl\'\' while clicking \'\'Refresh\'\', or press \'\'Ctrl-F5\'\'\n* \'\'\'Opera:\'\'\' Clear the cache in \'\'Tools → Preferences\'\'\";'),('en','messages:usercssyoucanpreview','s:83:\"\'\'\'Tip:\'\'\' Use the \"{{int:showpreview}}\" button to test your new CSS before saving.\";'),('en','messages:userjsyoucanpreview','s:90:\"\'\'\'Tip:\'\'\' Use the \"{{int:showpreview}}\" button to test your new JavaScript before saving.\";'),('en','messages:usercsspreview','s:91:\"\'\'\'Remember that you are only previewing your user CSS.\'\'\'\n\'\'\'It has not yet been saved!\'\'\'\";'),('en','messages:userjspreview','s:106:\"\'\'\'Remember that you are only testing/previewing your user JavaScript.\'\'\'\n\'\'\'It has not yet been saved!\'\'\'\";'),('en','messages:sitecsspreview','s:86:\"\'\'\'Remember that you are only previewing this CSS.\'\'\'\n\'\'\'It has not yet been saved!\'\'\'\";'),('en','messages:sitejspreview','s:98:\"\'\'\'Remember that you are only previewing this JavaScript code.\'\'\'\n\'\'\'It has not yet been saved!\'\'\'\";'),('en','messages:userinvalidcssjstitle','s:160:\"\'\'\'Warning:\'\'\' There is no skin \"$1\".\nCustom .css and .js pages use a lowercase title, e.g. {{ns:user}}:Foo/vector.css as opposed to {{ns:user}}:Foo/Vector.css.\";'),('en','messages:updated','s:9:\"(Updated)\";'),('en','messages:note','s:11:\"\'\'\'Note:\'\'\'\";'),('en','messages:previewnote','s:81:\"\'\'\'Remember that this is only a preview.\'\'\'\nYour changes have not yet been saved!\";'),('en','messages:previewconflict','s:102:\"This preview reflects the text in the upper text editing area as it will appear if you choose to save.\";'),('en','messages:session_fail_preview','s:179:\"\'\'\'Sorry! We could not process your edit due to a loss of session data.\'\'\'\nPlease try again.\nIf it still does not work, try [[Special:UserLogout|logging out]] and logging back in.\";'),('en','messages:session_fail_preview_html','s:338:\"\'\'\'Sorry! We could not process your edit due to a loss of session data.\'\'\'\n\n\'\'Because {{SITENAME}} has raw HTML enabled, the preview is hidden as a precaution against JavaScript attacks.\'\'\n\n\'\'\'If this is a legitimate edit attempt, please try again.\'\'\'\nIf it still does not work, try [[Special:UserLogout|logging out]] and logging back in.\";'),('en','messages:token_suffix_mismatch','s:259:\"\'\'\'Your edit has been rejected because your client mangled the punctuation characters in the edit token.\'\'\'\nThe edit has been rejected to prevent corruption of the page text.\nThis sometimes happens when you are using a buggy web-based anonymous proxy service.\";'),('en','messages:edit_form_incomplete','s:114:\"\'\'\'Some parts of the edit form did not reach the server; double-check that your edits are intact and try again.\'\'\'\";'),('en','messages:editing','s:10:\"Editing $1\";'),('en','messages:editingsection','s:20:\"Editing $1 (section)\";'),('en','messages:editingcomment','s:24:\"Editing $1 (new section)\";'),('en','messages:editconflict','s:17:\"Edit conflict: $1\";'),('en','messages:explainconflict','s:333:\"Someone else has changed this page since you started editing it.\nThe upper text area contains the page text as it currently exists.\nYour changes are shown in the lower text area.\nYou will have to merge your changes into the existing text.\n\'\'\'Only\'\'\' the text in the upper text area will be saved when you press \"{{int:savearticle}}\".\";'),('en','messages:yourtext','s:9:\"Your text\";'),('en','messages:storedversion','s:15:\"Stored revision\";'),('en','messages:nonunicodebrowser','s:184:\"\'\'\'Warning: Your browser is not Unicode compliant.\'\'\'\nA workaround is in place to allow you to safely edit pages: Non-ASCII characters will appear in the edit box as hexadecimal codes.\";'),('en','messages:editingold','s:135:\"\'\'\'Warning: You are editing an out-of-date revision of this page.\'\'\'\nIf you save it, any changes made since this revision will be lost.\";'),('en','messages:yourdiff','s:11:\"Differences\";'),('en','messages:copyrightwarning','s:406:\"Please note that all contributions to {{SITENAME}} are considered to be released under the $2 (see $1 for details).\nIf you do not want your writing to be edited mercilessly and redistributed at will, then do not submit it here.<br />\nYou are also promising us that you wrote this yourself, or copied it from a public domain or similar free resource.\n\'\'\'Do not submit copyrighted work without permission!\'\'\'\";'),('en','messages:copyrightwarning2','s:394:\"Please note that all contributions to {{SITENAME}} may be edited, altered, or removed by other contributors.\nIf you do not want your writing to be edited mercilessly, then do not submit it here.<br />\nYou are also promising us that you wrote this yourself, or copied it from a public domain or similar free resource (see $1 for details).\n\'\'\'Do not submit copyrighted work without permission!\'\'\'\";'),('en','messages:editpage-tos-summary','s:1:\"-\";'),('en','messages:longpage-hint','s:1:\"-\";'),('en','messages:longpageerror','s:186:\"\'\'\'Error: The text you have submitted is {{PLURAL:$1|one kilobyte|$1 kilobytes}} long, which is longer than the maximum of {{PLURAL:$2|one kilobyte|$2 kilobytes}}.\'\'\'\nIt cannot be saved.\";'),('en','messages:readonlywarning','s:253:\"\'\'\'Warning: The database has been locked for maintenance, so you will not be able to save your edits right now.\'\'\'\nYou may wish to cut-n-paste the text into a text file and save it for later.\n\nThe administrator who locked it offered this explanation: $1\";'),('en','messages:protectedpagewarning','s:159:\"\'\'\'Warning: This page has been protected so that only users with administrator privileges can edit it.\'\'\'\nThe latest log entry is provided below for reference:\";'),('en','messages:semiprotectedpagewarning','s:137:\"\'\'\'Note:\'\'\' This page has been protected so that only registered users can edit it.\nThe latest log entry is provided below for reference:\";'),('en','messages:cascadeprotectedwarning','s:189:\"\'\'\'Warning:\'\'\' This page has been protected so that only users with administrator privileges can edit it, because it is included in the following cascade-protected {{PLURAL:$1|page|pages}}:\";'),('en','messages:titleprotectedwarning','s:174:\"\'\'\'Warning: This page has been protected so that [[Special:ListGroupRights|specific rights]] are needed to create it.\'\'\'\nThe latest log entry is provided below for reference:\";'),('en','messages:templatesused','s:51:\"{{PLURAL:$1|Template|Templates}} used on this page:\";'),('en','messages:templatesusedpreview','s:54:\"{{PLURAL:$1|Template|Templates}} used in this preview:\";'),('en','messages:templatesusedsection','s:54:\"{{PLURAL:$1|Template|Templates}} used in this section:\";'),('en','messages:template-protected','s:11:\"(protected)\";'),('en','messages:template-semiprotected','s:16:\"(semi-protected)\";'),('en','messages:hiddencategories','s:78:\"This page is a member of {{PLURAL:$1|1 hidden category|$1 hidden categories}}:\";'),('en','messages:edittools','s:61:\"<!-- Text here will be shown below edit and upload forms. -->\";'),('en','messages:edittools-upload','s:1:\"-\";'),('en','messages:nocreatetitle','s:21:\"Page creation limited\";'),('en','messages:nocreatetext','s:157:\"{{SITENAME}} has restricted the ability to create new pages.\nYou can go back and edit an existing page, or [[Special:UserLogin|log in or create an account]].\";'),('en','messages:nocreate-loggedin','s:47:\"You do not have permission to create new pages.\";'),('en','messages:sectioneditnotsupported-title','s:29:\"Section editing not supported\";'),('en','messages:sectioneditnotsupported-text','s:46:\"Section editing is not supported in this page.\";'),('en','messages:permissionserrors','s:18:\"Permissions errors\";'),('en','messages:permissionserrorstext','s:86:\"You do not have permission to do that, for the following {{PLURAL:$1|reason|reasons}}:\";'),('en','messages:permissionserrorstext-withaction','s:81:\"You do not have permission to $2, for the following {{PLURAL:$1|reason|reasons}}:\";'),('en','messages:recreate-moveddeleted-warn','s:222:\"\'\'\'Warning: You are recreating a page that was previously deleted.\'\'\'\n\nYou should consider whether it is appropriate to continue editing this page.\nThe deletion and move log for this page are provided here for convenience:\";'),('en','messages:moveddeleted-notice','s:100:\"This page has been deleted.\nThe deletion and move log for the page are provided below for reference.\";'),('en','messages:log-fulllog','s:13:\"View full log\";'),('en','messages:edit-hook-aborted','s:45:\"Edit aborted by hook.\nIt gave no explanation.\";'),('en','messages:edit-gone-missing','s:59:\"Could not update the page.\nIt appears to have been deleted.\";'),('en','messages:edit-conflict','s:14:\"Edit conflict.\";'),('en','messages:edit-no-change','s:62:\"Your edit was ignored, because no change was made to the text.\";'),('en','messages:edit-already-exists','s:47:\"Could not create a new page.\nIt already exists.\";'),('en','messages:addsection-preload','s:0:\"\";'),('en','messages:addsection-editintro','s:0:\"\";'),('en','messages:expensive-parserfunction-warning','s:183:\"\'\'\'Warning:\'\'\' This page contains too many expensive parser function calls.\n\nIt should have less than $2 {{PLURAL:$2|call|calls}}, there {{PLURAL:$1|is now $1 call|are now $1 calls}}.\";'),('en','messages:expensive-parserfunction-category','s:51:\"Pages with too many expensive parser function calls\";'),('en','messages:post-expand-template-inclusion-warning','s:87:\"\'\'\'Warning:\'\'\' Template include size is too large.\nSome templates will not be included.\";'),('en','messages:post-expand-template-inclusion-category','s:45:\"Pages where template include size is exceeded\";'),('en','messages:post-expand-template-argument-warning','s:137:\"\'\'\'Warning:\'\'\' This page contains at least one template argument which has a too large expansion size.\nThese arguments have been omitted.\";'),('en','messages:post-expand-template-argument-category','s:43:\"Pages containing omitted template arguments\";'),('en','messages:parser-template-loop-warning','s:30:\"Template loop detected: [[$1]]\";'),('en','messages:parser-template-recursion-depth-warning','s:44:\"Template recursion depth limit exceeded ($1)\";'),('en','messages:language-converter-depth-warning','s:44:\"Language converter depth limit exceeded ($1)\";'),('en','messages:undo-success','s:161:\"The edit can be undone.\nPlease check the comparison below to verify that this is what you want to do, and then save the changes below to finish undoing the edit.\";'),('en','messages:undo-failure','s:67:\"The edit could not be undone due to conflicting intermediate edits.\";'),('en','messages:undo-norev','s:70:\"The edit could not be undone because it does not exist or was deleted.\";'),('en','messages:undo-summary','s:75:\"Undo revision $1 by [[Special:Contributions/$2|$2]] ([[User talk:$2|talk]])\";'),('en','messages:cantcreateaccounttitle','s:21:\"Cannot create account\";'),('en','messages:cantcreateaccount-text','s:118:\"Account creation from this IP address (\'\'\'$1\'\'\') has been blocked by [[User:$3|$3]].\n\nThe reason given by $3 is \'\'$2\'\'\";'),('en','messages:viewpagelogs','s:23:\"View logs for this page\";'),('en','messages:nohistory','s:39:\"There is no edit history for this page.\";'),('en','messages:currentrev','s:15:\"Latest revision\";'),('en','messages:currentrev-asof','s:24:\"Latest revision as of $1\";'),('en','messages:revisionasof','s:17:\"Revision as of $1\";'),('en','messages:revision-info','s:23:\"Revision as of $1 by $2\";'),('en','messages:revision-info-current','s:1:\"-\";'),('en','messages:revision-nav','s:65:\"($1) $2{{int:pipe-separator}}$3 ($4){{int:pipe-separator}}$5 ($6)\";'),('en','messages:previousrevision','s:18:\"← Older revision\";'),('en','messages:nextrevision','s:18:\"Newer revision →\";'),('en','messages:currentrevisionlink','s:15:\"Latest revision\";'),('en','messages:cur','s:3:\"cur\";'),('en','messages:next','s:4:\"next\";'),('en','messages:last','s:4:\"prev\";'),('en','messages:page_first','s:5:\"first\";'),('en','messages:page_last','s:4:\"last\";'),('en','messages:histlegend','s:279:\"Diff selection: Mark the radio boxes of the revisions to compare and hit enter or the button at the bottom.<br />\nLegend: \'\'\'({{int:cur}})\'\'\' = difference with latest revision, \'\'\'({{int:last}})\'\'\' = difference with preceding revision, \'\'\'{{int:minoreditletter}}\'\'\' = minor edit.\";'),('en','messages:history-fieldset-title','s:14:\"Browse history\";'),('en','messages:history-show-deleted','s:12:\"Deleted only\";'),('en','messages:history_copyright','s:1:\"-\";'),('en','messages:histfirst','s:8:\"Earliest\";'),('en','messages:histlast','s:6:\"Latest\";'),('en','messages:historysize','s:31:\"({{PLURAL:$1|1 byte|$1 bytes}})\";'),('en','messages:historyempty','s:7:\"(empty)\";'),('en','messages:history-feed-title','s:16:\"Revision history\";'),('en','messages:history-feed-description','s:42:\"Revision history for this page on the wiki\";'),('en','messages:history-feed-item-nocomment','s:8:\"$1 at $2\";'),('en','messages:history-feed-empty','s:155:\"The requested page does not exist.\nIt may have been deleted from the wiki, or renamed.\nTry [[Special:Search|searching on the wiki]] for relevant new pages.\";'),('en','messages:rev-deleted-comment','s:22:\"(edit summary removed)\";'),('en','messages:rev-deleted-user','s:18:\"(username removed)\";'),('en','messages:rev-deleted-event','s:20:\"(log action removed)\";'),('en','messages:rev-deleted-user-contribs','s:65:\"[username or IP address removed - edit hidden from contributions]\";'),('en','messages:rev-deleted-text-permission','s:145:\"This page revision has been \'\'\'deleted\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\";'),('en','messages:rev-deleted-text-unhide','s:207:\"This page revision has been \'\'\'deleted\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\nYou can still [$1 view this revision] if you wish to proceed.\";'),('en','messages:rev-suppressed-text-unhide','s:215:\"This page revision has been \'\'\'suppressed\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/suppress|page={{FULLPAGENAMEE}}}} suppression log].\nYou can still [$1 view this revision] if you wish to proceed.\";'),('en','messages:rev-deleted-text-view','s:162:\"This page revision has been \'\'\'deleted\'\'\'.\nYou can view it; details can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\";'),('en','messages:rev-suppressed-text-view','s:170:\"This page revision has been \'\'\'suppressed\'\'\'.\nYou can view it; details can be found in the [{{fullurl:{{#Special:Log}}/suppress|page={{FULLPAGENAMEE}}}} suppression log].\";'),('en','messages:rev-deleted-no-diff','s:181:\"You cannot view this diff because one of the revisions has been \'\'\'deleted\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\";'),('en','messages:rev-suppressed-no-diff','s:78:\"You cannot view this diff because one of the revisions has been \'\'\'deleted\'\'\'.\";'),('en','messages:rev-deleted-unhide-diff','s:218:\"One of the revisions of this diff has been \'\'\'deleted\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\nYou can still [$1 view this diff] if you wish to proceed.\";'),('en','messages:rev-suppressed-unhide-diff','s:226:\"One of the revisions of this diff has been \'\'\'suppressed\'\'\'.\nDetails can be found in the [{{fullurl:{{#Special:Log}}/suppress|page={{FULLPAGENAMEE}}}} suppression log].\nYou can still [$1 view this diff] if you wish to proceed.\";'),('en','messages:rev-deleted-diff-view','s:184:\"One of the revisions of this diff has been \'\'\'deleted\'\'\'.\nYou can view this diff; details can be found in the [{{fullurl:{{#Special:Log}}/delete|page={{FULLPAGENAMEE}}}} deletion log].\";'),('en','messages:rev-suppressed-diff-view','s:192:\"One of the revisions of this diff has been \'\'\'suppressed\'\'\'.\nYou can view this diff; details can be found in the [{{fullurl:{{#Special:Log}}/suppress|page={{FULLPAGENAMEE}}}} suppression log].\";'),('en','messages:rev-delundel','s:9:\"show/hide\";'),('en','messages:rev-showdeleted','s:4:\"show\";'),('en','messages:revisiondelete','s:25:\"Delete/undelete revisions\";'),('en','messages:revdelete-nooldid-title','s:23:\"Invalid target revision\";'),('en','messages:revdelete-nooldid-text','s:167:\"You have either not specified a target revision(s) to perform this\nfunction, the specified revision does not exist, or you are attempting to hide the current revision.\";'),('en','messages:revdelete-nologtype-title','s:17:\"No log type given\";'),('en','messages:revdelete-nologtype-text','s:60:\"You have not specified a log type to perform this action on.\";'),('en','messages:revdelete-nologid-title','s:17:\"Invalid log entry\";'),('en','messages:revdelete-nologid-text','s:112:\"You have either not specified a target log event to perform this function or the specified entry does not exist.\";'),('en','messages:revdelete-no-file','s:34:\"The file specified does not exist.\";'),('en','messages:revdelete-show-file-confirm','s:97:\"Are you sure you want to view a deleted revision of the file \"<nowiki>$1</nowiki>\" from $2 at $3?\";'),('en','messages:revdelete-show-file-submit','s:3:\"Yes\";'),('en','messages:revdelete-selected','s:68:\"\'\'\'{{PLURAL:$2|Selected revision|Selected revisions}} of [[:$1]]:\'\'\'\";'),('en','messages:logdelete-selected','s:59:\"\'\'\'{{PLURAL:$1|Selected log event|Selected log events}}:\'\'\'\";'),('en','messages:revdelete-text','s:325:\"\'\'\'Deleted revisions and events will still appear in the page history and logs, but parts of their content will be inaccessible to the public.\'\'\'\nOther administrators on {{SITENAME}} will still be able to access the hidden content and can undelete it again through this same interface, unless additional restrictions are set.\";'),('en','messages:revdelete-confirm','s:168:\"Please confirm that you intend to do this, that you understand the consequences, and that you are doing this in accordance with [[{{MediaWiki:Policy-url}}|the policy]].\";'),('en','messages:revdelete-suppress-text','s:209:\"Suppression should \'\'\'only\'\'\' be used for the following cases:\n* Potentially libelous information\n* Inappropriate personal information\n*: \'\'home addresses and telephone numbers, social security numbers, etc.\'\'\";'),('en','messages:revdelete-legend','s:27:\"Set visibility restrictions\";'),('en','messages:revdelete-hide-text','s:18:\"Hide revision text\";'),('en','messages:revdelete-hide-image','s:17:\"Hide file content\";'),('en','messages:revdelete-hide-name','s:22:\"Hide action and target\";'),('en','messages:revdelete-hide-comment','s:17:\"Hide edit summary\";'),('en','messages:revdelete-hide-user','s:33:\"Hide editor\'s username/IP address\";'),('en','messages:revdelete-hide-restricted','s:51:\"Suppress data from administrators as well as others\";'),('en','messages:revdelete-radio-same','s:15:\"(do not change)\";'),('en','messages:revdelete-radio-set','s:3:\"Yes\";'),('en','messages:revdelete-radio-unset','s:2:\"No\";'),('en','messages:revdelete-suppress','s:51:\"Suppress data from administrators as well as others\";'),('en','messages:revdelete-unsuppress','s:41:\"Remove restrictions on restored revisions\";'),('en','messages:revdelete-log','s:7:\"Reason:\";'),('en','messages:revdelete-submit','s:50:\"Apply to selected {{PLURAL:$1|revision|revisions}}\";'),('en','messages:revdelete-success','s:47:\"\'\'\'Revision visibility successfully updated.\'\'\'\";'),('en','messages:revdelete-failure','s:50:\"\'\'\'Revision visibility could not be updated:\'\'\'\n$1\";'),('en','messages:logdelete-success','s:38:\"\'\'\'Log visibility successfully set.\'\'\'\";'),('en','messages:logdelete-failure','s:41:\"\'\'\'Log visibility could not be set:\'\'\'\n$1\";'),('en','messages:revdel-restore','s:17:\"change visibility\";'),('en','messages:revdel-restore-deleted','s:17:\"deleted revisions\";'),('en','messages:revdel-restore-visible','s:17:\"visible revisions\";'),('en','messages:pagehist','s:12:\"Page history\";'),('en','messages:deletedhist','s:15:\"Deleted history\";'),('en','messages:revdelete-hide-current','s:86:\"Error hiding the item dated $2, $1: This is the current revision.\nIt cannot be hidden.\";'),('en','messages:revdelete-show-no-access','s:106:\"Error showing the item dated $2, $1: This item has been marked \"restricted\".\nYou do not have access to it.\";'),('en','messages:revdelete-modify-no-access','s:108:\"Error modifying the item dated $2, $1: This item has been marked \"restricted\".\nYou do not have access to it.\";'),('en','messages:revdelete-modify-missing','s:60:\"Error modifying item ID $1: It is missing from the database!\";'),('en','messages:revdelete-no-change','s:83:\"\'\'\'Warning:\'\'\' The item dated $2, $1 already had the requested visibility settings.\";'),('en','messages:revdelete-concurrent-change','s:151:\"Error modifying the item dated $2, $1: Its status appears to have been changed by someone else while you attempted to modify it.\nPlease check the logs.\";'),('en','messages:revdelete-only-restricted','s:149:\"Error hiding the item dated $2, $1: You cannot suppress items from view by administrators without also selecting one of the other visibility options.\";'),('en','messages:revdelete-reason-dropdown','s:119:\"*Common delete reasons\n** Copyright violation\n** Inappropriate personal information\n** Potentially libelous information\";'),('en','messages:revdelete-otherreason','s:24:\"Other/additional reason:\";'),('en','messages:revdelete-reasonotherlist','s:12:\"Other reason\";'),('en','messages:revdelete-edit-reasonlist','s:19:\"Edit delete reasons\";'),('en','messages:revdelete-offender','s:16:\"Revision author:\";'),('en','messages:suppressionlog','s:15:\"Suppression log\";'),('en','messages:suppressionlogtext','s:181:\"Below is a list of deletions and blocks involving content hidden from administrators.\nSee the [[Special:BlockList|block list]] for the list of currently operational bans and blocks.\";'),('en','messages:mergehistory','s:20:\"Merge page histories\";'),('en','messages:mergehistory-header','s:156:\"This page lets you merge revisions of the history of one source page into a newer page.\nMake sure that this change will maintain historical page continuity.\";'),('en','messages:mergehistory-box','s:29:\"Merge revisions of two pages:\";'),('en','messages:mergehistory-from','s:12:\"Source page:\";'),('en','messages:mergehistory-into','s:17:\"Destination page:\";'),('en','messages:mergehistory-list','s:22:\"Mergeable edit history\";'),('en','messages:mergehistory-merge','s:224:\"The following revisions of [[:$1]] can be merged into [[:$2]].\nUse the radio button column to merge in only the revisions created at and before the specified time.\nNote that using the navigation links will reset this column.\";'),('en','messages:mergehistory-go','s:20:\"Show mergeable edits\";'),('en','messages:mergehistory-submit','s:15:\"Merge revisions\";'),('en','messages:mergehistory-empty','s:27:\"No revisions can be merged.\";'),('en','messages:mergehistory-success','s:80:\"$3 {{PLURAL:$3|revision|revisions}} of [[:$1]] successfully merged into [[:$2]].\";'),('en','messages:mergehistory-fail','s:77:\"Unable to perform history merge, please recheck the page and time parameters.\";'),('en','messages:mergehistory-no-source','s:30:\"Source page $1 does not exist.\";'),('en','messages:mergehistory-no-destination','s:35:\"Destination page $1 does not exist.\";'),('en','messages:mergehistory-invalid-source','s:34:\"Source page must be a valid title.\";'),('en','messages:mergehistory-invalid-destination','s:39:\"Destination page must be a valid title.\";'),('en','messages:mergehistory-autocomment','s:27:\"Merged [[:$1]] into [[:$2]]\";'),('en','messages:mergehistory-comment','s:31:\"Merged [[:$1]] into [[:$2]]: $3\";'),('en','messages:mergehistory-same-destination','s:47:\"Source and destination pages cannot be the same\";'),('en','messages:mergehistory-reason','s:7:\"Reason:\";'),('en','messages:mergelog','s:9:\"Merge log\";'),('en','messages:pagemerge-logentry','s:46:\"merged [[$1]] into [[$2]] (revisions up to $3)\";'),('en','messages:revertmerge','s:7:\"Unmerge\";'),('en','messages:mergelogpagetext','s:75:\"Below is a list of the most recent merges of one page history into another.\";'),('en','messages:history-title','s:24:\"Revision history of \"$1\"\";'),('en','messages:difference','s:30:\"(Difference between revisions)\";'),('en','messages:difference-multipage','s:26:\"(Difference between pages)\";'),('en','messages:lineno','s:8:\"Line $1:\";'),('en','messages:compareselectedversions','s:26:\"Compare selected revisions\";'),('en','messages:showhideselectedversions','s:28:\"Show/hide selected revisions\";'),('en','messages:editundo','s:4:\"undo\";'),('en','messages:diff-multi','s:112:\"({{PLURAL:$1|One intermediate revision|$1 intermediate revisions}} by {{PLURAL:$2|one user|$2 users}} not shown)\";'),('en','messages:diff-multi-manyusers','s:118:\"({{PLURAL:$1|One intermediate revision|$1 intermediate revisions}} by more than $2 {{PLURAL:$2|user|users}} not shown)\";'),('en','messages:search-summary','s:0:\"\";'),('en','messages:searchresults','s:14:\"Search results\";'),('en','messages:searchresults-title','s:23:\"Search results for \"$1\"\";'),('en','messages:searchresulttext','s:95:\"For more information about searching {{SITENAME}}, see [[{{MediaWiki:Helppage}}|{{int:help}}]].\";'),('en','messages:searchsubtitle','s:166:\"You searched for \'\'\'[[:$1]]\'\'\' ([[Special:Prefixindex/$1|all pages starting with \"$1\"]]{{int:pipe-separator}}[[Special:WhatLinksHere/$1|all pages that link to \"$1\"]])\";'),('en','messages:searchsubtitleinvalid','s:25:\"You searched for \'\'\'$1\'\'\'\";'),('en','messages:toomanymatches','s:60:\"Too many matches were returned, please try a different query\";'),('en','messages:titlematches','s:18:\"Page title matches\";'),('en','messages:notitlematches','s:21:\"No page title matches\";'),('en','messages:textmatches','s:17:\"Page text matches\";'),('en','messages:notextmatches','s:20:\"No page text matches\";'),('en','messages:prevn','s:25:\"previous {{PLURAL:$1|$1}}\";'),('en','messages:nextn','s:21:\"next {{PLURAL:$1|$1}}\";'),('en','messages:prevn-title','s:40:\"Previous $1 {{PLURAL:$1|result|results}}\";'),('en','messages:nextn-title','s:36:\"Next $1 {{PLURAL:$1|result|results}}\";'),('en','messages:shown-title','s:45:\"Show $1 {{PLURAL:$1|result|results}} per page\";'),('en','messages:viewprevnext','s:40:\"View ($1 {{int:pipe-separator}} $2) ($3)\";'),('en','messages:searchmenu-legend','s:14:\"Search options\";'),('en','messages:searchmenu-exists','s:51:\"\'\'\'There is a page named \"[[:$1]]\" on this wiki.\'\'\'\";'),('en','messages:searchmenu-new','s:45:\"\'\'\'Create the page \"[[:$1]]\" on this wiki!\'\'\'\";'),('en','messages:searchmenu-new-nocreate','s:0:\"\";'),('en','messages:searchhelp-url','s:13:\"Help:Contents\";'),('en','messages:searchmenu-prefix','s:56:\"[[Special:PrefixIndex/$1|Browse pages with this prefix]]\";'),('en','messages:searchmenu-help','s:46:\"[[{{MediaWiki:Searchhelp-url}}|{{int:help}}]]?\";'),('en','messages:searchprofile-articles','s:13:\"Content pages\";'),('en','messages:searchprofile-project','s:22:\"Help and Project pages\";'),('en','messages:searchprofile-images','s:10:\"Multimedia\";'),('en','messages:searchprofile-everything','s:10:\"Everything\";'),('en','messages:searchprofile-advanced','s:8:\"Advanced\";'),('en','messages:searchprofile-articles-tooltip','s:12:\"Search in $1\";'),('en','messages:searchprofile-project-tooltip','s:12:\"Search in $1\";'),('en','messages:searchprofile-images-tooltip','s:16:\"Search for files\";'),('en','messages:searchprofile-everything-tooltip','s:44:\"Search all of content (including talk pages)\";'),('en','messages:searchprofile-advanced-tooltip','s:27:\"Search in custom namespaces\";'),('en','messages:search-result-size','s:34:\"$1 ({{PLURAL:$2|1 word|$2 words}})\";'),('en','messages:search-result-category-size','s:111:\"{{PLURAL:$1|1 member|$1 members}} ({{PLURAL:$2|1 subcategory|$2 subcategories}}, {{PLURAL:$3|1 file|$3 files}})\";'),('en','messages:search-result-score','s:14:\"Relevance: $1%\";'),('en','messages:search-redirect','s:13:\"(redirect $1)\";'),('en','messages:search-section','s:12:\"(section $1)\";'),('en','messages:search-suggest','s:16:\"Did you mean: $1\";'),('en','messages:search-interwiki-caption','s:15:\"Sister projects\";'),('en','messages:search-interwiki-default','s:11:\"$1 results:\";'),('en','messages:search-interwiki-custom','s:0:\"\";'),('en','messages:search-interwiki-more','s:6:\"(more)\";'),('en','messages:search-mwsuggest-enabled','s:16:\"with suggestions\";'),('en','messages:search-mwsuggest-disabled','s:14:\"no suggestions\";'),('en','messages:search-relatedarticle','s:7:\"Related\";'),('en','messages:mwsuggest-disable','s:24:\"Disable AJAX suggestions\";'),('en','messages:searcheverything-enable','s:24:\"Search in all namespaces\";'),('en','messages:searchrelated','s:7:\"related\";'),('en','messages:searchall','s:3:\"all\";'),('en','messages:showingresults','s:90:\"Showing below up to {{PLURAL:$1|\'\'\'1\'\'\' result|\'\'\'$1\'\'\' results}} starting with #\'\'\'$2\'\'\'.\";'),('en','messages:showingresultsnum','s:84:\"Showing below {{PLURAL:$3|\'\'\'1\'\'\' result|\'\'\'$3\'\'\' results}} starting with #\'\'\'$2\'\'\'.\";'),('en','messages:showingresultsheader','s:88:\"{{PLURAL:$5|Result \'\'\'$1\'\'\' of \'\'\'$3\'\'\'|Results \'\'\'$1 - $2\'\'\' of \'\'\'$3\'\'\'}} for \'\'\'$4\'\'\'\";'),('en','messages:nonefound','s:198:\"\'\'\'Note\'\'\': Only some namespaces are searched by default.\nTry prefixing your query with \'\'all:\'\' to search all content (including talk pages, templates, etc), or use the desired namespace as prefix.\";'),('en','messages:search-nonefound','s:41:\"There were no results matching the query.\";'),('en','messages:powersearch','s:15:\"Advanced search\";'),('en','messages:powersearch-legend','s:15:\"Advanced search\";'),('en','messages:powersearch-ns','s:21:\"Search in namespaces:\";'),('en','messages:powersearch-redir','s:14:\"List redirects\";'),('en','messages:powersearch-field','s:10:\"Search for\";'),('en','messages:powersearch-togglelabel','s:6:\"Check:\";'),('en','messages:powersearch-toggleall','s:3:\"All\";'),('en','messages:powersearch-togglenone','s:4:\"None\";'),('en','messages:search-external','s:15:\"External search\";'),('en','messages:searchdisabled','s:143:\"{{SITENAME}} search is disabled.\nYou can search via Google in the meantime.\nNote that their indexes of {{SITENAME}} content may be out of date.\";'),('en','messages:googlesearch','s:630:\"<form method=\"get\" action=\"//www.google.com/search\" id=\"googlesearch\">\n	<input type=\"hidden\" name=\"domains\" value=\"{{SERVER}}\" />\n	<input type=\"hidden\" name=\"num\" value=\"50\" />\n	<input type=\"hidden\" name=\"ie\" value=\"$2\" />\n	<input type=\"hidden\" name=\"oe\" value=\"$2\" />\n\n	<input type=\"text\" name=\"q\" size=\"31\" maxlength=\"255\" value=\"$1\" />\n	<input type=\"submit\" name=\"btnG\" value=\"$3\" />\n  <div>\n	<input type=\"radio\" name=\"sitesearch\" id=\"gwiki\" value=\"{{SERVER}}\" checked=\"checked\" /><label for=\"gwiki\">{{SITENAME}}</label>\n	<input type=\"radio\" name=\"sitesearch\" id=\"gWWW\" value=\"\" /><label for=\"gWWW\">WWW</label>\n  </div>\n</form>\";'),('en','messages:opensearch-desc','s:34:\"{{SITENAME}} ({{CONTENTLANGUAGE}})\";'),('en','messages:qbsettings','s:8:\"Quickbar\";'),('en','messages:qbsettings-none','s:4:\"None\";'),('en','messages:qbsettings-fixedleft','s:10:\"Fixed left\";'),('en','messages:qbsettings-fixedright','s:11:\"Fixed right\";'),('en','messages:qbsettings-floatingleft','s:13:\"Floating left\";'),('en','messages:qbsettings-floatingright','s:14:\"Floating right\";'),('en','messages:qbsettings-directionality','s:62:\"Fixed, depending on the script directionality of your language\";'),('en','messages:preferences','s:11:\"Preferences\";'),('en','messages:preferences-summary','s:0:\"\";'),('en','messages:mypreferences','s:14:\"My preferences\";'),('en','messages:prefs-edits','s:16:\"Number of edits:\";'),('en','messages:prefsnologin','s:13:\"Not logged in\";'),('en','messages:prefsnologintext','s:127:\"You must be <span class=\"plainlinks\">[{{fullurl:{{#Special:UserLogin}}|returnto=$1}} logged in]</span> to set user preferences.\";'),('en','messages:changepassword','s:15:\"Change password\";'),('en','messages:prefs-skin','s:4:\"Skin\";'),('en','messages:skin-preview','s:7:\"Preview\";'),('en','messages:datedefault','s:13:\"No preference\";'),('en','messages:prefs-beta','s:13:\"Beta features\";'),('en','messages:prefs-datetime','s:13:\"Date and time\";'),('en','messages:prefs-labs','s:13:\"Labs features\";'),('en','messages:prefs-personal','s:12:\"User profile\";'),('en','messages:prefs-rc','s:14:\"Recent changes\";'),('en','messages:prefs-watchlist','s:9:\"Watchlist\";'),('en','messages:prefs-watchlist-days','s:26:\"Days to show in watchlist:\";'),('en','messages:prefs-watchlist-days-max','s:33:\"Maximum $1 {{PLURAL:$1|day|days}}\";'),('en','messages:prefs-watchlist-edits','s:56:\"Maximum number of changes to show in expanded watchlist:\";'),('en','messages:prefs-watchlist-edits-max','s:20:\"Maximum number: 1000\";'),('en','messages:prefs-watchlist-token','s:16:\"Watchlist token:\";'),('en','messages:prefs-misc','s:4:\"Misc\";'),('en','messages:prefs-resetpass','s:15:\"Change password\";'),('en','messages:prefs-changeemail','s:21:\"Change e-mail address\";'),('en','messages:prefs-setemail','s:21:\"Set an e-mail address\";'),('en','messages:prefs-email','s:14:\"E-mail options\";'),('en','messages:prefs-rendering','s:10:\"Appearance\";'),('en','messages:saveprefs','s:4:\"Save\";'),('en','messages:resetprefs','s:21:\"Clear unsaved changes\";'),('en','messages:restoreprefs','s:28:\"Restore all default settings\";'),('en','messages:prefs-editing','s:7:\"Editing\";'),('en','messages:prefs-edit-boxsize','s:24:\"Size of the edit window.\";'),('en','messages:rows','s:5:\"Rows:\";'),('en','messages:columns','s:8:\"Columns:\";'),('en','messages:searchresultshead','s:6:\"Search\";'),('en','messages:resultsperpage','s:14:\"Hits per page:\";'),('en','messages:stub-threshold','s:72:\"Threshold for <a href=\"#\" class=\"stub\">stub link</a> formatting (bytes):\";'),('en','messages:stub-threshold-disabled','s:8:\"Disabled\";'),('en','messages:recentchangesdays','s:31:\"Days to show in recent changes:\";'),('en','messages:recentchangesdays-max','s:33:\"Maximum $1 {{PLURAL:$1|day|days}}\";'),('en','messages:recentchangescount','s:35:\"Number of edits to show by default:\";'),('en','messages:prefs-help-recentchangescount','s:55:\"This includes recent changes, page histories, and logs.\";'),('en','messages:prefs-help-watchlist-token','s:237:\"Filling in this field with a secret key will generate an RSS feed for your watchlist.\nAnyone who knows the key in this field will be able to read your watchlist, so choose a secure value.\nHere\'s a randomly-generated value you can use: $1\";'),('en','messages:savedprefs','s:33:\"Your preferences have been saved.\";'),('en','messages:timezonelegend','s:10:\"Time zone:\";'),('en','messages:localtime','s:11:\"Local time:\";'),('en','messages:timezoneuseserverdefault','s:21:\"Use wiki default ($1)\";'),('en','messages:timezoneuseoffset','s:22:\"Other (specify offset)\";'),('en','messages:timezoneoffset','s:9:\"Offset¹:\";'),('en','messages:servertime','s:12:\"Server time:\";'),('en','messages:guesstimezone','s:20:\"Fill in from browser\";'),('en','messages:timezoneregion-africa','s:6:\"Africa\";'),('en','messages:timezoneregion-america','s:7:\"America\";'),('en','messages:timezoneregion-antarctica','s:10:\"Antarctica\";'),('en','messages:timezoneregion-arctic','s:6:\"Arctic\";'),('en','messages:timezoneregion-asia','s:4:\"Asia\";'),('en','messages:timezoneregion-atlantic','s:14:\"Atlantic Ocean\";'),('en','messages:timezoneregion-australia','s:9:\"Australia\";'),('en','messages:timezoneregion-europe','s:6:\"Europe\";'),('en','messages:timezoneregion-indian','s:12:\"Indian Ocean\";'),('en','messages:timezoneregion-pacific','s:13:\"Pacific Ocean\";'),('en','messages:allowemail','s:30:\"Enable e-mail from other users\";'),('en','messages:prefs-searchoptions','s:14:\"Search options\";'),('en','messages:prefs-namespaces','s:10:\"Namespaces\";'),('en','messages:defaultns','s:37:\"Otherwise search in these namespaces:\";'),('en','messages:default','s:7:\"default\";'),('en','messages:prefs-files','s:5:\"Files\";'),('en','messages:prefs-custom-css','s:10:\"Custom CSS\";'),('en','messages:prefs-custom-js','s:17:\"Custom JavaScript\";'),('en','messages:prefs-common-css-js','s:36:\"Shared CSS/JavaScript for all skins:\";'),('en','messages:prefs-reset-intro','s:92:\"You can use this page to reset your preferences to the site defaults.\nThis cannot be undone.\";'),('en','messages:prefs-emailconfirm-label','s:20:\"E-mail confirmation:\";'),('en','messages:prefs-textboxsize','s:22:\"Size of editing window\";'),('en','messages:youremail','s:7:\"E-mail:\";'),('en','messages:username','s:9:\"Username:\";'),('en','messages:uid','s:8:\"User ID:\";'),('en','messages:prefs-memberingroups','s:37:\"Member of {{PLURAL:$1|group|groups}}:\";'),('en','messages:prefs-memberingroups-type','s:2:\"$1\";'),('en','messages:prefs-registration','s:18:\"Registration time:\";'),('en','messages:prefs-registration-date-time','s:2:\"$1\";'),('en','messages:yourrealname','s:10:\"Real name:\";'),('en','messages:yourlanguage','s:9:\"Language:\";'),('en','messages:yourvariant','s:25:\"Content language variant:\";'),('en','messages:prefs-help-variant','s:83:\"Your preferred variant or orthography to display the content pages of this wiki in.\";'),('en','messages:yournick','s:14:\"New signature:\";'),('en','messages:prefs-help-signature','s:129:\"Comments on talk pages should be signed with \"<nowiki>~~~~</nowiki>\" which will be converted into your signature and a timestamp.\";'),('en','messages:badsig','s:39:\"Invalid raw signature.\nCheck HTML tags.\";'),('en','messages:badsiglength','s:96:\"Your signature is too long.\nIt must not be more than $1 {{PLURAL:$1|character|characters}} long.\";'),('en','messages:yourgender','s:7:\"Gender:\";'),('en','messages:gender-unknown','s:11:\"Undisclosed\";'),('en','messages:gender-male','s:4:\"Male\";'),('en','messages:gender-female','s:6:\"Female\";'),('en','messages:prefs-help-gender','s:94:\"Optional: Used for gender-correct addressing by the software.\nThis information will be public.\";'),('en','messages:email','s:6:\"E-mail\";'),('en','messages:prefs-help-realname','s:111:\"Real name is optional.\nIf you choose to provide it, this will be used for giving you attribution for your work.\";'),('en','messages:prefs-help-email','s:95:\"E-mail address is optional, but is needed for password resets, should you forget your password.\";'),('en','messages:prefs-help-email-others','s:163:\"You can also choose to let others contact you by e-mail through a link on your user or talk page.\nYour e-mail address is not revealed when other users contact you.\";'),('en','messages:prefs-help-email-required','s:27:\"E-mail address is required.\";'),('en','messages:prefs-info','s:17:\"Basic information\";'),('en','messages:prefs-i18n','s:20:\"Internationalisation\";'),('en','messages:prefs-signature','s:9:\"Signature\";'),('en','messages:prefs-dateformat','s:11:\"Date format\";'),('en','messages:prefs-timeoffset','s:11:\"Time offset\";'),('en','messages:prefs-advancedediting','s:16:\"Advanced options\";'),('en','messages:prefs-advancedrc','s:16:\"Advanced options\";'),('en','messages:prefs-advancedrendering','s:16:\"Advanced options\";'),('en','messages:prefs-advancedsearchoptions','s:16:\"Advanced options\";'),('en','messages:prefs-advancedwatchlist','s:16:\"Advanced options\";'),('en','messages:prefs-displayrc','s:15:\"Display options\";'),('en','messages:prefs-displaysearchoptions','s:15:\"Display options\";'),('en','messages:prefs-displaywatchlist','s:15:\"Display options\";'),('en','messages:prefs-diffs','s:5:\"Diffs\";'),('en','messages:email-address-validity-valid','s:28:\"E-mail address appears valid\";'),('en','messages:email-address-validity-invalid','s:28:\"Enter a valid e-mail address\";'),('en','messages:userrights','s:22:\"User rights management\";'),('en','messages:userrights-summary','s:0:\"\";'),('en','messages:userrights-lookup-user','s:18:\"Manage user groups\";'),('en','messages:userrights-user-editname','s:17:\"Enter a username:\";'),('en','messages:editusergroup','s:16:\"Edit user groups\";'),('en','messages:editinguser','s:52:\"Changing user rights of user \'\'\'[[User:$1|$1]]\'\'\' $2\";'),('en','messages:userrights-editusergroup','s:16:\"Edit user groups\";'),('en','messages:saveusergroups','s:16:\"Save user groups\";'),('en','messages:userrights-groupsmember','s:10:\"Member of:\";'),('en','messages:userrights-groupsmember-auto','s:19:\"Implicit member of:\";'),('en','messages:userrights-groups-help','s:234:\"You may alter the groups this user is in:\n* A checked box means the user is in that group.\n* An unchecked box means the user is not in that group.\n* A * indicates that you cannot remove the group once you have added it, or vice versa.\";'),('en','messages:userrights-reason','s:7:\"Reason:\";'),('en','messages:userrights-no-interwiki','s:62:\"You do not have permission to edit user rights on other wikis.\";'),('en','messages:userrights-nodatabase','s:43:\"Database $1 does not exist or is not local.\";'),('en','messages:userrights-nologin','s:90:\"You must [[Special:UserLogin|log in]] with an administrator account to assign user rights.\";'),('en','messages:userrights-notallowed','s:67:\"Your account does not have permission to add or remove user rights.\";'),('en','messages:userrights-changeable-col','s:21:\"Groups you can change\";'),('en','messages:userrights-unchangeable-col','s:24:\"Groups you cannot change\";'),('en','messages:userrights-irreversible-marker','s:3:\"$1*\";'),('en','messages:group','s:6:\"Group:\";'),('en','messages:group-user','s:5:\"Users\";'),('en','messages:group-autoconfirmed','s:19:\"Autoconfirmed users\";'),('en','messages:group-bot','s:4:\"Bots\";'),('en','messages:group-sysop','s:14:\"Administrators\";'),('en','messages:group-bureaucrat','s:11:\"Bureaucrats\";'),('en','messages:group-suppress','s:10:\"Oversights\";'),('en','messages:group-all','s:5:\"(all)\";'),('en','messages:group-user-member','s:18:\"{{GENDER:$1|user}}\";'),('en','messages:group-autoconfirmed-member','s:32:\"{{GENDER:$1|autoconfirmed user}}\";'),('en','messages:group-bot-member','s:17:\"{{GENDER:$1|bot}}\";'),('en','messages:group-sysop-member','s:27:\"{{GENDER:$1|administrator}}\";'),('en','messages:group-bureaucrat-member','s:24:\"{{GENDER:$1|bureaucrat}}\";'),('en','messages:group-suppress-member','s:23:\"{{GENDER:$1|oversight}}\";'),('en','messages:grouppage-user','s:20:\"{{ns:project}}:Users\";'),('en','messages:grouppage-autoconfirmed','s:34:\"{{ns:project}}:Autoconfirmed users\";'),('en','messages:grouppage-bot','s:19:\"{{ns:project}}:Bots\";'),('en','messages:grouppage-sysop','s:29:\"{{ns:project}}:Administrators\";'),('en','messages:grouppage-bureaucrat','s:26:\"{{ns:project}}:Bureaucrats\";'),('en','messages:grouppage-suppress','s:24:\"{{ns:project}}:Oversight\";'),('en','messages:right-read','s:10:\"Read pages\";'),('en','messages:right-edit','s:10:\"Edit pages\";'),('en','messages:right-createpage','s:45:\"Create pages (which are not discussion pages)\";'),('en','messages:right-createtalk','s:23:\"Create discussion pages\";'),('en','messages:right-createaccount','s:24:\"Create new user accounts\";'),('en','messages:right-minoredit','s:19:\"Mark edits as minor\";'),('en','messages:right-move','s:10:\"Move pages\";'),('en','messages:right-move-subpages','s:30:\"Move pages with their subpages\";'),('en','messages:right-move-rootuserpages','s:20:\"Move root user pages\";'),('en','messages:right-movefile','s:10:\"Move files\";'),('en','messages:right-suppressredirect','s:56:\"Not create redirects from source pages when moving pages\";'),('en','messages:right-upload','s:12:\"Upload files\";'),('en','messages:right-reupload','s:24:\"Overwrite existing files\";'),('en','messages:right-reupload-own','s:44:\"Overwrite existing files uploaded by oneself\";'),('en','messages:right-reupload-shared','s:53:\"Override files on the shared media repository locally\";'),('en','messages:right-upload_by_url','s:23:\"Upload files from a URL\";'),('en','messages:right-purge','s:52:\"Purge the site cache for a page without confirmation\";'),('en','messages:right-autoconfirmed','s:25:\"Edit semi-protected pages\";'),('en','messages:right-bot','s:34:\"Be treated as an automated process\";'),('en','messages:right-nominornewtalk','s:72:\"Not have minor edits to discussion pages trigger the new messages prompt\";'),('en','messages:right-apihighlimits','s:32:\"Use higher limits in API queries\";'),('en','messages:right-writeapi','s:20:\"Use of the write API\";'),('en','messages:right-delete','s:12:\"Delete pages\";'),('en','messages:right-bigdelete','s:33:\"Delete pages with large histories\";'),('en','messages:right-deleterevision','s:47:\"Delete and undelete specific revisions of pages\";'),('en','messages:right-deletedhistory','s:59:\"View deleted history entries, without their associated text\";'),('en','messages:right-deletedtext','s:55:\"View deleted text and changes between deleted revisions\";'),('en','messages:right-browsearchive','s:20:\"Search deleted pages\";'),('en','messages:right-undelete','s:15:\"Undelete a page\";'),('en','messages:right-suppressrevision','s:55:\"Review and restore revisions hidden from administrators\";'),('en','messages:right-suppressionlog','s:17:\"View private logs\";'),('en','messages:right-block','s:30:\"Block other users from editing\";'),('en','messages:right-blockemail','s:32:\"Block a user from sending e-mail\";'),('en','messages:right-hideuser','s:43:\"Block a username, hiding it from the public\";'),('en','messages:right-ipblock-exempt','s:46:\"Bypass IP blocks, auto-blocks and range blocks\";'),('en','messages:right-proxyunbannable','s:34:\"Bypass automatic blocks of proxies\";'),('en','messages:right-unblockself','s:18:\"Unblock themselves\";'),('en','messages:right-protect','s:49:\"Change protection levels and edit protected pages\";'),('en','messages:right-editprotected','s:51:\"Edit protected pages (without cascading protection)\";'),('en','messages:right-editinterface','s:23:\"Edit the user interface\";'),('en','messages:right-editusercssjs','s:42:\"Edit other users\' CSS and JavaScript files\";'),('en','messages:right-editusercss','s:27:\"Edit other users\' CSS files\";'),('en','messages:right-edituserjs','s:34:\"Edit other users\' JavaScript files\";'),('en','messages:right-rollback','s:72:\"Quickly rollback the edits of the last user who edited a particular page\";'),('en','messages:right-markbotedits','s:35:\"Mark rolled-back edits as bot edits\";'),('en','messages:right-noratelimit','s:30:\"Not be affected by rate limits\";'),('en','messages:right-import','s:29:\"Import pages from other wikis\";'),('en','messages:right-importupload','s:31:\"Import pages from a file upload\";'),('en','messages:right-patrol','s:31:\"Mark others\' edits as patrolled\";'),('en','messages:right-autopatrol','s:54:\"Have one\'s own edits automatically marked as patrolled\";'),('en','messages:right-patrolmarks','s:32:\"View recent changes patrol marks\";'),('en','messages:right-unwatchedpages','s:30:\"View a list of unwatched pages\";'),('en','messages:right-mergehistory','s:26:\"Merge the history of pages\";'),('en','messages:right-userrights','s:20:\"Edit all user rights\";'),('en','messages:right-userrights-interwiki','s:40:\"Edit user rights of users on other wikis\";'),('en','messages:right-siteadmin','s:28:\"Lock and unlock the database\";'),('en','messages:right-override-export-depth','s:54:\"Export pages including linked pages up to a depth of 5\";'),('en','messages:right-sendemail','s:26:\"Send e-mail to other users\";'),('en','messages:right-passwordreset','s:27:\"View password reset e-mails\";'),('en','messages:rightslog','s:15:\"User rights log\";'),('en','messages:rightslogtext','s:40:\"This is a log of changes to user rights.\";'),('en','messages:rightslogentry','s:45:\"changed group membership for $1 from $2 to $3\";'),('en','messages:rightslogentry-autopromote','s:40:\"was automatically promoted from $2 to $3\";'),('en','messages:rightsnone','s:6:\"(none)\";'),('en','messages:action-read','s:14:\"read this page\";'),('en','messages:action-edit','s:14:\"edit this page\";'),('en','messages:action-createpage','s:12:\"create pages\";'),('en','messages:action-createtalk','s:23:\"create discussion pages\";'),('en','messages:action-createaccount','s:24:\"create this user account\";'),('en','messages:action-minoredit','s:23:\"mark this edit as minor\";'),('en','messages:action-move','s:14:\"move this page\";'),('en','messages:action-move-subpages','s:32:\"move this page, and its subpages\";'),('en','messages:action-move-rootuserpages','s:20:\"move root user pages\";'),('en','messages:action-movefile','s:14:\"move this file\";'),('en','messages:action-upload','s:16:\"upload this file\";'),('en','messages:action-reupload','s:28:\"overwrite this existing file\";'),('en','messages:action-reupload-shared','s:41:\"override this file on a shared repository\";'),('en','messages:action-upload_by_url','s:27:\"upload this file from a URL\";'),('en','messages:action-writeapi','s:17:\"use the write API\";'),('en','messages:action-delete','s:16:\"delete this page\";'),('en','messages:action-deleterevision','s:20:\"delete this revision\";'),('en','messages:action-deletedhistory','s:32:\"view this page\'s deleted history\";'),('en','messages:action-browsearchive','s:20:\"search deleted pages\";'),('en','messages:action-undelete','s:18:\"undelete this page\";'),('en','messages:action-suppressrevision','s:39:\"review and restore this hidden revision\";'),('en','messages:action-suppressionlog','s:21:\"view this private log\";'),('en','messages:action-block','s:28:\"block this user from editing\";'),('en','messages:action-protect','s:38:\"change protection levels for this page\";'),('en','messages:action-rollback','s:72:\"quickly rollback the edits of the last user who edited a particular page\";'),('en','messages:action-import','s:34:\"import this page from another wiki\";'),('en','messages:action-importupload','s:35:\"import this page from a file upload\";'),('en','messages:action-patrol','s:30:\"mark others\' edit as patrolled\";'),('en','messages:action-autopatrol','s:34:\"have your edit marked as patrolled\";'),('en','messages:action-unwatchedpages','s:32:\"view the list of unwatched pages\";'),('en','messages:action-mergehistory','s:30:\"merge the history of this page\";'),('en','messages:action-userrights','s:20:\"edit all user rights\";'),('en','messages:action-userrights-interwiki','s:40:\"edit user rights of users on other wikis\";'),('en','messages:action-siteadmin','s:27:\"lock or unlock the database\";'),('en','messages:action-sendemail','s:12:\"send e-mails\";'),('en','messages:nchanges','s:31:\"$1 {{PLURAL:$1|change|changes}}\";'),('en','messages:recentchanges','s:14:\"Recent changes\";'),('en','messages:recentchanges-url','s:21:\"Special:RecentChanges\";'),('en','messages:recentchanges-legend','s:22:\"Recent changes options\";'),('en','messages:recentchangestext','s:55:\"Track the most recent changes to the wiki on this page.\";'),('en','messages:recentchanges-feed-description','s:55:\"Track the most recent changes to the wiki in this feed.\";'),('en','messages:recentchanges-label-newpage','s:28:\"This edit created a new page\";'),('en','messages:recentchanges-label-minor','s:20:\"This is a minor edit\";'),('en','messages:recentchanges-label-bot','s:32:\"This edit was performed by a bot\";'),('en','messages:recentchanges-label-unpatrolled','s:36:\"This edit has not yet been patrolled\";'),('en','messages:rcnote','s:126:\"Below {{PLURAL:$1|is \'\'\'1\'\'\' change|are the last \'\'\'$1\'\'\' changes}} in the last {{PLURAL:$2|day|\'\'\'$2\'\'\' days}}, as of $5, $4.\";'),('en','messages:rcnotefrom','s:60:\"Below are the changes since \'\'\'$2\'\'\' (up to \'\'\'$1\'\'\' shown).\";'),('en','messages:rclistfrom','s:33:\"Show new changes starting from $1\";'),('en','messages:rcshowhideminor','s:14:\"$1 minor edits\";'),('en','messages:rcshowhidebots','s:7:\"$1 bots\";'),('en','messages:rcshowhideliu','s:18:\"$1 logged-in users\";'),('en','messages:rcshowhideanons','s:18:\"$1 anonymous users\";'),('en','messages:rcshowhidepatr','s:18:\"$1 patrolled edits\";'),('en','messages:rcshowhidemine','s:11:\"$1 my edits\";'),('en','messages:rclinks','s:44:\"Show last $1 changes in last $2 days<br />$3\";'),('en','messages:diff','s:4:\"diff\";'),('en','messages:hist','s:4:\"hist\";'),('en','messages:hide','s:4:\"Hide\";'),('en','messages:show','s:4:\"Show\";'),('en','messages:minoreditletter','s:1:\"m\";'),('en','messages:newpageletter','s:1:\"N\";'),('en','messages:boteditletter','s:1:\"b\";'),('en','messages:unpatrolledletter','s:1:\"!\";'),('en','messages:number_of_watching_users_RCview','s:4:\"[$1]\";'),('en','messages:number_of_watching_users_pageview','s:38:\"[$1 watching {{PLURAL:$1|user|users}}]\";'),('en','messages:rc_categories','s:39:\"Limit to categories (separate with \"|\")\";'),('en','messages:rc_categories_any','s:3:\"Any\";'),('en','messages:rc-change-size','s:2:\"$1\";'),('en','messages:rc-change-size-new','s:40:\"$1 {{PLURAL:$1|byte|bytes}} after change\";'),('en','messages:newsectionsummary','s:20:\"/* $1 */ new section\";'),('en','messages:rc-enhanced-expand','s:34:\"Show details (requires JavaScript)\";'),('en','messages:rc-enhanced-hide','s:12:\"Hide details\";'),('en','messages:rc-old-title','s:26:\"originally created as \"$1\"\";'),('en','messages:recentchangeslinked','s:15:\"Related changes\";'),('en','messages:recentchangeslinked-feed','s:15:\"Related changes\";'),('en','messages:recentchangeslinked-toolbox','s:15:\"Related changes\";'),('en','messages:recentchangeslinked-title','s:23:\"Changes related to \"$1\"\";'),('en','messages:recentchangeslinked-noresult','s:51:\"No changes on linked pages during the given period.\";'),('en','messages:recentchangeslinked-summary','s:180:\"This is a list of changes made recently to pages linked from a specified page (or to members of a specified category).\nPages on [[Special:Watchlist|your watchlist]] are \'\'\'bold\'\'\'.\";'),('en','messages:recentchangeslinked-page','s:10:\"Page name:\";'),('en','messages:recentchangeslinked-to','s:54:\"Show changes to pages linked to the given page instead\";'),('en','messages:upload','s:11:\"Upload file\";'),('en','messages:uploadbtn','s:11:\"Upload file\";'),('en','messages:reuploaddesc','s:43:\"Cancel upload and return to the upload form\";'),('en','messages:upload-tryagain','s:32:\"Submit modified file description\";'),('en','messages:uploadnologin','s:13:\"Not logged in\";'),('en','messages:uploadnologintext','s:60:\"You must be [[Special:UserLogin|logged in]] to upload files.\";'),('en','messages:upload_directory_missing','s:79:\"The upload directory ($1) is missing and could not be created by the webserver.\";'),('en','messages:upload_directory_read_only','s:59:\"The upload directory ($1) is not writable by the webserver.\";'),('en','messages:uploaderror','s:12:\"Upload error\";'),('en','messages:upload-summary','s:0:\"\";'),('en','messages:upload-recreate-warning','s:137:\"\'\'\'Warning: A file by that name has been deleted or moved.\'\'\'\n\nThe deletion and move log for this page are provided here for convenience:\";'),('en','messages:uploadtext','s:787:\"Use the form below to upload files.\nTo view or search previously uploaded files go to the [[Special:FileList|list of uploaded files]], (re)uploads are also logged in the [[Special:Log/upload|upload log]], deletions in the [[Special:Log/delete|deletion log]].\n\nTo include a file in a page, use a link in one of the following forms:\n* \'\'\'<code><nowiki>[[</nowiki>{{ns:file}}<nowiki>:File.jpg]]</nowiki></code>\'\'\' to use the full version of the file\n* \'\'\'<code><nowiki>[[</nowiki>{{ns:file}}<nowiki>:File.png|200px|thumb|left|alt text]]</nowiki></code>\'\'\' to use a 200 pixel wide rendition in a box in the left margin with \'alt text\' as description\n* \'\'\'<code><nowiki>[[</nowiki>{{ns:media}}<nowiki>:File.ogg]]</nowiki></code>\'\'\' for directly linking to the file without displaying the file\";'),('en','messages:upload-permitted','s:25:\"Permitted file types: $1.\";'),('en','messages:upload-preferred','s:25:\"Preferred file types: $1.\";'),('en','messages:upload-prohibited','s:26:\"Prohibited file types: $1.\";'),('en','messages:uploadfooter','s:1:\"-\";'),('en','messages:uploadlog','s:10:\"upload log\";'),('en','messages:uploadlogpage','s:10:\"Upload log\";'),('en','messages:uploadlogpagetext','s:126:\"Below is a list of the most recent file uploads.\nSee the [[Special:NewFiles|gallery of new files]] for a more visual overview.\";'),('en','messages:filename','s:8:\"Filename\";'),('en','messages:filedesc','s:7:\"Summary\";'),('en','messages:fileuploadsummary','s:8:\"Summary:\";'),('en','messages:filereuploadsummary','s:13:\"File changes:\";'),('en','messages:filestatus','s:17:\"Copyright status:\";'),('en','messages:filesource','s:7:\"Source:\";'),('en','messages:uploadedfiles','s:14:\"Uploaded files\";'),('en','messages:ignorewarning','s:35:\"Ignore warning and save file anyway\";'),('en','messages:ignorewarnings','s:19:\"Ignore any warnings\";'),('en','messages:minlength1','s:38:\"Filenames must be at least one letter.\";'),('en','messages:illegalfilename','s:125:\"The filename \"$1\" contains characters that are not allowed in page titles.\nPlease rename the file and try uploading it again.\";'),('en','messages:filename-toolong','s:43:\"Filenames may not be longer than 240 bytes.\";'),('en','messages:badfilename','s:34:\"Filename has been changed to \"$1\".\";'),('en','messages:filetype-mime-mismatch','s:76:\"File extension \".$1\" does not match the detected MIME type of the file ($2).\";'),('en','messages:filetype-badmime','s:59:\"Files of the MIME type \"$1\" are not allowed to be uploaded.\";'),('en','messages:filetype-bad-ie-mime','s:133:\"Cannot upload this file because Internet Explorer would detect it as \"$1\", which is a disallowed and potentially dangerous file type.\";'),('en','messages:filetype-unwanted-type','s:93:\"\'\'\'\".$1\"\'\'\' is an unwanted file type.\nPreferred {{PLURAL:$3|file type is|file types are}} $2.\";'),('en','messages:filetype-banned-type','s:140:\"\'\'\'\".$1\"\'\'\' {{PLURAL:$4|is not a permitted file type|are not permitted file types}}.\nPermitted {{PLURAL:$3|file type is|file types are}} $2.\";'),('en','messages:filetype-missing','s:40:\"The file has no extension (like \".jpg\").\";'),('en','messages:empty-file','s:33:\"The file you submitted was empty.\";'),('en','messages:file-too-large','s:37:\"The file you submitted was too large.\";'),('en','messages:filename-tooshort','s:26:\"The filename is too short.\";'),('en','messages:filetype-banned','s:28:\"This type of file is banned.\";'),('en','messages:verification-error','s:41:\"This file did not pass file verification.\";'),('en','messages:hookaborted','s:63:\"The modification you tried to make was aborted by an extension.\";'),('en','messages:illegal-filename','s:28:\"The filename is not allowed.\";'),('en','messages:overwrite','s:44:\"Overwriting an existing file is not allowed.\";'),('en','messages:unknown-error','s:26:\"An unknown error occurred.\";'),('en','messages:tmp-create-error','s:32:\"Could not create temporary file.\";'),('en','messages:tmp-write-error','s:29:\"Error writing temporary file.\";'),('en','messages:large-file','s:68:\"It is recommended that files are no larger than $1;\nthis file is $2.\";'),('en','messages:largefileserver','s:59:\"This file is bigger than the server is configured to allow.\";'),('en','messages:emptyfile','s:143:\"The file you uploaded seems to be empty.\nThis might be due to a typo in the filename.\nPlease check whether you really want to upload this file.\";'),('en','messages:windows-nonascii-filename','s:61:\"This wiki does not support filenames with special characters.\";'),('en','messages:fileexists','s:134:\"A file with this name exists already, please check <strong>[[:$1]]</strong> if you are not sure if you want to change it.\n[[$1|thumb]]\";'),('en','messages:filepageexists','s:279:\"The description page for this file has already been created at <strong>[[:$1]]</strong>, but no file with this name currently exists.\nThe summary you enter will not appear on the description page.\nTo make your summary appear there, you will need to manually edit it.\n[[$1|thumb]]\";'),('en','messages:fileexists-extension','s:188:\"A file with a similar name exists: [[$2|thumb]]\n* Name of the uploading file: <strong>[[:$1]]</strong>\n* Name of the existing file: <strong>[[:$2]]</strong>\nPlease choose a different name.\";'),('en','messages:fileexists-thumbnail-yes','s:228:\"The file seems to be an image of reduced size \'\'(thumbnail)\'\'.\n[[$1|thumb]]\nPlease check the file <strong>[[:$1]]</strong>.\nIf the checked file is the same image of original size it is not necessary to upload an extra thumbnail.\";'),('en','messages:file-thumbnail-no','s:199:\"The filename begins with <strong>$1</strong>.\nIt seems to be an image of reduced size \'\'(thumbnail)\'\'.\nIf you have this image in full resolution upload this one, otherwise change the filename please.\";'),('en','messages:fileexists-forbidden','s:166:\"A file with this name already exists, and cannot be overwritten.\nIf you still want to upload your file, please go back and use a new name.\n[[File:$1|thumb|center|$1]]\";'),('en','messages:fileexists-shared-forbidden','s:169:\"A file with this name exists already in the shared file repository.\nIf you still want to upload your file, please go back and use a new name.\n[[File:$1|thumb|center|$1]]\";'),('en','messages:file-exists-duplicate','s:67:\"This file is a duplicate of the following {{PLURAL:$1|file|files}}:\";'),('en','messages:file-deleted-duplicate','s:149:\"A file identical to this file ([[:$1]]) has previously been deleted.\nYou should check that file\'s deletion history before proceeding to re-upload it.\";'),('en','messages:uploadwarning','s:14:\"Upload warning\";'),('en','messages:uploadwarning-text','s:55:\"Please modify the file description below and try again.\";'),('en','messages:savefile','s:9:\"Save file\";'),('en','messages:uploadedimage','s:17:\"uploaded \"[[$1]]\"\";'),('en','messages:overwroteimage','s:34:\"uploaded a new version of \"[[$1]]\"\";'),('en','messages:uploaddisabled','s:17:\"Uploads disabled.\";'),('en','messages:copyuploaddisabled','s:23:\"Upload by URL disabled.\";'),('en','messages:uploadfromurl-queued','s:28:\"Your upload has been queued.\";'),('en','messages:uploaddisabledtext','s:26:\"File uploads are disabled.\";'),('en','messages:php-uploaddisabledtext','s:72:\"File uploads are disabled in PHP.\nPlease check the file_uploads setting.\";'),('en','messages:uploadscripted','s:92:\"This file contains HTML or script code that may be erroneously interpreted by a web browser.\";'),('en','messages:uploadvirus','s:38:\"The file contains a virus!\nDetails: $1\";'),('en','messages:uploadjava','s:155:\"The file is a ZIP file which contains a Java .class file.\nUploading Java files is not allowed, because they can cause security restrictions to be bypassed.\";'),('en','messages:upload-source','s:11:\"Source file\";'),('en','messages:sourcefilename','s:16:\"Source filename:\";'),('en','messages:sourceurl','s:11:\"Source URL:\";'),('en','messages:destfilename','s:21:\"Destination filename:\";'),('en','messages:upload-maxfilesize','s:21:\"Maximum file size: $1\";'),('en','messages:upload-description','s:16:\"File description\";'),('en','messages:upload-options','s:14:\"Upload options\";'),('en','messages:watchthisupload','s:15:\"Watch this file\";'),('en','messages:filewasdeleted','s:136:\"A file of this name has been previously uploaded and subsequently deleted.\nYou should check the $1 before proceeding to upload it again.\";'),('en','messages:filename-bad-prefix','s:200:\"The name of the file you are uploading begins with \'\'\'\"$1\"\'\'\', which is a non-descriptive name typically assigned automatically by digital cameras.\nPlease choose a more descriptive name for your file.\";'),('en','messages:filename-prefix-blacklist','s:431:\" #<!-- leave this line exactly as it is --> <pre>\n# Syntax is as follows:\n#   * Everything from a \"#\" character to the end of the line is a comment\n#   * Every non-blank line is a prefix for typical filenames assigned automatically by digital cameras\nCIMG # Casio\nDSC_ # Nikon\nDSCF # Fuji\nDSCN # Nikon\nDUW # some mobile phones\nIMG # generic\nJD # Jenoptik\nMGP # Pentax\nPICT # misc.\n #</pre> <!-- leave this line exactly as it is -->\";'),('en','messages:upload-success-subj','s:17:\"Successful upload\";'),('en','messages:upload-success-msg','s:79:\"Your upload from [$2] was successful. It is available here: [[:{{ns:file}}:$1]]\";'),('en','messages:upload-failure-subj','s:14:\"Upload problem\";'),('en','messages:upload-failure-msg','s:51:\"There was a problem with your upload from [$2]:\n\n$1\";'),('en','messages:upload-warning-subj','s:14:\"Upload warning\";'),('en','messages:upload-warning-msg','s:134:\"There was a problem with your upload from [$2]. You may return to the [[Special:Upload/stash/$1|upload form]] to correct this problem.\";'),('en','messages:upload-proto-error','s:18:\"Incorrect protocol\";'),('en','messages:upload-proto-error-text','s:87:\"Remote upload requires URLs beginning with <code>http://</code> or <code>ftp://</code>.\";'),('en','messages:upload-file-error','s:14:\"Internal error\";'),('en','messages:upload-file-error-text','s:145:\"An internal error occurred when attempting to create a temporary file on the server.\nPlease contact an [[Special:ListUsers/sysop|administrator]].\";'),('en','messages:upload-misc-error','s:20:\"Unknown upload error\";'),('en','messages:upload-misc-error-text','s:189:\"An unknown error occurred during the upload.\nPlease verify that the URL is valid and accessible and try again.\nIf the problem persists, contact an [[Special:ListUsers/sysop|administrator]].\";'),('en','messages:upload-too-many-redirects','s:36:\"The URL contained too many redirects\";'),('en','messages:upload-unknown-size','s:12:\"Unknown size\";'),('en','messages:upload-http-error','s:26:\"An HTTP error occurred: $1\";'),('en','messages:backend-fail-stream','s:27:\"Could not stream file \"$1\".\";'),('en','messages:backend-fail-backup','s:27:\"Could not backup file \"$1\".\";'),('en','messages:backend-fail-notexists','s:27:\"The file $1 does not exist.\";'),('en','messages:backend-fail-hashes','s:41:\"Could not get file hashes for comparison.\";'),('en','messages:backend-fail-notsame','s:44:\"A non-identical file already exists at \"$1\".\";'),('en','messages:backend-fail-invalidpath','s:33:\"\"$1\" is not a valid storage path.\";'),('en','messages:backend-fail-delete','s:27:\"Could not delete file \"$1\".\";'),('en','messages:backend-fail-alreadyexists','s:29:\"The file \"$1\" already exists.\";'),('en','messages:backend-fail-store','s:34:\"Could not store file \"$1\" at \"$2\".\";'),('en','messages:backend-fail-copy','s:33:\"Could not copy file \"$1\" to \"$2\".\";'),('en','messages:backend-fail-move','s:33:\"Could not move file \"$1\" to \"$2\".\";'),('en','messages:backend-fail-opentemp','s:30:\"Could not open temporary file.\";'),('en','messages:backend-fail-writetemp','s:34:\"Could not write to temporary file.\";'),('en','messages:backend-fail-closetemp','s:31:\"Could not close temporary file.\";'),('en','messages:backend-fail-read','s:25:\"Could not read file \"$1\".\";'),('en','messages:backend-fail-create','s:26:\"Could not write file \"$1\".\";'),('en','messages:backend-fail-readonly','s:78:\"The storage backend \"$1\" is currently read-only. The reason given is: \"\'\'$2\'\'\"\";'),('en','messages:backend-fail-synced','s:78:\"The file \"$1\" is in an inconsistent state within the internal storage backends\";'),('en','messages:backend-fail-connect','s:42:\"Could not connect to storage backend \"$1\".\";'),('en','messages:backend-fail-internal','s:50:\"An unknown error occurred in storage backend \"$1\".\";'),('en','messages:backend-fail-contenttype','s:66:\"Could not determine the content type of the file to store at \"$1\".\";'),('en','messages:backend-fail-batchsize','s:136:\"The storage backend was given a batch of $1 file {{PLURAL:$1|operation|operations}}; the limit is $2 {{PLURAL:$2|operation|operations}}.\";'),('en','messages:lockmanager-notlocked','s:40:\"Could not unlock \"$1\"; it is not locked.\";'),('en','messages:lockmanager-fail-closelock','s:35:\"Could not close lock file for \"$1\".\";'),('en','messages:lockmanager-fail-deletelock','s:36:\"Could not delete lock file for \"$1\".\";'),('en','messages:lockmanager-fail-acquirelock','s:32:\"Could not acquire lock for \"$1\".\";'),('en','messages:lockmanager-fail-openlock','s:34:\"Could not open lock file for \"$1\".\";'),('en','messages:lockmanager-fail-releaselock','s:32:\"Could not release lock for \"$1\".\";'),('en','messages:lockmanager-fail-db-bucket','s:53:\"Could not contact enough lock databases in bucket $1.\";'),('en','messages:lockmanager-fail-db-release','s:39:\"Could not release locks on database $1.\";'),('en','messages:lockmanager-fail-svr-release','s:37:\"Could not release locks on server $1.\";'),('en','messages:zip-file-open-error','s:62:\"An error was encountered when opening the file for ZIP checks.\";'),('en','messages:zip-wrong-format','s:38:\"The specified file was not a ZIP file.\";'),('en','messages:zip-bad','s:99:\"The file is a corrupt or otherwise unreadable ZIP file.\nIt cannot be properly checked for security.\";'),('en','messages:zip-unsupported','s:118:\"The file is a ZIP file which uses ZIP features not supported by MediaWiki.\nIt cannot be properly checked for security.\";'),('en','messages:uploadstash','s:12:\"Upload stash\";'),('en','messages:uploadstash-summary','s:195:\"This page provides access to files which are uploaded (or in the process of uploading) but are not yet published to the wiki. These files are not visible to anyone but the user who uploaded them.\";'),('en','messages:uploadstash-clear','s:19:\"Clear stashed files\";'),('en','messages:uploadstash-nofiles','s:26:\"You have no stashed files.\";'),('en','messages:uploadstash-badtoken','s:104:\"Performing of that action was unsuccessful, perhaps because your editing credentials expired. Try again.\";'),('en','messages:uploadstash-errclear','s:36:\"Clearing the files was unsuccessful.\";'),('en','messages:uploadstash-refresh','s:25:\"Refresh the list of files\";'),('en','messages:invalid-chunk-offset','s:20:\"Invalid chunk offset\";'),('en','messages:img-auth-accessdenied','s:13:\"Access denied\";'),('en','messages:img-auth-nopathinfo','s:182:\"Missing PATH_INFO.\nYour server is not set up to pass this information.\nIt may be CGI-based and cannot support img_auth.\nSee https://www.mediawiki.org/wiki/Manual:Image_Authorization.\";'),('en','messages:img-auth-notindir','s:57:\"Requested path is not in the configured upload directory.\";'),('en','messages:img-auth-badtitle','s:44:\"Unable to construct a valid title from \"$1\".\";'),('en','messages:img-auth-nologinnWL','s:55:\"You are not logged in and \"$1\" is not in the whitelist.\";'),('en','messages:img-auth-nofile','s:25:\"File \"$1\" does not exist.\";'),('en','messages:img-auth-isdir','s:71:\"You are trying to access a directory \"$1\".\nOnly file access is allowed.\";'),('en','messages:img-auth-streaming','s:15:\"Streaming \"$1\".\";'),('en','messages:img-auth-public','s:158:\"The function of img_auth.php is to output files from a private wiki.\nThis wiki is configured as a public wiki.\nFor optimal security, img_auth.php is disabled.\";'),('en','messages:img-auth-noread','s:39:\"User does not have access to read \"$1\".\";'),('en','messages:img-auth-bad-query-string','s:36:\"The URL has an invalid query string.\";'),('en','messages:http-invalid-url','s:15:\"Invalid URL: $1\";'),('en','messages:http-invalid-scheme','s:44:\"URLs with the \"$1\" scheme are not supported.\";'),('en','messages:http-request-error','s:41:\"HTTP request failed due to unknown error.\";'),('en','messages:http-read-error','s:16:\"HTTP read error.\";'),('en','messages:http-timed-out','s:23:\"HTTP request timed out.\";'),('en','messages:http-curl-error','s:22:\"Error fetching URL: $1\";'),('en','messages:http-host-unreachable','s:20:\"Could not reach URL.\";'),('en','messages:http-bad-status','s:50:\"There was a problem during the HTTP request: $1 $2\";'),('en','messages:upload-curl-error6','s:19:\"Could not reach URL\";'),('en','messages:upload-curl-error6-text','s:102:\"The URL provided could not be reached.\nPlease double-check that the URL is correct and the site is up.\";'),('en','messages:upload-curl-error28','s:14:\"Upload timeout\";'),('en','messages:upload-curl-error28-text','s:138:\"The site took too long to respond.\nPlease check the site is up, wait a short while and try again.\nYou may want to try at a less busy time.\";'),('en','messages:license','s:10:\"Licensing:\";'),('en','messages:license-header','s:9:\"Licensing\";'),('en','messages:nolicense','s:13:\"None selected\";'),('en','messages:licenses','s:1:\"-\";'),('en','messages:license-nopreview','s:23:\"(Preview not available)\";'),('en','messages:upload_source_url','s:35:\" (a valid, publicly accessible URL)\";'),('en','messages:upload_source_file','s:26:\" (a file on your computer)\";'),('en','messages:listfiles-summary','s:149:\"This special page shows all uploaded files.\nWhen filtered by user, only files where that user uploaded the most recent version of the file are shown.\";'),('en','messages:listfiles_search_for','s:22:\"Search for media name:\";'),('en','messages:imgfile','s:4:\"file\";'),('en','messages:listfiles','s:9:\"File list\";'),('en','messages:listfiles_thumb','s:9:\"Thumbnail\";'),('en','messages:listfiles_date','s:4:\"Date\";'),('en','messages:listfiles_name','s:4:\"Name\";'),('en','messages:listfiles_user','s:4:\"User\";'),('en','messages:listfiles_size','s:4:\"Size\";'),('en','messages:listfiles_description','s:11:\"Description\";'),('en','messages:listfiles_count','s:8:\"Versions\";'),('en','messages:file-anchor-link','s:4:\"File\";'),('en','messages:filehist','s:12:\"File history\";'),('en','messages:filehist-help','s:66:\"Click on a date/time to view the file as it appeared at that time.\";'),('en','messages:filehist-deleteall','s:10:\"delete all\";'),('en','messages:filehist-deleteone','s:6:\"delete\";'),('en','messages:filehist-revert','s:6:\"revert\";'),('en','messages:filehist-current','s:7:\"current\";'),('en','messages:filehist-datetime','s:9:\"Date/Time\";'),('en','messages:filehist-thumb','s:9:\"Thumbnail\";'),('en','messages:filehist-thumbtext','s:30:\"Thumbnail for version as of $1\";'),('en','messages:filehist-nothumb','s:12:\"No thumbnail\";'),('en','messages:filehist-user','s:4:\"User\";'),('en','messages:filehist-dimensions','s:10:\"Dimensions\";'),('en','messages:filehist-filesize','s:9:\"File size\";'),('en','messages:filehist-comment','s:7:\"Comment\";'),('en','messages:filehist-missing','s:12:\"File missing\";'),('en','messages:imagelinks','s:10:\"File usage\";'),('en','messages:linkstoimage','s:66:\"The following {{PLURAL:$1|page links|$1 pages link}} to this file:\";'),('en','messages:linkstoimage-more','s:215:\"More than $1 {{PLURAL:$1|page links|pages link}} to this file.\nThe following list shows the {{PLURAL:$1|first page link|first $1 page links}} to this file only.\nA [[Special:WhatLinksHere/$2|full list]] is available.\";'),('en','messages:nolinkstoimage','s:42:\"There are no pages that link to this file.\";'),('en','messages:morelinkstoimage','s:58:\"View [[Special:WhatLinksHere/$1|more links]] to this file.\";'),('en','messages:linkstoimage-redirect','s:21:\"$1 (file redirect) $2\";'),('en','messages:duplicatesoffile','s:135:\"The following {{PLURAL:$1|file is a duplicate|$1 files are duplicates}} of this file ([[Special:FileDuplicateSearch/$2|more details]]):\";'),('en','messages:sharedupload','s:55:\"This file is from $1 and may be used by other projects.\";'),('en','messages:sharedupload-desc-there','s:122:\"This file is from $1 and may be used by other projects.\nPlease see the [$2 file description page] for further information.\";'),('en','messages:sharedupload-desc-here','s:127:\"This file is from $1 and may be used by other projects.\nThe description on its [$2 file description page] there is shown below.\";'),('en','messages:shareddescriptionfollows','s:1:\"-\";'),('en','messages:filepage-nofile','s:28:\"No file by this name exists.\";'),('en','messages:filepage-nofile-link','s:56:\"No file by this name exists, but you can [$1 upload it].\";'),('en','messages:uploadnewversion-linktext','s:33:\"Upload a new version of this file\";'),('en','messages:shared-repo-from','s:7:\"from $1\";'),('en','messages:shared-repo','s:19:\"a shared repository\";'),('en','messages:shared-repo-name-wikimediacommons','s:17:\"Wikimedia Commons\";'),('en','messages:filepage.css','s:101:\"/* CSS placed here is included on the file description page, also included on foreign client wikis */\";'),('en','messages:filerevert','s:9:\"Revert $1\";'),('en','messages:filerevert-legend','s:11:\"Revert file\";'),('en','messages:filerevert-intro','s:88:\"You are about to revert the file \'\'\'[[Media:$1|$1]]\'\'\' to the [$4 version as of $3, $2].\";'),('en','messages:filerevert-comment','s:7:\"Reason:\";'),('en','messages:filerevert-defaultcomment','s:32:\"Reverted to version as of $2, $1\";'),('en','messages:filerevert-submit','s:6:\"Revert\";'),('en','messages:filerevert-success','s:73:\"\'\'\'[[Media:$1|$1]]\'\'\' has been reverted to the [$4 version as of $3, $2].\";'),('en','messages:filerevert-badversion','s:76:\"There is no previous local version of this file with the provided timestamp.\";'),('en','messages:filedelete','s:9:\"Delete $1\";'),('en','messages:filedelete-legend','s:11:\"Delete file\";'),('en','messages:filedelete-intro','s:85:\"You are about to delete the file \'\'\'[[Media:$1|$1]]\'\'\' along with all of its history.\";'),('en','messages:filedelete-intro-old','s:72:\"You are deleting the version of \'\'\'[[Media:$1|$1]]\'\'\' as of [$4 $3, $2].\";'),('en','messages:filedelete-comment','s:7:\"Reason:\";'),('en','messages:filedelete-submit','s:6:\"Delete\";'),('en','messages:filedelete-success','s:26:\"\'\'\'$1\'\'\' has been deleted.\";'),('en','messages:filedelete-success-old','s:67:\"The version of \'\'\'[[Media:$1|$1]]\'\'\' as of $3, $2 has been deleted.\";'),('en','messages:filedelete-nofile','s:24:\"\'\'\'$1\'\'\' does not exist.\";'),('en','messages:filedelete-nofile-old','s:71:\"There is no archived version of \'\'\'$1\'\'\' with the specified attributes.\";'),('en','messages:filedelete-otherreason','s:24:\"Other/additional reason:\";'),('en','messages:filedelete-reason-otherlist','s:12:\"Other reason\";'),('en','messages:filedelete-reason-dropdown','s:64:\"*Common delete reasons\n** Copyright violation\n** Duplicated file\";'),('en','messages:filedelete-edit-reasonlist','s:19:\"Edit delete reasons\";'),('en','messages:filedelete-maintenance','s:74:\"Deletion and restoration of files temporarily disabled during maintenance.\";'),('en','messages:filedelete-maintenance-title','s:18:\"Cannot delete file\";'),('en','messages:mimesearch','s:11:\"MIME search\";'),('en','messages:mimesearch-summary','s:119:\"This page enables the filtering of files for their MIME type.\nInput: contenttype/subtype, e.g. <code>image/jpeg</code>.\";'),('en','messages:mimetype','s:10:\"MIME type:\";'),('en','messages:download','s:8:\"download\";'),('en','messages:unwatchedpages','s:15:\"Unwatched pages\";'),('en','messages:unwatchedpages-summary','s:0:\"\";'),('en','messages:listredirects','s:17:\"List of redirects\";'),('en','messages:listredirects-summary','s:0:\"\";'),('en','messages:unusedtemplates','s:16:\"Unused templates\";'),('en','messages:unusedtemplates-summary','s:0:\"\";'),('en','messages:unusedtemplatestext','s:171:\"This page lists all pages in the {{ns:template}} namespace which are not included in another page.\nRemember to check for other links to the templates before deleting them.\";'),('en','messages:unusedtemplateswlh','s:11:\"other links\";'),('en','messages:randompage','s:11:\"Random page\";'),('en','messages:randompage-nopages','s:75:\"There are no pages in the following {{PLURAL:$2|namespace|namespaces}}: $1.\";'),('en','messages:randompage-url','s:14:\"Special:Random\";'),('en','messages:randomredirect','s:15:\"Random redirect\";'),('en','messages:randomredirect-nopages','s:45:\"There are no redirects in the namespace \"$1\".\";'),('en','messages:statistics','s:10:\"Statistics\";'),('en','messages:statistics-summary','s:0:\"\";'),('en','messages:statistics-header-pages','s:15:\"Page statistics\";'),('en','messages:statistics-header-edits','s:15:\"Edit statistics\";'),('en','messages:statistics-header-views','s:15:\"View statistics\";'),('en','messages:statistics-header-users','s:15:\"User statistics\";'),('en','messages:statistics-header-hooks','s:16:\"Other statistics\";'),('en','messages:statistics-articles','s:13:\"Content pages\";'),('en','messages:statistics-pages','s:5:\"Pages\";'),('en','messages:statistics-pages-desc','s:60:\"All pages in the wiki, including talk pages, redirects, etc.\";'),('en','messages:statistics-files','s:14:\"Uploaded files\";'),('en','messages:statistics-edits','s:40:\"Page edits since {{SITENAME}} was set up\";'),('en','messages:statistics-edits-average','s:22:\"Average edits per page\";'),('en','messages:statistics-views-total','s:11:\"Views total\";'),('en','messages:statistics-views-total-desc','s:62:\"Views to non-existing pages and special pages are not included\";'),('en','messages:statistics-views-peredit','s:14:\"Views per edit\";'),('en','messages:statistics-users','s:38:\"Registered [[Special:ListUsers|users]]\";'),('en','messages:statistics-users-active','s:12:\"Active users\";'),('en','messages:statistics-users-active-desc','s:72:\"Users who have performed an action in the last {{PLURAL:$1|day|$1 days}}\";'),('en','messages:statistics-mostpopular','s:17:\"Most viewed pages\";'),('en','messages:statistics-footer','s:0:\"\";'),('en','messages:disambiguations','s:37:\"Pages linking to disambiguation pages\";'),('en','messages:disambiguations-summary','s:0:\"\";'),('en','messages:disambiguationspage','s:17:\"Template:disambig\";'),('en','messages:disambiguations-text','s:260:\"The following pages contain at least one link to a \'\'\'disambiguation page\'\'\'.\nThey may have to link to a more appropriate page instead.<br />\nA page is treated as disambiguation page if it uses a template which is linked from [[MediaWiki:Disambiguationspage]].\";'),('en','messages:doubleredirects','s:16:\"Double redirects\";'),('en','messages:doubleredirects-summary','s:0:\"\";'),('en','messages:doubleredirectstext','s:297:\"This page lists pages which redirect to other redirect pages.\nEach row contains links to the first and second redirect, as well as the target of the second redirect, which is usually the \"real\" target page, which the first redirect should point to.\n<del>Crossed out</del> entries have been solved.\";'),('en','messages:double-redirect-fixed-move','s:50:\"[[$1]] has been moved.\nIt now redirects to [[$2]].\";'),('en','messages:double-redirect-fixed-maintenance','s:45:\"Fixing double redirect from [[$1]] to [[$2]].\";'),('en','messages:double-redirect-fixer','s:14:\"Redirect fixer\";'),('en','messages:brokenredirects','s:16:\"Broken redirects\";'),('en','messages:brokenredirects-summary','s:0:\"\";'),('en','messages:brokenredirectstext','s:51:\"The following redirects link to non-existent pages:\";'),('en','messages:brokenredirects-edit','s:4:\"edit\";'),('en','messages:brokenredirects-delete','s:6:\"delete\";'),('en','messages:withoutinterwiki','s:28:\"Pages without language links\";'),('en','messages:withoutinterwiki-summary','s:59:\"The following pages do not link to other language versions.\";'),('en','messages:withoutinterwiki-legend','s:6:\"Prefix\";'),('en','messages:withoutinterwiki-submit','s:4:\"Show\";'),('en','messages:fewestrevisions','s:31:\"Pages with the fewest revisions\";'),('en','messages:fewestrevisions-summary','s:0:\"\";'),('en','messages:nbytes','s:27:\"$1 {{PLURAL:$1|byte|bytes}}\";'),('en','messages:ncategories','s:36:\"$1 {{PLURAL:$1|category|categories}}\";'),('en','messages:nlinks','s:27:\"$1 {{PLURAL:$1|link|links}}\";'),('en','messages:nmembers','s:31:\"$1 {{PLURAL:$1|member|members}}\";'),('en','messages:nrevisions','s:35:\"$1 {{PLURAL:$1|revision|revisions}}\";'),('en','messages:nviews','s:27:\"$1 {{PLURAL:$1|view|views}}\";'),('en','messages:nimagelinks','s:35:\"Used on $1 {{PLURAL:$1|page|pages}}\";'),('en','messages:ntransclusions','s:35:\"used on $1 {{PLURAL:$1|page|pages}}\";'),('en','messages:specialpage-empty','s:37:\"There are no results for this report.\";'),('en','messages:lonelypages','s:14:\"Orphaned pages\";'),('en','messages:lonelypages-summary','s:0:\"\";'),('en','messages:lonelypagestext','s:88:\"The following pages are not linked from or transcluded into other pages in {{SITENAME}}.\";'),('en','messages:uncategorizedpages','s:19:\"Uncategorized pages\";'),('en','messages:uncategorizedpages-summary','s:0:\"\";'),('en','messages:uncategorizedcategories','s:24:\"Uncategorized categories\";'),('en','messages:uncategorizedcategories-summary','s:0:\"\";'),('en','messages:uncategorizedimages','s:19:\"Uncategorized files\";'),('en','messages:uncategorizedimages-summary','s:0:\"\";'),('en','messages:uncategorizedtemplates','s:23:\"Uncategorized templates\";'),('en','messages:uncategorizedtemplates-summary','s:0:\"\";'),('en','messages:unusedcategories','s:17:\"Unused categories\";'),('en','messages:unusedimages','s:12:\"Unused files\";'),('en','messages:popularpages','s:13:\"Popular pages\";'),('en','messages:popularpages-summary','s:0:\"\";'),('en','messages:wantedcategories','s:17:\"Wanted categories\";'),('en','messages:wantedcategories-summary','s:0:\"\";'),('en','messages:wantedpages','s:12:\"Wanted pages\";'),('en','messages:wantedpages-summary','s:0:\"\";'),('en','messages:wantedpages-badtitle','s:31:\"Invalid title in result set: $1\";'),('en','messages:wantedfiles','s:12:\"Wanted files\";'),('en','messages:wantedfiles-summary','s:0:\"\";'),('en','messages:wantedfiletext-cat','s:244:\"The following files are used but do not exist. Files from foreign repositories may be listed despite existing. Any such false positives will be <del>struck out</del>. Additionally, pages that embed files that do not exist are listed in [[:$1]].\";'),('en','messages:wantedfiletext-nocat','s:166:\"The following files are used but do not exist. Files from foreign repositories may be listed despite existing. Any such false positives will be <del>struck out</del>.\";'),('en','messages:wantedtemplates','s:16:\"Wanted templates\";'),('en','messages:wantedtemplates-summary','s:0:\"\";'),('en','messages:mostlinked','s:20:\"Most linked-to pages\";'),('en','messages:mostlinked-summary','s:0:\"\";'),('en','messages:mostlinkedcategories','s:25:\"Most linked-to categories\";'),('en','messages:mostlinkedcategories-summary','s:0:\"\";'),('en','messages:mostlinkedtemplates','s:24:\"Most linked-to templates\";'),('en','messages:mostlinkedtemplates-summary','s:0:\"\";'),('en','messages:mostcategories','s:30:\"Pages with the most categories\";'),('en','messages:mostcategories-summary','s:0:\"\";'),('en','messages:mostimages','s:20:\"Most linked-to files\";'),('en','messages:mostimages-summary','s:0:\"\";'),('en','messages:mostrevisions','s:29:\"Pages with the most revisions\";'),('en','messages:mostrevisions-summary','s:0:\"\";'),('en','messages:prefixindex','s:21:\"All pages with prefix\";'),('en','messages:prefixindex-namespace','s:36:\"All pages with prefix ($1 namespace)\";'),('en','messages:prefixindex-summary','s:0:\"\";'),('en','messages:shortpages','s:11:\"Short pages\";'),('en','messages:shortpages-summary','s:0:\"\";'),('en','messages:longpages','s:10:\"Long pages\";'),('en','messages:longpages-summary','s:0:\"\";'),('en','messages:deadendpages','s:14:\"Dead-end pages\";'),('en','messages:deadendpages-summary','s:0:\"\";'),('en','messages:deadendpagestext','s:63:\"The following pages do not link to other pages in {{SITENAME}}.\";'),('en','messages:protectedpages','s:15:\"Protected pages\";'),('en','messages:protectedpages-indef','s:27:\"Indefinite protections only\";'),('en','messages:protectedpages-summary','s:0:\"\";'),('en','messages:protectedpages-cascade','s:26:\"Cascading protections only\";'),('en','messages:protectedpagestext','s:56:\"The following pages are protected from moving or editing\";'),('en','messages:protectedpagesempty','s:55:\"No pages are currently protected with these parameters.\";'),('en','messages:protectedtitles','s:16:\"Protected titles\";'),('en','messages:protectedtitles-summary','s:0:\"\";'),('en','messages:protectedtitlestext','s:48:\"The following titles are protected from creation\";'),('en','messages:protectedtitlesempty','s:56:\"No titles are currently protected with these parameters.\";'),('en','messages:listusers','s:9:\"User list\";'),('en','messages:listusers-summary','s:0:\"\";'),('en','messages:listusers-editsonly','s:26:\"Show only users with edits\";'),('en','messages:listusers-creationsort','s:21:\"Sort by creation date\";'),('en','messages:usereditcount','s:27:\"$1 {{PLURAL:$1|edit|edits}}\";'),('en','messages:usercreated','s:33:\"{{GENDER:$3|Created}} on $1 at $2\";'),('en','messages:newpages','s:9:\"New pages\";'),('en','messages:newpages-summary','s:0:\"\";'),('en','messages:newpages-username','s:9:\"Username:\";'),('en','messages:ancientpages','s:12:\"Oldest pages\";'),('en','messages:ancientpages-summary','s:0:\"\";'),('en','messages:move','s:4:\"Move\";'),('en','messages:movethispage','s:14:\"Move this page\";'),('en','messages:unusedimagestext','s:191:\"The following files exist but are not embedded in any page.\nPlease note that other web sites may link to a file with a direct URL, and so may still be listed here despite being in active use.\";'),('en','messages:unusedcategoriestext','s:89:\"The following category pages exist, although no other page or category makes use of them.\";'),('en','messages:notargettitle','s:9:\"No target\";'),('en','messages:notargettext','s:73:\"You have not specified a target page or user to perform this function on.\";'),('en','messages:nopagetitle','s:19:\"No such target page\";'),('en','messages:nopagetext','s:50:\"The target page you have specified does not exist.\";'),('en','messages:pager-newer-n','s:30:\"{{PLURAL:$1|newer 1|newer $1}}\";'),('en','messages:pager-older-n','s:30:\"{{PLURAL:$1|older 1|older $1}}\";'),('en','messages:suppress','s:9:\"Oversight\";'),('en','messages:querypage-disabled','s:54:\"This special page is disabled for performance reasons.\";'),('en','messages:booksources','s:12:\"Book sources\";'),('en','messages:booksources-summary','s:0:\"\";'),('en','messages:booksources-search-legend','s:23:\"Search for book sources\";'),('en','messages:booksources-isbn','s:5:\"ISBN:\";'),('en','messages:booksources-go','s:2:\"Go\";'),('en','messages:booksources-text','s:140:\"Below is a list of links to other sites that sell new and used books, and may also have further information about books you are looking for:\";'),('en','messages:booksources-invalid-isbn','s:94:\"The given ISBN does not appear to be valid; check for errors copying from the original source.\";'),('en','messages:rfcurl','s:27:\"//tools.ietf.org/html/rfc$1\";'),('en','messages:pubmedurl','s:46:\"//www.ncbi.nlm.nih.gov/pubmed/$1?dopt=Abstract\";'),('en','messages:specialloguserlabel','s:10:\"Performer:\";'),('en','messages:speciallogtitlelabel','s:23:\"Target (title or user):\";'),('en','messages:log','s:4:\"Logs\";'),('en','messages:all-logs-page','s:15:\"All public logs\";'),('en','messages:alllogstext','s:184:\"Combined display of all available logs of {{SITENAME}}.\nYou can narrow down the view by selecting a log type, the username (case-sensitive), or the affected page (also case-sensitive).\";'),('en','messages:logempty','s:25:\"No matching items in log.\";'),('en','messages:log-title-wildcard','s:37:\"Search titles starting with this text\";'),('en','messages:allpages','s:9:\"All pages\";'),('en','messages:allpages-summary','s:0:\"\";'),('en','messages:alphaindexline','s:8:\"$1 to $2\";'),('en','messages:nextpage','s:14:\"Next page ($1)\";'),('en','messages:prevpage','s:18:\"Previous page ($1)\";'),('en','messages:allpagesfrom','s:26:\"Display pages starting at:\";'),('en','messages:allpagesto','s:24:\"Display pages ending at:\";'),('en','messages:allarticles','s:9:\"All pages\";'),('en','messages:allinnamespace','s:24:\"All pages ($1 namespace)\";'),('en','messages:allnotinnamespace','s:31:\"All pages (not in $1 namespace)\";'),('en','messages:allpagesprev','s:8:\"Previous\";'),('en','messages:allpagesnext','s:4:\"Next\";'),('en','messages:allpagessubmit','s:2:\"Go\";'),('en','messages:allpagesprefix','s:26:\"Display pages with prefix:\";'),('en','messages:allpagesbadtitle','s:149:\"The given page title was invalid or had an inter-language or inter-wiki prefix.\nIt may contain one or more characters which cannot be used in titles.\";'),('en','messages:allpages-bad-ns','s:42:\"{{SITENAME}} does not have namespace \"$1\".\";'),('en','messages:categories','s:10:\"Categories\";'),('en','messages:categories-summary','s:0:\"\";'),('en','messages:categoriespagetext','s:204:\"The following {{PLURAL:$1|category contains|categories contain}} pages or media.\n[[Special:UnusedCategories|Unused categories]] are not shown here.\nAlso see [[Special:WantedCategories|wanted categories]].\";'),('en','messages:categoriesfrom','s:31:\"Display categories starting at:\";'),('en','messages:special-categories-sort-count','s:13:\"sort by count\";'),('en','messages:special-categories-sort-abc','s:19:\"sort alphabetically\";'),('en','messages:deletedcontributions','s:26:\"Deleted user contributions\";'),('en','messages:deletedcontributions-title','s:26:\"Deleted user contributions\";'),('en','messages:sp-deletedcontributions-contribs','s:13:\"contributions\";'),('en','messages:linksearch','s:21:\"External links search\";'),('en','messages:linksearch-pat','s:15:\"Search pattern:\";'),('en','messages:linksearch-ns','s:10:\"Namespace:\";'),('en','messages:linksearch-ok','s:6:\"Search\";'),('en','messages:linksearch-text','s:189:\"Wildcards such as \"*.wikipedia.org\" may be used.\nNeeds at least a top-level domain, for example \"*.org\".<br />\nSupported protocols: <code>$1</code> (do not add any of these in your search).\";'),('en','messages:linksearch-line','s:20:\"$1 is linked from $2\";'),('en','messages:linksearch-error','s:55:\"Wildcards may appear only at the start of the hostname.\";'),('en','messages:listusersfrom','s:26:\"Display users starting at:\";'),('en','messages:listusers-submit','s:4:\"Show\";'),('en','messages:listusers-noresult','s:14:\"No user found.\";'),('en','messages:listusers-blocked','s:9:\"(blocked)\";'),('en','messages:activeusers','s:17:\"Active users list\";'),('en','messages:activeusers-summary','s:0:\"\";'),('en','messages:activeusers-intro','s:96:\"This is a list of users who had some kind of activity within the last $1 {{PLURAL:$1|day|days}}.\";'),('en','messages:activeusers-count','s:65:\"$1 {{PLURAL:$1|edit|edits}} in the last {{PLURAL:$3|day|$3 days}}\";'),('en','messages:activeusers-from','s:26:\"Display users starting at:\";'),('en','messages:activeusers-hidebots','s:9:\"Hide bots\";'),('en','messages:activeusers-hidesysops','s:19:\"Hide administrators\";'),('en','messages:activeusers-noresult','s:15:\"No users found.\";'),('en','messages:newuserlogpage','s:17:\"User creation log\";'),('en','messages:newuserlogpagetext','s:32:\"This is a log of user creations.\";'),('en','messages:listgrouprights','s:17:\"User group rights\";'),('en','messages:listgrouprights-summary','s:201:\"The following is a list of user groups defined on this wiki, with their associated access rights.\nThere may be [[{{MediaWiki:Listgrouprights-helppage}}|additional information]] about individual rights.\";'),('en','messages:listgrouprights-key','s:121:\"* <span class=\"listgrouprights-granted\">Granted right</span>\n* <span class=\"listgrouprights-revoked\">Revoked right</span>\";'),('en','messages:listgrouprights-group','s:5:\"Group\";'),('en','messages:listgrouprights-rights','s:6:\"Rights\";'),('en','messages:listgrouprights-helppage','s:17:\"Help:Group rights\";'),('en','messages:listgrouprights-members','s:17:\"(list of members)\";'),('en','messages:listgrouprights-right-display','s:65:\"<span class=\"listgrouprights-granted\">$1 <code>($2)</code></span>\";'),('en','messages:listgrouprights-right-revoked','s:65:\"<span class=\"listgrouprights-revoked\">$1 <code>($2)</code></span>\";'),('en','messages:listgrouprights-addgroup','s:34:\"Add {{PLURAL:$2|group|groups}}: $1\";'),('en','messages:listgrouprights-removegroup','s:37:\"Remove {{PLURAL:$2|group|groups}}: $1\";'),('en','messages:listgrouprights-addgroup-all','s:14:\"Add all groups\";'),('en','messages:listgrouprights-removegroup-all','s:17:\"Remove all groups\";'),('en','messages:listgrouprights-addgroup-self','s:49:\"Add {{PLURAL:$2|group|groups}} to own account: $1\";'),('en','messages:listgrouprights-removegroup-self','s:54:\"Remove {{PLURAL:$2|group|groups}} from own account: $1\";'),('en','messages:listgrouprights-addgroup-self-all','s:29:\"Add all groups to own account\";'),('en','messages:listgrouprights-removegroup-self-all','s:34:\"Remove all groups from own account\";'),('en','messages:mailnologin','s:15:\"No send address\";'),('en','messages:mailnologintext','s:150:\"You must be [[Special:UserLogin|logged in]] and have a valid e-mail address in your [[Special:Preferences|preferences]] to send e-mail to other users.\";'),('en','messages:emailuser','s:16:\"E-mail this user\";'),('en','messages:emailpage','s:11:\"E-mail user\";'),('en','messages:emailpagetext','s:251:\"You can use the form below to send an e-mail message to this user.\nThe e-mail address you entered in [[Special:Preferences|your user preferences]] will appear as the \"From\" address of the e-mail, so the recipient will be able to reply directly to you.\";'),('en','messages:usermailererror','s:27:\"Mail object returned error:\";'),('en','messages:defemailsubject','s:34:\"{{SITENAME}} e-mail from user \"$1\"\";'),('en','messages:usermaildisabled','s:20:\"User e-mail disabled\";'),('en','messages:usermaildisabledtext','s:50:\"You cannot send e-mail to other users on this wiki\";'),('en','messages:noemailtitle','s:17:\"No e-mail address\";'),('en','messages:noemailtext','s:51:\"This user has not specified a valid e-mail address.\";'),('en','messages:nowikiemailtitle','s:17:\"No e-mail allowed\";'),('en','messages:nowikiemailtext','s:60:\"This user has chosen not to receive e-mail from other users.\";'),('en','messages:emailnotarget','s:47:\"Non-existent or invalid username for recipient.\";'),('en','messages:emailtarget','s:27:\"Enter username of recipient\";'),('en','messages:emailusername','s:9:\"Username:\";'),('en','messages:emailusernamesubmit','s:6:\"Submit\";'),('en','messages:email-legend','s:43:\"Send an e-mail to another {{SITENAME}} user\";'),('en','messages:emailfrom','s:5:\"From:\";'),('en','messages:emailto','s:3:\"To:\";'),('en','messages:emailsubject','s:8:\"Subject:\";'),('en','messages:emailmessage','s:8:\"Message:\";'),('en','messages:emailsend','s:4:\"Send\";'),('en','messages:emailccme','s:31:\"E-mail me a copy of my message.\";'),('en','messages:emailccsubject','s:30:\"Copy of your message to $1: $2\";'),('en','messages:emailsent','s:11:\"E-mail sent\";'),('en','messages:emailsenttext','s:34:\"Your e-mail message has been sent.\";'),('en','messages:emailuserfooter','s:79:\"This e-mail was sent by $1 to $2 by the \"E-mail user\" function at {{SITENAME}}.\";'),('en','messages:usermessage-summary','s:23:\"Leaving system message.\";'),('en','messages:usermessage-editor','s:16:\"System messenger\";'),('en','messages:usermessage-template','s:21:\"MediaWiki:UserMessage\";'),('en','messages:watchlist','s:12:\"My watchlist\";'),('en','messages:mywatchlist','s:12:\"My watchlist\";'),('en','messages:watchlistfor2','s:9:\"For $1 $2\";'),('en','messages:nowatchlist','s:36:\"You have no items on your watchlist.\";'),('en','messages:watchlistanontext','s:50:\"Please $1 to view or edit items on your watchlist.\";'),('en','messages:watchnologin','s:13:\"Not logged in\";'),('en','messages:watchnologintext','s:69:\"You must be [[Special:UserLogin|logged in]] to modify your watchlist.\";'),('en','messages:addwatch','s:16:\"Add to watchlist\";'),('en','messages:addedwatchtext','s:278:\"The page \"[[:$1]]\" has been added to your [[Special:Watchlist|watchlist]].\nFuture changes to this page and its associated talk page will be listed there, and the page will appear \'\'\'bolded\'\'\' in the [[Special:RecentChanges|list of recent changes]] to make it easier to pick out.\";'),('en','messages:removewatch','s:21:\"Remove from watchlist\";'),('en','messages:removedwatchtext','s:78:\"The page \"[[:$1]]\" has been removed from [[Special:Watchlist|your watchlist]].\";'),('en','messages:watch','s:5:\"Watch\";'),('en','messages:watchthispage','s:15:\"Watch this page\";'),('en','messages:unwatch','s:7:\"Unwatch\";'),('en','messages:unwatchthispage','s:13:\"Stop watching\";'),('en','messages:notanarticle','s:18:\"Not a content page\";'),('en','messages:notvisiblerev','s:54:\"The last revision by a different user has been deleted\";'),('en','messages:watchnochange','s:68:\"None of your watched items were edited in the time period displayed.\";'),('en','messages:watchlist-details','s:74:\"{{PLURAL:$1|$1 page|$1 pages}} on your watchlist, not counting talk pages.\";'),('en','messages:wlheader-enotif','s:33:\"* E-mail notification is enabled.\";'),('en','messages:wlheader-showupdated','s:83:\"* Pages which have been changed since you last visited them are shown in \'\'\'bold\'\'\'\";'),('en','messages:watchmethod-recent','s:39:\"checking recent edits for watched pages\";'),('en','messages:watchmethod-list','s:39:\"checking watched pages for recent edits\";'),('en','messages:watchlistcontains','s:52:\"Your watchlist contains $1 {{PLURAL:$1|page|pages}}.\";'),('en','messages:iteminvalidname','s:39:\"Problem with item \'$1\', invalid name...\";'),('en','messages:wlnote','s:129:\"Below {{PLURAL:$1|is the last change|are the last \'\'\'$1\'\'\' changes}} in the last {{PLURAL:$2|hour|\'\'\'$2\'\'\' hours}}, as of $3, $4.\";'),('en','messages:wlshowlast','s:29:\"Show last $1 hours $2 days $3\";'),('en','messages:watchlist-options','s:17:\"Watchlist options\";'),('en','messages:watching','s:11:\"Watching...\";'),('en','messages:unwatching','s:13:\"Unwatching...\";'),('en','messages:watcherrortext','s:66:\"An error occurred while changing your watchlist settings for \"$1\".\";'),('en','messages:enotif_mailer','s:32:\"{{SITENAME}} notification mailer\";'),('en','messages:enotif_reset','s:22:\"Mark all pages visited\";'),('en','messages:enotif_newpagetext','s:19:\"This is a new page.\";'),('en','messages:enotif_impersonal_salutation','s:17:\"{{SITENAME}} user\";'),('en','messages:changed','s:7:\"changed\";'),('en','messages:created','s:7:\"created\";'),('en','messages:enotif_subject','s:70:\"{{SITENAME}} page $PAGETITLE has been $CHANGEDORCREATED by $PAGEEDITOR\";'),('en','messages:enotif_lastvisited','s:45:\"See $1 for all changes since your last visit.\";'),('en','messages:enotif_lastdiff','s:27:\"See $1 to view this change.\";'),('en','messages:enotif_anon_editor','s:17:\"anonymous user $1\";'),('en','messages:enotif_body','s:839:\"Dear $WATCHINGUSERNAME,\n\n\nThe {{SITENAME}} page $PAGETITLE has been $CHANGEDORCREATED on $PAGEEDITDATE by $PAGEEDITOR, see $PAGETITLE_URL for the current revision.\n\n$NEWPAGE\n\nEditor\'s summary: $PAGESUMMARY $PAGEMINOREDIT\n\nContact the editor:\nmail: $PAGEEDITOR_EMAIL\nwiki: $PAGEEDITOR_WIKI\n\nThere will be no other notifications in case of further changes unless you visit this page.\nYou could also reset the notification flags for all your watched pages on your watchlist.\n\n			 Your friendly {{SITENAME}} notification system\n\n--\nTo change your e-mail notification settings, visit\n{{canonicalurl:{{#special:Preferences}}}}\n\nTo change your watchlist settings, visit\n{{canonicalurl:{{#special:EditWatchlist}}}}\n\nTo delete the page from your watchlist, visit\n$UNWATCHURL\n\nFeedback and further assistance:\n{{canonicalurl:{{MediaWiki:Helppage}}}}\";'),('en','messages:deletepage','s:11:\"Delete page\";'),('en','messages:confirm','s:7:\"Confirm\";'),('en','messages:excontent','s:17:\"content was: \"$1\"\";'),('en','messages:excontentauthor','s:82:\"content was: \"$1\" (and the only contributor was \"[[Special:Contributions/$2|$2]]\")\";'),('en','messages:exbeforeblank','s:33:\"content before blanking was: \"$1\"\";'),('en','messages:exblank','s:14:\"page was empty\";'),('en','messages:delete-confirm','s:11:\"Delete \"$1\"\";'),('en','messages:delete-legend','s:6:\"Delete\";'),('en','messages:historywarning','s:117:\"\'\'\'Warning:\'\'\' The page you are about to delete has a history with approximately $1 {{PLURAL:$1|revision|revisions}}:\";'),('en','messages:confirmdeletetext','s:230:\"You are about to delete a page along with all of its history.\nPlease confirm that you intend to do this, that you understand the consequences, and that you are doing this in accordance with [[{{MediaWiki:Policy-url}}|the policy]].\";'),('en','messages:actioncomplete','s:15:\"Action complete\";'),('en','messages:actionfailed','s:13:\"Action failed\";'),('en','messages:deletedtext','s:63:\"\"$1\" has been deleted.\nSee $2 for a record of recent deletions.\";'),('en','messages:dellogpage','s:12:\"Deletion log\";'),('en','messages:dellogpagetext','s:45:\"Below is a list of the most recent deletions.\";'),('en','messages:deletionlog','s:12:\"deletion log\";'),('en','messages:reverted','s:28:\"Reverted to earlier revision\";'),('en','messages:deletecomment','s:7:\"Reason:\";'),('en','messages:deleteotherreason','s:24:\"Other/additional reason:\";'),('en','messages:deletereasonotherlist','s:12:\"Other reason\";'),('en','messages:deletereason-dropdown','s:76:\"*Common delete reasons\n** Author request\n** Copyright violation\n** Vandalism\";'),('en','messages:delete-edit-reasonlist','s:21:\"Edit deletion reasons\";'),('en','messages:delete-toobig','s:170:\"This page has a large edit history, over $1 {{PLURAL:$1|revision|revisions}}.\nDeletion of such pages has been restricted to prevent accidental disruption of {{SITENAME}}.\";'),('en','messages:delete-warning-toobig','s:160:\"This page has a large edit history, over $1 {{PLURAL:$1|revision|revisions}}.\nDeleting it may disrupt database operations of {{SITENAME}};\nproceed with caution.\";'),('en','messages:rollback','s:15:\"Roll back edits\";'),('en','messages:rollback_short','s:8:\"Rollback\";'),('en','messages:rollbacklink','s:8:\"rollback\";'),('en','messages:rollbackfailed','s:15:\"Rollback failed\";'),('en','messages:cantrollback','s:65:\"Cannot revert edit;\nlast contributor is only author of this page.\";'),('en','messages:alreadyrolled','s:352:\"Cannot rollback last edit of [[:$1]] by [[User:$2|$2]] ([[User talk:$2|talk]]{{int:pipe-separator}}[[Special:Contributions/$2|{{int:contribslink}}]]);\nsomeone else has edited or rolled back the page already.\n\nThe last edit to the page was by [[User:$3|$3]] ([[User talk:$3|talk]]{{int:pipe-separator}}[[Special:Contributions/$3|{{int:contribslink}}]]).\";'),('en','messages:editcomment','s:31:\"The edit summary was: \"\'\'$1\'\'\".\";'),('en','messages:revertpage','s:108:\"Reverted edits by [[Special:Contributions/$2|$2]] ([[User talk:$2|talk]]) to last revision by [[User:$1|$1]]\";'),('en','messages:revertpage-nouser','s:71:\"Reverted edits by (username removed) to last revision by [[User:$1|$1]]\";'),('en','messages:rollback-success','s:58:\"Reverted edits by $1;\nchanged back to last revision by $2.\";'),('en','messages:sessionfailure-title','s:15:\"Session failure\";'),('en','messages:sessionfailure','s:192:\"There seems to be a problem with your login session;\nthis action has been canceled as a precaution against session hijacking.\nGo back to the previous page, reload that page and then try again.\";'),('en','messages:protectlogpage','s:14:\"Protection log\";'),('en','messages:protectlogtext','s:159:\"Below is a list of changes to page protections.\nSee the [[Special:ProtectedPages|protected pages list]] for the list of currently operational page protections.\";'),('en','messages:protectedarticle','s:18:\"protected \"[[$1]]\"\";'),('en','messages:modifiedarticleprotection','s:37:\"changed protection level for \"[[$1]]\"\";'),('en','messages:unprotectedarticle','s:32:\"removed protection from \"[[$1]]\"\";'),('en','messages:movedarticleprotection','s:51:\"moved protection settings from \"[[$2]]\" to \"[[$1]]\"\";'),('en','messages:protect-title','s:32:\"Change protection level for \"$1\"\";'),('en','messages:protect-title-notallowed','s:29:\"View protection level of \"$1\"\";'),('en','messages:prot_1movedto2','s:22:\"[[$1]] moved to [[$2]]\";'),('en','messages:protect-badnamespace-title','s:25:\"Non-protectable namespace\";'),('en','messages:protect-badnamespace-text','s:44:\"Pages in this namespace cannot be protected.\";'),('en','messages:protect-legend','s:18:\"Confirm protection\";'),('en','messages:protectcomment','s:7:\"Reason:\";'),('en','messages:protectexpiry','s:8:\"Expires:\";'),('en','messages:protect_expiry_invalid','s:23:\"Expiry time is invalid.\";'),('en','messages:protect_expiry_old','s:27:\"Expiry time is in the past.\";'),('en','messages:protect-unchain-permissions','s:30:\"Unlock further protect options\";'),('en','messages:protect-text','s:72:\"Here you may view and change the protection level for the page \'\'\'$1\'\'\'.\";'),('en','messages:protect-locked-blocked','s:103:\"You cannot change protection levels while blocked.\nHere are the current settings for the page \'\'\'$1\'\'\':\";'),('en','messages:protect-locked-dblock','s:120:\"Protection levels cannot be changed due to an active database lock.\nHere are the current settings for the page \'\'\'$1\'\'\':\";'),('en','messages:protect-locked-access','s:124:\"Your account does not have permission to change page protection levels.\nHere are the current settings for the page \'\'\'$1\'\'\':\";'),('en','messages:protect-cascadeon','s:246:\"This page is currently protected because it is included in the following {{PLURAL:$1|page, which has|pages, which have}} cascading protection turned on.\nYou can change this page\'s protection level, but it will not affect the cascading protection.\";'),('en','messages:protect-default','s:15:\"Allow all users\";'),('en','messages:protect-fallback','s:23:\"Require \"$1\" permission\";'),('en','messages:protect-level-autoconfirmed','s:32:\"Block new and unregistered users\";'),('en','messages:protect-level-sysop','s:19:\"Administrators only\";'),('en','messages:protect-summary-cascade','s:9:\"cascading\";'),('en','messages:protect-expiring','s:16:\"expires $1 (UTC)\";'),('en','messages:protect-expiring-local','s:10:\"expires $1\";'),('en','messages:protect-expiry-indefinite','s:10:\"indefinite\";'),('en','messages:protect-cascade','s:58:\"Protect pages included in this page (cascading protection)\";'),('en','messages:protect-cantedit','s:100:\"You cannot change the protection levels of this page, because you do not have permission to edit it.\";'),('en','messages:protect-othertime','s:11:\"Other time:\";'),('en','messages:protect-othertime-op','s:10:\"other time\";'),('en','messages:protect-existing-expiry','s:28:\"Existing expiry time: $3, $2\";'),('en','messages:protect-otherreason','s:24:\"Other/additional reason:\";'),('en','messages:protect-otherreason-op','s:12:\"Other reason\";'),('en','messages:protect-dropdown','s:127:\"*Common protection reasons\n** Excessive vandalism\n** Excessive spamming\n** Counter-productive edit warring\n** High traffic page\";'),('en','messages:protect-edit-reasonlist','s:23:\"Edit protection reasons\";'),('en','messages:protect-expiry-options','s:139:\"1 hour:1 hour,1 day:1 day,1 week:1 week,2 weeks:2 weeks,1 month:1 month,3 months:3 months,6 months:6 months,1 year:1 year,infinite:infinite\";'),('en','messages:restriction-type','s:11:\"Permission:\";'),('en','messages:restriction-level','s:18:\"Restriction level:\";'),('en','messages:minimum-size','s:8:\"Min size\";'),('en','messages:maximum-size','s:9:\"Max size:\";'),('en','messages:pagesize','s:7:\"(bytes)\";'),('en','messages:restriction-edit','s:4:\"Edit\";'),('en','messages:restriction-move','s:4:\"Move\";'),('en','messages:restriction-create','s:6:\"Create\";'),('en','messages:restriction-upload','s:6:\"Upload\";'),('en','messages:restriction-level-sysop','s:15:\"fully protected\";'),('en','messages:restriction-level-autoconfirmed','s:14:\"semi protected\";'),('en','messages:restriction-level-all','s:9:\"any level\";'),('en','messages:undelete','s:18:\"View deleted pages\";'),('en','messages:undeletepage','s:30:\"View and restore deleted pages\";'),('en','messages:undeletepagetitle','s:64:\"\'\'\'The following consists of deleted revisions of [[:$1|$1]]\'\'\'.\";'),('en','messages:viewdeletedpage','s:18:\"View deleted pages\";'),('en','messages:undeletepagetext','s:178:\"The following {{PLURAL:$1|page has been deleted but is|$1 pages have been deleted but are}} still in the archive and can be restored.\nThe archive may be periodically cleaned out.\";'),('en','messages:undelete-fieldset-title','s:17:\"Restore revisions\";'),('en','messages:undeleteextrahelp','s:250:\"To restore the page\'s entire history, leave all checkboxes deselected and click \'\'\'\'\'{{int:undeletebtn}}\'\'\'\'\'.\nTo perform a selective restoration, check the boxes corresponding to the revisions to be restored, and click \'\'\'\'\'{{int:undeletebtn}}\'\'\'\'\'.\";'),('en','messages:undeleterevisions','s:44:\"$1 {{PLURAL:$1|revision|revisions}} archived\";'),('en','messages:undeletehistory','s:198:\"If you restore the page, all revisions will be restored to the history.\nIf a new page with the same name has been created since the deletion, the restored revisions will appear in the prior history.\";'),('en','messages:undeleterevdel','s:179:\"Undeletion will not be performed if it will result in the top page or file revision being partially deleted.\nIn such cases, you must uncheck or unhide the newest deleted revision.\";'),('en','messages:undeletehistorynoadmin','s:236:\"This page has been deleted.\nThe reason for deletion is shown in the summary below, along with details of the users who had edited this page before deletion.\nThe actual text of these deleted revisions is only available to administrators.\";'),('en','messages:undelete-revision','s:47:\"Deleted revision of $1 (as of $4, at $5) by $3:\";'),('en','messages:undeleterevision-missing','s:121:\"Invalid or missing revision.\nYou may have a bad link, or the revision may have been restored or removed from the archive.\";'),('en','messages:undelete-nodiff','s:27:\"No previous revision found.\";'),('en','messages:undeletebtn','s:7:\"Restore\";'),('en','messages:undeletelink','s:12:\"view/restore\";'),('en','messages:undeleteviewlink','s:4:\"view\";'),('en','messages:undeletereset','s:5:\"Reset\";'),('en','messages:undeleteinvert','s:16:\"Invert selection\";'),('en','messages:undeletecomment','s:7:\"Reason:\";'),('en','messages:undeletedrevisions','s:46:\"{{PLURAL:$1|1 revision|$1 revisions}} restored\";'),('en','messages:undeletedrevisions-files','s:80:\"{{PLURAL:$1|1 revision|$1 revisions}} and {{PLURAL:$2|1 file|$2 files}} restored\";'),('en','messages:undeletedfiles','s:38:\"{{PLURAL:$1|1 file|$1 files}} restored\";'),('en','messages:cannotundelete','s:64:\"Undelete failed;\nsomeone else may have undeleted the page first.\";'),('en','messages:undeletedpage','s:126:\"\'\'\'$1 has been restored\'\'\'\n\nConsult the [[Special:Log/delete|deletion log]] for a record of recent deletions and restorations.\";'),('en','messages:undelete-header','s:71:\"See [[Special:Log/delete|the deletion log]] for recently deleted pages.\";'),('en','messages:undelete-search-title','s:20:\"Search deleted pages\";'),('en','messages:undelete-search-box','s:20:\"Search deleted pages\";'),('en','messages:undelete-search-prefix','s:25:\"Show pages starting with:\";'),('en','messages:undelete-search-submit','s:6:\"Search\";'),('en','messages:undelete-no-results','s:48:\"No matching pages found in the deletion archive.\";'),('en','messages:undelete-filename-mismatch','s:67:\"Cannot undelete file revision with timestamp $1: Filename mismatch.\";'),('en','messages:undelete-bad-store-key','s:82:\"Cannot undelete file revision with timestamp $1: File was missing before deletion.\";'),('en','messages:undelete-cleanup-error','s:40:\"Error deleting unused archive file \"$1\".\";'),('en','messages:undelete-missing-filearchive','s:107:\"Unable to restore file archive ID $1 because it is not in the database.\nIt may have already been undeleted.\";'),('en','messages:undelete-error','s:21:\"Error undeleting page\";'),('en','messages:undelete-error-short','s:25:\"Error undeleting file: $1\";'),('en','messages:undelete-error-long','s:54:\"Errors were encountered while undeleting the file:\n\n$1\";'),('en','messages:undelete-show-file-confirm','s:99:\"Are you sure you want to view the deleted revision of the file \"<nowiki>$1</nowiki>\" from $2 at $3?\";'),('en','messages:undelete-show-file-submit','s:3:\"Yes\";'),('en','messages:namespace','s:10:\"Namespace:\";'),('en','messages:invert','s:16:\"Invert selection\";'),('en','messages:tooltip-invert','s:111:\"Check this box to hide changes to pages within the selected namespace (and the associated namespace if checked)\";'),('en','messages:namespace_association','s:20:\"Associated namespace\";'),('en','messages:tooltip-namespace_association','s:99:\"Check this box to also include the talk or subject namespace associated with the selected namespace\";'),('en','messages:blanknamespace','s:6:\"(Main)\";'),('en','messages:contributions','s:18:\"User contributions\";'),('en','messages:contributions-title','s:25:\"User contributions for $1\";'),('en','messages:mycontris','s:16:\"My contributions\";'),('en','messages:contribsub2','s:11:\"For $1 ($2)\";'),('en','messages:nocontribs','s:46:\"No changes were found matching these criteria.\";'),('en','messages:uctop','s:5:\"(top)\";'),('en','messages:month','s:25:\"From month (and earlier):\";'),('en','messages:year','s:24:\"From year (and earlier):\";'),('en','messages:sp-contributions-newbies','s:39:\"Show contributions of new accounts only\";'),('en','messages:sp-contributions-newbies-sub','s:16:\"For new accounts\";'),('en','messages:sp-contributions-newbies-title','s:35:\"User contributions for new accounts\";'),('en','messages:sp-contributions-blocklog','s:9:\"block log\";'),('en','messages:sp-contributions-deleted','s:26:\"deleted user contributions\";'),('en','messages:sp-contributions-uploads','s:7:\"uploads\";'),('en','messages:sp-contributions-logs','s:4:\"logs\";'),('en','messages:sp-contributions-talk','s:4:\"talk\";'),('en','messages:sp-contributions-userrights','s:22:\"user rights management\";'),('en','messages:sp-contributions-blocked-notice','s:91:\"This user is currently blocked.\nThe latest block log entry is provided below for reference:\";'),('en','messages:sp-contributions-blocked-notice-anon','s:97:\"This IP address is currently blocked.\nThe latest block log entry is provided below for reference:\";'),('en','messages:sp-contributions-search','s:24:\"Search for contributions\";'),('en','messages:sp-contributions-username','s:23:\"IP address or username:\";'),('en','messages:sp-contributions-toponly','s:41:\"Only show edits that are latest revisions\";'),('en','messages:sp-contributions-submit','s:6:\"Search\";'),('en','messages:sp-contributions-explain','s:0:\"\";'),('en','messages:sp-contributions-footer','s:1:\"-\";'),('en','messages:sp-contributions-footer-anon','s:1:\"-\";'),('en','messages:whatlinkshere','s:15:\"What links here\";'),('en','messages:whatlinkshere-title','s:23:\"Pages that link to \"$1\"\";'),('en','messages:whatlinkshere-summary','s:0:\"\";'),('en','messages:whatlinkshere-page','s:5:\"Page:\";'),('en','messages:linkshere','s:42:\"The following pages link to \'\'\'[[:$1]]\'\'\':\";'),('en','messages:nolinkshere','s:31:\"No pages link to \'\'\'[[:$1]]\'\'\'.\";'),('en','messages:nolinkshere-ns','s:55:\"No pages link to \'\'\'[[:$1]]\'\'\' in the chosen namespace.\";'),('en','messages:isredirect','s:13:\"redirect page\";'),('en','messages:istemplate','s:12:\"transclusion\";'),('en','messages:isimage','s:9:\"file link\";'),('en','messages:whatlinkshere-prev','s:34:\"{{PLURAL:$1|previous|previous $1}}\";'),('en','messages:whatlinkshere-next','s:26:\"{{PLURAL:$1|next|next $1}}\";'),('en','messages:whatlinkshere-links','s:9:\"← links\";'),('en','messages:whatlinkshere-hideredirs','s:12:\"$1 redirects\";'),('en','messages:whatlinkshere-hidetrans','s:16:\"$1 transclusions\";'),('en','messages:whatlinkshere-hidelinks','s:8:\"$1 links\";'),('en','messages:whatlinkshere-hideimages','s:14:\"$1 image links\";'),('en','messages:whatlinkshere-filters','s:7:\"Filters\";'),('en','messages:autoblockid','s:13:\"Autoblock #$1\";'),('en','messages:block','s:10:\"Block user\";'),('en','messages:unblock','s:12:\"Unblock user\";'),('en','messages:blockip','s:10:\"Block user\";'),('en','messages:blockip-title','s:10:\"Block user\";'),('en','messages:blockip-legend','s:10:\"Block user\";'),('en','messages:blockiptext','s:280:\"Use the form below to block write access from a specific IP address or username.\nThis should be done only to prevent vandalism, and in accordance with [[{{MediaWiki:Policy-url}}|policy]].\nFill in a specific reason below (for example, citing particular pages that were vandalized).\";'),('en','messages:ipadressorusername','s:23:\"IP address or username:\";'),('en','messages:ipbexpiry','s:7:\"Expiry:\";'),('en','messages:ipbreason','s:7:\"Reason:\";'),('en','messages:ipbreasonotherlist','s:12:\"Other reason\";'),('en','messages:ipbreason-dropdown','s:253:\"*Common block reasons\n** Inserting false information\n** Removing content from pages\n** Spamming links to external sites\n** Inserting nonsense/gibberish into pages\n** Intimidating behaviour/harassment\n** Abusing multiple accounts\n** Unacceptable username\";'),('en','messages:ipb-hardblock','s:57:\"Prevent logged-in users from editing from this IP address\";'),('en','messages:ipbcreateaccount','s:24:\"Prevent account creation\";'),('en','messages:ipbemailban','s:32:\"Prevent user from sending e-mail\";'),('en','messages:ipbenableautoblock','s:112:\"Automatically block the last IP address used by this user, and any subsequent IP addresses they try to edit from\";'),('en','messages:ipbsubmit','s:15:\"Block this user\";'),('en','messages:ipbother','s:11:\"Other time:\";'),('en','messages:ipboptions','s:157:\"2 hours:2 hours,1 day:1 day,3 days:3 days,1 week:1 week,2 weeks:2 weeks,1 month:1 month,3 months:3 months,6 months:6 months,1 year:1 year,indefinite:infinite\";'),('en','messages:ipbotheroption','s:5:\"other\";'),('en','messages:ipbotherreason','s:24:\"Other/additional reason:\";'),('en','messages:ipbhidename','s:34:\"Hide username from edits and lists\";'),('en','messages:ipbwatchuser','s:37:\"Watch this user\'s user and talk pages\";'),('en','messages:ipb-disableusertalk','s:64:\"Prevent this user from editing their own talk page while blocked\";'),('en','messages:ipb-change-block','s:37:\"Re-block the user with these settings\";'),('en','messages:ipb-confirm','s:13:\"Confirm block\";'),('en','messages:badipaddress','s:18:\"Invalid IP address\";'),('en','messages:blockipsuccesssub','s:15:\"Block succeeded\";'),('en','messages:blockipsuccesstext','s:114:\"[[Special:Contributions/$1|$1]] has been blocked.<br />\nSee the [[Special:BlockList|block list]] to review blocks.\";'),('en','messages:ipb-blockingself','s:67:\"You are about to block yourself!  Are you sure you want to do that?\";'),('en','messages:ipb-confirmhideuser','s:156:\"You are about to block a user with \"hide user\" enabled.  This will suppress the user\'s name in all lists and log entries.  Are you sure you want to do that?\";'),('en','messages:ipb-edit-dropdown','s:18:\"Edit block reasons\";'),('en','messages:ipb-unblock-addr','s:10:\"Unblock $1\";'),('en','messages:ipb-unblock','s:32:\"Unblock a username or IP address\";'),('en','messages:ipb-blocklist','s:20:\"View existing blocks\";'),('en','messages:ipb-blocklist-contribs','s:20:\"Contributions for $1\";'),('en','messages:unblockip','s:12:\"Unblock user\";'),('en','messages:unblockiptext','s:90:\"Use the form below to restore write access to a previously blocked IP address or username.\";'),('en','messages:ipusubmit','s:17:\"Remove this block\";'),('en','messages:unblocked','s:33:\"[[User:$1|$1]] has been unblocked\";'),('en','messages:unblocked-range','s:21:\"$1 has been unblocked\";'),('en','messages:unblocked-id','s:25:\"Block $1 has been removed\";'),('en','messages:blocklist','s:13:\"Blocked users\";'),('en','messages:ipblocklist','s:13:\"Blocked users\";'),('en','messages:ipblocklist-legend','s:19:\"Find a blocked user\";'),('en','messages:blocklist-userblocks','s:19:\"Hide account blocks\";'),('en','messages:blocklist-tempblocks','s:21:\"Hide temporary blocks\";'),('en','messages:blocklist-addressblocks','s:21:\"Hide single IP blocks\";'),('en','messages:blocklist-rangeblocks','s:17:\"Hide range blocks\";'),('en','messages:blocklist-timestamp','s:9:\"Timestamp\";'),('en','messages:blocklist-target','s:6:\"Target\";'),('en','messages:blocklist-expiry','s:7:\"Expires\";'),('en','messages:blocklist-by','s:14:\"Blocking admin\";'),('en','messages:blocklist-params','s:16:\"Block parameters\";'),('en','messages:blocklist-reason','s:6:\"Reason\";'),('en','messages:blocklist-summary','s:0:\"\";'),('en','messages:ipblocklist-submit','s:6:\"Search\";'),('en','messages:ipblocklist-localblock','s:11:\"Local block\";'),('en','messages:ipblocklist-otherblocks','s:32:\"Other {{PLURAL:$1|block|blocks}}\";'),('en','messages:infiniteblock','s:8:\"infinite\";'),('en','messages:expiringblock','s:19:\"expires on $1 at $2\";'),('en','messages:anononlyblock','s:10:\"anon. only\";'),('en','messages:noautoblockblock','s:18:\"autoblock disabled\";'),('en','messages:createaccountblock','s:25:\"account creation disabled\";'),('en','messages:emailblock','s:15:\"e-mail disabled\";'),('en','messages:blocklist-nousertalk','s:25:\"cannot edit own talk page\";'),('en','messages:ipblocklist-empty','s:24:\"The block list is empty.\";'),('en','messages:ipblocklist-no-results','s:52:\"The requested IP address or username is not blocked.\";'),('en','messages:blocklink','s:5:\"block\";'),('en','messages:unblocklink','s:7:\"unblock\";'),('en','messages:change-blocklink','s:12:\"change block\";'),('en','messages:contribslink','s:8:\"contribs\";'),('en','messages:emaillink','s:11:\"send e-mail\";'),('en','messages:autoblocker','s:123:\"Autoblocked because your IP address has been recently used by \"[[User:$1|$1]]\".\nThe reason given for $1\'s block is \"\'\'$2\'\'\"\";'),('en','messages:blocklogpage','s:9:\"Block log\";'),('en','messages:blocklog-showlog','s:85:\"This user has been blocked previously.\nThe block log is provided below for reference:\";'),('en','messages:blocklog-showsuppresslog','s:99:\"This user has been blocked and hidden previously.\nThe suppress log is provided below for reference:\";'),('en','messages:blocklogentry','s:43:\"blocked [[$1]] with an expiry time of $2 $3\";'),('en','messages:reblock-logentry','s:62:\"changed block settings for [[$1]] with an expiry time of $2 $3\";'),('en','messages:blocklogtext','s:201:\"This is a log of user blocking and unblocking actions.\nAutomatically blocked IP addresses are not listed.\nSee the [[Special:BlockList|block list]] for the list of currently operational bans and blocks.\";'),('en','messages:unblocklogentry','s:12:\"unblocked $1\";'),('en','messages:block-log-flags-anononly','s:20:\"anonymous users only\";'),('en','messages:block-log-flags-nocreate','s:25:\"account creation disabled\";'),('en','messages:block-log-flags-noautoblock','s:18:\"autoblock disabled\";'),('en','messages:block-log-flags-noemail','s:15:\"e-mail disabled\";'),('en','messages:block-log-flags-nousertalk','s:25:\"cannot edit own talk page\";'),('en','messages:block-log-flags-angry-autoblock','s:26:\"enhanced autoblock enabled\";'),('en','messages:block-log-flags-hiddenname','s:15:\"username hidden\";'),('en','messages:range_block_disabled','s:61:\"The administrator ability to create range blocks is disabled.\";'),('en','messages:ipb_expiry_invalid','s:20:\"Expiry time invalid.\";'),('en','messages:ipb_expiry_temp','s:41:\"Hidden username blocks must be permanent.\";'),('en','messages:ipb_hide_invalid','s:60:\"Unable to suppress this account; it may have too many edits.\";'),('en','messages:ipb_already_blocked','s:23:\"\"$1\" is already blocked\";'),('en','messages:ipb-needreblock','s:58:\"$1 is already blocked. Do you want to change the settings?\";'),('en','messages:ipb-otherblocks-header','s:32:\"Other {{PLURAL:$1|block|blocks}}\";'),('en','messages:unblock-hideuser','s:64:\"You cannot unblock this user, as their username has been hidden.\";'),('en','messages:ipb_cant_unblock','s:65:\"Error: Block ID $1 not found. It may have been unblocked already.\";'),('en','messages:ipb_blocked_as_range','s:146:\"Error: The IP address $1 is not blocked directly and cannot be unblocked.\nIt is, however, blocked as part of the range $2, which can be unblocked.\";'),('en','messages:ip_range_invalid','s:17:\"Invalid IP range.\";'),('en','messages:ip_range_toolarge','s:45:\"Range blocks larger than /$1 are not allowed.\";'),('en','messages:blockme','s:8:\"Block me\";'),('en','messages:proxyblocker','s:13:\"Proxy blocker\";'),('en','messages:proxyblocker-disabled','s:26:\"This function is disabled.\";'),('en','messages:proxyblockreason','s:199:\"Your IP address has been blocked because it is an open proxy.\nPlease contact your Internet service provider or technical support of your organization and inform them of this serious security problem.\";'),('en','messages:proxyblocksuccess','s:5:\"Done.\";'),('en','messages:sorbs','s:5:\"DNSBL\";'),('en','messages:sorbsreason','s:77:\"Your IP address is listed as an open proxy in the DNSBL used by {{SITENAME}}.\";'),('en','messages:sorbs_create_account_reason','s:106:\"Your IP address is listed as an open proxy in the DNSBL used by {{SITENAME}}.\nYou cannot create an account\";'),('en','messages:cant-block-while-blocked','s:51:\"You cannot block other users while you are blocked.\";'),('en','messages:cant-see-hidden-user','s:152:\"The user you are trying to block has already been blocked and hidden.\nSince you do not have the hideuser right, you cannot see or edit the user\'s block.\";'),('en','messages:ipbblocked','s:73:\"You cannot block or unblock other users, because you are yourself blocked\";'),('en','messages:ipbnounblockself','s:39:\"You are not allowed to unblock yourself\";'),('en','messages:lockdb','s:13:\"Lock database\";'),('en','messages:unlockdb','s:15:\"Unlock database\";'),('en','messages:lockdbtext','s:294:\"Locking the database will suspend the ability of all users to edit pages, change their preferences, edit their watchlists, and other things requiring changes in the database.\nPlease confirm that this is what you intend to do, and that you will unlock the database when your maintenance is done.\";'),('en','messages:unlockdbtext','s:227:\"Unlocking the database will restore the ability of all users to edit pages, change their preferences, edit their watchlists, and other things requiring changes in the database.\nPlease confirm that this is what you intend to do.\";'),('en','messages:lockconfirm','s:40:\"Yes, I really want to lock the database.\";'),('en','messages:unlockconfirm','s:42:\"Yes, I really want to unlock the database.\";'),('en','messages:lockbtn','s:13:\"Lock database\";'),('en','messages:unlockbtn','s:15:\"Unlock database\";'),('en','messages:locknoconfirm','s:39:\"You did not check the confirmation box.\";'),('en','messages:lockdbsuccesssub','s:23:\"Database lock succeeded\";'),('en','messages:unlockdbsuccesssub','s:21:\"Database lock removed\";'),('en','messages:lockdbsuccesstext','s:120:\"The database has been locked.<br />\nRemember to [[Special:UnlockDB|remove the lock]] after your maintenance is complete.\";'),('en','messages:unlockdbsuccesstext','s:31:\"The database has been unlocked.\";'),('en','messages:lockfilenotwritable','s:116:\"The database lock file is not writable.\nTo lock or unlock the database, this needs to be writable by the web server.\";'),('en','messages:databasenotlocked','s:27:\"The database is not locked.\";'),('en','messages:lockedbyandtime','s:33:\"(by {{GENDER:$1|$1}} on $2 at $3)\";'),('en','messages:move-page','s:7:\"Move $1\";'),('en','messages:move-page-legend','s:9:\"Move page\";'),('en','messages:movepagetext','s:883:\"Using the form below will rename a page, moving all of its history to the new name.\nThe old title will become a redirect page to the new title.\nYou can update redirects that point to the original title automatically.\nIf you choose not to, be sure to check for [[Special:DoubleRedirects|double]] or [[Special:BrokenRedirects|broken redirects]].\nYou are responsible for making sure that links continue to point where they are supposed to go.\n\nNote that the page will \'\'\'not\'\'\' be moved if there is already a page at the new title, unless it is empty or a redirect and has no past edit history.\nThis means that you can rename a page back to where it was renamed from if you make a mistake, and you cannot overwrite an existing page.\n\n\'\'\'Warning!\'\'\'\nThis can be a drastic and unexpected change for a popular page;\nplease be sure you understand the consequences of this before proceeding.\";'),('en','messages:movepagetext-noredirectfixer','s:788:\"Using the form below will rename a page, moving all of its history to the new name.\nThe old title will become a redirect page to the new title.\nBe sure to check for [[Special:DoubleRedirects|double]] or [[Special:BrokenRedirects|broken redirects]].\nYou are responsible for making sure that links continue to point where they are supposed to go.\n\nNote that the page will \'\'\'not\'\'\' be moved if there is already a page at the new title, unless it is empty or a redirect and has no past edit history.\nThis means that you can rename a page back to where it was renamed from if you make a mistake, and you cannot overwrite an existing page.\n\n\'\'\'Warning!\'\'\'\nThis can be a drastic and unexpected change for a popular page;\nplease be sure you understand the consequences of this before proceeding.\";'),('en','messages:movepagetalktext','s:247:\"The associated talk page will be automatically moved along with it \'\'\'unless:\'\'\'\n*A non-empty talk page already exists under the new name, or\n*You uncheck the box below.\n\nIn those cases, you will have to move or merge the page manually if desired.\";'),('en','messages:movearticle','s:10:\"Move page:\";'),('en','messages:moveuserpage-warning','s:132:\"\'\'\'Warning:\'\'\' You are about to move a user page. Please note that only the page will be moved and the user will \'\'not\'\' be renamed.\";'),('en','messages:movenologin','s:13:\"Not logged in\";'),('en','messages:movenologintext','s:81:\"You must be a registered user and [[Special:UserLogin|logged in]] to move a page.\";'),('en','messages:movenotallowed','s:41:\"You do not have permission to move pages.\";'),('en','messages:movenotallowedfile','s:41:\"You do not have permission to move files.\";'),('en','messages:cant-move-user-page','s:68:\"You do not have permission to move user pages (apart from subpages).\";'),('en','messages:cant-move-to-user-page','s:84:\"You do not have permission to move a page to a user page (except to a user subpage).\";'),('en','messages:newtitle','s:13:\"To new title:\";'),('en','messages:move-watch','s:33:\"Watch source page and target page\";'),('en','messages:movepagebtn','s:9:\"Move page\";'),('en','messages:pagemovedsub','s:14:\"Move succeeded\";'),('en','messages:movepage-moved','s:33:\"\'\'\'\"$1\" has been moved to \"$2\"\'\'\'\";'),('en','messages:movepage-moved-redirect','s:28:\"A redirect has been created.\";'),('en','messages:movepage-moved-noredirect','s:47:\"The creation of a redirect has been suppressed.\";'),('en','messages:articleexists','s:105:\"A page of that name already exists, or the name you have chosen is not valid.\nPlease choose another name.\";'),('en','messages:cantmove-titleprotected','s:95:\"You cannot move a page to this location, because the new title has been protected from creation\";'),('en','messages:talkexists','s:155:\"\'\'\'The page itself was moved successfully, but the talk page could not be moved because one already exists at the new title.\nPlease merge them manually.\'\'\'\";'),('en','messages:movedto','s:8:\"moved to\";'),('en','messages:movetalk','s:25:\"Move associated talk page\";'),('en','messages:move-subpages','s:24:\"Move subpages (up to $1)\";'),('en','messages:move-talk-subpages','s:37:\"Move subpages of talk page (up to $1)\";'),('en','messages:movepage-page-exists','s:67:\"The page $1 already exists and cannot be automatically overwritten.\";'),('en','messages:movepage-page-moved','s:33:\"The page $1 has been moved to $2.\";'),('en','messages:movepage-page-unmoved','s:37:\"The page $1 could not be moved to $2.\";'),('en','messages:movepage-max-pages','s:98:\"The maximum of $1 {{PLURAL:$1|page|pages}} has been moved and no more will be moved automatically.\";'),('en','messages:movelogpage','s:8:\"Move log\";'),('en','messages:movelogpagetext','s:34:\"Below is a list of all page moves.\";'),('en','messages:movesubpage','s:30:\"{{PLURAL:$1|Subpage|Subpages}}\";'),('en','messages:movesubpagetext','s:60:\"This page has $1 {{PLURAL:$1|subpage|subpages}} shown below.\";'),('en','messages:movenosubpage','s:26:\"This page has no subpages.\";'),('en','messages:movereason','s:7:\"Reason:\";'),('en','messages:revertmove','s:6:\"revert\";'),('en','messages:delete_and_move','s:15:\"Delete and move\";'),('en','messages:delete_and_move_text','s:121:\"== Deletion required ==\nThe destination page \"[[:$1]]\" already exists.\nDo you want to delete it to make way for the move?\";'),('en','messages:delete_and_move_confirm','s:20:\"Yes, delete the page\";'),('en','messages:delete_and_move_reason','s:42:\"Deleted to make way for move from \"[[$1]]\"\";'),('en','messages:selfmove','s:75:\"Source and destination titles are the same;\ncannot move a page over itself.\";'),('en','messages:immobile-source-namespace','s:35:\"Cannot move pages in namespace \"$1\"\";'),('en','messages:immobile-target-namespace','s:37:\"Cannot move pages into namespace \"$1\"\";'),('en','messages:immobile-target-namespace-iw','s:51:\"Interwiki link is not a valid target for page move.\";'),('en','messages:immobile-source-page','s:25:\"This page is not movable.\";'),('en','messages:immobile-target-page','s:38:\"Cannot move to that destination title.\";'),('en','messages:imagenocrossnamespace','s:38:\"Cannot move file to non-file namespace\";'),('en','messages:nonfile-cannot-move-to-file','s:38:\"Cannot move non-file to file namespace\";'),('en','messages:imagetypemismatch','s:46:\"The new file extension does not match its type\";'),('en','messages:imageinvalidfilename','s:30:\"The target filename is invalid\";'),('en','messages:fix-double-redirects','s:53:\"Update any redirects that point to the original title\";'),('en','messages:move-leave-redirect','s:23:\"Leave a redirect behind\";'),('en','messages:protectedpagemovewarning','s:159:\"\'\'\'Warning:\'\'\' This page has been protected so that only users with administrator privileges can move it.\nThe latest log entry is provided below for reference:\";'),('en','messages:semiprotectedpagemovewarning','s:137:\"\'\'\'Note:\'\'\' This page has been protected so that only registered users can move it.\nThe latest log entry is provided below for reference:\";'),('en','messages:move-over-sharedrepo','s:115:\"== File exists ==\n[[:$1]] exists on a shared repository. Moving a file to this title will override the shared file.\";'),('en','messages:file-exists-sharedrepo','s:89:\"The filename chosen is already in use on a shared repository.\nPlease choose another name.\";'),('en','messages:export','s:12:\"Export pages\";'),('en','messages:exporttext','s:588:\"You can export the text and editing history of a particular page or set of pages wrapped in some XML.\nThis can be imported into another wiki using MediaWiki via the [[Special:Import|import page]].\n\nTo export pages, enter the titles in the text box below, one title per line, and select whether you want the current revision as well as all old revisions, with the page history lines, or the current revision with the info about the last edit.\n\nIn the latter case you can also use a link, for example [[{{#Special:Export}}/{{MediaWiki:Mainpage}}]] for the page \"[[{{MediaWiki:Mainpage}}]]\".\";'),('en','messages:exportall','s:16:\"Export all pages\";'),('en','messages:exportcuronly','s:55:\"Include only the current revision, not the full history\";'),('en','messages:exportnohistory','s:116:\"----\n\'\'\'Note:\'\'\' Exporting the full history of pages through this form has been disabled due to performance reasons.\";'),('en','messages:exportlistauthors','s:49:\"Include a full list of contributors for each page\";'),('en','messages:export-submit','s:6:\"Export\";'),('en','messages:export-addcattext','s:24:\"Add pages from category:\";'),('en','messages:export-addcat','s:3:\"Add\";'),('en','messages:export-addnstext','s:25:\"Add pages from namespace:\";'),('en','messages:export-addns','s:3:\"Add\";'),('en','messages:export-download','s:12:\"Save as file\";'),('en','messages:export-templates','s:17:\"Include templates\";'),('en','messages:export-pagelinks','s:35:\"Include linked pages to a depth of:\";'),('en','messages:allmessages','s:15:\"System messages\";'),('en','messages:allmessagesname','s:4:\"Name\";'),('en','messages:allmessagesdefault','s:20:\"Default message text\";'),('en','messages:allmessagescurrent','s:20:\"Current message text\";'),('en','messages:allmessagestext','s:256:\"This is a list of system messages available in the MediaWiki namespace.\nPlease visit [//www.mediawiki.org/wiki/Localisation MediaWiki Localisation] and [//translatewiki.net translatewiki.net] if you wish to contribute to the generic MediaWiki localisation.\";'),('en','messages:allmessagesnotsupportedDB','s:80:\"This page cannot be used because \'\'\'$wgUseDatabaseMessages\'\'\' has been disabled.\";'),('en','messages:allmessages-filter-legend','s:6:\"Filter\";'),('en','messages:allmessages-filter','s:30:\"Filter by customisation state:\";'),('en','messages:allmessages-filter-unmodified','s:10:\"Unmodified\";'),('en','messages:allmessages-filter-all','s:3:\"All\";'),('en','messages:allmessages-filter-modified','s:8:\"Modified\";'),('en','messages:allmessages-prefix','s:17:\"Filter by prefix:\";'),('en','messages:allmessages-language','s:9:\"Language:\";'),('en','messages:allmessages-filter-submit','s:2:\"Go\";'),('en','messages:thumbnail-more','s:7:\"Enlarge\";'),('en','messages:filemissing','s:12:\"File missing\";'),('en','messages:thumbnail_error','s:28:\"Error creating thumbnail: $1\";'),('en','messages:djvu_page_error','s:22:\"DjVu page out of range\";'),('en','messages:djvu_no_xml','s:33:\"Unable to fetch XML for DjVu file\";'),('en','messages:thumbnail-temp-create','s:41:\"Unable to create temporary thumbnail file\";'),('en','messages:thumbnail-dest-create','s:39:\"Unable to save thumbnail to destination\";'),('en','messages:thumbnail_invalid_params','s:28:\"Invalid thumbnail parameters\";'),('en','messages:thumbnail_dest_directory','s:38:\"Unable to create destination directory\";'),('en','messages:thumbnail_image-type','s:24:\"Image type not supported\";'),('en','messages:thumbnail_gd-library','s:56:\"Incomplete GD library configuration: Missing function $1\";'),('en','messages:thumbnail_image-missing','s:28:\"File seems to be missing: $1\";'),('en','messages:import','s:12:\"Import pages\";'),('en','messages:importinterwiki','s:16:\"Transwiki import\";'),('en','messages:import-interwiki-text','s:174:\"Select a wiki and page title to import.\nRevision dates and editors\' names will be preserved.\nAll transwiki import actions are logged at the [[Special:Log/import|import log]].\";'),('en','messages:import-interwiki-source','s:17:\"Source wiki/page:\";'),('en','messages:import-interwiki-history','s:40:\"Copy all history revisions for this page\";'),('en','messages:import-interwiki-templates','s:21:\"Include all templates\";'),('en','messages:import-interwiki-submit','s:6:\"Import\";'),('en','messages:import-interwiki-namespace','s:22:\"Destination namespace:\";'),('en','messages:import-upload-filename','s:9:\"Filename:\";'),('en','messages:import-comment','s:8:\"Comment:\";'),('en','messages:importtext','s:133:\"Please export the file from the source wiki using the [[Special:Export|export utility]].\nSave it to your computer and upload it here.\";'),('en','messages:importstart','s:18:\"Importing pages...\";'),('en','messages:import-revision-count','s:35:\"$1 {{PLURAL:$1|revision|revisions}}\";'),('en','messages:importnopages','s:19:\"No pages to import.\";'),('en','messages:imported-log-entries','s:48:\"Imported $1 {{PLURAL:$1|log entry|log entries}}.\";'),('en','messages:importfailed','s:34:\"Import failed: <nowiki>$1</nowiki>\";'),('en','messages:importunknownsource','s:26:\"Unknown import source type\";'),('en','messages:importcantopen','s:26:\"Could not open import file\";'),('en','messages:importbadinterwiki','s:18:\"Bad interwiki link\";'),('en','messages:importnotext','s:16:\"Empty or no text\";'),('en','messages:importsuccess','s:16:\"Import finished!\";'),('en','messages:importhistoryconflict','s:72:\"Conflicting history revision exists (may have imported this page before)\";'),('en','messages:importnosources','s:86:\"No transwiki import sources have been defined and direct history uploads are disabled.\";'),('en','messages:importnofile','s:28:\"No import file was uploaded.\";'),('en','messages:importuploaderrorsize','s:78:\"Upload of import file failed.\nThe file is bigger than the allowed upload size.\";'),('en','messages:importuploaderrorpartial','s:67:\"Upload of import file failed.\nThe file was only partially uploaded.\";'),('en','messages:importuploaderrortemp','s:60:\"Upload of import file failed.\nA temporary folder is missing.\";'),('en','messages:import-parse-failure','s:24:\"XML import parse failure\";'),('en','messages:import-noarticle','s:18:\"No page to import!\";'),('en','messages:import-nonewrevisions','s:39:\"All revisions were previously imported.\";'),('en','messages:xml-error-string','s:35:\"$1 at line $2, col $3 (byte $4): $5\";'),('en','messages:import-upload','s:15:\"Upload XML data\";'),('en','messages:import-token-mismatch','s:39:\"Loss of session data.\nPlease try again.\";'),('en','messages:import-invalid-interwiki','s:38:\"Cannot import from the specified wiki.\";'),('en','messages:import-error-edit','s:65:\"Page \"$1\" is not imported because you are not allowed to edit it.\";'),('en','messages:import-error-create','s:67:\"Page \"$1\" is not imported because you are not allowed to create it.\";'),('en','messages:import-error-interwiki','s:88:\"Page \"$1\" is not imported because its name is reserved for external linking (interwiki).\";'),('en','messages:import-error-special','s:94:\"Page \"$1\" is not imported because it belongs to a special namespace that does not allow pages.\";'),('en','messages:import-error-invalid','s:54:\"Page \"$1\" is not imported because its name is invalid.\";'),('en','messages:importlogpage','s:10:\"Import log\";'),('en','messages:importlogpagetext','s:67:\"Administrative imports of pages with edit history from other wikis.\";'),('en','messages:import-logentry-upload','s:30:\"imported [[$1]] by file upload\";'),('en','messages:import-logentry-upload-detail','s:35:\"$1 {{PLURAL:$1|revision|revisions}}\";'),('en','messages:import-logentry-interwiki','s:14:\"transwikied $1\";'),('en','messages:import-logentry-interwiki-detail','s:43:\"$1 {{PLURAL:$1|revision|revisions}} from $2\";'),('en','messages:javascripttest','s:18:\"JavaScript testing\";'),('en','messages:javascripttest-backlink','s:4:\"< $1\";'),('en','messages:javascripttest-disabled','s:48:\"This function has not been enabled on this wiki.\";'),('en','messages:javascripttest-title','s:16:\"Running $1 tests\";'),('en','messages:javascripttest-pagetext-noframework','s:51:\"This page is reserved for running JavaScript tests.\";'),('en','messages:javascripttest-pagetext-unknownframework','s:31:\"Unknown testing framework \"$1\".\";'),('en','messages:javascripttest-pagetext-frameworks','s:57:\"Please choose one of the following testing frameworks: $1\";'),('en','messages:javascripttest-pagetext-skins','s:36:\"Choose a skin to run the tests with:\";'),('en','messages:javascripttest-qunit-name','s:5:\"QUnit\";'),('en','messages:javascripttest-qunit-intro','s:48:\"See [$1 testing documentation] on mediawiki.org.\";'),('en','messages:javascripttest-qunit-heading','s:37:\"MediaWiki JavaScript QUnit test suite\";'),('en','messages:accesskey-pt-userpage','s:1:\".\";'),('en','messages:accesskey-pt-anonuserpage','s:1:\".\";'),('en','messages:accesskey-pt-mytalk','s:1:\"n\";'),('en','messages:accesskey-pt-anontalk','s:1:\"n\";'),('en','messages:accesskey-pt-preferences','s:0:\"\";'),('en','messages:accesskey-pt-watchlist','s:1:\"l\";'),('en','messages:accesskey-pt-mycontris','s:1:\"y\";'),('en','messages:accesskey-pt-login','s:1:\"o\";'),('en','messages:accesskey-pt-anonlogin','s:1:\"o\";'),('en','messages:accesskey-pt-logout','s:0:\"\";'),('en','messages:accesskey-ca-talk','s:1:\"t\";'),('en','messages:accesskey-ca-edit','s:1:\"e\";'),('en','messages:accesskey-ca-addsection','s:1:\"+\";'),('en','messages:accesskey-ca-viewsource','s:1:\"e\";'),('en','messages:accesskey-ca-history','s:1:\"h\";'),('en','messages:accesskey-ca-protect','s:1:\"=\";'),('en','messages:accesskey-ca-unprotect','s:1:\"=\";'),('en','messages:accesskey-ca-delete','s:1:\"d\";'),('en','messages:accesskey-ca-undelete','s:1:\"d\";'),('en','messages:accesskey-ca-move','s:1:\"m\";'),('en','messages:accesskey-ca-watch','s:1:\"w\";'),('en','messages:accesskey-ca-unwatch','s:1:\"w\";'),('en','messages:accesskey-search','s:1:\"f\";'),('en','messages:accesskey-search-go','s:0:\"\";'),('en','messages:accesskey-search-fulltext','s:0:\"\";'),('en','messages:accesskey-p-logo','s:0:\"\";'),('en','messages:accesskey-n-mainpage','s:1:\"z\";'),('en','messages:accesskey-n-mainpage-description','s:1:\"z\";'),('en','messages:accesskey-n-portal','s:0:\"\";'),('en','messages:accesskey-n-currentevents','s:0:\"\";'),('en','messages:accesskey-n-recentchanges','s:1:\"r\";'),('en','messages:accesskey-n-randompage','s:1:\"x\";'),('en','messages:accesskey-n-help','s:0:\"\";'),('en','messages:accesskey-t-whatlinkshere','s:1:\"j\";'),('en','messages:accesskey-t-recentchangeslinked','s:1:\"k\";'),('en','messages:accesskey-feed-rss','s:0:\"\";'),('en','messages:accesskey-feed-atom','s:0:\"\";'),('en','messages:accesskey-t-contributions','s:0:\"\";'),('en','messages:accesskey-t-emailuser','s:0:\"\";'),('en','messages:accesskey-t-permalink','s:0:\"\";'),('en','messages:accesskey-t-print','s:1:\"p\";'),('en','messages:accesskey-t-upload','s:1:\"u\";'),('en','messages:accesskey-t-specialpages','s:1:\"q\";'),('en','messages:accesskey-ca-nstab-main','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-user','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-media','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-special','s:0:\"\";'),('en','messages:accesskey-ca-nstab-project','s:1:\"a\";'),('en','messages:accesskey-ca-nstab-image','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-mediawiki','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-template','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-help','s:1:\"c\";'),('en','messages:accesskey-ca-nstab-category','s:1:\"c\";'),('en','messages:accesskey-minoredit','s:1:\"i\";'),('en','messages:accesskey-save','s:1:\"s\";'),('en','messages:accesskey-preview','s:1:\"p\";'),('en','messages:accesskey-diff','s:1:\"v\";'),('en','messages:accesskey-compareselectedversions','s:1:\"v\";'),('en','messages:accesskey-watch','s:1:\"w\";'),('en','messages:accesskey-upload','s:1:\"s\";'),('en','messages:accesskey-preferences-save','s:1:\"s\";'),('en','messages:accesskey-summary','s:1:\"b\";'),('en','messages:accesskey-userrights-set','s:1:\"s\";'),('en','messages:accesskey-blockip-block','s:1:\"s\";'),('en','messages:accesskey-export','s:1:\"s\";'),('en','messages:accesskey-import','s:1:\"s\";'),('en','messages:accesskey-watchlistedit-normal-submit','s:1:\"s\";'),('en','messages:accesskey-watchlistedit-raw-submit','s:1:\"s\";'),('en','messages:tooltip-pt-userpage','s:14:\"Your user page\";'),('en','messages:tooltip-pt-anonuserpage','s:51:\"The user page for the IP address you are editing as\";'),('en','messages:tooltip-pt-mytalk','s:14:\"Your talk page\";'),('en','messages:tooltip-pt-anontalk','s:43:\"Discussion about edits from this IP address\";'),('en','messages:tooltip-pt-preferences','s:16:\"Your preferences\";'),('en','messages:tooltip-pt-watchlist','s:46:\"A list of pages you are monitoring for changes\";'),('en','messages:tooltip-pt-mycontris','s:28:\"A list of your contributions\";'),('en','messages:tooltip-pt-login','s:58:\"You are encouraged to log in; however, it is not mandatory\";'),('en','messages:tooltip-pt-anonlogin','s:58:\"You are encouraged to log in; however, it is not mandatory\";'),('en','messages:tooltip-pt-logout','s:7:\"Log out\";'),('en','messages:tooltip-ca-talk','s:33:\"Discussion about the content page\";'),('en','messages:tooltip-ca-edit','s:67:\"You can edit this page. Please use the preview button before saving\";'),('en','messages:tooltip-ca-addsection','s:19:\"Start a new section\";'),('en','messages:tooltip-ca-viewsource','s:47:\"This page is protected.\nYou can view its source\";'),('en','messages:tooltip-ca-history','s:27:\"Past revisions of this page\";'),('en','messages:tooltip-ca-protect','s:17:\"Protect this page\";'),('en','messages:tooltip-ca-unprotect','s:30:\"Change protection of this page\";'),('en','messages:tooltip-ca-delete','s:16:\"Delete this page\";'),('en','messages:tooltip-ca-undelete','s:57:\"Restore the edits done to this page before it was deleted\";'),('en','messages:tooltip-ca-move','s:14:\"Move this page\";'),('en','messages:tooltip-ca-watch','s:31:\"Add this page to your watchlist\";'),('en','messages:tooltip-ca-unwatch','s:36:\"Remove this page from your watchlist\";'),('en','messages:tooltip-search','s:19:\"Search {{SITENAME}}\";'),('en','messages:tooltip-search-go','s:43:\"Go to a page with this exact name if exists\";'),('en','messages:tooltip-search-fulltext','s:30:\"Search the pages for this text\";'),('en','messages:tooltip-p-logo','s:19:\"Visit the main page\";'),('en','messages:tooltip-n-mainpage','s:19:\"Visit the main page\";'),('en','messages:tooltip-n-mainpage-description','s:19:\"Visit the main page\";'),('en','messages:tooltip-n-portal','s:56:\"About the project, what you can do, where to find things\";'),('en','messages:tooltip-n-currentevents','s:45:\"Find background information on current events\";'),('en','messages:tooltip-n-recentchanges','s:36:\"A list of recent changes in the wiki\";'),('en','messages:tooltip-n-randompage','s:18:\"Load a random page\";'),('en','messages:tooltip-n-help','s:21:\"The place to find out\";'),('en','messages:tooltip-t-whatlinkshere','s:39:\"A list of all wiki pages that link here\";'),('en','messages:tooltip-t-recentchangeslinked','s:45:\"Recent changes in pages linked from this page\";'),('en','messages:tooltip-feed-rss','s:22:\"RSS feed for this page\";'),('en','messages:tooltip-feed-atom','s:23:\"Atom feed for this page\";'),('en','messages:tooltip-t-contributions','s:36:\"A list of contributions of this user\";'),('en','messages:tooltip-t-emailuser','s:27:\"Send an e-mail to this user\";'),('en','messages:tooltip-t-upload','s:12:\"Upload files\";'),('en','messages:tooltip-t-specialpages','s:27:\"A list of all special pages\";'),('en','messages:tooltip-t-print','s:30:\"Printable version of this page\";'),('en','messages:tooltip-t-permalink','s:43:\"Permanent link to this revision of the page\";'),('en','messages:tooltip-ca-nstab-main','s:21:\"View the content page\";'),('en','messages:tooltip-ca-nstab-user','s:18:\"View the user page\";'),('en','messages:tooltip-ca-nstab-media','s:19:\"View the media page\";'),('en','messages:tooltip-ca-nstab-special','s:55:\"This is a special page, you cannot edit the page itself\";'),('en','messages:tooltip-ca-nstab-project','s:21:\"View the project page\";'),('en','messages:tooltip-ca-nstab-image','s:18:\"View the file page\";'),('en','messages:tooltip-ca-nstab-mediawiki','s:23:\"View the system message\";'),('en','messages:tooltip-ca-nstab-template','s:17:\"View the template\";'),('en','messages:tooltip-ca-nstab-help','s:18:\"View the help page\";'),('en','messages:tooltip-ca-nstab-category','s:22:\"View the category page\";'),('en','messages:tooltip-minoredit','s:25:\"Mark this as a minor edit\";'),('en','messages:tooltip-save','s:17:\"Save your changes\";'),('en','messages:tooltip-preview','s:52:\"Preview your changes, please use this before saving!\";'),('en','messages:tooltip-diff','s:39:\"Show which changes you made to the text\";'),('en','messages:tooltip-compareselectedversions','s:67:\"See the differences between the two selected revisions of this page\";'),('en','messages:tooltip-watch','s:31:\"Add this page to your watchlist\";'),('en','messages:tooltip-watchlistedit-normal-submit','s:13:\"Remove titles\";'),('en','messages:tooltip-watchlistedit-raw-submit','s:16:\"Update watchlist\";'),('en','messages:tooltip-recreate','s:49:\"Recreate the page even though it has been deleted\";'),('en','messages:tooltip-upload','s:12:\"Start upload\";'),('en','messages:tooltip-rollback','s:76:\"\"Rollback\" reverts edit(s) to this page of the last contributor in one click\";'),('en','messages:tooltip-undo','s:107:\"\"Undo\" reverts this edit and opens the edit form in preview mode. It allows adding a reason in the summary.\";'),('en','messages:tooltip-preferences-save','s:16:\"Save preferences\";'),('en','messages:tooltip-summary','s:21:\"Enter a short summary\";'),('en','messages:common.css','s:50:\"/* CSS placed here will be applied to all skins */\";'),('en','messages:standard.css','s:60:\"/* CSS placed here will affect users of the Standard skin */\";'),('en','messages:nostalgia.css','s:61:\"/* CSS placed here will affect users of the Nostalgia skin */\";'),('en','messages:cologneblue.css','s:64:\"/* CSS placed here will affect users of the Cologne Blue skin */\";'),('en','messages:monobook.css','s:60:\"/* CSS placed here will affect users of the Monobook skin */\";'),('en','messages:myskin.css','s:58:\"/* CSS placed here will affect users of the MySkin skin */\";'),('en','messages:chick.css','s:57:\"/* CSS placed here will affect users of the Chick skin */\";'),('en','messages:simple.css','s:58:\"/* CSS placed here will affect users of the Simple skin */\";'),('en','messages:modern.css','s:58:\"/* CSS placed here will affect users of the Modern skin */\";'),('en','messages:vector.css','s:58:\"/* CSS placed here will affect users of the Vector skin */\";'),('en','messages:print.css','s:50:\"/* CSS placed here will affect the print output */\";'),('en','messages:handheld.css','s:99:\"/* CSS placed here will affect handheld devices based on the skin configured in $wgHandheldStyle */\";'),('en','messages:noscript.css','s:64:\"/* CSS placed here will affect users with JavaScript disabled */\";'),('en','messages:group-autoconfirmed.css','s:58:\"/* CSS placed here will affect autoconfirmed users only */\";'),('en','messages:group-bot.css','s:43:\"/* CSS placed here will affect bots only */\";'),('en','messages:group-sysop.css','s:45:\"/* CSS placed here will affect sysops only */\";'),('en','messages:group-bureaucrat.css','s:50:\"/* CSS placed here will affect bureaucrats only */\";'),('en','messages:common.js','s:74:\"/* Any JavaScript here will be loaded for all users on every page load. */\";'),('en','messages:standard.js','s:74:\"/* Any JavaScript here will be loaded for users using the Standard skin */\";'),('en','messages:nostalgia.js','s:75:\"/* Any JavaScript here will be loaded for users using the Nostalgia skin */\";'),('en','messages:cologneblue.js','s:78:\"/* Any JavaScript here will be loaded for users using the Cologne Blue skin */\";'),('en','messages:monobook.js','s:74:\"/* Any JavaScript here will be loaded for users using the MonoBook skin */\";'),('en','messages:myskin.js','s:72:\"/* Any JavaScript here will be loaded for users using the MySkin skin */\";'),('en','messages:chick.js','s:71:\"/* Any JavaScript here will be loaded for users using the Chick skin */\";'),('en','messages:simple.js','s:72:\"/* Any JavaScript here will be loaded for users using the Simple skin */\";'),('en','messages:modern.js','s:72:\"/* Any JavaScript here will be loaded for users using the Modern skin */\";'),('en','messages:vector.js','s:72:\"/* Any JavaScript here will be loaded for users using the Vector skin */\";'),('en','messages:group-autoconfirmed.js','s:69:\"/* Any JavaScript here will be loaded for autoconfirmed users only */\";'),('en','messages:group-bot.js','s:54:\"/* Any JavaScript here will be loaded for bots only */\";'),('en','messages:group-sysop.js','s:56:\"/* Any JavaScript here will be loaded for sysops only */\";'),('en','messages:group-bureaucrat.js','s:61:\"/* Any JavaScript here will be loaded for bureaucrats only */\";'),('en','messages:notacceptable','s:69:\"The wiki server cannot provide data in a format your client can read.\";'),('en','messages:anonymous','s:50:\"Anonymous {{PLURAL:$1|user|users}} of {{SITENAME}}\";'),('en','messages:siteuser','s:20:\"{{SITENAME}} user $1\";'),('en','messages:anonuser','s:30:\"{{SITENAME}} anonymous user $1\";'),('en','messages:lastmodifiedatby','s:41:\"This page was last modified $2, $1 by $3.\";'),('en','messages:othercontribs','s:20:\"Based on work by $1.\";'),('en','messages:others','s:6:\"others\";'),('en','messages:siteusers','s:40:\"{{SITENAME}} {{PLURAL:$2|user|users}} $1\";'),('en','messages:anonusers','s:50:\"{{SITENAME}} anonymous {{PLURAL:$2|user|users}} $1\";'),('en','messages:creditspage','s:12:\"Page credits\";'),('en','messages:nocredits','s:49:\"There is no credits info available for this page.\";'),('en','messages:spamprotectiontitle','s:22:\"Spam protection filter\";'),('en','messages:spamprotectiontext','s:125:\"The text you wanted to save was blocked by the spam filter.\nThis is probably caused by a link to a blacklisted external site.\";'),('en','messages:spamprotectionmatch','s:56:\"The following text is what triggered our spam filter: $1\";'),('en','messages:spambot_username','s:22:\"MediaWiki spam cleanup\";'),('en','messages:spam_reverting','s:53:\"Reverting to last revision not containing links to $1\";'),('en','messages:spam_blanking','s:45:\"All revisions contained links to $1, blanking\";'),('en','messages:pageinfo-title','s:20:\"Information for \"$1\"\";'),('en','messages:pageinfo-header-edits','s:5:\"Edits\";'),('en','messages:pageinfo-header-watchlist','s:9:\"Watchlist\";'),('en','messages:pageinfo-header-views','s:5:\"Views\";'),('en','messages:pageinfo-subjectpage','s:4:\"Page\";'),('en','messages:pageinfo-talkpage','s:9:\"Talk page\";'),('en','messages:pageinfo-watchers','s:18:\"Number of watchers\";'),('en','messages:pageinfo-edits','s:15:\"Number of edits\";'),('en','messages:pageinfo-authors','s:26:\"Number of distinct authors\";'),('en','messages:pageinfo-views','s:15:\"Number of views\";'),('en','messages:pageinfo-viewsperedit','s:14:\"Views per edit\";'),('en','messages:skinname-standard','s:7:\"Classic\";'),('en','messages:skinname-nostalgia','s:9:\"Nostalgia\";'),('en','messages:skinname-cologneblue','s:12:\"Cologne Blue\";'),('en','messages:skinname-monobook','s:8:\"MonoBook\";'),('en','messages:skinname-myskin','s:6:\"MySkin\";'),('en','messages:skinname-chick','s:5:\"Chick\";'),('en','messages:skinname-simple','s:6:\"Simple\";'),('en','messages:skinname-modern','s:6:\"Modern\";'),('en','messages:skinname-vector','s:6:\"Vector\";'),('en','messages:markaspatrolleddiff','s:17:\"Mark as patrolled\";'),('en','messages:markaspatrolledlink','s:4:\"[$1]\";'),('en','messages:markaspatrolledtext','s:27:\"Mark this page as patrolled\";'),('en','messages:markedaspatrolled','s:19:\"Marked as patrolled\";'),('en','messages:markedaspatrolledtext','s:62:\"The selected revision of [[:$1]] has been marked as patrolled.\";'),('en','messages:rcpatroldisabled','s:30:\"Recent changes patrol disabled\";'),('en','messages:rcpatroldisabledtext','s:56:\"The recent changes patrol feature is currently disabled.\";'),('en','messages:markedaspatrollederror','s:24:\"Cannot mark as patrolled\";'),('en','messages:markedaspatrollederrortext','s:52:\"You need to specify a revision to mark as patrolled.\";'),('en','messages:markedaspatrollederror-noautopatrol','s:58:\"You are not allowed to mark your own changes as patrolled.\";'),('en','messages:patrol-log-page','s:10:\"Patrol log\";'),('en','messages:patrol-log-header','s:37:\"This is a log of patrolled revisions.\";'),('en','messages:log-show-hide-patrol','s:13:\"$1 patrol log\";'),('en','messages:deletedrevision','s:23:\"Deleted old revision $1\";'),('en','messages:filedeleteerror-short','s:23:\"Error deleting file: $1\";'),('en','messages:filedeleteerror-long','s:52:\"Errors were encountered while deleting the file:\n\n$1\";'),('en','messages:filedelete-missing','s:59:\"The file \"$1\" cannot be deleted, because it does not exist.\";'),('en','messages:filedelete-old-unregistered','s:56:\"The specified file revision \"$1\" is not in the database.\";'),('en','messages:filedelete-current-unregistered','s:47:\"The specified file \"$1\" is not in the database.\";'),('en','messages:filedelete-archive-read-only','s:60:\"The archive directory \"$1\" is not writable by the webserver.\";'),('en','messages:previousdiff','s:14:\"← Older edit\";'),('en','messages:nextdiff','s:14:\"Newer edit →\";'),('en','messages:mediawarning','s:106:\"\'\'\'Warning\'\'\': This file type may contain malicious code.\nBy executing it, your system may be compromised.\";'),('en','messages:imagemaxsize','s:55:\"Image size limit:<br />\'\'(for file description pages)\'\'\";'),('en','messages:thumbsize','s:15:\"Thumbnail size:\";'),('en','messages:widthheight','s:8:\"$1 × $2\";'),('en','messages:widthheightpage','s:37:\"$1 × $2, $3 {{PLURAL:$3|page|pages}}\";'),('en','messages:file-info','s:28:\"file size: $1, MIME type: $2\";'),('en','messages:file-info-size','s:45:\"$1 × $2 pixels, file size: $3, MIME type: $4\";'),('en','messages:file-info-size-pages','s:74:\"$1 × $2 pixels, file size: $3, MIME type: $4, $5 {{PLURAL:$5|page|pages}}\";'),('en','messages:file-nohires','s:31:\"No higher resolution available.\";'),('en','messages:svg-long-desc','s:50:\"SVG file, nominally $1 × $2 pixels, file size: $3\";'),('en','messages:show-big-image','s:15:\"Full resolution\";'),('en','messages:show-big-image-preview','s:25:\"Size of this preview: $1.\";'),('en','messages:show-big-image-other','s:47:\"Other {{PLURAL:$2|resolution|resolutions}}: $1.\";'),('en','messages:show-big-image-size','s:15:\"$1 × $2 pixels\";'),('en','messages:file-info-gif-looped','s:6:\"looped\";'),('en','messages:file-info-gif-frames','s:29:\"$1 {{PLURAL:$1|frame|frames}}\";'),('en','messages:file-info-png-looped','s:6:\"looped\";'),('en','messages:file-info-png-repeat','s:34:\"played $1 {{PLURAL:$1|time|times}}\";'),('en','messages:file-info-png-frames','s:29:\"$1 {{PLURAL:$1|frame|frames}}\";'),('en','messages:newimages','s:20:\"Gallery of new files\";'),('en','messages:imagelisttext','s:63:\"Below is a list of \'\'\'$1\'\'\' {{PLURAL:$1|file|files}} sorted $2.\";'),('en','messages:newimages-summary','s:48:\"This special page shows the last uploaded files.\";'),('en','messages:newimages-legend','s:6:\"Filter\";'),('en','messages:newimages-label','s:27:\"Filename (or a part of it):\";'),('en','messages:showhidebots','s:9:\"($1 bots)\";'),('en','messages:noimages','s:15:\"Nothing to see.\";'),('en','messages:ilsubmit','s:6:\"Search\";'),('en','messages:bydate','s:7:\"by date\";'),('en','messages:sp-newimages-showfrom','s:35:\"Show new files starting from $2, $1\";'),('en','messages:video-dims','s:12:\"$1, $2 × $3\";'),('en','messages:seconds-abbrev','s:3:\"$1s\";'),('en','messages:minutes-abbrev','s:3:\"$1m\";'),('en','messages:hours-abbrev','s:3:\"$1h\";'),('en','messages:days-abbrev','s:3:\"$1d\";'),('en','messages:seconds','s:34:\"{{PLURAL:$1|$1 second|$1 seconds}}\";'),('en','messages:minutes','s:34:\"{{PLURAL:$1|$1 minute|$1 minutes}}\";'),('en','messages:hours','s:30:\"{{PLURAL:$1|$1 hour|$1 hours}}\";'),('en','messages:days','s:28:\"{{PLURAL:$1|$1 day|$1 days}}\";'),('en','messages:ago','s:6:\"$1 ago\";'),('en','messages:bad_image_list','s:252:\"The format is as follows:\n\nOnly list items (lines starting with *) are considered.\nThe first link on a line must be a link to a bad file.\nAny subsequent links on the same line are considered to be exceptions, i.e. pages where the file may occur inline.\";'),('en','messages:variantname-zh-hans','s:4:\"hans\";'),('en','messages:variantname-zh-hant','s:4:\"hant\";'),('en','messages:variantname-zh-cn','s:2:\"cn\";'),('en','messages:variantname-zh-tw','s:2:\"tw\";'),('en','messages:variantname-zh-hk','s:2:\"hk\";'),('en','messages:variantname-zh-mo','s:2:\"mo\";'),('en','messages:variantname-zh-sg','s:2:\"sg\";'),('en','messages:variantname-zh-my','s:2:\"my\";'),('en','messages:variantname-zh','s:2:\"zh\";'),('en','messages:variantname-gan-hans','s:4:\"hans\";'),('en','messages:variantname-gan-hant','s:4:\"hant\";'),('en','messages:variantname-gan','s:3:\"gan\";'),('en','messages:variantname-sr-ec','s:5:\"sr-ec\";'),('en','messages:variantname-sr-el','s:5:\"sr-el\";'),('en','messages:variantname-sr','s:2:\"sr\";'),('en','messages:variantname-kk-kz','s:5:\"kk-kz\";'),('en','messages:variantname-kk-tr','s:5:\"kk-tr\";'),('en','messages:variantname-kk-cn','s:5:\"kk-cn\";'),('en','messages:variantname-kk-cyrl','s:7:\"kk-cyrl\";'),('en','messages:variantname-kk-latn','s:7:\"kk-latn\";'),('en','messages:variantname-kk-arab','s:7:\"kk-arab\";'),('en','messages:variantname-kk','s:2:\"kk\";'),('en','messages:variantname-ku-arab','s:7:\"ku-Arab\";'),('en','messages:variantname-ku-latn','s:7:\"ku-Latn\";'),('en','messages:variantname-ku','s:2:\"ku\";'),('en','messages:variantname-tg-cyrl','s:7:\"tg-Cyrl\";'),('en','messages:variantname-tg-latn','s:7:\"tg-Latn\";'),('en','messages:variantname-tg','s:2:\"tg\";'),('en','messages:variantname-ike-cans','s:8:\"ike-Cans\";'),('en','messages:variantname-ike-latn','s:8:\"ike-Latn\";'),('en','messages:variantname-iu','s:2:\"iu\";'),('en','messages:variantname-shi-tfng','s:8:\"shi-Tfng\";'),('en','messages:variantname-shi-latn','s:8:\"shi-Latn\";'),('en','messages:variantname-shi','s:3:\"shi\";'),('en','messages:metadata','s:8:\"Metadata\";'),('en','messages:metadata-help','s:232:\"This file contains additional information, probably added from the digital camera or scanner used to create or digitize it.\nIf the file has been modified from its original state, some details may not fully reflect the modified file.\";'),('en','messages:metadata-expand','s:21:\"Show extended details\";'),('en','messages:metadata-collapse','s:21:\"Hide extended details\";'),('en','messages:metadata-fields','s:329:\"Image metadata fields listed in this message will be included on image page display when the metadata table is collapsed.\nOthers will be hidden by default.\n* make\n* model\n* datetimeoriginal\n* exposuretime\n* fnumber\n* isospeedratings\n* focallength\n* artist\n* copyright\n* imagedescription\n* gpslatitude\n* gpslongitude\n* gpsaltitude\";'),('en','messages:metadata-langitem','s:12:\"\'\'\'$2:\'\'\' $1\";'),('en','messages:metadata-langitem-default','s:2:\"$1\";'),('en','messages:exif-imagewidth','s:5:\"Width\";'),('en','messages:exif-imagelength','s:6:\"Height\";'),('en','messages:exif-bitspersample','s:18:\"Bits per component\";'),('en','messages:exif-compression','s:18:\"Compression scheme\";'),('en','messages:exif-photometricinterpretation','s:17:\"Pixel composition\";'),('en','messages:exif-orientation','s:11:\"Orientation\";'),('en','messages:exif-samplesperpixel','s:20:\"Number of components\";'),('en','messages:exif-planarconfiguration','s:16:\"Data arrangement\";'),('en','messages:exif-ycbcrsubsampling','s:27:\"Subsampling ratio of Y to C\";'),('en','messages:exif-ycbcrpositioning','s:19:\"Y and C positioning\";'),('en','messages:exif-xresolution','s:21:\"Horizontal resolution\";'),('en','messages:exif-yresolution','s:19:\"Vertical resolution\";'),('en','messages:exif-stripoffsets','s:19:\"Image data location\";'),('en','messages:exif-rowsperstrip','s:24:\"Number of rows per strip\";'),('en','messages:exif-stripbytecounts','s:26:\"Bytes per compressed strip\";'),('en','messages:exif-jpeginterchangeformat','s:18:\"Offset to JPEG SOI\";'),('en','messages:exif-jpeginterchangeformatlength','s:18:\"Bytes of JPEG data\";'),('en','messages:exif-whitepoint','s:24:\"White point chromaticity\";'),('en','messages:exif-primarychromaticities','s:29:\"Chromaticities of primarities\";'),('en','messages:exif-ycbcrcoefficients','s:46:\"Color space transformation matrix coefficients\";'),('en','messages:exif-referenceblackwhite','s:40:\"Pair of black and white reference values\";'),('en','messages:exif-datetime','s:25:\"File change date and time\";'),('en','messages:exif-imagedescription','s:11:\"Image title\";'),('en','messages:exif-make','s:19:\"Camera manufacturer\";'),('en','messages:exif-model','s:12:\"Camera model\";'),('en','messages:exif-software','s:13:\"Software used\";'),('en','messages:exif-artist','s:6:\"Author\";'),('en','messages:exif-copyright','s:16:\"Copyright holder\";'),('en','messages:exif-exifversion','s:12:\"Exif version\";'),('en','messages:exif-flashpixversion','s:26:\"Supported Flashpix version\";'),('en','messages:exif-colorspace','s:11:\"Color space\";'),('en','messages:exif-componentsconfiguration','s:25:\"Meaning of each component\";'),('en','messages:exif-compressedbitsperpixel','s:22:\"Image compression mode\";'),('en','messages:exif-pixelydimension','s:11:\"Image width\";'),('en','messages:exif-pixelxdimension','s:12:\"Image height\";'),('en','messages:exif-usercomment','s:13:\"User comments\";'),('en','messages:exif-relatedsoundfile','s:18:\"Related audio file\";'),('en','messages:exif-datetimeoriginal','s:32:\"Date and time of data generation\";'),('en','messages:exif-datetimedigitized','s:27:\"Date and time of digitizing\";'),('en','messages:exif-subsectime','s:19:\"DateTime subseconds\";'),('en','messages:exif-subsectimeoriginal','s:27:\"DateTimeOriginal subseconds\";'),('en','messages:exif-subsectimedigitized','s:28:\"DateTimeDigitized subseconds\";'),('en','messages:exif-exposuretime','s:13:\"Exposure time\";'),('en','messages:exif-exposuretime-format','s:11:\"$1 sec ($2)\";'),('en','messages:exif-fnumber','s:8:\"F Number\";'),('en','messages:exif-fnumber-format','s:4:\"f/$1\";'),('en','messages:exif-exposureprogram','s:16:\"Exposure Program\";'),('en','messages:exif-spectralsensitivity','s:20:\"Spectral sensitivity\";'),('en','messages:exif-isospeedratings','s:16:\"ISO speed rating\";'),('en','messages:exif-shutterspeedvalue','s:18:\"APEX shutter speed\";'),('en','messages:exif-aperturevalue','s:13:\"APEX aperture\";'),('en','messages:exif-brightnessvalue','s:15:\"APEX brightness\";'),('en','messages:exif-exposurebiasvalue','s:18:\"APEX exposure bias\";'),('en','messages:exif-maxaperturevalue','s:21:\"Maximum land aperture\";'),('en','messages:exif-subjectdistance','s:16:\"Subject distance\";'),('en','messages:exif-meteringmode','s:13:\"Metering mode\";'),('en','messages:exif-lightsource','s:12:\"Light source\";'),('en','messages:exif-flash','s:5:\"Flash\";'),('en','messages:exif-focallength','s:17:\"Lens focal length\";'),('en','messages:exif-focallength-format','s:5:\"$1 mm\";'),('en','messages:exif-subjectarea','s:12:\"Subject area\";'),('en','messages:exif-flashenergy','s:12:\"Flash energy\";'),('en','messages:exif-focalplanexresolution','s:24:\"Focal plane X resolution\";'),('en','messages:exif-focalplaneyresolution','s:24:\"Focal plane Y resolution\";'),('en','messages:exif-focalplaneresolutionunit','s:27:\"Focal plane resolution unit\";'),('en','messages:exif-subjectlocation','s:16:\"Subject location\";'),('en','messages:exif-exposureindex','s:14:\"Exposure index\";'),('en','messages:exif-sensingmethod','s:14:\"Sensing method\";'),('en','messages:exif-filesource','s:11:\"File source\";'),('en','messages:exif-scenetype','s:10:\"Scene type\";'),('en','messages:exif-customrendered','s:23:\"Custom image processing\";'),('en','messages:exif-exposuremode','s:13:\"Exposure mode\";'),('en','messages:exif-whitebalance','s:13:\"White balance\";'),('en','messages:exif-digitalzoomratio','s:18:\"Digital zoom ratio\";'),('en','messages:exif-focallengthin35mmfilm','s:26:\"Focal length in 35 mm film\";'),('en','messages:exif-scenecapturetype','s:18:\"Scene capture type\";'),('en','messages:exif-gaincontrol','s:13:\"Scene control\";'),('en','messages:exif-contrast','s:8:\"Contrast\";'),('en','messages:exif-saturation','s:10:\"Saturation\";'),('en','messages:exif-sharpness','s:9:\"Sharpness\";'),('en','messages:exif-devicesettingdescription','s:27:\"Device settings description\";'),('en','messages:exif-subjectdistancerange','s:22:\"Subject distance range\";'),('en','messages:exif-imageuniqueid','s:15:\"Unique image ID\";'),('en','messages:exif-gpsversionid','s:15:\"GPS tag version\";'),('en','messages:exif-gpslatituderef','s:23:\"North or south latitude\";'),('en','messages:exif-gpslatitude','s:8:\"Latitude\";'),('en','messages:exif-gpslongituderef','s:22:\"East or west longitude\";'),('en','messages:exif-gpslongitude','s:9:\"Longitude\";'),('en','messages:exif-gpsaltituderef','s:18:\"Altitude reference\";'),('en','messages:exif-gpsaltitude','s:8:\"Altitude\";'),('en','messages:exif-gpstimestamp','s:23:\"GPS time (atomic clock)\";'),('en','messages:exif-gpssatellites','s:31:\"Satellites used for measurement\";'),('en','messages:exif-gpsstatus','s:15:\"Receiver status\";'),('en','messages:exif-gpsmeasuremode','s:16:\"Measurement mode\";'),('en','messages:exif-gpsdop','s:21:\"Measurement precision\";'),('en','messages:exif-gpsspeedref','s:10:\"Speed unit\";'),('en','messages:exif-gpsspeed','s:21:\"Speed of GPS receiver\";'),('en','messages:exif-gpstrackref','s:35:\"Reference for direction of movement\";'),('en','messages:exif-gpstrack','s:21:\"Direction of movement\";'),('en','messages:exif-gpsimgdirectionref','s:32:\"Reference for direction of image\";'),('en','messages:exif-gpsimgdirection','s:18:\"Direction of image\";'),('en','messages:exif-gpsmapdatum','s:25:\"Geodetic survey data used\";'),('en','messages:exif-gpsdestlatituderef','s:37:\"Reference for latitude of destination\";'),('en','messages:exif-gpsdestlatitude','s:20:\"Latitude destination\";'),('en','messages:exif-gpsdestlongituderef','s:38:\"Reference for longitude of destination\";'),('en','messages:exif-gpsdestlongitude','s:24:\"Longitude of destination\";'),('en','messages:exif-gpsdestbearingref','s:36:\"Reference for bearing of destination\";'),('en','messages:exif-gpsdestbearing','s:22:\"Bearing of destination\";'),('en','messages:exif-gpsdestdistanceref','s:37:\"Reference for distance to destination\";'),('en','messages:exif-gpsdestdistance','s:23:\"Distance to destination\";'),('en','messages:exif-gpsprocessingmethod','s:29:\"Name of GPS processing method\";'),('en','messages:exif-gpsareainformation','s:16:\"Name of GPS area\";'),('en','messages:exif-gpsdatestamp','s:8:\"GPS date\";'),('en','messages:exif-gpsdifferential','s:27:\"GPS differential correction\";'),('en','messages:exif-coordinate-format','s:19:\"$1° $2′ $3″ $4\";'),('en','messages:exif-jpegfilecomment','s:17:\"JPEG file comment\";'),('en','messages:exif-keywords','s:8:\"Keywords\";'),('en','messages:exif-worldregioncreated','s:42:\"World region that the picture was taken in\";'),('en','messages:exif-countrycreated','s:37:\"Country that the picture was taken in\";'),('en','messages:exif-countrycodecreated','s:50:\"Code for the country that the picture was taken in\";'),('en','messages:exif-provinceorstatecreated','s:47:\"Province or state that the picture was taken in\";'),('en','messages:exif-citycreated','s:34:\"City that the picture was taken in\";'),('en','messages:exif-sublocationcreated','s:53:\"Sublocation of the city that the picture was taken in\";'),('en','messages:exif-worldregiondest','s:18:\"World region shown\";'),('en','messages:exif-countrydest','s:13:\"Country shown\";'),('en','messages:exif-countrycodedest','s:22:\"Code for country shown\";'),('en','messages:exif-provinceorstatedest','s:23:\"Province or state shown\";'),('en','messages:exif-citydest','s:10:\"City shown\";'),('en','messages:exif-sublocationdest','s:25:\"Sublocation of city shown\";'),('en','messages:exif-objectname','s:11:\"Short title\";'),('en','messages:exif-specialinstructions','s:20:\"Special instructions\";'),('en','messages:exif-headline','s:8:\"Headline\";'),('en','messages:exif-credit','s:15:\"Credit/Provider\";'),('en','messages:exif-source','s:6:\"Source\";'),('en','messages:exif-editstatus','s:25:\"Editorial status of image\";'),('en','messages:exif-urgency','s:7:\"Urgency\";'),('en','messages:exif-fixtureidentifier','s:12:\"Fixture name\";'),('en','messages:exif-locationdest','s:17:\"Location depicted\";'),('en','messages:exif-locationdestcode','s:25:\"Code of location depicted\";'),('en','messages:exif-objectcycle','s:38:\"Time of day that media is intended for\";'),('en','messages:exif-contact','s:19:\"Contact information\";'),('en','messages:exif-writer','s:6:\"Writer\";'),('en','messages:exif-languagecode','s:8:\"Language\";'),('en','messages:exif-iimversion','s:11:\"IIM version\";'),('en','messages:exif-iimcategory','s:8:\"Category\";'),('en','messages:exif-iimsupplementalcategory','s:23:\"Supplemental categories\";'),('en','messages:exif-datetimeexpires','s:16:\"Do not use after\";'),('en','messages:exif-datetimereleased','s:11:\"Released on\";'),('en','messages:exif-originaltransmissionref','s:35:\"Original transmission location code\";'),('en','messages:exif-identifier','s:10:\"Identifier\";'),('en','messages:exif-lens','s:9:\"Lens used\";'),('en','messages:exif-serialnumber','s:23:\"Serial number of camera\";'),('en','messages:exif-cameraownername','s:15:\"Owner of camera\";'),('en','messages:exif-label','s:5:\"Label\";'),('en','messages:exif-datetimemetadata','s:31:\"Date metadata was last modified\";'),('en','messages:exif-nickname','s:22:\"Informal name of image\";'),('en','messages:exif-rating','s:17:\"Rating (out of 5)\";'),('en','messages:exif-rightscertificate','s:29:\"Rights management certificate\";'),('en','messages:exif-copyrighted','s:16:\"Copyright status\";'),('en','messages:exif-copyrightowner','s:15:\"Copyright owner\";'),('en','messages:exif-usageterms','s:11:\"Usage terms\";'),('en','messages:exif-webstatement','s:26:\"Online copyright statement\";'),('en','messages:exif-originaldocumentid','s:30:\"Unique ID of original document\";'),('en','messages:exif-licenseurl','s:25:\"URL for copyright license\";'),('en','messages:exif-morepermissionsurl','s:33:\"Alternative licensing information\";'),('en','messages:exif-attributionurl','s:39:\"When re-using this work, please link to\";'),('en','messages:exif-preferredattributionname','s:38:\"When re-using this work, please credit\";'),('en','messages:exif-pngfilecomment','s:16:\"PNG file comment\";'),('en','messages:exif-disclaimer','s:10:\"Disclaimer\";'),('en','messages:exif-contentwarning','s:15:\"Content warning\";'),('en','messages:exif-giffilecomment','s:16:\"GIF file comment\";'),('en','messages:exif-intellectualgenre','s:12:\"Type of item\";'),('en','messages:exif-subjectnewscode','s:12:\"Subject code\";'),('en','messages:exif-scenecode','s:15:\"IPTC scene code\";'),('en','messages:exif-event','s:14:\"Event depicted\";'),('en','messages:exif-organisationinimage','s:21:\"Organization depicted\";'),('en','messages:exif-personinimage','s:15:\"Person depicted\";'),('en','messages:exif-originalimageheight','s:37:\"Height of image before it was cropped\";'),('en','messages:exif-originalimagewidth','s:36:\"Width of image before it was cropped\";'),('en','messages:exif-make-value','s:2:\"$1\";'),('en','messages:exif-model-value','s:2:\"$1\";'),('en','messages:exif-software-value','s:2:\"$1\";'),('en','messages:exif-software-version-value','s:15:\"$1 (Version $2)\";'),('en','messages:exif-contact-value','s:52:\"$1\n\n$2\n<div class=\"adr\">\n$3\n\n$4, $5, $6 $7\n</div>\n$8\";'),('en','messages:exif-subjectnewscode-value','s:7:\"$2 ($1)\";'),('en','messages:exif-compression-1','s:12:\"Uncompressed\";'),('en','messages:exif-compression-2','s:64:\"CCITT Group 3 1-Dimensional Modified Huffman run length encoding\";'),('en','messages:exif-compression-3','s:26:\"CCITT Group 3 fax encoding\";'),('en','messages:exif-compression-4','s:26:\"CCITT Group 4 fax encoding\";'),('en','messages:exif-compression-5','s:3:\"LZW\";'),('en','messages:exif-compression-6','s:10:\"JPEG (old)\";'),('en','messages:exif-compression-7','s:4:\"JPEG\";'),('en','messages:exif-compression-8','s:15:\"Deflate (Adobe)\";'),('en','messages:exif-compression-32773','s:24:\"PackBits (Macintosh RLE)\";'),('en','messages:exif-compression-32946','s:15:\"Deflate (PKZIP)\";'),('en','messages:exif-compression-34712','s:8:\"JPEG2000\";'),('en','messages:exif-copyrighted-true','s:11:\"Copyrighted\";'),('en','messages:exif-copyrighted-false','s:13:\"Public domain\";'),('en','messages:exif-photometricinterpretation-2','s:3:\"RGB\";'),('en','messages:exif-photometricinterpretation-6','s:5:\"YCbCr\";'),('en','messages:exif-unknowndate','s:12:\"Unknown date\";'),('en','messages:exif-orientation-1','s:6:\"Normal\";'),('en','messages:exif-orientation-2','s:20:\"Flipped horizontally\";'),('en','messages:exif-orientation-3','s:13:\"Rotated 180°\";'),('en','messages:exif-orientation-4','s:18:\"Flipped vertically\";'),('en','messages:exif-orientation-5','s:39:\"Rotated 90° CCW and flipped vertically\";'),('en','messages:exif-orientation-6','s:16:\"Rotated 90° CCW\";'),('en','messages:exif-orientation-7','s:38:\"Rotated 90° CW and flipped vertically\";'),('en','messages:exif-orientation-8','s:15:\"Rotated 90° CW\";'),('en','messages:exif-planarconfiguration-1','s:13:\"chunky format\";'),('en','messages:exif-planarconfiguration-2','s:13:\"planar format\";'),('en','messages:exif-xyresolution-i','s:6:\"$1 dpi\";'),('en','messages:exif-xyresolution-c','s:6:\"$1 dpc\";'),('en','messages:exif-colorspace-1','s:4:\"sRGB\";'),('en','messages:exif-colorspace-65535','s:12:\"Uncalibrated\";'),('en','messages:exif-componentsconfiguration-0','s:14:\"does not exist\";'),('en','messages:exif-componentsconfiguration-1','s:1:\"Y\";'),('en','messages:exif-componentsconfiguration-2','s:2:\"Cb\";'),('en','messages:exif-componentsconfiguration-3','s:2:\"Cr\";'),('en','messages:exif-componentsconfiguration-4','s:1:\"R\";'),('en','messages:exif-componentsconfiguration-5','s:1:\"G\";'),('en','messages:exif-componentsconfiguration-6','s:1:\"B\";'),('en','messages:exif-exposureprogram-0','s:11:\"Not defined\";'),('en','messages:exif-exposureprogram-1','s:6:\"Manual\";'),('en','messages:exif-exposureprogram-2','s:14:\"Normal program\";'),('en','messages:exif-exposureprogram-3','s:17:\"Aperture priority\";'),('en','messages:exif-exposureprogram-4','s:16:\"Shutter priority\";'),('en','messages:exif-exposureprogram-5','s:47:\"Creative program (biased toward depth of field)\";'),('en','messages:exif-exposureprogram-6','s:49:\"Action program (biased toward fast shutter speed)\";'),('en','messages:exif-exposureprogram-7','s:67:\"Portrait mode (for closeup photos with the background out of focus)\";'),('en','messages:exif-exposureprogram-8','s:66:\"Landscape mode (for landscape photos with the background in focus)\";'),('en','messages:exif-subjectdistance-value','s:9:\"$1 meters\";'),('en','messages:exif-meteringmode-0','s:7:\"Unknown\";'),('en','messages:exif-meteringmode-1','s:7:\"Average\";'),('en','messages:exif-meteringmode-2','s:23:\"Center weighted average\";'),('en','messages:exif-meteringmode-3','s:4:\"Spot\";'),('en','messages:exif-meteringmode-4','s:10:\"Multi-Spot\";'),('en','messages:exif-meteringmode-5','s:7:\"Pattern\";'),('en','messages:exif-meteringmode-6','s:7:\"Partial\";'),('en','messages:exif-meteringmode-255','s:5:\"Other\";'),('en','messages:exif-lightsource-0','s:7:\"Unknown\";'),('en','messages:exif-lightsource-1','s:8:\"Daylight\";'),('en','messages:exif-lightsource-2','s:11:\"Fluorescent\";'),('en','messages:exif-lightsource-3','s:29:\"Tungsten (incandescent light)\";'),('en','messages:exif-lightsource-4','s:5:\"Flash\";'),('en','messages:exif-lightsource-9','s:12:\"Fine weather\";'),('en','messages:exif-lightsource-10','s:14:\"Cloudy weather\";'),('en','messages:exif-lightsource-11','s:5:\"Shade\";'),('en','messages:exif-lightsource-12','s:39:\"Daylight fluorescent (D 5700 – 7100K)\";'),('en','messages:exif-lightsource-13','s:40:\"Day white fluorescent (N 4600 – 5400K)\";'),('en','messages:exif-lightsource-14','s:41:\"Cool white fluorescent (W 3900 – 4500K)\";'),('en','messages:exif-lightsource-15','s:37:\"White fluorescent (WW 3200 – 3700K)\";'),('en','messages:exif-lightsource-17','s:16:\"Standard light A\";'),('en','messages:exif-lightsource-18','s:16:\"Standard light B\";'),('en','messages:exif-lightsource-19','s:16:\"Standard light C\";'),('en','messages:exif-lightsource-20','s:3:\"D55\";'),('en','messages:exif-lightsource-21','s:3:\"D65\";'),('en','messages:exif-lightsource-22','s:3:\"D75\";'),('en','messages:exif-lightsource-23','s:3:\"D50\";'),('en','messages:exif-lightsource-24','s:19:\"ISO studio tungsten\";'),('en','messages:exif-lightsource-255','s:18:\"Other light source\";'),('en','messages:exif-flash-fired-0','s:18:\"Flash did not fire\";'),('en','messages:exif-flash-fired-1','s:11:\"Flash fired\";'),('en','messages:exif-flash-return-0','s:35:\"no strobe return detection function\";'),('en','messages:exif-flash-return-2','s:32:\"strobe return light not detected\";'),('en','messages:exif-flash-return-3','s:28:\"strobe return light detected\";'),('en','messages:exif-flash-mode-1','s:23:\"compulsory flash firing\";'),('en','messages:exif-flash-mode-2','s:28:\"compulsory flash suppression\";'),('en','messages:exif-flash-mode-3','s:9:\"auto mode\";'),('en','messages:exif-flash-function-1','s:17:\"No flash function\";'),('en','messages:exif-flash-redeye-1','s:22:\"red-eye reduction mode\";'),('en','messages:exif-focalplaneresolutionunit-2','s:6:\"inches\";'),('en','messages:exif-sensingmethod-1','s:9:\"Undefined\";'),('en','messages:exif-sensingmethod-2','s:26:\"One-chip color area sensor\";'),('en','messages:exif-sensingmethod-3','s:26:\"Two-chip color area sensor\";'),('en','messages:exif-sensingmethod-4','s:28:\"Three-chip color area sensor\";'),('en','messages:exif-sensingmethod-5','s:28:\"Color sequential area sensor\";'),('en','messages:exif-sensingmethod-7','s:16:\"Trilinear sensor\";'),('en','messages:exif-sensingmethod-8','s:30:\"Color sequential linear sensor\";'),('en','messages:exif-filesource-3','s:20:\"Digital still camera\";'),('en','messages:exif-scenetype-1','s:29:\"A directly photographed image\";'),('en','messages:exif-customrendered-0','s:14:\"Normal process\";'),('en','messages:exif-customrendered-1','s:14:\"Custom process\";'),('en','messages:exif-exposuremode-0','s:13:\"Auto exposure\";'),('en','messages:exif-exposuremode-1','s:15:\"Manual exposure\";'),('en','messages:exif-exposuremode-2','s:12:\"Auto bracket\";'),('en','messages:exif-whitebalance-0','s:18:\"Auto white balance\";'),('en','messages:exif-whitebalance-1','s:20:\"Manual white balance\";'),('en','messages:exif-scenecapturetype-0','s:8:\"Standard\";'),('en','messages:exif-scenecapturetype-1','s:9:\"Landscape\";'),('en','messages:exif-scenecapturetype-2','s:8:\"Portrait\";'),('en','messages:exif-scenecapturetype-3','s:11:\"Night scene\";'),('en','messages:exif-gaincontrol-0','s:4:\"None\";'),('en','messages:exif-gaincontrol-1','s:11:\"Low gain up\";'),('en','messages:exif-gaincontrol-2','s:12:\"High gain up\";'),('en','messages:exif-gaincontrol-3','s:13:\"Low gain down\";'),('en','messages:exif-gaincontrol-4','s:14:\"High gain down\";'),('en','messages:exif-contrast-0','s:6:\"Normal\";'),('en','messages:exif-contrast-1','s:4:\"Soft\";'),('en','messages:exif-contrast-2','s:4:\"Hard\";'),('en','messages:exif-saturation-0','s:6:\"Normal\";'),('en','messages:exif-saturation-1','s:14:\"Low saturation\";'),('en','messages:exif-saturation-2','s:15:\"High saturation\";'),('en','messages:exif-sharpness-0','s:6:\"Normal\";'),('en','messages:exif-sharpness-1','s:4:\"Soft\";'),('en','messages:exif-sharpness-2','s:4:\"Hard\";'),('en','messages:exif-subjectdistancerange-0','s:7:\"Unknown\";'),('en','messages:exif-subjectdistancerange-1','s:5:\"Macro\";'),('en','messages:exif-subjectdistancerange-2','s:10:\"Close view\";'),('en','messages:exif-subjectdistancerange-3','s:12:\"Distant view\";'),('en','messages:exif-gpslatitude-n','s:14:\"North latitude\";'),('en','messages:exif-gpslatitude-s','s:14:\"South latitude\";'),('en','messages:exif-gpslongitude-e','s:14:\"East longitude\";'),('en','messages:exif-gpslongitude-w','s:14:\"West longitude\";'),('en','messages:exif-gpsaltitude-above-sealevel','s:45:\"$1 {{PLURAL:$1|meter|meters}} above sea level\";'),('en','messages:exif-gpsaltitude-below-sealevel','s:45:\"$1 {{PLURAL:$1|meter|meters}} below sea level\";'),('en','messages:exif-gpsstatus-a','s:23:\"Measurement in progress\";'),('en','messages:exif-gpsstatus-v','s:28:\"Measurement interoperability\";'),('en','messages:exif-gpsmeasuremode-2','s:25:\"2-dimensional measurement\";'),('en','messages:exif-gpsmeasuremode-3','s:25:\"3-dimensional measurement\";'),('en','messages:exif-gpsspeed-k','s:19:\"Kilometers per hour\";'),('en','messages:exif-gpsspeed-m','s:14:\"Miles per hour\";'),('en','messages:exif-gpsspeed-n','s:5:\"Knots\";'),('en','messages:exif-gpsdestdistance-k','s:10:\"Kilometers\";'),('en','messages:exif-gpsdestdistance-m','s:5:\"Miles\";'),('en','messages:exif-gpsdestdistance-n','s:14:\"Nautical miles\";'),('en','messages:exif-gpsdop-excellent','s:14:\"Excellent ($1)\";'),('en','messages:exif-gpsdop-good','s:9:\"Good ($1)\";'),('en','messages:exif-gpsdop-moderate','s:13:\"Moderate ($1)\";'),('en','messages:exif-gpsdop-fair','s:9:\"Fair ($1)\";'),('en','messages:exif-gpsdop-poor','s:9:\"Poor ($1)\";'),('en','messages:exif-objectcycle-a','s:12:\"Morning only\";'),('en','messages:exif-objectcycle-p','s:12:\"Evening only\";'),('en','messages:exif-objectcycle-b','s:24:\"Both morning and evening\";'),('en','messages:exif-gpsdirection-t','s:14:\"True direction\";'),('en','messages:exif-gpsdirection-m','s:18:\"Magnetic direction\";'),('en','messages:exif-ycbcrpositioning-1','s:8:\"Centered\";'),('en','messages:exif-ycbcrpositioning-2','s:8:\"Co-sited\";'),('en','messages:exif-dc-contributor','s:12:\"Contributors\";'),('en','messages:exif-dc-coverage','s:34:\"Spatial or temporal scope of media\";'),('en','messages:exif-dc-date','s:7:\"Date(s)\";'),('en','messages:exif-dc-publisher','s:9:\"Publisher\";'),('en','messages:exif-dc-relation','s:13:\"Related media\";'),('en','messages:exif-dc-rights','s:6:\"Rights\";'),('en','messages:exif-dc-source','s:12:\"Source media\";'),('en','messages:exif-dc-type','s:13:\"Type of media\";'),('en','messages:exif-rating-rejected','s:8:\"Rejected\";'),('en','messages:exif-isospeedratings-overflow','s:18:\"Greater than 65535\";'),('en','messages:exif-maxaperturevalue-value','s:14:\"$1 APEX (f/$2)\";'),('en','messages:exif-iimcategory-ace','s:31:\"Arts, culture and entertainment\";'),('en','messages:exif-iimcategory-clj','s:13:\"Crime and law\";'),('en','messages:exif-iimcategory-dis','s:23:\"Disasters and accidents\";'),('en','messages:exif-iimcategory-fin','s:20:\"Economy and business\";'),('en','messages:exif-iimcategory-edu','s:9:\"Education\";'),('en','messages:exif-iimcategory-evn','s:11:\"Environment\";'),('en','messages:exif-iimcategory-hth','s:6:\"Health\";'),('en','messages:exif-iimcategory-hum','s:14:\"Human interest\";'),('en','messages:exif-iimcategory-lab','s:6:\"Labour\";'),('en','messages:exif-iimcategory-lif','s:21:\"Lifestyle and leisure\";'),('en','messages:exif-iimcategory-pol','s:8:\"Politics\";'),('en','messages:exif-iimcategory-rel','s:19:\"Religion and belief\";'),('en','messages:exif-iimcategory-sci','s:22:\"Science and technology\";'),('en','messages:exif-iimcategory-soi','s:13:\"Social issues\";'),('en','messages:exif-iimcategory-spo','s:6:\"Sports\";'),('en','messages:exif-iimcategory-war','s:24:\"War, conflict and unrest\";'),('en','messages:exif-iimcategory-wea','s:7:\"Weather\";'),('en','messages:exif-urgency-normal','s:11:\"Normal ($1)\";'),('en','messages:exif-urgency-low','s:8:\"Low ($1)\";'),('en','messages:exif-urgency-high','s:9:\"High ($1)\";'),('en','messages:exif-urgency-other','s:26:\"User-defined priority ($1)\";'),('en','messages:edit-externally','s:44:\"Edit this file using an external application\";'),('en','messages:edit-externally-help','s:100:\"(See the [//www.mediawiki.org/wiki/Manual:External_editors setup instructions] for more information)\";'),('en','messages:watchlistall2','s:3:\"all\";'),('en','messages:namespacesall','s:3:\"all\";'),('en','messages:monthsall','s:3:\"all\";'),('en','messages:limitall','s:3:\"all\";'),('en','messages:confirmemail','s:22:\"Confirm e-mail address\";'),('en','messages:confirmemail_noemail','s:92:\"You do not have a valid e-mail address set in your [[Special:Preferences|user preferences]].\";'),('en','messages:confirmemail_text','s:284:\"{{SITENAME}} requires that you validate your e-mail address before using e-mail features.\nActivate the button below to send a confirmation mail to your address.\nThe mail will include a link containing a code;\nload the link in your browser to confirm that your e-mail address is valid.\";'),('en','messages:confirmemail_pending','s:180:\"A confirmation code has already been e-mailed to you;\nif you recently created your account, you may wish to wait a few minutes for it to arrive before trying to request a new code.\";'),('en','messages:confirmemail_send','s:24:\"Mail a confirmation code\";'),('en','messages:confirmemail_sent','s:25:\"Confirmation e-mail sent.\";'),('en','messages:confirmemail_oncreate','s:176:\"A confirmation code was sent to your e-mail address.\nThis code is not required to log in, but you will need to provide it before enabling any e-mail-based features in the wiki.\";'),('en','messages:confirmemail_sendfailed','s:129:\"{{SITENAME}} could not send your confirmation mail.\nPlease check your e-mail address for invalid characters.\n\nMailer returned: $1\";'),('en','messages:confirmemail_invalid','s:53:\"Invalid confirmation code.\nThe code may have expired.\";'),('en','messages:confirmemail_needlogin','s:46:\"You need to $1 to confirm your e-mail address.\";'),('en','messages:confirmemail_success','s:100:\"Your e-mail address has been confirmed.\nYou may now [[Special:UserLogin|log in]] and enjoy the wiki.\";'),('en','messages:confirmemail_loggedin','s:43:\"Your e-mail address has now been confirmed.\";'),('en','messages:confirmemail_error','s:46:\"Something went wrong saving your confirmation.\";'),('en','messages:confirmemail_subject','s:40:\"{{SITENAME}} e-mail address confirmation\";'),('en','messages:confirmemail_body','s:400:\"Someone, probably you, from IP address $1,\nhas registered an account \"$2\" with this e-mail address on {{SITENAME}}.\n\nTo confirm that this account really does belong to you and activate\ne-mail features on {{SITENAME}}, open this link in your browser:\n\n$3\n\nIf you did *not* register the account, follow this link\nto cancel the e-mail address confirmation:\n\n$5\n\nThis confirmation code will expire at $4.\";'),('en','messages:confirmemail_body_changed','s:415:\"Someone, probably you, from IP address $1,\nhas changed the e-mail address of the account \"$2\" to this address on {{SITENAME}}.\n\nTo confirm that this account really does belong to you and reactivate\ne-mail features on {{SITENAME}}, open this link in your browser:\n\n$3\n\nIf the account does *not* belong to you, follow this link\nto cancel the e-mail address confirmation:\n\n$5\n\nThis confirmation code will expire at $4.\";'),('en','messages:confirmemail_body_set','s:411:\"Someone, probably you, from IP address $1,\nhas set the e-mail address of the account \"$2\" to this address on {{SITENAME}}.\n\nTo confirm that this account really does belong to you and reactivate\ne-mail features on {{SITENAME}}, open this link in your browser:\n\n$3\n\nIf the account does *not* belong to you, follow this link\nto cancel the e-mail address confirmation:\n\n$5\n\nThis confirmation code will expire at $4.\";'),('en','messages:confirmemail_invalidated','s:36:\"E-mail address confirmation canceled\";'),('en','messages:invalidateemail','s:26:\"Cancel e-mail confirmation\";'),('en','messages:scarytranscludedisabled','s:36:\"[Interwiki transcluding is disabled]\";'),('en','messages:scarytranscludefailed','s:30:\"[Template fetch failed for $1]\";'),('en','messages:scarytranscludetoolong','s:17:\"[URL is too long]\";'),('en','messages:deletedwhileediting','s:63:\"\'\'\'Warning\'\'\': This page was deleted after you started editing!\";'),('en','messages:confirmrecreate','s:168:\"User [[User:$1|$1]] ([[User talk:$1|talk]]) deleted this page after you started editing with reason:\n: \'\'$2\'\'\nPlease confirm that you really want to recreate this page.\";'),('en','messages:confirmrecreate-noreason','s:148:\"User [[User:$1|$1]] ([[User talk:$1|talk]]) deleted this page after you started editing.  Please confirm that you really want to recreate this page.\";'),('en','messages:recreate','s:8:\"Recreate\";'),('en','messages:unit-pixel','s:2:\"px\";'),('en','messages:confirm_purge_button','s:2:\"OK\";'),('en','messages:confirm-purge-top','s:29:\"Clear the cache of this page?\";'),('en','messages:confirm-purge-bottom','s:79:\"Purging a page clears the cache and forces the most current revision to appear.\";'),('en','messages:confirm-watch-button','s:2:\"OK\";'),('en','messages:confirm-watch-top','s:32:\"Add this page to your watchlist?\";'),('en','messages:confirm-unwatch-button','s:2:\"OK\";'),('en','messages:confirm-unwatch-top','s:37:\"Remove this page from your watchlist?\";'),('en','messages:semicolon-separator','s:6:\";&#32;\";'),('en','messages:comma-separator','s:6:\",&#32;\";'),('en','messages:colon-separator','s:6:\":&#32;\";'),('en','messages:autocomment-prefix','s:6:\"-&#32;\";'),('en','messages:pipe-separator','s:11:\"&#32;|&#32;\";'),('en','messages:word-separator','s:5:\"&#32;\";'),('en','messages:ellipsis','s:3:\"...\";'),('en','messages:percent','s:3:\"$1%\";'),('en','messages:parentheses','s:4:\"($1)\";'),('en','messages:imgmultipageprev','s:17:\"← previous page\";'),('en','messages:imgmultipagenext','s:13:\"next page →\";'),('en','messages:imgmultigo','s:3:\"Go!\";'),('en','messages:imgmultigoto','s:13:\"Go to page $1\";'),('en','messages:ascending_abbrev','s:3:\"asc\";'),('en','messages:descending_abbrev','s:4:\"desc\";'),('en','messages:table_pager_next','s:9:\"Next page\";'),('en','messages:table_pager_prev','s:13:\"Previous page\";'),('en','messages:table_pager_first','s:10:\"First page\";'),('en','messages:table_pager_last','s:9:\"Last page\";'),('en','messages:table_pager_limit','s:22:\"Show $1 items per page\";'),('en','messages:table_pager_limit_label','s:15:\"Items per page:\";'),('en','messages:table_pager_limit_submit','s:2:\"Go\";'),('en','messages:table_pager_empty','s:10:\"No results\";'),('en','messages:autosumm-blank','s:16:\"Blanked the page\";'),('en','messages:autosumm-replace','s:26:\"Replaced content with \"$1\"\";'),('en','messages:autoredircomment','s:25:\"Redirected page to [[$1]]\";'),('en','messages:autosumm-new','s:22:\"Created page with \"$1\"\";'),('en','messages:autoblock_whitelist','s:406:\"AOL http://webmaster.info.aol.com/proxyinfo.html\n*64.12.96.0/19\n*149.174.160.0/20\n*152.163.240.0/21\n*152.163.248.0/22\n*152.163.252.0/23\n*152.163.96.0/22\n*152.163.100.0/23\n*195.93.32.0/22\n*195.93.48.0/22\n*195.93.64.0/19\n*195.93.96.0/19\n*195.93.16.0/20\n*198.81.0.0/22\n*198.81.16.0/20\n*198.81.8.0/23\n*202.67.64.128/25\n*205.188.192.0/20\n*205.188.208.0/23\n*205.188.112.0/20\n*205.188.146.144/30\n*207.200.112.0/21\";'),('en','messages:size-bytes','s:4:\"$1 B\";'),('en','messages:size-kilobytes','s:5:\"$1 KB\";'),('en','messages:size-megabytes','s:5:\"$1 MB\";'),('en','messages:size-gigabytes','s:5:\"$1 GB\";'),('en','messages:size-terabytes','s:5:\"$1 TB\";'),('en','messages:size-petabytes','s:5:\"$1 PB\";'),('en','messages:size-exabytes','s:5:\"$1 EB\";'),('en','messages:size-zetabytes','s:5:\"$1 ZB\";'),('en','messages:size-yottabytes','s:5:\"$1 YB\";'),('en','messages:bitrate-bits','s:5:\"$1bps\";'),('en','messages:bitrate-kilobits','s:6:\"$1kbps\";'),('en','messages:bitrate-megabits','s:6:\"$1Mbps\";'),('en','messages:bitrate-gigabits','s:6:\"$1Gbps\";'),('en','messages:bitrate-terabits','s:6:\"$1Tbps\";'),('en','messages:bitrate-petabits','s:6:\"$1Pbps\";'),('en','messages:bitrate-exabits','s:6:\"$1Ebps\";'),('en','messages:bitrate-zetabits','s:6:\"$1Zbps\";'),('en','messages:bitrate-yottabits','s:6:\"$1Ybps\";'),('en','messages:livepreview-loading','s:10:\"Loading...\";'),('en','messages:livepreview-ready','s:17:\"Loading... Ready!\";'),('en','messages:livepreview-failed','s:40:\"Live preview failed!\nTry normal preview.\";'),('en','messages:livepreview-error','s:47:\"Failed to connect: $1 \"$2\".\nTry normal preview.\";'),('en','messages:lag-warn-normal','s:81:\"Changes newer than $1 {{PLURAL:$1|second|seconds}} may not be shown in this list.\";'),('en','messages:lag-warn-high','s:114:\"Due to high database server lag, changes newer than $1 {{PLURAL:$1|second|seconds}} may not be shown in this list.\";'),('en','messages:watchlistedit-numitems','s:78:\"Your watchlist contains {{PLURAL:$1|1 title|$1 titles}}, excluding talk pages.\";'),('en','messages:watchlistedit-noitems','s:34:\"Your watchlist contains no titles.\";'),('en','messages:watchlistedit-normal-title','s:14:\"Edit watchlist\";'),('en','messages:watchlistedit-normal-legend','s:28:\"Remove titles from watchlist\";'),('en','messages:watchlistedit-normal-explain','s:197:\"Titles on your watchlist are shown below.\nTo remove a title, check the box next to it, and click \"{{int:Watchlistedit-normal-submit}}\".\nYou can also [[Special:EditWatchlist/raw|edit the raw list]].\";'),('en','messages:watchlistedit-normal-submit','s:13:\"Remove titles\";'),('en','messages:watchlistedit-normal-done','s:69:\"{{PLURAL:$1|1 title was|$1 titles were}} removed from your watchlist:\";'),('en','messages:watchlistedit-raw-title','s:18:\"Edit raw watchlist\";'),('en','messages:watchlistedit-raw-legend','s:18:\"Edit raw watchlist\";'),('en','messages:watchlistedit-raw-explain','s:241:\"Titles on your watchlist are shown below, and can be edited by adding to and removing from the list;\none title per line.\nWhen finished, click \"{{int:Watchlistedit-raw-submit}}\".\nYou can also [[Special:EditWatchlist|use the standard editor]].\";'),('en','messages:watchlistedit-raw-titles','s:7:\"Titles:\";'),('en','messages:watchlistedit-raw-submit','s:16:\"Update watchlist\";'),('en','messages:watchlistedit-raw-done','s:32:\"Your watchlist has been updated.\";'),('en','messages:watchlistedit-raw-added','s:47:\"{{PLURAL:$1|1 title was|$1 titles were}} added:\";'),('en','messages:watchlistedit-raw-removed','s:49:\"{{PLURAL:$1|1 title was|$1 titles were}} removed:\";'),('en','messages:watchlisttools-view','s:21:\"View relevant changes\";'),('en','messages:watchlisttools-edit','s:23:\"View and edit watchlist\";'),('en','messages:watchlisttools-raw','s:18:\"Edit raw watchlist\";'),('en','messages:iranian-calendar-m1','s:9:\"Farvardin\";'),('en','messages:iranian-calendar-m2','s:11:\"Ordibehesht\";'),('en','messages:iranian-calendar-m3','s:7:\"Khordad\";'),('en','messages:iranian-calendar-m4','s:3:\"Tir\";'),('en','messages:iranian-calendar-m5','s:6:\"Mordad\";'),('en','messages:iranian-calendar-m6','s:9:\"Shahrivar\";'),('en','messages:iranian-calendar-m7','s:4:\"Mehr\";'),('en','messages:iranian-calendar-m8','s:4:\"Aban\";'),('en','messages:iranian-calendar-m9','s:4:\"Azar\";'),('en','messages:iranian-calendar-m10','s:3:\"Dey\";'),('en','messages:iranian-calendar-m11','s:6:\"Bahman\";'),('en','messages:iranian-calendar-m12','s:6:\"Esfand\";'),('en','messages:hijri-calendar-m1','s:8:\"Muharram\";'),('en','messages:hijri-calendar-m2','s:5:\"Safar\";'),('en','messages:hijri-calendar-m3','s:14:\"Rabi\' al-awwal\";'),('en','messages:hijri-calendar-m4','s:14:\"Rabi\' al-thani\";'),('en','messages:hijri-calendar-m5','s:15:\"Jumada al-awwal\";'),('en','messages:hijri-calendar-m6','s:15:\"Jumada al-thani\";'),('en','messages:hijri-calendar-m7','s:5:\"Rajab\";'),('en','messages:hijri-calendar-m8','s:8:\"Sha\'aban\";'),('en','messages:hijri-calendar-m9','s:7:\"Ramadan\";'),('en','messages:hijri-calendar-m10','s:7:\"Shawwal\";'),('en','messages:hijri-calendar-m11','s:13:\"Dhu al-Qi\'dah\";'),('en','messages:hijri-calendar-m12','s:13:\"Dhu al-Hijjah\";'),('en','messages:hebrew-calendar-m1','s:7:\"Tishrei\";'),('en','messages:hebrew-calendar-m2','s:8:\"Cheshvan\";'),('en','messages:hebrew-calendar-m3','s:6:\"Kislev\";'),('en','messages:hebrew-calendar-m4','s:5:\"Tevet\";'),('en','messages:hebrew-calendar-m5','s:6:\"Shevat\";'),('en','messages:hebrew-calendar-m6','s:4:\"Adar\";'),('en','messages:hebrew-calendar-m6a','s:6:\"Adar I\";'),('en','messages:hebrew-calendar-m6b','s:7:\"Adar II\";'),('en','messages:hebrew-calendar-m7','s:5:\"Nisan\";'),('en','messages:hebrew-calendar-m8','s:4:\"Iyar\";'),('en','messages:hebrew-calendar-m9','s:5:\"Sivan\";'),('en','messages:hebrew-calendar-m10','s:5:\"Tamuz\";'),('en','messages:hebrew-calendar-m11','s:2:\"Av\";'),('en','messages:hebrew-calendar-m12','s:4:\"Elul\";'),('en','messages:hebrew-calendar-m1-gen','s:7:\"Tishrei\";'),('en','messages:hebrew-calendar-m2-gen','s:8:\"Cheshvan\";'),('en','messages:hebrew-calendar-m3-gen','s:6:\"Kislev\";'),('en','messages:hebrew-calendar-m4-gen','s:5:\"Tevet\";'),('en','messages:hebrew-calendar-m5-gen','s:6:\"Shevat\";'),('en','messages:hebrew-calendar-m6-gen','s:4:\"Adar\";'),('en','messages:hebrew-calendar-m6a-gen','s:6:\"Adar I\";'),('en','messages:hebrew-calendar-m6b-gen','s:7:\"Adar II\";'),('en','messages:hebrew-calendar-m7-gen','s:5:\"Nisan\";'),('en','messages:hebrew-calendar-m8-gen','s:4:\"Iyar\";'),('en','messages:hebrew-calendar-m9-gen','s:5:\"Sivan\";'),('en','messages:hebrew-calendar-m10-gen','s:5:\"Tamuz\";'),('en','messages:hebrew-calendar-m11-gen','s:2:\"Av\";'),('en','messages:hebrew-calendar-m12-gen','s:4:\"Elul\";'),('en','messages:signature','s:52:\"[[{{ns:user}}:$1|$2]] ([[{{ns:user_talk}}:$1|talk]])\";'),('en','messages:signature-anon','s:36:\"[[{{#special:Contributions}}/$1|$2]]\";'),('en','messages:timezone-utc','s:3:\"UTC\";'),('en','messages:unknown_extension_tag','s:26:\"Unknown extension tag \"$1\"\";'),('en','messages:duplicate-defaultsort','s:77:\"\'\'\'Warning:\'\'\' Default sort key \"$2\" overrides earlier default sort key \"$1\".\";'),('en','messages:version','s:7:\"Version\";'),('en','messages:version-extensions','s:20:\"Installed extensions\";'),('en','messages:version-specialpages','s:13:\"Special pages\";'),('en','messages:version-parserhooks','s:12:\"Parser hooks\";'),('en','messages:version-variables','s:9:\"Variables\";'),('en','messages:version-antispam','s:15:\"Spam prevention\";'),('en','messages:version-skins','s:5:\"Skins\";'),('en','messages:version-api','s:3:\"API\";'),('en','messages:version-other','s:5:\"Other\";'),('en','messages:version-mediahandlers','s:14:\"Media handlers\";'),('en','messages:version-hooks','s:5:\"Hooks\";'),('en','messages:version-extension-functions','s:19:\"Extension functions\";'),('en','messages:version-parser-extensiontags','s:21:\"Parser extension tags\";'),('en','messages:version-parser-function-hooks','s:21:\"Parser function hooks\";'),('en','messages:version-hook-name','s:9:\"Hook name\";'),('en','messages:version-hook-subscribedby','s:13:\"Subscribed by\";'),('en','messages:version-version','s:12:\"(Version $1)\";'),('en','messages:version-svn-revision','s:5:\"(r$2)\";'),('en','messages:version-license','s:7:\"License\";'),('en','messages:version-poweredby-credits','s:88:\"This wiki is powered by \'\'\'[//www.mediawiki.org/ MediaWiki]\'\'\', copyright © 2001-$1 $2.\";'),('en','messages:version-poweredby-others','s:41:\"[{{SERVER}}{{SCRIPTPATH}}/CREDITS others]\";'),('en','messages:version-license-info','s:777:\"MediaWiki is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.\n\nMediaWiki is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n\nYou should have received [{{SERVER}}{{SCRIPTPATH}}/COPYING a copy of the GNU General Public License] along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA or [//www.gnu.org/licenses/old-licenses/gpl-2.0.html read it online].\";'),('en','messages:version-software','s:18:\"Installed software\";'),('en','messages:version-software-product','s:7:\"Product\";'),('en','messages:version-software-version','s:7:\"Version\";'),('en','messages:filepath','s:9:\"File path\";'),('en','messages:filepath-page','s:5:\"File:\";'),('en','messages:filepath-submit','s:2:\"Go\";'),('en','messages:filepath-summary','s:161:\"This special page returns the complete path for a file.\nImages are shown in full resolution, other file types are started with their associated program directly.\";'),('en','messages:fileduplicatesearch','s:26:\"Search for duplicate files\";'),('en','messages:fileduplicatesearch-summary','s:48:\"Search for duplicate files based on hash values.\";'),('en','messages:fileduplicatesearch-legend','s:22:\"Search for a duplicate\";'),('en','messages:fileduplicatesearch-filename','s:9:\"Filename:\";'),('en','messages:fileduplicatesearch-submit','s:6:\"Search\";'),('en','messages:fileduplicatesearch-info','s:52:\"$1 × $2 pixel<br />File size: $3<br />MIME type: $4\";'),('en','messages:fileduplicatesearch-result-1','s:43:\"The file \"$1\" has no identical duplication.\";'),('en','messages:fileduplicatesearch-result-n','s:82:\"The file \"$1\" has {{PLURAL:$2|1 identical duplication|$2 identical duplications}}.\";'),('en','messages:fileduplicatesearch-noresults','s:25:\"No file named \"$1\" found.\";'),('en','messages:specialpages','s:13:\"Special pages\";'),('en','messages:specialpages-summary','s:0:\"\";'),('en','messages:specialpages-note','s:102:\"----\n* Normal special pages.\n* <span class=\"mw-specialpagerestricted\">Restricted special pages.</span>\";'),('en','messages:specialpages-group-maintenance','s:19:\"Maintenance reports\";'),('en','messages:specialpages-group-other','s:19:\"Other special pages\";'),('en','messages:specialpages-group-login','s:22:\"Login / create account\";'),('en','messages:specialpages-group-changes','s:23:\"Recent changes and logs\";'),('en','messages:specialpages-group-media','s:25:\"Media reports and uploads\";'),('en','messages:specialpages-group-users','s:16:\"Users and rights\";'),('en','messages:specialpages-group-highuse','s:14:\"High use pages\";'),('en','messages:specialpages-group-pages','s:14:\"Lists of pages\";'),('en','messages:specialpages-group-pagetools','s:10:\"Page tools\";'),('en','messages:specialpages-group-wiki','s:19:\"Wiki data and tools\";'),('en','messages:specialpages-group-redirects','s:25:\"Redirecting special pages\";'),('en','messages:specialpages-group-spam','s:10:\"Spam tools\";'),('en','messages:blankpage','s:10:\"Blank page\";'),('en','messages:intentionallyblankpage','s:38:\"This page is intentionally left blank.\";'),('en','messages:external_image_whitelist','s:440:\" #Leave this line exactly as it is<pre>\n#Put regular expression fragments (just the part that goes between the //) below\n#These will be matched with the URLs of external (hotlinked) images\n#Those that match will be displayed as images, otherwise only a link to the image will be shown\n#Lines beginning with # are treated as comments\n#This is case-insensitive\n\n#Put all regex fragments above this line. Leave this line exactly as it is</pre>\";'),('en','messages:tags','s:17:\"Valid change tags\";'),('en','messages:tag-filter','s:28:\"[[Special:Tags|Tag]] filter:\";'),('en','messages:tag-filter-submit','s:6:\"Filter\";'),('en','messages:tags-title','s:4:\"Tags\";'),('en','messages:tags-intro','s:84:\"This page lists the tags that the software may mark an edit with, and their meaning.\";'),('en','messages:tags-tag','s:8:\"Tag name\";'),('en','messages:tags-display-header','s:26:\"Appearance on change lists\";'),('en','messages:tags-description-header','s:27:\"Full description of meaning\";'),('en','messages:tags-hitcount-header','s:14:\"Tagged changes\";'),('en','messages:tags-edit','s:4:\"edit\";'),('en','messages:tags-hitcount','s:31:\"$1 {{PLURAL:$1|change|changes}}\";'),('en','messages:comparepages','s:13:\"Compare pages\";'),('en','messages:compare-selector','s:22:\"Compare page revisions\";'),('en','messages:compare-page1','s:6:\"Page 1\";'),('en','messages:compare-page2','s:6:\"Page 2\";'),('en','messages:compare-rev1','s:10:\"Revision 1\";'),('en','messages:compare-rev2','s:10:\"Revision 2\";'),('en','messages:compare-submit','s:7:\"Compare\";'),('en','messages:compare-invalid-title','s:35:\"The title you specified is invalid.\";'),('en','messages:compare-title-not-exists','s:39:\"The title you specified does not exist.\";'),('en','messages:compare-revision-not-exists','s:42:\"The revision you specified does not exist.\";'),('en','messages:dberr-header','s:23:\"This wiki has a problem\";'),('en','messages:dberr-problems','s:56:\"Sorry!\nThis site is experiencing technical difficulties.\";'),('en','messages:dberr-again','s:40:\"Try waiting a few minutes and reloading.\";'),('en','messages:dberr-info','s:40:\"(Cannot contact the database server: $1)\";'),('en','messages:dberr-usegoogle','s:49:\"You can try searching via Google in the meantime.\";'),('en','messages:dberr-outofdate','s:58:\"Note that their indexes of our content may be out of date.\";'),('en','messages:dberr-cachederror','s:71:\"This is a cached copy of the requested page, and may not be up to date.\";'),('en','messages:htmlform-invalid-input','s:42:\"There are problems with some of your input\";'),('en','messages:htmlform-select-badoption','s:46:\"The value you specified is not a valid option.\";'),('en','messages:htmlform-int-invalid','s:42:\"The value you specified is not an integer.\";'),('en','messages:htmlform-float-invalid','s:40:\"The value you specified is not a number.\";'),('en','messages:htmlform-int-toolow','s:50:\"The value you specified is below the minimum of $1\";'),('en','messages:htmlform-int-toohigh','s:50:\"The value you specified is above the maximum of $1\";'),('en','messages:htmlform-required','s:22:\"This value is required\";'),('en','messages:htmlform-submit','s:6:\"Submit\";'),('en','messages:htmlform-reset','s:12:\"Undo changes\";'),('en','messages:htmlform-selectorother-other','s:5:\"Other\";'),('en','messages:sqlite-has-fts','s:32:\"$1 with full-text search support\";'),('en','messages:sqlite-no-fts','s:35:\"$1 without full-text search support\";'),('en','messages:logentry-delete-delete','s:18:\"$1 deleted page $3\";'),('en','messages:logentry-delete-restore','s:19:\"$1 restored page $3\";'),('en','messages:logentry-delete-event','s:74:\"$1 changed visibility of {{PLURAL:$5|a log event|$5 log events}} on $3: $4\";'),('en','messages:logentry-delete-revision','s:77:\"$1 changed visibility of {{PLURAL:$5|a revision|$5 revisions}} on page $3: $4\";'),('en','messages:logentry-delete-event-legacy','s:41:\"$1 changed visibility of log events on $3\";'),('en','messages:logentry-delete-revision-legacy','s:45:\"$1 changed visibility of revisions on page $3\";'),('en','messages:logentry-suppress-delete','s:21:\"$1 suppressed page $3\";'),('en','messages:logentry-suppress-event','s:83:\"$1 secretly changed visibility of {{PLURAL:$5|a log event|$5 log events}} on $3: $4\";'),('en','messages:logentry-suppress-revision','s:86:\"$1 secretly changed visibility of {{PLURAL:$5|a revision|$5 revisions}} on page $3: $4\";'),('en','messages:logentry-suppress-event-legacy','s:50:\"$1 secretly changed visibility of log events on $3\";'),('en','messages:logentry-suppress-revision-legacy','s:54:\"$1 secretly changed visibility of revisions on page $3\";'),('en','messages:revdelete-content-hid','s:14:\"content hidden\";'),('en','messages:revdelete-summary-hid','s:19:\"edit summary hidden\";'),('en','messages:revdelete-uname-hid','s:15:\"username hidden\";'),('en','messages:revdelete-content-unhid','s:16:\"content unhidden\";'),('en','messages:revdelete-summary-unhid','s:21:\"edit summary unhidden\";'),('en','messages:revdelete-uname-unhid','s:17:\"username unhidden\";'),('en','messages:revdelete-restricted','s:38:\"applied restrictions to administrators\";'),('en','messages:revdelete-unrestricted','s:39:\"removed restrictions for administrators\";'),('en','messages:logentry-move-move','s:22:\"$1 moved page $3 to $4\";'),('en','messages:logentry-move-move-noredirect','s:49:\"$1 moved page $3 to $4 without leaving a redirect\";'),('en','messages:logentry-move-move_redir','s:36:\"$1 moved page $3 to $4 over redirect\";'),('en','messages:logentry-move-move_redir-noredirect','s:65:\"$1 moved page $3 to $4 over a redirect without leaving a redirect\";'),('en','messages:logentry-patrol-patrol','s:42:\"$1 marked revision $4 of page $3 patrolled\";'),('en','messages:logentry-patrol-patrol-auto','s:56:\"$1 automatically marked revision $4 of page $3 patrolled\";'),('en','messages:logentry-newusers-newusers','s:25:\"$1 created a user account\";'),('en','messages:logentry-newusers-create','s:25:\"$1 created a user account\";'),('en','messages:logentry-newusers-create2','s:28:\"$1 created a user account $3\";'),('en','messages:logentry-newusers-autocreate','s:36:\"Account $1 was created automatically\";'),('en','messages:newuserlog-byemail','s:23:\"password sent by e-mail\";'),('en','messages:feedback-bugornote','s:235:\"If you are ready to describe a technical problem in detail please [$1 report a bug].\nOtherwise, you can use the easy form below. Your comment will be added to the page \"[$3 $2]\", along with your username and what browser you are using.\";'),('en','messages:feedback-subject','s:8:\"Subject:\";'),('en','messages:feedback-message','s:8:\"Message:\";'),('en','messages:feedback-cancel','s:6:\"Cancel\";'),('en','messages:feedback-submit','s:15:\"Submit Feedback\";'),('en','messages:feedback-adding','s:26:\"Adding feedback to page...\";'),('en','messages:feedback-error1','s:35:\"Error: Unrecognized result from API\";'),('en','messages:feedback-error2','s:18:\"Error: Edit failed\";'),('en','messages:feedback-error3','s:27:\"Error: No response from API\";'),('en','messages:feedback-thanks','s:60:\"Thanks! Your feedback has been posted to the page \"[$2 $1]\".\";'),('en','messages:feedback-close','s:4:\"Done\";'),('en','messages:feedback-bugcheck','s:68:\"Great! Just check that it is not already one of the [$1 known bugs].\";'),('en','messages:feedback-bugnew','s:27:\"I checked. Report a new bug\";'),('en','messages:api-error-badaccess-groups','s:51:\"You are not permitted to upload files to this wiki.\";'),('en','messages:api-error-badtoken','s:26:\"Internal error: Bad token.\";'),('en','messages:api-error-copyuploaddisabled','s:44:\"Uploading by URL is disabled on this server.\";'),('en','messages:api-error-duplicate','s:109:\"There {{PLURAL:$1|is [$2 another file]|are [$2 some other files]}} already on the site with the same content.\";'),('en','messages:api-error-duplicate-archive','s:155:\"There {{PLURAL:$1|was [$2 another file]|were [$2 some other files]}} already on the site with the same content, but {{PLURAL:$1|it was|they were}} deleted.\";'),('en','messages:api-error-duplicate-archive-popup-title','s:75:\"Duplicate {{PLURAL:$1|file that has|files that have}} already been deleted.\";'),('en','messages:api-error-duplicate-popup-title','s:35:\"Duplicate {{PLURAL:$1|file|files}}.\";'),('en','messages:api-error-empty-file','s:33:\"The file you submitted was empty.\";'),('en','messages:api-error-emptypage','s:41:\"Creating new, empty pages is not allowed.\";'),('en','messages:api-error-fetchfileerror','s:61:\"Internal error: Something went wrong while fetching the file.\";'),('en','messages:api-error-file-too-large','s:37:\"The file you submitted was too large.\";'),('en','messages:api-error-filename-tooshort','s:26:\"The filename is too short.\";'),('en','messages:api-error-filetype-banned','s:28:\"This type of file is banned.\";'),('en','messages:api-error-filetype-missing','s:37:\"The filename is missing an extension.\";'),('en','messages:api-error-hookaborted','s:63:\"The modification you tried to make was aborted by an extension.\";'),('en','messages:api-error-http','s:44:\"Internal error: Unable to connect to server.\";'),('en','messages:api-error-illegal-filename','s:28:\"The filename is not allowed.\";'),('en','messages:api-error-internal-error','s:77:\"Internal error: Something went wrong with processing your upload on the wiki.\";'),('en','messages:api-error-invalid-file-key','s:56:\"Internal error: File was not found in temporary storage.\";'),('en','messages:api-error-missingparam','s:46:\"Internal error: Missing parameters on request.\";'),('en','messages:api-error-missingresult','s:58:\"Internal error: Could not determine if the copy succeeded.\";'),('en','messages:api-error-mustbeloggedin','s:38:\"You must be logged in to upload files.\";'),('en','messages:api-error-mustbeposted','s:43:\"Internal error: Request requires HTTP POST.\";'),('en','messages:api-error-noimageinfo','s:84:\"The upload succeeded, but the server did not give us any information about the file.\";'),('en','messages:api-error-nomodule','s:37:\"Internal error: No upload module set.\";'),('en','messages:api-error-ok-but-empty','s:40:\"Internal error: No response from server.\";'),('en','messages:api-error-overwrite','s:44:\"Overwriting an existing file is not allowed.\";'),('en','messages:api-error-stashfailed','s:54:\"Internal error: Server failed to store temporary file.\";'),('en','messages:api-error-timeout','s:52:\"The server did not respond within the expected time.\";'),('en','messages:api-error-unclassified','s:26:\"An unknown error occurred.\";'),('en','messages:api-error-unknown-code','s:20:\"Unknown error: \"$1\".\";'),('en','messages:api-error-unknown-error','s:69:\"Internal error: Something went wrong when trying to upload your file.\";'),('en','messages:api-error-unknown-warning','s:22:\"Unknown warning: \"$1\".\";'),('en','messages:api-error-unknownerror','s:20:\"Unknown error: \"$1\".\";'),('en','messages:api-error-uploaddisabled','s:35:\"Uploading is disabled on this wiki.\";'),('en','messages:api-error-verification-error','s:56:\"This file might be corrupt, or have the wrong extension.\";'),('en','rtl','b:0;'),('en','capitalizeAllNouns','b:0;'),('en','digitTransformTable','N;'),('en','separatorTransformTable','N;'),('en','fallback8bitEncoding','s:12:\"windows-1252\";'),('en','linkPrefixExtension','b:0;'),('en','linkTrail','s:18:\"/^([a-z]+)(.*)$/sD\";'),('en','namespaceAliases','a:0:{}'),('en','dateFormats','a:12:{s:8:\"mdy time\";s:3:\"H:i\";s:8:\"mdy date\";s:6:\"F j, Y\";s:8:\"mdy both\";s:11:\"H:i, F j, Y\";s:8:\"dmy time\";s:3:\"H:i\";s:8:\"dmy date\";s:5:\"j F Y\";s:8:\"dmy both\";s:10:\"H:i, j F Y\";s:8:\"ymd time\";s:3:\"H:i\";s:8:\"ymd date\";s:5:\"Y F j\";s:8:\"ymd both\";s:10:\"H:i, Y F j\";s:13:\"ISO 8601 time\";s:11:\"xnH:xni:xns\";s:13:\"ISO 8601 date\";s:11:\"xnY-xnm-xnd\";s:13:\"ISO 8601 both\";s:25:\"xnY-xnm-xnd\"T\"xnH:xni:xns\";}'),('en','datePreferences','a:5:{i:0;s:7:\"default\";i:1;s:3:\"mdy\";i:2;s:3:\"dmy\";i:3;s:3:\"ymd\";i:4;s:8:\"ISO 8601\";}'),('en','datePreferenceMigrationMap','a:4:{i:0;s:7:\"default\";i:1;s:3:\"mdy\";i:2;s:3:\"dmy\";i:3;s:3:\"ymd\";}'),('en','defaultDateFormat','s:10:\"dmy or mdy\";'),('en','extraUserToggles','a:0:{}'),('en','specialPageAliases','a:103:{s:7:\"Captcha\";a:1:{i:0;s:7:\"Captcha\";}s:7:\"Gadgets\";a:1:{i:0;s:7:\"Gadgets\";}s:4:\"Nuke\";a:1:{i:0;s:4:\"Nuke\";}s:10:\"Renameuser\";a:1:{i:0;s:10:\"RenameUser\";}s:11:\"Activeusers\";a:1:{i:0;s:11:\"ActiveUsers\";}s:11:\"Allmessages\";a:1:{i:0;s:11:\"AllMessages\";}s:8:\"Allpages\";a:1:{i:0;s:8:\"AllPages\";}s:12:\"Ancientpages\";a:1:{i:0;s:12:\"AncientPages\";}s:8:\"Badtitle\";a:1:{i:0;s:8:\"Badtitle\";}s:9:\"Blankpage\";a:1:{i:0;s:9:\"BlankPage\";}s:5:\"Block\";a:3:{i:0;s:5:\"Block\";i:1;s:7:\"BlockIP\";i:2;s:9:\"BlockUser\";}s:7:\"Blockme\";a:1:{i:0;s:7:\"BlockMe\";}s:11:\"Booksources\";a:1:{i:0;s:11:\"BookSources\";}s:15:\"BrokenRedirects\";a:1:{i:0;s:15:\"BrokenRedirects\";}s:10:\"Categories\";a:1:{i:0;s:10:\"Categories\";}s:11:\"ChangeEmail\";a:1:{i:0;s:11:\"ChangeEmail\";}s:14:\"ChangePassword\";a:3:{i:0;s:14:\"ChangePassword\";i:1;s:9:\"ResetPass\";i:2;s:13:\"ResetPassword\";}s:12:\"ComparePages\";a:1:{i:0;s:12:\"ComparePages\";}s:12:\"Confirmemail\";a:1:{i:0;s:12:\"ConfirmEmail\";}s:13:\"Contributions\";a:2:{i:0;s:13:\"Contributions\";i:1;s:8:\"Contribs\";}s:13:\"CreateAccount\";a:1:{i:0;s:13:\"CreateAccount\";}s:12:\"Deadendpages\";a:1:{i:0;s:12:\"DeadendPages\";}s:20:\"DeletedContributions\";a:1:{i:0;s:20:\"DeletedContributions\";}s:15:\"Disambiguations\";a:1:{i:0;s:15:\"Disambiguations\";}s:15:\"DoubleRedirects\";a:1:{i:0;s:15:\"DoubleRedirects\";}s:13:\"EditWatchlist\";a:1:{i:0;s:13:\"EditWatchlist\";}s:9:\"Emailuser\";a:1:{i:0;s:9:\"EmailUser\";}s:6:\"Export\";a:1:{i:0;s:6:\"Export\";}s:15:\"Fewestrevisions\";a:1:{i:0;s:15:\"FewestRevisions\";}s:19:\"FileDuplicateSearch\";a:1:{i:0;s:19:\"FileDuplicateSearch\";}s:8:\"Filepath\";a:1:{i:0;s:8:\"FilePath\";}s:6:\"Import\";a:1:{i:0;s:6:\"Import\";}s:15:\"Invalidateemail\";a:1:{i:0;s:15:\"InvalidateEmail\";}s:14:\"JavaScriptTest\";a:1:{i:0;s:14:\"JavaScriptTest\";}s:9:\"BlockList\";a:3:{i:0;s:9:\"BlockList\";i:1;s:10:\"ListBlocks\";i:2;s:11:\"IPBlockList\";}s:10:\"LinkSearch\";a:1:{i:0;s:10:\"LinkSearch\";}s:10:\"Listadmins\";a:1:{i:0;s:10:\"ListAdmins\";}s:8:\"Listbots\";a:1:{i:0;s:8:\"ListBots\";}s:9:\"Listfiles\";a:3:{i:0;s:9:\"ListFiles\";i:1;s:8:\"FileList\";i:2;s:9:\"ImageList\";}s:15:\"Listgrouprights\";a:2:{i:0;s:15:\"ListGroupRights\";i:1;s:15:\"UserGroupRights\";}s:13:\"Listredirects\";a:1:{i:0;s:13:\"ListRedirects\";}s:9:\"Listusers\";a:2:{i:0;s:9:\"ListUsers\";i:1;s:8:\"UserList\";}s:6:\"Lockdb\";a:1:{i:0;s:6:\"LockDB\";}s:3:\"Log\";a:2:{i:0;s:3:\"Log\";i:1;s:4:\"Logs\";}s:11:\"Lonelypages\";a:2:{i:0;s:11:\"LonelyPages\";i:1;s:13:\"OrphanedPages\";}s:9:\"Longpages\";a:1:{i:0;s:9:\"LongPages\";}s:12:\"MergeHistory\";a:1:{i:0;s:12:\"MergeHistory\";}s:10:\"MIMEsearch\";a:1:{i:0;s:10:\"MIMESearch\";}s:14:\"Mostcategories\";a:1:{i:0;s:14:\"MostCategories\";}s:10:\"Mostimages\";a:3:{i:0;s:15:\"MostLinkedFiles\";i:1;s:9:\"MostFiles\";i:2;s:10:\"MostImages\";}s:10:\"Mostlinked\";a:2:{i:0;s:15:\"MostLinkedPages\";i:1;s:10:\"MostLinked\";}s:20:\"Mostlinkedcategories\";a:2:{i:0;s:20:\"MostLinkedCategories\";i:1;s:18:\"MostUsedCategories\";}s:19:\"Mostlinkedtemplates\";a:2:{i:0;s:19:\"MostLinkedTemplates\";i:1;s:17:\"MostUsedTemplates\";}s:13:\"Mostrevisions\";a:1:{i:0;s:13:\"MostRevisions\";}s:8:\"Movepage\";a:1:{i:0;s:8:\"MovePage\";}s:15:\"Mycontributions\";a:1:{i:0;s:15:\"MyContributions\";}s:6:\"Mypage\";a:1:{i:0;s:6:\"MyPage\";}s:6:\"Mytalk\";a:1:{i:0;s:6:\"MyTalk\";}s:9:\"Myuploads\";a:1:{i:0;s:9:\"MyUploads\";}s:9:\"Newimages\";a:2:{i:0;s:8:\"NewFiles\";i:1;s:9:\"NewImages\";}s:8:\"Newpages\";a:1:{i:0;s:8:\"NewPages\";}s:13:\"PasswordReset\";a:1:{i:0;s:13:\"PasswordReset\";}s:13:\"PermanentLink\";a:2:{i:0;s:13:\"PermanentLink\";i:1;s:9:\"PermaLink\";}s:12:\"Popularpages\";a:1:{i:0;s:12:\"PopularPages\";}s:11:\"Preferences\";a:1:{i:0;s:11:\"Preferences\";}s:11:\"Prefixindex\";a:1:{i:0;s:11:\"PrefixIndex\";}s:14:\"Protectedpages\";a:1:{i:0;s:14:\"ProtectedPages\";}s:15:\"Protectedtitles\";a:1:{i:0;s:15:\"ProtectedTitles\";}s:10:\"Randompage\";a:2:{i:0;s:6:\"Random\";i:1;s:10:\"RandomPage\";}s:14:\"Randomredirect\";a:1:{i:0;s:14:\"RandomRedirect\";}s:13:\"Recentchanges\";a:1:{i:0;s:13:\"RecentChanges\";}s:19:\"Recentchangeslinked\";a:2:{i:0;s:19:\"RecentChangesLinked\";i:1;s:14:\"RelatedChanges\";}s:14:\"Revisiondelete\";a:1:{i:0;s:14:\"RevisionDelete\";}s:12:\"RevisionMove\";a:1:{i:0;s:12:\"RevisionMove\";}s:6:\"Search\";a:1:{i:0;s:6:\"Search\";}s:10:\"Shortpages\";a:1:{i:0;s:10:\"ShortPages\";}s:12:\"Specialpages\";a:1:{i:0;s:12:\"SpecialPages\";}s:10:\"Statistics\";a:1:{i:0;s:10:\"Statistics\";}s:4:\"Tags\";a:1:{i:0;s:4:\"Tags\";}s:7:\"Unblock\";a:1:{i:0;s:7:\"Unblock\";}s:23:\"Uncategorizedcategories\";a:1:{i:0;s:23:\"UncategorizedCategories\";}s:19:\"Uncategorizedimages\";a:2:{i:0;s:18:\"UncategorizedFiles\";i:1;s:19:\"UncategorizedImages\";}s:18:\"Uncategorizedpages\";a:1:{i:0;s:18:\"UncategorizedPages\";}s:22:\"Uncategorizedtemplates\";a:1:{i:0;s:22:\"UncategorizedTemplates\";}s:8:\"Undelete\";a:1:{i:0;s:8:\"Undelete\";}s:8:\"Unlockdb\";a:1:{i:0;s:8:\"UnlockDB\";}s:16:\"Unusedcategories\";a:1:{i:0;s:16:\"UnusedCategories\";}s:12:\"Unusedimages\";a:2:{i:0;s:11:\"UnusedFiles\";i:1;s:12:\"UnusedImages\";}s:15:\"Unusedtemplates\";a:1:{i:0;s:15:\"UnusedTemplates\";}s:14:\"Unwatchedpages\";a:1:{i:0;s:14:\"UnwatchedPages\";}s:6:\"Upload\";a:1:{i:0;s:6:\"Upload\";}s:11:\"UploadStash\";a:1:{i:0;s:11:\"UploadStash\";}s:9:\"Userlogin\";a:1:{i:0;s:9:\"UserLogin\";}s:10:\"Userlogout\";a:1:{i:0;s:10:\"UserLogout\";}s:10:\"Userrights\";a:3:{i:0;s:10:\"UserRights\";i:1;s:9:\"MakeSysop\";i:2;s:7:\"MakeBot\";}s:7:\"Version\";a:1:{i:0;s:7:\"Version\";}s:16:\"Wantedcategories\";a:1:{i:0;s:16:\"WantedCategories\";}s:11:\"Wantedfiles\";a:1:{i:0;s:11:\"WantedFiles\";}s:11:\"Wantedpages\";a:2:{i:0;s:11:\"WantedPages\";i:1;s:11:\"BrokenLinks\";}s:15:\"Wantedtemplates\";a:1:{i:0;s:15:\"WantedTemplates\";}s:9:\"Watchlist\";a:1:{i:0;s:9:\"Watchlist\";}s:13:\"Whatlinkshere\";a:1:{i:0;s:13:\"WhatLinksHere\";}s:16:\"Withoutinterwiki\";a:1:{i:0;s:16:\"WithoutInterwiki\";}}'),('en','imageFiles','a:11:{s:11:\"button-bold\";s:15:\"button_bold.png\";s:13:\"button-italic\";s:17:\"button_italic.png\";s:11:\"button-link\";s:15:\"button_link.png\";s:14:\"button-extlink\";s:18:\"button_extlink.png\";s:15:\"button-headline\";s:19:\"button_headline.png\";s:12:\"button-image\";s:16:\"button_image.png\";s:12:\"button-media\";s:16:\"button_media.png\";s:11:\"button-math\";s:15:\"button_math.png\";s:13:\"button-nowiki\";s:17:\"button_nowiki.png\";s:10:\"button-sig\";s:14:\"button_sig.png\";s:9:\"button-hr\";s:13:\"button_hr.png\";}'),('en','preloadedMessages','a:95:{i:0;s:9:\"aboutpage\";i:1;s:9:\"aboutsite\";i:2;s:17:\"accesskey-ca-edit\";i:3;s:20:\"accesskey-ca-history\";i:4;s:23:\"accesskey-ca-nstab-main\";i:5;s:17:\"accesskey-ca-talk\";i:6;s:25:\"accesskey-n-currentevents\";i:7;s:16:\"accesskey-n-help\";i:8;s:32:\"accesskey-n-mainpage-description\";i:9;s:18:\"accesskey-n-portal\";i:10;s:22:\"accesskey-n-randompage\";i:11;s:25:\"accesskey-n-recentchanges\";i:12;s:23:\"accesskey-n-sitesupport\";i:13;s:16:\"accesskey-p-logo\";i:14;s:18:\"accesskey-pt-login\";i:15;s:16:\"accesskey-search\";i:16;s:25:\"accesskey-search-fulltext\";i:17;s:19:\"accesskey-search-go\";i:18;s:21:\"accesskey-t-permalink\";i:19;s:17:\"accesskey-t-print\";i:20;s:31:\"accesskey-t-recentchangeslinked\";i:21;s:24:\"accesskey-t-specialpages\";i:22;s:25:\"accesskey-t-whatlinkshere\";i:23;s:10:\"anonnotice\";i:24;s:15:\"colon-separator\";i:25;s:13:\"currentevents\";i:26;s:17:\"currentevents-url\";i:27;s:14:\"disclaimerpage\";i:28;s:11:\"disclaimers\";i:29;s:4:\"edit\";i:30;s:4:\"help\";i:31;s:8:\"helppage\";i:32;s:13:\"history_short\";i:33;s:6:\"jumpto\";i:34;s:16:\"jumptonavigation\";i:35;s:12:\"jumptosearch\";i:36;s:14:\"lastmodifiedat\";i:37;s:8:\"mainpage\";i:38;s:20:\"mainpage-description\";i:39;s:23:\"nav-login-createaccount\";i:40;s:10:\"navigation\";i:41;s:10:\"nstab-main\";i:42;s:15:\"opensearch-desc\";i:43;s:14:\"pagecategories\";i:44;s:18:\"pagecategorieslink\";i:45;s:9:\"pagetitle\";i:46;s:23:\"pagetitle-view-mainpage\";i:47;s:9:\"permalink\";i:48;s:13:\"personaltools\";i:49;s:6:\"portal\";i:50;s:10:\"portal-url\";i:51;s:16:\"printableversion\";i:52;s:7:\"privacy\";i:53;s:11:\"privacypage\";i:54;s:10:\"randompage\";i:55;s:14:\"randompage-url\";i:56;s:13:\"recentchanges\";i:57;s:17:\"recentchanges-url\";i:58;s:27:\"recentchangeslinked-toolbox\";i:59;s:13:\"retrievedfrom\";i:60;s:6:\"search\";i:61;s:13:\"searcharticle\";i:62;s:12:\"searchbutton\";i:63;s:7:\"sidebar\";i:64;s:14:\"site-atom-feed\";i:65;s:13:\"site-rss-feed\";i:66;s:10:\"sitenotice\";i:67;s:12:\"specialpages\";i:68;s:7:\"tagline\";i:69;s:4:\"talk\";i:70;s:7:\"toolbox\";i:71;s:15:\"tooltip-ca-edit\";i:72;s:18:\"tooltip-ca-history\";i:73;s:21:\"tooltip-ca-nstab-main\";i:74;s:15:\"tooltip-ca-talk\";i:75;s:23:\"tooltip-n-currentevents\";i:76;s:14:\"tooltip-n-help\";i:77;s:30:\"tooltip-n-mainpage-description\";i:78;s:16:\"tooltip-n-portal\";i:79;s:20:\"tooltip-n-randompage\";i:80;s:23:\"tooltip-n-recentchanges\";i:81;s:21:\"tooltip-n-sitesupport\";i:82;s:14:\"tooltip-p-logo\";i:83;s:20:\"tooltip-p-navigation\";i:84;s:16:\"tooltip-pt-login\";i:85;s:14:\"tooltip-search\";i:86;s:23:\"tooltip-search-fulltext\";i:87;s:17:\"tooltip-search-go\";i:88;s:19:\"tooltip-t-permalink\";i:89;s:15:\"tooltip-t-print\";i:90;s:29:\"tooltip-t-recentchangeslinked\";i:91;s:22:\"tooltip-t-specialpages\";i:92;s:23:\"tooltip-t-whatlinkshere\";i:93;s:5:\"views\";i:94;s:13:\"whatlinkshere\";}'),('en','namespaceGenderAliases','a:0:{}'),('en','digitGroupingPattern','N;'),('en','fallbackSequence','a:0:{}'),('en','deps','a:15:{i:0;O:14:\"FileDependency\":2:{s:8:\"filename\";s:61:\"/opt/lampp/htdocs/mediawiki/languages/messages/MessagesEn.php\";s:9:\"timestamp\";i:1350219490;}i:1;O:14:\"FileDependency\":2:{s:8:\"filename\";s:71:\"/opt/lampp/htdocs/mediawiki/extensions/ConfirmEdit/ConfirmEdit.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:2;O:14:\"FileDependency\":2:{s:8:\"filename\";s:72:\"/opt/lampp/htdocs/mediawiki/extensions/ConfirmEdit/ConfirmEdit.alias.php\";s:9:\"timestamp\";i:1350219490;}i:3;O:14:\"FileDependency\":2:{s:8:\"filename\";s:63:\"/opt/lampp/htdocs/mediawiki/extensions/Gadgets/Gadgets.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:4;O:14:\"FileDependency\":2:{s:8:\"filename\";s:64:\"/opt/lampp/htdocs/mediawiki/extensions/Gadgets/Gadgets.alias.php\";s:9:\"timestamp\";i:1350219490;}i:5;O:14:\"FileDependency\":2:{s:8:\"filename\";s:57:\"/opt/lampp/htdocs/mediawiki/extensions/Nuke/Nuke.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:6;O:14:\"FileDependency\":2:{s:8:\"filename\";s:58:\"/opt/lampp/htdocs/mediawiki/extensions/Nuke/Nuke.alias.php\";s:9:\"timestamp\";i:1350219490;}i:7;O:14:\"FileDependency\":2:{s:8:\"filename\";s:79:\"/opt/lampp/htdocs/mediawiki/extensions/ParserFunctions/ParserFunctions.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:8;O:14:\"FileDependency\":2:{s:8:\"filename\";s:85:\"/opt/lampp/htdocs/mediawiki/extensions/ParserFunctions/ParserFunctions.i18n.magic.php\";s:9:\"timestamp\";i:1350219490;}i:9;O:14:\"FileDependency\":2:{s:8:\"filename\";s:69:\"/opt/lampp/htdocs/mediawiki/extensions/Renameuser/Renameuser.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:10;O:14:\"FileDependency\":2:{s:8:\"filename\";s:70:\"/opt/lampp/htdocs/mediawiki/extensions/Renameuser/Renameuser.alias.php\";s:9:\"timestamp\";i:1350219490;}i:11;O:14:\"FileDependency\":2:{s:8:\"filename\";s:61:\"/opt/lampp/htdocs/mediawiki/extensions/Vector/Vector.i18n.php\";s:9:\"timestamp\";i:1350219490;}i:12;O:14:\"FileDependency\":2:{s:8:\"filename\";s:69:\"/opt/lampp/htdocs/mediawiki/extensions/WikiEditor/WikiEditor.i18n.php\";s:9:\"timestamp\";i:1350219490;}s:24:\"wgExtensionMessagesFiles\";O:16:\"GlobalDependency\":2:{s:4:\"name\";s:24:\"wgExtensionMessagesFiles\";s:5:\"value\";a:12:{s:11:\"ConfirmEdit\";s:71:\"/opt/lampp/htdocs/mediawiki/extensions/ConfirmEdit/ConfirmEdit.i18n.php\";s:16:\"ConfirmEditAlias\";s:72:\"/opt/lampp/htdocs/mediawiki/extensions/ConfirmEdit/ConfirmEdit.alias.php\";s:7:\"Gadgets\";s:63:\"/opt/lampp/htdocs/mediawiki/extensions/Gadgets/Gadgets.i18n.php\";s:12:\"GadgetsAlias\";s:64:\"/opt/lampp/htdocs/mediawiki/extensions/Gadgets/Gadgets.alias.php\";s:4:\"Nuke\";s:57:\"/opt/lampp/htdocs/mediawiki/extensions/Nuke/Nuke.i18n.php\";s:9:\"NukeAlias\";s:58:\"/opt/lampp/htdocs/mediawiki/extensions/Nuke/Nuke.alias.php\";s:15:\"ParserFunctions\";s:79:\"/opt/lampp/htdocs/mediawiki/extensions/ParserFunctions/ParserFunctions.i18n.php\";s:20:\"ParserFunctionsMagic\";s:85:\"/opt/lampp/htdocs/mediawiki/extensions/ParserFunctions/ParserFunctions.i18n.magic.php\";s:10:\"Renameuser\";s:69:\"/opt/lampp/htdocs/mediawiki/extensions/Renameuser/Renameuser.i18n.php\";s:17:\"RenameuserAliases\";s:70:\"/opt/lampp/htdocs/mediawiki/extensions/Renameuser/Renameuser.alias.php\";s:6:\"Vector\";s:61:\"/opt/lampp/htdocs/mediawiki/extensions/Vector/Vector.i18n.php\";s:10:\"WikiEditor\";s:69:\"/opt/lampp/htdocs/mediawiki/extensions/WikiEditor/WikiEditor.i18n.php\";}}s:7:\"version\";O:18:\"ConstantDependency\":2:{s:4:\"name\";s:13:\"MW_LC_VERSION\";s:5:\"value\";i:2;}}'),('en','list','a:1:{s:8:\"messages\";a:3684:{i:0;s:12:\"captcha-edit\";i:1;s:12:\"captcha-desc\";i:2;s:13:\"captcha-label\";i:3;s:14:\"captcha-addurl\";i:4;s:16:\"captcha-badlogin\";i:5;s:21:\"captcha-createaccount\";i:6;s:26:\"captcha-createaccount-fail\";i:7;s:14:\"captcha-create\";i:8;s:17:\"captcha-sendemail\";i:9;s:22:\"captcha-sendemail-fail\";i:10;s:21:\"captcha-disabledinapi\";i:11;s:17:\"captchahelp-title\";i:12;s:26:\"captchahelp-cookies-needed\";i:13;s:16:\"captchahelp-text\";i:14;s:24:\"captcha-addurl-whitelist\";i:15;s:17:\"right-skipcaptcha\";i:16;s:12:\"gadgets-desc\";i:17;s:13:\"prefs-gadgets\";i:18;s:17:\"gadgets-prefstext\";i:19;s:7:\"gadgets\";i:20;s:18:\"gadgets-definition\";i:21;s:13:\"gadgets-title\";i:22;s:16:\"gadgets-pagetext\";i:23;s:12:\"gadgets-uses\";i:24;s:23:\"gadgets-required-rights\";i:25;s:22:\"gadgets-required-skins\";i:26;s:15:\"gadgets-default\";i:27;s:14:\"gadgets-export\";i:28;s:20:\"gadgets-export-title\";i:29;s:17:\"gadgets-not-found\";i:30;s:19:\"gadgets-export-text\";i:31;s:23:\"gadgets-export-download\";i:32;s:4:\"nuke\";i:33;s:11:\"action-nuke\";i:34;s:9:\"nuke-desc\";i:35;s:12:\"nuke-nopages\";i:36;s:9:\"nuke-list\";i:37;s:18:\"nuke-list-multiple\";i:38;s:18:\"nuke-defaultreason\";i:39;s:19:\"nuke-multiplepeople\";i:40;s:10:\"nuke-tools\";i:41;s:16:\"nuke-submit-user\";i:42;s:18:\"nuke-submit-delete\";i:43;s:10:\"right-nuke\";i:44;s:11:\"nuke-select\";i:45;s:13:\"nuke-userorip\";i:46;s:13:\"nuke-maxpages\";i:47;s:11:\"nuke-editby\";i:48;s:12:\"nuke-deleted\";i:49;s:16:\"nuke-not-deleted\";i:50;s:16:\"nuke-delete-more\";i:51;s:12:\"nuke-pattern\";i:52;s:19:\"nuke-nopages-global\";i:53;s:16:\"nuke-viewchanges\";i:54;s:10:\"pfunc_desc\";i:55;s:16:\"pfunc_time_error\";i:56;s:19:\"pfunc_time_too_long\";i:57;s:18:\"pfunc_time_too_big\";i:58;s:27:\"pfunc_rel2abs_invalid_depth\";i:59;s:26:\"pfunc_expr_stack_exhausted\";i:60;s:28:\"pfunc_expr_unexpected_number\";i:61;s:29:\"pfunc_expr_preg_match_failure\";i:62;s:28:\"pfunc_expr_unrecognised_word\";i:63;s:30:\"pfunc_expr_unexpected_operator\";i:64;s:26:\"pfunc_expr_missing_operand\";i:65;s:37:\"pfunc_expr_unexpected_closing_bracket\";i:66;s:35:\"pfunc_expr_unrecognised_punctuation\";i:67;s:27:\"pfunc_expr_unclosed_bracket\";i:68;s:27:\"pfunc_expr_division_by_zero\";i:69;s:27:\"pfunc_expr_invalid_argument\";i:70;s:30:\"pfunc_expr_invalid_argument_ln\";i:71;s:24:\"pfunc_expr_unknown_error\";i:72;s:23:\"pfunc_expr_not_a_number\";i:73;s:21:\"pfunc_string_too_long\";i:74;s:31:\"pfunc-convert-dimensionmismatch\";i:75;s:25:\"pfunc-convert-unknownunit\";i:76;s:30:\"pfunc-convert-unknowndimension\";i:77;s:33:\"pfunc-convert-invalidcompoundunit\";i:78;s:20:\"pfunc-convert-nounit\";i:79;s:32:\"pfunc-convert-doublecompoundunit\";i:80;s:30:\"pfunc-convert-dimension-length\";i:81;s:28:\"pfunc-convert-dimension-area\";i:82;s:30:\"pfunc-convert-dimension-volume\";i:83;s:28:\"pfunc-convert-dimension-time\";i:84;s:35:\"pfunc-convert-dimension-timesquared\";i:85;s:28:\"pfunc-convert-dimension-mass\";i:86;s:29:\"pfunc-convert-dimension-speed\";i:87;s:35:\"pfunc-convert-dimension-temperature\";i:88;s:36:\"pfunc-convert-dimension-acceleration\";i:89;s:29:\"pfunc-convert-dimension-force\";i:90;s:30:\"pfunc-convert-dimension-torque\";i:91;s:30:\"pfunc-convert-dimension-energy\";i:92;s:29:\"pfunc-convert-dimension-power\";i:93;s:32:\"pfunc-convert-dimension-pressure\";i:94;s:31:\"pfunc-convert-dimension-density\";i:95;s:46:\"pfunc-convert-dimension-fuelefficiencypositive\";i:96;s:46:\"pfunc-convert-dimension-fuelefficiencynegative\";i:97;s:26:\"pfunc-convert-prefix-yotta\";i:98;s:26:\"pfunc-convert-prefix-zetta\";i:99;s:24:\"pfunc-convert-prefix-exa\";i:100;s:25:\"pfunc-convert-prefix-peta\";i:101;s:25:\"pfunc-convert-prefix-tera\";i:102;s:25:\"pfunc-convert-prefix-giga\";i:103;s:25:\"pfunc-convert-prefix-mega\";i:104;s:25:\"pfunc-convert-prefix-kilo\";i:105;s:26:\"pfunc-convert-prefix-hecto\";i:106;s:25:\"pfunc-convert-prefix-deca\";i:107;s:25:\"pfunc-convert-prefix-deci\";i:108;s:26:\"pfunc-convert-prefix-centi\";i:109;s:26:\"pfunc-convert-prefix-milli\";i:110;s:26:\"pfunc-convert-prefix-micro\";i:111;s:25:\"pfunc-convert-prefix-nano\";i:112;s:25:\"pfunc-convert-prefix-pico\";i:113;s:26:\"pfunc-convert-prefix-femto\";i:114;s:25:\"pfunc-convert-prefix-atto\";i:115;s:26:\"pfunc-convert-prefix-zepto\";i:116;s:26:\"pfunc-convert-prefix-yocto\";i:117;s:31:\"pfunc-convert-prefix-yotta-abbr\";i:118;s:31:\"pfunc-convert-prefix-zetta-abbr\";i:119;s:29:\"pfunc-convert-prefix-exa-abbr\";i:120;s:30:\"pfunc-convert-prefix-peta-abbr\";i:121;s:30:\"pfunc-convert-prefix-tera-abbr\";i:122;s:30:\"pfunc-convert-prefix-giga-abbr\";i:123;s:30:\"pfunc-convert-prefix-mega-abbr\";i:124;s:30:\"pfunc-convert-prefix-kilo-abbr\";i:125;s:31:\"pfunc-convert-prefix-hecto-abbr\";i:126;s:30:\"pfunc-convert-prefix-deca-abbr\";i:127;s:30:\"pfunc-convert-prefix-deci-abbr\";i:128;s:31:\"pfunc-convert-prefix-centi-abbr\";i:129;s:31:\"pfunc-convert-prefix-milli-abbr\";i:130;s:31:\"pfunc-convert-prefix-micro-abbr\";i:131;s:30:\"pfunc-convert-prefix-nano-abbr\";i:132;s:30:\"pfunc-convert-prefix-pico-abbr\";i:133;s:31:\"pfunc-convert-prefix-femto-abbr\";i:134;s:30:\"pfunc-convert-prefix-atto-abbr\";i:135;s:31:\"pfunc-convert-prefix-zepto-abbr\";i:136;s:31:\"pfunc-convert-prefix-yocto-abbr\";i:137;s:31:\"pfunc-convert-unit-length-metre\";i:138;s:34:\"pfunc-convert-unit-length-angstrom\";i:139;s:30:\"pfunc-convert-unit-length-mile\";i:140;s:33:\"pfunc-convert-unit-length-furlong\";i:141;s:31:\"pfunc-convert-unit-length-chain\";i:142;s:29:\"pfunc-convert-unit-length-rod\";i:143;s:32:\"pfunc-convert-unit-length-fathom\";i:144;s:30:\"pfunc-convert-unit-length-yard\";i:145;s:30:\"pfunc-convert-unit-length-foot\";i:146;s:30:\"pfunc-convert-unit-length-hand\";i:147;s:30:\"pfunc-convert-unit-length-inch\";i:148;s:38:\"pfunc-convert-unit-length-nauticalmile\";i:149;s:40:\"pfunc-convert-unit-length-nauticalmileuk\";i:150;s:40:\"pfunc-convert-unit-length-nauticalmileus\";i:151;s:32:\"pfunc-convert-unit-length-parsec\";i:152;s:35:\"pfunc-convert-unit-length-lightyear\";i:153;s:42:\"pfunc-convert-unit-length-astronomicalunit\";i:154;s:36:\"pfunc-convert-unit-length-metre-abbr\";i:155;s:39:\"pfunc-convert-unit-length-angstrom-abbr\";i:156;s:35:\"pfunc-convert-unit-length-mile-abbr\";i:157;s:38:\"pfunc-convert-unit-length-furlong-abbr\";i:158;s:36:\"pfunc-convert-unit-length-chain-abbr\";i:159;s:34:\"pfunc-convert-unit-length-rod-abbr\";i:160;s:37:\"pfunc-convert-unit-length-fathom-abbr\";i:161;s:35:\"pfunc-convert-unit-length-yard-abbr\";i:162;s:35:\"pfunc-convert-unit-length-foot-abbr\";i:163;s:35:\"pfunc-convert-unit-length-hand-abbr\";i:164;s:35:\"pfunc-convert-unit-length-inch-abbr\";i:165;s:43:\"pfunc-convert-unit-length-nauticalmile-abbr\";i:166;s:45:\"pfunc-convert-unit-length-nauticalmileuk-abbr\";i:167;s:45:\"pfunc-convert-unit-length-nauticalmileus-abbr\";i:168;s:37:\"pfunc-convert-unit-length-parsec-abbr\";i:169;s:40:\"pfunc-convert-unit-length-lightyear-abbr\";i:170;s:47:\"pfunc-convert-unit-length-astronomicalunit-abbr\";i:171;s:39:\"pfunc-convert-unit-area-squarekilometre\";i:172;s:35:\"pfunc-convert-unit-area-squaremetre\";i:173;s:40:\"pfunc-convert-unit-area-squarecentimetre\";i:174;s:40:\"pfunc-convert-unit-area-squaremillimetre\";i:175;s:31:\"pfunc-convert-unit-area-hectare\";i:176;s:34:\"pfunc-convert-unit-area-squaremile\";i:177;s:28:\"pfunc-convert-unit-area-acre\";i:178;s:34:\"pfunc-convert-unit-area-squareyard\";i:179;s:34:\"pfunc-convert-unit-area-squarefoot\";i:180;s:34:\"pfunc-convert-unit-area-squareinch\";i:181;s:42:\"pfunc-convert-unit-area-squarenauticalmile\";i:182;s:29:\"pfunc-convert-unit-area-dunam\";i:183;s:29:\"pfunc-convert-unit-area-tsubo\";i:184;s:44:\"pfunc-convert-unit-area-squarekilometre-abbr\";i:185;s:40:\"pfunc-convert-unit-area-squaremetre-abbr\";i:186;s:45:\"pfunc-convert-unit-area-squarecentimetre-abbr\";i:187;s:45:\"pfunc-convert-unit-area-squaremillimetre-abbr\";i:188;s:36:\"pfunc-convert-unit-area-hectare-abbr\";i:189;s:39:\"pfunc-convert-unit-area-squaremile-abbr\";i:190;s:33:\"pfunc-convert-unit-area-acre-abbr\";i:191;s:39:\"pfunc-convert-unit-area-squareyard-abbr\";i:192;s:39:\"pfunc-convert-unit-area-squarefoot-abbr\";i:193;s:39:\"pfunc-convert-unit-area-squareinch-abbr\";i:194;s:47:\"pfunc-convert-unit-area-squarenauticalmile-abbr\";i:195;s:34:\"pfunc-convert-unit-area-dunam-abbr\";i:196;s:34:\"pfunc-convert-unit-area-tsubo-abbr\";i:197;s:30:\"pfunc-convert-unit-time-second\";i:198;s:28:\"pfunc-convert-unit-time-year\";i:199;s:27:\"pfunc-convert-unit-time-day\";i:200;s:28:\"pfunc-convert-unit-time-hour\";i:201;s:30:\"pfunc-convert-unit-time-minute\";i:202;s:35:\"pfunc-convert-unit-time-second-abbr\";i:203;s:33:\"pfunc-convert-unit-time-year-abbr\";i:204;s:32:\"pfunc-convert-unit-time-day-abbr\";i:205;s:33:\"pfunc-convert-unit-time-hour-abbr\";i:206;s:35:\"pfunc-convert-unit-time-minute-abbr\";i:207;s:36:\"pfunc-convert-unit-volume-cubicmetre\";i:208;s:41:\"pfunc-convert-unit-volume-cubiccentimetre\";i:209;s:41:\"pfunc-convert-unit-volume-cubicmillimetre\";i:210;s:35:\"pfunc-convert-unit-volume-kilolitre\";i:211;s:31:\"pfunc-convert-unit-volume-litre\";i:212;s:36:\"pfunc-convert-unit-volume-centilitre\";i:213;s:36:\"pfunc-convert-unit-volume-millilitre\";i:214;s:35:\"pfunc-convert-unit-volume-cubicyard\";i:215;s:35:\"pfunc-convert-unit-volume-cubicfoot\";i:216;s:35:\"pfunc-convert-unit-volume-cubicinch\";i:217;s:32:\"pfunc-convert-unit-volume-barrel\";i:218;s:32:\"pfunc-convert-unit-volume-bushel\";i:219;s:32:\"pfunc-convert-unit-volume-gallon\";i:220;s:31:\"pfunc-convert-unit-volume-quart\";i:221;s:30:\"pfunc-convert-unit-volume-pint\";i:222;s:36:\"pfunc-convert-unit-volume-fluidounce\";i:223;s:34:\"pfunc-convert-unit-volume-barrelus\";i:224;s:35:\"pfunc-convert-unit-volume-barreloil\";i:225;s:36:\"pfunc-convert-unit-volume-barrelbeer\";i:226;s:34:\"pfunc-convert-unit-volume-usgallon\";i:227;s:33:\"pfunc-convert-unit-volume-usquart\";i:228;s:32:\"pfunc-convert-unit-volume-uspint\";i:229;s:38:\"pfunc-convert-unit-volume-usfluidounce\";i:230;s:37:\"pfunc-convert-unit-volume-usdrybarrel\";i:231;s:34:\"pfunc-convert-unit-volume-usbushel\";i:232;s:37:\"pfunc-convert-unit-volume-usdrygallon\";i:233;s:36:\"pfunc-convert-unit-volume-usdryquart\";i:234;s:35:\"pfunc-convert-unit-volume-usdrypint\";i:235;s:41:\"pfunc-convert-unit-volume-cubicmetre-abbr\";i:236;s:46:\"pfunc-convert-unit-volume-cubiccentimetre-abbr\";i:237;s:46:\"pfunc-convert-unit-volume-cubicmillimetre-abbr\";i:238;s:36:\"pfunc-convert-unit-volume-litre-abbr\";i:239;s:40:\"pfunc-convert-unit-volume-cubicyard-abbr\";i:240;s:40:\"pfunc-convert-unit-volume-cubicfoot-abbr\";i:241;s:40:\"pfunc-convert-unit-volume-cubicinch-abbr\";i:242;s:37:\"pfunc-convert-unit-volume-barrel-abbr\";i:243;s:37:\"pfunc-convert-unit-volume-bushel-abbr\";i:244;s:37:\"pfunc-convert-unit-volume-gallon-abbr\";i:245;s:36:\"pfunc-convert-unit-volume-quart-abbr\";i:246;s:35:\"pfunc-convert-unit-volume-pint-abbr\";i:247;s:41:\"pfunc-convert-unit-volume-fluidounce-abbr\";i:248;s:39:\"pfunc-convert-unit-volume-barrelus-abbr\";i:249;s:40:\"pfunc-convert-unit-volume-barreloil-abbr\";i:250;s:41:\"pfunc-convert-unit-volume-barrelbeer-abbr\";i:251;s:39:\"pfunc-convert-unit-volume-usgallon-abbr\";i:252;s:38:\"pfunc-convert-unit-volume-usquart-abbr\";i:253;s:37:\"pfunc-convert-unit-volume-uspint-abbr\";i:254;s:43:\"pfunc-convert-unit-volume-usfluidounce-abbr\";i:255;s:42:\"pfunc-convert-unit-volume-usdrybarrel-abbr\";i:256;s:39:\"pfunc-convert-unit-volume-usbushel-abbr\";i:257;s:42:\"pfunc-convert-unit-volume-usdrygallon-abbr\";i:258;s:41:\"pfunc-convert-unit-volume-usdryquart-abbr\";i:259;s:40:\"pfunc-convert-unit-volume-usdrypint-abbr\";i:260;s:34:\"pfunc-convert-unit-speed-mile-hour\";i:261;s:37:\"pfunc-convert-unit-speed-speedoflight\";i:262;s:39:\"pfunc-convert-unit-speed-mile-hour-abbr\";i:263;s:42:\"pfunc-convert-unit-speed-speedoflight-abbr\";i:264;s:34:\"pfunc-convert-unit-pressure-pascal\";i:265;s:31:\"pfunc-convert-unit-pressure-bar\";i:266;s:35:\"pfunc-convert-unit-pressure-decibar\";i:267;s:36:\"pfunc-convert-unit-pressure-millibar\";i:268;s:37:\"pfunc-convert-unit-pressure-kilobarye\";i:269;s:33:\"pfunc-convert-unit-pressure-barye\";i:270;s:38:\"pfunc-convert-unit-pressure-atmosphere\";i:271;s:32:\"pfunc-convert-unit-pressure-torr\";i:272;s:32:\"pfunc-convert-unit-pressure-mmhg\";i:273;s:32:\"pfunc-convert-unit-pressure-inhg\";i:274;s:31:\"pfunc-convert-unit-pressure-psi\";i:275;s:39:\"pfunc-convert-unit-pressure-pascal-abbr\";i:276;s:36:\"pfunc-convert-unit-pressure-bar-abbr\";i:277;s:40:\"pfunc-convert-unit-pressure-decibar-abbr\";i:278;s:41:\"pfunc-convert-unit-pressure-millibar-abbr\";i:279;s:42:\"pfunc-convert-unit-pressure-kilobarye-abbr\";i:280;s:38:\"pfunc-convert-unit-pressure-barye-abbr\";i:281;s:43:\"pfunc-convert-unit-pressure-atmosphere-abbr\";i:282;s:37:\"pfunc-convert-unit-pressure-torr-abbr\";i:283;s:37:\"pfunc-convert-unit-pressure-mmhg-abbr\";i:284;s:37:\"pfunc-convert-unit-pressure-inhg-abbr\";i:285;s:36:\"pfunc-convert-unit-pressure-psi-abbr\";i:286;s:10:\"renameuser\";i:287;s:25:\"renameuser-linkoncontribs\";i:288;s:30:\"renameuser-linkoncontribs-text\";i:289;s:15:\"renameuser-desc\";i:290;s:18:\"renameuser-summary\";i:291;s:13:\"renameuserold\";i:292;s:13:\"renameusernew\";i:293;s:16:\"renameuserreason\";i:294;s:14:\"renameusermove\";i:295;s:18:\"renameusersuppress\";i:296;s:17:\"renameuserreserve\";i:297;s:18:\"renameuserwarnings\";i:298;s:17:\"renameuserconfirm\";i:299;s:16:\"renameusersubmit\";i:300;s:26:\"renameuser-submit-blocklog\";i:301;s:27:\"renameusererrordoesnotexist\";i:302;s:21:\"renameusererrorexists\";i:303;s:22:\"renameusererrorinvalid\";i:304;s:24:\"renameuser-error-request\";i:305;s:26:\"renameuser-error-same-user\";i:306;s:17:\"renameusersuccess\";i:307;s:22:\"renameuser-page-exists\";i:308;s:21:\"renameuser-page-moved\";i:309;s:23:\"renameuser-page-unmoved\";i:310;s:17:\"renameuserlogpage\";i:311;s:21:\"renameuserlogpagetext\";i:312;s:18:\"renameuserlogentry\";i:313;s:14:\"renameuser-log\";i:314;s:19:\"renameuser-move-log\";i:315;s:17:\"action-renameuser\";i:316;s:16:\"right-renameuser\";i:317;s:25:\"renameuser-renamed-notice\";i:318;s:6:\"vector\";i:319;s:11:\"vector-desc\";i:320;s:32:\"vector-collapsiblenav-preference\";i:321;s:26:\"vector-collapsiblenav-more\";i:322;s:26:\"vector-editwarning-warning\";i:323;s:29:\"vector-editwarning-preference\";i:324;s:26:\"vector-simplesearch-search\";i:325;s:30:\"vector-simplesearch-containing\";i:326;s:31:\"vector-noexperiments-preference\";i:327;s:33:\"vector-footercleanup-transclusion\";i:328;s:10:\"wikieditor\";i:329;s:15:\"wikieditor-desc\";i:330;s:23:\"wikieditor-wikitext-tab\";i:331;s:18:\"wikieditor-loading\";i:332;s:29:\"wikieditor-preview-preference\";i:333;s:22:\"wikieditor-preview-tab\";i:334;s:30:\"wikieditor-preview-changes-tab\";i:335;s:26:\"wikieditor-preview-loading\";i:336;s:35:\"wikieditor-previewDialog-preference\";i:337;s:28:\"wikieditor-previewDialog-tab\";i:338;s:32:\"wikieditor-previewDialog-loading\";i:339;s:29:\"wikieditor-publish-preference\";i:340;s:33:\"wikieditor-publish-button-publish\";i:341;s:32:\"wikieditor-publish-button-cancel\";i:342;s:31:\"wikieditor-publish-dialog-title\";i:343;s:33:\"wikieditor-publish-dialog-summary\";i:344;s:31:\"wikieditor-publish-dialog-minor\";i:345;s:31:\"wikieditor-publish-dialog-watch\";i:346;s:33:\"wikieditor-publish-dialog-publish\";i:347;s:32:\"wikieditor-publish-dialog-goback\";i:348;s:37:\"wikieditor-template-editor-preference\";i:349;s:39:\"wikieditor-template-editor-dialog-title\";i:350;s:40:\"wikieditor-template-editor-dialog-submit\";i:351;s:40:\"wikieditor-template-editor-dialog-cancel\";i:352;s:31:\"wikieditor-templates-preference\";i:353;s:25:\"wikieditor-toc-preference\";i:354;s:19:\"wikieditor-toc-show\";i:355;s:19:\"wikieditor-toc-hide\";i:356;s:18:\"wikieditor-toolbar\";i:357;s:23:\"wikieditor-toolbar-desc\";i:358;s:29:\"wikieditor-toolbar-preference\";i:359;s:37:\"wikieditor-toolbar-dialogs-preference\";i:360;s:26:\"wikieditor-toolbar-hidesig\";i:361;s:26:\"wikieditor-toolbar-loading\";i:362;s:28:\"wikieditor-toolbar-tool-bold\";i:363;s:36:\"wikieditor-toolbar-tool-bold-example\";i:364;s:30:\"wikieditor-toolbar-tool-italic\";i:365;s:38:\"wikieditor-toolbar-tool-italic-example\";i:366;s:29:\"wikieditor-toolbar-tool-ilink\";i:367;s:37:\"wikieditor-toolbar-tool-ilink-example\";i:368;s:29:\"wikieditor-toolbar-tool-xlink\";i:369;s:37:\"wikieditor-toolbar-tool-xlink-example\";i:370;s:28:\"wikieditor-toolbar-tool-link\";i:371;s:34:\"wikieditor-toolbar-tool-link-title\";i:372;s:32:\"wikieditor-toolbar-tool-link-int\";i:373;s:39:\"wikieditor-toolbar-tool-link-int-target\";i:374;s:47:\"wikieditor-toolbar-tool-link-int-target-tooltip\";i:375;s:37:\"wikieditor-toolbar-tool-link-int-text\";i:376;s:45:\"wikieditor-toolbar-tool-link-int-text-tooltip\";i:377;s:32:\"wikieditor-toolbar-tool-link-ext\";i:378;s:39:\"wikieditor-toolbar-tool-link-ext-target\";i:379;s:37:\"wikieditor-toolbar-tool-link-ext-text\";i:380;s:35:\"wikieditor-toolbar-tool-link-insert\";i:381;s:35:\"wikieditor-toolbar-tool-link-cancel\";i:382;s:53:\"wikieditor-toolbar-tool-link-int-target-status-exists\";i:383;s:56:\"wikieditor-toolbar-tool-link-int-target-status-notexists\";i:384;s:54:\"wikieditor-toolbar-tool-link-int-target-status-invalid\";i:385;s:55:\"wikieditor-toolbar-tool-link-int-target-status-external\";i:386;s:54:\"wikieditor-toolbar-tool-link-int-target-status-loading\";i:387;s:40:\"wikieditor-toolbar-tool-link-int-invalid\";i:388;s:46:\"wikieditor-toolbar-tool-link-lookslikeinternal\";i:389;s:50:\"wikieditor-toolbar-tool-link-lookslikeinternal-int\";i:390;s:50:\"wikieditor-toolbar-tool-link-lookslikeinternal-ext\";i:391;s:34:\"wikieditor-toolbar-tool-link-empty\";i:392;s:28:\"wikieditor-toolbar-tool-file\";i:393;s:36:\"wikieditor-toolbar-tool-file-example\";i:394;s:33:\"wikieditor-toolbar-tool-reference\";i:395;s:41:\"wikieditor-toolbar-tool-reference-example\";i:396;s:40:\"wikieditor-toolbar-tool-reference-cancel\";i:397;s:39:\"wikieditor-toolbar-tool-reference-title\";i:398;s:40:\"wikieditor-toolbar-tool-reference-insert\";i:399;s:38:\"wikieditor-toolbar-tool-reference-text\";i:400;s:33:\"wikieditor-toolbar-tool-signature\";i:401;s:35:\"wikieditor-toolbar-section-advanced\";i:402;s:31:\"wikieditor-toolbar-tool-heading\";i:403;s:33:\"wikieditor-toolbar-tool-heading-1\";i:404;s:33:\"wikieditor-toolbar-tool-heading-2\";i:405;s:33:\"wikieditor-toolbar-tool-heading-3\";i:406;s:33:\"wikieditor-toolbar-tool-heading-4\";i:407;s:33:\"wikieditor-toolbar-tool-heading-5\";i:408;s:39:\"wikieditor-toolbar-tool-heading-example\";i:409;s:31:\"wikieditor-toolbar-group-format\";i:410;s:29:\"wikieditor-toolbar-tool-ulist\";i:411;s:37:\"wikieditor-toolbar-tool-ulist-example\";i:412;s:29:\"wikieditor-toolbar-tool-olist\";i:413;s:37:\"wikieditor-toolbar-tool-olist-example\";i:414;s:30:\"wikieditor-toolbar-tool-indent\";i:415;s:38:\"wikieditor-toolbar-tool-indent-example\";i:416;s:30:\"wikieditor-toolbar-tool-nowiki\";i:417;s:38:\"wikieditor-toolbar-tool-nowiki-example\";i:418;s:32:\"wikieditor-toolbar-tool-redirect\";i:419;s:40:\"wikieditor-toolbar-tool-redirect-example\";i:420;s:27:\"wikieditor-toolbar-tool-big\";i:421;s:35:\"wikieditor-toolbar-tool-big-example\";i:422;s:29:\"wikieditor-toolbar-tool-small\";i:423;s:37:\"wikieditor-toolbar-tool-small-example\";i:424;s:35:\"wikieditor-toolbar-tool-superscript\";i:425;s:43:\"wikieditor-toolbar-tool-superscript-example\";i:426;s:33:\"wikieditor-toolbar-tool-subscript\";i:427;s:41:\"wikieditor-toolbar-tool-subscript-example\";i:428;s:31:\"wikieditor-toolbar-group-insert\";i:429;s:31:\"wikieditor-toolbar-tool-gallery\";i:430;s:39:\"wikieditor-toolbar-tool-gallery-example\";i:431;s:31:\"wikieditor-toolbar-tool-newline\";i:432;s:29:\"wikieditor-toolbar-tool-table\";i:433;s:41:\"wikieditor-toolbar-tool-table-example-old\";i:434;s:47:\"wikieditor-toolbar-tool-table-example-cell-text\";i:435;s:44:\"wikieditor-toolbar-tool-table-example-header\";i:436;s:35:\"wikieditor-toolbar-tool-table-title\";i:437;s:45:\"wikieditor-toolbar-tool-table-dimensions-rows\";i:438;s:48:\"wikieditor-toolbar-tool-table-dimensions-columns\";i:439;s:47:\"wikieditor-toolbar-tool-table-dimensions-header\";i:440;s:39:\"wikieditor-toolbar-tool-table-wikitable\";i:441;s:38:\"wikieditor-toolbar-tool-table-sortable\";i:442;s:37:\"wikieditor-toolbar-tool-table-example\";i:443;s:37:\"wikieditor-toolbar-tool-table-preview\";i:444;s:36:\"wikieditor-toolbar-tool-table-insert\";i:445;s:36:\"wikieditor-toolbar-tool-table-cancel\";i:446;s:42:\"wikieditor-toolbar-tool-table-example-text\";i:447;s:37:\"wikieditor-toolbar-tool-table-toomany\";i:448;s:43:\"wikieditor-toolbar-tool-table-invalidnumber\";i:449;s:34:\"wikieditor-toolbar-tool-table-zero\";i:450;s:31:\"wikieditor-toolbar-tool-replace\";i:451;s:37:\"wikieditor-toolbar-tool-replace-title\";i:452;s:38:\"wikieditor-toolbar-tool-replace-search\";i:453;s:39:\"wikieditor-toolbar-tool-replace-replace\";i:454;s:36:\"wikieditor-toolbar-tool-replace-case\";i:455;s:37:\"wikieditor-toolbar-tool-replace-regex\";i:456;s:47:\"wikieditor-toolbar-tool-replace-button-findnext\";i:457;s:46:\"wikieditor-toolbar-tool-replace-button-replace\";i:458;s:49:\"wikieditor-toolbar-tool-replace-button-replaceall\";i:459;s:37:\"wikieditor-toolbar-tool-replace-close\";i:460;s:39:\"wikieditor-toolbar-tool-replace-nomatch\";i:461;s:39:\"wikieditor-toolbar-tool-replace-success\";i:462;s:43:\"wikieditor-toolbar-tool-replace-emptysearch\";i:463;s:44:\"wikieditor-toolbar-tool-replace-invalidregex\";i:464;s:37:\"wikieditor-toolbar-section-characters\";i:465;s:40:\"wikieditor-toolbar-characters-page-latin\";i:466;s:48:\"wikieditor-toolbar-characters-page-latinextended\";i:467;s:38:\"wikieditor-toolbar-characters-page-ipa\";i:468;s:42:\"wikieditor-toolbar-characters-page-symbols\";i:469;s:40:\"wikieditor-toolbar-characters-page-greek\";i:470;s:43:\"wikieditor-toolbar-characters-page-cyrillic\";i:471;s:41:\"wikieditor-toolbar-characters-page-arabic\";i:472;s:49:\"wikieditor-toolbar-characters-page-arabicextended\";i:473;s:42:\"wikieditor-toolbar-characters-page-persian\";i:474;s:41:\"wikieditor-toolbar-characters-page-hebrew\";i:475;s:41:\"wikieditor-toolbar-characters-page-bangla\";i:476;s:40:\"wikieditor-toolbar-characters-page-tamil\";i:477;s:41:\"wikieditor-toolbar-characters-page-telugu\";i:478;s:42:\"wikieditor-toolbar-characters-page-sinhala\";i:479;s:43:\"wikieditor-toolbar-characters-page-gujarati\";i:480;s:45:\"wikieditor-toolbar-characters-page-devanagari\";i:481;s:39:\"wikieditor-toolbar-characters-page-thai\";i:482;s:38:\"wikieditor-toolbar-characters-page-lao\";i:483;s:40:\"wikieditor-toolbar-characters-page-khmer\";i:484;s:31:\"wikieditor-toolbar-section-help\";i:485;s:43:\"wikieditor-toolbar-help-heading-description\";i:486;s:38:\"wikieditor-toolbar-help-heading-syntax\";i:487;s:38:\"wikieditor-toolbar-help-heading-result\";i:488;s:35:\"wikieditor-toolbar-help-page-format\";i:489;s:33:\"wikieditor-toolbar-help-page-link\";i:490;s:36:\"wikieditor-toolbar-help-page-heading\";i:491;s:33:\"wikieditor-toolbar-help-page-list\";i:492;s:33:\"wikieditor-toolbar-help-page-file\";i:493;s:38:\"wikieditor-toolbar-help-page-reference\";i:494;s:39:\"wikieditor-toolbar-help-page-discussion\";i:495;s:50:\"wikieditor-toolbar-help-content-italic-description\";i:496;s:45:\"wikieditor-toolbar-help-content-italic-syntax\";i:497;s:45:\"wikieditor-toolbar-help-content-italic-result\";i:498;s:48:\"wikieditor-toolbar-help-content-bold-description\";i:499;s:43:\"wikieditor-toolbar-help-content-bold-syntax\";i:500;s:43:\"wikieditor-toolbar-help-content-bold-result\";i:501;s:54:\"wikieditor-toolbar-help-content-bolditalic-description\";i:502;s:49:\"wikieditor-toolbar-help-content-bolditalic-syntax\";i:503;s:49:\"wikieditor-toolbar-help-content-bolditalic-result\";i:504;s:49:\"wikieditor-toolbar-help-content-ilink-description\";i:505;s:44:\"wikieditor-toolbar-help-content-ilink-syntax\";i:506;s:44:\"wikieditor-toolbar-help-content-ilink-result\";i:507;s:49:\"wikieditor-toolbar-help-content-xlink-description\";i:508;s:44:\"wikieditor-toolbar-help-content-xlink-syntax\";i:509;s:44:\"wikieditor-toolbar-help-content-xlink-result\";i:510;s:52:\"wikieditor-toolbar-help-content-heading2-description\";i:511;s:47:\"wikieditor-toolbar-help-content-heading2-syntax\";i:512;s:47:\"wikieditor-toolbar-help-content-heading2-result\";i:513;s:52:\"wikieditor-toolbar-help-content-heading3-description\";i:514;s:47:\"wikieditor-toolbar-help-content-heading3-syntax\";i:515;s:47:\"wikieditor-toolbar-help-content-heading3-result\";i:516;s:52:\"wikieditor-toolbar-help-content-heading4-description\";i:517;s:47:\"wikieditor-toolbar-help-content-heading4-syntax\";i:518;s:47:\"wikieditor-toolbar-help-content-heading4-result\";i:519;s:52:\"wikieditor-toolbar-help-content-heading5-description\";i:520;s:47:\"wikieditor-toolbar-help-content-heading5-syntax\";i:521;s:47:\"wikieditor-toolbar-help-content-heading5-result\";i:522;s:49:\"wikieditor-toolbar-help-content-ulist-description\";i:523;s:44:\"wikieditor-toolbar-help-content-ulist-syntax\";i:524;s:44:\"wikieditor-toolbar-help-content-ulist-result\";i:525;s:49:\"wikieditor-toolbar-help-content-olist-description\";i:526;s:44:\"wikieditor-toolbar-help-content-olist-syntax\";i:527;s:44:\"wikieditor-toolbar-help-content-olist-result\";i:528;s:48:\"wikieditor-toolbar-help-content-file-description\";i:529;s:43:\"wikieditor-toolbar-help-content-file-syntax\";i:530;s:43:\"wikieditor-toolbar-help-content-file-result\";i:531;s:53:\"wikieditor-toolbar-help-content-reference-description\";i:532;s:48:\"wikieditor-toolbar-help-content-reference-syntax\";i:533;s:48:\"wikieditor-toolbar-help-content-reference-result\";i:534;s:55:\"wikieditor-toolbar-help-content-rereference-description\";i:535;s:50:\"wikieditor-toolbar-help-content-rereference-syntax\";i:536;s:50:\"wikieditor-toolbar-help-content-rereference-result\";i:537;s:58:\"wikieditor-toolbar-help-content-showreferences-description\";i:538;s:53:\"wikieditor-toolbar-help-content-showreferences-syntax\";i:539;s:53:\"wikieditor-toolbar-help-content-showreferences-result\";i:540;s:62:\"wikieditor-toolbar-help-content-signaturetimestamp-description\";i:541;s:57:\"wikieditor-toolbar-help-content-signaturetimestamp-syntax\";i:542;s:57:\"wikieditor-toolbar-help-content-signaturetimestamp-result\";i:543;s:53:\"wikieditor-toolbar-help-content-signature-description\";i:544;s:48:\"wikieditor-toolbar-help-content-signature-syntax\";i:545;s:48:\"wikieditor-toolbar-help-content-signature-result\";i:546;s:50:\"wikieditor-toolbar-help-content-indent-description\";i:547;s:45:\"wikieditor-toolbar-help-content-indent-syntax\";i:548;s:45:\"wikieditor-toolbar-help-content-indent-result\";i:549;s:7:\"sidebar\";i:550;s:13:\"tog-underline\";i:551;s:19:\"tog-highlightbroken\";i:552;s:11:\"tog-justify\";i:553;s:13:\"tog-hideminor\";i:554;s:17:\"tog-hidepatrolled\";i:555;s:25:\"tog-newpageshidepatrolled\";i:556;s:19:\"tog-extendwatchlist\";i:557;s:12:\"tog-usenewrc\";i:558;s:18:\"tog-numberheadings\";i:559;s:15:\"tog-showtoolbar\";i:560;s:18:\"tog-editondblclick\";i:561;s:15:\"tog-editsection\";i:562;s:27:\"tog-editsectiononrightclick\";i:563;s:11:\"tog-showtoc\";i:564;s:20:\"tog-rememberpassword\";i:565;s:18:\"tog-watchcreations\";i:566;s:16:\"tog-watchdefault\";i:567;s:14:\"tog-watchmoves\";i:568;s:17:\"tog-watchdeletion\";i:569;s:16:\"tog-minordefault\";i:570;s:16:\"tog-previewontop\";i:571;s:18:\"tog-previewonfirst\";i:572;s:11:\"tog-nocache\";i:573;s:24:\"tog-enotifwatchlistpages\";i:574;s:23:\"tog-enotifusertalkpages\";i:575;s:20:\"tog-enotifminoredits\";i:576;s:20:\"tog-enotifrevealaddr\";i:577;s:23:\"tog-shownumberswatching\";i:578;s:10:\"tog-oldsig\";i:579;s:12:\"tog-fancysig\";i:580;s:18:\"tog-externaleditor\";i:581;s:16:\"tog-externaldiff\";i:582;s:17:\"tog-showjumplinks\";i:583;s:18:\"tog-uselivepreview\";i:584;s:20:\"tog-forceeditsummary\";i:585;s:20:\"tog-watchlisthideown\";i:586;s:21:\"tog-watchlisthidebots\";i:587;s:22:\"tog-watchlisthideminor\";i:588;s:20:\"tog-watchlisthideliu\";i:589;s:22:\"tog-watchlisthideanons\";i:590;s:26:\"tog-watchlisthidepatrolled\";i:591;s:20:\"tog-nolangconversion\";i:592;s:16:\"tog-ccmeonemails\";i:593;s:12:\"tog-diffonly\";i:594;s:18:\"tog-showhiddencats\";i:595;s:17:\"tog-noconvertlink\";i:596;s:18:\"tog-norollbackdiff\";i:597;s:16:\"underline-always\";i:598;s:15:\"underline-never\";i:599;s:17:\"underline-default\";i:600;s:14:\"editfont-style\";i:601;s:16:\"editfont-default\";i:602;s:18:\"editfont-monospace\";i:603;s:18:\"editfont-sansserif\";i:604;s:14:\"editfont-serif\";i:605;s:6:\"sunday\";i:606;s:6:\"monday\";i:607;s:7:\"tuesday\";i:608;s:9:\"wednesday\";i:609;s:8:\"thursday\";i:610;s:6:\"friday\";i:611;s:8:\"saturday\";i:612;s:3:\"sun\";i:613;s:3:\"mon\";i:614;s:3:\"tue\";i:615;s:3:\"wed\";i:616;s:3:\"thu\";i:617;s:3:\"fri\";i:618;s:3:\"sat\";i:619;s:7:\"january\";i:620;s:8:\"february\";i:621;s:5:\"march\";i:622;s:5:\"april\";i:623;s:8:\"may_long\";i:624;s:4:\"june\";i:625;s:4:\"july\";i:626;s:6:\"august\";i:627;s:9:\"september\";i:628;s:7:\"october\";i:629;s:8:\"november\";i:630;s:8:\"december\";i:631;s:11:\"january-gen\";i:632;s:12:\"february-gen\";i:633;s:9:\"march-gen\";i:634;s:9:\"april-gen\";i:635;s:7:\"may-gen\";i:636;s:8:\"june-gen\";i:637;s:8:\"july-gen\";i:638;s:10:\"august-gen\";i:639;s:13:\"september-gen\";i:640;s:11:\"october-gen\";i:641;s:12:\"november-gen\";i:642;s:12:\"december-gen\";i:643;s:3:\"jan\";i:644;s:3:\"feb\";i:645;s:3:\"mar\";i:646;s:3:\"apr\";i:647;s:3:\"may\";i:648;s:3:\"jun\";i:649;s:3:\"jul\";i:650;s:3:\"aug\";i:651;s:3:\"sep\";i:652;s:3:\"oct\";i:653;s:3:\"nov\";i:654;s:3:\"dec\";i:655;s:14:\"pagecategories\";i:656;s:18:\"pagecategorieslink\";i:657;s:15:\"category_header\";i:658;s:13:\"subcategories\";i:659;s:21:\"category-media-header\";i:660;s:14:\"category-empty\";i:661;s:17:\"hidden-categories\";i:662;s:24:\"hidden-category-category\";i:663;s:21:\"category-subcat-count\";i:664;s:29:\"category-subcat-count-limited\";i:665;s:22:\"category-article-count\";i:666;s:30:\"category-article-count-limited\";i:667;s:19:\"category-file-count\";i:668;s:27:\"category-file-count-limited\";i:669;s:22:\"listingcontinuesabbrev\";i:670;s:14:\"index-category\";i:671;s:16:\"noindex-category\";i:672;s:20:\"broken-file-category\";i:673;s:10:\"linkprefix\";i:674;s:5:\"about\";i:675;s:7:\"article\";i:676;s:9:\"newwindow\";i:677;s:6:\"cancel\";i:678;s:13:\"moredotdotdot\";i:679;s:6:\"mypage\";i:680;s:6:\"mytalk\";i:681;s:8:\"anontalk\";i:682;s:10:\"navigation\";i:683;s:3:\"and\";i:684;s:6:\"qbfind\";i:685;s:8:\"qbbrowse\";i:686;s:6:\"qbedit\";i:687;s:13:\"qbpageoptions\";i:688;s:10:\"qbpageinfo\";i:689;s:11:\"qbmyoptions\";i:690;s:14:\"qbspecialpages\";i:691;s:3:\"faq\";i:692;s:7:\"faqpage\";i:693;s:9:\"sitetitle\";i:694;s:12:\"sitesubtitle\";i:695;s:24:\"vector-action-addsection\";i:696;s:20:\"vector-action-delete\";i:697;s:18:\"vector-action-move\";i:698;s:21:\"vector-action-protect\";i:699;s:22:\"vector-action-undelete\";i:700;s:23:\"vector-action-unprotect\";i:701;s:30:\"vector-simplesearch-preference\";i:702;s:18:\"vector-view-create\";i:703;s:16:\"vector-view-edit\";i:704;s:19:\"vector-view-history\";i:705;s:16:\"vector-view-view\";i:706;s:22:\"vector-view-viewsource\";i:707;s:7:\"actions\";i:708;s:10:\"namespaces\";i:709;s:8:\"variants\";i:710;s:14:\"errorpagetitle\";i:711;s:8:\"returnto\";i:712;s:7:\"tagline\";i:713;s:4:\"help\";i:714;s:6:\"search\";i:715;s:12:\"searchbutton\";i:716;s:2:\"go\";i:717;s:13:\"searcharticle\";i:718;s:7:\"history\";i:719;s:13:\"history_short\";i:720;s:13:\"updatedmarker\";i:721;s:16:\"printableversion\";i:722;s:9:\"permalink\";i:723;s:5:\"print\";i:724;s:4:\"view\";i:725;s:4:\"edit\";i:726;s:6:\"create\";i:727;s:12:\"editthispage\";i:728;s:16:\"create-this-page\";i:729;s:6:\"delete\";i:730;s:14:\"deletethispage\";i:731;s:14:\"undelete_short\";i:732;s:17:\"viewdeleted_short\";i:733;s:7:\"protect\";i:734;s:14:\"protect_change\";i:735;s:15:\"protectthispage\";i:736;s:9:\"unprotect\";i:737;s:17:\"unprotectthispage\";i:738;s:7:\"newpage\";i:739;s:8:\"talkpage\";i:740;s:16:\"talkpagelinktext\";i:741;s:11:\"specialpage\";i:742;s:13:\"personaltools\";i:743;s:11:\"postcomment\";i:744;s:10:\"addsection\";i:745;s:11:\"articlepage\";i:746;s:4:\"talk\";i:747;s:5:\"views\";i:748;s:7:\"toolbox\";i:749;s:8:\"userpage\";i:750;s:11:\"projectpage\";i:751;s:9:\"imagepage\";i:752;s:13:\"mediawikipage\";i:753;s:12:\"templatepage\";i:754;s:12:\"viewhelppage\";i:755;s:12:\"categorypage\";i:756;s:12:\"viewtalkpage\";i:757;s:14:\"otherlanguages\";i:758;s:14:\"redirectedfrom\";i:759;s:15:\"redirectpagesub\";i:760;s:14:\"talkpageheader\";i:761;s:14:\"lastmodifiedat\";i:762;s:9:\"viewcount\";i:763;s:13:\"protectedpage\";i:764;s:6:\"jumpto\";i:765;s:16:\"jumptonavigation\";i:766;s:12:\"jumptosearch\";i:767;s:15:\"view-pool-error\";i:768;s:12:\"pool-timeout\";i:769;s:14:\"pool-queuefull\";i:770;s:17:\"pool-errorunknown\";i:771;s:9:\"aboutsite\";i:772;s:9:\"aboutpage\";i:773;s:9:\"copyright\";i:774;s:13:\"copyrightpage\";i:775;s:13:\"currentevents\";i:776;s:17:\"currentevents-url\";i:777;s:11:\"disclaimers\";i:778;s:14:\"disclaimerpage\";i:779;s:8:\"edithelp\";i:780;s:12:\"edithelppage\";i:781;s:8:\"helppage\";i:782;s:8:\"mainpage\";i:783;s:20:\"mainpage-description\";i:784;s:10:\"policy-url\";i:785;s:6:\"portal\";i:786;s:10:\"portal-url\";i:787;s:7:\"privacy\";i:788;s:11:\"privacypage\";i:789;s:9:\"badaccess\";i:790;s:16:\"badaccess-group0\";i:791;s:16:\"badaccess-groups\";i:792;s:15:\"versionrequired\";i:793;s:19:\"versionrequiredtext\";i:794;s:2:\"ok\";i:795;s:9:\"pagetitle\";i:796;s:23:\"pagetitle-view-mainpage\";i:797;s:16:\"backlinksubtitle\";i:798;s:13:\"retrievedfrom\";i:799;s:18:\"youhavenewmessages\";i:800;s:15:\"newmessageslink\";i:801;s:19:\"newmessagesdifflink\";i:802;s:23:\"youhavenewmessagesmulti\";i:803;s:16:\"newtalkseparator\";i:804;s:11:\"editsection\";i:805;s:20:\"editsection-brackets\";i:806;s:7:\"editold\";i:807;s:13:\"viewsourceold\";i:808;s:8:\"editlink\";i:809;s:14:\"viewsourcelink\";i:810;s:15:\"editsectionhint\";i:811;s:3:\"toc\";i:812;s:7:\"showtoc\";i:813;s:7:\"hidetoc\";i:814;s:20:\"collapsible-collapse\";i:815;s:18:\"collapsible-expand\";i:816;s:13:\"thisisdeleted\";i:817;s:11:\"viewdeleted\";i:818;s:11:\"restorelink\";i:819;s:9:\"feedlinks\";i:820;s:12:\"feed-invalid\";i:821;s:16:\"feed-unavailable\";i:822;s:13:\"site-rss-feed\";i:823;s:14:\"site-atom-feed\";i:824;s:13:\"page-rss-feed\";i:825;s:14:\"page-atom-feed\";i:826;s:9:\"feed-atom\";i:827;s:8:\"feed-rss\";i:828;s:10:\"sitenotice\";i:829;s:10:\"anonnotice\";i:830;s:28:\"newsectionheaderdefaultlevel\";i:831;s:14:\"red-link-title\";i:832;s:15:\"sort-descending\";i:833;s:14:\"sort-ascending\";i:834;s:10:\"nstab-main\";i:835;s:10:\"nstab-user\";i:836;s:11:\"nstab-media\";i:837;s:13:\"nstab-special\";i:838;s:13:\"nstab-project\";i:839;s:11:\"nstab-image\";i:840;s:15:\"nstab-mediawiki\";i:841;s:14:\"nstab-template\";i:842;s:10:\"nstab-help\";i:843;s:14:\"nstab-category\";i:844;s:14:\"mainpage-nstab\";i:845;s:12:\"nosuchaction\";i:846;s:16:\"nosuchactiontext\";i:847;s:17:\"nosuchspecialpage\";i:848;s:17:\"nospecialpagetext\";i:849;s:5:\"error\";i:850;s:13:\"databaseerror\";i:851;s:11:\"dberrortext\";i:852;s:13:\"dberrortextcl\";i:853;s:15:\"laggedslavemode\";i:854;s:8:\"readonly\";i:855;s:15:\"enterlockreason\";i:856;s:12:\"readonlytext\";i:857;s:15:\"missing-article\";i:858;s:18:\"missingarticle-rev\";i:859;s:19:\"missingarticle-diff\";i:860;s:12:\"readonly_lag\";i:861;s:13:\"internalerror\";i:862;s:18:\"internalerror_info\";i:863;s:19:\"fileappenderrorread\";i:864;s:15:\"fileappenderror\";i:865;s:13:\"filecopyerror\";i:866;s:15:\"filerenameerror\";i:867;s:15:\"filedeleteerror\";i:868;s:20:\"directorycreateerror\";i:869;s:12:\"filenotfound\";i:870;s:15:\"fileexistserror\";i:871;s:10:\"unexpected\";i:872;s:9:\"formerror\";i:873;s:15:\"badarticleerror\";i:874;s:12:\"cannotdelete\";i:875;s:18:\"cannotdelete-title\";i:876;s:8:\"badtitle\";i:877;s:12:\"badtitletext\";i:878;s:10:\"perfcached\";i:879;s:12:\"perfcachedts\";i:880;s:20:\"querypage-no-updates\";i:881;s:20:\"wrong_wfQuery_params\";i:882;s:10:\"viewsource\";i:883;s:16:\"viewsource-title\";i:884;s:15:\"actionthrottled\";i:885;s:19:\"actionthrottledtext\";i:886;s:17:\"protectedpagetext\";i:887;s:14:\"viewsourcetext\";i:888;s:12:\"viewyourtext\";i:889;s:18:\"protectedinterface\";i:890;s:16:\"editinginterface\";i:891;s:9:\"sqlhidden\";i:892;s:16:\"cascadeprotected\";i:893;s:18:\"namespaceprotected\";i:894;s:18:\"customcssprotected\";i:895;s:17:\"customjsprotected\";i:896;s:19:\"ns-specialprotected\";i:897;s:14:\"titleprotected\";i:898;s:16:\"virus-badscanner\";i:899;s:16:\"virus-scanfailed\";i:900;s:20:\"virus-unknownscanner\";i:901;s:10:\"logouttext\";i:902;s:15:\"welcomecreation\";i:903;s:8:\"yourname\";i:904;s:12:\"yourpassword\";i:905;s:17:\"yourpasswordagain\";i:906;s:18:\"remembermypassword\";i:907;s:23:\"securelogin-stick-https\";i:908;s:14:\"yourdomainname\";i:909;s:15:\"externaldberror\";i:910;s:5:\"login\";i:911;s:23:\"nav-login-createaccount\";i:912;s:11:\"loginprompt\";i:913;s:9:\"userlogin\";i:914;s:17:\"userloginnocreate\";i:915;s:6:\"logout\";i:916;s:10:\"userlogout\";i:917;s:11:\"notloggedin\";i:918;s:7:\"nologin\";i:919;s:11:\"nologinlink\";i:920;s:13:\"createaccount\";i:921;s:10:\"gotaccount\";i:922;s:14:\"gotaccountlink\";i:923;s:19:\"userlogin-resetlink\";i:924;s:17:\"createaccountmail\";i:925;s:19:\"createaccountreason\";i:926;s:9:\"badretype\";i:927;s:10:\"userexists\";i:928;s:10:\"loginerror\";i:929;s:18:\"createaccounterror\";i:930;s:12:\"nocookiesnew\";i:931;s:14:\"nocookieslogin\";i:932;s:15:\"nocookiesfornew\";i:933;s:17:\"nocookiesforlogin\";i:934;s:6:\"noname\";i:935;s:17:\"loginsuccesstitle\";i:936;s:12:\"loginsuccess\";i:937;s:10:\"nosuchuser\";i:938;s:15:\"nosuchusershort\";i:939;s:15:\"nouserspecified\";i:940;s:17:\"login-userblocked\";i:941;s:13:\"wrongpassword\";i:942;s:18:\"wrongpasswordempty\";i:943;s:16:\"passwordtooshort\";i:944;s:19:\"password-name-match\";i:945;s:24:\"password-login-forbidden\";i:946;s:14:\"mailmypassword\";i:947;s:21:\"passwordremindertitle\";i:948;s:20:\"passwordremindertext\";i:949;s:7:\"noemail\";i:950;s:13:\"noemailcreate\";i:951;s:12:\"passwordsent\";i:952;s:20:\"blocked-mailpassword\";i:953;s:12:\"eauthentsent\";i:954;s:22:\"throttled-mailpassword\";i:955;s:10:\"loginstart\";i:956;s:8:\"loginend\";i:957;s:14:\"loginend-https\";i:958;s:11:\"signupstart\";i:959;s:9:\"signupend\";i:960;s:15:\"signupend-https\";i:961;s:9:\"mailerror\";i:962;s:26:\"acct_creation_throttle_hit\";i:963;s:18:\"emailauthenticated\";i:964;s:21:\"emailnotauthenticated\";i:965;s:12:\"noemailprefs\";i:966;s:16:\"emailconfirmlink\";i:967;s:19:\"invalidemailaddress\";i:968;s:17:\"cannotchangeemail\";i:969;s:14:\"accountcreated\";i:970;s:18:\"accountcreatedtext\";i:971;s:19:\"createaccount-title\";i:972;s:18:\"createaccount-text\";i:973;s:17:\"usernamehasherror\";i:974;s:15:\"login-throttled\";i:975;s:19:\"login-abort-generic\";i:976;s:18:\"loginlanguagelabel\";i:977;s:18:\"loginlanguagelinks\";i:978;s:21:\"suspicious-userlogout\";i:979;s:15:\"pear-mail-error\";i:980;s:14:\"php-mail-error\";i:981;s:22:\"php-mail-error-unknown\";i:982;s:17:\"user-mail-no-addy\";i:983;s:9:\"resetpass\";i:984;s:18:\"resetpass_announce\";i:985;s:14:\"resetpass_text\";i:986;s:16:\"resetpass_header\";i:987;s:11:\"oldpassword\";i:988;s:11:\"newpassword\";i:989;s:9:\"retypenew\";i:990;s:16:\"resetpass_submit\";i:991;s:17:\"resetpass_success\";i:992;s:19:\"resetpass_forbidden\";i:993;s:17:\"resetpass-no-info\";i:994;s:25:\"resetpass-submit-loggedin\";i:995;s:23:\"resetpass-submit-cancel\";i:996;s:23:\"resetpass-wrong-oldpass\";i:997;s:23:\"resetpass-temp-password\";i:998;s:13:\"passwordreset\";i:999;s:18:\"passwordreset-text\";i:1000;s:20:\"passwordreset-legend\";i:1001;s:22:\"passwordreset-disabled\";i:1002;s:21:\"passwordreset-pretext\";i:1003;s:22:\"passwordreset-username\";i:1004;s:20:\"passwordreset-domain\";i:1005;s:21:\"passwordreset-capture\";i:1006;s:26:\"passwordreset-capture-help\";i:1007;s:19:\"passwordreset-email\";i:1008;s:24:\"passwordreset-emailtitle\";i:1009;s:26:\"passwordreset-emailtext-ip\";i:1010;s:28:\"passwordreset-emailtext-user\";i:1011;s:26:\"passwordreset-emailelement\";i:1012;s:23:\"passwordreset-emailsent\";i:1013;s:31:\"passwordreset-emailsent-capture\";i:1014;s:32:\"passwordreset-emailerror-capture\";i:1015;s:11:\"changeemail\";i:1016;s:18:\"changeemail-header\";i:1017;s:16:\"changeemail-text\";i:1018;s:19:\"changeemail-no-info\";i:1019;s:20:\"changeemail-oldemail\";i:1020;s:20:\"changeemail-newemail\";i:1021;s:16:\"changeemail-none\";i:1022;s:18:\"changeemail-submit\";i:1023;s:18:\"changeemail-cancel\";i:1024;s:11:\"bold_sample\";i:1025;s:8:\"bold_tip\";i:1026;s:13:\"italic_sample\";i:1027;s:10:\"italic_tip\";i:1028;s:11:\"link_sample\";i:1029;s:8:\"link_tip\";i:1030;s:14:\"extlink_sample\";i:1031;s:11:\"extlink_tip\";i:1032;s:15:\"headline_sample\";i:1033;s:12:\"headline_tip\";i:1034;s:13:\"nowiki_sample\";i:1035;s:10:\"nowiki_tip\";i:1036;s:12:\"image_sample\";i:1037;s:9:\"image_tip\";i:1038;s:12:\"media_sample\";i:1039;s:9:\"media_tip\";i:1040;s:7:\"sig_tip\";i:1041;s:6:\"hr_tip\";i:1042;s:7:\"summary\";i:1043;s:7:\"subject\";i:1044;s:9:\"minoredit\";i:1045;s:9:\"watchthis\";i:1046;s:11:\"savearticle\";i:1047;s:7:\"preview\";i:1048;s:11:\"showpreview\";i:1049;s:15:\"showlivepreview\";i:1050;s:8:\"showdiff\";i:1051;s:15:\"anoneditwarning\";i:1052;s:18:\"anonpreviewwarning\";i:1053;s:14:\"missingsummary\";i:1054;s:18:\"missingcommenttext\";i:1055;s:20:\"missingcommentheader\";i:1056;s:15:\"summary-preview\";i:1057;s:15:\"subject-preview\";i:1058;s:12:\"blockedtitle\";i:1059;s:11:\"blockedtext\";i:1060;s:15:\"autoblockedtext\";i:1061;s:15:\"blockednoreason\";i:1062;s:17:\"whitelistedittext\";i:1063;s:15:\"confirmedittext\";i:1064;s:18:\"nosuchsectiontitle\";i:1065;s:17:\"nosuchsectiontext\";i:1066;s:13:\"loginreqtitle\";i:1067;s:12:\"loginreqlink\";i:1068;s:16:\"loginreqpagetext\";i:1069;s:12:\"accmailtitle\";i:1070;s:11:\"accmailtext\";i:1071;s:10:\"newarticle\";i:1072;s:14:\"newarticletext\";i:1073;s:18:\"newarticletextanon\";i:1074;s:12:\"talkpagetext\";i:1075;s:16:\"anontalkpagetext\";i:1076;s:13:\"noarticletext\";i:1077;s:26:\"noarticletext-nopermission\";i:1078;s:17:\"noarticletextanon\";i:1079;s:25:\"userpage-userdoesnotexist\";i:1080;s:30:\"userpage-userdoesnotexist-view\";i:1081;s:25:\"blocked-notice-logextract\";i:1082;s:14:\"clearyourcache\";i:1083;s:20:\"usercssyoucanpreview\";i:1084;s:19:\"userjsyoucanpreview\";i:1085;s:14:\"usercsspreview\";i:1086;s:13:\"userjspreview\";i:1087;s:14:\"sitecsspreview\";i:1088;s:13:\"sitejspreview\";i:1089;s:21:\"userinvalidcssjstitle\";i:1090;s:7:\"updated\";i:1091;s:4:\"note\";i:1092;s:11:\"previewnote\";i:1093;s:15:\"previewconflict\";i:1094;s:20:\"session_fail_preview\";i:1095;s:25:\"session_fail_preview_html\";i:1096;s:21:\"token_suffix_mismatch\";i:1097;s:20:\"edit_form_incomplete\";i:1098;s:7:\"editing\";i:1099;s:14:\"editingsection\";i:1100;s:14:\"editingcomment\";i:1101;s:12:\"editconflict\";i:1102;s:15:\"explainconflict\";i:1103;s:8:\"yourtext\";i:1104;s:13:\"storedversion\";i:1105;s:17:\"nonunicodebrowser\";i:1106;s:10:\"editingold\";i:1107;s:8:\"yourdiff\";i:1108;s:16:\"copyrightwarning\";i:1109;s:17:\"copyrightwarning2\";i:1110;s:20:\"editpage-tos-summary\";i:1111;s:13:\"longpage-hint\";i:1112;s:13:\"longpageerror\";i:1113;s:15:\"readonlywarning\";i:1114;s:20:\"protectedpagewarning\";i:1115;s:24:\"semiprotectedpagewarning\";i:1116;s:23:\"cascadeprotectedwarning\";i:1117;s:21:\"titleprotectedwarning\";i:1118;s:13:\"templatesused\";i:1119;s:20:\"templatesusedpreview\";i:1120;s:20:\"templatesusedsection\";i:1121;s:18:\"template-protected\";i:1122;s:22:\"template-semiprotected\";i:1123;s:16:\"hiddencategories\";i:1124;s:9:\"edittools\";i:1125;s:16:\"edittools-upload\";i:1126;s:13:\"nocreatetitle\";i:1127;s:12:\"nocreatetext\";i:1128;s:17:\"nocreate-loggedin\";i:1129;s:29:\"sectioneditnotsupported-title\";i:1130;s:28:\"sectioneditnotsupported-text\";i:1131;s:17:\"permissionserrors\";i:1132;s:21:\"permissionserrorstext\";i:1133;s:32:\"permissionserrorstext-withaction\";i:1134;s:26:\"recreate-moveddeleted-warn\";i:1135;s:19:\"moveddeleted-notice\";i:1136;s:11:\"log-fulllog\";i:1137;s:17:\"edit-hook-aborted\";i:1138;s:17:\"edit-gone-missing\";i:1139;s:13:\"edit-conflict\";i:1140;s:14:\"edit-no-change\";i:1141;s:19:\"edit-already-exists\";i:1142;s:18:\"addsection-preload\";i:1143;s:20:\"addsection-editintro\";i:1144;s:32:\"expensive-parserfunction-warning\";i:1145;s:33:\"expensive-parserfunction-category\";i:1146;s:38:\"post-expand-template-inclusion-warning\";i:1147;s:39:\"post-expand-template-inclusion-category\";i:1148;s:37:\"post-expand-template-argument-warning\";i:1149;s:38:\"post-expand-template-argument-category\";i:1150;s:28:\"parser-template-loop-warning\";i:1151;s:39:\"parser-template-recursion-depth-warning\";i:1152;s:32:\"language-converter-depth-warning\";i:1153;s:12:\"undo-success\";i:1154;s:12:\"undo-failure\";i:1155;s:10:\"undo-norev\";i:1156;s:12:\"undo-summary\";i:1157;s:22:\"cantcreateaccounttitle\";i:1158;s:22:\"cantcreateaccount-text\";i:1159;s:12:\"viewpagelogs\";i:1160;s:9:\"nohistory\";i:1161;s:10:\"currentrev\";i:1162;s:15:\"currentrev-asof\";i:1163;s:12:\"revisionasof\";i:1164;s:13:\"revision-info\";i:1165;s:21:\"revision-info-current\";i:1166;s:12:\"revision-nav\";i:1167;s:16:\"previousrevision\";i:1168;s:12:\"nextrevision\";i:1169;s:19:\"currentrevisionlink\";i:1170;s:3:\"cur\";i:1171;s:4:\"next\";i:1172;s:4:\"last\";i:1173;s:10:\"page_first\";i:1174;s:9:\"page_last\";i:1175;s:10:\"histlegend\";i:1176;s:22:\"history-fieldset-title\";i:1177;s:20:\"history-show-deleted\";i:1178;s:17:\"history_copyright\";i:1179;s:9:\"histfirst\";i:1180;s:8:\"histlast\";i:1181;s:11:\"historysize\";i:1182;s:12:\"historyempty\";i:1183;s:18:\"history-feed-title\";i:1184;s:24:\"history-feed-description\";i:1185;s:27:\"history-feed-item-nocomment\";i:1186;s:18:\"history-feed-empty\";i:1187;s:19:\"rev-deleted-comment\";i:1188;s:16:\"rev-deleted-user\";i:1189;s:17:\"rev-deleted-event\";i:1190;s:25:\"rev-deleted-user-contribs\";i:1191;s:27:\"rev-deleted-text-permission\";i:1192;s:23:\"rev-deleted-text-unhide\";i:1193;s:26:\"rev-suppressed-text-unhide\";i:1194;s:21:\"rev-deleted-text-view\";i:1195;s:24:\"rev-suppressed-text-view\";i:1196;s:19:\"rev-deleted-no-diff\";i:1197;s:22:\"rev-suppressed-no-diff\";i:1198;s:23:\"rev-deleted-unhide-diff\";i:1199;s:26:\"rev-suppressed-unhide-diff\";i:1200;s:21:\"rev-deleted-diff-view\";i:1201;s:24:\"rev-suppressed-diff-view\";i:1202;s:12:\"rev-delundel\";i:1203;s:15:\"rev-showdeleted\";i:1204;s:14:\"revisiondelete\";i:1205;s:23:\"revdelete-nooldid-title\";i:1206;s:22:\"revdelete-nooldid-text\";i:1207;s:25:\"revdelete-nologtype-title\";i:1208;s:24:\"revdelete-nologtype-text\";i:1209;s:23:\"revdelete-nologid-title\";i:1210;s:22:\"revdelete-nologid-text\";i:1211;s:17:\"revdelete-no-file\";i:1212;s:27:\"revdelete-show-file-confirm\";i:1213;s:26:\"revdelete-show-file-submit\";i:1214;s:18:\"revdelete-selected\";i:1215;s:18:\"logdelete-selected\";i:1216;s:14:\"revdelete-text\";i:1217;s:17:\"revdelete-confirm\";i:1218;s:23:\"revdelete-suppress-text\";i:1219;s:16:\"revdelete-legend\";i:1220;s:19:\"revdelete-hide-text\";i:1221;s:20:\"revdelete-hide-image\";i:1222;s:19:\"revdelete-hide-name\";i:1223;s:22:\"revdelete-hide-comment\";i:1224;s:19:\"revdelete-hide-user\";i:1225;s:25:\"revdelete-hide-restricted\";i:1226;s:20:\"revdelete-radio-same\";i:1227;s:19:\"revdelete-radio-set\";i:1228;s:21:\"revdelete-radio-unset\";i:1229;s:18:\"revdelete-suppress\";i:1230;s:20:\"revdelete-unsuppress\";i:1231;s:13:\"revdelete-log\";i:1232;s:16:\"revdelete-submit\";i:1233;s:17:\"revdelete-success\";i:1234;s:17:\"revdelete-failure\";i:1235;s:17:\"logdelete-success\";i:1236;s:17:\"logdelete-failure\";i:1237;s:14:\"revdel-restore\";i:1238;s:22:\"revdel-restore-deleted\";i:1239;s:22:\"revdel-restore-visible\";i:1240;s:8:\"pagehist\";i:1241;s:11:\"deletedhist\";i:1242;s:22:\"revdelete-hide-current\";i:1243;s:24:\"revdelete-show-no-access\";i:1244;s:26:\"revdelete-modify-no-access\";i:1245;s:24:\"revdelete-modify-missing\";i:1246;s:19:\"revdelete-no-change\";i:1247;s:27:\"revdelete-concurrent-change\";i:1248;s:25:\"revdelete-only-restricted\";i:1249;s:25:\"revdelete-reason-dropdown\";i:1250;s:21:\"revdelete-otherreason\";i:1251;s:25:\"revdelete-reasonotherlist\";i:1252;s:25:\"revdelete-edit-reasonlist\";i:1253;s:18:\"revdelete-offender\";i:1254;s:14:\"suppressionlog\";i:1255;s:18:\"suppressionlogtext\";i:1256;s:12:\"mergehistory\";i:1257;s:19:\"mergehistory-header\";i:1258;s:16:\"mergehistory-box\";i:1259;s:17:\"mergehistory-from\";i:1260;s:17:\"mergehistory-into\";i:1261;s:17:\"mergehistory-list\";i:1262;s:18:\"mergehistory-merge\";i:1263;s:15:\"mergehistory-go\";i:1264;s:19:\"mergehistory-submit\";i:1265;s:18:\"mergehistory-empty\";i:1266;s:20:\"mergehistory-success\";i:1267;s:17:\"mergehistory-fail\";i:1268;s:22:\"mergehistory-no-source\";i:1269;s:27:\"mergehistory-no-destination\";i:1270;s:27:\"mergehistory-invalid-source\";i:1271;s:32:\"mergehistory-invalid-destination\";i:1272;s:24:\"mergehistory-autocomment\";i:1273;s:20:\"mergehistory-comment\";i:1274;s:29:\"mergehistory-same-destination\";i:1275;s:19:\"mergehistory-reason\";i:1276;s:8:\"mergelog\";i:1277;s:18:\"pagemerge-logentry\";i:1278;s:11:\"revertmerge\";i:1279;s:16:\"mergelogpagetext\";i:1280;s:13:\"history-title\";i:1281;s:10:\"difference\";i:1282;s:20:\"difference-multipage\";i:1283;s:6:\"lineno\";i:1284;s:23:\"compareselectedversions\";i:1285;s:24:\"showhideselectedversions\";i:1286;s:8:\"editundo\";i:1287;s:10:\"diff-multi\";i:1288;s:20:\"diff-multi-manyusers\";i:1289;s:14:\"search-summary\";i:1290;s:13:\"searchresults\";i:1291;s:19:\"searchresults-title\";i:1292;s:16:\"searchresulttext\";i:1293;s:14:\"searchsubtitle\";i:1294;s:21:\"searchsubtitleinvalid\";i:1295;s:14:\"toomanymatches\";i:1296;s:12:\"titlematches\";i:1297;s:14:\"notitlematches\";i:1298;s:11:\"textmatches\";i:1299;s:13:\"notextmatches\";i:1300;s:5:\"prevn\";i:1301;s:5:\"nextn\";i:1302;s:11:\"prevn-title\";i:1303;s:11:\"nextn-title\";i:1304;s:11:\"shown-title\";i:1305;s:12:\"viewprevnext\";i:1306;s:17:\"searchmenu-legend\";i:1307;s:17:\"searchmenu-exists\";i:1308;s:14:\"searchmenu-new\";i:1309;s:23:\"searchmenu-new-nocreate\";i:1310;s:14:\"searchhelp-url\";i:1311;s:17:\"searchmenu-prefix\";i:1312;s:15:\"searchmenu-help\";i:1313;s:22:\"searchprofile-articles\";i:1314;s:21:\"searchprofile-project\";i:1315;s:20:\"searchprofile-images\";i:1316;s:24:\"searchprofile-everything\";i:1317;s:22:\"searchprofile-advanced\";i:1318;s:30:\"searchprofile-articles-tooltip\";i:1319;s:29:\"searchprofile-project-tooltip\";i:1320;s:28:\"searchprofile-images-tooltip\";i:1321;s:32:\"searchprofile-everything-tooltip\";i:1322;s:30:\"searchprofile-advanced-tooltip\";i:1323;s:18:\"search-result-size\";i:1324;s:27:\"search-result-category-size\";i:1325;s:19:\"search-result-score\";i:1326;s:15:\"search-redirect\";i:1327;s:14:\"search-section\";i:1328;s:14:\"search-suggest\";i:1329;s:24:\"search-interwiki-caption\";i:1330;s:24:\"search-interwiki-default\";i:1331;s:23:\"search-interwiki-custom\";i:1332;s:21:\"search-interwiki-more\";i:1333;s:24:\"search-mwsuggest-enabled\";i:1334;s:25:\"search-mwsuggest-disabled\";i:1335;s:21:\"search-relatedarticle\";i:1336;s:17:\"mwsuggest-disable\";i:1337;s:23:\"searcheverything-enable\";i:1338;s:13:\"searchrelated\";i:1339;s:9:\"searchall\";i:1340;s:14:\"showingresults\";i:1341;s:17:\"showingresultsnum\";i:1342;s:20:\"showingresultsheader\";i:1343;s:9:\"nonefound\";i:1344;s:16:\"search-nonefound\";i:1345;s:11:\"powersearch\";i:1346;s:18:\"powersearch-legend\";i:1347;s:14:\"powersearch-ns\";i:1348;s:17:\"powersearch-redir\";i:1349;s:17:\"powersearch-field\";i:1350;s:23:\"powersearch-togglelabel\";i:1351;s:21:\"powersearch-toggleall\";i:1352;s:22:\"powersearch-togglenone\";i:1353;s:15:\"search-external\";i:1354;s:14:\"searchdisabled\";i:1355;s:12:\"googlesearch\";i:1356;s:15:\"opensearch-desc\";i:1357;s:10:\"qbsettings\";i:1358;s:15:\"qbsettings-none\";i:1359;s:20:\"qbsettings-fixedleft\";i:1360;s:21:\"qbsettings-fixedright\";i:1361;s:23:\"qbsettings-floatingleft\";i:1362;s:24:\"qbsettings-floatingright\";i:1363;s:25:\"qbsettings-directionality\";i:1364;s:11:\"preferences\";i:1365;s:19:\"preferences-summary\";i:1366;s:13:\"mypreferences\";i:1367;s:11:\"prefs-edits\";i:1368;s:12:\"prefsnologin\";i:1369;s:16:\"prefsnologintext\";i:1370;s:14:\"changepassword\";i:1371;s:10:\"prefs-skin\";i:1372;s:12:\"skin-preview\";i:1373;s:11:\"datedefault\";i:1374;s:10:\"prefs-beta\";i:1375;s:14:\"prefs-datetime\";i:1376;s:10:\"prefs-labs\";i:1377;s:14:\"prefs-personal\";i:1378;s:8:\"prefs-rc\";i:1379;s:15:\"prefs-watchlist\";i:1380;s:20:\"prefs-watchlist-days\";i:1381;s:24:\"prefs-watchlist-days-max\";i:1382;s:21:\"prefs-watchlist-edits\";i:1383;s:25:\"prefs-watchlist-edits-max\";i:1384;s:21:\"prefs-watchlist-token\";i:1385;s:10:\"prefs-misc\";i:1386;s:15:\"prefs-resetpass\";i:1387;s:17:\"prefs-changeemail\";i:1388;s:14:\"prefs-setemail\";i:1389;s:11:\"prefs-email\";i:1390;s:15:\"prefs-rendering\";i:1391;s:9:\"saveprefs\";i:1392;s:10:\"resetprefs\";i:1393;s:12:\"restoreprefs\";i:1394;s:13:\"prefs-editing\";i:1395;s:18:\"prefs-edit-boxsize\";i:1396;s:4:\"rows\";i:1397;s:7:\"columns\";i:1398;s:17:\"searchresultshead\";i:1399;s:14:\"resultsperpage\";i:1400;s:14:\"stub-threshold\";i:1401;s:23:\"stub-threshold-disabled\";i:1402;s:17:\"recentchangesdays\";i:1403;s:21:\"recentchangesdays-max\";i:1404;s:18:\"recentchangescount\";i:1405;s:29:\"prefs-help-recentchangescount\";i:1406;s:26:\"prefs-help-watchlist-token\";i:1407;s:10:\"savedprefs\";i:1408;s:14:\"timezonelegend\";i:1409;s:9:\"localtime\";i:1410;s:24:\"timezoneuseserverdefault\";i:1411;s:17:\"timezoneuseoffset\";i:1412;s:14:\"timezoneoffset\";i:1413;s:10:\"servertime\";i:1414;s:13:\"guesstimezone\";i:1415;s:21:\"timezoneregion-africa\";i:1416;s:22:\"timezoneregion-america\";i:1417;s:25:\"timezoneregion-antarctica\";i:1418;s:21:\"timezoneregion-arctic\";i:1419;s:19:\"timezoneregion-asia\";i:1420;s:23:\"timezoneregion-atlantic\";i:1421;s:24:\"timezoneregion-australia\";i:1422;s:21:\"timezoneregion-europe\";i:1423;s:21:\"timezoneregion-indian\";i:1424;s:22:\"timezoneregion-pacific\";i:1425;s:10:\"allowemail\";i:1426;s:19:\"prefs-searchoptions\";i:1427;s:16:\"prefs-namespaces\";i:1428;s:9:\"defaultns\";i:1429;s:7:\"default\";i:1430;s:11:\"prefs-files\";i:1431;s:16:\"prefs-custom-css\";i:1432;s:15:\"prefs-custom-js\";i:1433;s:19:\"prefs-common-css-js\";i:1434;s:17:\"prefs-reset-intro\";i:1435;s:24:\"prefs-emailconfirm-label\";i:1436;s:17:\"prefs-textboxsize\";i:1437;s:9:\"youremail\";i:1438;s:8:\"username\";i:1439;s:3:\"uid\";i:1440;s:20:\"prefs-memberingroups\";i:1441;s:25:\"prefs-memberingroups-type\";i:1442;s:18:\"prefs-registration\";i:1443;s:28:\"prefs-registration-date-time\";i:1444;s:12:\"yourrealname\";i:1445;s:12:\"yourlanguage\";i:1446;s:11:\"yourvariant\";i:1447;s:18:\"prefs-help-variant\";i:1448;s:8:\"yournick\";i:1449;s:20:\"prefs-help-signature\";i:1450;s:6:\"badsig\";i:1451;s:12:\"badsiglength\";i:1452;s:10:\"yourgender\";i:1453;s:14:\"gender-unknown\";i:1454;s:11:\"gender-male\";i:1455;s:13:\"gender-female\";i:1456;s:17:\"prefs-help-gender\";i:1457;s:5:\"email\";i:1458;s:19:\"prefs-help-realname\";i:1459;s:16:\"prefs-help-email\";i:1460;s:23:\"prefs-help-email-others\";i:1461;s:25:\"prefs-help-email-required\";i:1462;s:10:\"prefs-info\";i:1463;s:10:\"prefs-i18n\";i:1464;s:15:\"prefs-signature\";i:1465;s:16:\"prefs-dateformat\";i:1466;s:16:\"prefs-timeoffset\";i:1467;s:21:\"prefs-advancedediting\";i:1468;s:16:\"prefs-advancedrc\";i:1469;s:23:\"prefs-advancedrendering\";i:1470;s:27:\"prefs-advancedsearchoptions\";i:1471;s:23:\"prefs-advancedwatchlist\";i:1472;s:15:\"prefs-displayrc\";i:1473;s:26:\"prefs-displaysearchoptions\";i:1474;s:22:\"prefs-displaywatchlist\";i:1475;s:11:\"prefs-diffs\";i:1476;s:28:\"email-address-validity-valid\";i:1477;s:30:\"email-address-validity-invalid\";i:1478;s:10:\"userrights\";i:1479;s:18:\"userrights-summary\";i:1480;s:22:\"userrights-lookup-user\";i:1481;s:24:\"userrights-user-editname\";i:1482;s:13:\"editusergroup\";i:1483;s:11:\"editinguser\";i:1484;s:24:\"userrights-editusergroup\";i:1485;s:14:\"saveusergroups\";i:1486;s:23:\"userrights-groupsmember\";i:1487;s:28:\"userrights-groupsmember-auto\";i:1488;s:22:\"userrights-groups-help\";i:1489;s:17:\"userrights-reason\";i:1490;s:23:\"userrights-no-interwiki\";i:1491;s:21:\"userrights-nodatabase\";i:1492;s:18:\"userrights-nologin\";i:1493;s:21:\"userrights-notallowed\";i:1494;s:25:\"userrights-changeable-col\";i:1495;s:27:\"userrights-unchangeable-col\";i:1496;s:30:\"userrights-irreversible-marker\";i:1497;s:5:\"group\";i:1498;s:10:\"group-user\";i:1499;s:19:\"group-autoconfirmed\";i:1500;s:9:\"group-bot\";i:1501;s:11:\"group-sysop\";i:1502;s:16:\"group-bureaucrat\";i:1503;s:14:\"group-suppress\";i:1504;s:9:\"group-all\";i:1505;s:17:\"group-user-member\";i:1506;s:26:\"group-autoconfirmed-member\";i:1507;s:16:\"group-bot-member\";i:1508;s:18:\"group-sysop-member\";i:1509;s:23:\"group-bureaucrat-member\";i:1510;s:21:\"group-suppress-member\";i:1511;s:14:\"grouppage-user\";i:1512;s:23:\"grouppage-autoconfirmed\";i:1513;s:13:\"grouppage-bot\";i:1514;s:15:\"grouppage-sysop\";i:1515;s:20:\"grouppage-bureaucrat\";i:1516;s:18:\"grouppage-suppress\";i:1517;s:10:\"right-read\";i:1518;s:10:\"right-edit\";i:1519;s:16:\"right-createpage\";i:1520;s:16:\"right-createtalk\";i:1521;s:19:\"right-createaccount\";i:1522;s:15:\"right-minoredit\";i:1523;s:10:\"right-move\";i:1524;s:19:\"right-move-subpages\";i:1525;s:24:\"right-move-rootuserpages\";i:1526;s:14:\"right-movefile\";i:1527;s:22:\"right-suppressredirect\";i:1528;s:12:\"right-upload\";i:1529;s:14:\"right-reupload\";i:1530;s:18:\"right-reupload-own\";i:1531;s:21:\"right-reupload-shared\";i:1532;s:19:\"right-upload_by_url\";i:1533;s:11:\"right-purge\";i:1534;s:19:\"right-autoconfirmed\";i:1535;s:9:\"right-bot\";i:1536;s:20:\"right-nominornewtalk\";i:1537;s:19:\"right-apihighlimits\";i:1538;s:14:\"right-writeapi\";i:1539;s:12:\"right-delete\";i:1540;s:15:\"right-bigdelete\";i:1541;s:20:\"right-deleterevision\";i:1542;s:20:\"right-deletedhistory\";i:1543;s:17:\"right-deletedtext\";i:1544;s:19:\"right-browsearchive\";i:1545;s:14:\"right-undelete\";i:1546;s:22:\"right-suppressrevision\";i:1547;s:20:\"right-suppressionlog\";i:1548;s:11:\"right-block\";i:1549;s:16:\"right-blockemail\";i:1550;s:14:\"right-hideuser\";i:1551;s:20:\"right-ipblock-exempt\";i:1552;s:21:\"right-proxyunbannable\";i:1553;s:17:\"right-unblockself\";i:1554;s:13:\"right-protect\";i:1555;s:19:\"right-editprotected\";i:1556;s:19:\"right-editinterface\";i:1557;s:19:\"right-editusercssjs\";i:1558;s:17:\"right-editusercss\";i:1559;s:16:\"right-edituserjs\";i:1560;s:14:\"right-rollback\";i:1561;s:18:\"right-markbotedits\";i:1562;s:17:\"right-noratelimit\";i:1563;s:12:\"right-import\";i:1564;s:18:\"right-importupload\";i:1565;s:12:\"right-patrol\";i:1566;s:16:\"right-autopatrol\";i:1567;s:17:\"right-patrolmarks\";i:1568;s:20:\"right-unwatchedpages\";i:1569;s:18:\"right-mergehistory\";i:1570;s:16:\"right-userrights\";i:1571;s:26:\"right-userrights-interwiki\";i:1572;s:15:\"right-siteadmin\";i:1573;s:27:\"right-override-export-depth\";i:1574;s:15:\"right-sendemail\";i:1575;s:19:\"right-passwordreset\";i:1576;s:9:\"rightslog\";i:1577;s:13:\"rightslogtext\";i:1578;s:14:\"rightslogentry\";i:1579;s:26:\"rightslogentry-autopromote\";i:1580;s:10:\"rightsnone\";i:1581;s:11:\"action-read\";i:1582;s:11:\"action-edit\";i:1583;s:17:\"action-createpage\";i:1584;s:17:\"action-createtalk\";i:1585;s:20:\"action-createaccount\";i:1586;s:16:\"action-minoredit\";i:1587;s:11:\"action-move\";i:1588;s:20:\"action-move-subpages\";i:1589;s:25:\"action-move-rootuserpages\";i:1590;s:15:\"action-movefile\";i:1591;s:13:\"action-upload\";i:1592;s:15:\"action-reupload\";i:1593;s:22:\"action-reupload-shared\";i:1594;s:20:\"action-upload_by_url\";i:1595;s:15:\"action-writeapi\";i:1596;s:13:\"action-delete\";i:1597;s:21:\"action-deleterevision\";i:1598;s:21:\"action-deletedhistory\";i:1599;s:20:\"action-browsearchive\";i:1600;s:15:\"action-undelete\";i:1601;s:23:\"action-suppressrevision\";i:1602;s:21:\"action-suppressionlog\";i:1603;s:12:\"action-block\";i:1604;s:14:\"action-protect\";i:1605;s:15:\"action-rollback\";i:1606;s:13:\"action-import\";i:1607;s:19:\"action-importupload\";i:1608;s:13:\"action-patrol\";i:1609;s:17:\"action-autopatrol\";i:1610;s:21:\"action-unwatchedpages\";i:1611;s:19:\"action-mergehistory\";i:1612;s:17:\"action-userrights\";i:1613;s:27:\"action-userrights-interwiki\";i:1614;s:16:\"action-siteadmin\";i:1615;s:16:\"action-sendemail\";i:1616;s:8:\"nchanges\";i:1617;s:13:\"recentchanges\";i:1618;s:17:\"recentchanges-url\";i:1619;s:20:\"recentchanges-legend\";i:1620;s:17:\"recentchangestext\";i:1621;s:30:\"recentchanges-feed-description\";i:1622;s:27:\"recentchanges-label-newpage\";i:1623;s:25:\"recentchanges-label-minor\";i:1624;s:23:\"recentchanges-label-bot\";i:1625;s:31:\"recentchanges-label-unpatrolled\";i:1626;s:6:\"rcnote\";i:1627;s:10:\"rcnotefrom\";i:1628;s:10:\"rclistfrom\";i:1629;s:15:\"rcshowhideminor\";i:1630;s:14:\"rcshowhidebots\";i:1631;s:13:\"rcshowhideliu\";i:1632;s:15:\"rcshowhideanons\";i:1633;s:14:\"rcshowhidepatr\";i:1634;s:14:\"rcshowhidemine\";i:1635;s:7:\"rclinks\";i:1636;s:4:\"diff\";i:1637;s:4:\"hist\";i:1638;s:4:\"hide\";i:1639;s:4:\"show\";i:1640;s:15:\"minoreditletter\";i:1641;s:13:\"newpageletter\";i:1642;s:13:\"boteditletter\";i:1643;s:17:\"unpatrolledletter\";i:1644;s:31:\"number_of_watching_users_RCview\";i:1645;s:33:\"number_of_watching_users_pageview\";i:1646;s:13:\"rc_categories\";i:1647;s:17:\"rc_categories_any\";i:1648;s:14:\"rc-change-size\";i:1649;s:18:\"rc-change-size-new\";i:1650;s:17:\"newsectionsummary\";i:1651;s:18:\"rc-enhanced-expand\";i:1652;s:16:\"rc-enhanced-hide\";i:1653;s:12:\"rc-old-title\";i:1654;s:19:\"recentchangeslinked\";i:1655;s:24:\"recentchangeslinked-feed\";i:1656;s:27:\"recentchangeslinked-toolbox\";i:1657;s:25:\"recentchangeslinked-title\";i:1658;s:28:\"recentchangeslinked-noresult\";i:1659;s:27:\"recentchangeslinked-summary\";i:1660;s:24:\"recentchangeslinked-page\";i:1661;s:22:\"recentchangeslinked-to\";i:1662;s:6:\"upload\";i:1663;s:9:\"uploadbtn\";i:1664;s:12:\"reuploaddesc\";i:1665;s:15:\"upload-tryagain\";i:1666;s:13:\"uploadnologin\";i:1667;s:17:\"uploadnologintext\";i:1668;s:24:\"upload_directory_missing\";i:1669;s:26:\"upload_directory_read_only\";i:1670;s:11:\"uploaderror\";i:1671;s:14:\"upload-summary\";i:1672;s:23:\"upload-recreate-warning\";i:1673;s:10:\"uploadtext\";i:1674;s:16:\"upload-permitted\";i:1675;s:16:\"upload-preferred\";i:1676;s:17:\"upload-prohibited\";i:1677;s:12:\"uploadfooter\";i:1678;s:9:\"uploadlog\";i:1679;s:13:\"uploadlogpage\";i:1680;s:17:\"uploadlogpagetext\";i:1681;s:8:\"filename\";i:1682;s:8:\"filedesc\";i:1683;s:17:\"fileuploadsummary\";i:1684;s:19:\"filereuploadsummary\";i:1685;s:10:\"filestatus\";i:1686;s:10:\"filesource\";i:1687;s:13:\"uploadedfiles\";i:1688;s:13:\"ignorewarning\";i:1689;s:14:\"ignorewarnings\";i:1690;s:10:\"minlength1\";i:1691;s:15:\"illegalfilename\";i:1692;s:16:\"filename-toolong\";i:1693;s:11:\"badfilename\";i:1694;s:22:\"filetype-mime-mismatch\";i:1695;s:16:\"filetype-badmime\";i:1696;s:20:\"filetype-bad-ie-mime\";i:1697;s:22:\"filetype-unwanted-type\";i:1698;s:20:\"filetype-banned-type\";i:1699;s:16:\"filetype-missing\";i:1700;s:10:\"empty-file\";i:1701;s:14:\"file-too-large\";i:1702;s:17:\"filename-tooshort\";i:1703;s:15:\"filetype-banned\";i:1704;s:18:\"verification-error\";i:1705;s:11:\"hookaborted\";i:1706;s:16:\"illegal-filename\";i:1707;s:9:\"overwrite\";i:1708;s:13:\"unknown-error\";i:1709;s:16:\"tmp-create-error\";i:1710;s:15:\"tmp-write-error\";i:1711;s:10:\"large-file\";i:1712;s:15:\"largefileserver\";i:1713;s:9:\"emptyfile\";i:1714;s:25:\"windows-nonascii-filename\";i:1715;s:10:\"fileexists\";i:1716;s:14:\"filepageexists\";i:1717;s:20:\"fileexists-extension\";i:1718;s:24:\"fileexists-thumbnail-yes\";i:1719;s:17:\"file-thumbnail-no\";i:1720;s:20:\"fileexists-forbidden\";i:1721;s:27:\"fileexists-shared-forbidden\";i:1722;s:21:\"file-exists-duplicate\";i:1723;s:22:\"file-deleted-duplicate\";i:1724;s:13:\"uploadwarning\";i:1725;s:18:\"uploadwarning-text\";i:1726;s:8:\"savefile\";i:1727;s:13:\"uploadedimage\";i:1728;s:14:\"overwroteimage\";i:1729;s:14:\"uploaddisabled\";i:1730;s:18:\"copyuploaddisabled\";i:1731;s:20:\"uploadfromurl-queued\";i:1732;s:18:\"uploaddisabledtext\";i:1733;s:22:\"php-uploaddisabledtext\";i:1734;s:14:\"uploadscripted\";i:1735;s:11:\"uploadvirus\";i:1736;s:10:\"uploadjava\";i:1737;s:13:\"upload-source\";i:1738;s:14:\"sourcefilename\";i:1739;s:9:\"sourceurl\";i:1740;s:12:\"destfilename\";i:1741;s:18:\"upload-maxfilesize\";i:1742;s:18:\"upload-description\";i:1743;s:14:\"upload-options\";i:1744;s:15:\"watchthisupload\";i:1745;s:14:\"filewasdeleted\";i:1746;s:19:\"filename-bad-prefix\";i:1747;s:25:\"filename-prefix-blacklist\";i:1748;s:19:\"upload-success-subj\";i:1749;s:18:\"upload-success-msg\";i:1750;s:19:\"upload-failure-subj\";i:1751;s:18:\"upload-failure-msg\";i:1752;s:19:\"upload-warning-subj\";i:1753;s:18:\"upload-warning-msg\";i:1754;s:18:\"upload-proto-error\";i:1755;s:23:\"upload-proto-error-text\";i:1756;s:17:\"upload-file-error\";i:1757;s:22:\"upload-file-error-text\";i:1758;s:17:\"upload-misc-error\";i:1759;s:22:\"upload-misc-error-text\";i:1760;s:25:\"upload-too-many-redirects\";i:1761;s:19:\"upload-unknown-size\";i:1762;s:17:\"upload-http-error\";i:1763;s:19:\"backend-fail-stream\";i:1764;s:19:\"backend-fail-backup\";i:1765;s:22:\"backend-fail-notexists\";i:1766;s:19:\"backend-fail-hashes\";i:1767;s:20:\"backend-fail-notsame\";i:1768;s:24:\"backend-fail-invalidpath\";i:1769;s:19:\"backend-fail-delete\";i:1770;s:26:\"backend-fail-alreadyexists\";i:1771;s:18:\"backend-fail-store\";i:1772;s:17:\"backend-fail-copy\";i:1773;s:17:\"backend-fail-move\";i:1774;s:21:\"backend-fail-opentemp\";i:1775;s:22:\"backend-fail-writetemp\";i:1776;s:22:\"backend-fail-closetemp\";i:1777;s:17:\"backend-fail-read\";i:1778;s:19:\"backend-fail-create\";i:1779;s:21:\"backend-fail-readonly\";i:1780;s:19:\"backend-fail-synced\";i:1781;s:20:\"backend-fail-connect\";i:1782;s:21:\"backend-fail-internal\";i:1783;s:24:\"backend-fail-contenttype\";i:1784;s:22:\"backend-fail-batchsize\";i:1785;s:21:\"lockmanager-notlocked\";i:1786;s:26:\"lockmanager-fail-closelock\";i:1787;s:27:\"lockmanager-fail-deletelock\";i:1788;s:28:\"lockmanager-fail-acquirelock\";i:1789;s:25:\"lockmanager-fail-openlock\";i:1790;s:28:\"lockmanager-fail-releaselock\";i:1791;s:26:\"lockmanager-fail-db-bucket\";i:1792;s:27:\"lockmanager-fail-db-release\";i:1793;s:28:\"lockmanager-fail-svr-release\";i:1794;s:19:\"zip-file-open-error\";i:1795;s:16:\"zip-wrong-format\";i:1796;s:7:\"zip-bad\";i:1797;s:15:\"zip-unsupported\";i:1798;s:11:\"uploadstash\";i:1799;s:19:\"uploadstash-summary\";i:1800;s:17:\"uploadstash-clear\";i:1801;s:19:\"uploadstash-nofiles\";i:1802;s:20:\"uploadstash-badtoken\";i:1803;s:20:\"uploadstash-errclear\";i:1804;s:19:\"uploadstash-refresh\";i:1805;s:20:\"invalid-chunk-offset\";i:1806;s:21:\"img-auth-accessdenied\";i:1807;s:19:\"img-auth-nopathinfo\";i:1808;s:17:\"img-auth-notindir\";i:1809;s:17:\"img-auth-badtitle\";i:1810;s:19:\"img-auth-nologinnWL\";i:1811;s:15:\"img-auth-nofile\";i:1812;s:14:\"img-auth-isdir\";i:1813;s:18:\"img-auth-streaming\";i:1814;s:15:\"img-auth-public\";i:1815;s:15:\"img-auth-noread\";i:1816;s:25:\"img-auth-bad-query-string\";i:1817;s:16:\"http-invalid-url\";i:1818;s:19:\"http-invalid-scheme\";i:1819;s:18:\"http-request-error\";i:1820;s:15:\"http-read-error\";i:1821;s:14:\"http-timed-out\";i:1822;s:15:\"http-curl-error\";i:1823;s:21:\"http-host-unreachable\";i:1824;s:15:\"http-bad-status\";i:1825;s:18:\"upload-curl-error6\";i:1826;s:23:\"upload-curl-error6-text\";i:1827;s:19:\"upload-curl-error28\";i:1828;s:24:\"upload-curl-error28-text\";i:1829;s:7:\"license\";i:1830;s:14:\"license-header\";i:1831;s:9:\"nolicense\";i:1832;s:8:\"licenses\";i:1833;s:17:\"license-nopreview\";i:1834;s:17:\"upload_source_url\";i:1835;s:18:\"upload_source_file\";i:1836;s:17:\"listfiles-summary\";i:1837;s:20:\"listfiles_search_for\";i:1838;s:7:\"imgfile\";i:1839;s:9:\"listfiles\";i:1840;s:15:\"listfiles_thumb\";i:1841;s:14:\"listfiles_date\";i:1842;s:14:\"listfiles_name\";i:1843;s:14:\"listfiles_user\";i:1844;s:14:\"listfiles_size\";i:1845;s:21:\"listfiles_description\";i:1846;s:15:\"listfiles_count\";i:1847;s:16:\"file-anchor-link\";i:1848;s:8:\"filehist\";i:1849;s:13:\"filehist-help\";i:1850;s:18:\"filehist-deleteall\";i:1851;s:18:\"filehist-deleteone\";i:1852;s:15:\"filehist-revert\";i:1853;s:16:\"filehist-current\";i:1854;s:17:\"filehist-datetime\";i:1855;s:14:\"filehist-thumb\";i:1856;s:18:\"filehist-thumbtext\";i:1857;s:16:\"filehist-nothumb\";i:1858;s:13:\"filehist-user\";i:1859;s:19:\"filehist-dimensions\";i:1860;s:17:\"filehist-filesize\";i:1861;s:16:\"filehist-comment\";i:1862;s:16:\"filehist-missing\";i:1863;s:10:\"imagelinks\";i:1864;s:12:\"linkstoimage\";i:1865;s:17:\"linkstoimage-more\";i:1866;s:14:\"nolinkstoimage\";i:1867;s:16:\"morelinkstoimage\";i:1868;s:21:\"linkstoimage-redirect\";i:1869;s:16:\"duplicatesoffile\";i:1870;s:12:\"sharedupload\";i:1871;s:23:\"sharedupload-desc-there\";i:1872;s:22:\"sharedupload-desc-here\";i:1873;s:24:\"shareddescriptionfollows\";i:1874;s:15:\"filepage-nofile\";i:1875;s:20:\"filepage-nofile-link\";i:1876;s:25:\"uploadnewversion-linktext\";i:1877;s:16:\"shared-repo-from\";i:1878;s:11:\"shared-repo\";i:1879;s:33:\"shared-repo-name-wikimediacommons\";i:1880;s:12:\"filepage.css\";i:1881;s:10:\"filerevert\";i:1882;s:17:\"filerevert-legend\";i:1883;s:16:\"filerevert-intro\";i:1884;s:18:\"filerevert-comment\";i:1885;s:25:\"filerevert-defaultcomment\";i:1886;s:17:\"filerevert-submit\";i:1887;s:18:\"filerevert-success\";i:1888;s:21:\"filerevert-badversion\";i:1889;s:10:\"filedelete\";i:1890;s:17:\"filedelete-legend\";i:1891;s:16:\"filedelete-intro\";i:1892;s:20:\"filedelete-intro-old\";i:1893;s:18:\"filedelete-comment\";i:1894;s:17:\"filedelete-submit\";i:1895;s:18:\"filedelete-success\";i:1896;s:22:\"filedelete-success-old\";i:1897;s:17:\"filedelete-nofile\";i:1898;s:21:\"filedelete-nofile-old\";i:1899;s:22:\"filedelete-otherreason\";i:1900;s:27:\"filedelete-reason-otherlist\";i:1901;s:26:\"filedelete-reason-dropdown\";i:1902;s:26:\"filedelete-edit-reasonlist\";i:1903;s:22:\"filedelete-maintenance\";i:1904;s:28:\"filedelete-maintenance-title\";i:1905;s:10:\"mimesearch\";i:1906;s:18:\"mimesearch-summary\";i:1907;s:8:\"mimetype\";i:1908;s:8:\"download\";i:1909;s:14:\"unwatchedpages\";i:1910;s:22:\"unwatchedpages-summary\";i:1911;s:13:\"listredirects\";i:1912;s:21:\"listredirects-summary\";i:1913;s:15:\"unusedtemplates\";i:1914;s:23:\"unusedtemplates-summary\";i:1915;s:19:\"unusedtemplatestext\";i:1916;s:18:\"unusedtemplateswlh\";i:1917;s:10:\"randompage\";i:1918;s:18:\"randompage-nopages\";i:1919;s:14:\"randompage-url\";i:1920;s:14:\"randomredirect\";i:1921;s:22:\"randomredirect-nopages\";i:1922;s:10:\"statistics\";i:1923;s:18:\"statistics-summary\";i:1924;s:23:\"statistics-header-pages\";i:1925;s:23:\"statistics-header-edits\";i:1926;s:23:\"statistics-header-views\";i:1927;s:23:\"statistics-header-users\";i:1928;s:23:\"statistics-header-hooks\";i:1929;s:19:\"statistics-articles\";i:1930;s:16:\"statistics-pages\";i:1931;s:21:\"statistics-pages-desc\";i:1932;s:16:\"statistics-files\";i:1933;s:16:\"statistics-edits\";i:1934;s:24:\"statistics-edits-average\";i:1935;s:22:\"statistics-views-total\";i:1936;s:27:\"statistics-views-total-desc\";i:1937;s:24:\"statistics-views-peredit\";i:1938;s:16:\"statistics-users\";i:1939;s:23:\"statistics-users-active\";i:1940;s:28:\"statistics-users-active-desc\";i:1941;s:22:\"statistics-mostpopular\";i:1942;s:17:\"statistics-footer\";i:1943;s:15:\"disambiguations\";i:1944;s:23:\"disambiguations-summary\";i:1945;s:19:\"disambiguationspage\";i:1946;s:20:\"disambiguations-text\";i:1947;s:15:\"doubleredirects\";i:1948;s:23:\"doubleredirects-summary\";i:1949;s:19:\"doubleredirectstext\";i:1950;s:26:\"double-redirect-fixed-move\";i:1951;s:33:\"double-redirect-fixed-maintenance\";i:1952;s:21:\"double-redirect-fixer\";i:1953;s:15:\"brokenredirects\";i:1954;s:23:\"brokenredirects-summary\";i:1955;s:19:\"brokenredirectstext\";i:1956;s:20:\"brokenredirects-edit\";i:1957;s:22:\"brokenredirects-delete\";i:1958;s:16:\"withoutinterwiki\";i:1959;s:24:\"withoutinterwiki-summary\";i:1960;s:23:\"withoutinterwiki-legend\";i:1961;s:23:\"withoutinterwiki-submit\";i:1962;s:15:\"fewestrevisions\";i:1963;s:23:\"fewestrevisions-summary\";i:1964;s:6:\"nbytes\";i:1965;s:11:\"ncategories\";i:1966;s:6:\"nlinks\";i:1967;s:8:\"nmembers\";i:1968;s:10:\"nrevisions\";i:1969;s:6:\"nviews\";i:1970;s:11:\"nimagelinks\";i:1971;s:14:\"ntransclusions\";i:1972;s:17:\"specialpage-empty\";i:1973;s:11:\"lonelypages\";i:1974;s:19:\"lonelypages-summary\";i:1975;s:15:\"lonelypagestext\";i:1976;s:18:\"uncategorizedpages\";i:1977;s:26:\"uncategorizedpages-summary\";i:1978;s:23:\"uncategorizedcategories\";i:1979;s:31:\"uncategorizedcategories-summary\";i:1980;s:19:\"uncategorizedimages\";i:1981;s:27:\"uncategorizedimages-summary\";i:1982;s:22:\"uncategorizedtemplates\";i:1983;s:30:\"uncategorizedtemplates-summary\";i:1984;s:16:\"unusedcategories\";i:1985;s:12:\"unusedimages\";i:1986;s:12:\"popularpages\";i:1987;s:20:\"popularpages-summary\";i:1988;s:16:\"wantedcategories\";i:1989;s:24:\"wantedcategories-summary\";i:1990;s:11:\"wantedpages\";i:1991;s:19:\"wantedpages-summary\";i:1992;s:20:\"wantedpages-badtitle\";i:1993;s:11:\"wantedfiles\";i:1994;s:19:\"wantedfiles-summary\";i:1995;s:18:\"wantedfiletext-cat\";i:1996;s:20:\"wantedfiletext-nocat\";i:1997;s:15:\"wantedtemplates\";i:1998;s:23:\"wantedtemplates-summary\";i:1999;s:10:\"mostlinked\";i:2000;s:18:\"mostlinked-summary\";i:2001;s:20:\"mostlinkedcategories\";i:2002;s:28:\"mostlinkedcategories-summary\";i:2003;s:19:\"mostlinkedtemplates\";i:2004;s:27:\"mostlinkedtemplates-summary\";i:2005;s:14:\"mostcategories\";i:2006;s:22:\"mostcategories-summary\";i:2007;s:10:\"mostimages\";i:2008;s:18:\"mostimages-summary\";i:2009;s:13:\"mostrevisions\";i:2010;s:21:\"mostrevisions-summary\";i:2011;s:11:\"prefixindex\";i:2012;s:21:\"prefixindex-namespace\";i:2013;s:19:\"prefixindex-summary\";i:2014;s:10:\"shortpages\";i:2015;s:18:\"shortpages-summary\";i:2016;s:9:\"longpages\";i:2017;s:17:\"longpages-summary\";i:2018;s:12:\"deadendpages\";i:2019;s:20:\"deadendpages-summary\";i:2020;s:16:\"deadendpagestext\";i:2021;s:14:\"protectedpages\";i:2022;s:20:\"protectedpages-indef\";i:2023;s:22:\"protectedpages-summary\";i:2024;s:22:\"protectedpages-cascade\";i:2025;s:18:\"protectedpagestext\";i:2026;s:19:\"protectedpagesempty\";i:2027;s:15:\"protectedtitles\";i:2028;s:23:\"protectedtitles-summary\";i:2029;s:19:\"protectedtitlestext\";i:2030;s:20:\"protectedtitlesempty\";i:2031;s:9:\"listusers\";i:2032;s:17:\"listusers-summary\";i:2033;s:19:\"listusers-editsonly\";i:2034;s:22:\"listusers-creationsort\";i:2035;s:13:\"usereditcount\";i:2036;s:11:\"usercreated\";i:2037;s:8:\"newpages\";i:2038;s:16:\"newpages-summary\";i:2039;s:17:\"newpages-username\";i:2040;s:12:\"ancientpages\";i:2041;s:20:\"ancientpages-summary\";i:2042;s:4:\"move\";i:2043;s:12:\"movethispage\";i:2044;s:16:\"unusedimagestext\";i:2045;s:20:\"unusedcategoriestext\";i:2046;s:13:\"notargettitle\";i:2047;s:12:\"notargettext\";i:2048;s:11:\"nopagetitle\";i:2049;s:10:\"nopagetext\";i:2050;s:13:\"pager-newer-n\";i:2051;s:13:\"pager-older-n\";i:2052;s:8:\"suppress\";i:2053;s:18:\"querypage-disabled\";i:2054;s:11:\"booksources\";i:2055;s:19:\"booksources-summary\";i:2056;s:25:\"booksources-search-legend\";i:2057;s:16:\"booksources-isbn\";i:2058;s:14:\"booksources-go\";i:2059;s:16:\"booksources-text\";i:2060;s:24:\"booksources-invalid-isbn\";i:2061;s:6:\"rfcurl\";i:2062;s:9:\"pubmedurl\";i:2063;s:19:\"specialloguserlabel\";i:2064;s:20:\"speciallogtitlelabel\";i:2065;s:3:\"log\";i:2066;s:13:\"all-logs-page\";i:2067;s:11:\"alllogstext\";i:2068;s:8:\"logempty\";i:2069;s:18:\"log-title-wildcard\";i:2070;s:8:\"allpages\";i:2071;s:16:\"allpages-summary\";i:2072;s:14:\"alphaindexline\";i:2073;s:8:\"nextpage\";i:2074;s:8:\"prevpage\";i:2075;s:12:\"allpagesfrom\";i:2076;s:10:\"allpagesto\";i:2077;s:11:\"allarticles\";i:2078;s:14:\"allinnamespace\";i:2079;s:17:\"allnotinnamespace\";i:2080;s:12:\"allpagesprev\";i:2081;s:12:\"allpagesnext\";i:2082;s:14:\"allpagessubmit\";i:2083;s:14:\"allpagesprefix\";i:2084;s:16:\"allpagesbadtitle\";i:2085;s:15:\"allpages-bad-ns\";i:2086;s:10:\"categories\";i:2087;s:18:\"categories-summary\";i:2088;s:18:\"categoriespagetext\";i:2089;s:14:\"categoriesfrom\";i:2090;s:29:\"special-categories-sort-count\";i:2091;s:27:\"special-categories-sort-abc\";i:2092;s:20:\"deletedcontributions\";i:2093;s:26:\"deletedcontributions-title\";i:2094;s:32:\"sp-deletedcontributions-contribs\";i:2095;s:10:\"linksearch\";i:2096;s:14:\"linksearch-pat\";i:2097;s:13:\"linksearch-ns\";i:2098;s:13:\"linksearch-ok\";i:2099;s:15:\"linksearch-text\";i:2100;s:15:\"linksearch-line\";i:2101;s:16:\"linksearch-error\";i:2102;s:13:\"listusersfrom\";i:2103;s:16:\"listusers-submit\";i:2104;s:18:\"listusers-noresult\";i:2105;s:17:\"listusers-blocked\";i:2106;s:11:\"activeusers\";i:2107;s:19:\"activeusers-summary\";i:2108;s:17:\"activeusers-intro\";i:2109;s:17:\"activeusers-count\";i:2110;s:16:\"activeusers-from\";i:2111;s:20:\"activeusers-hidebots\";i:2112;s:22:\"activeusers-hidesysops\";i:2113;s:20:\"activeusers-noresult\";i:2114;s:14:\"newuserlogpage\";i:2115;s:18:\"newuserlogpagetext\";i:2116;s:15:\"listgrouprights\";i:2117;s:23:\"listgrouprights-summary\";i:2118;s:19:\"listgrouprights-key\";i:2119;s:21:\"listgrouprights-group\";i:2120;s:22:\"listgrouprights-rights\";i:2121;s:24:\"listgrouprights-helppage\";i:2122;s:23:\"listgrouprights-members\";i:2123;s:29:\"listgrouprights-right-display\";i:2124;s:29:\"listgrouprights-right-revoked\";i:2125;s:24:\"listgrouprights-addgroup\";i:2126;s:27:\"listgrouprights-removegroup\";i:2127;s:28:\"listgrouprights-addgroup-all\";i:2128;s:31:\"listgrouprights-removegroup-all\";i:2129;s:29:\"listgrouprights-addgroup-self\";i:2130;s:32:\"listgrouprights-removegroup-self\";i:2131;s:33:\"listgrouprights-addgroup-self-all\";i:2132;s:36:\"listgrouprights-removegroup-self-all\";i:2133;s:11:\"mailnologin\";i:2134;s:15:\"mailnologintext\";i:2135;s:9:\"emailuser\";i:2136;s:9:\"emailpage\";i:2137;s:13:\"emailpagetext\";i:2138;s:15:\"usermailererror\";i:2139;s:15:\"defemailsubject\";i:2140;s:16:\"usermaildisabled\";i:2141;s:20:\"usermaildisabledtext\";i:2142;s:12:\"noemailtitle\";i:2143;s:11:\"noemailtext\";i:2144;s:16:\"nowikiemailtitle\";i:2145;s:15:\"nowikiemailtext\";i:2146;s:13:\"emailnotarget\";i:2147;s:11:\"emailtarget\";i:2148;s:13:\"emailusername\";i:2149;s:19:\"emailusernamesubmit\";i:2150;s:12:\"email-legend\";i:2151;s:9:\"emailfrom\";i:2152;s:7:\"emailto\";i:2153;s:12:\"emailsubject\";i:2154;s:12:\"emailmessage\";i:2155;s:9:\"emailsend\";i:2156;s:9:\"emailccme\";i:2157;s:14:\"emailccsubject\";i:2158;s:9:\"emailsent\";i:2159;s:13:\"emailsenttext\";i:2160;s:15:\"emailuserfooter\";i:2161;s:19:\"usermessage-summary\";i:2162;s:18:\"usermessage-editor\";i:2163;s:20:\"usermessage-template\";i:2164;s:9:\"watchlist\";i:2165;s:11:\"mywatchlist\";i:2166;s:13:\"watchlistfor2\";i:2167;s:11:\"nowatchlist\";i:2168;s:17:\"watchlistanontext\";i:2169;s:12:\"watchnologin\";i:2170;s:16:\"watchnologintext\";i:2171;s:8:\"addwatch\";i:2172;s:14:\"addedwatchtext\";i:2173;s:11:\"removewatch\";i:2174;s:16:\"removedwatchtext\";i:2175;s:5:\"watch\";i:2176;s:13:\"watchthispage\";i:2177;s:7:\"unwatch\";i:2178;s:15:\"unwatchthispage\";i:2179;s:12:\"notanarticle\";i:2180;s:13:\"notvisiblerev\";i:2181;s:13:\"watchnochange\";i:2182;s:17:\"watchlist-details\";i:2183;s:15:\"wlheader-enotif\";i:2184;s:20:\"wlheader-showupdated\";i:2185;s:18:\"watchmethod-recent\";i:2186;s:16:\"watchmethod-list\";i:2187;s:17:\"watchlistcontains\";i:2188;s:15:\"iteminvalidname\";i:2189;s:6:\"wlnote\";i:2190;s:10:\"wlshowlast\";i:2191;s:17:\"watchlist-options\";i:2192;s:8:\"watching\";i:2193;s:10:\"unwatching\";i:2194;s:14:\"watcherrortext\";i:2195;s:13:\"enotif_mailer\";i:2196;s:12:\"enotif_reset\";i:2197;s:18:\"enotif_newpagetext\";i:2198;s:28:\"enotif_impersonal_salutation\";i:2199;s:7:\"changed\";i:2200;s:7:\"created\";i:2201;s:14:\"enotif_subject\";i:2202;s:18:\"enotif_lastvisited\";i:2203;s:15:\"enotif_lastdiff\";i:2204;s:18:\"enotif_anon_editor\";i:2205;s:11:\"enotif_body\";i:2206;s:10:\"deletepage\";i:2207;s:7:\"confirm\";i:2208;s:9:\"excontent\";i:2209;s:15:\"excontentauthor\";i:2210;s:13:\"exbeforeblank\";i:2211;s:7:\"exblank\";i:2212;s:14:\"delete-confirm\";i:2213;s:13:\"delete-legend\";i:2214;s:14:\"historywarning\";i:2215;s:17:\"confirmdeletetext\";i:2216;s:14:\"actioncomplete\";i:2217;s:12:\"actionfailed\";i:2218;s:11:\"deletedtext\";i:2219;s:10:\"dellogpage\";i:2220;s:14:\"dellogpagetext\";i:2221;s:11:\"deletionlog\";i:2222;s:8:\"reverted\";i:2223;s:13:\"deletecomment\";i:2224;s:17:\"deleteotherreason\";i:2225;s:21:\"deletereasonotherlist\";i:2226;s:21:\"deletereason-dropdown\";i:2227;s:22:\"delete-edit-reasonlist\";i:2228;s:13:\"delete-toobig\";i:2229;s:21:\"delete-warning-toobig\";i:2230;s:8:\"rollback\";i:2231;s:14:\"rollback_short\";i:2232;s:12:\"rollbacklink\";i:2233;s:14:\"rollbackfailed\";i:2234;s:12:\"cantrollback\";i:2235;s:13:\"alreadyrolled\";i:2236;s:11:\"editcomment\";i:2237;s:10:\"revertpage\";i:2238;s:17:\"revertpage-nouser\";i:2239;s:16:\"rollback-success\";i:2240;s:20:\"sessionfailure-title\";i:2241;s:14:\"sessionfailure\";i:2242;s:14:\"protectlogpage\";i:2243;s:14:\"protectlogtext\";i:2244;s:16:\"protectedarticle\";i:2245;s:25:\"modifiedarticleprotection\";i:2246;s:18:\"unprotectedarticle\";i:2247;s:22:\"movedarticleprotection\";i:2248;s:13:\"protect-title\";i:2249;s:24:\"protect-title-notallowed\";i:2250;s:14:\"prot_1movedto2\";i:2251;s:26:\"protect-badnamespace-title\";i:2252;s:25:\"protect-badnamespace-text\";i:2253;s:14:\"protect-legend\";i:2254;s:14:\"protectcomment\";i:2255;s:13:\"protectexpiry\";i:2256;s:22:\"protect_expiry_invalid\";i:2257;s:18:\"protect_expiry_old\";i:2258;s:27:\"protect-unchain-permissions\";i:2259;s:12:\"protect-text\";i:2260;s:22:\"protect-locked-blocked\";i:2261;s:21:\"protect-locked-dblock\";i:2262;s:21:\"protect-locked-access\";i:2263;s:17:\"protect-cascadeon\";i:2264;s:15:\"protect-default\";i:2265;s:16:\"protect-fallback\";i:2266;s:27:\"protect-level-autoconfirmed\";i:2267;s:19:\"protect-level-sysop\";i:2268;s:23:\"protect-summary-cascade\";i:2269;s:16:\"protect-expiring\";i:2270;s:22:\"protect-expiring-local\";i:2271;s:25:\"protect-expiry-indefinite\";i:2272;s:15:\"protect-cascade\";i:2273;s:16:\"protect-cantedit\";i:2274;s:17:\"protect-othertime\";i:2275;s:20:\"protect-othertime-op\";i:2276;s:23:\"protect-existing-expiry\";i:2277;s:19:\"protect-otherreason\";i:2278;s:22:\"protect-otherreason-op\";i:2279;s:16:\"protect-dropdown\";i:2280;s:23:\"protect-edit-reasonlist\";i:2281;s:22:\"protect-expiry-options\";i:2282;s:16:\"restriction-type\";i:2283;s:17:\"restriction-level\";i:2284;s:12:\"minimum-size\";i:2285;s:12:\"maximum-size\";i:2286;s:8:\"pagesize\";i:2287;s:16:\"restriction-edit\";i:2288;s:16:\"restriction-move\";i:2289;s:18:\"restriction-create\";i:2290;s:18:\"restriction-upload\";i:2291;s:23:\"restriction-level-sysop\";i:2292;s:31:\"restriction-level-autoconfirmed\";i:2293;s:21:\"restriction-level-all\";i:2294;s:8:\"undelete\";i:2295;s:12:\"undeletepage\";i:2296;s:17:\"undeletepagetitle\";i:2297;s:15:\"viewdeletedpage\";i:2298;s:16:\"undeletepagetext\";i:2299;s:23:\"undelete-fieldset-title\";i:2300;s:17:\"undeleteextrahelp\";i:2301;s:17:\"undeleterevisions\";i:2302;s:15:\"undeletehistory\";i:2303;s:14:\"undeleterevdel\";i:2304;s:22:\"undeletehistorynoadmin\";i:2305;s:17:\"undelete-revision\";i:2306;s:24:\"undeleterevision-missing\";i:2307;s:15:\"undelete-nodiff\";i:2308;s:11:\"undeletebtn\";i:2309;s:12:\"undeletelink\";i:2310;s:16:\"undeleteviewlink\";i:2311;s:13:\"undeletereset\";i:2312;s:14:\"undeleteinvert\";i:2313;s:15:\"undeletecomment\";i:2314;s:18:\"undeletedrevisions\";i:2315;s:24:\"undeletedrevisions-files\";i:2316;s:14:\"undeletedfiles\";i:2317;s:14:\"cannotundelete\";i:2318;s:13:\"undeletedpage\";i:2319;s:15:\"undelete-header\";i:2320;s:21:\"undelete-search-title\";i:2321;s:19:\"undelete-search-box\";i:2322;s:22:\"undelete-search-prefix\";i:2323;s:22:\"undelete-search-submit\";i:2324;s:19:\"undelete-no-results\";i:2325;s:26:\"undelete-filename-mismatch\";i:2326;s:22:\"undelete-bad-store-key\";i:2327;s:22:\"undelete-cleanup-error\";i:2328;s:28:\"undelete-missing-filearchive\";i:2329;s:14:\"undelete-error\";i:2330;s:20:\"undelete-error-short\";i:2331;s:19:\"undelete-error-long\";i:2332;s:26:\"undelete-show-file-confirm\";i:2333;s:25:\"undelete-show-file-submit\";i:2334;s:9:\"namespace\";i:2335;s:6:\"invert\";i:2336;s:14:\"tooltip-invert\";i:2337;s:21:\"namespace_association\";i:2338;s:29:\"tooltip-namespace_association\";i:2339;s:14:\"blanknamespace\";i:2340;s:13:\"contributions\";i:2341;s:19:\"contributions-title\";i:2342;s:9:\"mycontris\";i:2343;s:11:\"contribsub2\";i:2344;s:10:\"nocontribs\";i:2345;s:5:\"uctop\";i:2346;s:5:\"month\";i:2347;s:4:\"year\";i:2348;s:24:\"sp-contributions-newbies\";i:2349;s:28:\"sp-contributions-newbies-sub\";i:2350;s:30:\"sp-contributions-newbies-title\";i:2351;s:25:\"sp-contributions-blocklog\";i:2352;s:24:\"sp-contributions-deleted\";i:2353;s:24:\"sp-contributions-uploads\";i:2354;s:21:\"sp-contributions-logs\";i:2355;s:21:\"sp-contributions-talk\";i:2356;s:27:\"sp-contributions-userrights\";i:2357;s:31:\"sp-contributions-blocked-notice\";i:2358;s:36:\"sp-contributions-blocked-notice-anon\";i:2359;s:23:\"sp-contributions-search\";i:2360;s:25:\"sp-contributions-username\";i:2361;s:24:\"sp-contributions-toponly\";i:2362;s:23:\"sp-contributions-submit\";i:2363;s:24:\"sp-contributions-explain\";i:2364;s:23:\"sp-contributions-footer\";i:2365;s:28:\"sp-contributions-footer-anon\";i:2366;s:13:\"whatlinkshere\";i:2367;s:19:\"whatlinkshere-title\";i:2368;s:21:\"whatlinkshere-summary\";i:2369;s:18:\"whatlinkshere-page\";i:2370;s:9:\"linkshere\";i:2371;s:11:\"nolinkshere\";i:2372;s:14:\"nolinkshere-ns\";i:2373;s:10:\"isredirect\";i:2374;s:10:\"istemplate\";i:2375;s:7:\"isimage\";i:2376;s:18:\"whatlinkshere-prev\";i:2377;s:18:\"whatlinkshere-next\";i:2378;s:19:\"whatlinkshere-links\";i:2379;s:24:\"whatlinkshere-hideredirs\";i:2380;s:23:\"whatlinkshere-hidetrans\";i:2381;s:23:\"whatlinkshere-hidelinks\";i:2382;s:24:\"whatlinkshere-hideimages\";i:2383;s:21:\"whatlinkshere-filters\";i:2384;s:11:\"autoblockid\";i:2385;s:5:\"block\";i:2386;s:7:\"unblock\";i:2387;s:7:\"blockip\";i:2388;s:13:\"blockip-title\";i:2389;s:14:\"blockip-legend\";i:2390;s:11:\"blockiptext\";i:2391;s:18:\"ipadressorusername\";i:2392;s:9:\"ipbexpiry\";i:2393;s:9:\"ipbreason\";i:2394;s:18:\"ipbreasonotherlist\";i:2395;s:18:\"ipbreason-dropdown\";i:2396;s:13:\"ipb-hardblock\";i:2397;s:16:\"ipbcreateaccount\";i:2398;s:11:\"ipbemailban\";i:2399;s:18:\"ipbenableautoblock\";i:2400;s:9:\"ipbsubmit\";i:2401;s:8:\"ipbother\";i:2402;s:10:\"ipboptions\";i:2403;s:14:\"ipbotheroption\";i:2404;s:14:\"ipbotherreason\";i:2405;s:11:\"ipbhidename\";i:2406;s:12:\"ipbwatchuser\";i:2407;s:19:\"ipb-disableusertalk\";i:2408;s:16:\"ipb-change-block\";i:2409;s:11:\"ipb-confirm\";i:2410;s:12:\"badipaddress\";i:2411;s:17:\"blockipsuccesssub\";i:2412;s:18:\"blockipsuccesstext\";i:2413;s:16:\"ipb-blockingself\";i:2414;s:19:\"ipb-confirmhideuser\";i:2415;s:17:\"ipb-edit-dropdown\";i:2416;s:16:\"ipb-unblock-addr\";i:2417;s:11:\"ipb-unblock\";i:2418;s:13:\"ipb-blocklist\";i:2419;s:22:\"ipb-blocklist-contribs\";i:2420;s:9:\"unblockip\";i:2421;s:13:\"unblockiptext\";i:2422;s:9:\"ipusubmit\";i:2423;s:9:\"unblocked\";i:2424;s:15:\"unblocked-range\";i:2425;s:12:\"unblocked-id\";i:2426;s:9:\"blocklist\";i:2427;s:11:\"ipblocklist\";i:2428;s:18:\"ipblocklist-legend\";i:2429;s:20:\"blocklist-userblocks\";i:2430;s:20:\"blocklist-tempblocks\";i:2431;s:23:\"blocklist-addressblocks\";i:2432;s:21:\"blocklist-rangeblocks\";i:2433;s:19:\"blocklist-timestamp\";i:2434;s:16:\"blocklist-target\";i:2435;s:16:\"blocklist-expiry\";i:2436;s:12:\"blocklist-by\";i:2437;s:16:\"blocklist-params\";i:2438;s:16:\"blocklist-reason\";i:2439;s:17:\"blocklist-summary\";i:2440;s:18:\"ipblocklist-submit\";i:2441;s:22:\"ipblocklist-localblock\";i:2442;s:23:\"ipblocklist-otherblocks\";i:2443;s:13:\"infiniteblock\";i:2444;s:13:\"expiringblock\";i:2445;s:13:\"anononlyblock\";i:2446;s:16:\"noautoblockblock\";i:2447;s:18:\"createaccountblock\";i:2448;s:10:\"emailblock\";i:2449;s:20:\"blocklist-nousertalk\";i:2450;s:17:\"ipblocklist-empty\";i:2451;s:22:\"ipblocklist-no-results\";i:2452;s:9:\"blocklink\";i:2453;s:11:\"unblocklink\";i:2454;s:16:\"change-blocklink\";i:2455;s:12:\"contribslink\";i:2456;s:9:\"emaillink\";i:2457;s:11:\"autoblocker\";i:2458;s:12:\"blocklogpage\";i:2459;s:16:\"blocklog-showlog\";i:2460;s:24:\"blocklog-showsuppresslog\";i:2461;s:13:\"blocklogentry\";i:2462;s:16:\"reblock-logentry\";i:2463;s:12:\"blocklogtext\";i:2464;s:15:\"unblocklogentry\";i:2465;s:24:\"block-log-flags-anononly\";i:2466;s:24:\"block-log-flags-nocreate\";i:2467;s:27:\"block-log-flags-noautoblock\";i:2468;s:23:\"block-log-flags-noemail\";i:2469;s:26:\"block-log-flags-nousertalk\";i:2470;s:31:\"block-log-flags-angry-autoblock\";i:2471;s:26:\"block-log-flags-hiddenname\";i:2472;s:20:\"range_block_disabled\";i:2473;s:18:\"ipb_expiry_invalid\";i:2474;s:15:\"ipb_expiry_temp\";i:2475;s:16:\"ipb_hide_invalid\";i:2476;s:19:\"ipb_already_blocked\";i:2477;s:15:\"ipb-needreblock\";i:2478;s:22:\"ipb-otherblocks-header\";i:2479;s:16:\"unblock-hideuser\";i:2480;s:16:\"ipb_cant_unblock\";i:2481;s:20:\"ipb_blocked_as_range\";i:2482;s:16:\"ip_range_invalid\";i:2483;s:17:\"ip_range_toolarge\";i:2484;s:7:\"blockme\";i:2485;s:12:\"proxyblocker\";i:2486;s:21:\"proxyblocker-disabled\";i:2487;s:16:\"proxyblockreason\";i:2488;s:17:\"proxyblocksuccess\";i:2489;s:5:\"sorbs\";i:2490;s:11:\"sorbsreason\";i:2491;s:27:\"sorbs_create_account_reason\";i:2492;s:24:\"cant-block-while-blocked\";i:2493;s:20:\"cant-see-hidden-user\";i:2494;s:10:\"ipbblocked\";i:2495;s:16:\"ipbnounblockself\";i:2496;s:6:\"lockdb\";i:2497;s:8:\"unlockdb\";i:2498;s:10:\"lockdbtext\";i:2499;s:12:\"unlockdbtext\";i:2500;s:11:\"lockconfirm\";i:2501;s:13:\"unlockconfirm\";i:2502;s:7:\"lockbtn\";i:2503;s:9:\"unlockbtn\";i:2504;s:13:\"locknoconfirm\";i:2505;s:16:\"lockdbsuccesssub\";i:2506;s:18:\"unlockdbsuccesssub\";i:2507;s:17:\"lockdbsuccesstext\";i:2508;s:19:\"unlockdbsuccesstext\";i:2509;s:19:\"lockfilenotwritable\";i:2510;s:17:\"databasenotlocked\";i:2511;s:15:\"lockedbyandtime\";i:2512;s:9:\"move-page\";i:2513;s:16:\"move-page-legend\";i:2514;s:12:\"movepagetext\";i:2515;s:28:\"movepagetext-noredirectfixer\";i:2516;s:16:\"movepagetalktext\";i:2517;s:11:\"movearticle\";i:2518;s:20:\"moveuserpage-warning\";i:2519;s:11:\"movenologin\";i:2520;s:15:\"movenologintext\";i:2521;s:14:\"movenotallowed\";i:2522;s:18:\"movenotallowedfile\";i:2523;s:19:\"cant-move-user-page\";i:2524;s:22:\"cant-move-to-user-page\";i:2525;s:8:\"newtitle\";i:2526;s:10:\"move-watch\";i:2527;s:11:\"movepagebtn\";i:2528;s:12:\"pagemovedsub\";i:2529;s:14:\"movepage-moved\";i:2530;s:23:\"movepage-moved-redirect\";i:2531;s:25:\"movepage-moved-noredirect\";i:2532;s:13:\"articleexists\";i:2533;s:23:\"cantmove-titleprotected\";i:2534;s:10:\"talkexists\";i:2535;s:7:\"movedto\";i:2536;s:8:\"movetalk\";i:2537;s:13:\"move-subpages\";i:2538;s:18:\"move-talk-subpages\";i:2539;s:20:\"movepage-page-exists\";i:2540;s:19:\"movepage-page-moved\";i:2541;s:21:\"movepage-page-unmoved\";i:2542;s:18:\"movepage-max-pages\";i:2543;s:11:\"movelogpage\";i:2544;s:15:\"movelogpagetext\";i:2545;s:11:\"movesubpage\";i:2546;s:15:\"movesubpagetext\";i:2547;s:13:\"movenosubpage\";i:2548;s:10:\"movereason\";i:2549;s:10:\"revertmove\";i:2550;s:15:\"delete_and_move\";i:2551;s:20:\"delete_and_move_text\";i:2552;s:23:\"delete_and_move_confirm\";i:2553;s:22:\"delete_and_move_reason\";i:2554;s:8:\"selfmove\";i:2555;s:25:\"immobile-source-namespace\";i:2556;s:25:\"immobile-target-namespace\";i:2557;s:28:\"immobile-target-namespace-iw\";i:2558;s:20:\"immobile-source-page\";i:2559;s:20:\"immobile-target-page\";i:2560;s:21:\"imagenocrossnamespace\";i:2561;s:27:\"nonfile-cannot-move-to-file\";i:2562;s:17:\"imagetypemismatch\";i:2563;s:20:\"imageinvalidfilename\";i:2564;s:20:\"fix-double-redirects\";i:2565;s:19:\"move-leave-redirect\";i:2566;s:24:\"protectedpagemovewarning\";i:2567;s:28:\"semiprotectedpagemovewarning\";i:2568;s:20:\"move-over-sharedrepo\";i:2569;s:22:\"file-exists-sharedrepo\";i:2570;s:6:\"export\";i:2571;s:10:\"exporttext\";i:2572;s:9:\"exportall\";i:2573;s:13:\"exportcuronly\";i:2574;s:15:\"exportnohistory\";i:2575;s:17:\"exportlistauthors\";i:2576;s:13:\"export-submit\";i:2577;s:17:\"export-addcattext\";i:2578;s:13:\"export-addcat\";i:2579;s:16:\"export-addnstext\";i:2580;s:12:\"export-addns\";i:2581;s:15:\"export-download\";i:2582;s:16:\"export-templates\";i:2583;s:16:\"export-pagelinks\";i:2584;s:11:\"allmessages\";i:2585;s:15:\"allmessagesname\";i:2586;s:18:\"allmessagesdefault\";i:2587;s:18:\"allmessagescurrent\";i:2588;s:15:\"allmessagestext\";i:2589;s:25:\"allmessagesnotsupportedDB\";i:2590;s:25:\"allmessages-filter-legend\";i:2591;s:18:\"allmessages-filter\";i:2592;s:29:\"allmessages-filter-unmodified\";i:2593;s:22:\"allmessages-filter-all\";i:2594;s:27:\"allmessages-filter-modified\";i:2595;s:18:\"allmessages-prefix\";i:2596;s:20:\"allmessages-language\";i:2597;s:25:\"allmessages-filter-submit\";i:2598;s:14:\"thumbnail-more\";i:2599;s:11:\"filemissing\";i:2600;s:15:\"thumbnail_error\";i:2601;s:15:\"djvu_page_error\";i:2602;s:11:\"djvu_no_xml\";i:2603;s:21:\"thumbnail-temp-create\";i:2604;s:21:\"thumbnail-dest-create\";i:2605;s:24:\"thumbnail_invalid_params\";i:2606;s:24:\"thumbnail_dest_directory\";i:2607;s:20:\"thumbnail_image-type\";i:2608;s:20:\"thumbnail_gd-library\";i:2609;s:23:\"thumbnail_image-missing\";i:2610;s:6:\"import\";i:2611;s:15:\"importinterwiki\";i:2612;s:21:\"import-interwiki-text\";i:2613;s:23:\"import-interwiki-source\";i:2614;s:24:\"import-interwiki-history\";i:2615;s:26:\"import-interwiki-templates\";i:2616;s:23:\"import-interwiki-submit\";i:2617;s:26:\"import-interwiki-namespace\";i:2618;s:22:\"import-upload-filename\";i:2619;s:14:\"import-comment\";i:2620;s:10:\"importtext\";i:2621;s:11:\"importstart\";i:2622;s:21:\"import-revision-count\";i:2623;s:13:\"importnopages\";i:2624;s:20:\"imported-log-entries\";i:2625;s:12:\"importfailed\";i:2626;s:19:\"importunknownsource\";i:2627;s:14:\"importcantopen\";i:2628;s:18:\"importbadinterwiki\";i:2629;s:12:\"importnotext\";i:2630;s:13:\"importsuccess\";i:2631;s:21:\"importhistoryconflict\";i:2632;s:15:\"importnosources\";i:2633;s:12:\"importnofile\";i:2634;s:21:\"importuploaderrorsize\";i:2635;s:24:\"importuploaderrorpartial\";i:2636;s:21:\"importuploaderrortemp\";i:2637;s:20:\"import-parse-failure\";i:2638;s:16:\"import-noarticle\";i:2639;s:21:\"import-nonewrevisions\";i:2640;s:16:\"xml-error-string\";i:2641;s:13:\"import-upload\";i:2642;s:21:\"import-token-mismatch\";i:2643;s:24:\"import-invalid-interwiki\";i:2644;s:17:\"import-error-edit\";i:2645;s:19:\"import-error-create\";i:2646;s:22:\"import-error-interwiki\";i:2647;s:20:\"import-error-special\";i:2648;s:20:\"import-error-invalid\";i:2649;s:13:\"importlogpage\";i:2650;s:17:\"importlogpagetext\";i:2651;s:22:\"import-logentry-upload\";i:2652;s:29:\"import-logentry-upload-detail\";i:2653;s:25:\"import-logentry-interwiki\";i:2654;s:32:\"import-logentry-interwiki-detail\";i:2655;s:14:\"javascripttest\";i:2656;s:23:\"javascripttest-backlink\";i:2657;s:23:\"javascripttest-disabled\";i:2658;s:20:\"javascripttest-title\";i:2659;s:35:\"javascripttest-pagetext-noframework\";i:2660;s:40:\"javascripttest-pagetext-unknownframework\";i:2661;s:34:\"javascripttest-pagetext-frameworks\";i:2662;s:29:\"javascripttest-pagetext-skins\";i:2663;s:25:\"javascripttest-qunit-name\";i:2664;s:26:\"javascripttest-qunit-intro\";i:2665;s:28:\"javascripttest-qunit-heading\";i:2666;s:21:\"accesskey-pt-userpage\";i:2667;s:25:\"accesskey-pt-anonuserpage\";i:2668;s:19:\"accesskey-pt-mytalk\";i:2669;s:21:\"accesskey-pt-anontalk\";i:2670;s:24:\"accesskey-pt-preferences\";i:2671;s:22:\"accesskey-pt-watchlist\";i:2672;s:22:\"accesskey-pt-mycontris\";i:2673;s:18:\"accesskey-pt-login\";i:2674;s:22:\"accesskey-pt-anonlogin\";i:2675;s:19:\"accesskey-pt-logout\";i:2676;s:17:\"accesskey-ca-talk\";i:2677;s:17:\"accesskey-ca-edit\";i:2678;s:23:\"accesskey-ca-addsection\";i:2679;s:23:\"accesskey-ca-viewsource\";i:2680;s:20:\"accesskey-ca-history\";i:2681;s:20:\"accesskey-ca-protect\";i:2682;s:22:\"accesskey-ca-unprotect\";i:2683;s:19:\"accesskey-ca-delete\";i:2684;s:21:\"accesskey-ca-undelete\";i:2685;s:17:\"accesskey-ca-move\";i:2686;s:18:\"accesskey-ca-watch\";i:2687;s:20:\"accesskey-ca-unwatch\";i:2688;s:16:\"accesskey-search\";i:2689;s:19:\"accesskey-search-go\";i:2690;s:25:\"accesskey-search-fulltext\";i:2691;s:16:\"accesskey-p-logo\";i:2692;s:20:\"accesskey-n-mainpage\";i:2693;s:32:\"accesskey-n-mainpage-description\";i:2694;s:18:\"accesskey-n-portal\";i:2695;s:25:\"accesskey-n-currentevents\";i:2696;s:25:\"accesskey-n-recentchanges\";i:2697;s:22:\"accesskey-n-randompage\";i:2698;s:16:\"accesskey-n-help\";i:2699;s:25:\"accesskey-t-whatlinkshere\";i:2700;s:31:\"accesskey-t-recentchangeslinked\";i:2701;s:18:\"accesskey-feed-rss\";i:2702;s:19:\"accesskey-feed-atom\";i:2703;s:25:\"accesskey-t-contributions\";i:2704;s:21:\"accesskey-t-emailuser\";i:2705;s:21:\"accesskey-t-permalink\";i:2706;s:17:\"accesskey-t-print\";i:2707;s:18:\"accesskey-t-upload\";i:2708;s:24:\"accesskey-t-specialpages\";i:2709;s:23:\"accesskey-ca-nstab-main\";i:2710;s:23:\"accesskey-ca-nstab-user\";i:2711;s:24:\"accesskey-ca-nstab-media\";i:2712;s:26:\"accesskey-ca-nstab-special\";i:2713;s:26:\"accesskey-ca-nstab-project\";i:2714;s:24:\"accesskey-ca-nstab-image\";i:2715;s:28:\"accesskey-ca-nstab-mediawiki\";i:2716;s:27:\"accesskey-ca-nstab-template\";i:2717;s:23:\"accesskey-ca-nstab-help\";i:2718;s:27:\"accesskey-ca-nstab-category\";i:2719;s:19:\"accesskey-minoredit\";i:2720;s:14:\"accesskey-save\";i:2721;s:17:\"accesskey-preview\";i:2722;s:14:\"accesskey-diff\";i:2723;s:33:\"accesskey-compareselectedversions\";i:2724;s:15:\"accesskey-watch\";i:2725;s:16:\"accesskey-upload\";i:2726;s:26:\"accesskey-preferences-save\";i:2727;s:17:\"accesskey-summary\";i:2728;s:24:\"accesskey-userrights-set\";i:2729;s:23:\"accesskey-blockip-block\";i:2730;s:16:\"accesskey-export\";i:2731;s:16:\"accesskey-import\";i:2732;s:37:\"accesskey-watchlistedit-normal-submit\";i:2733;s:34:\"accesskey-watchlistedit-raw-submit\";i:2734;s:19:\"tooltip-pt-userpage\";i:2735;s:23:\"tooltip-pt-anonuserpage\";i:2736;s:17:\"tooltip-pt-mytalk\";i:2737;s:19:\"tooltip-pt-anontalk\";i:2738;s:22:\"tooltip-pt-preferences\";i:2739;s:20:\"tooltip-pt-watchlist\";i:2740;s:20:\"tooltip-pt-mycontris\";i:2741;s:16:\"tooltip-pt-login\";i:2742;s:20:\"tooltip-pt-anonlogin\";i:2743;s:17:\"tooltip-pt-logout\";i:2744;s:15:\"tooltip-ca-talk\";i:2745;s:15:\"tooltip-ca-edit\";i:2746;s:21:\"tooltip-ca-addsection\";i:2747;s:21:\"tooltip-ca-viewsource\";i:2748;s:18:\"tooltip-ca-history\";i:2749;s:18:\"tooltip-ca-protect\";i:2750;s:20:\"tooltip-ca-unprotect\";i:2751;s:17:\"tooltip-ca-delete\";i:2752;s:19:\"tooltip-ca-undelete\";i:2753;s:15:\"tooltip-ca-move\";i:2754;s:16:\"tooltip-ca-watch\";i:2755;s:18:\"tooltip-ca-unwatch\";i:2756;s:14:\"tooltip-search\";i:2757;s:17:\"tooltip-search-go\";i:2758;s:23:\"tooltip-search-fulltext\";i:2759;s:14:\"tooltip-p-logo\";i:2760;s:18:\"tooltip-n-mainpage\";i:2761;s:30:\"tooltip-n-mainpage-description\";i:2762;s:16:\"tooltip-n-portal\";i:2763;s:23:\"tooltip-n-currentevents\";i:2764;s:23:\"tooltip-n-recentchanges\";i:2765;s:20:\"tooltip-n-randompage\";i:2766;s:14:\"tooltip-n-help\";i:2767;s:23:\"tooltip-t-whatlinkshere\";i:2768;s:29:\"tooltip-t-recentchangeslinked\";i:2769;s:16:\"tooltip-feed-rss\";i:2770;s:17:\"tooltip-feed-atom\";i:2771;s:23:\"tooltip-t-contributions\";i:2772;s:19:\"tooltip-t-emailuser\";i:2773;s:16:\"tooltip-t-upload\";i:2774;s:22:\"tooltip-t-specialpages\";i:2775;s:15:\"tooltip-t-print\";i:2776;s:19:\"tooltip-t-permalink\";i:2777;s:21:\"tooltip-ca-nstab-main\";i:2778;s:21:\"tooltip-ca-nstab-user\";i:2779;s:22:\"tooltip-ca-nstab-media\";i:2780;s:24:\"tooltip-ca-nstab-special\";i:2781;s:24:\"tooltip-ca-nstab-project\";i:2782;s:22:\"tooltip-ca-nstab-image\";i:2783;s:26:\"tooltip-ca-nstab-mediawiki\";i:2784;s:25:\"tooltip-ca-nstab-template\";i:2785;s:21:\"tooltip-ca-nstab-help\";i:2786;s:25:\"tooltip-ca-nstab-category\";i:2787;s:17:\"tooltip-minoredit\";i:2788;s:12:\"tooltip-save\";i:2789;s:15:\"tooltip-preview\";i:2790;s:12:\"tooltip-diff\";i:2791;s:31:\"tooltip-compareselectedversions\";i:2792;s:13:\"tooltip-watch\";i:2793;s:35:\"tooltip-watchlistedit-normal-submit\";i:2794;s:32:\"tooltip-watchlistedit-raw-submit\";i:2795;s:16:\"tooltip-recreate\";i:2796;s:14:\"tooltip-upload\";i:2797;s:16:\"tooltip-rollback\";i:2798;s:12:\"tooltip-undo\";i:2799;s:24:\"tooltip-preferences-save\";i:2800;s:15:\"tooltip-summary\";i:2801;s:10:\"common.css\";i:2802;s:12:\"standard.css\";i:2803;s:13:\"nostalgia.css\";i:2804;s:15:\"cologneblue.css\";i:2805;s:12:\"monobook.css\";i:2806;s:10:\"myskin.css\";i:2807;s:9:\"chick.css\";i:2808;s:10:\"simple.css\";i:2809;s:10:\"modern.css\";i:2810;s:10:\"vector.css\";i:2811;s:9:\"print.css\";i:2812;s:12:\"handheld.css\";i:2813;s:12:\"noscript.css\";i:2814;s:23:\"group-autoconfirmed.css\";i:2815;s:13:\"group-bot.css\";i:2816;s:15:\"group-sysop.css\";i:2817;s:20:\"group-bureaucrat.css\";i:2818;s:9:\"common.js\";i:2819;s:11:\"standard.js\";i:2820;s:12:\"nostalgia.js\";i:2821;s:14:\"cologneblue.js\";i:2822;s:11:\"monobook.js\";i:2823;s:9:\"myskin.js\";i:2824;s:8:\"chick.js\";i:2825;s:9:\"simple.js\";i:2826;s:9:\"modern.js\";i:2827;s:9:\"vector.js\";i:2828;s:22:\"group-autoconfirmed.js\";i:2829;s:12:\"group-bot.js\";i:2830;s:14:\"group-sysop.js\";i:2831;s:19:\"group-bureaucrat.js\";i:2832;s:13:\"notacceptable\";i:2833;s:9:\"anonymous\";i:2834;s:8:\"siteuser\";i:2835;s:8:\"anonuser\";i:2836;s:16:\"lastmodifiedatby\";i:2837;s:13:\"othercontribs\";i:2838;s:6:\"others\";i:2839;s:9:\"siteusers\";i:2840;s:9:\"anonusers\";i:2841;s:11:\"creditspage\";i:2842;s:9:\"nocredits\";i:2843;s:19:\"spamprotectiontitle\";i:2844;s:18:\"spamprotectiontext\";i:2845;s:19:\"spamprotectionmatch\";i:2846;s:16:\"spambot_username\";i:2847;s:14:\"spam_reverting\";i:2848;s:13:\"spam_blanking\";i:2849;s:14:\"pageinfo-title\";i:2850;s:21:\"pageinfo-header-edits\";i:2851;s:25:\"pageinfo-header-watchlist\";i:2852;s:21:\"pageinfo-header-views\";i:2853;s:20:\"pageinfo-subjectpage\";i:2854;s:17:\"pageinfo-talkpage\";i:2855;s:17:\"pageinfo-watchers\";i:2856;s:14:\"pageinfo-edits\";i:2857;s:16:\"pageinfo-authors\";i:2858;s:14:\"pageinfo-views\";i:2859;s:21:\"pageinfo-viewsperedit\";i:2860;s:17:\"skinname-standard\";i:2861;s:18:\"skinname-nostalgia\";i:2862;s:20:\"skinname-cologneblue\";i:2863;s:17:\"skinname-monobook\";i:2864;s:15:\"skinname-myskin\";i:2865;s:14:\"skinname-chick\";i:2866;s:15:\"skinname-simple\";i:2867;s:15:\"skinname-modern\";i:2868;s:15:\"skinname-vector\";i:2869;s:19:\"markaspatrolleddiff\";i:2870;s:19:\"markaspatrolledlink\";i:2871;s:19:\"markaspatrolledtext\";i:2872;s:17:\"markedaspatrolled\";i:2873;s:21:\"markedaspatrolledtext\";i:2874;s:16:\"rcpatroldisabled\";i:2875;s:20:\"rcpatroldisabledtext\";i:2876;s:22:\"markedaspatrollederror\";i:2877;s:26:\"markedaspatrollederrortext\";i:2878;s:35:\"markedaspatrollederror-noautopatrol\";i:2879;s:15:\"patrol-log-page\";i:2880;s:17:\"patrol-log-header\";i:2881;s:20:\"log-show-hide-patrol\";i:2882;s:15:\"deletedrevision\";i:2883;s:21:\"filedeleteerror-short\";i:2884;s:20:\"filedeleteerror-long\";i:2885;s:18:\"filedelete-missing\";i:2886;s:27:\"filedelete-old-unregistered\";i:2887;s:31:\"filedelete-current-unregistered\";i:2888;s:28:\"filedelete-archive-read-only\";i:2889;s:12:\"previousdiff\";i:2890;s:8:\"nextdiff\";i:2891;s:12:\"mediawarning\";i:2892;s:12:\"imagemaxsize\";i:2893;s:9:\"thumbsize\";i:2894;s:11:\"widthheight\";i:2895;s:15:\"widthheightpage\";i:2896;s:9:\"file-info\";i:2897;s:14:\"file-info-size\";i:2898;s:20:\"file-info-size-pages\";i:2899;s:12:\"file-nohires\";i:2900;s:13:\"svg-long-desc\";i:2901;s:14:\"show-big-image\";i:2902;s:22:\"show-big-image-preview\";i:2903;s:20:\"show-big-image-other\";i:2904;s:19:\"show-big-image-size\";i:2905;s:20:\"file-info-gif-looped\";i:2906;s:20:\"file-info-gif-frames\";i:2907;s:20:\"file-info-png-looped\";i:2908;s:20:\"file-info-png-repeat\";i:2909;s:20:\"file-info-png-frames\";i:2910;s:9:\"newimages\";i:2911;s:13:\"imagelisttext\";i:2912;s:17:\"newimages-summary\";i:2913;s:16:\"newimages-legend\";i:2914;s:15:\"newimages-label\";i:2915;s:12:\"showhidebots\";i:2916;s:8:\"noimages\";i:2917;s:8:\"ilsubmit\";i:2918;s:6:\"bydate\";i:2919;s:21:\"sp-newimages-showfrom\";i:2920;s:10:\"video-dims\";i:2921;s:14:\"seconds-abbrev\";i:2922;s:14:\"minutes-abbrev\";i:2923;s:12:\"hours-abbrev\";i:2924;s:11:\"days-abbrev\";i:2925;s:7:\"seconds\";i:2926;s:7:\"minutes\";i:2927;s:5:\"hours\";i:2928;s:4:\"days\";i:2929;s:3:\"ago\";i:2930;s:14:\"bad_image_list\";i:2931;s:19:\"variantname-zh-hans\";i:2932;s:19:\"variantname-zh-hant\";i:2933;s:17:\"variantname-zh-cn\";i:2934;s:17:\"variantname-zh-tw\";i:2935;s:17:\"variantname-zh-hk\";i:2936;s:17:\"variantname-zh-mo\";i:2937;s:17:\"variantname-zh-sg\";i:2938;s:17:\"variantname-zh-my\";i:2939;s:14:\"variantname-zh\";i:2940;s:20:\"variantname-gan-hans\";i:2941;s:20:\"variantname-gan-hant\";i:2942;s:15:\"variantname-gan\";i:2943;s:17:\"variantname-sr-ec\";i:2944;s:17:\"variantname-sr-el\";i:2945;s:14:\"variantname-sr\";i:2946;s:17:\"variantname-kk-kz\";i:2947;s:17:\"variantname-kk-tr\";i:2948;s:17:\"variantname-kk-cn\";i:2949;s:19:\"variantname-kk-cyrl\";i:2950;s:19:\"variantname-kk-latn\";i:2951;s:19:\"variantname-kk-arab\";i:2952;s:14:\"variantname-kk\";i:2953;s:19:\"variantname-ku-arab\";i:2954;s:19:\"variantname-ku-latn\";i:2955;s:14:\"variantname-ku\";i:2956;s:19:\"variantname-tg-cyrl\";i:2957;s:19:\"variantname-tg-latn\";i:2958;s:14:\"variantname-tg\";i:2959;s:20:\"variantname-ike-cans\";i:2960;s:20:\"variantname-ike-latn\";i:2961;s:14:\"variantname-iu\";i:2962;s:20:\"variantname-shi-tfng\";i:2963;s:20:\"variantname-shi-latn\";i:2964;s:15:\"variantname-shi\";i:2965;s:8:\"metadata\";i:2966;s:13:\"metadata-help\";i:2967;s:15:\"metadata-expand\";i:2968;s:17:\"metadata-collapse\";i:2969;s:15:\"metadata-fields\";i:2970;s:17:\"metadata-langitem\";i:2971;s:25:\"metadata-langitem-default\";i:2972;s:15:\"exif-imagewidth\";i:2973;s:16:\"exif-imagelength\";i:2974;s:18:\"exif-bitspersample\";i:2975;s:16:\"exif-compression\";i:2976;s:30:\"exif-photometricinterpretation\";i:2977;s:16:\"exif-orientation\";i:2978;s:20:\"exif-samplesperpixel\";i:2979;s:24:\"exif-planarconfiguration\";i:2980;s:21:\"exif-ycbcrsubsampling\";i:2981;s:21:\"exif-ycbcrpositioning\";i:2982;s:16:\"exif-xresolution\";i:2983;s:16:\"exif-yresolution\";i:2984;s:17:\"exif-stripoffsets\";i:2985;s:17:\"exif-rowsperstrip\";i:2986;s:20:\"exif-stripbytecounts\";i:2987;s:26:\"exif-jpeginterchangeformat\";i:2988;s:32:\"exif-jpeginterchangeformatlength\";i:2989;s:15:\"exif-whitepoint\";i:2990;s:26:\"exif-primarychromaticities\";i:2991;s:22:\"exif-ycbcrcoefficients\";i:2992;s:24:\"exif-referenceblackwhite\";i:2993;s:13:\"exif-datetime\";i:2994;s:21:\"exif-imagedescription\";i:2995;s:9:\"exif-make\";i:2996;s:10:\"exif-model\";i:2997;s:13:\"exif-software\";i:2998;s:11:\"exif-artist\";i:2999;s:14:\"exif-copyright\";i:3000;s:16:\"exif-exifversion\";i:3001;s:20:\"exif-flashpixversion\";i:3002;s:15:\"exif-colorspace\";i:3003;s:28:\"exif-componentsconfiguration\";i:3004;s:27:\"exif-compressedbitsperpixel\";i:3005;s:20:\"exif-pixelydimension\";i:3006;s:20:\"exif-pixelxdimension\";i:3007;s:16:\"exif-usercomment\";i:3008;s:21:\"exif-relatedsoundfile\";i:3009;s:21:\"exif-datetimeoriginal\";i:3010;s:22:\"exif-datetimedigitized\";i:3011;s:15:\"exif-subsectime\";i:3012;s:23:\"exif-subsectimeoriginal\";i:3013;s:24:\"exif-subsectimedigitized\";i:3014;s:17:\"exif-exposuretime\";i:3015;s:24:\"exif-exposuretime-format\";i:3016;s:12:\"exif-fnumber\";i:3017;s:19:\"exif-fnumber-format\";i:3018;s:20:\"exif-exposureprogram\";i:3019;s:24:\"exif-spectralsensitivity\";i:3020;s:20:\"exif-isospeedratings\";i:3021;s:22:\"exif-shutterspeedvalue\";i:3022;s:18:\"exif-aperturevalue\";i:3023;s:20:\"exif-brightnessvalue\";i:3024;s:22:\"exif-exposurebiasvalue\";i:3025;s:21:\"exif-maxaperturevalue\";i:3026;s:20:\"exif-subjectdistance\";i:3027;s:17:\"exif-meteringmode\";i:3028;s:16:\"exif-lightsource\";i:3029;s:10:\"exif-flash\";i:3030;s:16:\"exif-focallength\";i:3031;s:23:\"exif-focallength-format\";i:3032;s:16:\"exif-subjectarea\";i:3033;s:16:\"exif-flashenergy\";i:3034;s:26:\"exif-focalplanexresolution\";i:3035;s:26:\"exif-focalplaneyresolution\";i:3036;s:29:\"exif-focalplaneresolutionunit\";i:3037;s:20:\"exif-subjectlocation\";i:3038;s:18:\"exif-exposureindex\";i:3039;s:18:\"exif-sensingmethod\";i:3040;s:15:\"exif-filesource\";i:3041;s:14:\"exif-scenetype\";i:3042;s:19:\"exif-customrendered\";i:3043;s:17:\"exif-exposuremode\";i:3044;s:17:\"exif-whitebalance\";i:3045;s:21:\"exif-digitalzoomratio\";i:3046;s:26:\"exif-focallengthin35mmfilm\";i:3047;s:21:\"exif-scenecapturetype\";i:3048;s:16:\"exif-gaincontrol\";i:3049;s:13:\"exif-contrast\";i:3050;s:15:\"exif-saturation\";i:3051;s:14:\"exif-sharpness\";i:3052;s:29:\"exif-devicesettingdescription\";i:3053;s:25:\"exif-subjectdistancerange\";i:3054;s:18:\"exif-imageuniqueid\";i:3055;s:17:\"exif-gpsversionid\";i:3056;s:19:\"exif-gpslatituderef\";i:3057;s:16:\"exif-gpslatitude\";i:3058;s:20:\"exif-gpslongituderef\";i:3059;s:17:\"exif-gpslongitude\";i:3060;s:19:\"exif-gpsaltituderef\";i:3061;s:16:\"exif-gpsaltitude\";i:3062;s:17:\"exif-gpstimestamp\";i:3063;s:18:\"exif-gpssatellites\";i:3064;s:14:\"exif-gpsstatus\";i:3065;s:19:\"exif-gpsmeasuremode\";i:3066;s:11:\"exif-gpsdop\";i:3067;s:16:\"exif-gpsspeedref\";i:3068;s:13:\"exif-gpsspeed\";i:3069;s:16:\"exif-gpstrackref\";i:3070;s:13:\"exif-gpstrack\";i:3071;s:23:\"exif-gpsimgdirectionref\";i:3072;s:20:\"exif-gpsimgdirection\";i:3073;s:16:\"exif-gpsmapdatum\";i:3074;s:23:\"exif-gpsdestlatituderef\";i:3075;s:20:\"exif-gpsdestlatitude\";i:3076;s:24:\"exif-gpsdestlongituderef\";i:3077;s:21:\"exif-gpsdestlongitude\";i:3078;s:22:\"exif-gpsdestbearingref\";i:3079;s:19:\"exif-gpsdestbearing\";i:3080;s:23:\"exif-gpsdestdistanceref\";i:3081;s:20:\"exif-gpsdestdistance\";i:3082;s:24:\"exif-gpsprocessingmethod\";i:3083;s:23:\"exif-gpsareainformation\";i:3084;s:17:\"exif-gpsdatestamp\";i:3085;s:20:\"exif-gpsdifferential\";i:3086;s:22:\"exif-coordinate-format\";i:3087;s:20:\"exif-jpegfilecomment\";i:3088;s:13:\"exif-keywords\";i:3089;s:23:\"exif-worldregioncreated\";i:3090;s:19:\"exif-countrycreated\";i:3091;s:23:\"exif-countrycodecreated\";i:3092;s:27:\"exif-provinceorstatecreated\";i:3093;s:16:\"exif-citycreated\";i:3094;s:23:\"exif-sublocationcreated\";i:3095;s:20:\"exif-worldregiondest\";i:3096;s:16:\"exif-countrydest\";i:3097;s:20:\"exif-countrycodedest\";i:3098;s:24:\"exif-provinceorstatedest\";i:3099;s:13:\"exif-citydest\";i:3100;s:20:\"exif-sublocationdest\";i:3101;s:15:\"exif-objectname\";i:3102;s:24:\"exif-specialinstructions\";i:3103;s:13:\"exif-headline\";i:3104;s:11:\"exif-credit\";i:3105;s:11:\"exif-source\";i:3106;s:15:\"exif-editstatus\";i:3107;s:12:\"exif-urgency\";i:3108;s:22:\"exif-fixtureidentifier\";i:3109;s:17:\"exif-locationdest\";i:3110;s:21:\"exif-locationdestcode\";i:3111;s:16:\"exif-objectcycle\";i:3112;s:12:\"exif-contact\";i:3113;s:11:\"exif-writer\";i:3114;s:17:\"exif-languagecode\";i:3115;s:15:\"exif-iimversion\";i:3116;s:16:\"exif-iimcategory\";i:3117;s:28:\"exif-iimsupplementalcategory\";i:3118;s:20:\"exif-datetimeexpires\";i:3119;s:21:\"exif-datetimereleased\";i:3120;s:28:\"exif-originaltransmissionref\";i:3121;s:15:\"exif-identifier\";i:3122;s:9:\"exif-lens\";i:3123;s:17:\"exif-serialnumber\";i:3124;s:20:\"exif-cameraownername\";i:3125;s:10:\"exif-label\";i:3126;s:21:\"exif-datetimemetadata\";i:3127;s:13:\"exif-nickname\";i:3128;s:11:\"exif-rating\";i:3129;s:22:\"exif-rightscertificate\";i:3130;s:16:\"exif-copyrighted\";i:3131;s:19:\"exif-copyrightowner\";i:3132;s:15:\"exif-usageterms\";i:3133;s:17:\"exif-webstatement\";i:3134;s:23:\"exif-originaldocumentid\";i:3135;s:15:\"exif-licenseurl\";i:3136;s:23:\"exif-morepermissionsurl\";i:3137;s:19:\"exif-attributionurl\";i:3138;s:29:\"exif-preferredattributionname\";i:3139;s:19:\"exif-pngfilecomment\";i:3140;s:15:\"exif-disclaimer\";i:3141;s:19:\"exif-contentwarning\";i:3142;s:19:\"exif-giffilecomment\";i:3143;s:22:\"exif-intellectualgenre\";i:3144;s:20:\"exif-subjectnewscode\";i:3145;s:14:\"exif-scenecode\";i:3146;s:10:\"exif-event\";i:3147;s:24:\"exif-organisationinimage\";i:3148;s:18:\"exif-personinimage\";i:3149;s:24:\"exif-originalimageheight\";i:3150;s:23:\"exif-originalimagewidth\";i:3151;s:15:\"exif-make-value\";i:3152;s:16:\"exif-model-value\";i:3153;s:19:\"exif-software-value\";i:3154;s:27:\"exif-software-version-value\";i:3155;s:18:\"exif-contact-value\";i:3156;s:26:\"exif-subjectnewscode-value\";i:3157;s:18:\"exif-compression-1\";i:3158;s:18:\"exif-compression-2\";i:3159;s:18:\"exif-compression-3\";i:3160;s:18:\"exif-compression-4\";i:3161;s:18:\"exif-compression-5\";i:3162;s:18:\"exif-compression-6\";i:3163;s:18:\"exif-compression-7\";i:3164;s:18:\"exif-compression-8\";i:3165;s:22:\"exif-compression-32773\";i:3166;s:22:\"exif-compression-32946\";i:3167;s:22:\"exif-compression-34712\";i:3168;s:21:\"exif-copyrighted-true\";i:3169;s:22:\"exif-copyrighted-false\";i:3170;s:32:\"exif-photometricinterpretation-2\";i:3171;s:32:\"exif-photometricinterpretation-6\";i:3172;s:16:\"exif-unknowndate\";i:3173;s:18:\"exif-orientation-1\";i:3174;s:18:\"exif-orientation-2\";i:3175;s:18:\"exif-orientation-3\";i:3176;s:18:\"exif-orientation-4\";i:3177;s:18:\"exif-orientation-5\";i:3178;s:18:\"exif-orientation-6\";i:3179;s:18:\"exif-orientation-7\";i:3180;s:18:\"exif-orientation-8\";i:3181;s:26:\"exif-planarconfiguration-1\";i:3182;s:26:\"exif-planarconfiguration-2\";i:3183;s:19:\"exif-xyresolution-i\";i:3184;s:19:\"exif-xyresolution-c\";i:3185;s:17:\"exif-colorspace-1\";i:3186;s:21:\"exif-colorspace-65535\";i:3187;s:30:\"exif-componentsconfiguration-0\";i:3188;s:30:\"exif-componentsconfiguration-1\";i:3189;s:30:\"exif-componentsconfiguration-2\";i:3190;s:30:\"exif-componentsconfiguration-3\";i:3191;s:30:\"exif-componentsconfiguration-4\";i:3192;s:30:\"exif-componentsconfiguration-5\";i:3193;s:30:\"exif-componentsconfiguration-6\";i:3194;s:22:\"exif-exposureprogram-0\";i:3195;s:22:\"exif-exposureprogram-1\";i:3196;s:22:\"exif-exposureprogram-2\";i:3197;s:22:\"exif-exposureprogram-3\";i:3198;s:22:\"exif-exposureprogram-4\";i:3199;s:22:\"exif-exposureprogram-5\";i:3200;s:22:\"exif-exposureprogram-6\";i:3201;s:22:\"exif-exposureprogram-7\";i:3202;s:22:\"exif-exposureprogram-8\";i:3203;s:26:\"exif-subjectdistance-value\";i:3204;s:19:\"exif-meteringmode-0\";i:3205;s:19:\"exif-meteringmode-1\";i:3206;s:19:\"exif-meteringmode-2\";i:3207;s:19:\"exif-meteringmode-3\";i:3208;s:19:\"exif-meteringmode-4\";i:3209;s:19:\"exif-meteringmode-5\";i:3210;s:19:\"exif-meteringmode-6\";i:3211;s:21:\"exif-meteringmode-255\";i:3212;s:18:\"exif-lightsource-0\";i:3213;s:18:\"exif-lightsource-1\";i:3214;s:18:\"exif-lightsource-2\";i:3215;s:18:\"exif-lightsource-3\";i:3216;s:18:\"exif-lightsource-4\";i:3217;s:18:\"exif-lightsource-9\";i:3218;s:19:\"exif-lightsource-10\";i:3219;s:19:\"exif-lightsource-11\";i:3220;s:19:\"exif-lightsource-12\";i:3221;s:19:\"exif-lightsource-13\";i:3222;s:19:\"exif-lightsource-14\";i:3223;s:19:\"exif-lightsource-15\";i:3224;s:19:\"exif-lightsource-17\";i:3225;s:19:\"exif-lightsource-18\";i:3226;s:19:\"exif-lightsource-19\";i:3227;s:19:\"exif-lightsource-20\";i:3228;s:19:\"exif-lightsource-21\";i:3229;s:19:\"exif-lightsource-22\";i:3230;s:19:\"exif-lightsource-23\";i:3231;s:19:\"exif-lightsource-24\";i:3232;s:20:\"exif-lightsource-255\";i:3233;s:18:\"exif-flash-fired-0\";i:3234;s:18:\"exif-flash-fired-1\";i:3235;s:19:\"exif-flash-return-0\";i:3236;s:19:\"exif-flash-return-2\";i:3237;s:19:\"exif-flash-return-3\";i:3238;s:17:\"exif-flash-mode-1\";i:3239;s:17:\"exif-flash-mode-2\";i:3240;s:17:\"exif-flash-mode-3\";i:3241;s:21:\"exif-flash-function-1\";i:3242;s:19:\"exif-flash-redeye-1\";i:3243;s:31:\"exif-focalplaneresolutionunit-2\";i:3244;s:20:\"exif-sensingmethod-1\";i:3245;s:20:\"exif-sensingmethod-2\";i:3246;s:20:\"exif-sensingmethod-3\";i:3247;s:20:\"exif-sensingmethod-4\";i:3248;s:20:\"exif-sensingmethod-5\";i:3249;s:20:\"exif-sensingmethod-7\";i:3250;s:20:\"exif-sensingmethod-8\";i:3251;s:17:\"exif-filesource-3\";i:3252;s:16:\"exif-scenetype-1\";i:3253;s:21:\"exif-customrendered-0\";i:3254;s:21:\"exif-customrendered-1\";i:3255;s:19:\"exif-exposuremode-0\";i:3256;s:19:\"exif-exposuremode-1\";i:3257;s:19:\"exif-exposuremode-2\";i:3258;s:19:\"exif-whitebalance-0\";i:3259;s:19:\"exif-whitebalance-1\";i:3260;s:23:\"exif-scenecapturetype-0\";i:3261;s:23:\"exif-scenecapturetype-1\";i:3262;s:23:\"exif-scenecapturetype-2\";i:3263;s:23:\"exif-scenecapturetype-3\";i:3264;s:18:\"exif-gaincontrol-0\";i:3265;s:18:\"exif-gaincontrol-1\";i:3266;s:18:\"exif-gaincontrol-2\";i:3267;s:18:\"exif-gaincontrol-3\";i:3268;s:18:\"exif-gaincontrol-4\";i:3269;s:15:\"exif-contrast-0\";i:3270;s:15:\"exif-contrast-1\";i:3271;s:15:\"exif-contrast-2\";i:3272;s:17:\"exif-saturation-0\";i:3273;s:17:\"exif-saturation-1\";i:3274;s:17:\"exif-saturation-2\";i:3275;s:16:\"exif-sharpness-0\";i:3276;s:16:\"exif-sharpness-1\";i:3277;s:16:\"exif-sharpness-2\";i:3278;s:27:\"exif-subjectdistancerange-0\";i:3279;s:27:\"exif-subjectdistancerange-1\";i:3280;s:27:\"exif-subjectdistancerange-2\";i:3281;s:27:\"exif-subjectdistancerange-3\";i:3282;s:18:\"exif-gpslatitude-n\";i:3283;s:18:\"exif-gpslatitude-s\";i:3284;s:19:\"exif-gpslongitude-e\";i:3285;s:19:\"exif-gpslongitude-w\";i:3286;s:31:\"exif-gpsaltitude-above-sealevel\";i:3287;s:31:\"exif-gpsaltitude-below-sealevel\";i:3288;s:16:\"exif-gpsstatus-a\";i:3289;s:16:\"exif-gpsstatus-v\";i:3290;s:21:\"exif-gpsmeasuremode-2\";i:3291;s:21:\"exif-gpsmeasuremode-3\";i:3292;s:15:\"exif-gpsspeed-k\";i:3293;s:15:\"exif-gpsspeed-m\";i:3294;s:15:\"exif-gpsspeed-n\";i:3295;s:22:\"exif-gpsdestdistance-k\";i:3296;s:22:\"exif-gpsdestdistance-m\";i:3297;s:22:\"exif-gpsdestdistance-n\";i:3298;s:21:\"exif-gpsdop-excellent\";i:3299;s:16:\"exif-gpsdop-good\";i:3300;s:20:\"exif-gpsdop-moderate\";i:3301;s:16:\"exif-gpsdop-fair\";i:3302;s:16:\"exif-gpsdop-poor\";i:3303;s:18:\"exif-objectcycle-a\";i:3304;s:18:\"exif-objectcycle-p\";i:3305;s:18:\"exif-objectcycle-b\";i:3306;s:19:\"exif-gpsdirection-t\";i:3307;s:19:\"exif-gpsdirection-m\";i:3308;s:23:\"exif-ycbcrpositioning-1\";i:3309;s:23:\"exif-ycbcrpositioning-2\";i:3310;s:19:\"exif-dc-contributor\";i:3311;s:16:\"exif-dc-coverage\";i:3312;s:12:\"exif-dc-date\";i:3313;s:17:\"exif-dc-publisher\";i:3314;s:16:\"exif-dc-relation\";i:3315;s:14:\"exif-dc-rights\";i:3316;s:14:\"exif-dc-source\";i:3317;s:12:\"exif-dc-type\";i:3318;s:20:\"exif-rating-rejected\";i:3319;s:29:\"exif-isospeedratings-overflow\";i:3320;s:27:\"exif-maxaperturevalue-value\";i:3321;s:20:\"exif-iimcategory-ace\";i:3322;s:20:\"exif-iimcategory-clj\";i:3323;s:20:\"exif-iimcategory-dis\";i:3324;s:20:\"exif-iimcategory-fin\";i:3325;s:20:\"exif-iimcategory-edu\";i:3326;s:20:\"exif-iimcategory-evn\";i:3327;s:20:\"exif-iimcategory-hth\";i:3328;s:20:\"exif-iimcategory-hum\";i:3329;s:20:\"exif-iimcategory-lab\";i:3330;s:20:\"exif-iimcategory-lif\";i:3331;s:20:\"exif-iimcategory-pol\";i:3332;s:20:\"exif-iimcategory-rel\";i:3333;s:20:\"exif-iimcategory-sci\";i:3334;s:20:\"exif-iimcategory-soi\";i:3335;s:20:\"exif-iimcategory-spo\";i:3336;s:20:\"exif-iimcategory-war\";i:3337;s:20:\"exif-iimcategory-wea\";i:3338;s:19:\"exif-urgency-normal\";i:3339;s:16:\"exif-urgency-low\";i:3340;s:17:\"exif-urgency-high\";i:3341;s:18:\"exif-urgency-other\";i:3342;s:15:\"edit-externally\";i:3343;s:20:\"edit-externally-help\";i:3344;s:13:\"watchlistall2\";i:3345;s:13:\"namespacesall\";i:3346;s:9:\"monthsall\";i:3347;s:8:\"limitall\";i:3348;s:12:\"confirmemail\";i:3349;s:20:\"confirmemail_noemail\";i:3350;s:17:\"confirmemail_text\";i:3351;s:20:\"confirmemail_pending\";i:3352;s:17:\"confirmemail_send\";i:3353;s:17:\"confirmemail_sent\";i:3354;s:21:\"confirmemail_oncreate\";i:3355;s:23:\"confirmemail_sendfailed\";i:3356;s:20:\"confirmemail_invalid\";i:3357;s:22:\"confirmemail_needlogin\";i:3358;s:20:\"confirmemail_success\";i:3359;s:21:\"confirmemail_loggedin\";i:3360;s:18:\"confirmemail_error\";i:3361;s:20:\"confirmemail_subject\";i:3362;s:17:\"confirmemail_body\";i:3363;s:25:\"confirmemail_body_changed\";i:3364;s:21:\"confirmemail_body_set\";i:3365;s:24:\"confirmemail_invalidated\";i:3366;s:15:\"invalidateemail\";i:3367;s:23:\"scarytranscludedisabled\";i:3368;s:21:\"scarytranscludefailed\";i:3369;s:22:\"scarytranscludetoolong\";i:3370;s:19:\"deletedwhileediting\";i:3371;s:15:\"confirmrecreate\";i:3372;s:24:\"confirmrecreate-noreason\";i:3373;s:8:\"recreate\";i:3374;s:10:\"unit-pixel\";i:3375;s:20:\"confirm_purge_button\";i:3376;s:17:\"confirm-purge-top\";i:3377;s:20:\"confirm-purge-bottom\";i:3378;s:20:\"confirm-watch-button\";i:3379;s:17:\"confirm-watch-top\";i:3380;s:22:\"confirm-unwatch-button\";i:3381;s:19:\"confirm-unwatch-top\";i:3382;s:19:\"semicolon-separator\";i:3383;s:15:\"comma-separator\";i:3384;s:15:\"colon-separator\";i:3385;s:18:\"autocomment-prefix\";i:3386;s:14:\"pipe-separator\";i:3387;s:14:\"word-separator\";i:3388;s:8:\"ellipsis\";i:3389;s:7:\"percent\";i:3390;s:11:\"parentheses\";i:3391;s:16:\"imgmultipageprev\";i:3392;s:16:\"imgmultipagenext\";i:3393;s:10:\"imgmultigo\";i:3394;s:12:\"imgmultigoto\";i:3395;s:16:\"ascending_abbrev\";i:3396;s:17:\"descending_abbrev\";i:3397;s:16:\"table_pager_next\";i:3398;s:16:\"table_pager_prev\";i:3399;s:17:\"table_pager_first\";i:3400;s:16:\"table_pager_last\";i:3401;s:17:\"table_pager_limit\";i:3402;s:23:\"table_pager_limit_label\";i:3403;s:24:\"table_pager_limit_submit\";i:3404;s:17:\"table_pager_empty\";i:3405;s:14:\"autosumm-blank\";i:3406;s:16:\"autosumm-replace\";i:3407;s:16:\"autoredircomment\";i:3408;s:12:\"autosumm-new\";i:3409;s:19:\"autoblock_whitelist\";i:3410;s:10:\"size-bytes\";i:3411;s:14:\"size-kilobytes\";i:3412;s:14:\"size-megabytes\";i:3413;s:14:\"size-gigabytes\";i:3414;s:14:\"size-terabytes\";i:3415;s:14:\"size-petabytes\";i:3416;s:13:\"size-exabytes\";i:3417;s:14:\"size-zetabytes\";i:3418;s:15:\"size-yottabytes\";i:3419;s:12:\"bitrate-bits\";i:3420;s:16:\"bitrate-kilobits\";i:3421;s:16:\"bitrate-megabits\";i:3422;s:16:\"bitrate-gigabits\";i:3423;s:16:\"bitrate-terabits\";i:3424;s:16:\"bitrate-petabits\";i:3425;s:15:\"bitrate-exabits\";i:3426;s:16:\"bitrate-zetabits\";i:3427;s:17:\"bitrate-yottabits\";i:3428;s:19:\"livepreview-loading\";i:3429;s:17:\"livepreview-ready\";i:3430;s:18:\"livepreview-failed\";i:3431;s:17:\"livepreview-error\";i:3432;s:15:\"lag-warn-normal\";i:3433;s:13:\"lag-warn-high\";i:3434;s:22:\"watchlistedit-numitems\";i:3435;s:21:\"watchlistedit-noitems\";i:3436;s:26:\"watchlistedit-normal-title\";i:3437;s:27:\"watchlistedit-normal-legend\";i:3438;s:28:\"watchlistedit-normal-explain\";i:3439;s:27:\"watchlistedit-normal-submit\";i:3440;s:25:\"watchlistedit-normal-done\";i:3441;s:23:\"watchlistedit-raw-title\";i:3442;s:24:\"watchlistedit-raw-legend\";i:3443;s:25:\"watchlistedit-raw-explain\";i:3444;s:24:\"watchlistedit-raw-titles\";i:3445;s:24:\"watchlistedit-raw-submit\";i:3446;s:22:\"watchlistedit-raw-done\";i:3447;s:23:\"watchlistedit-raw-added\";i:3448;s:25:\"watchlistedit-raw-removed\";i:3449;s:19:\"watchlisttools-view\";i:3450;s:19:\"watchlisttools-edit\";i:3451;s:18:\"watchlisttools-raw\";i:3452;s:19:\"iranian-calendar-m1\";i:3453;s:19:\"iranian-calendar-m2\";i:3454;s:19:\"iranian-calendar-m3\";i:3455;s:19:\"iranian-calendar-m4\";i:3456;s:19:\"iranian-calendar-m5\";i:3457;s:19:\"iranian-calendar-m6\";i:3458;s:19:\"iranian-calendar-m7\";i:3459;s:19:\"iranian-calendar-m8\";i:3460;s:19:\"iranian-calendar-m9\";i:3461;s:20:\"iranian-calendar-m10\";i:3462;s:20:\"iranian-calendar-m11\";i:3463;s:20:\"iranian-calendar-m12\";i:3464;s:17:\"hijri-calendar-m1\";i:3465;s:17:\"hijri-calendar-m2\";i:3466;s:17:\"hijri-calendar-m3\";i:3467;s:17:\"hijri-calendar-m4\";i:3468;s:17:\"hijri-calendar-m5\";i:3469;s:17:\"hijri-calendar-m6\";i:3470;s:17:\"hijri-calendar-m7\";i:3471;s:17:\"hijri-calendar-m8\";i:3472;s:17:\"hijri-calendar-m9\";i:3473;s:18:\"hijri-calendar-m10\";i:3474;s:18:\"hijri-calendar-m11\";i:3475;s:18:\"hijri-calendar-m12\";i:3476;s:18:\"hebrew-calendar-m1\";i:3477;s:18:\"hebrew-calendar-m2\";i:3478;s:18:\"hebrew-calendar-m3\";i:3479;s:18:\"hebrew-calendar-m4\";i:3480;s:18:\"hebrew-calendar-m5\";i:3481;s:18:\"hebrew-calendar-m6\";i:3482;s:19:\"hebrew-calendar-m6a\";i:3483;s:19:\"hebrew-calendar-m6b\";i:3484;s:18:\"hebrew-calendar-m7\";i:3485;s:18:\"hebrew-calendar-m8\";i:3486;s:18:\"hebrew-calendar-m9\";i:3487;s:19:\"hebrew-calendar-m10\";i:3488;s:19:\"hebrew-calendar-m11\";i:3489;s:19:\"hebrew-calendar-m12\";i:3490;s:22:\"hebrew-calendar-m1-gen\";i:3491;s:22:\"hebrew-calendar-m2-gen\";i:3492;s:22:\"hebrew-calendar-m3-gen\";i:3493;s:22:\"hebrew-calendar-m4-gen\";i:3494;s:22:\"hebrew-calendar-m5-gen\";i:3495;s:22:\"hebrew-calendar-m6-gen\";i:3496;s:23:\"hebrew-calendar-m6a-gen\";i:3497;s:23:\"hebrew-calendar-m6b-gen\";i:3498;s:22:\"hebrew-calendar-m7-gen\";i:3499;s:22:\"hebrew-calendar-m8-gen\";i:3500;s:22:\"hebrew-calendar-m9-gen\";i:3501;s:23:\"hebrew-calendar-m10-gen\";i:3502;s:23:\"hebrew-calendar-m11-gen\";i:3503;s:23:\"hebrew-calendar-m12-gen\";i:3504;s:9:\"signature\";i:3505;s:14:\"signature-anon\";i:3506;s:12:\"timezone-utc\";i:3507;s:21:\"unknown_extension_tag\";i:3508;s:21:\"duplicate-defaultsort\";i:3509;s:7:\"version\";i:3510;s:18:\"version-extensions\";i:3511;s:20:\"version-specialpages\";i:3512;s:19:\"version-parserhooks\";i:3513;s:17:\"version-variables\";i:3514;s:16:\"version-antispam\";i:3515;s:13:\"version-skins\";i:3516;s:11:\"version-api\";i:3517;s:13:\"version-other\";i:3518;s:21:\"version-mediahandlers\";i:3519;s:13:\"version-hooks\";i:3520;s:27:\"version-extension-functions\";i:3521;s:28:\"version-parser-extensiontags\";i:3522;s:29:\"version-parser-function-hooks\";i:3523;s:17:\"version-hook-name\";i:3524;s:25:\"version-hook-subscribedby\";i:3525;s:15:\"version-version\";i:3526;s:20:\"version-svn-revision\";i:3527;s:15:\"version-license\";i:3528;s:25:\"version-poweredby-credits\";i:3529;s:24:\"version-poweredby-others\";i:3530;s:20:\"version-license-info\";i:3531;s:16:\"version-software\";i:3532;s:24:\"version-software-product\";i:3533;s:24:\"version-software-version\";i:3534;s:8:\"filepath\";i:3535;s:13:\"filepath-page\";i:3536;s:15:\"filepath-submit\";i:3537;s:16:\"filepath-summary\";i:3538;s:19:\"fileduplicatesearch\";i:3539;s:27:\"fileduplicatesearch-summary\";i:3540;s:26:\"fileduplicatesearch-legend\";i:3541;s:28:\"fileduplicatesearch-filename\";i:3542;s:26:\"fileduplicatesearch-submit\";i:3543;s:24:\"fileduplicatesearch-info\";i:3544;s:28:\"fileduplicatesearch-result-1\";i:3545;s:28:\"fileduplicatesearch-result-n\";i:3546;s:29:\"fileduplicatesearch-noresults\";i:3547;s:12:\"specialpages\";i:3548;s:20:\"specialpages-summary\";i:3549;s:17:\"specialpages-note\";i:3550;s:30:\"specialpages-group-maintenance\";i:3551;s:24:\"specialpages-group-other\";i:3552;s:24:\"specialpages-group-login\";i:3553;s:26:\"specialpages-group-changes\";i:3554;s:24:\"specialpages-group-media\";i:3555;s:24:\"specialpages-group-users\";i:3556;s:26:\"specialpages-group-highuse\";i:3557;s:24:\"specialpages-group-pages\";i:3558;s:28:\"specialpages-group-pagetools\";i:3559;s:23:\"specialpages-group-wiki\";i:3560;s:28:\"specialpages-group-redirects\";i:3561;s:23:\"specialpages-group-spam\";i:3562;s:9:\"blankpage\";i:3563;s:22:\"intentionallyblankpage\";i:3564;s:24:\"external_image_whitelist\";i:3565;s:4:\"tags\";i:3566;s:10:\"tag-filter\";i:3567;s:17:\"tag-filter-submit\";i:3568;s:10:\"tags-title\";i:3569;s:10:\"tags-intro\";i:3570;s:8:\"tags-tag\";i:3571;s:19:\"tags-display-header\";i:3572;s:23:\"tags-description-header\";i:3573;s:20:\"tags-hitcount-header\";i:3574;s:9:\"tags-edit\";i:3575;s:13:\"tags-hitcount\";i:3576;s:12:\"comparepages\";i:3577;s:16:\"compare-selector\";i:3578;s:13:\"compare-page1\";i:3579;s:13:\"compare-page2\";i:3580;s:12:\"compare-rev1\";i:3581;s:12:\"compare-rev2\";i:3582;s:14:\"compare-submit\";i:3583;s:21:\"compare-invalid-title\";i:3584;s:24:\"compare-title-not-exists\";i:3585;s:27:\"compare-revision-not-exists\";i:3586;s:12:\"dberr-header\";i:3587;s:14:\"dberr-problems\";i:3588;s:11:\"dberr-again\";i:3589;s:10:\"dberr-info\";i:3590;s:15:\"dberr-usegoogle\";i:3591;s:15:\"dberr-outofdate\";i:3592;s:17:\"dberr-cachederror\";i:3593;s:22:\"htmlform-invalid-input\";i:3594;s:25:\"htmlform-select-badoption\";i:3595;s:20:\"htmlform-int-invalid\";i:3596;s:22:\"htmlform-float-invalid\";i:3597;s:19:\"htmlform-int-toolow\";i:3598;s:20:\"htmlform-int-toohigh\";i:3599;s:17:\"htmlform-required\";i:3600;s:15:\"htmlform-submit\";i:3601;s:14:\"htmlform-reset\";i:3602;s:28:\"htmlform-selectorother-other\";i:3603;s:14:\"sqlite-has-fts\";i:3604;s:13:\"sqlite-no-fts\";i:3605;s:22:\"logentry-delete-delete\";i:3606;s:23:\"logentry-delete-restore\";i:3607;s:21:\"logentry-delete-event\";i:3608;s:24:\"logentry-delete-revision\";i:3609;s:28:\"logentry-delete-event-legacy\";i:3610;s:31:\"logentry-delete-revision-legacy\";i:3611;s:24:\"logentry-suppress-delete\";i:3612;s:23:\"logentry-suppress-event\";i:3613;s:26:\"logentry-suppress-revision\";i:3614;s:30:\"logentry-suppress-event-legacy\";i:3615;s:33:\"logentry-suppress-revision-legacy\";i:3616;s:21:\"revdelete-content-hid\";i:3617;s:21:\"revdelete-summary-hid\";i:3618;s:19:\"revdelete-uname-hid\";i:3619;s:23:\"revdelete-content-unhid\";i:3620;s:23:\"revdelete-summary-unhid\";i:3621;s:21:\"revdelete-uname-unhid\";i:3622;s:20:\"revdelete-restricted\";i:3623;s:22:\"revdelete-unrestricted\";i:3624;s:18:\"logentry-move-move\";i:3625;s:29:\"logentry-move-move-noredirect\";i:3626;s:24:\"logentry-move-move_redir\";i:3627;s:35:\"logentry-move-move_redir-noredirect\";i:3628;s:22:\"logentry-patrol-patrol\";i:3629;s:27:\"logentry-patrol-patrol-auto\";i:3630;s:26:\"logentry-newusers-newusers\";i:3631;s:24:\"logentry-newusers-create\";i:3632;s:25:\"logentry-newusers-create2\";i:3633;s:28:\"logentry-newusers-autocreate\";i:3634;s:18:\"newuserlog-byemail\";i:3635;s:18:\"feedback-bugornote\";i:3636;s:16:\"feedback-subject\";i:3637;s:16:\"feedback-message\";i:3638;s:15:\"feedback-cancel\";i:3639;s:15:\"feedback-submit\";i:3640;s:15:\"feedback-adding\";i:3641;s:15:\"feedback-error1\";i:3642;s:15:\"feedback-error2\";i:3643;s:15:\"feedback-error3\";i:3644;s:15:\"feedback-thanks\";i:3645;s:14:\"feedback-close\";i:3646;s:17:\"feedback-bugcheck\";i:3647;s:15:\"feedback-bugnew\";i:3648;s:26:\"api-error-badaccess-groups\";i:3649;s:18:\"api-error-badtoken\";i:3650;s:28:\"api-error-copyuploaddisabled\";i:3651;s:19:\"api-error-duplicate\";i:3652;s:27:\"api-error-duplicate-archive\";i:3653;s:39:\"api-error-duplicate-archive-popup-title\";i:3654;s:31:\"api-error-duplicate-popup-title\";i:3655;s:20:\"api-error-empty-file\";i:3656;s:19:\"api-error-emptypage\";i:3657;s:24:\"api-error-fetchfileerror\";i:3658;s:24:\"api-error-file-too-large\";i:3659;s:27:\"api-error-filename-tooshort\";i:3660;s:25:\"api-error-filetype-banned\";i:3661;s:26:\"api-error-filetype-missing\";i:3662;s:21:\"api-error-hookaborted\";i:3663;s:14:\"api-error-http\";i:3664;s:26:\"api-error-illegal-filename\";i:3665;s:24:\"api-error-internal-error\";i:3666;s:26:\"api-error-invalid-file-key\";i:3667;s:22:\"api-error-missingparam\";i:3668;s:23:\"api-error-missingresult\";i:3669;s:24:\"api-error-mustbeloggedin\";i:3670;s:22:\"api-error-mustbeposted\";i:3671;s:21:\"api-error-noimageinfo\";i:3672;s:18:\"api-error-nomodule\";i:3673;s:22:\"api-error-ok-but-empty\";i:3674;s:19:\"api-error-overwrite\";i:3675;s:21:\"api-error-stashfailed\";i:3676;s:17:\"api-error-timeout\";i:3677;s:22:\"api-error-unclassified\";i:3678;s:22:\"api-error-unknown-code\";i:3679;s:23:\"api-error-unknown-error\";i:3680;s:25:\"api-error-unknown-warning\";i:3681;s:22:\"api-error-unknownerror\";i:3682;s:24:\"api-error-uploaddisabled\";i:3683;s:28:\"api-error-verification-error\";}}'),('en','preload','a:3:{s:8:\"messages\";a:95:{s:9:\"aboutpage\";s:13:\"Project:About\";s:9:\"aboutsite\";s:18:\"About {{SITENAME}}\";s:17:\"accesskey-ca-edit\";s:1:\"e\";s:20:\"accesskey-ca-history\";s:1:\"h\";s:23:\"accesskey-ca-nstab-main\";s:1:\"c\";s:17:\"accesskey-ca-talk\";s:1:\"t\";s:25:\"accesskey-n-currentevents\";s:0:\"\";s:16:\"accesskey-n-help\";s:0:\"\";s:32:\"accesskey-n-mainpage-description\";s:1:\"z\";s:18:\"accesskey-n-portal\";s:0:\"\";s:22:\"accesskey-n-randompage\";s:1:\"x\";s:25:\"accesskey-n-recentchanges\";s:1:\"r\";s:23:\"accesskey-n-sitesupport\";N;s:16:\"accesskey-p-logo\";s:0:\"\";s:18:\"accesskey-pt-login\";s:1:\"o\";s:16:\"accesskey-search\";s:1:\"f\";s:25:\"accesskey-search-fulltext\";s:0:\"\";s:19:\"accesskey-search-go\";s:0:\"\";s:21:\"accesskey-t-permalink\";s:0:\"\";s:17:\"accesskey-t-print\";s:1:\"p\";s:31:\"accesskey-t-recentchangeslinked\";s:1:\"k\";s:24:\"accesskey-t-specialpages\";s:1:\"q\";s:25:\"accesskey-t-whatlinkshere\";s:1:\"j\";s:10:\"anonnotice\";s:1:\"-\";s:15:\"colon-separator\";s:6:\":&#32;\";s:13:\"currentevents\";s:14:\"Current events\";s:17:\"currentevents-url\";s:22:\"Project:Current events\";s:14:\"disclaimerpage\";s:26:\"Project:General disclaimer\";s:11:\"disclaimers\";s:11:\"Disclaimers\";s:4:\"edit\";s:4:\"Edit\";s:4:\"help\";s:4:\"Help\";s:8:\"helppage\";s:13:\"Help:Contents\";s:13:\"history_short\";s:7:\"History\";s:6:\"jumpto\";s:8:\"Jump to:\";s:16:\"jumptonavigation\";s:10:\"navigation\";s:12:\"jumptosearch\";s:6:\"search\";s:14:\"lastmodifiedat\";s:41:\"This page was last modified on $1, at $2.\";s:8:\"mainpage\";s:9:\"Main Page\";s:20:\"mainpage-description\";s:9:\"Main page\";s:23:\"nav-login-createaccount\";s:23:\"Log in / create account\";s:10:\"navigation\";s:10:\"Navigation\";s:10:\"nstab-main\";s:4:\"Page\";s:15:\"opensearch-desc\";s:34:\"{{SITENAME}} ({{CONTENTLANGUAGE}})\";s:14:\"pagecategories\";s:33:\"{{PLURAL:$1|Category|Categories}}\";s:18:\"pagecategorieslink\";s:18:\"Special:Categories\";s:9:\"pagetitle\";s:17:\"$1 - {{SITENAME}}\";s:23:\"pagetitle-view-mainpage\";s:12:\"{{SITENAME}}\";s:9:\"permalink\";s:14:\"Permanent link\";s:13:\"personaltools\";s:14:\"Personal tools\";s:6:\"portal\";s:16:\"Community portal\";s:10:\"portal-url\";s:24:\"Project:Community portal\";s:16:\"printableversion\";s:17:\"Printable version\";s:7:\"privacy\";s:14:\"Privacy policy\";s:11:\"privacypage\";s:22:\"Project:Privacy policy\";s:10:\"randompage\";s:11:\"Random page\";s:14:\"randompage-url\";s:14:\"Special:Random\";s:13:\"recentchanges\";s:14:\"Recent changes\";s:17:\"recentchanges-url\";s:21:\"Special:RecentChanges\";s:27:\"recentchangeslinked-toolbox\";s:15:\"Related changes\";s:13:\"retrievedfrom\";s:19:\"Retrieved from \"$1\"\";s:6:\"search\";s:6:\"Search\";s:13:\"searcharticle\";s:2:\"Go\";s:12:\"searchbutton\";s:6:\"Search\";s:7:\"sidebar\";s:214:\"\n* navigation\n** mainpage|mainpage-description\n** portal-url|portal\n** currentevents-url|currentevents\n** recentchanges-url|recentchanges\n** randompage-url|randompage\n** helppage|help\n* SEARCH\n* TOOLBOX\n* LANGUAGES\";s:14:\"site-atom-feed\";s:12:\"$1 Atom feed\";s:13:\"site-rss-feed\";s:11:\"$1 RSS feed\";s:10:\"sitenotice\";s:1:\"-\";s:12:\"specialpages\";s:13:\"Special pages\";s:7:\"tagline\";s:17:\"From {{SITENAME}}\";s:4:\"talk\";s:10:\"Discussion\";s:7:\"toolbox\";s:7:\"Toolbox\";s:15:\"tooltip-ca-edit\";s:67:\"You can edit this page. Please use the preview button before saving\";s:18:\"tooltip-ca-history\";s:27:\"Past revisions of this page\";s:21:\"tooltip-ca-nstab-main\";s:21:\"View the content page\";s:15:\"tooltip-ca-talk\";s:33:\"Discussion about the content page\";s:23:\"tooltip-n-currentevents\";s:45:\"Find background information on current events\";s:14:\"tooltip-n-help\";s:21:\"The place to find out\";s:30:\"tooltip-n-mainpage-description\";s:19:\"Visit the main page\";s:16:\"tooltip-n-portal\";s:56:\"About the project, what you can do, where to find things\";s:20:\"tooltip-n-randompage\";s:18:\"Load a random page\";s:23:\"tooltip-n-recentchanges\";s:36:\"A list of recent changes in the wiki\";s:21:\"tooltip-n-sitesupport\";N;s:14:\"tooltip-p-logo\";s:19:\"Visit the main page\";s:20:\"tooltip-p-navigation\";N;s:16:\"tooltip-pt-login\";s:58:\"You are encouraged to log in; however, it is not mandatory\";s:14:\"tooltip-search\";s:19:\"Search {{SITENAME}}\";s:23:\"tooltip-search-fulltext\";s:30:\"Search the pages for this text\";s:17:\"tooltip-search-go\";s:43:\"Go to a page with this exact name if exists\";s:19:\"tooltip-t-permalink\";s:43:\"Permanent link to this revision of the page\";s:15:\"tooltip-t-print\";s:30:\"Printable version of this page\";s:29:\"tooltip-t-recentchangeslinked\";s:45:\"Recent changes in pages linked from this page\";s:22:\"tooltip-t-specialpages\";s:27:\"A list of all special pages\";s:23:\"tooltip-t-whatlinkshere\";s:39:\"A list of all wiki pages that link here\";s:5:\"views\";s:5:\"Views\";s:13:\"whatlinkshere\";s:15:\"What links here\";}s:11:\"dateFormats\";a:12:{s:8:\"mdy time\";s:3:\"H:i\";s:8:\"mdy date\";s:6:\"F j, Y\";s:8:\"mdy both\";s:11:\"H:i, F j, Y\";s:8:\"dmy time\";s:3:\"H:i\";s:8:\"dmy date\";s:5:\"j F Y\";s:8:\"dmy both\";s:10:\"H:i, j F Y\";s:8:\"ymd time\";s:3:\"H:i\";s:8:\"ymd date\";s:5:\"Y F j\";s:8:\"ymd both\";s:10:\"H:i, Y F j\";s:13:\"ISO 8601 time\";s:11:\"xnH:xni:xns\";s:13:\"ISO 8601 date\";s:11:\"xnY-xnm-xnd\";s:13:\"ISO 8601 both\";s:25:\"xnY-xnm-xnd\"T\"xnH:xni:xns\";}s:14:\"namespaceNames\";a:17:{i:-2;s:5:\"Media\";i:-1;s:7:\"Special\";i:0;s:0:\"\";i:1;s:4:\"Talk\";i:2;s:4:\"User\";i:3;s:9:\"User_talk\";i:5;s:7:\"$1_talk\";i:6;s:4:\"File\";i:7;s:9:\"File_talk\";i:8;s:9:\"MediaWiki\";i:9;s:14:\"MediaWiki_talk\";i:10;s:8:\"Template\";i:11;s:13:\"Template_talk\";i:12;s:4:\"Help\";i:13;s:9:\"Help_talk\";i:14;s:8:\"Category\";i:15;s:13:\"Category_talk\";}}');
/*!40000 ALTER TABLE `wiki_l10n_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_langlinks`
--

DROP TABLE IF EXISTS `wiki_langlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_langlinks` (
  `ll_from` int(10) unsigned NOT NULL DEFAULT '0',
  `ll_lang` varbinary(20) NOT NULL DEFAULT '',
  `ll_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ll_from` (`ll_from`,`ll_lang`),
  KEY `ll_lang` (`ll_lang`,`ll_title`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_langlinks`
--

LOCK TABLES `wiki_langlinks` WRITE;
/*!40000 ALTER TABLE `wiki_langlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_langlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_log_search`
--

DROP TABLE IF EXISTS `wiki_log_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_log_search` (
  `ls_field` varbinary(32) NOT NULL,
  `ls_value` varbinary(255) NOT NULL,
  `ls_log_id` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ls_field_val` (`ls_field`,`ls_value`,`ls_log_id`),
  KEY `ls_log_id` (`ls_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_log_search`
--

LOCK TABLES `wiki_log_search` WRITE;
/*!40000 ALTER TABLE `wiki_log_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_log_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_logging`
--

DROP TABLE IF EXISTS `wiki_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_logging` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varbinary(32) NOT NULL DEFAULT '',
  `log_action` varbinary(32) NOT NULL DEFAULT '',
  `log_timestamp` binary(14) NOT NULL DEFAULT '19700101000000',
  `log_user` int(10) unsigned NOT NULL DEFAULT '0',
  `log_user_text` varbinary(255) NOT NULL DEFAULT '',
  `log_namespace` int(11) NOT NULL DEFAULT '0',
  `log_title` varbinary(255) NOT NULL DEFAULT '',
  `log_page` int(10) unsigned DEFAULT NULL,
  `log_comment` varbinary(255) NOT NULL DEFAULT '',
  `log_params` blob NOT NULL,
  `log_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `type_time` (`log_type`,`log_timestamp`),
  KEY `user_time` (`log_user`,`log_timestamp`),
  KEY `page_time` (`log_namespace`,`log_title`,`log_timestamp`),
  KEY `times` (`log_timestamp`),
  KEY `log_user_type_time` (`log_user`,`log_type`,`log_timestamp`),
  KEY `log_page_id_time` (`log_page`,`log_timestamp`),
  KEY `type_action` (`log_type`,`log_action`,`log_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_logging`
--

LOCK TABLES `wiki_logging` WRITE;
/*!40000 ALTER TABLE `wiki_logging` DISABLE KEYS */;
INSERT INTO `wiki_logging` VALUES (1,'newusers','create','20121014235305',2,'Wuyn10',2,'Wuyn10',0,'','2',0),(2,'newusers','create','20121015001227',3,'Wuxianyu',2,'Wuxianyu',0,'','3',0),(3,'newusers','create','20121015021230',4,'Vickiebear',2,'Vickiebear',0,'','4',0),(4,'newusers','create','20121015083027',5,'Huhcn',2,'Huhcn',0,'','5',0);
/*!40000 ALTER TABLE `wiki_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_module_deps`
--

DROP TABLE IF EXISTS `wiki_module_deps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_module_deps` (
  `md_module` varbinary(255) NOT NULL,
  `md_skin` varbinary(32) NOT NULL,
  `md_deps` mediumblob NOT NULL,
  UNIQUE KEY `md_module_skin` (`md_module`,`md_skin`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_module_deps`
--

LOCK TABLES `wiki_module_deps` WRITE;
/*!40000 ALTER TABLE `wiki_module_deps` DISABLE KEYS */;
INSERT INTO `wiki_module_deps` VALUES ('ext.vector.collapsibleNav','vector','[\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/extensions\\/Vector\\/modules\\/images\\/portal-break.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/extensions\\/Vector\\/modules\\/images\\/open.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/extensions\\/Vector\\/modules\\/images\\/closed-ltr.png\"]'),('jquery.ui.button','vector','[\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-off.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-over.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-down.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-disabled.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-off-green.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-over-green.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-down-green.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-disabled-green.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-off-blue.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-over-blue.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-down-blue.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-disabled-blue.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-off-red.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-over-red.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-down-red.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/button-disabled-red.png\"]'),('jquery.ui.core','vector','[\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_highlight-hard_100_f2f5f7_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_highlight-soft_100_ffffff_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_highlight-hard_80_d7ebf9_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_highlight-soft_100_e4f1fb_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_inset-hard_100_f0f0f0_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_highlight-soft_25_ffef8f_1x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_flat_15_cd0a0a_40x100.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_72a7cf_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_3d80b3_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_2694e8_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_666666_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_2e83ff_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-icons_ffffff_256x240.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/resources\\/jquery.ui\\/themes\\/vector\\/images\\/ui-bg_flat_70_000000_40x100.png\"]'),('mediawiki.legacy.shared','vector','[\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/Checker-16x16.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/feed-icon.png\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/ajax-loader.gif\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/spinner.gif\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/help-question.gif\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/help-question-hover.gif\",\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/common\\/images\\/tipsy-arrow.gif\"]'),('skins.vector','vector','{\"0\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/page-base.png\",\"1\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/border.png\",\"2\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/page-fade.png\",\"4\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/tab-break.png\",\"5\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/tab-normal-fade.png\",\"6\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/tab-current-fade.png\",\"8\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/arrow-down-icon.png\",\"9\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/arrow-down-focus-icon.png\",\"12\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/search-fade.png\",\"13\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/portal-break.png\",\"15\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/preferences-break.png\",\"17\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/preferences-fade.png\",\"18\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/preferences-base.png\",\"19\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/bullet-icon.png\",\"20\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/external-link-ltr-icon.png\",\"21\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/lock-icon.png\",\"22\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/mail-icon.png\",\"23\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/news-icon.png\",\"24\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/file-icon.png\",\"25\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/talk-icon.png\",\"26\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/audio-icon.png\",\"27\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/video-icon.png\",\"28\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/document-icon.png\",\"29\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/user-icon.png\",\"30\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/watch-icons.png\",\"31\":\"\\/opt\\/lampp\\/htdocs\\/mediawiki\\/skins\\/vector\\/images\\/watch-icon-loading.gif\"}');
/*!40000 ALTER TABLE `wiki_module_deps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_msg_resource`
--

DROP TABLE IF EXISTS `wiki_msg_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_msg_resource` (
  `mr_resource` varbinary(255) NOT NULL,
  `mr_lang` varbinary(32) NOT NULL,
  `mr_blob` mediumblob NOT NULL,
  `mr_timestamp` binary(14) NOT NULL,
  UNIQUE KEY `mr_resource_lang` (`mr_resource`,`mr_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_msg_resource`
--

LOCK TABLES `wiki_msg_resource` WRITE;
/*!40000 ALTER TABLE `wiki_msg_resource` DISABLE KEYS */;
INSERT INTO `wiki_msg_resource` VALUES ('ext.vector.collapsibleNav','en','{\"vector-collapsiblenav-more\":\"More languages\"}','20121014130419'),('ext.vector.collapsibleTabs','en','{}','20121014130419'),('ext.vector.simpleSearch','en','{\"vector-simplesearch-search\":\"Search\",\"vector-simplesearch-containing\":\"containing...\"}','20121014130419'),('ext.wikiEditor.toolbar.hideSig','en','{}','20121014234747'),('jquery.autoEllipsis','en','{}','20121014130419'),('jquery.byteLength','en','{}','20121014234747'),('jquery.byteLimit','en','{}','20121014234747'),('jquery.checkboxShiftClick','en','{}','20121014130419'),('jquery.client','en','{}','20121014130418'),('jquery.collapsibleTabs','en','{}','20121014130419'),('jquery.cookie','en','{}','20121014130418'),('jquery.delayedBind','en','{}','20121014130419'),('jquery.highlightText','en','{}','20121014130419'),('jquery.makeCollapsible','en','{\"collapsible-expand\":\"Expand\",\"collapsible-collapse\":\"Collapse\"}','20121014130419'),('jquery.messageBox','en','{}','20121014130418'),('jquery.mw-jump','en','{}','20121014130419'),('jquery.mwExtension','en','{}','20121014130418'),('jquery.placeholder','en','{}','20121014130419'),('jquery.suggestions','en','{}','20121014130419'),('jquery.tabIndex','en','{}','20121014130419'),('jquery.textSelection','en','{}','20121014234747'),('jquery.ui.button','en','{}','20121015021342'),('jquery.ui.core','en','{}','20121015021342'),('jquery.ui.widget','en','{}','20121015021342'),('mediawiki.action.edit','en','{}','20121014234747'),('mediawiki.action.history','en','{}','20121015021342'),('mediawiki.action.watch.ajax','en','{\"watch\":\"Watch\",\"unwatch\":\"Unwatch\",\"watching\":\"Watching...\",\"unwatching\":\"Unwatching...\",\"tooltip-ca-watch\":\"Add this page to your watchlist\",\"tooltip-ca-unwatch\":\"Remove this page from your watchlist\",\"watcherrortext\":\"An error occurred while changing your watchlist settings for \\\"$1\\\".\"}','20121014235306'),('mediawiki.api','en','{}','20121014235306'),('mediawiki.api.watch','en','{}','20121014235306'),('mediawiki.htmlform','en','{}','20121015001242'),('mediawiki.legacy.ajax','en','{}','20121014130418'),('mediawiki.legacy.mwsuggest','en','{\"search-mwsuggest-enabled\":\"with suggestions\",\"search-mwsuggest-disabled\":\"no suggestions\"}','20121014130419'),('mediawiki.legacy.wikibits','en','{}','20121014130418'),('mediawiki.page.ready','en','{}','20121014130419'),('mediawiki.page.startup','en','{}','20121014130418'),('mediawiki.special','en','{}','20121014235008'),('mediawiki.special.preferences','en','{}','20121015001242'),('mediawiki.special.recentchanges','en','{}','20121014235008'),('mediawiki.special.search','en','{}','20121014234936'),('mediawiki.user','en','{}','20121014130419'),('mediawiki.util','en','{\"showtoc\":\"show\",\"hidetoc\":\"hide\"}','20121014130418'),('user.options','en','{}','20121014130417'),('user.tokens','en','{}','20121014130417');
/*!40000 ALTER TABLE `wiki_msg_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_msg_resource_links`
--

DROP TABLE IF EXISTS `wiki_msg_resource_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_msg_resource_links` (
  `mrl_resource` varbinary(255) NOT NULL,
  `mrl_message` varbinary(255) NOT NULL,
  UNIQUE KEY `mrl_message_resource` (`mrl_message`,`mrl_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_msg_resource_links`
--

LOCK TABLES `wiki_msg_resource_links` WRITE;
/*!40000 ALTER TABLE `wiki_msg_resource_links` DISABLE KEYS */;
INSERT INTO `wiki_msg_resource_links` VALUES ('jquery.makeCollapsible','collapsible-collapse'),('jquery.makeCollapsible','collapsible-expand'),('mediawiki.util','hidetoc'),('mediawiki.legacy.mwsuggest','search-mwsuggest-disabled'),('mediawiki.legacy.mwsuggest','search-mwsuggest-enabled'),('mediawiki.util','showtoc'),('mediawiki.action.watch.ajax','tooltip-ca-unwatch'),('mediawiki.action.watch.ajax','tooltip-ca-watch'),('mediawiki.action.watch.ajax','unwatch'),('mediawiki.action.watch.ajax','unwatching'),('ext.vector.collapsibleNav','vector-collapsiblenav-more'),('ext.vector.simpleSearch','vector-simplesearch-containing'),('ext.vector.simpleSearch','vector-simplesearch-search'),('mediawiki.action.watch.ajax','watch'),('mediawiki.action.watch.ajax','watcherrortext'),('mediawiki.action.watch.ajax','watching');
/*!40000 ALTER TABLE `wiki_msg_resource_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_objectcache`
--

DROP TABLE IF EXISTS `wiki_objectcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_objectcache` (
  `keyname` varbinary(255) NOT NULL DEFAULT '',
  `value` mediumblob,
  `exptime` datetime DEFAULT NULL,
  PRIMARY KEY (`keyname`),
  KEY `exptime` (`exptime`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_objectcache`
--

LOCK TABLES `wiki_objectcache` WRITE;
/*!40000 ALTER TABLE `wiki_objectcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_objectcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_oldimage`
--

DROP TABLE IF EXISTS `wiki_oldimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_oldimage` (
  `oi_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_archive_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_size` int(10) unsigned NOT NULL DEFAULT '0',
  `oi_width` int(11) NOT NULL DEFAULT '0',
  `oi_height` int(11) NOT NULL DEFAULT '0',
  `oi_bits` int(11) NOT NULL DEFAULT '0',
  `oi_description` tinyblob NOT NULL,
  `oi_user` int(10) unsigned NOT NULL DEFAULT '0',
  `oi_user_text` varbinary(255) NOT NULL,
  `oi_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `oi_metadata` mediumblob NOT NULL,
  `oi_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `oi_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart') NOT NULL DEFAULT 'unknown',
  `oi_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `oi_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `oi_sha1` varbinary(32) NOT NULL DEFAULT '',
  KEY `oi_usertext_timestamp` (`oi_user_text`,`oi_timestamp`),
  KEY `oi_name_timestamp` (`oi_name`,`oi_timestamp`),
  KEY `oi_name_archive_name` (`oi_name`,`oi_archive_name`(14)),
  KEY `oi_sha1` (`oi_sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_oldimage`
--

LOCK TABLES `wiki_oldimage` WRITE;
/*!40000 ALTER TABLE `wiki_oldimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_oldimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page`
--

DROP TABLE IF EXISTS `wiki_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_namespace` int(11) NOT NULL,
  `page_title` varbinary(255) NOT NULL,
  `page_restrictions` tinyblob NOT NULL,
  `page_counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `page_is_redirect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_random` double unsigned NOT NULL,
  `page_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `page_latest` int(10) unsigned NOT NULL,
  `page_len` int(10) unsigned NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `name_title` (`page_namespace`,`page_title`),
  KEY `page_random` (`page_random`),
  KEY `page_len` (`page_len`),
  KEY `page_redirect_namespace_len` (`page_is_redirect`,`page_namespace`,`page_len`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page`
--

LOCK TABLES `wiki_page` WRITE;
/*!40000 ALTER TABLE `wiki_page` DISABLE KEYS */;
INSERT INTO `wiki_page` VALUES (1,0,'Main_Page','',18,0,1,0.849524797288,'20121014130159',1,423),(2,0,'SQL','',21,0,0,0.821802087053,'20121016015138',12,16056);
/*!40000 ALTER TABLE `wiki_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page_props`
--

DROP TABLE IF EXISTS `wiki_page_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_props` (
  `pp_page` int(11) NOT NULL,
  `pp_propname` varbinary(60) NOT NULL,
  `pp_value` blob NOT NULL,
  UNIQUE KEY `pp_page_propname` (`pp_page`,`pp_propname`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page_props`
--

LOCK TABLES `wiki_page_props` WRITE;
/*!40000 ALTER TABLE `wiki_page_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_page_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page_restrictions`
--

DROP TABLE IF EXISTS `wiki_page_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_restrictions` (
  `pr_page` int(11) NOT NULL,
  `pr_type` varbinary(60) NOT NULL,
  `pr_level` varbinary(60) NOT NULL,
  `pr_cascade` tinyint(4) NOT NULL,
  `pr_user` int(11) DEFAULT NULL,
  `pr_expiry` varbinary(14) DEFAULT NULL,
  `pr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pr_id`),
  UNIQUE KEY `pr_pagetype` (`pr_page`,`pr_type`),
  KEY `pr_typelevel` (`pr_type`,`pr_level`),
  KEY `pr_level` (`pr_level`),
  KEY `pr_cascade` (`pr_cascade`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page_restrictions`
--

LOCK TABLES `wiki_page_restrictions` WRITE;
/*!40000 ALTER TABLE `wiki_page_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_page_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pagelinks`
--

DROP TABLE IF EXISTS `wiki_pagelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pagelinks` (
  `pl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `pl_namespace` int(11) NOT NULL DEFAULT '0',
  `pl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `pl_from` (`pl_from`,`pl_namespace`,`pl_title`),
  UNIQUE KEY `pl_namespace` (`pl_namespace`,`pl_title`,`pl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pagelinks`
--

LOCK TABLES `wiki_pagelinks` WRITE;
/*!40000 ALTER TABLE `wiki_pagelinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pagelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_protected_titles`
--

DROP TABLE IF EXISTS `wiki_protected_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_protected_titles` (
  `pt_namespace` int(11) NOT NULL,
  `pt_title` varbinary(255) NOT NULL,
  `pt_user` int(10) unsigned NOT NULL,
  `pt_reason` tinyblob,
  `pt_timestamp` binary(14) NOT NULL,
  `pt_expiry` varbinary(14) NOT NULL DEFAULT '',
  `pt_create_perm` varbinary(60) NOT NULL,
  UNIQUE KEY `pt_namespace_title` (`pt_namespace`,`pt_title`),
  KEY `pt_timestamp` (`pt_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_protected_titles`
--

LOCK TABLES `wiki_protected_titles` WRITE;
/*!40000 ALTER TABLE `wiki_protected_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_protected_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_querycache`
--

DROP TABLE IF EXISTS `wiki_querycache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_querycache` (
  `qc_type` varbinary(32) NOT NULL,
  `qc_value` int(10) unsigned NOT NULL DEFAULT '0',
  `qc_namespace` int(11) NOT NULL DEFAULT '0',
  `qc_title` varbinary(255) NOT NULL DEFAULT '',
  KEY `qc_type` (`qc_type`,`qc_value`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_querycache`
--

LOCK TABLES `wiki_querycache` WRITE;
/*!40000 ALTER TABLE `wiki_querycache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_querycache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_querycache_info`
--

DROP TABLE IF EXISTS `wiki_querycache_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_querycache_info` (
  `qci_type` varbinary(32) NOT NULL DEFAULT '',
  `qci_timestamp` binary(14) NOT NULL DEFAULT '19700101000000',
  UNIQUE KEY `qci_type` (`qci_type`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_querycache_info`
--

LOCK TABLES `wiki_querycache_info` WRITE;
/*!40000 ALTER TABLE `wiki_querycache_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_querycache_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_querycachetwo`
--

DROP TABLE IF EXISTS `wiki_querycachetwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_querycachetwo` (
  `qcc_type` varbinary(32) NOT NULL,
  `qcc_value` int(10) unsigned NOT NULL DEFAULT '0',
  `qcc_namespace` int(11) NOT NULL DEFAULT '0',
  `qcc_title` varbinary(255) NOT NULL DEFAULT '',
  `qcc_namespacetwo` int(11) NOT NULL DEFAULT '0',
  `qcc_titletwo` varbinary(255) NOT NULL DEFAULT '',
  KEY `qcc_type` (`qcc_type`,`qcc_value`),
  KEY `qcc_title` (`qcc_type`,`qcc_namespace`,`qcc_title`),
  KEY `qcc_titletwo` (`qcc_type`,`qcc_namespacetwo`,`qcc_titletwo`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_querycachetwo`
--

LOCK TABLES `wiki_querycachetwo` WRITE;
/*!40000 ALTER TABLE `wiki_querycachetwo` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_querycachetwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_recentchanges`
--

DROP TABLE IF EXISTS `wiki_recentchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_recentchanges` (
  `rc_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `rc_cur_time` varbinary(14) NOT NULL DEFAULT '',
  `rc_user` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_user_text` varbinary(255) NOT NULL,
  `rc_namespace` int(11) NOT NULL DEFAULT '0',
  `rc_title` varbinary(255) NOT NULL DEFAULT '',
  `rc_comment` varbinary(255) NOT NULL DEFAULT '',
  `rc_minor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_cur_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_this_oldid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_last_oldid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_moved_to_ns` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_moved_to_title` varbinary(255) NOT NULL DEFAULT '',
  `rc_patrolled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_ip` varbinary(40) NOT NULL DEFAULT '',
  `rc_old_len` int(11) DEFAULT NULL,
  `rc_new_len` int(11) DEFAULT NULL,
  `rc_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_logid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_log_type` varbinary(255) DEFAULT NULL,
  `rc_log_action` varbinary(255) DEFAULT NULL,
  `rc_params` blob,
  PRIMARY KEY (`rc_id`),
  KEY `rc_timestamp` (`rc_timestamp`),
  KEY `rc_namespace_title` (`rc_namespace`,`rc_title`),
  KEY `rc_cur_id` (`rc_cur_id`),
  KEY `new_name_timestamp` (`rc_new`,`rc_namespace`,`rc_timestamp`),
  KEY `rc_ip` (`rc_ip`),
  KEY `rc_ns_usertext` (`rc_namespace`,`rc_user_text`),
  KEY `rc_user_text` (`rc_user_text`,`rc_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_recentchanges`
--

LOCK TABLES `wiki_recentchanges` WRITE;
/*!40000 ALTER TABLE `wiki_recentchanges` DISABLE KEYS */;
INSERT INTO `wiki_recentchanges` VALUES (1,'20121014130159','20121014130159',0,'MediaWiki default',0,'Main_Page','',0,0,1,1,1,0,1,0,'',0,'59.66.190.156',0,423,0,0,NULL,'',''),(2,'20121014235305','20121014235305',2,'Wuyn10',2,'Wuyn10','',0,0,0,0,0,0,3,0,'',1,'59.66.183.35',NULL,NULL,0,1,'newusers','create','2'),(3,'20121015001227','20121015001227',3,'Wuxianyu',2,'Wuxianyu','',0,0,0,0,0,0,3,0,'',1,'59.66.183.32',NULL,NULL,0,2,'newusers','create','3'),(4,'20121015001621','20121015001621',2,'Wuyn10',0,'SQL','Created page with \" == \'\'\'SQL\'\'\' ==  ===\'\'\'SQL history\'\'\'=== Space, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we ...\"',0,0,1,2,2,0,1,0,'',0,'59.66.183.35',0,2042,0,0,NULL,'',''),(5,'20121015001703','20121015001703',0,'59.66.183.35',0,'SQL','/* SQL history */ ',0,0,0,2,3,2,0,0,'',0,'59.66.183.35',2042,2043,0,0,NULL,'',''),(6,'20121015001721','20121015001721',0,'59.66.183.35',0,'SQL','/* SQL */ ',0,0,0,2,4,3,0,0,'',0,'59.66.183.35',2043,2028,0,0,NULL,'',''),(7,'20121015004354','20121015004354',3,'Wuxianyu',0,'SQL','',0,0,0,2,5,4,0,0,'',0,'59.66.183.32',2028,3380,0,0,NULL,'',''),(8,'20121015004507','20121015004507',3,'Wuxianyu',0,'SQL','',0,0,0,2,6,5,0,0,'',0,'59.66.183.32',3380,3380,0,0,NULL,'',''),(9,'20121015004635','20121015004635',3,'Wuxianyu',0,'SQL','',0,0,0,2,7,6,0,0,'',0,'59.66.183.32',3380,3386,0,0,NULL,'',''),(10,'20121015010256','20121015010256',0,'59.66.183.34',0,'SQL','',0,0,0,2,8,7,0,0,'',0,'59.66.183.34',3386,10669,0,0,NULL,'',''),(11,'20121015012145','20121015012145',0,'59.66.183.34',0,'SQL','',0,0,0,2,9,8,0,0,'',0,'59.66.183.34',10669,11349,0,0,NULL,'',''),(12,'20121015021230','20121015021230',4,'Vickiebear',2,'Vickiebear','',0,0,0,0,0,0,3,0,'',1,'166.111.59.177',NULL,NULL,0,3,'newusers','create','4'),(13,'20121015021321','20121015021321',4,'Vickiebear',0,'SQL','',0,0,0,2,10,9,0,0,'',0,'166.111.59.177',11349,11350,0,0,NULL,'',''),(14,'20121015083027','20121015083027',5,'Huhcn',2,'Huhcn','',0,0,0,0,0,0,3,0,'',1,'101.5.208.127',NULL,NULL,0,4,'newusers','create','5'),(15,'20121015093016','20121015093016',5,'Huhcn',0,'SQL','',0,0,0,2,11,10,0,0,'',0,'101.5.208.127',11350,15653,0,0,NULL,'',''),(16,'20121016015138','20121016015138',0,'101.5.118.119',0,'SQL','',0,0,0,2,12,11,0,0,'',0,'101.5.118.119',15653,16056,0,0,NULL,'','');
/*!40000 ALTER TABLE `wiki_recentchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirect`
--

DROP TABLE IF EXISTS `wiki_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirect` (
  `rd_from` int(10) unsigned NOT NULL DEFAULT '0',
  `rd_namespace` int(11) NOT NULL DEFAULT '0',
  `rd_title` varbinary(255) NOT NULL DEFAULT '',
  `rd_interwiki` varbinary(32) DEFAULT NULL,
  `rd_fragment` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`rd_from`),
  KEY `rd_ns_title` (`rd_namespace`,`rd_title`,`rd_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirect`
--

LOCK TABLES `wiki_redirect` WRITE;
/*!40000 ALTER TABLE `wiki_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_revision`
--

DROP TABLE IF EXISTS `wiki_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_revision` (
  `rev_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rev_page` int(10) unsigned NOT NULL,
  `rev_text_id` int(10) unsigned NOT NULL,
  `rev_comment` tinyblob NOT NULL,
  `rev_user` int(10) unsigned NOT NULL DEFAULT '0',
  `rev_user_text` varbinary(255) NOT NULL DEFAULT '',
  `rev_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `rev_minor_edit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rev_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rev_len` int(10) unsigned DEFAULT NULL,
  `rev_parent_id` int(10) unsigned DEFAULT NULL,
  `rev_sha1` varbinary(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`rev_id`),
  UNIQUE KEY `rev_page_id` (`rev_page`,`rev_id`),
  KEY `rev_timestamp` (`rev_timestamp`),
  KEY `page_timestamp` (`rev_page`,`rev_timestamp`),
  KEY `user_timestamp` (`rev_user`,`rev_timestamp`),
  KEY `usertext_timestamp` (`rev_user_text`,`rev_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=binary MAX_ROWS=10000000 AVG_ROW_LENGTH=1024;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_revision`
--

LOCK TABLES `wiki_revision` WRITE;
/*!40000 ALTER TABLE `wiki_revision` DISABLE KEYS */;
INSERT INTO `wiki_revision` VALUES (1,1,1,'',0,'MediaWiki default','20121014130159',0,0,423,0,'lg8kc9k8uzncpgh3k3vri78imvoxc6m'),(2,2,2,'Created page with \" == \'\'\'SQL\'\'\' ==  ===\'\'\'SQL history\'\'\'=== Space, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we ...\"',2,'Wuyn10','20121015001621',0,0,2042,0,'d69c04p87h5tqi4inhsxvvj084tnzp1'),(3,2,3,'/* SQL history */',0,'59.66.183.35','20121015001703',0,0,2043,2,'q2zxnw6v56kwil7l6l0fdp63esd8ahi'),(4,2,4,'/* SQL */',0,'59.66.183.35','20121015001721',0,0,2028,3,'brgc2aqwvqq31mxakuo5jtbc1hz0uwe'),(5,2,5,'',3,'Wuxianyu','20121015004354',0,0,3380,4,'8z91mtnhlfe5u289iqzenw5zrml3cs7'),(6,2,6,'',3,'Wuxianyu','20121015004507',0,0,3380,5,'02lttnaeelrc4ry64jye6axrl60cf4m'),(7,2,7,'',3,'Wuxianyu','20121015004635',0,0,3386,6,'hwy7zacz3pp9i58gd8hoh2z9kjhvbku'),(8,2,8,'',0,'59.66.183.34','20121015010256',0,0,10669,7,'7dt2apip84jzyszpvl0knpsx34zm13n'),(9,2,9,'',0,'59.66.183.34','20121015012145',0,0,11349,8,'3ydno513yw3xztlboyteyh8gly4iiz8'),(10,2,10,'',4,'Vickiebear','20121015021321',0,0,11350,9,'20c8pj8g3dzkbox4qdpbjae7vrrkhg6'),(11,2,11,'',5,'Huhcn','20121015093016',0,0,15653,10,'i3dp3o1kt5iglyqbc30holflz4gubdq'),(12,2,12,'',0,'101.5.118.119','20121016015138',0,0,16056,11,'e2wiket9m5bwfy1aufe8lbe9d4afa5r');
/*!40000 ALTER TABLE `wiki_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_searchindex`
--

DROP TABLE IF EXISTS `wiki_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_searchindex` (
  `si_page` int(10) unsigned NOT NULL,
  `si_title` varchar(255) NOT NULL DEFAULT '',
  `si_text` mediumtext NOT NULL,
  UNIQUE KEY `si_page` (`si_page`),
  FULLTEXT KEY `si_title` (`si_title`),
  FULLTEXT KEY `si_text` (`si_text`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_searchindex`
--

LOCK TABLES `wiki_searchindex` WRITE;
/*!40000 ALTER TABLE `wiki_searchindex` DISABLE KEYS */;
INSERT INTO `wiki_searchindex` VALUES (1,'main page','  mediawiki hasu800 been successfully installed.  consult theu800 metau82ewikimediau82eorgu800 wiki help contents user user\'su800 guide foru800 information onu800 using theu800 wiki software. getting started getting started getting started wwwu800u82emediawikiu82eorgu800 wiki manual configuration_settings configuration settings list wwwu800u82emediawikiu82eorgu800 wiki manual faqu800 mediawiki faqu800 mediawiki release mailing list '),(2,'sqlu800','  sqlu800 introduction  sqlu800 isu800 short ofu800 structured query language. itu800 isu800 au800 kind ofu800 programming language basic used foru800 data management inu800 relational database management system. sqlu800 isu800 originally based onu800 theu800 theory ofu800 relational model raised byu800 dru800. codd. there areu800 four types languages inu800 sqlu800 foru800 managing data they areu800 data definition language ddlu800 data management language dmlu800 data query language dqlu800 data control language dclu800 . eight main basic verbs areu800 used tou800 retrive data inu800 theu800 database which isu800 easy foru800 programmer tou800 useu800. then sqlu800 isu800 anu800 ansi language foru800 computer programming language. asu800 au800 programming language sqlu800 hasu800 many optimization ways tou800 reduce time andu800 space cost when managing data andu800 improve certainty ofu800 querying results. dueu800 tou800 differences ofu800 different databases sqlu800 hasu800 been developed many extension languages with different features. foru800 example tu800-sqlu800 transact-sqlu800 foru800 sqlu800 server plu800 sqlu800 procedural language sqlu800 foru800 oracle andu800 sou800 onu800. andu800 recent yaers with theu800 size ofu800 databases growing theu800 name \'nosql\' notu800 only sqlu800 hasu800 been au800 popular topic. there areu800 serval advantages ofu800 sqlu800. 1u800 integrated 2u800 highly nonprocessdual 3u800 setu800 oriented mode ofu800 operation inu800 4u800 with au800 grammatical structure provides au800 wide range ofu800 useu800 5u800 language isu800 simple easy tou800 learn andu800 useu800 6u800 foru800 statistical data more convenient  sqlu800 history  space time andu800 certainty areu800 theu800 most important factors while dealing with database. tou800 meet theu800 requirements ofu800 database users weu800 should find some appropriate ways tou800 take care ofu800 theu800 data inu800 theu800 database. inu800 theu800 1960s network database system andu800 hierarchical database system areu800 used foru800 automatic banking business accounting andu800 order processing system. however their basic system structure hadu800 physical operation andu800 logic operation mixed together. when theu800 physical position ofu800 data changes weu800 must update applications tou800 retrieve au800 newu800 position which makes theu800 data query inconvenient. inu800 june 1970 dru800 codd published au800 paper named u8e3808aa relational model ofu800 data foru800 large shared data banksu8e3808b setting theu800 concept ofu800 relational database. after that sqlu800 wasu800 initially developed atu800 ibmu800 byu800 chamberlin andu800 boyce inu800 theu800 early 1970s. itu800 wasu800 designed tou800 manipulate andu800 retrieve data stored inu800 ibmu800 ibmu800\'su800 original database management system system ru800. theu800 acronym sequel wasu800 later changed tou800 sqlu800 because sequel wasu800 au800 trademark ofu800 au800 british company. sou800 what makes sqlu800 sou800 special whyu800 didu800 people invent andu800 choose sqlu800 tou800 build upu800 au800 database there isu800 au800 really important reason here. sqlu800 isu800 au800 kind ofu800 declarable programming language. itu800 tells theu800 system what tou800 dou800 instead ofu800 howu800 tou800 dou800. users dou800 notu800 need tou800 worry about theu800 specific ways inu800 which your requirements areu800 metu800. onu800 theu800 other side there areu800 also many procedural programming languages such asu800 cu800 andu800 java inu800 which theu800 procedure ofu800 theu800 data being processed should beu800 paid attention tou800. asu800 weu800 already know sqlu800 isu800 theu800 foundation ofu800 database andu800 also important foru800 usu800 while doing ouru800 course project. there areu800 three stages while building au800 snsu800. first isu800 theu800 formulation stage where weu800 will talk about theu800 sqlu800 grammar. second when theu800 number ofu800 users grows theu800 optimization isu800 desired sou800 that theu800 efficiency ofu800 theu800 system will beu800 improved. third when theu800 number ofu800 users becomes huge nosql language appears tou800 beu800 popular.  grammar ofu800 sqlu800   introduction   introduction   introduction  theu800 structured query language sqlu800 isu800 theu800 standard language foru800 relational database. itu800 helps tou800 achieve theu800 functions ofu800 data definition data manipulation data query andu800 data control with theu800 following verbs. class wikitable width 100u800 - style background cornflowerblue; color white align center style width 20u800  category  style width 10u800  verbs  style width 20u800  funtions  - data definition language ddlu800 create drop create andu800 drop table view index - data query language dqlu800 select select from tables - data manipulation language dmlu800 insert delete update alter data - data control language dclu800 grant revoke give oru800 revoke theu800 rights tou800 manipulate au800 chosen table  concepts youu800 mayu800 want tou800 know   concepts youu800 mayu800 want tou800 know   concepts youu800 mayu800 want tou800 know   table  au800 table isu800 where youu800 store theu800 data. each line ofu800 theu800 table isu800 oneu800 record. each column isu800 called oneu800 attribute. theu800 structure ofu800 table should follow theu800 normalization form. ----  view   view   view  au800 view isu800 au800 visible space consists ofu800 columns selecting from tables. itu800 doesnu8e28099t save data itself butu800 will beu800 refreshed each time itu800 isu800 being searched. ----  index   index   index  anu800 index isu800 based onu800 anu800 attribute from au800 table. itu800 will beu800 preordered inu800 some proper order sou800 that theu800 query canu800 beu800 quickly done. ----  primary keyu800   primary keyu800   primary keyu800  au800 primary keyu800 isu800 some combination ofu800 attributes oneu800 oru800 more than oneu800 each line should beu800 distinguished uniquely using au800 primary keyu800. ----  foreign keyu800   foreign keyu800   foreign keyu800  au800 foreign keyu800 isu800 constraint between twou800 tables sou800 that theu800 manipulation actions will beu800 limited byu800 some rules inu800 theu800 sonu800 table. ----  basic syntax   basic syntax   basic syntax   ddlu800  ---- ddlu800 refers tou800 theu800 data definition language which helps tou800 create drop table view index.  create   create   create  ---- tou800 create au800 table  create table  datatype datatype u8e280a6 ;  example    create table  user user#  intu800 notu800 null  username  varchar 45u800 null  city  varchar 45u800 null  ageu800  intu800 notu800 null    primary keyu800  user# ; ---- tou800 create au800 view  create view   asu800   select  oru800 functioned attribute seeu800 example  from   where  ; ---- tou800 create anu800 index  create index   onu800  ; ----  drop   drop   drop  ---- tou800 drop table view index  drop table view index  ; ----  dmlu800   dmlu800   dmlu800  ---- dmlu800 isu800 used when manipulation isu800 needed tou800 tables.  insert   insert   insert  ---- tou800 addu800 records  insert into  ...  values  u8e280a6 u8e280a6 u8e280a6u8e280a6;  example    insert into  user user# username city ageu800  values  98u800 \'penny liuu800\' \'shanghai\' 19u800 3u800 \'david wuu800\' \'beijing\' 21u800 105u800 \'john green\' \'newu800 york\' 18u800 78u800 \'amyu800 liang\' \'xiu8e28099an\' 23u800 893u800 \'suki hsuu800\' \'hong kong\' 17u800 ;  hints  ifu800 foreign keyu800 appears inserting into au800 sonu800 table should beu800 payu800 attention tou800. ensure theu800 value ofu800 keyu800 attribute already exists inu800 theu800 parent table. ----  delete   delete   delete  ---- tou800 delete records  delete from   where  ;  hints  ifu800 foreign keyu800 appears deleting from au800 parent table will cause deletion inu800 sonu800 table toou800. ----  update   update   update  ---- tou800 change value ofu800 au800 domain  update   setu800   where  ;  hints   theu800 canu800 beu800 anu800 exact number asu800 well asu800 au800 complex expression. ----  dqlu800   dqlu800   dqlu800  ---- dqlu800 isu800 used foru800 making query from theu800 tables joint oru800 notu800. ---- basic form ofu800 au800 query statement isu800  select  u8e280a6  from   where   group byu800   having   order byu800  ----  query byu800 where   query byu800 where   query byu800 where  ----  simple query   simple query   simple query  tou800 dou800 au800 simplest query using  select  u8e280a6  from   where  ;  hint   1u800u82eifu800 allu800 attributes areu800 tou800 beu800 returned using u8e28098 u8e28099 instead ofu800 theu800 name ofu800 attributes. 2u800u82edistinct isu800 added before ifu800 want tou800 kick outu800 theu800 same value. ----  using andu800 oru800   using andu800 oru800   using andu800 oru800   andu800  connection means allu800 constraints should beu800 followed while  oru800  connection means atu800 least oneu800 constraint should beu800 followed among allu800 constraints.  andu800  will beu800 operated earlier than oru800 ifu800 nou800 brackets breaks theu800 order. ----  more prepositions   more prepositions   more prepositions  class wikitable width 100u800 - style background cornflowerblue; color white align center style width 20u800  prep.  style width 10u800  example  style width 20u800  meaning  -  notu800   notu800  city beijing city beijing -  between   andu800  ageu800  between  18u800  andu800  25u800 ageu800 18u800  andu800  ageu800 25u800 -  inu800  u8e280a6 city  inu800  \'beijing\' \'shanghai\' city \'beijing\'  oru800  city \'shanghai\' -  like  city  like  u8e28098bei u8e28099 value ofu800 city looks likeu8e28098bei u8e28099 ----  using like   using like   using like   like  isu800 used foru800 fuzzy query. twou800 symbols canu800 beu800 substitute foru800 unknown characters -u8e28098 u8e28099represents string atu800 anyu800 length including 0u800 -u8e28098_u8e28099represents exactly oneu800 character  hint   capital oru800 notu800 theu800 character will beu800 treated asu800 theu800 same form. ----  group byu800   group byu800   group byu800  sqlu800 canu800 group theu800 records which have theu800 same performance onu800 au800 specific attribute andu800 dou800 functions avgu800 count sumu800 maxu800 minu800 etcu800. tou800 theu800 grouped records. using having weu800 canu800 addu800 constraint tou800 theu800 grouped records.  example  show howu800 many collection each user hasu800.  select  user# count media#  from  collection  group byu800  user#  having count  media# 1u800; ----  join tables   join tables   join tables  tou800 connect tables byu800 natural joint theu800 following twou800 statement canu800 beu800 made  example   join table user collection andu800 media.  select  uu800u82eusername cu800u82emedianame c_tag1 c_tag2 c_tag3  from  media mu800 user uu800 collection cu800  where  mu800u82emedia# cu800u82emedia# andu800 uu800u82euser# cu800u82euser#;  example   another wayu800 tou800 join table user collection andu800 media.  select  uu800u82eusername cu800u82emedianame c_tag1 c_tag2 c_tag3  from  media mu800 user uu800 collection cu800  join  uu800  andu800  cu800  onu800  user#  join  mu800  andu800  cu800  onu800  media#; ----  subquery select   subquery select   subquery select  au800 subquery isu800 just doing query inu800 theu800 brackets andu800 preu800-select some data needed. itu800 isu800 quite useful when want tou800 addu800 constraints where contain functions like avgu800 count etcu800.  example  select media whose score isu800 less than theu800 average.  select  medianame media# avgscore  from  media  where  avgscore  select   avgu800  avgscore  from  media ----  anyu800  will help tou800 select anyu800 record that meets theu800 requirements ofu800 theu800 subquery.  example   select anyu800 user whou800 hasu800 atu800 least oneu800 same collection asu800 78u800.  select  user#  from  collection  where  collectionu82emedia  anyu800   select  media#  from  collection  where  user# 78u800  andu800  user# 78u800; ----  dclu800   dclu800   dclu800  ---- data control language isu800 used tou800 control theu800 rights ofu800 users tou800 manipulate oru800 search theu800 table with grant giving rights andu800 revoke drawing back rights.  example  give right ofu800 selecting from media tou800 admin1.  grant select   onu800  media  tou800  admin1;  example  draw back select update insert delete rights ofu800 admin1.  revoke allu800   onu800  media  tou800  admin1; ----  sqlu800 optimization  ----  time   space  andu800  certainty  areu800 there important factors tou800 ouru800 sqlu800 optimization. theu800 cost ofu800 time isu800 au800 major factor which isu800 visible andu800 always determines theu800 system system\'su800 performance. theu800 cost ofu800 disk space andu800 theu800 size ofu800 tables have also important influence inu800 database operation andu800 theu800 certainty sometimes maybe ouru800 first object tou800 optimize sqlu800 statements.  alternatives tou800 sqlu800  ---- ifu800 theu800 data become huge then itu800 cannot beu800 retrieved efficiently through au800 relational algebra. thus nosql notu800 only sqlu800 database systems rose alongside major internet companies such asu800 google amazon andu800 facebook which hadu800 significantly different challenges inu800 dealing with huge quantities ofu800 data that theu800 traditional rdbms relational database management system solutions could notu800 cope with. nosql notu800 only sqlu800 isu800 au800 broad class ofu800 database management system systems identified byu800 nonu800-adherence tou800 theu800 widely used relational database management system rdbms . nosql databases areu800 notu800 primarily built onu800 tables andu800 generally dou800 notu800 useu800 sqlu800 foru800 data manipulation. those databases areu800 distributed weu800 call them distributed database management system ddbms . ----  distributed database management system ddbms    distributed database management system ddbms    distributed database management system ddbms   distributed database management system isu800 au800 software foru800 managing databses stored onu800 multiple computers inu800 au800 network. au800 distributed database isu800 au800 setu800 ofu800 databases stored onu800 multiple computers that typically appears tou800 applications onu800 au800 single database. consequently anu800 application canu800 simultaneously access andu800 modify theu800 data inu800 several databases inu800 au800 network. itu800 differs tou800 rdbms inu800 theu800 wayu800 entities getu800 distributed andu800 that nou800 consistency isu800 enforced across those entities. this isu800 what allows them tou800 automatically distribute data across au800 large number ofu800 database nodes andu800 also write them independently. ----  criticism   criticism   criticism  because nosql isu800 still au800 movent itu800 hasu800 been faced some challenges 1u800. maturity rdbms systems have been around foru800 au800 long time. nosql advocates will argue that their advancing ageu800 isu800 au800 sign ofu800 their obsolescence butu800 foru800 most cios theu800 maturity ofu800 theu800 rdbms isu800 reassuring. foru800 theu800 most part rdbms systems areu800 stable andu800 richly functional. inu800 comparison most nosql alternatives areu800 inu800 preu800-production versions with many keyu800 features yetu800 tou800 beu800 implemented. living onu800 theu800 technological leading edge isu800 anu800 exciting prospect foru800 many developers butu800 enterprises should approach itu800 with extreme caution. 2u800. support enterprises want theu800 reassurance that ifu800 au800 keyu800 system fails they will beu800 able tou800 getu800 timely andu800 competent support. allu800 rdbms vendors gou800 tou800 great lengths tou800 provide au800 high level ofu800 enterprise support. inu800 contrast most nosql systems areu800 open source projects andu800 although there areu800 usually oneu800 oru800 more firms offering support foru800 each nosql database these companies often areu800 small start-upsu800 without theu800 global reach support resources oru800 credibility ofu800 anu800 oracle microsoft oru800 ibmu800. 3u800. analytics andu800 business intelligence nosql databases have evolved tou800 meet theu800 scaling demands ofu800 modern webu800 2u800u82e0u800 applications. consequently most ofu800 their feature setu800 isu800 oriented toward theu800 demands ofu800 these applications. however data inu800 anu800 application hasu800 value tou800 theu800 business that goes beyond theu800 insert-read-update-delete cycle ofu800 au800 typical webu800 application. businesses mine information inu800 corporate databases tou800 improve their efficiency andu800 competitiveness andu800 business intelligence biu800 isu800 au800 keyu800 itu800 issue foru800 allu800 medium tou800 large companies. nosql databases offer fewu800 facilities foru800 adu800-hocu800 query andu800 analysis. even au800 simple query requires significant programming expertise andu800 commonly used biu800 tools dou800 notu800 provide connectivity tou800 nosql. some relief isu800 provided byu800 theu800 emergence ofu800 solutions such asu800 hive oru800 pigu800 which canu800 provide easier access tou800 data held inu800 hadoop clusters andu800 perhaps eventually other nosql databases. quest software hasu800 developed au800 product u8e28094 toad foru800 cloud databases u8e28094 that canu800 provide adu800-hocu800 query capabilities tou800 au800 variety ofu800 nosql databases. 4u800. administration theu800 design goals foru800 nosql mayu800 beu800 tou800 provide au800 zero-admin solution butu800 theu800 current reality falls well short ofu800 that goal. nosql today requires au800 lotu800 ofu800 skill tou800 install andu800 au800 lotu800 ofu800 effort tou800 maintain. 5u800. expertise there areu800 literally millions ofu800 developers throughout theu800 world andu800 inu800 every business segment whou800 areu800 familiar with rdbms concepts andu800 programming. inu800 contrast almost every nosql developer isu800 inu800 au800 learning mode. this situation will address naturally over time butu800 foru800 nowu800 itu8e28099s faru800 easier tou800 find experienced rdbms programmers oru800 administrators than au800 nosql expert. ---- ');
/*!40000 ALTER TABLE `wiki_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_site_stats`
--

DROP TABLE IF EXISTS `wiki_site_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_site_stats` (
  `ss_row_id` int(10) unsigned NOT NULL,
  `ss_total_views` bigint(20) unsigned DEFAULT '0',
  `ss_total_edits` bigint(20) unsigned DEFAULT '0',
  `ss_good_articles` bigint(20) unsigned DEFAULT '0',
  `ss_total_pages` bigint(20) DEFAULT '-1',
  `ss_users` bigint(20) DEFAULT '-1',
  `ss_active_users` bigint(20) DEFAULT '-1',
  `ss_admins` int(11) DEFAULT '-1',
  `ss_images` int(11) DEFAULT '0',
  UNIQUE KEY `ss_row_id` (`ss_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_site_stats`
--

LOCK TABLES `wiki_site_stats` WRITE;
/*!40000 ALTER TABLE `wiki_site_stats` DISABLE KEYS */;
INSERT INTO `wiki_site_stats` VALUES (1,39,13,0,2,5,-1,-1,0);
/*!40000 ALTER TABLE `wiki_site_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_tag_summary`
--

DROP TABLE IF EXISTS `wiki_tag_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_tag_summary` (
  `ts_rc_id` int(11) DEFAULT NULL,
  `ts_log_id` int(11) DEFAULT NULL,
  `ts_rev_id` int(11) DEFAULT NULL,
  `ts_tags` blob NOT NULL,
  UNIQUE KEY `tag_summary_rc_id` (`ts_rc_id`),
  UNIQUE KEY `tag_summary_log_id` (`ts_log_id`),
  UNIQUE KEY `tag_summary_rev_id` (`ts_rev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_tag_summary`
--

LOCK TABLES `wiki_tag_summary` WRITE;
/*!40000 ALTER TABLE `wiki_tag_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_tag_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_templatelinks`
--

DROP TABLE IF EXISTS `wiki_templatelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_templatelinks` (
  `tl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `tl_namespace` int(11) NOT NULL DEFAULT '0',
  `tl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `tl_from` (`tl_from`,`tl_namespace`,`tl_title`),
  UNIQUE KEY `tl_namespace` (`tl_namespace`,`tl_title`,`tl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_templatelinks`
--

LOCK TABLES `wiki_templatelinks` WRITE;
/*!40000 ALTER TABLE `wiki_templatelinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_templatelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_text`
--

DROP TABLE IF EXISTS `wiki_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_text` (
  `old_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_text` mediumblob NOT NULL,
  `old_flags` tinyblob NOT NULL,
  PRIMARY KEY (`old_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=binary MAX_ROWS=10000000 AVG_ROW_LENGTH=10240;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_text`
--

LOCK TABLES `wiki_text` WRITE;
/*!40000 ALTER TABLE `wiki_text` DISABLE KEYS */;
INSERT INTO `wiki_text` VALUES (1,'\'\'\'MediaWiki has been successfully installed.\'\'\'\n\nConsult the [//meta.wikimedia.org/wiki/Help:Contents User\'s Guide] for information on using the wiki software.\n\n== Getting started ==\n* [//www.mediawiki.org/wiki/Manual:Configuration_settings Configuration settings list]\n* [//www.mediawiki.org/wiki/Manual:FAQ MediaWiki FAQ]\n* [https://lists.wikimedia.org/mailman/listinfo/mediawiki-announce MediaWiki release mailing list]','utf-8'),(2,'\n== \'\'\'SQL\'\'\' ==\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(3,'\n== \'\'\'SQL\'\'\' ==\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(4,'\n\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(5,'\n\n\n===\'\'\'SQL summary\'\'\'===\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n1 integrated\n\n2 highly non processdual\n\n3 set oriented mode of operation in\n\n4 with a grammatical structure provides a wide range of use\n\n5 language is simple, easy to learn and use\n\n6 for statistical data more convenient\n\n\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(6,'\n\n\n===\'\'\'SQL summary\'\'\'===\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n1] integrated\n2] highly nonprocessdual\n3] set oriented mode of operation in\n4] with a grammatical structure provides a wide range of use\n5] language is simple, easy to learn and use\n6] for statistical data more convenient\n\n\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(7,'\n\n\n===\'\'\'SQL summary\'\'\'===\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n===\'\'\'SQL history\'\'\'===\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.','utf-8'),(8,'\n\n\n=\'\'\'SQL Introduction\'\'\'=\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n=\'\'\'SQL history\'\'\'=\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.\n=\'\'\'Grammar of SQL\'\'\'=\n==\'\'\'Introduction\'\'\'==\nThe structured query language(SQL) is the standard language for relational database. It helps to achieve the functions of data definition, data manipulation, data query and data control with the following verbs.\nCategory	Verbs	Functions\nData Definition Language(DDL)	Create, Drop	Create and drop table, view, index\nData Query Language(DQL)	Select	Select from tables\nData Manipulation Language(DML)	Insert, Delete, Update	Alter data\nData Control Language	Grant, Revoke	Give or revoke the rights to manipulate a chosen table\n==\'\'\'Concepts you may want to know\'\'\'==\n===\'\'\'Table\'\'\'===\nA table is where you store the data. Each line of the table is one record. Each column is called one attribute. The structure of table should follow the normalization form. \n----\n\n===\'\'\'View\'\'\'===\nA view is a visible space consists of columns selecting from tables. It doesn’t save data itself but will be refreshed each time it is being searched.\n----\n\n===\'\'\'Index\'\'\'===\nAn index is based on an attribute from a table. It will be preordered in some proper order so that the query can be quickly done. \n----\n\n===\'\'\'Primary Key\'\'\'===\nA primary key is some combination of attributes (one or more than one), each line should be distinguished uniquely using a primary key.\n----\n \n===\'\'\'Foreign Key\'\'\'===\nA foreign key is constraint between two tables, so that the manipulation actions will be limited by some rules in the son table.\n----\n\n==\'\'\'Basic Syntax\'\'\'==\n===\'\'\'DDL\'\'\'===\n----\n\nDDL Refers to the data definition language which helps to create/drop table/view/index.\n====\'\'\'CREATE\'\'\'====\n----\n\nTo create a table:\n    \'\'\'CREATE TABLE\'\'\' <NAME>\n    ( <Attribute1> Datatype, \n    <Attribute2> Datatype,…);\n\'\'Example:\'\'\n\n    \'\'\'CREATE  TABLE\'\'\' `user` (\n    `user#` \'\'\'INT NOT NULL\'\'\' ,\n    `username` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `city` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `age` \'\'\'INT NOT NULL ,\'\'\'\n     \'\'\'PRIMARY KEY\'\'\' (`user#`) );\n----\n\nTo create a view:\n    \'\'\'CREATE VIEW\'\'\' <NAME> \'\'\'AS\'\'\'\n    \'\'\'SELECT\'\'\' <Attribute1> <Attribute 2>(or functioned attribute, see example)\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <conditions>;\n----\n\nTo create an index:\n     \'\'\'CREATE INDEX\'\'\' <NAME>\n     \'\'\'ON\'\'\' <TABLENAME><Attribute>;\n----\n\n====\'\'\'DROP\'\'\'====\n----\n\nTo drop table/view/index:\n    \'\'\'DROP TABLE/VIEW/INDEX\'\'\' <NAME>;\n----\n\n===\'\'\'DML\'\'\'===\n----\n\nDML is used when manipulation is needed to tables.\n====\'\'\'INSERT\'\'\'====\n----\n\nTo add records:\n    \'\'\'INSERT INTO\'\'\' <NAME>(<Attribute1>,<Attribute2>,...)\n    \'\'\'VALUES\'\'\'\n    (<Value of A1>, <Value of A2>,…),\n    (<Value of A1>, <Value of A2>,…), \n    ……;\n\'\'Example:\'\'\n    \'\'\'INSERT INTO\'\'\' user(`USER#`,USERNAME,CITY,AGE)\n    \'\'\'VALUES\'\'\'\n    (98,    \'Penny Liu\',      \'Shanghai\',   19),\n    (3,       \'David Wu\',      \'Beijing\',       21),\n    (105,   \'John Green\', \'New York\',    18),\n    (78,     \'Amy Liang\',     \'Xi’an\',           23),\n    (893,   \'Suki Hsu\',     \'Hong Kong\',   17);\n       \n\'\'Hints: \'\'If foreign key appears, inserting into a son table should be pay attention to. Ensure the value of key attribute already exists in the parent table.\n----\n\n====\'\'\'DELETE\'\'\'====\n----\n\nTo delete records:\n    \'\'\'DELETE FROM\'\'\'<NAME>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints: \'\'If foreign key appears, deleting from a parent table will cause deletion in son table, too.\n----\n\n====\'\'\'UPDATE\'\'\'====\n----\n\nTo change value of a domain:\n    \'\'\'UPDATE\'\'\'<NAME>\n    \'\'\'SET\'\'\'<Attribute1>=<Value>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints:\'\' The <Value> can be an exact number as well as a complex expression.\n----\n\n===\'\'\'DQL\'\'\'===\n----\n\nDQL is used for making query from the tables, joint or not.\n----\n\nBasic form of a query statement is:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraints>\n    \'\'\'GROUP BY\'\'\' <Attribute x>\n    \'\'\'HAVING\'\'\' <Constraints>\n    \'\'\'ORDER BY\'\'\' <Attribute>\n----\n\n====\'\'\'Query by Where\'\'\'====\n----\n\n=====\'\'\'Simple Query\'\'\'=====\nTo do a simplest query, using:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraint>;\n\'\'Hint:\'\' \n\n1.If all attributes are to be returned, using ‘*’ instead of the name of attributes.\n\n2.DISTINCT is added before <Attribute> if want to kick out the same value.\n----\n\n=====\'\'\'Using AND/OR\'\'\'=====\n\'\'\'AND\'\'\' connection means all constraints should be followed while \'\'\'OR\'\'\' connection means at least one constraint should be followed among all constraints.\n\n\'\'\'AND\'\'\' will be operated earlier than OR if no brackets breaks the order.\n----\n\n=====\'\'\'More Prepositions\'\'\'=====\nPrep.	Description\nNOT(<Attribute>=<Value>)	< >Value\nBETWEEN  <Value1> and <Value2>	Value1 <=     and     >=Value2\nIN(<Value1>, <Value2>,…)	=Value1 or =Value2\n----\n\n=====\'\'\'Using LIKE\'\'\'=====\n\'\'\'LIKE\'\'\' is used for fuzzy query. \n\nTwo symbols can be substitute for unknown characters:\n\n-‘%’represents string at any length (including 0)\n\n-‘_’represents exactly one character\n\n\'\'Hint:\'\' Capital or not, the character will be treated as the same form.\n----\n\n====\'\'\'GROUP BY\'\'\'====\nSQL can group the records which have the same performance on a specific attribute and do functions (AVG,COUNT,SUM,MAX,MIN etc.) to the grouped records. Using having, we can add constraint to the grouped records.\n\'\'Example: \'\'Show how many collection each user has.\n    \'\'\'SELECT\'\'\' USER#,COUNT (MEDIA#) \n    \'\'\'FROM\'\'\' collection\n    \'\'\'GROUP BY\'\'\' USER#\n    \'\'\'HAVING COUNT\'\'\' (MEDIA#)=1;\n----\n\n====\'\'\'Join Tables\'\'\'====\nTo connect tables by natural joint, the following two statement can be made:\n\'\'Example:\'\' Join table user, collection and media.                                 \n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'WHERE\'\'\' m.MEDIA#=c.MEDIA# AND u.USER#=c.USER#;\n\n\'\'Example:\'\' Another way to Join table user, collection and media.\n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'JOIN\'\'\' u \'\'\'AND\'\'\' c \'\'\'ON\'\'\' USER#\n    \'\'\'JOIN\'\'\' m \'\'\'AND\'\'\' c \'\'\'ON\'\'\' MEDIA#;\n----\n\n====\'\'\'Subquery select\'\'\'====\nA subquery is just doing query in the brackets and pre-select some data needed. It is quite useful when want to add constraints where contain functions like AVG, COUNT etc.\n\'\'Example: \'\'Select media whose score is less than the average.\n    \'\'\'SELECT\'\'\' MEDIANAME,MEDIA#,AVGSCORE\n    \'\'\'FROM\'\'\' media\n    \'\'\'WHERE\'\'\' AVGSCORE< \n    (\'\'\'SELECT\'\'\' \'\'\'AVG\'\'\'(AVGSCORE) \'\'\'FROM\'\'\' media)\n----\n\n\'\'\'ANY\'\'\' will help to select any record that meets the requirements of the subquery.\n\n\'\'Example:\'\' Select any user who has at least one same collection as 78.\n    \'\'\'SELECT\'\'\' USER#\n    \'\'\'FROM\'\'\' collection\n    \'\'\'WHERE\'\'\' \n    collection.media=\'\'\'ANY\'\'\' \n    (\'\'\'SELECT\'\'\' MEDIA# \'\'\'FROM\'\'\' collection \'\'\'WHERE\'\'\' USER#=78)\n    \'\'\'AND\'\'\' USER#<>78;\n----\n\n===\'\'\'DCL\'\'\'===\n----\n\nData Control Language is used to control the rights of users to manipulate or search the table, with GRANT giving rights and REVOKE drawing back rights.\n\'\'Example:\'\'Give right of selecting from `media` to ADMIN1.\n   \'\'\'GRANT SELECT\'\'\' \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n\'\'Example: \'\'Draw back SELECT,UPDATE,INSERT,DELETE rights of ADMIN1.\n   \'\'\'REVOKE ALL\'\'\'   \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n----','utf-8'),(9,'\n\n\n=\'\'\'SQL Introduction\'\'\'=\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n=\'\'\'SQL history\'\'\'=\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.\n=\'\'\'Grammar of SQL\'\'\'=\n==\'\'\'Introduction\'\'\'==\nThe structured query language(SQL) is the standard language for relational database. It helps to achieve the functions of data definition, data manipulation, data query and data control with the following verbs.\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Category\'\'\'||style=\"width:10%\"|\'\'\'Verbs\'\'\'||style=\"width:20%\"|\'\'\'Funtions\'\'\'\n|-\n|Data Definition Language(DDL)|| Create, Drop || Create and drop table, view, index \n|-\n|Data Query Language(DQL)|| Select ||Select from tables\n|-\n|Data Manipulation Language(DML)||Insert, Delete, Update|| Alter data\n|-\n|Data Control Language(DCL)|| Grant, Revoke ||Give or revoke the rights to manipulate a chosen table\n|}\n\n==\'\'\'Concepts you may want to know\'\'\'==\n===\'\'\'Table\'\'\'===\nA table is where you store the data. Each line of the table is one record. Each column is called one attribute. The structure of table should follow the normalization form. \n----\n\n===\'\'\'View\'\'\'===\nA view is a visible space consists of columns selecting from tables. It doesn’t save data itself but will be refreshed each time it is being searched.\n----\n\n===\'\'\'Index\'\'\'===\nAn index is based on an attribute from a table. It will be preordered in some proper order so that the query can be quickly done. \n----\n\n===\'\'\'Primary Key\'\'\'===\nA primary key is some combination of attributes (one or more than one), each line should be distinguished uniquely using a primary key.\n----\n \n===\'\'\'Foreign Key\'\'\'===\nA foreign key is constraint between two tables, so that the manipulation actions will be limited by some rules in the son table.\n----\n\n==\'\'\'Basic Syntax\'\'\'==\n===\'\'\'DDL\'\'\'===\n----\n\nDDL Refers to the data definition language which helps to create/drop table/view/index.\n====\'\'\'CREATE\'\'\'====\n----\n\nTo create a table:\n    \'\'\'CREATE TABLE\'\'\' <NAME>\n    ( <Attribute1> Datatype, \n    <Attribute2> Datatype,…);\n\'\'Example:\'\'\n\n    \'\'\'CREATE  TABLE\'\'\' `user` (\n    `user#` \'\'\'INT NOT NULL\'\'\' ,\n    `username` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `city` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `age` \'\'\'INT NOT NULL ,\'\'\'\n     \'\'\'PRIMARY KEY\'\'\' (`user#`) );\n----\n\nTo create a view:\n    \'\'\'CREATE VIEW\'\'\' <NAME> \'\'\'AS\'\'\'\n    \'\'\'SELECT\'\'\' <Attribute1> <Attribute 2>(or functioned attribute, see example)\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <conditions>;\n----\n\nTo create an index:\n     \'\'\'CREATE INDEX\'\'\' <NAME>\n     \'\'\'ON\'\'\' <TABLENAME><Attribute>;\n----\n\n====\'\'\'DROP\'\'\'====\n----\n\nTo drop table/view/index:\n    \'\'\'DROP TABLE/VIEW/INDEX\'\'\' <NAME>;\n----\n\n===\'\'\'DML\'\'\'===\n----\n\nDML is used when manipulation is needed to tables.\n====\'\'\'INSERT\'\'\'====\n----\n\nTo add records:\n    \'\'\'INSERT INTO\'\'\' <NAME>(<Attribute1>,<Attribute2>,...)\n    \'\'\'VALUES\'\'\'\n    (<Value of A1>, <Value of A2>,…),\n    (<Value of A1>, <Value of A2>,…), \n    ……;\n\'\'Example:\'\'\n    \'\'\'INSERT INTO\'\'\' user(`USER#`,USERNAME,CITY,AGE)\n    \'\'\'VALUES\'\'\'\n    (98,    \'Penny Liu\',      \'Shanghai\',   19),\n    (3,       \'David Wu\',      \'Beijing\',       21),\n    (105,   \'John Green\', \'New York\',    18),\n    (78,     \'Amy Liang\',     \'Xi’an\',           23),\n    (893,   \'Suki Hsu\',     \'Hong Kong\',   17);\n       \n\'\'Hints: \'\'If foreign key appears, inserting into a son table should be pay attention to. Ensure the value of key attribute already exists in the parent table.\n----\n\n====\'\'\'DELETE\'\'\'====\n----\n\nTo delete records:\n    \'\'\'DELETE FROM\'\'\'<NAME>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints: \'\'If foreign key appears, deleting from a parent table will cause deletion in son table, too.\n----\n\n====\'\'\'UPDATE\'\'\'====\n----\n\nTo change value of a domain:\n    \'\'\'UPDATE\'\'\'<NAME>\n    \'\'\'SET\'\'\'<Attribute1>=<Value>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints:\'\' The <Value> can be an exact number as well as a complex expression.\n----\n\n===\'\'\'DQL\'\'\'===\n----\n\nDQL is used for making query from the tables, joint or not.\n----\n\nBasic form of a query statement is:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraints>\n    \'\'\'GROUP BY\'\'\' <Attribute x>\n    \'\'\'HAVING\'\'\' <Constraints>\n    \'\'\'ORDER BY\'\'\' <Attribute>\n----\n\n====\'\'\'Query by Where\'\'\'====\n----\n\n=====\'\'\'Simple Query\'\'\'=====\nTo do a simplest query, using:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraint>;\n\'\'Hint:\'\' \n\n1.If all attributes are to be returned, using ‘*’ instead of the name of attributes.\n\n2.DISTINCT is added before <Attribute> if want to kick out the same value.\n----\n\n=====\'\'\'Using AND/OR\'\'\'=====\n\'\'\'AND\'\'\' connection means all constraints should be followed while \'\'\'OR\'\'\' connection means at least one constraint should be followed among all constraints.\n\n\'\'\'AND\'\'\' will be operated earlier than OR if no brackets breaks the order.\n----\n\n=====\'\'\'More Prepositions\'\'\'=====\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Prep.\'\'\'||style=\"width:10%\"|\'\'\'Example\'\'\'||style=\"width:20%\"|\'\'\'Meaning\'\'\'\n|-\n|\'\'\'NOT\'\'\'(<Attribute>=<Value>)||\'\'\'NOT\'\'\'(CITY=Beijing)||CITY< >Beijing\n|-\n|<Attribute> \'\'\'BETWEEN\'\'\' <Value1> \'\'\'AND\'\'\' <Value2>||AGE \'\'\'BETWEEN\'\'\' 18 \'\'\'AND\'\'\' 25||AGE >=18 \'\'\'AND\'\'\' AGE <= 25\n|-\n|<Attribute> \'\'\'IN\'\'\'(<Value1>, <Value2>,…)||CITY \'\'\'IN\'\'\'(\'Beijing\', \'Shanghai\')||CITY=\'Beijing\' \'\'\'OR\'\'\' CITY=\'Shanghai\'\n|-\n|<Attribute> \'\'\'LIKE\'\'\' <Description>||CITY \'\'\'LIKE\'\'\' ‘Bei%’||Value of CITY looks like‘Bei%’\n|}\n----\n\n=====\'\'\'Using LIKE\'\'\'=====\n\'\'\'LIKE\'\'\' is used for fuzzy query. \n\nTwo symbols can be substitute for unknown characters:\n\n-‘%’represents string at any length (including 0)\n\n-‘_’represents exactly one character\n\n\'\'Hint:\'\' Capital or not, the character will be treated as the same form.\n----\n\n====\'\'\'GROUP BY\'\'\'====\nSQL can group the records which have the same performance on a specific attribute and do functions (AVG,COUNT,SUM,MAX,MIN etc.) to the grouped records. Using having, we can add constraint to the grouped records.\n\'\'Example: \'\'Show how many collection each user has.\n    \'\'\'SELECT\'\'\' USER#,COUNT (MEDIA#) \n    \'\'\'FROM\'\'\' collection\n    \'\'\'GROUP BY\'\'\' USER#\n    \'\'\'HAVING COUNT\'\'\' (MEDIA#)=1;\n----\n\n====\'\'\'Join Tables\'\'\'====\nTo connect tables by natural joint, the following two statement can be made:\n\'\'Example:\'\' Join table user, collection and media.                                 \n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'WHERE\'\'\' m.MEDIA#=c.MEDIA# AND u.USER#=c.USER#;\n\n\'\'Example:\'\' Another way to Join table user, collection and media.\n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'JOIN\'\'\' u \'\'\'AND\'\'\' c \'\'\'ON\'\'\' USER#\n    \'\'\'JOIN\'\'\' m \'\'\'AND\'\'\' c \'\'\'ON\'\'\' MEDIA#;\n----\n\n====\'\'\'Subquery select\'\'\'====\nA subquery is just doing query in the brackets and pre-select some data needed. It is quite useful when want to add constraints where contain functions like AVG, COUNT etc.\n\'\'Example: \'\'Select media whose score is less than the average.\n    \'\'\'SELECT\'\'\' MEDIANAME,MEDIA#,AVGSCORE\n    \'\'\'FROM\'\'\' media\n    \'\'\'WHERE\'\'\' AVGSCORE< \n    (\'\'\'SELECT\'\'\' \'\'\'AVG\'\'\'(AVGSCORE) \'\'\'FROM\'\'\' media)\n----\n\n\'\'\'ANY\'\'\' will help to select any record that meets the requirements of the subquery.\n\n\'\'Example:\'\' Select any user who has at least one same collection as 78.\n    \'\'\'SELECT\'\'\' USER#\n    \'\'\'FROM\'\'\' collection\n    \'\'\'WHERE\'\'\' \n    collection.media=\'\'\'ANY\'\'\' \n    (\'\'\'SELECT\'\'\' MEDIA# \'\'\'FROM\'\'\' collection \'\'\'WHERE\'\'\' USER#=78)\n    \'\'\'AND\'\'\' USER#<>78;\n----\n\n===\'\'\'DCL\'\'\'===\n----\n\nData Control Language is used to control the rights of users to manipulate or search the table, with GRANT giving rights and REVOKE drawing back rights.\n\'\'Example:\'\'Give right of selecting from `media` to ADMIN1.\n   \'\'\'GRANT SELECT\'\'\' \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n\'\'Example: \'\'Draw back SELECT,UPDATE,INSERT,DELETE rights of ADMIN1.\n   \'\'\'REVOKE ALL\'\'\'   \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n----','utf-8'),(10,'\n\n\n=\'\'\'SQL Introduction\'\'\'=\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n=\'\'\'SQL history\'\'\'=\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.\n=\'\'\'Grammar of SQL\'\'\'=\n==\'\'\'Introduction\'\'\'==\nThe structured query language(SQL) is the standard language for relational database. It helps to achieve the functions of data definition, data manipulation, data query and data control with the following verbs.\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Category\'\'\'||style=\"width:10%\"|\'\'\'Verbs\'\'\'||style=\"width:20%\"|\'\'\'Funtions\'\'\'\n|-\n|Data Definition Language(DDL)|| Create, Drop || Create and drop table, view, index \n|-\n|Data Query Language(DQL)|| Select ||Select from tables\n|-\n|Data Manipulation Language(DML)||Insert, Delete, Update|| Alter data\n|-\n|Data Control Language(DCL)|| Grant, Revoke ||Give or revoke the rights to manipulate a chosen table\n|}\n\n==\'\'\'Concepts you may want to know\'\'\'==\n===\'\'\'Table\'\'\'===\nA table is where you store the data. Each line of the table is one record. Each column is called one attribute. The structure of table should follow the normalization form. \n----\n\n===\'\'\'View\'\'\'===\nA view is a visible space consists of columns selecting from tables. It doesn’t save data itself but will be refreshed each time it is being searched.\n----\n\n===\'\'\'Index\'\'\'===\nAn index is based on an attribute from a table. It will be preordered in some proper order so that the query can be quickly done. \n----\n\n===\'\'\'Primary Key\'\'\'===\nA primary key is some combination of attributes (one or more than one), each line should be distinguished uniquely using a primary key.\n----\n \n===\'\'\'Foreign Key\'\'\'===\nA foreign key is constraint between two tables, so that the manipulation actions will be limited by some rules in the son table.\n----\n\n==\'\'\'Basic Syntax\'\'\'==\n===\'\'\'DDL\'\'\'===\n----\n\nDDL Refers to the data definition language which helps to create/drop table/view/index.\n====\'\'\'CREATE\'\'\'====\n----\n\nTo create a table:\n    \'\'\'CREATE TABLE\'\'\' <NAME>\n    ( <Attribute1> Datatype, \n    <Attribute2> Datatype,…);\n\'\'Example:\'\'\n\n    \'\'\'CREATE  TABLE\'\'\' `user` (\n    `user#` \'\'\'INT NOT NULL\'\'\' ,\n    `username` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `city` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `age` \'\'\'INT NOT NULL ,\'\'\'\n     \'\'\'PRIMARY KEY\'\'\' (`user#`) );\n----\n\nTo create a view:\n    \'\'\'CREATE VIEW\'\'\' <NAME> \'\'\'AS\'\'\'\n    \'\'\'SELECT\'\'\' <Attribute1> <Attribute 2>(or functioned attribute, see example)\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <conditions>;\n----\n\nTo create an index:\n     \'\'\'CREATE INDEX\'\'\' <NAME>\n     \'\'\'ON\'\'\' <TABLENAME><Attribute>;\n----\n\n====\'\'\'DROP\'\'\'====\n----\n\nTo drop table/view/index:\n    \'\'\'DROP TABLE/VIEW/INDEX\'\'\' <NAME>;\n----\n\n===\'\'\'DML\'\'\'===\n----\n\nDML is used when manipulation is needed to tables.\n====\'\'\'INSERT\'\'\'====\n----\n\nTo add records:\n    \'\'\'INSERT INTO\'\'\' <NAME>(<Attribute1>,<Attribute2>,...)\n    \'\'\'VALUES\'\'\'\n    (<Value of A1>, <Value of A2>,…),\n    (<Value of A1>, <Value of A2>,…), \n    ……;\n\'\'Example:\'\'\n    \'\'\'INSERT INTO\'\'\' user(`USER#`,USERNAME,CITY,AGE)\n    \'\'\'VALUES\'\'\'\n    (98,    \'Penny Liu\',      \'Shanghai\',   19),\n    (3,       \'David Wu\',      \'Beijing\',       21),\n    (105,   \'John Green\', \'New York\',    18),\n    (78,     \'Amy Liang\',     \'Xi’an\',           23),\n    (893,   \'Suki Hsu\',     \'Hong Kong\',   17);\n       \n\'\'Hints: \'\'If foreign key appears, inserting into a son table should be pay attention to. Ensure the value of key attribute already exists in the parent table.\n----\n\n====\'\'\'DELETE\'\'\'====\n----\n\nTo delete records:\n    \'\'\'DELETE FROM\'\'\'<NAME>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints: \'\'If foreign key appears, deleting from a parent table will cause deletion in son table, too.\n----\n\n====\'\'\'UPDATE\'\'\'====\n----\n\nTo change value of a domain:\n    \'\'\'UPDATE\'\'\'<NAME>\n    \'\'\'SET\'\'\'<Attribute1>=<Value>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints:\'\' The <Value> can be an exact number as well as a complex expression.\n----\n\n===\'\'\'DQL\'\'\'===\n----\n\nDQL is used for making query from the tables, joint or not.\n----\n\nBasic form of a query statement is:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraints>\n    \'\'\'GROUP BY\'\'\' <Attribute x>\n    \'\'\'HAVING\'\'\' <Constraints>\n    \'\'\'ORDER BY\'\'\' <Attribute>\n----\n\n====\'\'\'Query by Where\'\'\'====\n----\n\n=====\'\'\'Simple Query\'\'\'=====\nTo do a simplest query, using:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraint>;\n\'\'Hint:\'\' \n\n1.If all attributes are to be returned, using ‘*’ instead of the name of attributes.\n\n2.DISTINCT is added before <Attribute> if want to kick out the same value.\n----\n\n=====\'\'\'Using AND/OR\'\'\'=====\n\'\'\'AND\'\'\' connection means all constraints should be followed while \'\'\'OR\'\'\' connection means at least one constraint should be followed among all constraints.\n\n\'\'\'AND\'\'\' will be operated earlier than OR if no brackets breaks the order.\n----\n\n=====\'\'\'More Prepositions\'\'\'=====\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Prep.\'\'\'||style=\"width:10%\"|\'\'\'Example\'\'\'||style=\"width:20%\"|\'\'\'Meaning\'\'\'\n|-\n|\'\'\'NOT\'\'\'(<Attribute>=<Value>)||\'\'\'NOT\'\'\'(CITY=Beijing)||CITY< >Beijing\n|-\n|<Attribute> \'\'\'BETWEEN\'\'\' <Value1> \'\'\'AND\'\'\' <Value2>||AGE \'\'\'BETWEEN\'\'\' 18 \'\'\'AND\'\'\' 25||AGE >=18 \'\'\'AND\'\'\' AGE <= 25\n|-\n|<Attribute> \'\'\'IN\'\'\'(<Value1>, <Value2>,…)||CITY \'\'\'IN\'\'\'(\'Beijing\', \'Shanghai\')||CITY=\'Beijing\' \'\'\'OR\'\'\' CITY=\'Shanghai\'\n|-\n|<Attribute> \'\'\'LIKE\'\'\' <Description>||CITY \'\'\'LIKE\'\'\' ‘Bei%’||Value of CITY looks like‘Bei%’\n|}\n----\n\n=====\'\'\'Using LIKE\'\'\'=====\n\'\'\'LIKE\'\'\' is used for fuzzy query. \n\nTwo symbols can be substitute for unknown characters:\n\n-‘%’represents string at any length (including 0)\n\n-‘_’represents exactly one character\n\n\'\'Hint:\'\' Capital or not, the character will be treated as the same form.\n----\n\n====\'\'\'GROUP BY\'\'\'====\nSQL can group the records which have the same performance on a specific attribute and do functions (AVG,COUNT,SUM,MAX,MIN etc.) to the grouped records. Using having, we can add constraint to the grouped records.\n\'\'Example: \'\'Show how many collection each user has.\n    \'\'\'SELECT\'\'\' USER#,COUNT (MEDIA#) \n    \'\'\'FROM\'\'\' collection\n    \'\'\'GROUP BY\'\'\' USER#\n    \'\'\'HAVING COUNT\'\'\' (MEDIA#)=1;\n----\n\n====\'\'\'Join Tables\'\'\'====\nTo connect tables by natural joint, the following two statement can be made:\n\'\'Example:\'\' Join table user, collection and media.                                 \n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'WHERE\'\'\' m.MEDIA#=c.MEDIA# AND u.USER#=c.USER#;\n\n\'\'Example:\'\' Another way to Join table user, collection and media.\n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'JOIN\'\'\' u \'\'\'AND\'\'\' c \'\'\'ON\'\'\' USER#\n    \'\'\'JOIN\'\'\' m \'\'\'AND\'\'\' c \'\'\'ON\'\'\' MEDIA#;\n----\n\n====\'\'\'Subquery select\'\'\'====\nA subquery is just doing query in the brackets and pre-select some data needed. It is quite useful when want to add constraints where contain functions like AVG, COUNT etc.\n\'\'Example: \'\'Select media whose score is less than the average.\n    \'\'\'SELECT\'\'\' MEDIANAME,MEDIA#,AVGSCORE\n    \'\'\'FROM\'\'\' media\n    \'\'\'WHERE\'\'\' AVGSCORE< \n    (\'\'\'SELECT\'\'\' \'\'\'AVG\'\'\'(AVGSCORE) \'\'\'FROM\'\'\' media)\n----\n\n\'\'\'ANY\'\'\' will help to select any record that meets the requirements of the subquery.\n\n\'\'Example:\'\' Select any user who has at least one same collection as 78.\n    \'\'\'SELECT\'\'\' USER#\n    \'\'\'FROM\'\'\' collection\n    \'\'\'WHERE\'\'\' \n    collection.media=\'\'\'ANY\'\'\' \n    (\'\'\'SELECT\'\'\' MEDIA# \'\'\'FROM\'\'\' collection \'\'\'WHERE\'\'\' USER#=78)\n    \'\'\'AND\'\'\' USER#<>78;\n----\n\n===\'\'\'DCL\'\'\'===\n----\n\nData Control Language is used to control the rights of users to manipulate or search the table, with GRANT giving rights and REVOKE drawing back rights.\n\n\'\'Example:\'\'Give right of selecting from `media` to ADMIN1.\n   \'\'\'GRANT SELECT\'\'\' \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n\'\'Example: \'\'Draw back SELECT,UPDATE,INSERT,DELETE rights of ADMIN1.\n   \'\'\'REVOKE ALL\'\'\'   \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n----','utf-8'),(11,'\n\n\n=\'\'\'SQL Introduction\'\'\'=\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n=\'\'\'SQL history\'\'\'=\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.\n=\'\'\'Grammar of SQL\'\'\'=\n==\'\'\'Introduction\'\'\'==\nThe structured query language(SQL) is the standard language for relational database. It helps to achieve the functions of data definition, data manipulation, data query and data control with the following verbs.\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Category\'\'\'||style=\"width:10%\"|\'\'\'Verbs\'\'\'||style=\"width:20%\"|\'\'\'Funtions\'\'\'\n|-\n|Data Definition Language(DDL)|| Create, Drop || Create and drop table, view, index \n|-\n|Data Query Language(DQL)|| Select ||Select from tables\n|-\n|Data Manipulation Language(DML)||Insert, Delete, Update|| Alter data\n|-\n|Data Control Language(DCL)|| Grant, Revoke ||Give or revoke the rights to manipulate a chosen table\n|}\n\n==\'\'\'Concepts you may want to know\'\'\'==\n===\'\'\'Table\'\'\'===\nA table is where you store the data. Each line of the table is one record. Each column is called one attribute. The structure of table should follow the normalization form. \n----\n\n===\'\'\'View\'\'\'===\nA view is a visible space consists of columns selecting from tables. It doesn’t save data itself but will be refreshed each time it is being searched.\n----\n\n===\'\'\'Index\'\'\'===\nAn index is based on an attribute from a table. It will be preordered in some proper order so that the query can be quickly done. \n----\n\n===\'\'\'Primary Key\'\'\'===\nA primary key is some combination of attributes (one or more than one), each line should be distinguished uniquely using a primary key.\n----\n \n===\'\'\'Foreign Key\'\'\'===\nA foreign key is constraint between two tables, so that the manipulation actions will be limited by some rules in the son table.\n----\n\n==\'\'\'Basic Syntax\'\'\'==\n===\'\'\'DDL\'\'\'===\n----\n\nDDL Refers to the data definition language which helps to create/drop table/view/index.\n====\'\'\'CREATE\'\'\'====\n----\n\nTo create a table:\n    \'\'\'CREATE TABLE\'\'\' <NAME>\n    ( <Attribute1> Datatype, \n    <Attribute2> Datatype,…);\n\'\'Example:\'\'\n\n    \'\'\'CREATE  TABLE\'\'\' `user` (\n    `user#` \'\'\'INT NOT NULL\'\'\' ,\n    `username` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `city` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `age` \'\'\'INT NOT NULL ,\'\'\'\n     \'\'\'PRIMARY KEY\'\'\' (`user#`) );\n----\n\nTo create a view:\n    \'\'\'CREATE VIEW\'\'\' <NAME> \'\'\'AS\'\'\'\n    \'\'\'SELECT\'\'\' <Attribute1> <Attribute 2>(or functioned attribute, see example)\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <conditions>;\n----\n\nTo create an index:\n     \'\'\'CREATE INDEX\'\'\' <NAME>\n     \'\'\'ON\'\'\' <TABLENAME><Attribute>;\n----\n\n====\'\'\'DROP\'\'\'====\n----\n\nTo drop table/view/index:\n    \'\'\'DROP TABLE/VIEW/INDEX\'\'\' <NAME>;\n----\n\n===\'\'\'DML\'\'\'===\n----\n\nDML is used when manipulation is needed to tables.\n====\'\'\'INSERT\'\'\'====\n----\n\nTo add records:\n    \'\'\'INSERT INTO\'\'\' <NAME>(<Attribute1>,<Attribute2>,...)\n    \'\'\'VALUES\'\'\'\n    (<Value of A1>, <Value of A2>,…),\n    (<Value of A1>, <Value of A2>,…), \n    ……;\n\'\'Example:\'\'\n    \'\'\'INSERT INTO\'\'\' user(`USER#`,USERNAME,CITY,AGE)\n    \'\'\'VALUES\'\'\'\n    (98,    \'Penny Liu\',      \'Shanghai\',   19),\n    (3,       \'David Wu\',      \'Beijing\',       21),\n    (105,   \'John Green\', \'New York\',    18),\n    (78,     \'Amy Liang\',     \'Xi’an\',           23),\n    (893,   \'Suki Hsu\',     \'Hong Kong\',   17);\n       \n\'\'Hints: \'\'If foreign key appears, inserting into a son table should be pay attention to. Ensure the value of key attribute already exists in the parent table.\n----\n\n====\'\'\'DELETE\'\'\'====\n----\n\nTo delete records:\n    \'\'\'DELETE FROM\'\'\'<NAME>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints: \'\'If foreign key appears, deleting from a parent table will cause deletion in son table, too.\n----\n\n====\'\'\'UPDATE\'\'\'====\n----\n\nTo change value of a domain:\n    \'\'\'UPDATE\'\'\'<NAME>\n    \'\'\'SET\'\'\'<Attribute1>=<Value>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints:\'\' The <Value> can be an exact number as well as a complex expression.\n----\n\n===\'\'\'DQL\'\'\'===\n----\n\nDQL is used for making query from the tables, joint or not.\n----\n\nBasic form of a query statement is:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraints>\n    \'\'\'GROUP BY\'\'\' <Attribute x>\n    \'\'\'HAVING\'\'\' <Constraints>\n    \'\'\'ORDER BY\'\'\' <Attribute>\n----\n\n====\'\'\'Query by Where\'\'\'====\n----\n\n=====\'\'\'Simple Query\'\'\'=====\nTo do a simplest query, using:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraint>;\n\'\'Hint:\'\' \n\n1.If all attributes are to be returned, using ‘*’ instead of the name of attributes.\n\n2.DISTINCT is added before <Attribute> if want to kick out the same value.\n----\n\n=====\'\'\'Using AND/OR\'\'\'=====\n\'\'\'AND\'\'\' connection means all constraints should be followed while \'\'\'OR\'\'\' connection means at least one constraint should be followed among all constraints.\n\n\'\'\'AND\'\'\' will be operated earlier than OR if no brackets breaks the order.\n----\n\n=====\'\'\'More Prepositions\'\'\'=====\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Prep.\'\'\'||style=\"width:10%\"|\'\'\'Example\'\'\'||style=\"width:20%\"|\'\'\'Meaning\'\'\'\n|-\n|\'\'\'NOT\'\'\'(<Attribute>=<Value>)||\'\'\'NOT\'\'\'(CITY=Beijing)||CITY< >Beijing\n|-\n|<Attribute> \'\'\'BETWEEN\'\'\' <Value1> \'\'\'AND\'\'\' <Value2>||AGE \'\'\'BETWEEN\'\'\' 18 \'\'\'AND\'\'\' 25||AGE >=18 \'\'\'AND\'\'\' AGE <= 25\n|-\n|<Attribute> \'\'\'IN\'\'\'(<Value1>, <Value2>,…)||CITY \'\'\'IN\'\'\'(\'Beijing\', \'Shanghai\')||CITY=\'Beijing\' \'\'\'OR\'\'\' CITY=\'Shanghai\'\n|-\n|<Attribute> \'\'\'LIKE\'\'\' <Description>||CITY \'\'\'LIKE\'\'\' ‘Bei%’||Value of CITY looks like‘Bei%’\n|}\n----\n\n=====\'\'\'Using LIKE\'\'\'=====\n\'\'\'LIKE\'\'\' is used for fuzzy query. \n\nTwo symbols can be substitute for unknown characters:\n\n-‘%’represents string at any length (including 0)\n\n-‘_’represents exactly one character\n\n\'\'Hint:\'\' Capital or not, the character will be treated as the same form.\n----\n\n====\'\'\'GROUP BY\'\'\'====\nSQL can group the records which have the same performance on a specific attribute and do functions (AVG,COUNT,SUM,MAX,MIN etc.) to the grouped records. Using having, we can add constraint to the grouped records.\n\'\'Example: \'\'Show how many collection each user has.\n    \'\'\'SELECT\'\'\' USER#,COUNT (MEDIA#) \n    \'\'\'FROM\'\'\' collection\n    \'\'\'GROUP BY\'\'\' USER#\n    \'\'\'HAVING COUNT\'\'\' (MEDIA#)=1;\n----\n\n====\'\'\'Join Tables\'\'\'====\nTo connect tables by natural joint, the following two statement can be made:\n\'\'Example:\'\' Join table user, collection and media.                                 \n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'WHERE\'\'\' m.MEDIA#=c.MEDIA# AND u.USER#=c.USER#;\n\n\'\'Example:\'\' Another way to Join table user, collection and media.\n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'JOIN\'\'\' u \'\'\'AND\'\'\' c \'\'\'ON\'\'\' USER#\n    \'\'\'JOIN\'\'\' m \'\'\'AND\'\'\' c \'\'\'ON\'\'\' MEDIA#;\n----\n\n====\'\'\'Subquery select\'\'\'====\nA subquery is just doing query in the brackets and pre-select some data needed. It is quite useful when want to add constraints where contain functions like AVG, COUNT etc.\n\'\'Example: \'\'Select media whose score is less than the average.\n    \'\'\'SELECT\'\'\' MEDIANAME,MEDIA#,AVGSCORE\n    \'\'\'FROM\'\'\' media\n    \'\'\'WHERE\'\'\' AVGSCORE< \n    (\'\'\'SELECT\'\'\' \'\'\'AVG\'\'\'(AVGSCORE) \'\'\'FROM\'\'\' media)\n----\n\n\'\'\'ANY\'\'\' will help to select any record that meets the requirements of the subquery.\n\n\'\'Example:\'\' Select any user who has at least one same collection as 78.\n    \'\'\'SELECT\'\'\' USER#\n    \'\'\'FROM\'\'\' collection\n    \'\'\'WHERE\'\'\' \n    collection.media=\'\'\'ANY\'\'\' \n    (\'\'\'SELECT\'\'\' MEDIA# \'\'\'FROM\'\'\' collection \'\'\'WHERE\'\'\' USER#=78)\n    \'\'\'AND\'\'\' USER#<>78;\n----\n\n===\'\'\'DCL\'\'\'===\n----\n\nData Control Language is used to control the rights of users to manipulate or search the table, with GRANT giving rights and REVOKE drawing back rights.\n\n\'\'Example:\'\'Give right of selecting from `media` to ADMIN1.\n   \'\'\'GRANT SELECT\'\'\' \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n\'\'Example: \'\'Draw back SELECT,UPDATE,INSERT,DELETE rights of ADMIN1.\n   \'\'\'REVOKE ALL\'\'\'   \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n----\n\n=\'\'\'Alternatives to SQL\'\'\'=\n----\n\nIf the data become huge, then it cannot be retrieved efficiently through a relational algebra. Thus, NoSQL(Not Only SQL) database systems rose alongside major internet companies, such as Google,Amazon,and Facebook, which had significantly different challenges in dealing with huge quantities of data that the traditional RDBMS (Relational Database Management System) solutions could not cope with.\n\nNoSQL(Not only SQL) is a broad class of database management system systems identified by non-adherence to the widely used relational database management system (RDBMS). NoSQL databases are not primarily built on tables, and generally do not use SQL for data manipulation. Those databases are distributed, we call them Distributed Database Management System(DDBMS).\n\n----\n\n====\'\'\'Distributed Database Management System (DDBMS)\'\'\'====\n\nDistributed database management system is a software for managing databses stored on multiple computers in a network. A distributed database is a set of databases stored on multiple computers that typically appears to applications on a single database. Consequently, an application can simultaneously access and modify the data in several databases in a network. \nIt differs to RDBMS in the way entities get distributed and that no consistency is enforced across those entities. This is what allows them to automatically distribute data across a large number of database nodes and also write them independently.\n\n\n----\n\n====\'\'\'Criticism\'\'\'====\n\nBecause NoSQL is still a movent, it has been faced some challenges:\n\n1. Maturity\nRDBMS systems have been around for a long time. NoSQL advocates will argue that their advancing age is a sign of their obsolescence, but for most CIOs, the maturity of the RDBMS is reassuring. For the most part, RDBMS systems are stable and richly functional. In comparison, most NoSQL alternatives are in pre-production versions with many key features yet to be implemented.\nLiving on the technological leading edge is an exciting prospect for many developers, but enterprises should approach it with extreme caution.\n\n2. Support\nEnterprises want the reassurance that if a key system fails, they will be able to get timely and competent support. All RDBMS vendors go to great lengths to provide a high level of enterprise support.\nIn contrast, most NoSQL systems are open source projects, and although there are usually one or more firms offering support for each NoSQL database, these companies often are small start-ups without the global reach, support resources, or credibility of an Oracle, Microsoft, or IBM.\n\n3. Analytics and business intelligence\nNoSQL databases have evolved to meet the scaling demands of modern Web 2.0 applications. Consequently, most of their feature set is oriented toward the demands of these applications. However, data in an application has value to the business that goes beyond the insert-read-update-delete cycle of a typical Web application. Businesses mine information in corporate databases to improve their efficiency and competitiveness, and business intelligence (BI) is a key IT issue for all medium to large companies.\nNoSQL databases offer few facilities for ad-hoc query and analysis. Even a simple query requires significant programming expertise, and commonly used BI tools do not provide connectivity to NoSQL.\nSome relief is provided by the emergence of solutions such as HIVE or PIG, which can provide easier access to data held in Hadoop clusters and perhaps eventually, other NoSQL databases. Quest Software has developed a product — Toad for Cloud Databases — that can provide ad-hoc query capabilities to a variety of NoSQL databases.\n\n4. Administration\nThe design goals for NoSQL may be to provide a zero-admin solution, but the current reality falls well short of that goal. NoSQL today requires a lot of skill to install and a lot of effort to maintain.\n\n5. Expertise\nThere are literally millions of developers throughout the world, and in every business segment, who are familiar with RDBMS concepts and programming. In contrast, almost every NoSQL developer is in a learning mode. This situation will address naturally over time, but for now, it’s far easier to find experienced RDBMS programmers or administrators than a NoSQL expert.\n\n----','utf-8'),(12,'\n\n\n=\'\'\'SQL Introduction\'\'\'=\nSQL is short of Structured Query Language. It is a kind of programming language, basic used for data management in relational database management system. SQL is originally based on the theory of relational model raised by Dr. Codd.\n\n\nThere are four types languages in SQL for managing data, they are data definition language(DDL), data management language(DML), data query language(DQL), data control language(DCL). Eight main basic verbs are used to retrive data in the database, which is easy for programmer to use. Then SQL is an ANSI language for computer programming language.\n\n\nAs a programming language, SQL has many optimization ways to reduce time and space cost when managing data and improve certainty of querying results. Due to differences of different databases, SQL has been developed many extension languages with different features. For example, T-SQL(Transact-SQL) for SQL server, PL/SQL(Procedural Language/SQL) for Oracle and so on. And recent yaers, with the size of databases growing, the name \'NoSQL\'(not only SQL) has been a popular topic.\n\n\nThere are serval advantages of SQL.\n\n\n1] integrated\n\n2] highly nonprocessdual\n\n3] set oriented mode of operation in\n\n4] with a grammatical structure provides a wide range of use\n\n5] language is simple, easy to learn and use\n\n6] for statistical data more convenient\n\n\n\n=\'\'\'SQL history\'\'\'=\nSpace, time and certainty are the most important factors while dealing with database. To meet the requirements of database users, we should find some appropriate ways to take care of the data in the database.\n\n\nIn the 1960s, Network database system and hierarchical database system are used for automatic banking business, accounting and order processing system. However, their basic system structure had physical operation and logic operation mixed together. When the physical position of data changes, we must update applications to retrieve a new position, which makes the data query inconvenient.\nIn June 1970, Dr Codd published a paper named 《A Relational Model of Data for Large Shared Data Banks》, setting the concept of relational database. \n\n\nAfter that, SQL was initially developed at IBM by Chamberlin and Boyce in the early 1970s. It was designed to manipulate and retrieve data stored in IBM\'s original database management system, System R.\n\n\nThe acronym SEQUEL was later changed to SQL because \"SEQUEL\" was a trademark of a British company. \n\n\nSo, what makes SQL so special? Why did people invent and choose SQL to build up a database?\n\n\nThere is a really important reason here. SQL is a kind of declarable programming language. It tells the system what to do instead of how to do. Users do not need to worry about the specific ways in which your requirements are met. On the other side, there are also many procedural programming languages, such as C and Java, in which the procedure of the data being processed should be paid attention to. \n\n\nAs we already know, SQL is the foundation of database, and also important for us while doing our course project. There are three stages while building a SNS. First is the formulation stage, where we will talk about the SQL grammar. Second, when the number of users grows, the optimization is desired so that the efficiency of the system will be improved. Third, when the number of users becomes huge, nosql language appears to be popular.\n=\'\'\'Grammar of SQL\'\'\'=\n==\'\'\'Introduction\'\'\'==\nThe structured query language(SQL) is the standard language for relational database. It helps to achieve the functions of data definition, data manipulation, data query and data control with the following verbs.\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Category\'\'\'||style=\"width:10%\"|\'\'\'Verbs\'\'\'||style=\"width:20%\"|\'\'\'Funtions\'\'\'\n|-\n|Data Definition Language(DDL)|| Create, Drop || Create and drop table, view, index \n|-\n|Data Query Language(DQL)|| Select ||Select from tables\n|-\n|Data Manipulation Language(DML)||Insert, Delete, Update|| Alter data\n|-\n|Data Control Language(DCL)|| Grant, Revoke ||Give or revoke the rights to manipulate a chosen table\n|}\n\n==\'\'\'Concepts you may want to know\'\'\'==\n===\'\'\'Table\'\'\'===\nA table is where you store the data. Each line of the table is one record. Each column is called one attribute. The structure of table should follow the normalization form. \n----\n\n===\'\'\'View\'\'\'===\nA view is a visible space consists of columns selecting from tables. It doesn’t save data itself but will be refreshed each time it is being searched.\n----\n\n===\'\'\'Index\'\'\'===\nAn index is based on an attribute from a table. It will be preordered in some proper order so that the query can be quickly done. \n----\n\n===\'\'\'Primary Key\'\'\'===\nA primary key is some combination of attributes (one or more than one), each line should be distinguished uniquely using a primary key.\n----\n \n===\'\'\'Foreign Key\'\'\'===\nA foreign key is constraint between two tables, so that the manipulation actions will be limited by some rules in the son table.\n----\n\n==\'\'\'Basic Syntax\'\'\'==\n===\'\'\'DDL\'\'\'===\n----\n\nDDL Refers to the data definition language which helps to create/drop table/view/index.\n====\'\'\'CREATE\'\'\'====\n----\n\nTo create a table:\n    \'\'\'CREATE TABLE\'\'\' <NAME>\n    ( <Attribute1> Datatype, \n    <Attribute2> Datatype,…);\n\'\'Example:\'\'\n\n    \'\'\'CREATE  TABLE\'\'\' `user` (\n    `user#` \'\'\'INT NOT NULL\'\'\' ,\n    `username` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `city` \'\'\'VARCHAR(45) NULL\'\'\' ,\n    `age` \'\'\'INT NOT NULL ,\'\'\'\n     \'\'\'PRIMARY KEY\'\'\' (`user#`) );\n----\n\nTo create a view:\n    \'\'\'CREATE VIEW\'\'\' <NAME> \'\'\'AS\'\'\'\n    \'\'\'SELECT\'\'\' <Attribute1> <Attribute 2>(or functioned attribute, see example)\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <conditions>;\n----\n\nTo create an index:\n     \'\'\'CREATE INDEX\'\'\' <NAME>\n     \'\'\'ON\'\'\' <TABLENAME><Attribute>;\n----\n\n====\'\'\'DROP\'\'\'====\n----\n\nTo drop table/view/index:\n    \'\'\'DROP TABLE/VIEW/INDEX\'\'\' <NAME>;\n----\n\n===\'\'\'DML\'\'\'===\n----\n\nDML is used when manipulation is needed to tables.\n====\'\'\'INSERT\'\'\'====\n----\n\nTo add records:\n    \'\'\'INSERT INTO\'\'\' <NAME>(<Attribute1>,<Attribute2>,...)\n    \'\'\'VALUES\'\'\'\n    (<Value of A1>, <Value of A2>,…),\n    (<Value of A1>, <Value of A2>,…), \n    ……;\n\'\'Example:\'\'\n    \'\'\'INSERT INTO\'\'\' user(`USER#`,USERNAME,CITY,AGE)\n    \'\'\'VALUES\'\'\'\n    (98,    \'Penny Liu\',      \'Shanghai\',   19),\n    (3,       \'David Wu\',      \'Beijing\',       21),\n    (105,   \'John Green\', \'New York\',    18),\n    (78,     \'Amy Liang\',     \'Xi’an\',           23),\n    (893,   \'Suki Hsu\',     \'Hong Kong\',   17);\n       \n\'\'Hints: \'\'If foreign key appears, inserting into a son table should be pay attention to. Ensure the value of key attribute already exists in the parent table.\n----\n\n====\'\'\'DELETE\'\'\'====\n----\n\nTo delete records:\n    \'\'\'DELETE FROM\'\'\'<NAME>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints: \'\'If foreign key appears, deleting from a parent table will cause deletion in son table, too.\n----\n\n====\'\'\'UPDATE\'\'\'====\n----\n\nTo change value of a domain:\n    \'\'\'UPDATE\'\'\'<NAME>\n    \'\'\'SET\'\'\'<Attribute1>=<Value>\n    \'\'\'WHERE\'\'\'<Constraints>;\n\'\'Hints:\'\' The <Value> can be an exact number as well as a complex expression.\n----\n\n===\'\'\'DQL\'\'\'===\n----\n\nDQL is used for making query from the tables, joint or not.\n----\n\nBasic form of a query statement is:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraints>\n    \'\'\'GROUP BY\'\'\' <Attribute x>\n    \'\'\'HAVING\'\'\' <Constraints>\n    \'\'\'ORDER BY\'\'\' <Attribute>\n----\n\n====\'\'\'Query by Where\'\'\'====\n----\n\n=====\'\'\'Simple Query\'\'\'=====\nTo do a simplest query, using:\n    \'\'\'SELECT\'\'\' <Attribute1>,<Attribute2>…\n    \'\'\'FROM\'\'\' <NAME>\n    \'\'\'WHERE\'\'\' <Constraint>;\n\'\'Hint:\'\' \n\n1.If all attributes are to be returned, using ‘*’ instead of the name of attributes.\n\n2.DISTINCT is added before <Attribute> if want to kick out the same value.\n----\n\n=====\'\'\'Using AND/OR\'\'\'=====\n\'\'\'AND\'\'\' connection means all constraints should be followed while \'\'\'OR\'\'\' connection means at least one constraint should be followed among all constraints.\n\n\'\'\'AND\'\'\' will be operated earlier than OR if no brackets breaks the order.\n----\n\n=====\'\'\'More Prepositions\'\'\'=====\n{|class=\"wikitable\" width=\"100%\"\n|- style=\"background:cornflowerblue; color:white\" align=center\n|style=\"width:20%\"|\'\'\'Prep.\'\'\'||style=\"width:10%\"|\'\'\'Example\'\'\'||style=\"width:20%\"|\'\'\'Meaning\'\'\'\n|-\n|\'\'\'NOT\'\'\'(<Attribute>=<Value>)||\'\'\'NOT\'\'\'(CITY=Beijing)||CITY< >Beijing\n|-\n|<Attribute> \'\'\'BETWEEN\'\'\' <Value1> \'\'\'AND\'\'\' <Value2>||AGE \'\'\'BETWEEN\'\'\' 18 \'\'\'AND\'\'\' 25||AGE >=18 \'\'\'AND\'\'\' AGE <= 25\n|-\n|<Attribute> \'\'\'IN\'\'\'(<Value1>, <Value2>,…)||CITY \'\'\'IN\'\'\'(\'Beijing\', \'Shanghai\')||CITY=\'Beijing\' \'\'\'OR\'\'\' CITY=\'Shanghai\'\n|-\n|<Attribute> \'\'\'LIKE\'\'\' <Description>||CITY \'\'\'LIKE\'\'\' ‘Bei%’||Value of CITY looks like‘Bei%’\n|}\n----\n\n=====\'\'\'Using LIKE\'\'\'=====\n\'\'\'LIKE\'\'\' is used for fuzzy query. \n\nTwo symbols can be substitute for unknown characters:\n\n-‘%’represents string at any length (including 0)\n\n-‘_’represents exactly one character\n\n\'\'Hint:\'\' Capital or not, the character will be treated as the same form.\n----\n\n====\'\'\'GROUP BY\'\'\'====\nSQL can group the records which have the same performance on a specific attribute and do functions (AVG,COUNT,SUM,MAX,MIN etc.) to the grouped records. Using having, we can add constraint to the grouped records.\n\'\'Example: \'\'Show how many collection each user has.\n    \'\'\'SELECT\'\'\' USER#,COUNT (MEDIA#) \n    \'\'\'FROM\'\'\' collection\n    \'\'\'GROUP BY\'\'\' USER#\n    \'\'\'HAVING COUNT\'\'\' (MEDIA#)=1;\n----\n\n====\'\'\'Join Tables\'\'\'====\nTo connect tables by natural joint, the following two statement can be made:\n\'\'Example:\'\' Join table user, collection and media.                                 \n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'WHERE\'\'\' m.MEDIA#=c.MEDIA# AND u.USER#=c.USER#;\n\n\'\'Example:\'\' Another way to Join table user, collection and media.\n    \'\'\'SELECT\'\'\' u.USERNAME,c.MEDIANAME,C_tag1,C_tag2,C_tag3\n    \'\'\'FROM\'\'\' media m,user u,collection c\n    \'\'\'JOIN\'\'\' u \'\'\'AND\'\'\' c \'\'\'ON\'\'\' USER#\n    \'\'\'JOIN\'\'\' m \'\'\'AND\'\'\' c \'\'\'ON\'\'\' MEDIA#;\n----\n\n====\'\'\'Subquery select\'\'\'====\nA subquery is just doing query in the brackets and pre-select some data needed. It is quite useful when want to add constraints where contain functions like AVG, COUNT etc.\n\'\'Example: \'\'Select media whose score is less than the average.\n    \'\'\'SELECT\'\'\' MEDIANAME,MEDIA#,AVGSCORE\n    \'\'\'FROM\'\'\' media\n    \'\'\'WHERE\'\'\' AVGSCORE< \n    (\'\'\'SELECT\'\'\' \'\'\'AVG\'\'\'(AVGSCORE) \'\'\'FROM\'\'\' media)\n----\n\n\'\'\'ANY\'\'\' will help to select any record that meets the requirements of the subquery.\n\n\'\'Example:\'\' Select any user who has at least one same collection as 78.\n    \'\'\'SELECT\'\'\' USER#\n    \'\'\'FROM\'\'\' collection\n    \'\'\'WHERE\'\'\' \n    collection.media=\'\'\'ANY\'\'\' \n    (\'\'\'SELECT\'\'\' MEDIA# \'\'\'FROM\'\'\' collection \'\'\'WHERE\'\'\' USER#=78)\n    \'\'\'AND\'\'\' USER#<>78;\n----\n\n===\'\'\'DCL\'\'\'===\n----\n\nData Control Language is used to control the rights of users to manipulate or search the table, with GRANT giving rights and REVOKE drawing back rights.\n\n\'\'Example:\'\'Give right of selecting from `media` to ADMIN1.\n   \'\'\'GRANT SELECT\'\'\' \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n\'\'Example: \'\'Draw back SELECT,UPDATE,INSERT,DELETE rights of ADMIN1.\n   \'\'\'REVOKE ALL\'\'\'   \'\'\'ON\'\'\' media \'\'\'TO\'\'\' ADMIN1;\n----\n=\'\'\'SQL Optimization\'\'\'=\n----\n\'\'\'Time\'\'\',\'\'\'space\'\'\' and \'\'\'certainty\'\'\' are there important factors to our SQL optimization. The cost of time is a major factor which is visible and always determines the system\'s performance. The cost of disk space and the size of tables have also important influence in database operation, and the certainty sometimes maybe our first object to optimize SQL statements.\n=\'\'\'Alternatives to SQL\'\'\'=\n----\n\nIf the data become huge, then it cannot be retrieved efficiently through a relational algebra. Thus, NoSQL(Not Only SQL) database systems rose alongside major internet companies, such as Google,Amazon,and Facebook, which had significantly different challenges in dealing with huge quantities of data that the traditional RDBMS (Relational Database Management System) solutions could not cope with.\n\nNoSQL(Not only SQL) is a broad class of database management system systems identified by non-adherence to the widely used relational database management system (RDBMS). NoSQL databases are not primarily built on tables, and generally do not use SQL for data manipulation. Those databases are distributed, we call them Distributed Database Management System(DDBMS).\n\n----\n\n====\'\'\'Distributed Database Management System (DDBMS)\'\'\'====\n\nDistributed database management system is a software for managing databses stored on multiple computers in a network. A distributed database is a set of databases stored on multiple computers that typically appears to applications on a single database. Consequently, an application can simultaneously access and modify the data in several databases in a network. \nIt differs to RDBMS in the way entities get distributed and that no consistency is enforced across those entities. This is what allows them to automatically distribute data across a large number of database nodes and also write them independently.\n\n\n----\n\n====\'\'\'Criticism\'\'\'====\n\nBecause NoSQL is still a movent, it has been faced some challenges:\n\n1. Maturity\nRDBMS systems have been around for a long time. NoSQL advocates will argue that their advancing age is a sign of their obsolescence, but for most CIOs, the maturity of the RDBMS is reassuring. For the most part, RDBMS systems are stable and richly functional. In comparison, most NoSQL alternatives are in pre-production versions with many key features yet to be implemented.\nLiving on the technological leading edge is an exciting prospect for many developers, but enterprises should approach it with extreme caution.\n\n2. Support\nEnterprises want the reassurance that if a key system fails, they will be able to get timely and competent support. All RDBMS vendors go to great lengths to provide a high level of enterprise support.\nIn contrast, most NoSQL systems are open source projects, and although there are usually one or more firms offering support for each NoSQL database, these companies often are small start-ups without the global reach, support resources, or credibility of an Oracle, Microsoft, or IBM.\n\n3. Analytics and business intelligence\nNoSQL databases have evolved to meet the scaling demands of modern Web 2.0 applications. Consequently, most of their feature set is oriented toward the demands of these applications. However, data in an application has value to the business that goes beyond the insert-read-update-delete cycle of a typical Web application. Businesses mine information in corporate databases to improve their efficiency and competitiveness, and business intelligence (BI) is a key IT issue for all medium to large companies.\nNoSQL databases offer few facilities for ad-hoc query and analysis. Even a simple query requires significant programming expertise, and commonly used BI tools do not provide connectivity to NoSQL.\nSome relief is provided by the emergence of solutions such as HIVE or PIG, which can provide easier access to data held in Hadoop clusters and perhaps eventually, other NoSQL databases. Quest Software has developed a product — Toad for Cloud Databases — that can provide ad-hoc query capabilities to a variety of NoSQL databases.\n\n4. Administration\nThe design goals for NoSQL may be to provide a zero-admin solution, but the current reality falls well short of that goal. NoSQL today requires a lot of skill to install and a lot of effort to maintain.\n\n5. Expertise\nThere are literally millions of developers throughout the world, and in every business segment, who are familiar with RDBMS concepts and programming. In contrast, almost every NoSQL developer is in a learning mode. This situation will address naturally over time, but for now, it’s far easier to find experienced RDBMS programmers or administrators than a NoSQL expert.\n\n----','utf-8');
/*!40000 ALTER TABLE `wiki_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_transcache`
--

DROP TABLE IF EXISTS `wiki_transcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_transcache` (
  `tc_url` varbinary(255) NOT NULL,
  `tc_contents` blob,
  `tc_time` binary(14) NOT NULL,
  UNIQUE KEY `tc_url_idx` (`tc_url`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_transcache`
--

LOCK TABLES `wiki_transcache` WRITE;
/*!40000 ALTER TABLE `wiki_transcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_transcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_updatelog`
--

DROP TABLE IF EXISTS `wiki_updatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_updatelog` (
  `ul_key` varbinary(255) NOT NULL,
  `ul_value` blob,
  PRIMARY KEY (`ul_key`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_updatelog`
--

LOCK TABLES `wiki_updatelog` WRITE;
/*!40000 ALTER TABLE `wiki_updatelog` DISABLE KEYS */;
INSERT INTO `wiki_updatelog` VALUES ('updatelist-1.19.2-1350219719','a:0:{}');
/*!40000 ALTER TABLE `wiki_updatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_uploadstash`
--

DROP TABLE IF EXISTS `wiki_uploadstash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_uploadstash` (
  `us_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `us_user` int(10) unsigned NOT NULL,
  `us_key` varbinary(255) NOT NULL,
  `us_orig_path` varbinary(255) NOT NULL,
  `us_path` varbinary(255) NOT NULL,
  `us_source_type` varbinary(50) DEFAULT NULL,
  `us_timestamp` varbinary(14) NOT NULL,
  `us_status` varbinary(50) NOT NULL,
  `us_chunk_inx` int(10) unsigned DEFAULT NULL,
  `us_size` int(10) unsigned NOT NULL,
  `us_sha1` varbinary(31) NOT NULL,
  `us_mime` varbinary(255) DEFAULT NULL,
  `us_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `us_image_width` int(10) unsigned DEFAULT NULL,
  `us_image_height` int(10) unsigned DEFAULT NULL,
  `us_image_bits` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`us_id`),
  UNIQUE KEY `us_key` (`us_key`),
  KEY `us_user` (`us_user`),
  KEY `us_timestamp` (`us_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_uploadstash`
--

LOCK TABLES `wiki_uploadstash` WRITE;
/*!40000 ALTER TABLE `wiki_uploadstash` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_uploadstash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_user`
--

DROP TABLE IF EXISTS `wiki_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varbinary(255) NOT NULL DEFAULT '',
  `user_real_name` varbinary(255) NOT NULL DEFAULT '',
  `user_password` tinyblob NOT NULL,
  `user_newpassword` tinyblob NOT NULL,
  `user_newpass_time` binary(14) DEFAULT NULL,
  `user_email` tinyblob NOT NULL,
  `user_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_token` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_email_authenticated` binary(14) DEFAULT NULL,
  `user_email_token` binary(32) DEFAULT NULL,
  `user_email_token_expires` binary(14) DEFAULT NULL,
  `user_registration` binary(14) DEFAULT NULL,
  `user_editcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `user_email_token` (`user_email_token`),
  KEY `user_email` (`user_email`(50))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_user`
--

LOCK TABLES `wiki_user` WRITE;
/*!40000 ALTER TABLE `wiki_user` DISABLE KEYS */;
INSERT INTO `wiki_user` VALUES (1,'Admin','',':B:65e5f097:a4593417c502a06edd3e1e11c3afd597','',NULL,'toyhouse.database@gmail.com','20121014130203','a1df2ca7e4859eaca3b69bc80e085ba9',NULL,NULL,NULL,'20121014130158',0),(2,'Wuyn10','吴伊宁',':B:15c4a36f:45266ee5b299cce073415f79bf1e5f50','',NULL,'wu5100@126.com','20121015001626','f82ec5f0659c859a639c31c2c59b8312',NULL,'f10862127c03164b1ff16cdfc483c890','20121021235305','20121014235305',1),(3,'Wuxianyu','wuxianyu',':B:1d33fdea:b843e4ed32ef3bb6cd60d4318549a5cc','',NULL,'wuxianyu88@126.com','20121015004640','4b95fb2234d28f4145ec9bfe7e1195d5',NULL,'46b9e88c5aea14f1ef85e881446c7fdb','20121022001227','20121015001227',3),(4,'Vickiebear','CaoLiuxing',':B:0f354354:7ab8185c95cbef7efb7db225d563f055','',NULL,'vickiebear@126.com','20121015021326','6da023d9897b5ff411d8e5e9eff92bec',NULL,'dd468dfab00257b7293e0d220dcf08ee','20121022021230','20121015021230',1),(5,'Huhcn','许赞',':B:5ffe8313:478ce0267aa77770b0944d90f96c597c','',NULL,'huhcn@live.co.kr','20121015093021','9015ab97a6e1cff83a300087d4623057',NULL,'ae38f4a5fc7671ad76c69ef34a8c682c','20121022083027','20121015083027',1);
/*!40000 ALTER TABLE `wiki_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_user_former_groups`
--

DROP TABLE IF EXISTS `wiki_user_former_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_user_former_groups` (
  `ufg_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ufg_group` varbinary(32) NOT NULL DEFAULT '',
  UNIQUE KEY `ufg_user_group` (`ufg_user`,`ufg_group`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_user_former_groups`
--

LOCK TABLES `wiki_user_former_groups` WRITE;
/*!40000 ALTER TABLE `wiki_user_former_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_user_former_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_user_groups`
--

DROP TABLE IF EXISTS `wiki_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_user_groups` (
  `ug_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ug_group` varbinary(32) NOT NULL DEFAULT '',
  UNIQUE KEY `ug_user_group` (`ug_user`,`ug_group`),
  KEY `ug_group` (`ug_group`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_user_groups`
--

LOCK TABLES `wiki_user_groups` WRITE;
/*!40000 ALTER TABLE `wiki_user_groups` DISABLE KEYS */;
INSERT INTO `wiki_user_groups` VALUES (1,'bureaucrat'),(1,'sysop');
/*!40000 ALTER TABLE `wiki_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_user_newtalk`
--

DROP TABLE IF EXISTS `wiki_user_newtalk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_user_newtalk` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_ip` varbinary(40) NOT NULL DEFAULT '',
  `user_last_timestamp` varbinary(14) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `user_ip` (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_user_newtalk`
--

LOCK TABLES `wiki_user_newtalk` WRITE;
/*!40000 ALTER TABLE `wiki_user_newtalk` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_user_newtalk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_user_properties`
--

DROP TABLE IF EXISTS `wiki_user_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_user_properties` (
  `up_user` int(11) NOT NULL,
  `up_property` varbinary(255) NOT NULL,
  `up_value` blob,
  UNIQUE KEY `user_properties_user_property` (`up_user`,`up_property`),
  KEY `user_properties_property` (`up_property`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_user_properties`
--

LOCK TABLES `wiki_user_properties` WRITE;
/*!40000 ALTER TABLE `wiki_user_properties` DISABLE KEYS */;
INSERT INTO `wiki_user_properties` VALUES (2,'rememberpassword','1'),(3,'rememberpassword','1'),(5,'rememberpassword','1');
/*!40000 ALTER TABLE `wiki_user_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_valid_tag`
--

DROP TABLE IF EXISTS `wiki_valid_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_valid_tag` (
  `vt_tag` varbinary(255) NOT NULL,
  PRIMARY KEY (`vt_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_valid_tag`
--

LOCK TABLES `wiki_valid_tag` WRITE;
/*!40000 ALTER TABLE `wiki_valid_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_valid_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_watchlist`
--

DROP TABLE IF EXISTS `wiki_watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_watchlist` (
  `wl_user` int(10) unsigned NOT NULL,
  `wl_namespace` int(11) NOT NULL DEFAULT '0',
  `wl_title` varbinary(255) NOT NULL DEFAULT '',
  `wl_notificationtimestamp` varbinary(14) DEFAULT NULL,
  UNIQUE KEY `wl_user` (`wl_user`,`wl_namespace`,`wl_title`),
  KEY `namespace_title` (`wl_namespace`,`wl_title`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_watchlist`
--

LOCK TABLES `wiki_watchlist` WRITE;
/*!40000 ALTER TABLE `wiki_watchlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-23 16:15:28