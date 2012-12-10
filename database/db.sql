-- MySQL dump 10.11
--
-- Host: localhost    Database: adflex_dev
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Table structure for table `ox_account_preference_assoc`
--

DROP TABLE IF EXISTS `ox_account_preference_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_account_preference_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `preference_id` mediumint(9) NOT NULL,
  `value` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`account_id`,`preference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_account_preference_assoc`
--

LOCK TABLES `ox_account_preference_assoc` WRITE;
/*!40000 ALTER TABLE `ox_account_preference_assoc` DISABLE KEYS */;
INSERT INTO `ox_account_preference_assoc` VALUES (1,1,''),(1,2,''),(1,3,'1'),(1,4,'1'),(1,5,'1'),(1,6,'100'),(1,7,'1'),(1,8,''),(1,9,''),(1,10,'1'),(1,11,'100'),(1,12,'1'),(1,13,'1'),(1,14,'100'),(1,15,'1'),(1,16,'Asia/Saigon'),(1,17,'4'),(1,18,'1'),(1,19,''),(1,20,'1'),(1,21,'1'),(1,22,''),(1,23,''),(1,24,'1'),(1,25,''),(1,26,'1'),(1,27,''),(1,28,''),(1,29,'1'),(1,30,'1'),(1,31,'2'),(1,32,'1'),(1,33,''),(1,34,'4'),(1,35,''),(1,36,''),(1,37,'0'),(1,38,''),(1,39,''),(1,40,'0'),(1,41,''),(1,42,''),(1,43,'0'),(1,44,''),(1,45,''),(1,46,'0'),(1,47,''),(1,48,''),(1,49,'0'),(1,50,''),(1,51,''),(1,52,'0'),(1,53,''),(1,54,''),(1,55,'0'),(1,56,''),(1,57,''),(1,58,'0'),(1,59,''),(1,60,''),(1,61,'0'),(1,62,'1'),(1,63,''),(1,64,'5'),(1,65,''),(1,66,''),(1,67,'0'),(1,68,''),(1,69,''),(1,70,'0'),(1,71,''),(1,72,''),(1,73,'0'),(1,74,''),(1,75,''),(1,76,'0'),(1,77,'1'),(1,78,''),(1,79,'1'),(1,80,'1'),(1,81,''),(1,82,'2'),(1,83,'1'),(1,84,''),(1,85,'3'),(1,86,''),(1,87,''),(1,88,'0'),(1,89,''),(1,90,''),(1,91,'0'),(1,92,''),(1,93,''),(1,94,'0'),(1,95,''),(1,96,''),(1,97,'0');
/*!40000 ALTER TABLE `ox_account_preference_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_account_user_assoc`
--

DROP TABLE IF EXISTS `ox_account_user_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_account_user_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `linked` datetime NOT NULL,
  PRIMARY KEY  (`account_id`,`user_id`),
  KEY `ox_account_user_assoc_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_account_user_assoc`
--

LOCK TABLES `ox_account_user_assoc` WRITE;
/*!40000 ALTER TABLE `ox_account_user_assoc` DISABLE KEYS */;
INSERT INTO `ox_account_user_assoc` VALUES (1,1,'2012-11-23 11:34:36'),(2,1,'2012-11-23 11:34:36'),(19,7,'2012-11-24 14:39:20'),(15,8,'2012-11-24 13:07:24'),(13,7,'2012-11-24 11:06:47');
/*!40000 ALTER TABLE `ox_account_user_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_account_user_permission_assoc`
--

DROP TABLE IF EXISTS `ox_account_user_permission_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_account_user_permission_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `permission_id` mediumint(9) NOT NULL,
  `is_allowed` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`account_id`,`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_account_user_permission_assoc`
--

LOCK TABLES `ox_account_user_permission_assoc` WRITE;
/*!40000 ALTER TABLE `ox_account_user_permission_assoc` DISABLE KEYS */;
INSERT INTO `ox_account_user_permission_assoc` VALUES (19,7,10,1),(15,8,10,1),(13,7,10,1);
/*!40000 ALTER TABLE `ox_account_user_permission_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_accounts`
--

DROP TABLE IF EXISTS `ox_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_accounts` (
  `account_id` mediumint(9) NOT NULL auto_increment,
  `account_type` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `account_name` varchar(255) collate utf8_unicode_ci default NULL,
  `m2m_password` varchar(32) collate utf8_unicode_ci default NULL,
  `m2m_ticket` varchar(32) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`account_id`),
  KEY `ox_accounts_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_accounts`
--

LOCK TABLES `ox_accounts` WRITE;
/*!40000 ALTER TABLE `ox_accounts` DISABLE KEYS */;
INSERT INTO `ox_accounts` VALUES (1,'ADMIN','Administrator account','jQH&5tFB_&7Y=LdOwV2aYyqjl','1dzGaiS_69_(PSKVR8K-25qE28e#hN'),(2,'MANAGER','Default manager','IWoG2$hWl4@(aqONB8Tto*ZWX','1dy6iEaog_e=19r&&KVV^1zVu(D29E'),(3,'ADVERTISER','OpenX Market Advertiser',NULL,NULL),(4,'TRAFFICKER','adnet.vn',NULL,NULL),(17,'TRAFFICKER','Adflex',NULL,NULL),(15,'MANAGER','Thanh','$*U4SbqR6lMbroEVyB9jO6QW2','1eONYWyR@dh#JamWlcSk6G1mSWJZrS'),(7,'TRAFFICKER','AdFlex',NULL,NULL),(8,'TRAFFICKER','hihihehe',NULL,NULL),(16,'ADVERTISER','Thanh',NULL,NULL),(13,'MANAGER','tuan lc','nSrd!FYs!$*!_tM%AyFGZ@1_b','1dzucxq^FUo^z&U#JVk!I0e9dtWW3%'),(14,'ADVERTISER','tuan lc',NULL,NULL),(18,'TRAFFICKER','eway tuannv',NULL,NULL),(19,'MANAGER','tuan lc',NULL,NULL),(20,'ADVERTISER','tuan lc',NULL,NULL);
/*!40000 ALTER TABLE `ox_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_acls`
--

DROP TABLE IF EXISTS `ox_acls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_acls` (
  `bannerid` mediumint(9) NOT NULL default '0',
  `logical` varchar(3) collate utf8_unicode_ci NOT NULL default 'and',
  `type` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `comparison` char(2) collate utf8_unicode_ci NOT NULL default '==',
  `data` text collate utf8_unicode_ci NOT NULL,
  `executionorder` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ox_acls_bannerid_executionorder` (`bannerid`,`executionorder`),
  KEY `ox_acls_bannerid` (`bannerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_acls`
--

LOCK TABLES `ox_acls` WRITE;
/*!40000 ALTER TABLE `ox_acls` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_acls_channel`
--

DROP TABLE IF EXISTS `ox_acls_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_acls_channel` (
  `channelid` mediumint(9) NOT NULL default '0',
  `logical` varchar(3) collate utf8_unicode_ci NOT NULL default 'and',
  `type` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `comparison` char(2) collate utf8_unicode_ci NOT NULL default '==',
  `data` text collate utf8_unicode_ci NOT NULL,
  `executionorder` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ox_acls_channel_channelid_executionorder` (`channelid`,`executionorder`),
  KEY `ox_acls_channel_channelid` (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_acls_channel`
--

LOCK TABLES `ox_acls_channel` WRITE;
/*!40000 ALTER TABLE `ox_acls_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_acls_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ad_category_assoc`
--

DROP TABLE IF EXISTS `ox_ad_category_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ad_category_assoc` (
  `ad_category_assoc_id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ad_category_assoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ad_category_assoc`
--

LOCK TABLES `ox_ad_category_assoc` WRITE;
/*!40000 ALTER TABLE `ox_ad_category_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ad_category_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ad_zone_assoc`
--

DROP TABLE IF EXISTS `ox_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ad_zone_assoc` (
  `ad_zone_assoc_id` mediumint(9) NOT NULL auto_increment,
  `zone_id` mediumint(9) default NULL,
  `ad_id` mediumint(9) default NULL,
  `priority` double default '0',
  `link_type` smallint(6) NOT NULL default '1',
  `priority_factor` double default '0',
  `to_be_delivered` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`ad_zone_assoc_id`),
  KEY `ox_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_ad_zone_assoc_ad_id` (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ad_zone_assoc`
--

LOCK TABLES `ox_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `ox_ad_zone_assoc` DISABLE KEYS */;
INSERT INTO `ox_ad_zone_assoc` VALUES (1,0,1,0,0,1,1),(2,0,2,0,0,1,1),(3,0,3,0,0,1,1),(4,0,4,0,0,1,1),(5,1,4,0,1,1,1),(6,4,4,0,1,1,1),(7,5,4,0,1,1,1);
/*!40000 ALTER TABLE `ox_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_affiliates`
--

DROP TABLE IF EXISTS `ox_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_affiliates` (
  `affiliateid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `mnemonic` varchar(5) collate utf8_unicode_ci NOT NULL default '',
  `comments` text collate utf8_unicode_ci,
  `contact` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `website` varchar(255) collate utf8_unicode_ci default NULL,
  `updated` datetime NOT NULL,
  `an_website_id` int(11) default NULL,
  `oac_country_code` char(2) collate utf8_unicode_ci NOT NULL default '',
  `oac_language_id` int(11) default NULL,
  `oac_category_id` int(11) default NULL,
  `as_website_id` int(11) default NULL,
  `account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`affiliateid`),
  UNIQUE KEY `ox_affiliates_account_id` (`account_id`),
  KEY `ox_affiliates_agencyid` (`agencyid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_affiliates`
--

LOCK TABLES `ox_affiliates` WRITE;
/*!40000 ALTER TABLE `ox_affiliates` DISABLE KEYS */;
INSERT INTO `ox_affiliates` VALUES (1,1,'adnet.vn','','','adnet','adne@abc.com','http://adnet.vn','2012-11-23 08:59:00',NULL,'',0,0,0,4),(4,9,'Adflex','','','Thanh','thanh@adflex.vn','http://adflex.vn','2012-11-24 06:11:40',NULL,'',0,0,0,17),(5,8,'eway tuannv','','','eway tuannv','tuannv@eway.vn','http://eway.vn','2012-11-24 06:21:17',NULL,'',0,0,0,18);
/*!40000 ALTER TABLE `ox_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_affiliates_extra`
--

DROP TABLE IF EXISTS `ox_affiliates_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_affiliates_extra` (
  `affiliateid` mediumint(9) NOT NULL,
  `address` text collate utf8_unicode_ci,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `postcode` varchar(64) collate utf8_unicode_ci default NULL,
  `country` varchar(255) collate utf8_unicode_ci default NULL,
  `phone` varchar(64) collate utf8_unicode_ci default NULL,
  `fax` varchar(64) collate utf8_unicode_ci default NULL,
  `account_contact` varchar(255) collate utf8_unicode_ci default NULL,
  `payee_name` varchar(255) collate utf8_unicode_ci default NULL,
  `tax_id` varchar(64) collate utf8_unicode_ci default NULL,
  `mode_of_payment` varchar(64) collate utf8_unicode_ci default NULL,
  `currency` varchar(64) collate utf8_unicode_ci default NULL,
  `unique_users` int(11) default NULL,
  `unique_views` int(11) default NULL,
  `page_rank` int(11) default NULL,
  `category` varchar(255) collate utf8_unicode_ci default NULL,
  `help_file` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_affiliates_extra`
--

LOCK TABLES `ox_affiliates_extra` WRITE;
/*!40000 ALTER TABLE `ox_affiliates_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_affiliates_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_agency`
--

DROP TABLE IF EXISTS `ox_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_agency` (
  `agencyid` mediumint(9) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `contact` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `logout_url` varchar(255) collate utf8_unicode_ci default NULL,
  `active` smallint(1) default '0',
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`agencyid`),
  UNIQUE KEY `ox_agency_account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_agency`
--

LOCK TABLES `ox_agency` WRITE;
/*!40000 ALTER TABLE `ox_agency` DISABLE KEYS */;
INSERT INTO `ox_agency` VALUES (1,'Default manager',NULL,'thanh@adflex.vn',NULL,1,'2012-11-23 08:34:36',2),(10,'tuan lc','tuan lc','tuanlc@gmail.com',NULL,0,'2012-11-24 07:39:20',19),(9,'Thanh','Thanh','thanhtc@eway.vn',NULL,0,'2012-11-24 06:07:24',15),(8,'tuan lc','tuan lc','tuanlc@gmail.com',NULL,0,'2012-11-24 04:06:47',13);
/*!40000 ALTER TABLE `ox_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_application_variable`
--

DROP TABLE IF EXISTS `ox_application_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_application_variable` (
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `value` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_application_variable`
--

LOCK TABLES `ox_application_variable` WRITE;
/*!40000 ALTER TABLE `ox_application_variable` DISABLE KEYS */;
INSERT INTO `ox_application_variable` VALUES ('tables_core','613'),('oa_version','2.8.10'),('oxMarket_publisher_account_id','474409ee-5c31-1830-e03b-3f7da031f3e0'),('oxMarket_api_key','0986565687114ea514466975070c4e4df9471e5157126e503865417731926461'),('platform_hash','d71127a290ffea00299b446161bf023d99408f7d'),('sync_last_run','2012-11-25 01:59:42'),('sync_cache','b:0;'),('sync_timestamp','1353808782'),('admin_account_id','1'),('oxHtml_version','1.0.1'),('oxText_version','1.0.1'),('Client_version','1.0.6'),('Geo_version','1.0.2'),('Site_version','1.0.14'),('Time_version','1.0.2'),('ox3rdPartyServers_version','1.0.8'),('oxReportsStandard_version','1.2'),('oxReportsAdmin_version','1.1'),('oxCacheFile_version','1.0.4'),('oxMemcached_version','1.0.2'),('oxMaxMindGeoIP_version','1.0.5'),('oxInvocationTags_version','1.0.9'),('tables_oxDeliveryDataPrepare','002'),('oxDeliveryDataPrepare_version','1.0.8'),('oxLogClick_version','1.0.8'),('oxLogConversion_version','1.0.11'),('oxLogImpression_version','1.0.8'),('oxLogRequest_version','1.0.8'),('tables_oxMarket','006'),('oxMarket_version','1.9.1-RC5'),('oxMarketMaintenance_version','1.9.0-RC1'),('oxMarketDelivery_version','1.9.0-RC1'),('openXWorkflow_version','0.0.3'),('tables_vastbannertypehtml','013'),('vastInlineBannerTypeHtml_version','1.8.5'),('vastOverlayBannerTypeHtml_version','1.8.5'),('oxLogVast_version','1.8.6'),('vastServeVideoPlayer_version','1.8.5'),('videoReport_version','1.8.6'),('maintenance_timestamp','1353808771');
/*!40000 ALTER TABLE `ox_application_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_audit`
--

DROP TABLE IF EXISTS `ox_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_audit` (
  `auditid` mediumint(9) NOT NULL auto_increment,
  `actionid` mediumint(9) NOT NULL,
  `context` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `contextid` mediumint(9) default NULL,
  `parentid` mediumint(9) default NULL,
  `details` text collate utf8_unicode_ci NOT NULL,
  `userid` mediumint(9) NOT NULL default '0',
  `username` varchar(64) collate utf8_unicode_ci default NULL,
  `usertype` tinyint(4) NOT NULL default '0',
  `updated` datetime default NULL,
  `account_id` mediumint(9) NOT NULL,
  `advertiser_account_id` mediumint(9) default NULL,
  `website_account_id` mediumint(9) default NULL,
  PRIMARY KEY  (`auditid`),
  KEY `ox_audit_parentid_contextid` (`parentid`,`contextid`),
  KEY `ox_audit_updated` (`updated`),
  KEY `ox_audit_usertype` (`usertype`),
  KEY `ox_audit_username` (`username`),
  KEY `ox_audit_context_actionid` (`context`,`actionid`),
  KEY `ox_audit_account_id` (`account_id`),
  KEY `ox_audit_advertiser_account_id` (`advertiser_account_id`),
  KEY `ox_audit_website_account_id` (`website_account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_audit`
--

LOCK TABLES `ox_audit` WRITE;
/*!40000 ALTER TABLE `ox_audit` DISABLE KEYS */;
INSERT INTO `ox_audit` VALUES (1,1,'accounts',1,NULL,'a:4:{s:10:\"account_id\";i:1;s:12:\"account_type\";s:5:\"ADMIN\";s:12:\"account_name\";s:21:\"Administrator account\";s:8:\"key_desc\";s:21:\"Administrator account\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(2,1,'accounts',2,NULL,'a:4:{s:10:\"account_id\";i:2;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2012-11-23 08:34:36',2,NULL,NULL),(3,1,'agency',1,NULL,'a:9:{s:8:\"agencyid\";i:1;s:4:\"name\";s:15:\"Default manager\";s:7:\"contact\";s:4:\"null\";s:5:\"email\";s:15:\"thanh@adflex.vn\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";i:1;s:7:\"updated\";s:19:\"2012-11-23 08:34:36\";s:10:\"account_id\";i:2;s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2012-11-23 08:34:36',2,NULL,NULL),(4,1,'users',1,NULL,'a:14:{s:7:\"user_id\";i:1;s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:15:\"thanh@adflex.vn\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";i:2;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-23 11:34:36\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-23 11:34:36\";s:8:\"key_desc\";s:5:\"admin\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(5,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2012-11-23 11:34:36\";s:8:\"key_desc\";s:21:\"Account #1 -> User #1\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(6,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:2;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2012-11-23 11:34:36\";s:8:\"key_desc\";s:21:\"Account #2 -> User #1\";}',0,'Installer',0,'2012-11-23 08:34:36',2,NULL,NULL),(7,1,'preferences',1,NULL,'a:4:{s:13:\"preference_id\";i:1;s:15:\"preference_name\";s:24:\"default_banner_image_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"default_banner_image_url\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(8,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:1;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #1\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(9,1,'preferences',2,NULL,'a:4:{s:13:\"preference_id\";i:2;s:15:\"preference_name\";s:30:\"default_banner_destination_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:30:\"default_banner_destination_url\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(10,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:2;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #2\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(11,1,'preferences',3,NULL,'a:4:{s:13:\"preference_id\";i:3;s:15:\"preference_name\";s:21:\"default_banner_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"default_banner_weight\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(12,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:3;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #3\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(13,1,'preferences',4,NULL,'a:4:{s:13:\"preference_id\";i:4;s:15:\"preference_name\";s:23:\"default_campaign_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:23:\"default_campaign_weight\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(14,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:4;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #4\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(15,1,'preferences',5,NULL,'a:4:{s:13:\"preference_id\";i:5;s:15:\"preference_name\";s:16:\"warn_email_admin\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:16:\"warn_email_admin\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(16,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:5;s:5:\"value\";b:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #5\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(17,1,'preferences',6,NULL,'a:4:{s:13:\"preference_id\";i:6;s:15:\"preference_name\";s:33:\"warn_email_admin_impression_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:33:\"warn_email_admin_impression_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(18,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:6;s:5:\"value\";i:100;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #6\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(19,1,'preferences',7,NULL,'a:4:{s:13:\"preference_id\";i:7;s:15:\"preference_name\";s:26:\"warn_email_admin_day_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:26:\"warn_email_admin_day_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(20,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:7;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #7\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(21,1,'preferences',8,NULL,'a:4:{s:13:\"preference_id\";i:8;s:15:\"preference_name\";s:21:\"campaign_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"campaign_ecpm_enabled\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(22,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:8;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #8\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(23,1,'preferences',9,NULL,'a:4:{s:13:\"preference_id\";i:9;s:15:\"preference_name\";s:21:\"contract_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"contract_ecpm_enabled\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(24,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:9;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #9\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(25,1,'preferences',10,NULL,'a:4:{s:13:\"preference_id\";i:10;s:15:\"preference_name\";s:18:\"warn_email_manager\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"warn_email_manager\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(26,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:10;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #10\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(27,1,'preferences',11,NULL,'a:4:{s:13:\"preference_id\";i:11;s:15:\"preference_name\";s:35:\"warn_email_manager_impression_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"warn_email_manager_impression_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(28,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:11;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #11\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(29,1,'preferences',12,NULL,'a:4:{s:13:\"preference_id\";i:12;s:15:\"preference_name\";s:28:\"warn_email_manager_day_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"warn_email_manager_day_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(30,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:12;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #12\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(31,1,'preferences',13,NULL,'a:4:{s:13:\"preference_id\";i:13;s:15:\"preference_name\";s:21:\"warn_email_advertiser\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"warn_email_advertiser\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(32,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:13;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #13\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(33,1,'preferences',14,NULL,'a:4:{s:13:\"preference_id\";i:14;s:15:\"preference_name\";s:38:\"warn_email_advertiser_impression_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:38:\"warn_email_advertiser_impression_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(34,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:14;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #14\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(35,1,'preferences',15,NULL,'a:4:{s:13:\"preference_id\";i:15;s:15:\"preference_name\";s:31:\"warn_email_advertiser_day_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:31:\"warn_email_advertiser_day_limit\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(36,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:15;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(37,1,'preferences',16,NULL,'a:4:{s:13:\"preference_id\";i:16;s:15:\"preference_name\";s:8:\"timezone\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:8:\"timezone\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(38,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:16;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(39,1,'preferences',17,NULL,'a:4:{s:13:\"preference_id\";i:17;s:15:\"preference_name\";s:22:\"tracker_default_status\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_default_status\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(40,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:17;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #17\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(41,1,'preferences',18,NULL,'a:4:{s:13:\"preference_id\";i:18;s:15:\"preference_name\";s:20:\"tracker_default_type\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:20:\"tracker_default_type\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(42,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:18;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #18\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(43,1,'preferences',19,NULL,'a:4:{s:13:\"preference_id\";i:19;s:15:\"preference_name\";s:22:\"tracker_link_campaigns\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_link_campaigns\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(44,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:19;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #19\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(45,1,'preferences',20,NULL,'a:4:{s:13:\"preference_id\";i:20;s:15:\"preference_name\";s:21:\"ui_show_campaign_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"ui_show_campaign_info\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(46,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:20;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #20\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(47,1,'preferences',21,NULL,'a:4:{s:13:\"preference_id\";i:21;s:15:\"preference_name\";s:19:\"ui_show_banner_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_info\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(48,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:21;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #21\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(49,1,'preferences',22,NULL,'a:4:{s:13:\"preference_id\";i:22;s:15:\"preference_name\";s:24:\"ui_show_campaign_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:24:\"ui_show_campaign_preview\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(50,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:22;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #22\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(51,1,'preferences',23,NULL,'a:4:{s:13:\"preference_id\";i:23;s:15:\"preference_name\";s:19:\"ui_show_banner_html\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_html\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(52,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:23;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #23\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(53,1,'preferences',24,NULL,'a:4:{s:13:\"preference_id\";i:24;s:15:\"preference_name\";s:22:\"ui_show_banner_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"ui_show_banner_preview\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(54,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:24;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #24\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(55,1,'preferences',25,NULL,'a:4:{s:13:\"preference_id\";i:25;s:15:\"preference_name\";s:16:\"ui_hide_inactive\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:16:\"ui_hide_inactive\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(56,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:25;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #25\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(57,1,'preferences',26,NULL,'a:4:{s:13:\"preference_id\";i:26;s:15:\"preference_name\";s:24:\"ui_show_matching_banners\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"ui_show_matching_banners\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(58,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:26;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #26\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(59,1,'preferences',27,NULL,'a:4:{s:13:\"preference_id\";i:27;s:15:\"preference_name\";s:32:\"ui_show_matching_banners_parents\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:32:\"ui_show_matching_banners_parents\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(60,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:27;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #27\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(61,1,'preferences',28,NULL,'a:4:{s:13:\"preference_id\";i:28;s:15:\"preference_name\";s:17:\"ui_show_entity_id\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_show_entity_id\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(62,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:28;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #28\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(63,1,'preferences',29,NULL,'a:4:{s:13:\"preference_id\";i:29;s:15:\"preference_name\";s:14:\"ui_novice_user\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:14:\"ui_novice_user\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(64,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:29;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #29\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(65,1,'preferences',30,NULL,'a:4:{s:13:\"preference_id\";i:30;s:15:\"preference_name\";s:17:\"ui_week_start_day\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_week_start_day\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(66,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:30;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #30\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(67,1,'preferences',31,NULL,'a:4:{s:13:\"preference_id\";i:31;s:15:\"preference_name\";s:22:\"ui_percentage_decimals\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_percentage_decimals\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(68,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:31;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #31\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(69,1,'preferences',32,NULL,'a:4:{s:13:\"preference_id\";i:32;s:15:\"preference_name\";s:17:\"ui_column_revenue\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_revenue\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(70,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:32;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #32\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(71,1,'preferences',33,NULL,'a:4:{s:13:\"preference_id\";i:33;s:15:\"preference_name\";s:23:\"ui_column_revenue_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_revenue_label\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(72,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:33;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #33\";}',0,'Installer',0,'2012-11-23 08:34:36',1,NULL,NULL),(73,1,'preferences',34,NULL,'a:4:{s:13:\"preference_id\";i:34;s:15:\"preference_name\";s:22:\"ui_column_revenue_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revenue_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(74,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:34;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #34\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(75,1,'preferences',35,NULL,'a:4:{s:13:\"preference_id\";i:35;s:15:\"preference_name\";s:12:\"ui_column_bv\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_bv\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(76,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:35;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #35\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(77,1,'preferences',36,NULL,'a:4:{s:13:\"preference_id\";i:36;s:15:\"preference_name\";s:18:\"ui_column_bv_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_bv_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(78,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:36;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #36\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(79,1,'preferences',37,NULL,'a:4:{s:13:\"preference_id\";i:37;s:15:\"preference_name\";s:17:\"ui_column_bv_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_bv_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(80,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:37;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #37\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(81,1,'preferences',38,NULL,'a:4:{s:13:\"preference_id\";i:38;s:15:\"preference_name\";s:19:\"ui_column_num_items\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_num_items\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(82,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:38;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #38\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(83,1,'preferences',39,NULL,'a:4:{s:13:\"preference_id\";i:39;s:15:\"preference_name\";s:25:\"ui_column_num_items_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_num_items_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(84,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:39;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #39\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(85,1,'preferences',40,NULL,'a:4:{s:13:\"preference_id\";i:40;s:15:\"preference_name\";s:24:\"ui_column_num_items_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_num_items_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(86,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:40;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #40\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(87,1,'preferences',41,NULL,'a:4:{s:13:\"preference_id\";i:41;s:15:\"preference_name\";s:16:\"ui_column_revcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_revcpc\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(88,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:41;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #41\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(89,1,'preferences',42,NULL,'a:4:{s:13:\"preference_id\";i:42;s:15:\"preference_name\";s:22:\"ui_column_revcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revcpc_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(90,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:42;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #42\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(91,1,'preferences',43,NULL,'a:4:{s:13:\"preference_id\";i:43;s:15:\"preference_name\";s:21:\"ui_column_revcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_revcpc_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(92,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:43;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #43\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(93,1,'preferences',44,NULL,'a:4:{s:13:\"preference_id\";i:44;s:15:\"preference_name\";s:14:\"ui_column_erpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpm\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(94,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:44;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #44\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(95,1,'preferences',45,NULL,'a:4:{s:13:\"preference_id\";i:45;s:15:\"preference_name\";s:20:\"ui_column_erpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpm_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(96,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:45;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #45\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(97,1,'preferences',46,NULL,'a:4:{s:13:\"preference_id\";i:46;s:15:\"preference_name\";s:19:\"ui_column_erpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpm_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(98,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:46;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #46\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(99,1,'preferences',47,NULL,'a:4:{s:13:\"preference_id\";i:47;s:15:\"preference_name\";s:14:\"ui_column_erpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpc\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(100,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:47;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #47\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(101,1,'preferences',48,NULL,'a:4:{s:13:\"preference_id\";i:48;s:15:\"preference_name\";s:20:\"ui_column_erpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpc_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(102,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:48;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #48\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(103,1,'preferences',49,NULL,'a:4:{s:13:\"preference_id\";i:49;s:15:\"preference_name\";s:19:\"ui_column_erpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpc_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(104,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:49;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #49\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(105,1,'preferences',50,NULL,'a:4:{s:13:\"preference_id\";i:50;s:15:\"preference_name\";s:14:\"ui_column_erps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erps\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(106,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:50;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #50\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(107,1,'preferences',51,NULL,'a:4:{s:13:\"preference_id\";i:51;s:15:\"preference_name\";s:20:\"ui_column_erps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erps_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(108,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:51;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #51\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(109,1,'preferences',52,NULL,'a:4:{s:13:\"preference_id\";i:52;s:15:\"preference_name\";s:19:\"ui_column_erps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erps_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(110,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:52;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #52\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(111,1,'preferences',53,NULL,'a:4:{s:13:\"preference_id\";i:53;s:15:\"preference_name\";s:14:\"ui_column_eipm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipm\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(112,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:53;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #53\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(113,1,'preferences',54,NULL,'a:4:{s:13:\"preference_id\";i:54;s:15:\"preference_name\";s:20:\"ui_column_eipm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipm_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(114,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:54;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #54\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(115,1,'preferences',55,NULL,'a:4:{s:13:\"preference_id\";i:55;s:15:\"preference_name\";s:19:\"ui_column_eipm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipm_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(116,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:55;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #55\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(117,1,'preferences',56,NULL,'a:4:{s:13:\"preference_id\";i:56;s:15:\"preference_name\";s:14:\"ui_column_eipc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipc\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(118,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:56;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #56\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(119,1,'preferences',57,NULL,'a:4:{s:13:\"preference_id\";i:57;s:15:\"preference_name\";s:20:\"ui_column_eipc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipc_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(120,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:57;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #57\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(121,1,'preferences',58,NULL,'a:4:{s:13:\"preference_id\";i:58;s:15:\"preference_name\";s:19:\"ui_column_eipc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipc_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(122,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:58;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #58\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(123,1,'preferences',59,NULL,'a:4:{s:13:\"preference_id\";i:59;s:15:\"preference_name\";s:14:\"ui_column_eips\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eips\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(124,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:59;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #59\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(125,1,'preferences',60,NULL,'a:4:{s:13:\"preference_id\";i:60;s:15:\"preference_name\";s:20:\"ui_column_eips_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eips_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(126,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:60;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #60\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(127,1,'preferences',61,NULL,'a:4:{s:13:\"preference_id\";i:61;s:15:\"preference_name\";s:19:\"ui_column_eips_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eips_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(128,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:61;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #61\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(129,1,'preferences',62,NULL,'a:4:{s:13:\"preference_id\";i:62;s:15:\"preference_name\";s:14:\"ui_column_ecpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpm\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(130,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:62;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #62\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(131,1,'preferences',63,NULL,'a:4:{s:13:\"preference_id\";i:63;s:15:\"preference_name\";s:20:\"ui_column_ecpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpm_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(132,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:63;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #63\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(133,1,'preferences',64,NULL,'a:4:{s:13:\"preference_id\";i:64;s:15:\"preference_name\";s:19:\"ui_column_ecpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpm_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(134,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:64;s:5:\"value\";i:5;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #64\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(135,1,'preferences',65,NULL,'a:4:{s:13:\"preference_id\";i:65;s:15:\"preference_name\";s:14:\"ui_column_ecpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpc\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(136,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:65;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #65\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(137,1,'preferences',66,NULL,'a:4:{s:13:\"preference_id\";i:66;s:15:\"preference_name\";s:20:\"ui_column_ecpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpc_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(138,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:66;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #66\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(139,1,'preferences',67,NULL,'a:4:{s:13:\"preference_id\";i:67;s:15:\"preference_name\";s:19:\"ui_column_ecpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpc_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(140,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:67;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #67\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(141,1,'preferences',68,NULL,'a:4:{s:13:\"preference_id\";i:68;s:15:\"preference_name\";s:14:\"ui_column_ecps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecps\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(142,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:68;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #68\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(143,1,'preferences',69,NULL,'a:4:{s:13:\"preference_id\";i:69;s:15:\"preference_name\";s:20:\"ui_column_ecps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecps_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(144,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:69;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #69\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(145,1,'preferences',70,NULL,'a:4:{s:13:\"preference_id\";i:70;s:15:\"preference_name\";s:19:\"ui_column_ecps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecps_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(146,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:70;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #70\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(147,1,'preferences',71,NULL,'a:4:{s:13:\"preference_id\";i:71;s:15:\"preference_name\";s:12:\"ui_column_id\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_id\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(148,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:71;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #71\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(149,1,'preferences',72,NULL,'a:4:{s:13:\"preference_id\";i:72;s:15:\"preference_name\";s:18:\"ui_column_id_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_id_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(150,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:72;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #72\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(151,1,'preferences',73,NULL,'a:4:{s:13:\"preference_id\";i:73;s:15:\"preference_name\";s:17:\"ui_column_id_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_id_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(152,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:73;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #73\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(153,1,'preferences',74,NULL,'a:4:{s:13:\"preference_id\";i:74;s:15:\"preference_name\";s:18:\"ui_column_requests\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_requests\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(154,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:74;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #74\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(155,1,'preferences',75,NULL,'a:4:{s:13:\"preference_id\";i:75;s:15:\"preference_name\";s:24:\"ui_column_requests_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_requests_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(156,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:75;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #75\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(157,1,'preferences',76,NULL,'a:4:{s:13:\"preference_id\";i:76;s:15:\"preference_name\";s:23:\"ui_column_requests_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_requests_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(158,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:76;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #76\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(159,1,'preferences',77,NULL,'a:4:{s:13:\"preference_id\";i:77;s:15:\"preference_name\";s:21:\"ui_column_impressions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_impressions\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(160,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:77;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #77\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(161,1,'preferences',78,NULL,'a:4:{s:13:\"preference_id\";i:78;s:15:\"preference_name\";s:27:\"ui_column_impressions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_impressions_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(162,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:78;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #78\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(163,1,'preferences',79,NULL,'a:4:{s:13:\"preference_id\";i:79;s:15:\"preference_name\";s:26:\"ui_column_impressions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_impressions_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(164,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:79;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #79\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(165,1,'preferences',80,NULL,'a:4:{s:13:\"preference_id\";i:80;s:15:\"preference_name\";s:16:\"ui_column_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_clicks\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(166,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:80;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #80\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(167,1,'preferences',81,NULL,'a:4:{s:13:\"preference_id\";i:81;s:15:\"preference_name\";s:22:\"ui_column_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_clicks_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(168,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:81;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #81\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(169,1,'preferences',82,NULL,'a:4:{s:13:\"preference_id\";i:82;s:15:\"preference_name\";s:21:\"ui_column_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_clicks_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(170,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:82;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #82\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(171,1,'preferences',83,NULL,'a:4:{s:13:\"preference_id\";i:83;s:15:\"preference_name\";s:13:\"ui_column_ctr\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:13:\"ui_column_ctr\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(172,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:83;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #83\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(173,1,'preferences',84,NULL,'a:4:{s:13:\"preference_id\";i:84;s:15:\"preference_name\";s:19:\"ui_column_ctr_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ctr_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(174,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:84;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #84\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(175,1,'preferences',85,NULL,'a:4:{s:13:\"preference_id\";i:85;s:15:\"preference_name\";s:18:\"ui_column_ctr_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_ctr_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(176,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:85;s:5:\"value\";i:3;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #85\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(177,1,'preferences',86,NULL,'a:4:{s:13:\"preference_id\";i:86;s:15:\"preference_name\";s:21:\"ui_column_conversions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_conversions\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(178,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:86;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #86\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(179,1,'preferences',87,NULL,'a:4:{s:13:\"preference_id\";i:87;s:15:\"preference_name\";s:27:\"ui_column_conversions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_conversions_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(180,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:87;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #87\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(181,1,'preferences',88,NULL,'a:4:{s:13:\"preference_id\";i:88;s:15:\"preference_name\";s:26:\"ui_column_conversions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_conversions_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(182,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:88;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #88\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(183,1,'preferences',89,NULL,'a:4:{s:13:\"preference_id\";i:89;s:15:\"preference_name\";s:29:\"ui_column_conversions_pending\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_conversions_pending\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(184,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:89;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #89\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(185,1,'preferences',90,NULL,'a:4:{s:13:\"preference_id\";i:90;s:15:\"preference_name\";s:35:\"ui_column_conversions_pending_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"ui_column_conversions_pending_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(186,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:90;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #90\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(187,1,'preferences',91,NULL,'a:4:{s:13:\"preference_id\";i:91;s:15:\"preference_name\";s:34:\"ui_column_conversions_pending_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:34:\"ui_column_conversions_pending_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(188,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:91;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #91\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(189,1,'preferences',92,NULL,'a:4:{s:13:\"preference_id\";i:92;s:15:\"preference_name\";s:18:\"ui_column_sr_views\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_sr_views\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(190,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:92;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #92\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(191,1,'preferences',93,NULL,'a:4:{s:13:\"preference_id\";i:93;s:15:\"preference_name\";s:24:\"ui_column_sr_views_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_views_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(192,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:93;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #93\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(193,1,'preferences',94,NULL,'a:4:{s:13:\"preference_id\";i:94;s:15:\"preference_name\";s:23:\"ui_column_sr_views_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_sr_views_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(194,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:94;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #94\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(195,1,'preferences',95,NULL,'a:4:{s:13:\"preference_id\";i:95;s:15:\"preference_name\";s:19:\"ui_column_sr_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_sr_clicks\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(196,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:95;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #95\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(197,1,'preferences',96,NULL,'a:4:{s:13:\"preference_id\";i:96;s:15:\"preference_name\";s:25:\"ui_column_sr_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_sr_clicks_label\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(198,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:96;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #96\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(199,1,'preferences',97,NULL,'a:4:{s:13:\"preference_id\";i:97;s:15:\"preference_name\";s:24:\"ui_column_sr_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_clicks_rank\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(200,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:97;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #97\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(201,2,'account_preference_assoc',0,NULL,'a:2:{s:5:\"value\";a:2:{s:3:\"was\";s:0:\"\";s:2:\"is\";s:11:\"Asia/Saigon\";}s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2012-11-23 08:34:37',1,NULL,NULL),(202,1,'accounts',3,NULL,'a:4:{s:10:\"account_id\";i:3;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:23:\"OpenX Market Advertiser\";s:8:\"key_desc\";s:23:\"OpenX Market Advertiser\";}',1,'admin',0,'2012-11-23 08:34:52',1,3,NULL),(203,1,'clients',1,NULL,'a:17:{s:8:\"clientid\";i:1;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:23:\"OpenX Market Advertiser\";s:7:\"contact\";s:23:\"OpenX Market Advertiser\";s:5:\"email\";s:4:\"null\";s:6:\"report\";s:4:\"null\";s:14:\"reportinterval\";i:0;s:14:\"reportlastdate\";s:4:\"null\";s:16:\"reportdeactivate\";s:1:\"f\";s:8:\"comments\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-23 08:34:52\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:3;s:21:\"advertiser_limitation\";s:4:\"null\";s:4:\"type\";i:1;s:8:\"key_desc\";s:23:\"OpenX Market Advertiser\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(204,1,'campaigns',1,NULL,'a:37:{s:10:\"campaignid\";i:1;s:12:\"campaignname\";s:45:\"OpenX Market ads served to opted in campaigns\";s:8:\"clientid\";i:1;s:5:\"views\";i:0;s:6:\"clicks\";i:0;s:11:\"conversions\";i:0;s:8:\"priority\";i:-3;s:6:\"weight\";i:0;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:4:\"null\";s:9:\"companion\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"comments\";s:4:\"null\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 08:34:52\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:0;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:4:\"null\";s:11:\"expire_time\";s:4:\"null\";s:4:\"type\";i:1;s:8:\"key_desc\";s:45:\"OpenX Market ads served to opted in campaigns\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(205,1,'banners',1,NULL,'a:44:{s:8:\"bannerid\";i:1;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"html\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:4:\"html\";s:8:\"filename\";s:4:\"null\";s:8:\"imageurl\";s:4:\"null\";s:12:\"htmltemplate\";s:4:\"null\";s:9:\"htmlcache\";s:4:\"null\";s:5:\"width\";i:-1;s:6:\"height\";i:-1;s:6:\"weight\";i:0;s:3:\"seq\";i:0;s:6:\"target\";s:4:\"null\";s:3:\"url\";s:4:\"null\";s:3:\"alt\";s:4:\"null\";s:10:\"statustext\";s:4:\"null\";s:10:\"bannertext\";s:4:\"null\";s:11:\"description\";s:45:\"OpenX Market ads served to opted in campaigns\";s:8:\"adserver\";s:4:\"null\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:4:\"null\";s:12:\"alt_imageurl\";s:4:\"null\";s:15:\"alt_contenttype\";s:4:\"null\";s:8:\"comments\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-23 08:34:52\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:4:\"null\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:4:\"null\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:19:\"market-optin-banner\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:45:\"OpenX Market ads served to opted in campaigns\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(206,1,'ad_zone_assoc',1,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:1;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:1;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #1 -> Zone #0\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(207,1,'campaigns',2,NULL,'a:37:{s:10:\"campaignid\";i:2;s:12:\"campaignname\";s:43:\"OpenX Market ads served to zones by default\";s:8:\"clientid\";i:1;s:5:\"views\";i:0;s:6:\"clicks\";i:0;s:11:\"conversions\";i:0;s:8:\"priority\";i:-3;s:6:\"weight\";i:0;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:4:\"null\";s:9:\"companion\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"comments\";s:4:\"null\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 08:34:52\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:0;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:4:\"null\";s:11:\"expire_time\";s:4:\"null\";s:4:\"type\";i:2;s:8:\"key_desc\";s:43:\"OpenX Market ads served to zones by default\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(208,1,'banners',2,NULL,'a:44:{s:8:\"bannerid\";i:2;s:10:\"campaignid\";i:2;s:11:\"contenttype\";s:4:\"html\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:4:\"html\";s:8:\"filename\";s:4:\"null\";s:8:\"imageurl\";s:4:\"null\";s:12:\"htmltemplate\";s:4:\"null\";s:9:\"htmlcache\";s:4:\"null\";s:5:\"width\";i:-1;s:6:\"height\";i:-1;s:6:\"weight\";i:0;s:3:\"seq\";i:0;s:6:\"target\";s:4:\"null\";s:3:\"url\";s:4:\"null\";s:3:\"alt\";s:4:\"null\";s:10:\"statustext\";s:4:\"null\";s:10:\"bannertext\";s:4:\"null\";s:11:\"description\";s:43:\"OpenX Market ads served to zones by default\";s:8:\"adserver\";s:4:\"null\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:4:\"null\";s:12:\"alt_imageurl\";s:4:\"null\";s:15:\"alt_contenttype\";s:4:\"null\";s:8:\"comments\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-23 08:34:52\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:4:\"null\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:4:\"null\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:19:\"market-optin-banner\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:43:\"OpenX Market ads served to zones by default\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(209,1,'ad_zone_assoc',2,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:2;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:2;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #2 -> Zone #0\";}',1,'admin',0,'2012-11-23 08:34:52',2,3,NULL),(210,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-23 08:37:44\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 08:37:44',1,NULL,NULL),(211,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-23 08:37:44\";s:2:\"is\";s:19:\"2012-11-23 08:38:03\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 08:38:03',1,NULL,NULL),(212,1,'accounts',4,NULL,'a:4:{s:10:\"account_id\";i:4;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:8:\"adnet.vn\";s:8:\"key_desc\";s:8:\"adnet.vn\";}',1,'admin',0,'2012-11-23 08:59:00',1,NULL,4),(213,1,'affiliates',1,NULL,'a:16:{s:11:\"affiliateid\";i:1;s:8:\"agencyid\";i:1;s:4:\"name\";s:8:\"adnet.vn\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:5:\"adnet\";s:5:\"email\";s:12:\"adne@abc.com\";s:7:\"website\";s:15:\"http://adnet.vn\";s:7:\"updated\";s:19:\"2012-11-23 08:59:00\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:0:\"\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:4;s:8:\"key_desc\";s:8:\"adnet.vn\";}',1,'admin',0,'2012-11-23 08:59:00',2,NULL,4),(214,1,'zones',1,NULL,'a:35:{s:6:\"zoneid\";i:1;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:21:\"zone__http://adnet.vn\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 08:59:00\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:4:\"null\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:21:\"zone__http://adnet.vn\";}',1,'admin',0,'2012-11-23 08:59:00',2,NULL,4),(215,1,'accounts',5,NULL,'a:4:{s:10:\"account_id\";i:5;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:11:\"Nguyen Tuan\";s:8:\"key_desc\";s:11:\"Nguyen Tuan\";}',1,'admin',0,'2012-11-23 09:03:41',5,NULL,NULL),(216,1,'agency',2,NULL,'a:9:{s:8:\"agencyid\";i:2;s:4:\"name\";s:11:\"Nguyen Tuan\";s:7:\"contact\";s:11:\"Nguyen Tuan\";s:5:\"email\";s:16:\"xvip87@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-23 09:03:41\";s:10:\"account_id\";i:5;s:8:\"key_desc\";s:11:\"Nguyen Tuan\";}',1,'admin',0,'2012-11-23 09:03:41',5,NULL,NULL),(217,1,'users',2,NULL,'a:14:{s:7:\"user_id\";i:2;s:12:\"contact_name\";s:11:\"Nguyen Tuan\";s:13:\"email_address\";s:16:\"xvip87@gmail.com\";s:8:\"username\";s:6:\"tuannv\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:5;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-23 16:03:41\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-23 16:03:41\";s:8:\"key_desc\";s:6:\"tuannv\";}',1,'admin',0,'2012-11-23 09:03:41',1,NULL,NULL),(218,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:5;s:7:\"user_id\";i:2;s:6:\"linked\";s:19:\"2012-11-23 16:03:41\";s:8:\"key_desc\";s:21:\"Account #5 -> User #2\";}',1,'admin',0,'2012-11-23 09:03:41',5,NULL,NULL),(219,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:5;s:7:\"user_id\";i:2;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #5 -> User #2 -> Permission #10\";}',1,'admin',0,'2012-11-23 09:03:41',5,NULL,NULL),(220,2,'users',2,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-23 09:03:56\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 09:03:56',1,NULL,NULL),(221,1,'accounts',6,NULL,'a:4:{s:10:\"account_id\";i:6;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:17:\"Truong Cong Thanh\";s:8:\"key_desc\";s:17:\"Truong Cong Thanh\";}',1,'admin',0,'2012-11-23 09:06:31',6,NULL,NULL),(222,1,'agency',3,NULL,'a:9:{s:8:\"agencyid\";i:3;s:4:\"name\";s:17:\"Truong Cong Thanh\";s:7:\"contact\";s:17:\"Truong Cong Thanh\";s:5:\"email\";s:15:\"thanhtc@eway.vn\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-23 09:06:31\";s:10:\"account_id\";i:6;s:8:\"key_desc\";s:17:\"Truong Cong Thanh\";}',1,'admin',0,'2012-11-23 09:06:31',6,NULL,NULL),(223,1,'users',3,NULL,'a:14:{s:7:\"user_id\";i:3;s:12:\"contact_name\";s:17:\"Truong Cong Thanh\";s:13:\"email_address\";s:15:\"thanhtc@eway.vn\";s:8:\"username\";s:7:\"thanhtc\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:6;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-23 16:06:31\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-23 16:06:31\";s:8:\"key_desc\";s:7:\"thanhtc\";}',1,'admin',0,'2012-11-23 09:06:31',1,NULL,NULL),(224,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:6;s:7:\"user_id\";i:3;s:6:\"linked\";s:19:\"2012-11-23 16:06:31\";s:8:\"key_desc\";s:21:\"Account #6 -> User #3\";}',1,'admin',0,'2012-11-23 09:06:31',6,NULL,NULL),(225,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:6;s:7:\"user_id\";i:3;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #6 -> User #3 -> Permission #10\";}',1,'admin',0,'2012-11-23 09:06:31',6,NULL,NULL),(226,2,'users',3,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-23 09:06:47\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 09:06:47',1,NULL,NULL),(227,2,'users',3,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-23 09:06:47\";s:2:\"is\";s:19:\"2012-11-23 09:10:29\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 09:10:29',1,NULL,NULL),(228,1,'accounts',7,NULL,'a:4:{s:10:\"account_id\";i:7;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:6:\"AdFlex\";s:8:\"key_desc\";s:6:\"AdFlex\";}',3,'thanhtc',0,'2012-11-23 09:12:16',1,NULL,7),(229,1,'affiliates',2,NULL,'a:16:{s:11:\"affiliateid\";i:2;s:8:\"agencyid\";i:3;s:4:\"name\";s:6:\"AdFlex\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:17:\"Truong Cong Thanh\";s:5:\"email\";s:15:\"thanh@adflex.vn\";s:7:\"website\";s:16:\"http://adflex.vn\";s:7:\"updated\";s:19:\"2012-11-23 09:12:16\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:2:\"VN\";s:15:\"oac_language_id\";i:12;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:7;s:8:\"key_desc\";s:6:\"AdFlex\";}',3,'thanhtc',0,'2012-11-23 09:12:16',6,NULL,7),(230,1,'zones',2,NULL,'a:35:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:2;s:8:\"zonename\";s:22:\"zone__http://adflex.vn\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 09:12:16\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:4:\"null\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:22:\"zone__http://adflex.vn\";}',3,'thanhtc',0,'2012-11-23 09:12:16',6,NULL,7),(231,1,'accounts',8,NULL,'a:4:{s:10:\"account_id\";i:8;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:8:\"hihihehe\";s:8:\"key_desc\";s:8:\"hihihehe\";}',2,'tuannv',0,'2012-11-23 09:16:36',1,NULL,8),(232,1,'affiliates',3,NULL,'a:16:{s:11:\"affiliateid\";i:3;s:8:\"agencyid\";i:2;s:4:\"name\";s:8:\"hihihehe\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:8:\"hihihehe\";s:5:\"email\";s:16:\"hihihehe@abc.com\";s:7:\"website\";s:19:\"http://hihihehe.com\";s:7:\"updated\";s:19:\"2012-11-23 09:16:36\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:0:\"\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:8;s:8:\"key_desc\";s:8:\"hihihehe\";}',2,'tuannv',0,'2012-11-23 09:16:36',5,NULL,8),(233,1,'zones',3,NULL,'a:35:{s:6:\"zoneid\";i:3;s:11:\"affiliateid\";i:3;s:8:\"zonename\";s:25:\"zone__http://hihihehe.com\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 09:16:36\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:4:\"null\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:25:\"zone__http://hihihehe.com\";}',2,'tuannv',0,'2012-11-23 09:16:36',5,NULL,8),(234,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-23 08:38:03\";s:2:\"is\";s:19:\"2012-11-23 09:43:09\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-23 09:43:09',1,NULL,NULL),(235,2,'users',3,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-23 09:10:29\";s:2:\"is\";s:19:\"2012-11-24 02:57:51\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 02:57:52',1,NULL,NULL),(236,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-23 09:43:09\";s:2:\"is\";s:19:\"2012-11-24 03:05:40\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:05:40',1,NULL,NULL),(237,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-24 03:05:40\";s:2:\"is\";s:19:\"2012-11-24 03:06:36\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:06:36',1,NULL,NULL),(238,1,'accounts',9,NULL,'a:4:{s:10:\"account_id\";i:9;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:22:45',9,NULL,NULL),(239,1,'agency',4,NULL,'a:9:{s:8:\"agencyid\";i:4;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 03:22:45\";s:10:\"account_id\";i:9;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:22:45',9,NULL,NULL),(240,1,'users',4,NULL,'a:14:{s:7:\"user_id\";i:4;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:6:\"tuanlc\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:9;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:22:45\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 10:22:45\";s:8:\"key_desc\";s:6:\"tuanlc\";}',1,'admin',0,'2012-11-24 03:22:45',1,NULL,NULL),(241,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:9;s:7:\"user_id\";i:4;s:6:\"linked\";s:19:\"2012-11-24 10:22:45\";s:8:\"key_desc\";s:21:\"Account #9 -> User #4\";}',1,'admin',0,'2012-11-24 03:22:45',9,NULL,NULL),(242,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:9;s:7:\"user_id\";i:4;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #9 -> User #4 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:22:46',9,NULL,NULL),(243,2,'users',4,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-24 03:22:59\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:22:59',1,NULL,NULL),(244,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-24 03:06:36\";s:2:\"is\";s:19:\"2012-11-24 03:25:37\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:25:37',1,NULL,NULL),(245,1,'accounts',10,NULL,'a:4:{s:10:\"account_id\";i:10;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:27:22',10,NULL,NULL),(246,1,'agency',5,NULL,'a:9:{s:8:\"agencyid\";i:5;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 03:27:22\";s:10:\"account_id\";i:10;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:27:22',10,NULL,NULL),(247,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:10;s:7:\"user_id\";i:4;s:6:\"linked\";s:19:\"2012-11-24 10:27:22\";s:8:\"key_desc\";s:22:\"Account #10 -> User #4\";}',1,'admin',0,'2012-11-24 03:27:22',10,NULL,NULL),(248,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:10;s:7:\"user_id\";i:4;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #10 -> User #4 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:27:22',10,NULL,NULL),(249,1,'accounts',11,NULL,'a:4:{s:10:\"account_id\";i:11;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:27:37',11,NULL,NULL),(250,1,'agency',6,NULL,'a:9:{s:8:\"agencyid\";i:6;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 03:27:37\";s:10:\"account_id\";i:11;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:27:37',11,NULL,NULL),(251,1,'users',5,NULL,'a:14:{s:7:\"user_id\";i:5;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:8:\"tuaneway\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:11;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:27:37\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 10:27:37\";s:8:\"key_desc\";s:8:\"tuaneway\";}',1,'admin',0,'2012-11-24 03:27:37',1,NULL,NULL),(252,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:11;s:7:\"user_id\";i:5;s:6:\"linked\";s:19:\"2012-11-24 10:27:37\";s:8:\"key_desc\";s:22:\"Account #11 -> User #5\";}',1,'admin',0,'2012-11-24 03:27:37',11,NULL,NULL),(253,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:11;s:7:\"user_id\";i:5;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #11 -> User #5 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:27:37',11,NULL,NULL),(254,2,'users',5,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-24 03:28:02\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:28:02',1,NULL,NULL),(255,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-24 03:25:37\";s:2:\"is\";s:19:\"2012-11-24 03:28:19\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 03:28:19',1,NULL,NULL),(256,3,'agency',2,NULL,'a:9:{s:8:\"agencyid\";i:2;s:4:\"name\";s:11:\"Nguyen Tuan\";s:7:\"contact\";s:11:\"Nguyen Tuan\";s:5:\"email\";s:16:\"xvip87@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-23 09:03:41\";s:10:\"account_id\";i:5;s:8:\"key_desc\";s:11:\"Nguyen Tuan\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,NULL),(257,3,'affiliates',3,256,'a:16:{s:11:\"affiliateid\";i:3;s:8:\"agencyid\";i:2;s:4:\"name\";s:8:\"hihihehe\";s:8:\"mnemonic\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:8:\"hihihehe\";s:5:\"email\";s:16:\"hihihehe@abc.com\";s:7:\"website\";s:19:\"http://hihihehe.com\";s:7:\"updated\";s:19:\"2012-11-23 09:16:36\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:0:\"\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:8;s:8:\"key_desc\";s:8:\"hihihehe\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,8),(258,3,'zones',3,257,'a:35:{s:6:\"zoneid\";i:3;s:11:\"affiliateid\";i:3;s:8:\"zonename\";s:25:\"zone__http://hihihehe.com\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 09:16:36\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:0:\"\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:5:\"false\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:25:\"zone__http://hihihehe.com\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,8),(259,3,'accounts',5,NULL,'a:4:{s:10:\"account_id\";i:5;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:11:\"Nguyen Tuan\";s:8:\"key_desc\";s:11:\"Nguyen Tuan\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,NULL),(260,3,'account_user_permission_assoc',0,259,'a:5:{s:10:\"account_id\";i:5;s:7:\"user_id\";i:2;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #5 -> User #2 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,NULL),(261,3,'account_user_assoc',0,259,'a:4:{s:10:\"account_id\";i:5;s:7:\"user_id\";i:2;s:6:\"linked\";s:19:\"2012-11-23 16:03:41\";s:8:\"key_desc\";s:21:\"Account #5 -> User #2\";}',1,'admin',0,'2012-11-24 03:28:52',5,NULL,NULL),(262,3,'users',2,NULL,'a:14:{s:7:\"user_id\";i:2;s:12:\"contact_name\";s:11:\"Nguyen Tuan\";s:13:\"email_address\";s:16:\"xvip87@gmail.com\";s:8:\"username\";s:6:\"tuannv\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:5;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-23 16:03:41\";s:15:\"date_last_login\";s:19:\"2012-11-23 09:03:56\";s:13:\"email_updated\";s:19:\"2012-11-23 16:03:41\";s:8:\"key_desc\";s:6:\"tuannv\";}',1,'admin',0,'2012-11-24 03:28:52',1,NULL,NULL),(263,3,'agency',4,NULL,'a:9:{s:8:\"agencyid\";i:4;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-24 03:22:45\";s:10:\"account_id\";i:9;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:28:59',9,NULL,NULL),(264,3,'accounts',9,NULL,'a:4:{s:10:\"account_id\";i:9;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:28:59',9,NULL,NULL),(265,3,'account_user_permission_assoc',0,264,'a:5:{s:10:\"account_id\";i:9;s:7:\"user_id\";i:4;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #9 -> User #4 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:28:59',9,NULL,NULL),(266,3,'account_user_assoc',0,264,'a:4:{s:10:\"account_id\";i:9;s:7:\"user_id\";i:4;s:6:\"linked\";s:19:\"2012-11-24 10:22:45\";s:8:\"key_desc\";s:21:\"Account #9 -> User #4\";}',1,'admin',0,'2012-11-24 03:28:59',9,NULL,NULL),(267,2,'users',4,NULL,'a:2:{s:18:\"default_account_id\";a:2:{s:3:\"was\";i:9;s:2:\"is\";i:10;}s:8:\"key_desc\";s:6:\"tuanlc\";}',1,'admin',0,'2012-11-24 03:28:59',1,NULL,NULL),(268,3,'agency',3,NULL,'a:9:{s:8:\"agencyid\";i:3;s:4:\"name\";s:17:\"Truong Cong Thanh\";s:7:\"contact\";s:17:\"Truong Cong Thanh\";s:5:\"email\";s:15:\"thanhtc@eway.vn\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-23 09:06:31\";s:10:\"account_id\";i:6;s:8:\"key_desc\";s:17:\"Truong Cong Thanh\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,NULL),(269,3,'affiliates',2,268,'a:16:{s:11:\"affiliateid\";i:2;s:8:\"agencyid\";i:3;s:4:\"name\";s:6:\"AdFlex\";s:8:\"mnemonic\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:17:\"Truong Cong Thanh\";s:5:\"email\";s:15:\"thanh@adflex.vn\";s:7:\"website\";s:16:\"http://adflex.vn\";s:7:\"updated\";s:19:\"2012-11-23 09:12:16\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:2:\"VN\";s:15:\"oac_language_id\";i:12;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:7;s:8:\"key_desc\";s:6:\"AdFlex\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,7),(270,3,'zones',2,269,'a:35:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:2;s:8:\"zonename\";s:22:\"zone__http://adflex.vn\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-23 09:12:16\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:0:\"\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:5:\"false\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:22:\"zone__http://adflex.vn\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,7),(271,3,'accounts',6,NULL,'a:4:{s:10:\"account_id\";i:6;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:17:\"Truong Cong Thanh\";s:8:\"key_desc\";s:17:\"Truong Cong Thanh\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,NULL),(272,3,'account_user_permission_assoc',0,271,'a:5:{s:10:\"account_id\";i:6;s:7:\"user_id\";i:3;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:39:\"Account #6 -> User #3 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,NULL),(273,3,'account_user_assoc',0,271,'a:4:{s:10:\"account_id\";i:6;s:7:\"user_id\";i:3;s:6:\"linked\";s:19:\"2012-11-23 16:06:31\";s:8:\"key_desc\";s:21:\"Account #6 -> User #3\";}',1,'admin',0,'2012-11-24 03:29:02',6,NULL,NULL),(274,3,'users',3,NULL,'a:14:{s:7:\"user_id\";i:3;s:12:\"contact_name\";s:17:\"Truong Cong Thanh\";s:13:\"email_address\";s:15:\"thanhtc@eway.vn\";s:8:\"username\";s:7:\"thanhtc\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:6;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-23 16:06:31\";s:15:\"date_last_login\";s:19:\"2012-11-24 02:57:51\";s:13:\"email_updated\";s:19:\"2012-11-23 16:06:31\";s:8:\"key_desc\";s:7:\"thanhtc\";}',1,'admin',0,'2012-11-24 03:29:02',1,NULL,NULL),(275,3,'agency',5,NULL,'a:9:{s:8:\"agencyid\";i:5;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-24 03:27:22\";s:10:\"account_id\";i:10;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:29:05',10,NULL,NULL),(276,3,'accounts',10,NULL,'a:4:{s:10:\"account_id\";i:10;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:29:05',10,NULL,NULL),(277,3,'account_user_permission_assoc',0,276,'a:5:{s:10:\"account_id\";i:10;s:7:\"user_id\";i:4;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #10 -> User #4 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:29:05',10,NULL,NULL),(278,3,'account_user_assoc',0,276,'a:4:{s:10:\"account_id\";i:10;s:7:\"user_id\";i:4;s:6:\"linked\";s:19:\"2012-11-24 10:27:22\";s:8:\"key_desc\";s:22:\"Account #10 -> User #4\";}',1,'admin',0,'2012-11-24 03:29:05',10,NULL,NULL),(279,3,'users',4,NULL,'a:14:{s:7:\"user_id\";i:4;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:6:\"tuanlc\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:10;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:22:45\";s:15:\"date_last_login\";s:19:\"2012-11-24 03:22:59\";s:13:\"email_updated\";s:19:\"2012-11-24 10:22:45\";s:8:\"key_desc\";s:6:\"tuanlc\";}',1,'admin',0,'2012-11-24 03:29:05',1,NULL,NULL),(280,3,'agency',6,NULL,'a:9:{s:8:\"agencyid\";i:6;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-24 03:27:37\";s:10:\"account_id\";i:11;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:29:08',11,NULL,NULL),(281,3,'accounts',11,NULL,'a:4:{s:10:\"account_id\";i:11;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:29:08',11,NULL,NULL),(282,3,'account_user_permission_assoc',0,281,'a:5:{s:10:\"account_id\";i:11;s:7:\"user_id\";i:5;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #11 -> User #5 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:29:08',11,NULL,NULL),(283,3,'account_user_assoc',0,281,'a:4:{s:10:\"account_id\";i:11;s:7:\"user_id\";i:5;s:6:\"linked\";s:19:\"2012-11-24 10:27:37\";s:8:\"key_desc\";s:22:\"Account #11 -> User #5\";}',1,'admin',0,'2012-11-24 03:29:08',11,NULL,NULL),(284,3,'users',5,NULL,'a:14:{s:7:\"user_id\";i:5;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:8:\"tuaneway\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:11;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:27:37\";s:15:\"date_last_login\";s:19:\"2012-11-24 03:28:02\";s:13:\"email_updated\";s:19:\"2012-11-24 10:27:37\";s:8:\"key_desc\";s:8:\"tuaneway\";}',1,'admin',0,'2012-11-24 03:29:08',1,NULL,NULL),(285,1,'accounts',12,NULL,'a:4:{s:10:\"account_id\";i:12;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:52:31',12,NULL,NULL),(286,1,'agency',7,NULL,'a:9:{s:8:\"agencyid\";i:7;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 03:52:31\";s:10:\"account_id\";i:12;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:52:31',12,NULL,NULL),(287,1,'users',6,NULL,'a:14:{s:7:\"user_id\";i:6;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:8:\"tuaneway\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:12;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:52:31\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 10:52:31\";s:8:\"key_desc\";s:8:\"tuaneway\";}',1,'admin',0,'2012-11-24 03:52:31',1,NULL,NULL),(288,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:12;s:7:\"user_id\";i:6;s:6:\"linked\";s:19:\"2012-11-24 10:52:31\";s:8:\"key_desc\";s:22:\"Account #12 -> User #6\";}',1,'admin',0,'2012-11-24 03:52:31',12,NULL,NULL),(289,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:12;s:7:\"user_id\";i:6;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #12 -> User #6 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:52:31',12,NULL,NULL),(290,3,'agency',7,NULL,'a:9:{s:8:\"agencyid\";i:7;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:1:\"0\";s:7:\"updated\";s:19:\"2012-11-24 03:52:31\";s:10:\"account_id\";i:12;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:52:43',12,NULL,NULL),(291,3,'accounts',12,NULL,'a:4:{s:10:\"account_id\";i:12;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 03:52:43',12,NULL,NULL),(292,3,'account_user_permission_assoc',0,291,'a:5:{s:10:\"account_id\";i:12;s:7:\"user_id\";i:6;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #12 -> User #6 -> Permission #10\";}',1,'admin',0,'2012-11-24 03:52:43',12,NULL,NULL),(293,3,'account_user_assoc',0,291,'a:4:{s:10:\"account_id\";i:12;s:7:\"user_id\";i:6;s:6:\"linked\";s:19:\"2012-11-24 10:52:31\";s:8:\"key_desc\";s:22:\"Account #12 -> User #6\";}',1,'admin',0,'2012-11-24 03:52:43',12,NULL,NULL),(294,3,'users',6,NULL,'a:14:{s:7:\"user_id\";i:6;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:8:\"tuaneway\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:12;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 10:52:31\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 10:52:31\";s:8:\"key_desc\";s:8:\"tuaneway\";}',1,'admin',0,'2012-11-24 03:52:43',1,NULL,NULL),(295,1,'accounts',13,NULL,'a:4:{s:10:\"account_id\";i:13;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 04:06:47',13,NULL,NULL),(296,1,'agency',8,NULL,'a:9:{s:8:\"agencyid\";i:8;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 04:06:47\";s:10:\"account_id\";i:13;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 04:06:47',13,NULL,NULL),(297,1,'accounts',14,NULL,'a:4:{s:10:\"account_id\";i:14;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 04:06:47',1,14,NULL),(298,1,'clients',2,NULL,'a:17:{s:8:\"clientid\";i:2;s:8:\"agencyid\";i:8;s:10:\"clientname\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2012-11-24\";s:16:\"reportdeactivate\";s:1:\"f\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2012-11-24 04:06:47\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:14;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 04:06:47',13,14,NULL),(299,1,'users',7,NULL,'a:16:{s:7:\"user_id\";i:7;s:12:\"contact_name\";s:7:\"tuan lc\";s:13:\"email_address\";s:16:\"tuanlc@gmail.com\";s:8:\"username\";s:8:\"tuaneway\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:13;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 11:06:47\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 11:06:47\";s:12:\"user_address\";s:5:\"fsfas\";s:10:\"user_phone\";s:11:\"42343243242\";s:8:\"key_desc\";s:8:\"tuaneway\";}',1,'admin',0,'2012-11-24 04:06:47',1,NULL,NULL),(300,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:13;s:7:\"user_id\";i:7;s:6:\"linked\";s:19:\"2012-11-24 11:06:47\";s:8:\"key_desc\";s:22:\"Account #13 -> User #7\";}',1,'admin',0,'2012-11-24 04:06:47',13,NULL,NULL),(301,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:13;s:7:\"user_id\";i:7;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #13 -> User #7 -> Permission #10\";}',1,'admin',0,'2012-11-24 04:06:47',13,NULL,NULL),(302,2,'users',7,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-24 04:07:13\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 04:07:13',1,NULL,NULL),(303,1,'accounts',15,NULL,'a:4:{s:10:\"account_id\";i:15;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:5:\"Thanh\";s:8:\"key_desc\";s:5:\"Thanh\";}',1,'admin',0,'2012-11-24 06:07:24',15,NULL,NULL),(304,1,'agency',9,NULL,'a:9:{s:8:\"agencyid\";i:9;s:4:\"name\";s:5:\"Thanh\";s:7:\"contact\";s:5:\"Thanh\";s:5:\"email\";s:15:\"thanhtc@eway.vn\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 06:07:24\";s:10:\"account_id\";i:15;s:8:\"key_desc\";s:5:\"Thanh\";}',1,'admin',0,'2012-11-24 06:07:24',15,NULL,NULL),(305,1,'accounts',16,NULL,'a:4:{s:10:\"account_id\";i:16;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:5:\"Thanh\";s:8:\"key_desc\";s:5:\"Thanh\";}',1,'admin',0,'2012-11-24 06:07:24',1,16,NULL),(306,1,'clients',3,NULL,'a:17:{s:8:\"clientid\";i:3;s:8:\"agencyid\";i:9;s:10:\"clientname\";s:5:\"Thanh\";s:7:\"contact\";s:5:\"Thanh\";s:5:\"email\";s:15:\"thanhtc@eway.vn\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2012-11-24\";s:16:\"reportdeactivate\";s:1:\"f\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2012-11-24 06:07:24\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:16;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:5:\"Thanh\";}',1,'admin',0,'2012-11-24 06:07:24',15,16,NULL),(307,1,'users',8,NULL,'a:16:{s:7:\"user_id\";i:8;s:12:\"contact_name\";s:5:\"Thanh\";s:13:\"email_address\";s:15:\"thanhtc@eway.vn\";s:8:\"username\";s:7:\"thanhtc\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:4:\"null\";s:18:\"default_account_id\";i:15;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"true\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2012-11-24 13:07:24\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2012-11-24 13:07:24\";s:12:\"user_address\";s:0:\"\";s:10:\"user_phone\";s:0:\"\";s:8:\"key_desc\";s:7:\"thanhtc\";}',1,'admin',0,'2012-11-24 06:07:24',1,NULL,NULL),(308,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:15;s:7:\"user_id\";i:8;s:6:\"linked\";s:19:\"2012-11-24 13:07:24\";s:8:\"key_desc\";s:22:\"Account #15 -> User #8\";}',1,'admin',0,'2012-11-24 06:07:24',15,NULL,NULL),(309,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:15;s:7:\"user_id\";i:8;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #15 -> User #8 -> Permission #10\";}',1,'admin',0,'2012-11-24 06:07:24',15,NULL,NULL),(310,2,'users',8,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2012-11-24 06:07:31\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 06:07:31',1,NULL,NULL),(311,1,'campaigns',3,NULL,'a:37:{s:10:\"campaignid\";i:3;s:12:\"campaignname\";s:12:\"Thanh Test 1\";s:8:\"clientid\";i:3;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:5;s:6:\"weight\";i:0;s:17:\"target_impression\";i:10000;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:1000;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2012-11-24 06:10:30\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2012-11-23 17:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:8:\"key_desc\";s:12:\"Thanh Test 1\";}',8,'thanhtc',0,'2012-11-24 06:10:30',15,16,NULL),(312,1,'banners',3,NULL,'a:44:{s:8:\"bannerid\";i:3;s:10:\"campaignid\";i:3;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"ddbb8c5927366e8028d1c2c8ce7be911.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:6:\"_blank\";s:3:\"url\";s:17:\"http://toyota.com\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"ibet\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2012-11-24 06:11:06\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"ibet\";}',8,'thanhtc',0,'2012-11-24 06:11:06',15,16,NULL),(313,1,'ad_zone_assoc',3,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:3;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:3;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #3 -> Zone #0\";}',8,'thanhtc',0,'2012-11-24 06:11:06',15,16,NULL),(314,1,'accounts',17,NULL,'a:4:{s:10:\"account_id\";i:17;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:6:\"Adflex\";s:8:\"key_desc\";s:6:\"Adflex\";}',8,'thanhtc',0,'2012-11-24 06:11:40',1,NULL,17),(315,1,'affiliates',4,NULL,'a:16:{s:11:\"affiliateid\";i:4;s:8:\"agencyid\";i:9;s:4:\"name\";s:6:\"Adflex\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:5:\"Thanh\";s:5:\"email\";s:15:\"thanh@adflex.vn\";s:7:\"website\";s:16:\"http://adflex.vn\";s:7:\"updated\";s:19:\"2012-11-24 06:11:40\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:0:\"\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:17;s:8:\"key_desc\";s:6:\"Adflex\";}',8,'thanhtc',0,'2012-11-24 06:11:40',15,NULL,17),(316,1,'zones',4,NULL,'a:35:{s:6:\"zoneid\";i:4;s:11:\"affiliateid\";i:4;s:8:\"zonename\";s:22:\"zone__http://adflex.vn\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-24 06:11:40\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:4:\"null\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:22:\"zone__http://adflex.vn\";}',8,'thanhtc',0,'2012-11-24 06:11:40',15,NULL,17),(317,2,'campaigns',3,NULL,'a:6:{s:8:\"priority\";a:2:{s:3:\"was\";i:5;s:2:\"is\";i:-1;}s:17:\"target_impression\";a:2:{s:3:\"was\";i:10000;s:2:\"is\";i:0;}s:7:\"revenue\";a:2:{s:3:\"was\";i:1000;s:2:\"is\";i:1;}s:6:\"status\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:4;}s:8:\"key_desc\";s:12:\"Thanh Test 1\";s:8:\"clientid\";s:1:\"3\";}',8,'thanhtc',0,'2012-11-24 06:16:21',15,16,NULL),(318,2,'campaigns',3,NULL,'a:4:{s:6:\"weight\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:5;}s:6:\"status\";a:2:{s:3:\"was\";i:4;s:2:\"is\";i:0;}s:8:\"key_desc\";s:12:\"Thanh Test 1\";s:8:\"clientid\";s:1:\"3\";}',8,'thanhtc',0,'2012-11-24 06:16:36',15,16,NULL),(319,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-24 03:28:19\";s:2:\"is\";s:19:\"2012-11-24 06:17:26\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-24 06:17:26',1,NULL,NULL),(320,1,'campaigns',4,NULL,'a:37:{s:10:\"campaignid\";i:4;s:12:\"campaignname\";s:26:\"tuan lc - Default Campaign\";s:8:\"clientid\";i:2;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:-1;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:10;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2012-11-24 06:18:07\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2012-11-23 17:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:8:\"key_desc\";s:26:\"tuan lc - Default Campaign\";}',1,'admin',0,'2012-11-24 06:18:07',13,14,NULL),(321,1,'banners',4,NULL,'a:44:{s:8:\"bannerid\";i:4;s:10:\"campaignid\";i:4;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"d04592d4eaf1921c680192710018273e.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1280;s:6:\"height\";i:1024;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:14:\"http://abc.com\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:3:\"aaa\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2012-11-24 06:19:08\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:3:\"aaa\";}',1,'admin',0,'2012-11-24 06:19:08',13,14,NULL),(322,1,'ad_zone_assoc',4,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:4;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:4;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #4 -> Zone #0\";}',1,'admin',0,'2012-11-24 06:19:08',13,14,NULL),(323,2,'banners',4,NULL,'a:4:{s:5:\"width\";a:2:{s:3:\"was\";i:1280;s:2:\"is\";i:468;}s:6:\"height\";a:2:{s:3:\"was\";i:1024;s:2:\"is\";i:60;}s:8:\"key_desc\";s:3:\"aaa\";s:10:\"campaignid\";s:1:\"4\";}',1,'admin',0,'2012-11-24 06:19:23',13,14,NULL),(324,1,'accounts',18,NULL,'a:4:{s:10:\"account_id\";i:18;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:11:\"eway tuannv\";s:8:\"key_desc\";s:11:\"eway tuannv\";}',1,'admin',0,'2012-11-24 06:21:17',1,NULL,18),(325,1,'affiliates',5,NULL,'a:16:{s:11:\"affiliateid\";i:5;s:8:\"agencyid\";i:8;s:4:\"name\";s:11:\"eway tuannv\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:11:\"eway tuannv\";s:5:\"email\";s:14:\"tuannv@eway.vn\";s:7:\"website\";s:14:\"http://eway.vn\";s:7:\"updated\";s:19:\"2012-11-24 06:21:17\";s:13:\"an_website_id\";i:0;s:16:\"oac_country_code\";s:0:\"\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:13:\"as_website_id\";i:0;s:10:\"account_id\";i:18;s:8:\"key_desc\";s:11:\"eway tuannv\";}',1,'admin',0,'2012-11-24 06:21:17',13,NULL,18),(326,1,'zones',5,NULL,'a:35:{s:6:\"zoneid\";i:5;s:11:\"affiliateid\";i:5;s:8:\"zonename\";s:20:\"zone__http://eway.vn\";s:11:\"description\";s:16:\"eway description\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:12:\"eway comment\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2012-11-24 06:21:17\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:4:\"what\";s:4:\"null\";s:10:\"as_zone_id\";i:0;s:15:\"is_in_ad_direct\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:8:\"key_desc\";s:20:\"zone__http://eway.vn\";}',1,'admin',0,'2012-11-24 06:21:17',13,NULL,18),(327,1,'accounts',19,NULL,'a:4:{s:10:\"account_id\";i:19;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 07:39:20',19,NULL,NULL),(328,1,'agency',10,NULL,'a:9:{s:8:\"agencyid\";i:10;s:4:\"name\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:7:\"updated\";s:19:\"2012-11-24 07:39:20\";s:10:\"account_id\";i:19;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 07:39:20',19,NULL,NULL),(329,1,'accounts',20,NULL,'a:4:{s:10:\"account_id\";i:20;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:7:\"tuan lc\";s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 07:39:20',1,20,NULL),(330,1,'clients',4,NULL,'a:17:{s:8:\"clientid\";i:4;s:8:\"agencyid\";i:10;s:10:\"clientname\";s:7:\"tuan lc\";s:7:\"contact\";s:7:\"tuan lc\";s:5:\"email\";s:16:\"tuanlc@gmail.com\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2012-11-24\";s:16:\"reportdeactivate\";s:1:\"f\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2012-11-24 07:39:20\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:20;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:7:\"tuan lc\";}',1,'admin',0,'2012-11-24 07:39:20',19,20,NULL),(331,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:19;s:7:\"user_id\";i:7;s:6:\"linked\";s:19:\"2012-11-24 14:39:20\";s:8:\"key_desc\";s:22:\"Account #19 -> User #7\";}',1,'admin',0,'2012-11-24 07:39:20',19,NULL,NULL),(332,1,'account_user_permission_assoc',0,NULL,'a:5:{s:10:\"account_id\";i:19;s:7:\"user_id\";i:7;s:13:\"permission_id\";i:10;s:10:\"is_allowed\";s:4:\"true\";s:8:\"key_desc\";s:40:\"Account #19 -> User #7 -> Permission #10\";}',1,'admin',0,'2012-11-24 07:39:20',19,NULL,NULL),(333,2,'users',8,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-24 06:07:31\";s:2:\"is\";s:19:\"2012-11-26 02:51:03\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-26 02:51:04',1,NULL,NULL),(334,2,'users',8,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-26 02:51:03\";s:2:\"is\";s:19:\"2012-11-26 03:08:02\";}s:8:\"key_desc\";N;}',8,'thanhtc',0,'2012-11-26 03:08:02',1,NULL,NULL),(335,2,'users',8,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2012-11-26 03:08:02\";s:2:\"is\";s:19:\"2012-11-26 03:08:43\";}s:8:\"key_desc\";N;}',0,NULL,0,'2012-11-26 03:08:43',1,NULL,NULL);
/*!40000 ALTER TABLE `ox_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_banner_vast_element`
--

DROP TABLE IF EXISTS `ox_banner_vast_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_banner_vast_element` (
  `banner_vast_element_id` mediumint(9) NOT NULL,
  `banner_id` mediumint(9) NOT NULL,
  `vast_element_type` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `vast_video_id` varchar(100) collate utf8_unicode_ci default NULL,
  `vast_video_duration` mediumint(9) default NULL,
  `vast_video_delivery` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_video_type` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_video_bitrate` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_video_height` mediumint(9) default NULL,
  `vast_video_width` mediumint(9) default NULL,
  `vast_video_outgoing_filename` text collate utf8_unicode_ci,
  `vast_companion_banner_id` mediumint(9) default NULL,
  `vast_overlay_height` mediumint(9) default NULL,
  `vast_overlay_width` mediumint(9) default NULL,
  `vast_video_clickthrough_url` text collate utf8_unicode_ci,
  `vast_overlay_action` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_overlay_format` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_overlay_text_title` text collate utf8_unicode_ci,
  `vast_overlay_text_description` text collate utf8_unicode_ci,
  `vast_overlay_text_call` text collate utf8_unicode_ci,
  `vast_creative_type` varchar(20) collate utf8_unicode_ci default NULL,
  `vast_thirdparty_impression` text collate utf8_unicode_ci,
  KEY `ox_banner_vast_element_banner_vast_banner_vast_element_id` (`banner_vast_element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_banner_vast_element`
--

LOCK TABLES `ox_banner_vast_element` WRITE;
/*!40000 ALTER TABLE `ox_banner_vast_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_banner_vast_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_banners`
--

DROP TABLE IF EXISTS `ox_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_banners` (
  `bannerid` mediumint(9) NOT NULL auto_increment,
  `campaignid` mediumint(9) NOT NULL default '0',
  `contenttype` enum('gif','jpeg','png','html','swf','dcr','rpm','mov','txt') collate utf8_unicode_ci NOT NULL default 'gif',
  `pluginversion` mediumint(9) NOT NULL default '0',
  `storagetype` enum('sql','web','url','html','network','txt') collate utf8_unicode_ci NOT NULL default 'sql',
  `filename` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `imageurl` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `htmltemplate` text collate utf8_unicode_ci NOT NULL,
  `htmlcache` text collate utf8_unicode_ci NOT NULL,
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '1',
  `seq` tinyint(4) NOT NULL default '0',
  `target` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `url` text collate utf8_unicode_ci NOT NULL,
  `alt` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `statustext` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `bannertext` text collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `adserver` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `compiledlimitation` text collate utf8_unicode_ci NOT NULL,
  `acl_plugins` text collate utf8_unicode_ci,
  `append` text collate utf8_unicode_ci NOT NULL,
  `bannertype` tinyint(4) NOT NULL default '0',
  `alt_filename` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `alt_imageurl` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `alt_contenttype` enum('gif','jpeg','png') collate utf8_unicode_ci NOT NULL default 'gif',
  `comments` text collate utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `keyword` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `transparent` tinyint(1) NOT NULL default '0',
  `parameters` text collate utf8_unicode_ci,
  `an_banner_id` int(11) default NULL,
  `as_banner_id` int(11) default NULL,
  `status` int(11) NOT NULL default '0',
  `ad_direct_status` tinyint(4) NOT NULL default '0',
  `ad_direct_rejection_reason_id` tinyint(4) NOT NULL default '0',
  `ext_bannertype` varchar(255) collate utf8_unicode_ci default NULL,
  `prepend` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`bannerid`),
  KEY `ox_banners_campaignid` (`campaignid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_banners`
--

LOCK TABLES `ox_banners` WRITE;
/*!40000 ALTER TABLE `ox_banners` DISABLE KEYS */;
INSERT INTO `ox_banners` VALUES (1,1,'html',0,'html','','','','',-1,-1,1,0,'','','','','','OpenX Market ads served to opted in campaigns','',0,0,0,'',NULL,'',0,'','','gif',NULL,'2012-11-23 08:34:52','0000-00-00 00:00:00','',0,NULL,NULL,NULL,0,0,0,'market-optin-banner',''),(2,2,'html',0,'html','','','','',-1,-1,1,0,'','','','','','OpenX Market ads served to zones by default','',0,0,0,'',NULL,'',0,'','','gif',NULL,'2012-11-23 08:34:52','0000-00-00 00:00:00','',0,NULL,NULL,NULL,0,0,0,'market-optin-banner',''),(3,3,'jpeg',0,'web','ddbb8c5927366e8028d1c2c8ce7be911.jpg','','','',300,50,1,0,'_blank','http://toyota.com','','','','ibet','',0,0,0,'',NULL,'',0,'','','','','2012-11-24 06:11:06','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(4,4,'jpeg',0,'web','d04592d4eaf1921c680192710018273e.jpg','','','',468,60,1,0,'','http://abc.com','','','','aaa','',0,0,0,'',NULL,'',0,'','','','','2012-11-24 06:19:23','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,'');
/*!40000 ALTER TABLE `ox_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_campaigns`
--

DROP TABLE IF EXISTS `ox_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_campaigns` (
  `campaignid` mediumint(9) NOT NULL auto_increment,
  `campaignname` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `clientid` mediumint(9) NOT NULL default '0',
  `views` int(11) default '-1',
  `clicks` int(11) default '-1',
  `conversions` int(11) default '-1',
  `priority` int(11) NOT NULL default '0',
  `weight` tinyint(4) NOT NULL default '1',
  `target_impression` int(11) NOT NULL default '0',
  `target_click` int(11) NOT NULL default '0',
  `target_conversion` int(11) NOT NULL default '0',
  `anonymous` enum('t','f') collate utf8_unicode_ci NOT NULL default 'f',
  `companion` smallint(1) default '0',
  `comments` text collate utf8_unicode_ci,
  `revenue` decimal(10,4) default NULL,
  `revenue_type` smallint(6) default NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `an_campaign_id` int(11) default NULL,
  `as_campaign_id` int(11) default NULL,
  `status` int(11) NOT NULL default '0',
  `an_status` int(11) NOT NULL default '0',
  `as_reject_reason` int(11) NOT NULL default '0',
  `hosted_views` int(11) NOT NULL default '0',
  `hosted_clicks` int(11) NOT NULL default '0',
  `viewwindow` mediumint(9) NOT NULL default '0',
  `clickwindow` mediumint(9) NOT NULL default '0',
  `ecpm` decimal(10,4) default NULL,
  `min_impressions` int(11) NOT NULL default '0',
  `ecpm_enabled` tinyint(4) NOT NULL default '0',
  `activate_time` datetime default NULL,
  `expire_time` datetime default NULL,
  `type` tinyint(4) NOT NULL default '0',
  `show_capped_no_cookie` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`campaignid`),
  KEY `ox_campaigns_clientid` (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_campaigns`
--

LOCK TABLES `ox_campaigns` WRITE;
/*!40000 ALTER TABLE `ox_campaigns` DISABLE KEYS */;
INSERT INTO `ox_campaigns` VALUES (1,'OpenX Market ads served to opted in campaigns',1,-1,-1,-1,-3,1,0,0,0,'f',0,NULL,NULL,NULL,'2012-11-23 08:34:52',0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,1,0),(2,'OpenX Market ads served to zones by default',1,-1,-1,-1,-3,1,0,0,0,'f',0,NULL,NULL,NULL,'2012-11-23 08:34:52',0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,2,0),(3,'Thanh Test 1',3,-1,-1,-1,-1,5,0,0,0,'f',0,'','1.0000',1,'2012-11-24 06:16:36',0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,100,0,'2012-11-23 17:00:00',NULL,0,0),(4,'tuan lc - Default Campaign',2,-1,-1,-1,-1,1,0,0,0,'f',0,'','10.0000',1,'2012-11-24 06:18:07',0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,100,0,'2012-11-23 17:00:00',NULL,0,0);
/*!40000 ALTER TABLE `ox_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_campaigns_trackers`
--

DROP TABLE IF EXISTS `ox_campaigns_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_campaigns_trackers` (
  `campaign_trackerid` mediumint(9) NOT NULL auto_increment,
  `campaignid` mediumint(9) NOT NULL default '0',
  `trackerid` mediumint(9) NOT NULL default '0',
  `status` smallint(1) unsigned NOT NULL default '4',
  PRIMARY KEY  (`campaign_trackerid`),
  KEY `ox_campaigns_trackers_campaignid` (`campaignid`),
  KEY `ox_campaigns_trackers_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_campaigns_trackers`
--

LOCK TABLES `ox_campaigns_trackers` WRITE;
/*!40000 ALTER TABLE `ox_campaigns_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_campaigns_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_category`
--

DROP TABLE IF EXISTS `ox_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_category` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_category`
--

LOCK TABLES `ox_category` WRITE;
/*!40000 ALTER TABLE `ox_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_channel`
--

DROP TABLE IF EXISTS `ox_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_channel` (
  `channelid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `affiliateid` mediumint(9) NOT NULL default '0',
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `compiledlimitation` text collate utf8_unicode_ci NOT NULL,
  `acl_plugins` text collate utf8_unicode_ci,
  `active` smallint(1) default NULL,
  `comments` text collate utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_channel`
--

LOCK TABLES `ox_channel` WRITE;
/*!40000 ALTER TABLE `ox_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_clients`
--

DROP TABLE IF EXISTS `ox_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_clients` (
  `clientid` mediumint(9) NOT NULL auto_increment,
  `agencyid` mediumint(9) NOT NULL default '0',
  `clientname` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `contact` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `report` enum('t','f') collate utf8_unicode_ci NOT NULL default 't',
  `reportinterval` mediumint(9) NOT NULL default '7',
  `reportlastdate` date NOT NULL default '0000-00-00',
  `reportdeactivate` enum('t','f') collate utf8_unicode_ci NOT NULL default 't',
  `comments` text collate utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `an_adnetwork_id` int(11) default NULL,
  `as_advertiser_id` int(11) default NULL,
  `account_id` mediumint(9) default NULL,
  `advertiser_limitation` tinyint(1) NOT NULL default '0',
  `type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`clientid`),
  UNIQUE KEY `ox_clients_account_id` (`account_id`),
  KEY `ox_clients_agencyid_type` (`agencyid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_clients`
--

LOCK TABLES `ox_clients` WRITE;
/*!40000 ALTER TABLE `ox_clients` DISABLE KEYS */;
INSERT INTO `ox_clients` VALUES (1,1,'OpenX Market Advertiser','OpenX Market Advertiser','','t',7,'0000-00-00','f',NULL,'2012-11-23 08:34:52',NULL,NULL,3,0,1),(2,8,'tuan lc','tuan lc','tuanlc@gmail.com','f',7,'2012-11-24','f','','2012-11-24 04:06:47',NULL,NULL,14,0,0),(3,9,'Thanh','Thanh','thanhtc@eway.vn','f',7,'2012-11-24','f','','2012-11-24 06:07:24',NULL,NULL,16,0,0),(4,10,'tuan lc','tuan lc','tuanlc@gmail.com','f',7,'2012-11-24','f','','2012-11-24 07:39:20',NULL,NULL,20,0,0);
/*!40000 ALTER TABLE `ox_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_a`
--

DROP TABLE IF EXISTS `ox_data_bkt_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_a` (
  `server_conv_id` bigint(20) NOT NULL auto_increment,
  `server_ip` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `tracker_id` mediumint(9) NOT NULL,
  `date_time` datetime NOT NULL,
  `action_date_time` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `ip_address` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `action` int(10) default NULL,
  `window` int(10) default NULL,
  `status` int(10) default NULL,
  PRIMARY KEY  (`server_conv_id`,`server_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_a`
--

LOCK TABLES `ox_data_bkt_a` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_bkt_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_a_var`
--

DROP TABLE IF EXISTS `ox_data_bkt_a_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_a_var` (
  `server_conv_id` bigint(20) NOT NULL auto_increment,
  `server_ip` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `tracker_variable_id` mediumint(9) NOT NULL,
  `value` text collate utf8_unicode_ci,
  `date_time` datetime NOT NULL,
  PRIMARY KEY  (`server_conv_id`,`server_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_a_var`
--

LOCK TABLES `ox_data_bkt_a_var` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_a_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_bkt_a_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_c`
--

DROP TABLE IF EXISTS `ox_data_bkt_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_c` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_c`
--

LOCK TABLES `ox_data_bkt_c` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_bkt_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_m`
--

DROP TABLE IF EXISTS `ox_data_bkt_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_m` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_m`
--

LOCK TABLES `ox_data_bkt_m` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_m` DISABLE KEYS */;
INSERT INTO `ox_data_bkt_m` VALUES ('2012-11-25 01:00:00',4,4,1);
/*!40000 ALTER TABLE `ox_data_bkt_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_r`
--

DROP TABLE IF EXISTS `ox_data_bkt_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_r` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_r`
--

LOCK TABLES `ox_data_bkt_r` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_bkt_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_bkt_vast_e`
--

DROP TABLE IF EXISTS `ox_data_bkt_vast_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_bkt_vast_e` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`interval_start`,`creative_id`,`zone_id`,`vast_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_bkt_vast_e`
--

LOCK TABLES `ox_data_bkt_vast_e` WRITE;
/*!40000 ALTER TABLE `ox_data_bkt_vast_e` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_bkt_vast_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_intermediate_ad`
--

DROP TABLE IF EXISTS `ox_data_intermediate_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_intermediate_ad` (
  `data_intermediate_ad_id` bigint(20) NOT NULL auto_increment,
  `date_time` datetime NOT NULL,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL default '0',
  `impressions` int(10) unsigned NOT NULL default '0',
  `clicks` int(10) unsigned NOT NULL default '0',
  `conversions` int(10) unsigned NOT NULL default '0',
  `total_basket_value` decimal(10,4) NOT NULL default '0.0000',
  `total_num_items` int(11) NOT NULL default '0',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_intermediate_ad_id`),
  KEY `ox_data_intermediate_ad_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `ox_data_intermediate_ad_zone_id_date_time` (`zone_id`,`date_time`),
  KEY `ox_data_intermediate_ad_date_time` (`date_time`),
  KEY `ox_data_intermediate_ad_interval_start` (`interval_start`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_intermediate_ad`
--

LOCK TABLES `ox_data_intermediate_ad` WRITE;
/*!40000 ALTER TABLE `ox_data_intermediate_ad` DISABLE KEYS */;
INSERT INTO `ox_data_intermediate_ad` VALUES (1,'2012-11-23 09:00:00',60,129,'2012-11-23 09:00:00','2012-11-23 09:59:59',0,0,3,0,2,0,0,'0.0000',0,'2012-11-24 07:10:59'),(2,'2012-11-24 07:00:00',60,151,'2012-11-24 07:00:00','2012-11-24 07:59:59',4,0,4,0,1,1,0,'0.0000',0,'2012-11-25 01:59:31');
/*!40000 ALTER TABLE `ox_data_intermediate_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_intermediate_ad_connection`
--

DROP TABLE IF EXISTS `ox_data_intermediate_ad_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_intermediate_ad_connection` (
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL auto_increment,
  `server_raw_ip` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `viewer_id` varchar(32) collate utf8_unicode_ci default NULL,
  `viewer_session_id` varchar(32) collate utf8_unicode_ci default NULL,
  `tracker_date_time` datetime NOT NULL,
  `connection_date_time` datetime default NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `tracker_channel` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_channel` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `connection_channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `tracker_language` varchar(13) collate utf8_unicode_ci default NULL,
  `connection_language` varchar(13) collate utf8_unicode_ci default NULL,
  `tracker_ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `connection_ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `tracker_host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_country` char(2) collate utf8_unicode_ci default NULL,
  `connection_country` char(2) collate utf8_unicode_ci default NULL,
  `tracker_https` int(10) unsigned default NULL,
  `connection_https` int(10) unsigned default NULL,
  `tracker_domain` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_domain` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_page` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_page` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_query` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_query` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_referer` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_referer` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `connection_user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `tracker_os` varchar(32) collate utf8_unicode_ci default NULL,
  `connection_os` varchar(32) collate utf8_unicode_ci default NULL,
  `tracker_browser` varchar(32) collate utf8_unicode_ci default NULL,
  `connection_browser` varchar(32) collate utf8_unicode_ci default NULL,
  `connection_action` int(10) unsigned default NULL,
  `connection_window` int(10) unsigned default NULL,
  `connection_status` int(10) unsigned NOT NULL default '4',
  `inside_window` tinyint(1) NOT NULL default '0',
  `comments` text collate utf8_unicode_ci,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_intermediate_ad_connection_id`),
  KEY `ox_data_intermediate_ad_connection_tracker_date_time` (`tracker_date_time`),
  KEY `ox_data_intermediate_ad_connection_tracker_id` (`tracker_id`),
  KEY `ox_data_intermediate_ad_connection_ad_id` (`ad_id`),
  KEY `ox_data_intermediate_ad_connection_zone_id` (`zone_id`),
  KEY `ox_data_intermediate_ad_connection_viewer_id` (`viewer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_intermediate_ad_connection`
--

LOCK TABLES `ox_data_intermediate_ad_connection` WRITE;
/*!40000 ALTER TABLE `ox_data_intermediate_ad_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_intermediate_ad_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_intermediate_ad_variable_value`
--

DROP TABLE IF EXISTS `ox_data_intermediate_ad_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_intermediate_ad_variable_value` (
  `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL auto_increment,
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `tracker_variable_id` int(11) NOT NULL,
  `value` varchar(50) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`data_intermediate_ad_variable_value_id`),
  KEY `ox_data_intermediate_ad_variable_value_data_intermediate_ad_con` (`data_intermediate_ad_connection_id`),
  KEY `ox_data_intermediate_ad_variable_value_tracker_variable_id` (`tracker_variable_id`),
  KEY `ox_data_intermediate_ad_variable_value_tracker_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_intermediate_ad_variable_value`
--

LOCK TABLES `ox_data_intermediate_ad_variable_value` WRITE;
/*!40000 ALTER TABLE `ox_data_intermediate_ad_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_intermediate_ad_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_raw_ad_click`
--

DROP TABLE IF EXISTS `ox_data_raw_ad_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_raw_ad_click` (
  `viewer_id` varchar(32) collate utf8_unicode_ci default NULL,
  `viewer_session_id` varchar(32) collate utf8_unicode_ci default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) collate utf8_unicode_ci default NULL,
  `channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `language` varchar(32) collate utf8_unicode_ci default NULL,
  `ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `country` char(2) collate utf8_unicode_ci default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) collate utf8_unicode_ci default NULL,
  `page` varchar(255) collate utf8_unicode_ci default NULL,
  `query` varchar(255) collate utf8_unicode_ci default NULL,
  `referer` varchar(255) collate utf8_unicode_ci default NULL,
  `search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `os` varchar(32) collate utf8_unicode_ci default NULL,
  `browser` varchar(32) collate utf8_unicode_ci default NULL,
  `max_https` tinyint(1) default NULL,
  `geo_region` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_city` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_postal_code` varchar(10) collate utf8_unicode_ci default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_area_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_organisation` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_netspeed` varchar(20) collate utf8_unicode_ci default NULL,
  `geo_continent` varchar(13) collate utf8_unicode_ci default NULL,
  KEY `ox_data_raw_ad_click_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_click_date_time` (`date_time`),
  KEY `ox_data_raw_ad_click_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_click_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_raw_ad_click`
--

LOCK TABLES `ox_data_raw_ad_click` WRITE;
/*!40000 ALTER TABLE `ox_data_raw_ad_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_raw_ad_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_raw_ad_impression`
--

DROP TABLE IF EXISTS `ox_data_raw_ad_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_raw_ad_impression` (
  `viewer_id` varchar(32) collate utf8_unicode_ci default NULL,
  `viewer_session_id` varchar(32) collate utf8_unicode_ci default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) collate utf8_unicode_ci default NULL,
  `channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `language` varchar(32) collate utf8_unicode_ci default NULL,
  `ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `country` char(2) collate utf8_unicode_ci default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) collate utf8_unicode_ci default NULL,
  `page` varchar(255) collate utf8_unicode_ci default NULL,
  `query` varchar(255) collate utf8_unicode_ci default NULL,
  `referer` varchar(255) collate utf8_unicode_ci default NULL,
  `search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `os` varchar(32) collate utf8_unicode_ci default NULL,
  `browser` varchar(32) collate utf8_unicode_ci default NULL,
  `max_https` tinyint(1) default NULL,
  `geo_region` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_city` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_postal_code` varchar(10) collate utf8_unicode_ci default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_area_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_organisation` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_netspeed` varchar(20) collate utf8_unicode_ci default NULL,
  `geo_continent` varchar(13) collate utf8_unicode_ci default NULL,
  KEY `ox_data_raw_ad_impression_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_impression_date_time` (`date_time`),
  KEY `ox_data_raw_ad_impression_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_impression_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_raw_ad_impression`
--

LOCK TABLES `ox_data_raw_ad_impression` WRITE;
/*!40000 ALTER TABLE `ox_data_raw_ad_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_raw_ad_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_raw_ad_request`
--

DROP TABLE IF EXISTS `ox_data_raw_ad_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_raw_ad_request` (
  `viewer_id` varchar(32) collate utf8_unicode_ci default NULL,
  `viewer_session_id` varchar(32) collate utf8_unicode_ci default NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) collate utf8_unicode_ci default NULL,
  `channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `language` varchar(32) collate utf8_unicode_ci default NULL,
  `ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `https` tinyint(1) default NULL,
  `domain` varchar(255) collate utf8_unicode_ci default NULL,
  `page` varchar(255) collate utf8_unicode_ci default NULL,
  `query` varchar(255) collate utf8_unicode_ci default NULL,
  `referer` varchar(255) collate utf8_unicode_ci default NULL,
  `search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `os` varchar(32) collate utf8_unicode_ci default NULL,
  `browser` varchar(32) collate utf8_unicode_ci default NULL,
  `max_https` tinyint(1) default NULL,
  KEY `ox_data_raw_ad_request_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_ad_request_date_time` (`date_time`),
  KEY `ox_data_raw_ad_request_ad_id` (`ad_id`),
  KEY `ox_data_raw_ad_request_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_raw_ad_request`
--

LOCK TABLES `ox_data_raw_ad_request` WRITE;
/*!40000 ALTER TABLE `ox_data_raw_ad_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_raw_ad_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_raw_tracker_impression`
--

DROP TABLE IF EXISTS `ox_data_raw_tracker_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_raw_tracker_impression` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL auto_increment,
  `server_raw_ip` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `viewer_id` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `viewer_session_id` varchar(32) collate utf8_unicode_ci default NULL,
  `date_time` datetime NOT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) collate utf8_unicode_ci default NULL,
  `channel_ids` varchar(64) collate utf8_unicode_ci default NULL,
  `language` varchar(32) collate utf8_unicode_ci default NULL,
  `ip_address` varchar(16) collate utf8_unicode_ci default NULL,
  `host_name` varchar(255) collate utf8_unicode_ci default NULL,
  `country` char(2) collate utf8_unicode_ci default NULL,
  `https` int(10) unsigned default NULL,
  `domain` varchar(255) collate utf8_unicode_ci default NULL,
  `page` varchar(255) collate utf8_unicode_ci default NULL,
  `query` varchar(255) collate utf8_unicode_ci default NULL,
  `referer` varchar(255) collate utf8_unicode_ci default NULL,
  `search_term` varchar(255) collate utf8_unicode_ci default NULL,
  `user_agent` varchar(255) collate utf8_unicode_ci default NULL,
  `os` varchar(32) collate utf8_unicode_ci default NULL,
  `browser` varchar(32) collate utf8_unicode_ci default NULL,
  `max_https` int(10) unsigned default NULL,
  `geo_region` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_city` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_postal_code` varchar(10) collate utf8_unicode_ci default NULL,
  `geo_latitude` decimal(8,4) default NULL,
  `geo_longitude` decimal(8,4) default NULL,
  `geo_dma_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_area_code` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_organisation` varchar(50) collate utf8_unicode_ci default NULL,
  `geo_netspeed` varchar(20) collate utf8_unicode_ci default NULL,
  `geo_continent` varchar(13) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`server_raw_tracker_impression_id`,`server_raw_ip`),
  KEY `ox_data_raw_tracker_impression_viewer_id` (`viewer_id`),
  KEY `ox_data_raw_tracker_impression_date_time` (`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_raw_tracker_impression`
--

LOCK TABLES `ox_data_raw_tracker_impression` WRITE;
/*!40000 ALTER TABLE `ox_data_raw_tracker_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_raw_tracker_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_raw_tracker_variable_value`
--

DROP TABLE IF EXISTS `ox_data_raw_tracker_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_raw_tracker_variable_value` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  `tracker_variable_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `value` varchar(50) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_raw_tracker_variable_value`
--

LOCK TABLES `ox_data_raw_tracker_variable_value` WRITE;
/*!40000 ALTER TABLE `ox_data_raw_tracker_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_raw_tracker_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_summary_ad_hourly`
--

DROP TABLE IF EXISTS `ox_data_summary_ad_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_summary_ad_hourly` (
  `data_summary_ad_hourly_id` bigint(20) NOT NULL auto_increment,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL default '0',
  `impressions` int(10) unsigned NOT NULL default '0',
  `clicks` int(10) unsigned NOT NULL default '0',
  `conversions` int(10) unsigned NOT NULL default '0',
  `total_basket_value` decimal(10,4) default NULL,
  `total_num_items` int(11) default NULL,
  `total_revenue` decimal(10,4) default NULL,
  `total_cost` decimal(10,4) default NULL,
  `total_techcost` decimal(10,4) default NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`data_summary_ad_hourly_id`),
  KEY `ox_data_summary_ad_hourly_date_time` (`date_time`),
  KEY `ox_data_summary_ad_hourly_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `ox_data_summary_ad_hourly_zone_id_date_time` (`zone_id`,`date_time`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_summary_ad_hourly`
--

LOCK TABLES `ox_data_summary_ad_hourly` WRITE;
/*!40000 ALTER TABLE `ox_data_summary_ad_hourly` DISABLE KEYS */;
INSERT INTO `ox_data_summary_ad_hourly` VALUES (1,'2012-11-23 09:00:00',0,0,3,0,2,0,0,'0.0000',0,NULL,NULL,NULL,'2012-11-24 07:11:00'),(2,'2012-11-24 07:00:00',4,0,4,0,1,1,0,'0.0000',0,'0.0100',NULL,NULL,'2012-11-25 01:59:32');
/*!40000 ALTER TABLE `ox_data_summary_ad_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_summary_ad_zone_assoc`
--

DROP TABLE IF EXISTS `ox_data_summary_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_summary_ad_zone_assoc` (
  `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL auto_increment,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `required_impressions` int(10) unsigned NOT NULL,
  `requested_impressions` int(10) unsigned NOT NULL,
  `priority` double NOT NULL,
  `priority_factor` double default NULL,
  `priority_factor_limited` smallint(6) NOT NULL default '0',
  `past_zone_traffic_fraction` double default NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `expired` datetime default NULL,
  `expired_by` int(10) unsigned default NULL,
  `to_be_delivered` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`data_summary_ad_zone_assoc_id`),
  KEY `ox_data_summary_ad_zone_assoc_interval_start` (`interval_start`),
  KEY `ox_data_summary_ad_zone_assoc_interval_end` (`interval_end`),
  KEY `ox_data_summary_ad_zone_assoc_ad_id` (`ad_id`),
  KEY `ox_data_summary_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_data_summary_ad_zone_assoc_expired` (`expired`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_summary_ad_zone_assoc`
--

LOCK TABLES `ox_data_summary_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `ox_data_summary_ad_zone_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_summary_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_summary_channel_daily`
--

DROP TABLE IF EXISTS `ox_data_summary_channel_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_summary_channel_daily` (
  `data_summary_channel_daily_id` bigint(20) NOT NULL auto_increment,
  `day` date NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned NOT NULL default '0',
  `actual_impressions` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`data_summary_channel_daily_id`),
  KEY `ox_data_summary_channel_daily_day` (`day`),
  KEY `ox_data_summary_channel_daily_channel_id` (`channel_id`),
  KEY `ox_data_summary_channel_daily_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_summary_channel_daily`
--

LOCK TABLES `ox_data_summary_channel_daily` WRITE;
/*!40000 ALTER TABLE `ox_data_summary_channel_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_summary_channel_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_data_summary_zone_impression_history`
--

DROP TABLE IF EXISTS `ox_data_summary_zone_impression_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_data_summary_zone_impression_history` (
  `data_summary_zone_impression_history_id` bigint(20) NOT NULL auto_increment,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned default NULL,
  `actual_impressions` int(10) unsigned default NULL,
  `est` smallint(6) default NULL,
  PRIMARY KEY  (`data_summary_zone_impression_history_id`),
  KEY `ox_data_summary_zone_impression_history_operation_interval_id` (`operation_interval_id`),
  KEY `ox_data_summary_zone_impression_history_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_data_summary_zone_impression_history`
--

LOCK TABLES `ox_data_summary_zone_impression_history` WRITE;
/*!40000 ALTER TABLE `ox_data_summary_zone_impression_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_data_summary_zone_impression_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_database_action`
--

DROP TABLE IF EXISTS `ox_database_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_database_action` (
  `database_action_id` int(10) unsigned NOT NULL auto_increment,
  `upgrade_action_id` int(10) unsigned default '0',
  `schema_name` varchar(64) collate utf8_unicode_ci default NULL,
  `version` int(11) NOT NULL,
  `timing` int(2) NOT NULL,
  `action` int(2) NOT NULL,
  `info1` varchar(255) collate utf8_unicode_ci default NULL,
  `info2` varchar(255) collate utf8_unicode_ci default NULL,
  `tablename` varchar(64) collate utf8_unicode_ci default NULL,
  `tablename_backup` varchar(64) collate utf8_unicode_ci default NULL,
  `table_backup_schema` text collate utf8_unicode_ci,
  `updated` datetime default NULL,
  PRIMARY KEY  (`database_action_id`),
  KEY `ox_database_action_upgrade_action_id` (`upgrade_action_id`,`database_action_id`),
  KEY `ox_database_action_schema_version_timing_action` (`schema_name`,`version`,`timing`,`action`),
  KEY `ox_database_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_database_action`
--

LOCK TABLES `ox_database_action` WRITE;
/*!40000 ALTER TABLE `ox_database_action` DISABLE KEYS */;
INSERT INTO `ox_database_action` VALUES (1,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_c',NULL,NULL,'2012-11-23 08:34:47'),(2,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_m',NULL,NULL,'2012-11-23 08:34:47'),(3,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_r',NULL,NULL,'2012-11-23 08:34:47'),(4,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a',NULL,NULL,'2012-11-23 08:34:47'),(5,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a_var',NULL,NULL,'2012-11-23 08:34:47'),(6,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_advertiser',NULL,NULL,'2012-11-23 08:34:49'),(7,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_assoc_data',NULL,NULL,'2012-11-23 08:34:49'),(8,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_campaign_pref',NULL,NULL,'2012-11-23 08:34:49'),(9,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_general_pref',NULL,NULL,'2012-11-23 08:34:49'),(10,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_plugin_variable',NULL,NULL,'2012-11-23 08:34:49'),(11,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_setting',NULL,NULL,'2012-11-23 08:34:49'),(12,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_stats',NULL,NULL,'2012-11-23 08:34:49'),(13,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_web_stats',NULL,NULL,'2012-11-23 08:34:49'),(14,30,'oxMarket',6,0,59,'CREATE SUCCEEDED',NULL,'ext_market_website_pref',NULL,NULL,'2012-11-23 08:34:49'),(15,36,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'banner_vast_element',NULL,NULL,'2012-11-23 08:34:57'),(16,36,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_vast_e',NULL,NULL,'2012-11-23 08:34:57'),(17,36,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'stats_vast',NULL,NULL,'2012-11-23 08:34:57');
/*!40000 ALTER TABLE `ox_database_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_advertiser`
--

DROP TABLE IF EXISTS `ox_ext_market_advertiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_advertiser` (
  `market_advertiser_id` char(36) collate utf8_unicode_ci NOT NULL default '',
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  KEY `ox_ext_market_advertiser_id_pkey` (`market_advertiser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_advertiser`
--

LOCK TABLES `ox_ext_market_advertiser` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_advertiser` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ext_market_advertiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_assoc_data`
--

DROP TABLE IF EXISTS `ox_ext_market_assoc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_assoc_data` (
  `account_id` mediumint(9) NOT NULL,
  `publisher_account_id` varchar(36) collate utf8_unicode_ci NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0',
  `api_key` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_assoc_data`
--

LOCK TABLES `ox_ext_market_assoc_data` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_assoc_data` DISABLE KEYS */;
INSERT INTO `ox_ext_market_assoc_data` VALUES (1,'474409ee-5c31-1830-e03b-3f7da031f3e0',0,'0986565687114ea514466975070c4e4df9471e5157126e503865417731926461');
/*!40000 ALTER TABLE `ox_ext_market_assoc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_campaign_pref`
--

DROP TABLE IF EXISTS `ox_ext_market_campaign_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_campaign_pref` (
  `campaignid` mediumint(9) NOT NULL default '0',
  `is_enabled` smallint(1) default '0',
  `floor_price` decimal(10,4) default NULL,
  PRIMARY KEY  (`campaignid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_campaign_pref`
--

LOCK TABLES `ox_ext_market_campaign_pref` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_campaign_pref` DISABLE KEYS */;
INSERT INTO `ox_ext_market_campaign_pref` VALUES (2,1,'0.0000');
/*!40000 ALTER TABLE `ox_ext_market_campaign_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_general_pref`
--

DROP TABLE IF EXISTS `ox_ext_market_general_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_general_pref` (
  `account_id` mediumint(9) NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `value` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`account_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_general_pref`
--

LOCK TABLES `ox_ext_market_general_pref` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_general_pref` DISABLE KEYS */;
INSERT INTO `ox_ext_market_general_pref` VALUES (1,'brandingKey','openx');
/*!40000 ALTER TABLE `ox_ext_market_general_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_plugin_variable`
--

DROP TABLE IF EXISTS `ox_ext_market_plugin_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_plugin_variable` (
  `user_id` mediumint(9) NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `value` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`user_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_plugin_variable`
--

LOCK TABLES `ox_ext_market_plugin_variable` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_plugin_variable` DISABLE KEYS */;
INSERT INTO `ox_ext_market_plugin_variable` VALUES (1,'advertiser_index_market_info_shown_to_user','1');
/*!40000 ALTER TABLE `ox_ext_market_plugin_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_setting`
--

DROP TABLE IF EXISTS `ox_ext_market_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_setting` (
  `market_setting_id` mediumint(9) NOT NULL,
  `market_setting_type_id` mediumint(9) NOT NULL,
  `owner_type_id` mediumint(9) NOT NULL,
  `owner_id` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_setting`
--

LOCK TABLES `ox_ext_market_setting` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ext_market_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_stats`
--

DROP TABLE IF EXISTS `ox_ext_market_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_stats` (
  `date_time` datetime NOT NULL,
  `market_advertiser_id` char(36) collate utf8_unicode_ci default NULL,
  `website_id` mediumint(9) NOT NULL,
  `ad_width` smallint(6) NOT NULL,
  `ad_height` smallint(6) NOT NULL,
  `zone_id` mediumint(9) default NULL,
  `ad_id` mediumint(9) default NULL,
  `impressions` int(11) NOT NULL,
  `clicks` int(11) default NULL,
  `requests` int(11) default NULL,
  `revenue` decimal(17,5) NOT NULL,
  UNIQUE KEY `ox_ext_market_stats_unique_row` (`date_time`,`website_id`,`zone_id`,`ad_id`,`ad_width`,`ad_height`,`market_advertiser_id`),
  KEY `ox_ext_market_stats_date_time` (`date_time`),
  KEY `ox_ext_market_stats_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `ox_ext_market_stats_zone_id_date_time` (`zone_id`,`date_time`),
  KEY `ox_ext_market_stats_website_id_date_time` (`website_id`,`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_stats`
--

LOCK TABLES `ox_ext_market_stats` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ext_market_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_web_stats`
--

DROP TABLE IF EXISTS `ox_ext_market_web_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_web_stats` (
  `p_website_id` char(36) collate utf8_unicode_ci NOT NULL default '',
  `impressions` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `revenue` decimal(17,5) default NULL,
  `width` smallint(6) default NULL,
  `height` smallint(6) default NULL,
  KEY `ox_ext_market_web_stats_website_id` (`p_website_id`),
  KEY `ox_ext_market_web_stats_date_time` (`date_time`),
  KEY `ox_ext_market_web_stats_ad_size` (`width`,`height`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_web_stats`
--

LOCK TABLES `ox_ext_market_web_stats` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_web_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ext_market_web_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_ext_market_website_pref`
--

DROP TABLE IF EXISTS `ox_ext_market_website_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_ext_market_website_pref` (
  `affiliateid` mediumint(9) NOT NULL default '0',
  `website_id` char(36) collate utf8_unicode_ci NOT NULL default '',
  `is_url_synchronized` enum('t','f') collate utf8_unicode_ci default 't',
  PRIMARY KEY  (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_ext_market_website_pref`
--

LOCK TABLES `ox_ext_market_website_pref` WRITE;
/*!40000 ALTER TABLE `ox_ext_market_website_pref` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_ext_market_website_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_images`
--

DROP TABLE IF EXISTS `ox_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_images` (
  `filename` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `contents` longblob NOT NULL,
  `t_stamp` datetime default NULL,
  PRIMARY KEY  (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_images`
--

LOCK TABLES `ox_images` WRITE;
/*!40000 ALTER TABLE `ox_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_log_maintenance_forecasting`
--

DROP TABLE IF EXISTS `ox_log_maintenance_forecasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_log_maintenance_forecasting` (
  `log_maintenance_forecasting_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_forecasting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_log_maintenance_forecasting`
--

LOCK TABLES `ox_log_maintenance_forecasting` WRITE;
/*!40000 ALTER TABLE `ox_log_maintenance_forecasting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_log_maintenance_forecasting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_log_maintenance_priority`
--

DROP TABLE IF EXISTS `ox_log_maintenance_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_log_maintenance_priority` (
  `log_maintenance_priority_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `run_type` tinyint(3) unsigned NOT NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_priority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_log_maintenance_priority`
--

LOCK TABLES `ox_log_maintenance_priority` WRITE;
/*!40000 ALTER TABLE `ox_log_maintenance_priority` DISABLE KEYS */;
INSERT INTO `ox_log_maintenance_priority` VALUES (1,'2012-11-23 09:55:37','2012-11-23 09:55:37',60,0,1,NULL),(2,'2012-11-23 09:55:37','2012-11-23 09:55:37',60,0,2,NULL),(3,'2012-11-23 09:55:37','2012-11-23 09:55:37',60,0,2,NULL),(4,'2012-11-24 03:28:56','2012-11-24 03:28:56',60,0,1,NULL),(5,'2012-11-24 03:28:56','2012-11-24 03:28:56',60,0,2,NULL),(6,'2012-11-24 03:28:56','2012-11-24 03:28:56',60,0,2,NULL),(7,'2012-11-24 03:29:01','2012-11-24 03:29:01',60,0,1,NULL),(8,'2012-11-24 03:29:01','2012-11-24 03:29:01',60,0,2,NULL),(9,'2012-11-24 03:29:01','2012-11-24 03:29:01',60,0,2,NULL),(10,'2012-11-24 03:29:04','2012-11-24 03:29:04',60,0,1,NULL),(11,'2012-11-24 03:29:04','2012-11-24 03:29:04',60,0,2,NULL),(12,'2012-11-24 03:29:04','2012-11-24 03:29:04',60,0,2,NULL),(13,'2012-11-24 03:29:06','2012-11-24 03:29:07',60,1,1,NULL),(14,'2012-11-24 03:29:07','2012-11-24 03:29:07',60,0,2,NULL),(15,'2012-11-24 03:29:07','2012-11-24 03:29:07',60,0,2,NULL),(16,'2012-11-24 03:29:09','2012-11-24 03:29:09',60,0,1,NULL),(17,'2012-11-24 03:29:09','2012-11-24 03:29:09',60,0,2,NULL),(18,'2012-11-24 03:29:09','2012-11-24 03:29:09',60,0,2,NULL),(19,'2012-11-24 03:52:46','2012-11-24 03:52:46',60,0,1,NULL),(20,'2012-11-24 03:52:46','2012-11-24 03:52:47',60,1,2,NULL),(21,'2012-11-24 03:52:47','2012-11-24 03:52:47',60,0,2,NULL),(22,'2012-11-24 06:11:10','2012-11-24 06:11:10',60,0,1,NULL),(23,'2012-11-24 06:11:10','2012-11-24 06:11:10',60,0,2,NULL),(24,'2012-11-24 06:11:10','2012-11-24 06:11:10',60,0,2,NULL),(25,'2012-11-24 06:14:16','2012-11-24 06:14:16',60,0,1,NULL),(26,'2012-11-24 06:14:16','2012-11-24 06:14:16',60,0,2,NULL),(27,'2012-11-24 06:14:16','2012-11-24 06:14:16',60,0,2,NULL),(28,'2012-11-24 06:16:24','2012-11-24 06:16:24',60,0,1,NULL),(29,'2012-11-24 06:16:24','2012-11-24 06:16:24',60,0,2,NULL),(30,'2012-11-24 06:16:24','2012-11-24 06:16:24',60,0,2,NULL),(31,'2012-11-24 06:16:39','2012-11-24 06:16:39',60,0,1,NULL),(32,'2012-11-24 06:16:39','2012-11-24 06:16:39',60,0,2,NULL),(33,'2012-11-24 06:16:39','2012-11-24 06:16:39',60,0,2,NULL),(34,'2012-11-24 06:19:10','2012-11-24 06:19:10',60,0,1,NULL),(35,'2012-11-24 06:19:10','2012-11-24 06:19:10',60,0,2,NULL),(36,'2012-11-24 06:19:10','2012-11-24 06:19:10',60,0,2,NULL),(37,'2012-11-24 07:09:48','2012-11-24 07:09:48',60,0,1,NULL),(38,'2012-11-24 07:09:48','2012-11-24 07:09:48',60,0,2,NULL),(39,'2012-11-24 07:09:48','2012-11-24 07:09:48',60,0,2,NULL),(40,'2012-11-24 07:11:06','2012-11-24 07:11:06',60,0,1,NULL),(41,'2012-11-24 07:11:06','2012-11-24 07:11:06',60,0,2,NULL),(42,'2012-11-24 07:11:06','2012-11-24 07:11:06',60,0,2,NULL),(43,'2012-11-25 01:59:42','2012-11-25 01:59:42',60,0,1,NULL),(44,'2012-11-25 01:59:42','2012-11-25 01:59:42',60,0,2,NULL),(45,'2012-11-25 01:59:42','2012-11-25 01:59:42',60,0,2,NULL);
/*!40000 ALTER TABLE `ox_log_maintenance_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_log_maintenance_statistics`
--

DROP TABLE IF EXISTS `ox_log_maintenance_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_log_maintenance_statistics` (
  `log_maintenance_statistics_id` int(11) NOT NULL auto_increment,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `adserver_run_type` int(2) default NULL,
  `search_run_type` int(2) default NULL,
  `tracker_run_type` int(2) default NULL,
  `updated_to` datetime default NULL,
  PRIMARY KEY  (`log_maintenance_statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_log_maintenance_statistics`
--

LOCK TABLES `ox_log_maintenance_statistics` WRITE;
/*!40000 ALTER TABLE `ox_log_maintenance_statistics` DISABLE KEYS */;
INSERT INTO `ox_log_maintenance_statistics` VALUES (1,'2012-11-24 07:10:59','2012-11-24 07:11:00',1,2,NULL,NULL,'2012-11-24 06:59:59'),(2,'2012-11-25 01:59:31','2012-11-25 01:59:32',1,2,NULL,NULL,'2012-11-25 00:59:59');
/*!40000 ALTER TABLE `ox_log_maintenance_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_password_recovery`
--

DROP TABLE IF EXISTS `ox_password_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_password_recovery` (
  `user_type` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `user_id` int(10) NOT NULL,
  `recovery_id` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`user_type`,`user_id`),
  UNIQUE KEY `ox_password_recovery_recovery_id` (`recovery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_password_recovery`
--

LOCK TABLES `ox_password_recovery` WRITE;
/*!40000 ALTER TABLE `ox_password_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_password_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_placement_zone_assoc`
--

DROP TABLE IF EXISTS `ox_placement_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_placement_zone_assoc` (
  `placement_zone_assoc_id` mediumint(9) NOT NULL auto_increment,
  `zone_id` mediumint(9) default NULL,
  `placement_id` mediumint(9) default NULL,
  PRIMARY KEY  (`placement_zone_assoc_id`),
  KEY `ox_placement_zone_assoc_zone_id` (`zone_id`),
  KEY `ox_placement_zone_assoc_placement_id` (`placement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_placement_zone_assoc`
--

LOCK TABLES `ox_placement_zone_assoc` WRITE;
/*!40000 ALTER TABLE `ox_placement_zone_assoc` DISABLE KEYS */;
INSERT INTO `ox_placement_zone_assoc` VALUES (1,4,3),(2,1,4),(3,4,4),(4,5,4);
/*!40000 ALTER TABLE `ox_placement_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_preferences`
--

DROP TABLE IF EXISTS `ox_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_preferences` (
  `preference_id` mediumint(9) NOT NULL auto_increment,
  `preference_name` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `account_type` varchar(16) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`preference_id`),
  UNIQUE KEY `ox_preferences_preference_name` (`preference_name`),
  KEY `ox_preferences_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_preferences`
--

LOCK TABLES `ox_preferences` WRITE;
/*!40000 ALTER TABLE `ox_preferences` DISABLE KEYS */;
INSERT INTO `ox_preferences` VALUES (1,'default_banner_image_url','TRAFFICKER'),(2,'default_banner_destination_url','TRAFFICKER'),(3,'default_banner_weight','ADVERTISER'),(4,'default_campaign_weight','ADVERTISER'),(5,'warn_email_admin','ADMIN'),(6,'warn_email_admin_impression_limit','ADMIN'),(7,'warn_email_admin_day_limit','ADMIN'),(8,'campaign_ecpm_enabled','MANAGER'),(9,'contract_ecpm_enabled','MANAGER'),(10,'warn_email_manager','MANAGER'),(11,'warn_email_manager_impression_limit','MANAGER'),(12,'warn_email_manager_day_limit','MANAGER'),(13,'warn_email_advertiser','ADVERTISER'),(14,'warn_email_advertiser_impression_limit','ADVERTISER'),(15,'warn_email_advertiser_day_limit','ADVERTISER'),(16,'timezone','MANAGER'),(17,'tracker_default_status','ADVERTISER'),(18,'tracker_default_type','ADVERTISER'),(19,'tracker_link_campaigns','ADVERTISER'),(20,'ui_show_campaign_info','ADVERTISER'),(21,'ui_show_banner_info','ADVERTISER'),(22,'ui_show_campaign_preview','ADVERTISER'),(23,'ui_show_banner_html','ADVERTISER'),(24,'ui_show_banner_preview','ADVERTISER'),(25,'ui_hide_inactive',''),(26,'ui_show_matching_banners','TRAFFICKER'),(27,'ui_show_matching_banners_parents','TRAFFICKER'),(28,'ui_show_entity_id',''),(29,'ui_novice_user',''),(30,'ui_week_start_day',''),(31,'ui_percentage_decimals',''),(32,'ui_column_revenue','MANAGER'),(33,'ui_column_revenue_label','MANAGER'),(34,'ui_column_revenue_rank','MANAGER'),(35,'ui_column_bv','MANAGER'),(36,'ui_column_bv_label','MANAGER'),(37,'ui_column_bv_rank','MANAGER'),(38,'ui_column_num_items','MANAGER'),(39,'ui_column_num_items_label','MANAGER'),(40,'ui_column_num_items_rank','MANAGER'),(41,'ui_column_revcpc','MANAGER'),(42,'ui_column_revcpc_label','MANAGER'),(43,'ui_column_revcpc_rank','MANAGER'),(44,'ui_column_erpm','MANAGER'),(45,'ui_column_erpm_label','MANAGER'),(46,'ui_column_erpm_rank','MANAGER'),(47,'ui_column_erpc','MANAGER'),(48,'ui_column_erpc_label','MANAGER'),(49,'ui_column_erpc_rank','MANAGER'),(50,'ui_column_erps','MANAGER'),(51,'ui_column_erps_label','MANAGER'),(52,'ui_column_erps_rank','MANAGER'),(53,'ui_column_eipm','MANAGER'),(54,'ui_column_eipm_label','MANAGER'),(55,'ui_column_eipm_rank','MANAGER'),(56,'ui_column_eipc','MANAGER'),(57,'ui_column_eipc_label','MANAGER'),(58,'ui_column_eipc_rank','MANAGER'),(59,'ui_column_eips','MANAGER'),(60,'ui_column_eips_label','MANAGER'),(61,'ui_column_eips_rank','MANAGER'),(62,'ui_column_ecpm','MANAGER'),(63,'ui_column_ecpm_label','MANAGER'),(64,'ui_column_ecpm_rank','MANAGER'),(65,'ui_column_ecpc','MANAGER'),(66,'ui_column_ecpc_label','MANAGER'),(67,'ui_column_ecpc_rank','MANAGER'),(68,'ui_column_ecps','MANAGER'),(69,'ui_column_ecps_label','MANAGER'),(70,'ui_column_ecps_rank','MANAGER'),(71,'ui_column_id','MANAGER'),(72,'ui_column_id_label','MANAGER'),(73,'ui_column_id_rank','MANAGER'),(74,'ui_column_requests','MANAGER'),(75,'ui_column_requests_label','MANAGER'),(76,'ui_column_requests_rank','MANAGER'),(77,'ui_column_impressions','MANAGER'),(78,'ui_column_impressions_label','MANAGER'),(79,'ui_column_impressions_rank','MANAGER'),(80,'ui_column_clicks','MANAGER'),(81,'ui_column_clicks_label','MANAGER'),(82,'ui_column_clicks_rank','MANAGER'),(83,'ui_column_ctr','MANAGER'),(84,'ui_column_ctr_label','MANAGER'),(85,'ui_column_ctr_rank','MANAGER'),(86,'ui_column_conversions','MANAGER'),(87,'ui_column_conversions_label','MANAGER'),(88,'ui_column_conversions_rank','MANAGER'),(89,'ui_column_conversions_pending','MANAGER'),(90,'ui_column_conversions_pending_label','MANAGER'),(91,'ui_column_conversions_pending_rank','MANAGER'),(92,'ui_column_sr_views','MANAGER'),(93,'ui_column_sr_views_label','MANAGER'),(94,'ui_column_sr_views_rank','MANAGER'),(95,'ui_column_sr_clicks','MANAGER'),(96,'ui_column_sr_clicks_label','MANAGER'),(97,'ui_column_sr_clicks_rank','MANAGER');
/*!40000 ALTER TABLE `ox_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_session`
--

DROP TABLE IF EXISTS `ox_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_session` (
  `sessionid` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `sessiondata` text collate utf8_unicode_ci NOT NULL,
  `lastused` datetime default NULL,
  PRIMARY KEY  (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_session`
--

LOCK TABLES `ox_session` WRITE;
/*!40000 ALTER TABLE `ox_session` DISABLE KEYS */;
INSERT INTO `ox_session` VALUES ('a7319825e21d581edaaed8726992d653','a:7:{s:17:\"notificationQueue\";a:0:{}s:9:\"messageId\";i:1353899289;s:12:\"messageQueue\";a:0:{}s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:15:{s:7:\"user_id\";s:1:\"8\";s:12:\"contact_name\";s:5:\"Thanh\";s:13:\"email_address\";s:15:\"thanhtc@eway.vn\";s:8:\"username\";s:7:\"thanhtc\";s:8:\"language\";s:0:\"\";s:18:\"default_account_id\";s:2:\"15\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2012-11-24 13:07:24\";s:15:\"date_last_login\";s:19:\"2012-11-26 03:08:43\";s:13:\"email_updated\";s:19:\"2012-11-24 13:07:24\";s:12:\"user_address\";s:0:\"\";s:10:\"user_phone\";s:0:\"\";s:8:\"is_admin\";b:0;}s:8:\"aAccount\";a:7:{s:10:\"account_id\";s:2:\"15\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:5:\"Thanh\";s:12:\"m2m_password\";s:25:\"$*U4SbqR6lMbroEVyB9jO6QW2\";s:10:\"m2m_ticket\";s:30:\"1d1TZLQ3mv=4uZ@ok6*flSzOQUWyNL\";s:9:\"entity_id\";s:1:\"9\";s:9:\"agency_id\";s:1:\"9\";}}s:8:\"oxMarket\";a:1:{s:9:\"aBranding\";a:1:{s:36:\"474409ee-5c31-1830-e03b-3f7da031f3e0\";a:8:{s:3:\"key\";s:5:\"openx\";s:4:\"name\";s:12:\"OpenX Market\";s:7:\"service\";s:9:\"OpenX.org\";s:5:\"links\";a:8:{s:3:\"faq\";s:31:\"http://www.openx.org/faq/market\";s:14:\"faq_make_money\";s:63:\"http://www.openx.org/en/faq/how-to-make-money-from-openx-market\";s:4:\"info\";s:27:\"http://www.openx.org/market\";s:14:\"marketTermsUrl\";s:33:\"http://www.openx.org/market/terms\";s:16:\"marketPrivacyUrl\";s:28:\"http://www.openx.org/privacy\";s:13:\"openXTermsUrl\";s:26:\"http://www.openx.org/terms\";s:15:\"openXPrivacyUrl\";s:28:\"http://www.openx.org/privacy\";s:21:\"publisherSupportEmail\";s:27:\"publisher-support@openx.org\";}s:9:\"assetPath\";s:39:\"https://ssl-i.xx.openx.com/market/openx\";s:12:\"iFrameDomain\";s:12:\"pc.openx.com\";s:13:\"currency_code\";s:3:\"USD\";s:15:\"currency_symbol\";s:1:\"$\";}}}s:5:\"prefs\";a:4:{s:24:\"advertiser-campaigns.php\";a:1:{i:3;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}s:18:\"inventory_entities\";a:1:{i:9;a:3:{s:8:\"clientid\";s:1:\"3\";s:10:\"campaignid\";a:1:{i:3;s:1:\"3\";}s:11:\"affiliateid\";s:1:\"4\";}}s:20:\"campaign-banners.php\";a:1:{i:3;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}s:17:\"website-index.php\";a:2:{s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}s:5:\"token\";s:32:\"c8df514734f52b8bb526961e69e987b8\";}','2012-11-26 03:42:46'),('d3786db8942d0ac6895e061b99039e4e','a:3:{s:17:\"notificationQueue\";a:0:{}s:9:\"messageId\";i:1353888636;s:12:\"messageQueue\";a:1:{i:0;a:6:{s:2:\"id\";i:1353888636;s:4:\"text\";s:166:\"Error: File permission errors detected.<br />These <em>may</em> impact the accurate delivery of your ads,<br />See the debug.log file for the list of unwritable files\";s:8:\"location\";s:6:\"global\";s:4:\"type\";s:5:\"error\";s:7:\"timeout\";i:0;s:13:\"relatedAction\";N;}}}','2012-11-26 00:10:36');
/*!40000 ALTER TABLE `ox_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_stats_vast`
--

DROP TABLE IF EXISTS `ox_stats_vast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_stats_vast` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL default '0',
  KEY `ox_stats_vast_creativekey` (`interval_start`,`creative_id`),
  KEY `ox_stats_vast_zonekey` (`interval_start`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_stats_vast`
--

LOCK TABLES `ox_stats_vast` WRITE;
/*!40000 ALTER TABLE `ox_stats_vast` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_stats_vast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_targetstats`
--

DROP TABLE IF EXISTS `ox_targetstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_targetstats` (
  `day` date NOT NULL default '0000-00-00',
  `campaignid` mediumint(9) NOT NULL default '0',
  `target` int(11) NOT NULL default '0',
  `views` int(11) NOT NULL default '0',
  `modified` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_targetstats`
--

LOCK TABLES `ox_targetstats` WRITE;
/*!40000 ALTER TABLE `ox_targetstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_targetstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_tracker_append`
--

DROP TABLE IF EXISTS `ox_tracker_append`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_tracker_append` (
  `tracker_append_id` int(11) NOT NULL auto_increment,
  `tracker_id` mediumint(9) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `tagcode` text collate utf8_unicode_ci NOT NULL,
  `paused` enum('t','f') collate utf8_unicode_ci NOT NULL default 'f',
  `autotrack` enum('t','f') collate utf8_unicode_ci NOT NULL default 'f',
  PRIMARY KEY  (`tracker_append_id`),
  KEY `ox_tracker_append_tracker_id` (`tracker_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_tracker_append`
--

LOCK TABLES `ox_tracker_append` WRITE;
/*!40000 ALTER TABLE `ox_tracker_append` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_tracker_append` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_trackers`
--

DROP TABLE IF EXISTS `ox_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_trackers` (
  `trackerid` mediumint(9) NOT NULL auto_increment,
  `trackername` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `description` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `clientid` mediumint(9) NOT NULL default '0',
  `viewwindow` mediumint(9) NOT NULL default '0',
  `clickwindow` mediumint(9) NOT NULL default '0',
  `blockwindow` mediumint(9) NOT NULL default '0',
  `status` smallint(1) unsigned NOT NULL default '4',
  `type` smallint(1) unsigned NOT NULL default '1',
  `linkcampaigns` enum('t','f') collate utf8_unicode_ci NOT NULL default 'f',
  `variablemethod` enum('default','js','dom','custom') collate utf8_unicode_ci NOT NULL default 'default',
  `appendcode` text collate utf8_unicode_ci NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`trackerid`),
  KEY `ox_trackers_clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_trackers`
--

LOCK TABLES `ox_trackers` WRITE;
/*!40000 ALTER TABLE `ox_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_upgrade_action`
--

DROP TABLE IF EXISTS `ox_upgrade_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_upgrade_action` (
  `upgrade_action_id` int(10) unsigned NOT NULL auto_increment,
  `upgrade_name` varchar(128) collate utf8_unicode_ci default NULL,
  `version_to` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `version_from` varchar(64) collate utf8_unicode_ci default NULL,
  `action` int(2) NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `logfile` varchar(128) collate utf8_unicode_ci default NULL,
  `confbackup` varchar(128) collate utf8_unicode_ci default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`upgrade_action_id`),
  KEY `ox_upgrade_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_upgrade_action`
--

LOCK TABLES `ox_upgrade_action` WRITE;
/*!40000 ALTER TABLE `ox_upgrade_action` DISABLE KEYS */;
INSERT INTO `ox_upgrade_action` VALUES (1,'install_2.8.10','2.8.10','0',1,'UPGRADE_COMPLETE','install.log',NULL,'2012-11-23 11:33:49'),(2,'install_openXBannerTypes','1.0.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:39'),(3,'install_oxHtml','1.0.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:39'),(4,'install_oxText','1.0.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:39'),(5,'install_openXDeliveryLimitations','1.0.15','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:40'),(6,'install_Client','1.0.6','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:40'),(7,'install_Geo','1.0.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:40'),(8,'install_Site','1.0.14','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:40'),(9,'install_Time','1.0.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:40'),(10,'install_openX3rdPartyServers','1.0.10','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:41'),(11,'install_ox3rdPartyServers','1.0.8','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:41'),(12,'install_openXReports','1.2','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:42'),(13,'install_oxReportsStandard','1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:42'),(14,'install_oxReportsAdmin','1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:42'),(15,'install_openXDeliveryCacheStore','1.0.6','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:44'),(16,'install_oxCacheFile','1.0.4','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:44'),(17,'install_oxMemcached','1.0.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:44'),(18,'install_openXMaxMindGeoIP','1.0.5','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:45'),(19,'install_oxMaxMindGeoIP','1.0.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:45'),(20,'install_openXInvocationTags','1.0.9','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:46'),(21,'install_oxInvocationTags','1.0.9','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:46'),(22,'install_openXDeliveryLog','1.0.10','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(23,'install_oxDeliveryDataPrepare','1.0.8','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(24,'install_oxLogClick','1.0.8','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(25,'install_oxLogConversion','1.0.11','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(26,'install_oxLogImpression','1.0.8','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(27,'install_oxLogRequest','1.0.8','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:48'),(28,'install_openXMarket','1.9.1-RC5','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:50'),(29,'install_oxMarket','1.9.1-RC5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:50'),(30,'install_oxMarketMaintenance','1.9.0-RC1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:50'),(31,'install_oxMarketDelivery','1.9.0-RC1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:50'),(32,'install_openXWorkflow','0.0.3','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:56'),(33,'install_openXWorkflow','0.0.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:56'),(34,'install_openXVideoAds','1.8.7','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58'),(35,'install_vastInlineBannerTypeHtml','1.8.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58'),(36,'install_vastOverlayBannerTypeHtml','1.8.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58'),(37,'install_oxLogVast','1.8.6','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58'),(38,'install_vastServeVideoPlayer','1.8.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58'),(39,'install_videoReport','1.8.6','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2012-11-23 08:34:58');
/*!40000 ALTER TABLE `ox_upgrade_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_userlog`
--

DROP TABLE IF EXISTS `ox_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_userlog` (
  `userlogid` mediumint(9) NOT NULL auto_increment,
  `timestamp` int(11) NOT NULL default '0',
  `usertype` tinyint(4) NOT NULL default '0',
  `userid` mediumint(9) NOT NULL default '0',
  `action` mediumint(9) NOT NULL default '0',
  `object` mediumint(9) default NULL,
  `details` mediumtext collate utf8_unicode_ci,
  PRIMARY KEY  (`userlogid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_userlog`
--

LOCK TABLES `ox_userlog` WRITE;
/*!40000 ALTER TABLE `ox_userlog` DISABLE KEYS */;
INSERT INTO `ox_userlog` VALUES (1,1353741060,2,0,40,0,'Maintenance Statistics Report\n=====================================\n\n- Maintenance start run time is 2012-11-24 07:10:59 UTC\n- Maintenance statistics last updated intermediate table statistics to 2012-11-23 08:59:59 UTC.\n- Current time must be after 2012-11-23 09:59:59 UTC for the next intermediate table update to happen\n- Maintenance statistics last updated final table statistics to 2012-11-23 08:59:59 UTC.\n- Current time must be after 2012-11-23 09:59:59 UTC for the next intermediate table update to happen\n- Maintenance statistics will be run.\n- The intermediate table statistics will be updated.\n- The final table statistics will be updated.\n\n- Migrating bucket-based logged data to the statistics tables.\n- Saving request, impression, click and conversion data into the final tables.\n- Updating the data_summary_ad_hourly table for data after 2012-11-23 09:00:00 UTC.\n- Logging the completion of the maintenance statistics run.'),(2,1353808772,2,0,40,0,'Maintenance Statistics Report\n=====================================\n\n- Maintenance start run time is 2012-11-25 01:59:31 UTC\n- Maintenance statistics last updated intermediate table statistics to 2012-11-24 06:59:59 UTC.\n- Current time must be after 2012-11-24 07:59:59 UTC for the next intermediate table update to happen\n- Maintenance statistics last updated final table statistics to 2012-11-24 06:59:59 UTC.\n- Current time must be after 2012-11-24 07:59:59 UTC for the next intermediate table update to happen\n- Maintenance statistics will be run.\n- The intermediate table statistics will be updated.\n- The final table statistics will be updated.\n\n- Migrating bucket-based logged data to the statistics tables.\n- Saving request, impression, click and conversion data into the final tables.\n- Updating the data_summary_ad_hourly table for data after 2012-11-24 07:00:00 UTC.\n- Logging the completion of the maintenance statistics run.');
/*!40000 ALTER TABLE `ox_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_users`
--

DROP TABLE IF EXISTS `ox_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_users` (
  `user_id` mediumint(9) NOT NULL auto_increment,
  `contact_name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `email_address` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `username` varchar(64) collate utf8_unicode_ci default NULL,
  `password` varchar(64) collate utf8_unicode_ci default NULL,
  `language` varchar(5) collate utf8_unicode_ci default NULL,
  `default_account_id` mediumint(9) default NULL,
  `comments` text collate utf8_unicode_ci,
  `active` tinyint(1) NOT NULL default '1',
  `sso_user_id` int(11) default NULL,
  `date_created` datetime default NULL,
  `date_last_login` datetime default NULL,
  `email_updated` datetime default NULL,
  `user_address` text collate utf8_unicode_ci,
  `user_phone` text collate utf8_unicode_ci,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `ox_users_username` (`username`),
  UNIQUE KEY `ox_users_sso_user_id` (`sso_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_users`
--

LOCK TABLES `ox_users` WRITE;
/*!40000 ALTER TABLE `ox_users` DISABLE KEYS */;
INSERT INTO `ox_users` VALUES (1,'Administrator','thanh@adflex.vn','admin','82455108e4fd023bf166e67f8e3b8af7','en',2,NULL,1,NULL,'2012-11-23 11:34:36','2012-11-24 06:17:26','2012-11-23 11:34:36',NULL,NULL),(8,'Thanh','thanhtc@eway.vn','thanhtc','1c647194ab6c0444e22f9e8648d3dfb3',NULL,15,NULL,1,NULL,'2012-11-24 13:07:24','2012-11-26 03:08:43','2012-11-24 13:07:24','',''),(7,'tuan lc','tuanlc@gmail.com','tuaneway','0192023a7bbd73250516f069df18b500',NULL,13,NULL,1,NULL,'2012-11-24 11:06:47','2012-11-24 04:07:13','2012-11-24 11:06:47','fsfas','42343243242');
/*!40000 ALTER TABLE `ox_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_variable_publisher`
--

DROP TABLE IF EXISTS `ox_variable_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_variable_publisher` (
  `variable_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY  (`variable_id`,`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_variable_publisher`
--

LOCK TABLES `ox_variable_publisher` WRITE;
/*!40000 ALTER TABLE `ox_variable_publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_variable_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_variables`
--

DROP TABLE IF EXISTS `ox_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_variables` (
  `variableid` mediumint(9) unsigned NOT NULL auto_increment,
  `trackerid` mediumint(9) NOT NULL default '0',
  `name` varchar(250) collate utf8_unicode_ci NOT NULL default '',
  `description` varchar(250) collate utf8_unicode_ci default NULL,
  `datatype` enum('numeric','string','date') collate utf8_unicode_ci NOT NULL default 'numeric',
  `purpose` enum('basket_value','num_items','post_code') collate utf8_unicode_ci default NULL,
  `reject_if_empty` smallint(1) unsigned NOT NULL default '0',
  `is_unique` int(11) NOT NULL default '0',
  `unique_window` int(11) NOT NULL default '0',
  `variablecode` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `hidden` enum('t','f') collate utf8_unicode_ci NOT NULL default 'f',
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`variableid`),
  KEY `ox_variables_is_unique` (`is_unique`),
  KEY `ox_variables_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_variables`
--

LOCK TABLES `ox_variables` WRITE;
/*!40000 ALTER TABLE `ox_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_zones`
--

DROP TABLE IF EXISTS `ox_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ox_zones` (
  `zoneid` mediumint(9) NOT NULL auto_increment,
  `affiliateid` mediumint(9) default NULL,
  `zonename` varchar(245) collate utf8_unicode_ci NOT NULL default '',
  `description` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `delivery` smallint(6) NOT NULL default '0',
  `zonetype` smallint(6) NOT NULL default '0',
  `category` text collate utf8_unicode_ci NOT NULL,
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `ad_selection` text collate utf8_unicode_ci NOT NULL,
  `chain` text collate utf8_unicode_ci NOT NULL,
  `prepend` text collate utf8_unicode_ci NOT NULL,
  `append` text collate utf8_unicode_ci NOT NULL,
  `appendtype` tinyint(4) NOT NULL default '0',
  `forceappend` enum('t','f') collate utf8_unicode_ci default 'f',
  `inventory_forecast_type` smallint(6) NOT NULL default '0',
  `comments` text collate utf8_unicode_ci,
  `cost` decimal(10,4) default NULL,
  `cost_type` smallint(6) default NULL,
  `cost_variable_id` varchar(255) collate utf8_unicode_ci default NULL,
  `technology_cost` decimal(10,4) default NULL,
  `technology_cost_type` smallint(6) default NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL default '0',
  `capping` int(11) NOT NULL default '0',
  `session_capping` int(11) NOT NULL default '0',
  `what` text collate utf8_unicode_ci NOT NULL,
  `as_zone_id` int(11) default NULL,
  `is_in_ad_direct` tinyint(1) NOT NULL default '0',
  `rate` decimal(19,2) default NULL,
  `pricing` varchar(50) collate utf8_unicode_ci NOT NULL default 'CPM',
  `oac_category_id` int(11) default NULL,
  `ext_adselection` varchar(255) collate utf8_unicode_ci default NULL,
  `show_capped_no_cookie` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`zoneid`),
  KEY `ox_zones_zonenameid` (`zonename`,`zoneid`),
  KEY `ox_zones_affiliateid` (`affiliateid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_zones`
--

LOCK TABLES `ox_zones` WRITE;
/*!40000 ALTER TABLE `ox_zones` DISABLE KEYS */;
INSERT INTO `ox_zones` VALUES (1,1,'zone__http://adnet.vn','eway description',0,3,'',468,60,'','','','',0,'f',0,'eway comment',NULL,NULL,NULL,NULL,NULL,'2012-11-23 08:59:00',0,0,0,'',NULL,0,NULL,'CPM',NULL,NULL,0),(4,4,'zone__http://adflex.vn','eway description',0,3,'',468,60,'','','','',0,'f',0,'eway comment',NULL,NULL,NULL,NULL,NULL,'2012-11-24 06:11:40',0,0,0,'',NULL,0,NULL,'CPM',NULL,NULL,0),(5,5,'zone__http://eway.vn','eway description',0,3,'',468,60,'','','','',0,'f',0,'eway comment',NULL,NULL,NULL,NULL,NULL,'2012-11-24 06:21:17',0,0,0,'',NULL,0,NULL,'CPM',NULL,NULL,0);
/*!40000 ALTER TABLE `ox_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'adflex_dev'
--
DELIMITER ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-26  6:44:46
