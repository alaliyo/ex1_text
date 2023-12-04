-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: enm0919
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-log

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
-- Table structure for table `xe_action_forward`
--

DROP TABLE IF EXISTS `xe_action_forward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_action_forward` (
  `act` varchar(80) NOT NULL,
  `module` varchar(60) NOT NULL,
  `type` varchar(15) NOT NULL,
  UNIQUE KEY `idx_foward` (`act`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_action_forward`
--

LOCK TABLES `xe_action_forward` WRITE;
/*!40000 ALTER TABLE `xe_action_forward` DISABLE KEYS */;
INSERT INTO `xe_action_forward` VALUES ('rss','rss','view');
INSERT INTO `xe_action_forward` VALUES ('atom','rss','view');
INSERT INTO `xe_action_forward` VALUES ('IS','integration_search','view');
/*!40000 ALTER TABLE `xe_action_forward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_addons`
--

DROP TABLE IF EXISTS `xe_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_addons` (
  `addon` varchar(250) NOT NULL,
  `is_used` char(1) NOT NULL DEFAULT 'Y',
  `is_used_m` char(1) NOT NULL DEFAULT 'N',
  `is_fixed` char(1) NOT NULL DEFAULT 'N',
  `extra_vars` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`addon`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_addons`
--

LOCK TABLES `xe_addons` WRITE;
/*!40000 ALTER TABLE `xe_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_addons_site`
--

DROP TABLE IF EXISTS `xe_addons_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_addons_site` (
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `addon` varchar(250) NOT NULL,
  `is_used` char(1) NOT NULL DEFAULT 'Y',
  `is_used_m` char(1) NOT NULL DEFAULT 'N',
  `extra_vars` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  UNIQUE KEY `unique_addon_site` (`site_srl`,`addon`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_addons_site`
--

LOCK TABLES `xe_addons_site` WRITE;
/*!40000 ALTER TABLE `xe_addons_site` DISABLE KEYS */;
INSERT INTO `xe_addons_site` VALUES (0,'autolink','Y','N',NULL,'20230919112543');
INSERT INTO `xe_addons_site` VALUES (0,'member_communication','Y','N',NULL,'20230919112543');
INSERT INTO `xe_addons_site` VALUES (0,'member_extra_info','Y','N',NULL,'20230919112543');
INSERT INTO `xe_addons_site` VALUES (0,'resize_image','Y','N',NULL,'20230919112543');
INSERT INTO `xe_addons_site` VALUES (0,'adminlogging','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'captcha','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'captcha_member','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'counter','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'oembed','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'point_level_icon','N','N',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'popup_opener','Y','Y',NULL,'20230925134917');
INSERT INTO `xe_addons_site` VALUES (0,'addon_insert_video','Y','Y','O:8:\"stdClass\":4:{s:15:\"xe_validator_id\";s:31:\"modules/addon/tpl/setup_addon/1\";s:15:\"insert_position\";s:7:\"prepend\";s:13:\"xe_run_method\";s:12:\"run_selected\";s:8:\"mid_list\";a:4:{i:0;s:8:\"sub04_04\";i:1;s:8:\"sub04_03\";i:2;s:8:\"sub04_01\";i:3;s:8:\"sub04_02\";}}','20231020105846');
/*!40000 ALTER TABLE `xe_addons_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_admin_favorite`
--

DROP TABLE IF EXISTS `xe_admin_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_admin_favorite` (
  `admin_favorite_srl` bigint(11) NOT NULL,
  `site_srl` bigint(11) DEFAULT 0,
  `module` varchar(80) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`admin_favorite_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_admin_favorite`
--

LOCK TABLES `xe_admin_favorite` WRITE;
/*!40000 ALTER TABLE `xe_admin_favorite` DISABLE KEYS */;
INSERT INTO `xe_admin_favorite` VALUES (139,0,'addon','module');
INSERT INTO `xe_admin_favorite` VALUES (140,0,'board','module');
INSERT INTO `xe_admin_favorite` VALUES (142,0,'imageprocess','module');
INSERT INTO `xe_admin_favorite` VALUES (143,0,'module','module');
INSERT INTO `xe_admin_favorite` VALUES (146,0,'popup','module');
INSERT INTO `xe_admin_favorite` VALUES (148,0,'seo','module');
INSERT INTO `xe_admin_favorite` VALUES (149,0,'widget','module');
INSERT INTO `xe_admin_favorite` VALUES (150,0,'youtube','module');
INSERT INTO `xe_admin_favorite` VALUES (233,0,'supercache','module');
/*!40000 ALTER TABLE `xe_admin_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_admin_log`
--

DROP TABLE IF EXISTS `xe_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_admin_log` (
  `ipaddress` varchar(100) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `site_srl` bigint(11) DEFAULT 0,
  `module` varchar(100) DEFAULT NULL,
  `act` varchar(100) DEFAULT NULL,
  `request_vars` text DEFAULT NULL,
  KEY `idx_admin_ip` (`ipaddress`),
  KEY `idx_admin_date` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_admin_log`
--

LOCK TABLES `xe_admin_log` WRITE;
/*!40000 ALTER TABLE `xe_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_ai_installed_packages`
--

DROP TABLE IF EXISTS `xe_ai_installed_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_ai_installed_packages` (
  `package_srl` bigint(11) NOT NULL DEFAULT 0,
  `version` varchar(255) DEFAULT NULL,
  `current_version` varchar(255) DEFAULT NULL,
  `need_update` char(1) DEFAULT 'N',
  KEY `idx_package_srl` (`package_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_ai_installed_packages`
--

LOCK TABLES `xe_ai_installed_packages` WRITE;
/*!40000 ALTER TABLE `xe_ai_installed_packages` DISABLE KEYS */;
INSERT INTO `xe_ai_installed_packages` VALUES (22753865,'1.3.7','1.3.7','N');
INSERT INTO `xe_ai_installed_packages` VALUES (22753726,'2.6.6','2.6.6','N');
INSERT INTO `xe_ai_installed_packages` VALUES (22753678,'1.3.0.','1.3.0.','N');
INSERT INTO `xe_ai_installed_packages` VALUES (22753675,'1.1.1.','1.1.1.','N');
INSERT INTO `xe_ai_installed_packages` VALUES (22753419,'0.1','0.1','N');
INSERT INTO `xe_ai_installed_packages` VALUES (22590697,'1.0.0','1.0.0','N');
INSERT INTO `xe_ai_installed_packages` VALUES (19088419,'2.43','2.43','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18910976,'0.1','1.7','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18378362,'0.2','1.7','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18325662,'1.11.6','1.11.6','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18324327,'0.1','1.7','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18324266,'0.1','1.7','N');
INSERT INTO `xe_ai_installed_packages` VALUES (18324167,'1.7.1.1','1.7.2','N');
/*!40000 ALTER TABLE `xe_ai_installed_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_ai_remote_categories`
--

DROP TABLE IF EXISTS `xe_ai_remote_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_ai_remote_categories` (
  `category_srl` bigint(11) NOT NULL DEFAULT 0,
  `parent_srl` bigint(11) NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL,
  `list_order` bigint(11) NOT NULL,
  PRIMARY KEY (`category_srl`),
  KEY `idx_parent_srl` (`parent_srl`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_ai_remote_categories`
--

LOCK TABLES `xe_ai_remote_categories` WRITE;
/*!40000 ALTER TABLE `xe_ai_remote_categories` DISABLE KEYS */;
INSERT INTO `xe_ai_remote_categories` VALUES (18322977,18322919,'회원레벨 아이콘',15);
INSERT INTO `xe_ai_remote_categories` VALUES (18904838,18322919,'에디터 스타일',14);
INSERT INTO `xe_ai_remote_categories` VALUES (18322952,18322919,'위젯 스타일',13);
INSERT INTO `xe_ai_remote_categories` VALUES (18322950,18322919,'위젯 스킨',12);
INSERT INTO `xe_ai_remote_categories` VALUES (18322943,18322919,'모듈 스킨',10);
INSERT INTO `xe_ai_remote_categories` VALUES (18994170,18322919,'모듈 모바일 스킨',11);
INSERT INTO `xe_ai_remote_categories` VALUES (18322929,18322917,'에디터컴포넌트',5);
INSERT INTO `xe_ai_remote_categories` VALUES (18994172,18322919,'모바일 레이아웃',9);
INSERT INTO `xe_ai_remote_categories` VALUES (18322954,18322919,'레이아웃',8);
INSERT INTO `xe_ai_remote_categories` VALUES (18322919,0,'스킨',7);
INSERT INTO `xe_ai_remote_categories` VALUES (18631347,18322917,'단락에디터컴포넌트',6);
INSERT INTO `xe_ai_remote_categories` VALUES (18322927,18322917,'위젯',4);
INSERT INTO `xe_ai_remote_categories` VALUES (18322923,18322917,'모듈',2);
INSERT INTO `xe_ai_remote_categories` VALUES (18322925,18322917,'애드온',3);
INSERT INTO `xe_ai_remote_categories` VALUES (18322917,0,'프로그램',0);
INSERT INTO `xe_ai_remote_categories` VALUES (18322907,18322917,'XE 코어',1);
/*!40000 ALTER TABLE `xe_ai_remote_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_autoinstall_packages`
--

DROP TABLE IF EXISTS `xe_autoinstall_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_autoinstall_packages` (
  `package_srl` bigint(11) NOT NULL DEFAULT 0,
  `category_srl` bigint(11) DEFAULT 0,
  `path` varchar(250) NOT NULL,
  `have_instance` char(1) NOT NULL DEFAULT 'N',
  `updatedate` varchar(14) DEFAULT NULL,
  `latest_item_srl` bigint(11) NOT NULL DEFAULT 0,
  `version` varchar(255) DEFAULT NULL,
  UNIQUE KEY `unique_path` (`path`),
  KEY `idx_package_srl` (`package_srl`),
  KEY `idx_category_srl` (`category_srl`),
  KEY `idx_regdate` (`updatedate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_autoinstall_packages`
--

LOCK TABLES `xe_autoinstall_packages` WRITE;
/*!40000 ALTER TABLE `xe_autoinstall_packages` DISABLE KEYS */;
INSERT INTO `xe_autoinstall_packages` VALUES (18324167,18322923,'./modules/board','N','20231018161100',21940502,'1.7.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324168,18322923,'./modules/homepage','N','20231018195538',21854391,'1.7.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19514473,18322943,'./modules/issuetracker','N','20231017014414',19539420,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324171,18322923,'./modules/livexe','N','20231018000808',19624726,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18324175,18322923,'./modules/material','N','20231017195834',18669818,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324186,18322923,'./modules/textyle','N','20231017225302',21795348,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324187,18322923,'./modules/textylehub','N','20231017210709',21795365,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324188,18322923,'./modules/planet','N','20231017191753',21015994,'0.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18324189,18322923,'./modules/referer_old','N','20231014105619',18325389,'0.15');
INSERT INTO `xe_autoinstall_packages` VALUES (18324191,18322923,'./modules/resource','N','20231018195625',21854259,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324199,18322923,'./modules/tccommentnotify','N','20231017082044',18365815,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324210,18322923,'./modules/wiki','N','20231017160545',21985871,'1.7.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324211,18322943,'./modules/board/skins/xe_board','N','20231016225911',18325569,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324212,18322943,'./modules/board/skins/xe_default','N','20230923172843',18325513,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324213,18322943,'./modules/editor/skins/dreditor','N','20231017125257',18865892,'1.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324214,18322943,'./modules/editor/skins/fckeditor','N','20231016213335',18325501,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324221,18322943,'./modules/editor/skins/xquared','N','20231017175835',18325496,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324225,18322943,'./modules/textyle/skins/wordPressDefault','N','20230914170834',18325484,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324226,18322925,'./addons/keyword_link','N','20231017190640',18325653,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324227,18322925,'./addons/member_join_extend','N','20231019150137',18325647,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324228,18322925,'./addons/planet_bookmark','N','20231018114001',21017018,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324233,18322925,'./addons/planet_todo','N','20231017184719',21016986,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324241,18322925,'./addons/referer_old','N','20231017105533',18325632,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324247,18322925,'./addons/tccommentnotify','N','20230924223902',18365845,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324248,18322925,'./addons/wiki_link','N','20231018195608',21813902,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324261,18322929,'./modules/editor/components/cc_license','N','20231017232418',18325227,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324266,18322929,'./modules/editor/components/emoticon','N','20230914024803',18325232,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324273,18322929,'./modules/editor/components/quotation','N','20231018114257',18325248,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324292,18322954,'./layouts/cafeXE','N','20231018195615',21802168,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324297,18322954,'./layouts/ideation','N','20231017175746',18325198,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324299,18322954,'./layouts/xe_official_v2','N','20231019195516',20391868,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324320,18322927,'./widgets/archive_list','N','20231020004111',18325093,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324321,18322927,'./widgets/calendar','N','20231017171051',20591626,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18324326,18322927,'./widgets/category','N','20231017093233',18325077,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324327,18322927,'./widgets/counter_status','N','20231017020925',18325071,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324328,18322927,'./widgets/DroArc_clock','N','20231017195007',18325065,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324330,18322927,'./widgets/forum','N','20231017053740',18325054,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324331,18322927,'./widgets/ideationBanner','N','20231019205649',18325042,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324332,18322927,'./widgets/ideationPopular','N','20231019140436',18325026,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324335,18322927,'./widgets/image_counter','N','20231009113702',19099243,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18324336,18322927,'./widgets/logged_members','N','20231017190756',18325004,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324337,18322927,'./widgets/member_group','N','20231019082239',18324998,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324338,18322927,'./widgets/navigator','N','20231017190756',21801528,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324343,18322927,'./widgets/newest_comment','N','20230922142232',18324984,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324344,18322927,'./widgets/newest_document','N','20231017150353',20893807,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324345,18322927,'./widgets/newest_trackback','N','20230922142217',18324957,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324346,18322927,'./widgets/planet_document','N','20231017150405',18327255,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18324348,18322927,'./widgets/rank_count','N','20231019165321',18324851,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18324352,18322927,'./widgets/rank_point','N','20231019163621',18324818,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324353,18322927,'./widgets/rss_reader','N','20231017040931',18324791,'#7');
INSERT INTO `xe_autoinstall_packages` VALUES (18324355,18322927,'./widgets/site_info','N','20231017190756',21801496,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18324359,18322927,'./widgets/tab_newest_document','N','20231020011631',18324658,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324360,18322927,'./widgets/tag_list','N','20231018004800',18324768,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324361,18322927,'./widgets/webzine','N','20231017142306',18324711,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324362,18322927,'./widgets/xeBanner','N','20231017104243',18324697,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324391,18322950,'./widgets/content/skins/xeHome','N','20231017150224',18324681,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324395,18322950,'./widgets/tab_newest_document/skins/ideationTab','N','20230918102522',18324647,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324396,18322952,'./widgetstyles/colorbox','N','20231009133246',18324641,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324398,18322952,'./widgetstyles/memo','N','20231017171721',18324622,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324401,18322952,'./widgetstyles/postitWire','N','20231017174328',18324610,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324402,18322952,'./widgetstyles/roundFace','N','20230913223810',18324603,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324403,18322952,'./widgetstyles/roundWire','N','20231009153150',18324590,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324404,18322952,'./widgetstyles/simpleRound','N','20231017103946',18324575,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324405,18322952,'./widgetstyles/simpleSquare','N','20231009003940',18324565,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18324406,18322952,'./widgetstyles/simpleTitle','N','20231017150856',18324546,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18325662,18322907,'.','N','20231020083213',22756225,'1.11.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18325755,18322927,'./widgets/popular_planet_document','N','20231009190554',18325772,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18325790,18322923,'./modules/ad','N','20231017181052',22756258,'0.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18325791,18322927,'./widgets/lineadWidget','N','20231018010545',22756231,'0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (18325803,18322929,'./modules/editor/components/code_highlighter','N','20231019231226',22754829,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18325813,18322925,'./addons/tag_relation','N','20231017121530',22274979,'1.4.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18325941,18322923,'./modules/sms','N','20231017082226',18745231,'1.3.10');
INSERT INTO `xe_autoinstall_packages` VALUES (18325946,18322923,'./modules/minishop','N','20231017100246',22754398,'1.3.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18325951,18322925,'./addons/sms_alert','N','20230930013749',18326173,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18325952,18322927,'./widgets/sms','N','20230922143250',18326180,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18325989,18322929,'./modules/editor/components/google_translate','N','20231017044730',18777700,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18326005,18322929,'./modules/editor/components/textbox','N','20231016150016',18326938,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18326011,18322925,'./addons/hidden_module','N','20231019032504',18337264,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18326030,18322923,'./modules/statistics','N','20231020110550',18327023,'1.0.1b');
INSERT INTO `xe_autoinstall_packages` VALUES (18326038,18322925,'./addons/statistics','N','20231014111345',18327083,'1.0.1b');
INSERT INTO `xe_autoinstall_packages` VALUES (18326351,18322925,'./addons/remove_id_search','N','20231017134819',18326429,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18326352,18322925,'./addons/guest_name','N','20231018131403',19010744,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18326353,18322925,'./addons/write_limit','N','20231018165435',18637861,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18326553,18322954,'./layouts/habile_layout','N','20231016230419',18330571,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18327285,18322954,'./layouts/bcptwta','N','20231017121349',18328111,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18327287,18322950,'./widgets/tag_list/skins/tagcloud','N','20231017043650',18328078,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18327419,18322954,'./layouts/mh_simple','N','20231017202429',18327611,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22245529,18322977,'./modules/point/icons/2sis_icon','N','20231019160936',22245577,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18327462,18322927,'./widgets/gagachat','N','20231017184822',22555267,'3.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18327743,18322954,'./layouts/Treasurej_Heart_Note','N','20231018000413',19334770,'1.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18327995,18322950,'./widgets/counter_status/skins/miznkiz_simple_counter','N','20230930120217',18339071,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18328243,18322927,'./widgets/CoolirisPlayer','N','20231017002846',18332482,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18328356,18322927,'./widgets/newest_medias','N','20231016224711',18330464,'v0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18328672,18322954,'./layouts/PXE_leaflet_lite','N','20231017124206',18339574,'1.02 Final');
INSERT INTO `xe_autoinstall_packages` VALUES (18328730,18322950,'./widgets/login_info/skins/treasurej_simple150px','N','20231017180802',18953730,'1.5.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18330288,18322950,'./widgets/login_info/skins/sleepless_simple','N','20231017084844',18332123,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18330488,18322927,'./widgets/webzine/skins/LILY_GoodStyle','N','20231017173057',18333192,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18330513,18322950,'./widgets/tag_list/skins/treasurej_tagcloud','N','20231017192343',18778301,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18330814,18322954,'./layouts/messenger','N','20231016220257',18331384,'Messenger_v0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18331803,18322943,'./modules/board/skins/p_board_p','N','20231018065134',18845219,'3.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18334573,18322952,'./widgetstyles/webslice','N','20231017092904',18338237,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18334938,18322923,'./modules/kin','N','20231018195533',21965762,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18334979,18322925,'./addons/popup','N','20231017132140',18335423,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18334980,18322925,'./addons/piclens','N','20231017042851',20168732,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18334989,18322925,'./addons/func_include','N','20231017110820',18336654,'v1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18334990,18322925,'./addons/entry','N','20231017204657',18685479,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18334996,18322923,'./modules/media','N','20231017043102',18336696,'v0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18335009,18322927,'./widgets/rnq_newest_document','N','20231017021101',18336745,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18335021,18322927,'./widgets/division','N','20230922144404',20582119,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18335028,18322950,'./widgets/login_info/skins/rnq_login','N','20231017223346',18337247,'v0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18335034,18322950,'./widgets/rnq_newest_document/skins/rnq_newest_integrate','N','20231017135709',18798607,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18335040,18322950,'./widgets/rnq_newest_document/skins/rnq_newest_default','N','20231017183842',18798214,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18335043,18322923,'./modules/nms','N','20231017164304',19520872,'0.9.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18335048,18322927,'./widgets/nms_info','N','20231017221336',18349106,'0.1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18335090,18322943,'./modules/board/skins/xe_naradesign','N','20231017065553',18335100,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18335281,18322923,'./modules/join_extend','N','20231020032307',18988537,'0.5.3.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18335356,18322943,'./modules/textyle/skins/corporate','N','20231016225415',18335357,'0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (18335369,18322950,'./widgets/content/skins/naradesign','N','20231017174737',18335372,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18335382,18322950,'./widgets/login_info/skins/webmini','N','20231017040101',18336191,'3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18337279,18322950,'./widgets/rnq_newest_document/skins/rnq_newest_notice','N','20231017021325',18798196,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18338697,18322925,'./addons/uccup','N','20231017081745',18338747,'v2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18338699,18322943,'./modules/board/skins/xe_uccup','N','20231017203028',18338792,'v2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18342939,18322925,'./addons/comment_new','N','20231017110009',18670429,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18346921,18322927,'./widgets/randomchat','N','20231017082944',18517236,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18347510,18322954,'./layouts/aginet_official_v2','N','20231017222948',18575161,'2.0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18351409,18322923,'./modules/zzz_menu_new','N','20231018133741',21832040,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18354173,18322952,'./widgetstyles/sz_gradient','N','20231017102745',18354312,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18354463,18322977,'./modules/point/icons/lv','N','20230912051233',19013505,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18354979,18322977,'/ modules / point / icons','N','20231017051325',18355002,'SuddenAttack + 확장');
INSERT INTO `xe_autoinstall_packages` VALUES (18357476,18322954,'./layouts/xe_sunooDMLg','N','20231017130930',19462033,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18360610,18322927,'./widgets/flowing_pictures','N','20231017123932',18648791,'1.1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18362403,18322954,'./layouts/xe_sunooDMRg','N','20231017232433',19462101,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18366133,18322943,'./modules/join_extend/skins','N','20231017183643',18366143,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18378357,18322954,'./layouts/xe_cafe','N','20231018195600',21803889,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18378362,18322950,'./widgets/login_info/skins/default','N','20231009094014',20168245,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18381054,18322954,'./layouts/naver_photo_style','N','20231017142847',18429470,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18383233,18322954,'./layouts/Jungbok_layout_V3.0','N','20231017124050',18389790,'V3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18386463,18322943,'./modules/textyle/skins','N','20231017201859',19100013,'2.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18388093,18322925,'./addons/bekmeProhibite','N','20231018053852',18388181,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18398352,18322943,'./modules/board/skins/xe_official_planner123','N','20231019125639',22756196,'5.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18399622,18322977,'./modules/poin/954','N','20231017175242',18404551,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18409541,18322954,'./layouts/hankooktown2','N','20231017170626',19512809,'1.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18409634,18322950,'./widgets/login_info/skins/hk','N','20231017181204',18547214,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18410867,18322923,'./modules/pointsend','N','20231018033628',22756269,'1.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18410868,18322925,'./addons/member_pointsend','N','20231018001140',21227458,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18411910,18322950,'./widgets/newest_comment/skins','N','20231016221358',18413214,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18414428,18322954,'./layouts/Gom-e.net_Hankooktown2_Layout','N','20231017182819',18445386,'1.0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18419537,18322954,'./layouts/kindguyLayout(joins_200911_1)','N','20231017040641',18422597,'v.200911');
INSERT INTO `xe_autoinstall_packages` VALUES (18424676,18322954,'./layouts/gomenet_xe_official_v2','N','20231017045938',18426534,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753921,18322954,'./layouts/J_Smart','N','20231016150345',22755938,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18432183,18322954,'./layouts/kindguyLayout(munhwa_200911_1)','N','20231017200654',18432699,'v.200911');
INSERT INTO `xe_autoinstall_packages` VALUES (18432187,18322954,'./layouts/kindguyLayout(munhwa_200911_2)','N','20231017023336',18432723,'v.200911');
INSERT INTO `xe_autoinstall_packages` VALUES (18435775,18322927,'./widgets/level_point','N','20231017064921',22595479,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18447927,18322954,'./layouts/Gom2netLayoutEngland','N','20231017095901',18454140,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18448761,18322943,'./modules/board/skins/xe_official_hancoma_title_skin','N','20231017233821',18461302,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18454611,18322954,'./layouts/kindguyLayout(khan_200911_1)','N','20231017135029',18454709,'v.200911');
INSERT INTO `xe_autoinstall_packages` VALUES (18454629,18322954,'./layouts/kindguyLayout(khan_200911_2)','N','20231017013728',18454718,'v.200911');
INSERT INTO `xe_autoinstall_packages` VALUES (18459111,18322925,'./addons/addthis','N','20231017154954',18459913,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18510031,18322943,'./modules/textyle/skins/zirho','N','20231017045936',18569108,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18511514,18322925,'./addons/adult_keyword','N','20231017105255',22754386,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18512505,18322954,'./layouts/kindguyLayout(BlueN_200912_1)','N','20231009133842',18516495,'200912');
INSERT INTO `xe_autoinstall_packages` VALUES (18512506,18322954,'./layouts/kindguyLayout(BlueN_200912_2)','N','20231017080851',18516511,'200912');
INSERT INTO `xe_autoinstall_packages` VALUES (18527888,18322923,'./modules/oneban','N','20231017194637',18529981,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18536532,18322952,'./widgetstyles/xe_official','N','20231017192827',22756206,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18539546,18322925,'./addons/addvote','N','20231019220436',21244042,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18555205,18322950,'./widgets/counter_status/skins/sworld_counter','N','20231017185523',22756184,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18555654,18322952,'./widgetstyles/tingenara','N','20231017041548',18557124,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18561875,18322923,'./modules/smsontextyle','N','20231017225312',18569729,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18561895,18322927,'./widgets/sms_textyle','N','20231017172815',18569743,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18572882,18322954,'./layouts/xdom_v2','N','20231018181728',19595474,'2.5.2.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18572883,18322950,'./widgets/login_info/skins/xdom_login_v2','N','20231017224409',19051343,'2.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18577507,18322927,'./widgets/chat25','N','20231017110353',18587408,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18579525,18322950,'./widgets/login_info/skins/tingenaralogin','N','20231017221327',18587232,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18589320,18322923,'./modules/cashbook','N','20231020043507',19603368,'0.3.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18595500,18322943,'./modules/integration_search/skins/default_xgenesis','N','20231020051520',18596361,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18595504,18322954,'./layouts/xe_official_v2_xgenesis','N','20230922110352',18596408,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18595711,18322943,'./modules/communication/skins/name','N','20231018110832',18597241,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18604859,18322927,'./widgets/bannerWidget','N','20231019210322',22756248,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18606308,18322954,'./layouts/elkha_fge','N','20231017062457',18657582,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18606314,18322954,'./layouts/elkha_sky','N','20231018134017',19822870,'1.4.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18606318,18322954,'./layouts/paper_layer','N','20231017091300',18611976,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18607436,18322923,'./modules/wizardxe','N','20231017101122',19150177,'0.0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18607444,18322927,'./widgets/gallery_frame','N','20231017180946',18619741,'0.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18607471,18322927,'./widgets/bangbang_alltogether','N','20231017073216',18645219,'0.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18607483,18322954,'./layouts/zirho_layout','N','20231017091312',18645390,'0.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18610979,18322923,'./modules/msg_admin','N','20231017193155',18614159,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18612951,18322954,'./layouts/elkha_simple','N','20231001011719',18633735,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18617496,18322943,'./modules/textyle/skins/Viewfinder','N','20231017120405',18678663,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18618046,18322950,'./widgets/counter_status/skins/tingenara','N','20231017185619',18620661,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18621989,18322923,'./modules/gagafilemd5','N','20231017152015',18684166,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18627986,18322927,'./widgets/banner_script','N','20231017182806',18634779,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18631776,18322950,'./widgets/content/skins/official_board_style','N','20231019192209',18638860,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18631835,18322954,'./layouts/kindguyLayout(201001_Kindguy4_1_xe1.3.1.2)','N','20231017150258',18634134,'201001');
INSERT INTO `xe_autoinstall_packages` VALUES (18631838,18322954,'./layouts/kindguyLayout(201001_Kindguy4_2_xe1.3.1.2)','N','20231017214036',18634163,'201001');
INSERT INTO `xe_autoinstall_packages` VALUES (18632016,18322943,'./modules/board/skins/faq','N','20231017230617',18636828,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18634568,18322927,'./widgets/quick_menu','N','20231020051511',18638902,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18634632,18322927,'./widgets/lnb_menu','N','20231020043558',20558937,'0.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18634838,18322954,'./layouts/vz_clear_blue','N','20231017175214',18635623,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18635216,18322950,'./widgets/login_info/skins/xgenesis_login','N','20231017172959',18638870,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18636930,18322927,'./widgets/MinionInXE','N','20231017124729',18835506,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18637860,18322954,'./layouts/xgenesis_official','N','20231020051215',19516685,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18640942,18322923,'./modules/pop_up','N','20231019095307',18646378,'0.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18640943,18322925,'./addons/pop_up','N','20231019101928',19149746,'0.0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (18642464,18322954,'./layouts/elkha_graystyle','N','20231019011752',22756125,'2.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18642836,18322952,'./widgetstyles/gray_style','N','20231019011753',18826509,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18646646,18631347,'./modules/editor/skins/dreditor/drcomponents/iframe','N','20231017103637',18646655,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18647145,18322952,'./widgetstyles/mo_colorline','N','20231017150850',18654291,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18648969,18322925,'./addons/soo_for_muzik_player','N','20231018012752',19687129,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18649607,18322929,'./modules/editor/components/jowrney_logmap','N','20231018190809',19533339,'0.4.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18649610,18322950,'./widgets/login_info/skins/2010_jowrney_release','N','20231017194315',18654744,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18649613,18322954,'./layouts/2010_jowrney','N','20231016235305',19060126,'0.2.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18650492,18322954,'./layouts/elkha_sky2','N','20231017224520',18865308,'1.4.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18650580,18322929,'./modules/editor/components/soo_naver_bookinfo','N','20231020061749',19044122,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18652557,18631347,'./modules/editor/skins/dreditor/drcomponents/code','N','20231016215619',18652761,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18655593,18322954,'./xe/layouts','N','20231018053651',18667484,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18662544,18322954,'./layouts/blooz_layout_ver3','N','20231017204125',18701665,'3.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18663182,18322954,'./layouts/shx_chameleon','N','20231017102657',18668568,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18664319,18322925,'./addons/P3P','N','20231017194156',18668421,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18666669,18322923,'./modules/stopsmoking','N','20231020051512',19493136,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18669571,18322977,'./modules/point/icons/dark','N','20231016233128',18672429,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18673912,18322929,'./modules/editor/components/soo_google_map','N','20231019200259',22231835,'0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (18677776,18322954,'./layouts/lay','N','20230922145632',18682153,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18678675,18322943,'./modules/textyle/skins/Emplode','N','20231017195306',18700716,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (18679839,18322929,'./modules/editor/components/soo_naver_image','N','20231017224654',18690439,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18681809,18322925,'./addons/age_restrictions','N','20230924223631',18687595,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18682481,18322925,'./addons/soo_js_exif','N','20231020054803',18859459,'0.3.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18682907,18322954,'./layouts/ueo','N','20231017102647',19051858,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18686122,18322943,'./modules/board/skins/elkha_xe_official','N','20231017045829',18687734,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18697182,18322927,'./widgets/calendar_plannerXE123','N','20231019125659',22756195,'5.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18700386,18322954,'./layouts/koo','N','20231017220744',18707058,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18703085,18322954,'./layouts/jimseung_nate','N','20230922110718',18705555,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18703356,18322954,'./layouts/how','N','20231017103854',18707091,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18705012,18322954,'./layouts/layoutSkin(kindguy5.1_xe1.4.0.5)','N','20231016235001',18708750,'201002');
INSERT INTO `xe_autoinstall_packages` VALUES (18705013,18322954,'./layouts/layoutSkin(kindguy5.2_xe1.4.0.5)','N','20231017125550',18708767,'201002');
INSERT INTO `xe_autoinstall_packages` VALUES (18706109,18322954,'./layouts/jimseung_biz','N','20231017124039',18711864,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18706113,18322954,'./layouts/jimseung_simplesub','N','20231017073059',18709461,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (18712555,18322954,'./layouts/nom','N','20230922110855',18712759,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18712640,18322927,'./widgets/JW_player','N','20231017165850',18712773,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18714842,18322954,'./layouts/eond_portal_main_2col_right','N','20231017231229',21776053,'0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18716138,18322954,'./layouts/bom','N','20231017191350',18722236,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18716480,18322954,'./layouts/voo','N','20231017170956',18722243,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19692912,18322925,'./addons/music24','N','20231017142558',19692913,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18722759,18322954,'./layouts/xe_sunooEmLg','N','20231017044840',19462122,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18730576,18322929,'./modules/editor/components/interpark_book_search','N','20231017135322',18740294,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18731809,18322943,'./modules/board/skins/loser_guestbook','N','20231017122221',19235463,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18735942,18322954,'./layouts/mediaOn','N','20231017192440',18746917,'1.02');
INSERT INTO `xe_autoinstall_packages` VALUES (18739967,18322950,'widgets/content/skins/YGH_line','N','20231017235133',18741565,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18745485,18322923,'./modules/syndication','N','20231019135416',22755525,'5.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18748689,18322954,'./layouts/daerew_v4_layout','N','20231017232701',18926143,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18750254,18322950,'./widgets/login_info/skins/daerew_v4_login','N','20231017180104',18751630,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18766685,18322954,'./layouts/elkha_graystyle2_lite','N','20231017175105',18844159,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18766699,18322943,'./modules/board/skins/quiet_board','N','20231018100817',18766890,'2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18766704,18322925,'./addons/member_layer_config','N','20231017024446',18766875,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18773076,18322923,'./modules/blogshop','N','20231017080206',18920619,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18773077,18631347,'./modules/editor/skins/dreditor/drcomponents/blogshop_writer','N','20231017062442',18920604,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18775186,18322950,'xe/modules/member/skins/default','N','20231017003844',18784334,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18777712,18322925,'./addons/add_document','N','20231017064334',18794485,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18779239,18322925,'./addons/daumview_vote','N','20231017234847',18898435,'0.5.5');
INSERT INTO `xe_autoinstall_packages` VALUES (18790298,18322925,'./addon/hellomaster','N','20231017085622',18794783,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18790924,18322954,'./layouts/xe_sunooEmRg','N','20231017172232',19462147,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18800584,18322923,'./modules/sboard','N','20231017164715',18878072,'2.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18802611,18322950,'./widgets/content/skins/daerew_webzine_notice','N','20231012161405',18810316,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18802619,18322950,'./widgets/counter_status/skins/daerew_counter','N','20231017230543',19433478,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18809955,18322943,'./modules/editor/skins/tinyMCE','N','20231018065816',18810260,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18818977,18322954,'./layouts/blackcity','N','20231016231303',18832088,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18827207,18322950,'./widgets/login_info/skins/git_login_simple','N','20231017084621',18993961,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18832037,18322954,'./layouts/rom','N','20231017041008',18837238,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18832352,18322923,'/editer/skins','N','20231017174037',18838645,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18835470,18322927,'./widgets/splanner','N','20231018110730',18878338,'0.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18846103,18322954,'./layouts/SORRENT_LAYOUT_RELEASE','N','20231018002842',18851320,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18846109,18322950,'./widgets/login_info/skins/SORRENT_LOGIN','N','20231017075615',18851330,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18849332,18322954,'./layouts/layout_skin(xenara1.1_xe1.4.0.10)','N','20231018165646',18853151,'201004');
INSERT INTO `xe_autoinstall_packages` VALUES (18852198,18322952,'./widgetstyle','N','20230912084402',18853308,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18853350,18322925,'./addons/member_join_captcha','N','20231017210117',18855317,'0.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18855088,18322954,'./layouts/elkha_dr4','N','20231017124751',19703575,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18864982,18322977,'./modules/point/icons/cs_level','N','20231017041237',18866619,'0.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (18866481,18322954,'./layouts/Treasurej_Lifestyle','N','20231017194519',21971882,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18867310,18322923,'./modules/project','N','20231017213614',21278683,'1.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18877427,18322954,'./layouts/Treasurej_Craftwork','N','20231017000050',19032188,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18882151,18322925,'./addons/facebook_social','N','20231017012238',18882152,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18900548,18322954,'./layouts/layout_skin(kindguy1.0_type1_xe1.4.1.1)','N','20231017211344',18901309,'201005');
INSERT INTO `xe_autoinstall_packages` VALUES (18900551,18322954,'./layouts/layout_skin(kindguy1.1_type2_xe1.4.1.1)','N','20231017062613',18901322,'201005');
INSERT INTO `xe_autoinstall_packages` VALUES (18904767,18322977,'./modules/point/icons/raycity_m','N','20230930235426',18908827,'0.1v');
INSERT INTO `xe_autoinstall_packages` VALUES (18904819,18322977,'./modules/point/icons/raycity_f','N','20231017142731',18908837,'0.1v');
INSERT INTO `xe_autoinstall_packages` VALUES (18905882,18322923,'./modules/loginlog','N','20231017224846',22756183,'1.5.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18910976,18904838,'./modules/editor/styles/dreditor','N','20231017052932',18910977,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18915805,18322943,'./modules/textyle/skins/babyBlack','N','20231017000114',18918781,'v0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18917848,18322954,'./layouts/xeVector','N','20231017113538',18918526,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753922,18322950,'./widgets/content/skins/J_Smart','N','20231016150913',22755918,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18929288,18322954,'./layouts/mcube','N','20231017042709',18957849,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18929292,18322923,'./modules/mcubeimg','N','20231017230347',18983143,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18939397,18322950,'./widgets/login_info/skins/kan_login','N','20230921145216',18948357,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18943118,18322943,'./modules/bodex/skins','N','20231017132311',18953950,'완성버전');
INSERT INTO `xe_autoinstall_packages` VALUES (18953963,18322943,'./modules/board/skins/xe_official_sky','N','20231019153907',18971884,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18956310,18322923,'./modules/iconshop','N','20231017090548',18999633,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (18956315,18322925,'./addons/member_icon_print','N','20231019200715',18968140,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18957505,18322927,'./widgets/cu3er','N','20231018003523',18983161,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18959079,18322954,'./layouts/layoutskin_wave_blue','N','20231018221335',21382225,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18968288,18322954,'./layouts/kinesis_sitelist','N','20231018000442',19348039,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18975451,18322954,'./layouts/layout_skin(kindguy5.0_type2_xe1.4.1.1)','N','20231017011802',18981166,'201006');
INSERT INTO `xe_autoinstall_packages` VALUES (18975452,18322954,'./layouts/layout_skin(kindguy5.1_type2_xe1.4.1.1)','N','20231017072726',18981176,'201006');
INSERT INTO `xe_autoinstall_packages` VALUES (18980346,18322943,'./modules/board/skins/sejin7940_board','N','20231019153911',20120497,'3.7');
INSERT INTO `xe_autoinstall_packages` VALUES (18982154,18322925,'./addons/addfooter','N','20230921155202',18983942,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18982156,18322925,'./addons/additional_mid','N','20231017191431',18983989,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18982164,18322925,'./addons/header_editor','N','20231017202110',18984012,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18982175,18322925,'./addons/id_rejection','N','20231017082849',18984037,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18982191,18322925,'./addons/meta_add','N','20231017100847',19814958,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (18982192,18322925,'./addons/q_emphasis','N','20231005075523',18984109,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18982195,18322925,'./addons/soo_add_content','N','20231019203708',22755412,'0.6a');
INSERT INTO `xe_autoinstall_packages` VALUES (18982196,18322925,'./addons/soo_autolang','N','20231017200748',19687115,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (18982221,18322925,'./addons/soo_parking','N','20231019193627',22755425,'0.25');
INSERT INTO `xe_autoinstall_packages` VALUES (18990092,18322925,'./addons/IEblock','N','20231017215316',18993329,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18990133,18322925,'./addons/referercheck','N','20231017200904',19009627,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18990588,18322925,'./addons/soo_mcrblog_link','N','20231019200240',21924371,'1.2.14');
INSERT INTO `xe_autoinstall_packages` VALUES (18994748,18904838,'./modules/editor/components/emoticon/tpl/images/pink','N','20231017114637',18995710,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18995899,18322952,'./widgetstyles/sorrent_simplebox','N','20231017021237',18998803,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (18997142,18322977,'./modules/point/icons/300','N','20231017112912',18998204,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18997930,18322923,'./modules/coupon','N','20231019002449',21627586,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18998734,18994172,'./m.layouts/naverstyle','N','20231018213917',19000655,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (18999302,18322950,'./widgets/login_info/skins/kan_login_v2','N','20231017012431',19002080,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19009872,18904838,'./modules/editor/components/emoticon/tpl/images/congcon','N','20231016230115',19010544,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19015265,18322977,'./modules/point/icons/cool','N','20231017072029',19026346,'0.1v');
INSERT INTO `xe_autoinstall_packages` VALUES (19015269,18322977,'./modules/point/icons/CA_L_Mark','N','20231011004441',19026360,'0.1v');
INSERT INTO `xe_autoinstall_packages` VALUES (19018202,18322943,'./modules/board/skins/simple_blue','N','20231018145153',19023717,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19020313,18322943,'./modules/board/skins/pastel_light_purple','N','20231018062903',19028626,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19024107,18322923,'./modules/lottery','N','20230924224108',19027139,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19027281,18322950,'./widgets/attendance_check/skins/sky_next_line','N','20231017053035',19029151,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (19030767,18322950,'./widgets/tab_newest_document/skins/tab_sky','N','20231017171916',19039476,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19030768,18322943,'./modules/attendance/skins/sky_at_board','N','20230930192011',19038444,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (19031365,18322954,'./layouts/elkha_neutral','N','20231017210040',20692034,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19032971,18322954,'./layouts/Treasurej_Craftwork_C','N','20231017071000',19038047,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19034752,18322954,'./layouts/elkha_x610','N','20231017074053',19072093,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19044000,18322954,'./layouts/kom','N','20231017114428',19050135,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19044001,18322950,'./widgets/login_info/skins/tingenara','N','20231017154512',19050124,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19049200,18322925,'./addons/domain_check','N','20231017231327',19050476,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19050369,18322954,'./layouts/crom_fixy_layout_private','N','20230922145529',19053826,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19051939,18322954,'./layouts/zom','N','20230922111753',19087062,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19056755,18994170,'./modules/board/m.skins/xe_official_planner123','N','20231019125649',22756194,'5.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19060125,18994172,'./m.layouts/2010_jowrney_mobile','N','20231017191536',19063585,'0.1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19060827,18322954,'./layouts/xom','N','20231017123214',19092257,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19064264,18322977,'./modules/point/icons/getam','N','20231017094815',19064959,'0.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (19064410,18322977,'./modules/point/icons/simple_TS','N','20231017205544',19064414,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19068106,18322977,'./modules/point/icons/nova2','N','20231017190648',19068107,'0.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (19069946,18322925,'./addons/cookie-free_domains','N','20231017130202',19070012,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19071245,18322950,'./widgets/point_status/skins/cloverworld_skin','N','20231017145954',19071386,'1.0.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19073125,18322954,'./layouts/fsfsdas_neutral','N','20231017214401',19848942,'0.4.4');
INSERT INTO `xe_autoinstall_packages` VALUES (19073195,18322923,'./modules/krzip_popup','N','20230912110213',19073196,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19073227,18322943,'./modules/member/skins/default_krzip','N','20231017212254',19073228,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19076083,18322927,'./widgets/sayradio','N','20231017182218',19077336,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19077792,18322927,'./widgets/twitter_follow','N','20231017005146',19077793,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19080637,18322950,'./widgets/rank_point/skins/elkha','N','20231019203724',19080640,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19081557,18322950,'./widgets/newest_document/skins/layoutskin_webzine_v2','N','20231017152935',21596748,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19081914,18322925,'./addons/tweet_button','N','20231009185953',19083524,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19088419,18322927,'./widgets/contentextended','N','20231020111413',20182258,'2.43');
INSERT INTO `xe_autoinstall_packages` VALUES (19088764,18322954,'./layouts/crom_black_box_layout','N','20230922145522',19089573,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19090619,18322954,'./layouts/nabul2_milate_8T','N','20230930195539',19092504,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19097462,18322954,'./layouts/pb','N','20231017235433',19125110,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19098862,18322954,'./layouts/crom_groove_eco_private','N','20231017044215',19099350,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19099015,18322954,'./layouts/ure','N','20231016221030',19099016,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19100570,18322954,'./layouts/PXE_koi','N','20230922145356',19504533,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19109313,18322927,'./widgets/content_specificdoc','N','20231019140442',19109314,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19116278,18322954,'./layouts/modern_line','N','20231018080208',19135412,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19122280,18322952,'./widgets/widgetstyles','N','20231017041540',19122812,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19125571,18322943,'./moudles/board/skins','N','20231017213451',19128667,'v2');
INSERT INTO `xe_autoinstall_packages` VALUES (19130198,18322923,'./modules/analytics','N','20231017124128',22755256,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19130808,18322927,'./widgets/analytics_flash_counter','N','20230922143645',19157494,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19133209,18322927,'./widgets/newest_document_category','N','20231017150347',19134377,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19133654,18322954,'./layouts/Rebirth_A','N','20231017172303',19224091,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19135133,18322954,'./layouts/seven','N','20231017172911',19955250,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19135768,18322950,'./widgets/newest_document/skins/factory_basic_2','N','20230921110852',19135769,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19136412,18322950,'./widgets/newest_comment/skins/factory_basic_2','N','20231017003742',19136413,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19137447,18322925,'./addons/rainbow_link','N','20231017234134',19431548,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19138636,18322954,'./layouts/xenoriter_simple','N','20231017212108',19138637,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19141813,18322950,'./widgets/webzine/skins','N','20231017221635',19141814,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19145884,18322925,'./addons/always_follower','N','20231018082041',19503998,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19157569,18322925,'./addons/google_analytics','N','20231017221314',19157571,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19178969,18322954,'./layouts/xe_official_v2_TmaKing','N','20231017045503',19186638,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19182698,18322943,'./modules/board/skins/new_faq','N','20231017161120',20467493,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19187623,18322925,'./addons/refhide','N','20231016230414',19191147,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19197538,18322950,'./modules/editor/skins/webhard','N','20231019140439',19291157,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19197549,18322943,'./modules/board/skins/webhard','N','20231019140510',19291163,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19201015,18322954,'./layouts/kinesis_cs01f','N','20231006172840',19201021,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19201082,18322923,'./modules/mail_m9','N','20230916014002',19201083,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19202124,18322923,'./modules/lunar','N','20231017151540',19213083,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19202128,18322943,'./modules/member/skins/default(lunar)','N','20231017042901',19467792,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19202617,18322954,'./layouts/gom2net_layout','N','20231017052845',19204527,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19202629,18322925,'./addons/webfontface','N','20231018000615',19206513,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19208301,18322927,'./widgets/coinslider','N','20231019141158',20182294,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19212262,18322923,'./modules/lucene','N','20231020080601',19315303,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19213125,18322927,'./widgets/solarlunar','N','20230922143639',19213126,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19218468,18322927,'./widgets/birthday','N','20231017234407',19218473,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19219093,18322954,'./layouts/kia','N','20231017201512',19219094,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19219428,18322927,'./widgets/srchat','N','20231018194720',22754692,'219.48');
INSERT INTO `xe_autoinstall_packages` VALUES (19226818,18322954,'./layouts/gom2net_2nd_layout','N','20231017135623',19273763,'2.0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (21344825,18322977,'./modules/point/icons/level','N','20231017023556',21360732,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19230703,18322954,'./layouts/eond_official','N','20231017104911',21382865,'1.4.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19231437,18322950,'./widgets/planet_document/skins/eond','N','20231017105316',19283934,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19231709,18322952,'./widgetstyles/eond_webzine','N','20231016152132',19231710,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19231756,18322952,'./widgetstyles/eond_doubleline','N','20231017225045',19231762,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19232784,18322954,'./layouts/nabul2_Wishful','N','20231017051431',19232785,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19234197,18322954,'./layouts/eond_mynote','N','20231017165234',21723208,'1.4.4');
INSERT INTO `xe_autoinstall_packages` VALUES (19235403,18322943,'./modules/board/skins/eond_board','N','20230929181016',19235419,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19235552,18322950,'./widgets/login_info/skins/eond_mynote','N','20231017102400',21651021,'0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (19235579,18322950,'./widgets/counter_status/skins/mynote','N','20231002171516',19252856,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19248816,18322954,'./layouts/xe_official_v2_Toyou','N','20231017050001',19258583,'c');
INSERT INTO `xe_autoinstall_packages` VALUES (19260194,18322927,'./widgets/contentslider','N','20231017204009',20199435,'2.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19270268,18322950,'./widgets/bgw_menu/skins/naradesign','N','20230917033434',19270269,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19271512,18322950,'./widgets/point_status/skins/eond_official_login','N','20231017223808',19271513,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19274574,18322925,'./addons/a_soo_wikidoc_pointfixer','N','20231017002146',19274579,'1');
INSERT INTO `xe_autoinstall_packages` VALUES (19280154,18322954,'./layouts/kinesis_pl001f','N','20231017044319',19280155,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19283251,18322954,'./layouts/gom2net_3rd_layout','N','20231017035122',19283257,'3.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19285120,18322943,'./modules/board/skins/win_guestbook','N','20231017092853',19295125,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19293487,18322925,'./addons/soo_mobile_top','N','20231017142106',20892008,'3');
INSERT INTO `xe_autoinstall_packages` VALUES (19299608,18322977,'./modules/point/icons/ToYou_level','N','20231017190357',19299609,'ToYou_level_icon v1.');
INSERT INTO `xe_autoinstall_packages` VALUES (19302110,18322954,'./layouts/gardenoforchids','N','20231017051813',19302111,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19306395,18322925,'./addons/shortcut','N','20231017020240',19306492,'0.9.9.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19306873,18904838,'./modules/editor/components/emoticon/tpl/images/hicon','N','20231017185018',19310220,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19310933,18322927,'./widgets/xclient','N','20231017215231',19660872,'1.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19320728,18322954,'./layouts/darkdream','N','20231017094908',19320733,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19322818,18322954,'./layouts/darkgrid','N','20231017180138',19322819,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19323693,18322923,'./modules/antiaccess','N','20231018045247',20181898,'1.0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19325680,18322923,'./modules/pipingxe','N','20231018043357',19546936,'1.0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753439,18322927,'./widgets/tocplus','N','20231017154421',22754373,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19330741,18322950,'./widgets/tab_newest_document/skins/colorful','N','20231018134636',19330742,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19336589,18322925,'./addons/soo_block_UA','N','20231018004544',19336590,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19340331,18322954,'./layouts/CN_No1','N','20231017102003',19344956,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19344633,18322943,'./modules/member/skins','N','20230912142315',19349355,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19346257,18322927,'./widgets/googlesearch','N','20230922143951',19349099,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19348911,18322943,'./modules/board/skins/simpleborder_guestbook','N','20231016210712',19356183,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19349000,18322943,'./modules/board/skins/xe_board_extended','N','20231017204854',19349001,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19351727,18322954,'./layouts/crom_eco','N','20230922145457',19351728,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19353209,18322950,'./widgets/tab_newest_document/skins/tab_flash','N','20231017191442',19353210,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19355038,18322950,'./widgets/googlesearch/skin/multi_box','N','20230912101506',19355039,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19355511,18904838,'./modules/editor/skins/simple_editor','N','20231017222110',19355526,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19355521,18322950,'./widgets/googlesearch/skin/translate','N','20231017155104',19355602,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19360170,18322954,'./layouts/layout_skin(xenara_v1.0_type1_xe1.4.4.1)','N','20231017172205',19360187,'201010');
INSERT INTO `xe_autoinstall_packages` VALUES (19360171,18322954,'./layouts/layout_skin(xenara_v1.1_type3_xe1.4.4.1)','N','20231017191712',19360205,'201010');
INSERT INTO `xe_autoinstall_packages` VALUES (19426823,18322943,'./modules/poll/skins/clevis_poll','N','20230913030404',19440072,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19428586,18322954,'./layouts/fullmetal_by_daramkun','N','20231017063932',19432660,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19431275,18322943,'./module/board/skins','N','20231017194014',19432793,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19431519,18322925,'./addons/favicon','N','20231017020201',19434038,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19433415,18322925,'./addons/jquery_external_load','N','20231019194950',22674018,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19440527,18322954,'./layouts/CN_No2','N','20231017081733',19440528,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19442769,18322925,'./addons/sex_restrictions','N','20231017161253',19455388,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19456847,18322977,'modules/point/icons','N','20231017072943',19456896,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19456969,18322954,'./layouts/impress-06','N','20231017021546',19464583,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19458868,18322925,'./addons/soo_feed_delay','N','20231019200247',19458869,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19462008,18322927,'./widgets/login_sunoo','N','20230924211524',19462009,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19462173,18322954,'./layouts/xe_sunooNSLg','N','20231017131035',19462174,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19462195,18322954,'./layouts/xe_sunooWALg','N','20231017032155',19462196,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19473533,18322943,'./modules/integration_search/skins/xgenesis_official','N','20231020051517',19473716,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19476930,18322927,'./widgets/stopsmoking_status','N','20231020051515',19476931,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19491937,18322954,'./layouts/xe_sunooTALg','N','20231017072318',19491938,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19497436,18322923,'./modules/analysis','N','20231020043603',19528063,'0.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19503269,18322925,'./addons/analysis','N','20231020043652',19527972,'0.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19506416,18322954,'./layouts/PXE_clio','N','20231017004842',19506418,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19509849,18322954,'./layouts/hankooktown','N','20231017014829',19509864,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19510234,18322954,'./layouts/gallery_layout','N','20231017032612',19532739,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19510889,18322923,'./modules/portalpoint','N','20231017180148',19741258,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19512714,18322954,'./layouts/heaven','N','20231017104347',19514431,'Alpha');
INSERT INTO `xe_autoinstall_packages` VALUES (19513447,18322925,'./addons/sns_linker_lite','N','20231019200243',22754189,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19513978,18322954,'./layouts/layout_photoGalleryA_Free','N','20231017074141',19514630,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19514688,18322927,'./widgets/xgenesis_login','N','20231020043426',19539957,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19515289,18322927,'./widgets/minion4','N','20231017203154',19635737,'2.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19515672,18322954,'./layouts/xe_sunooBCLg','N','20231017035945',19515673,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19518187,18322923,'./modules/socialxe','N','20231018152649',22123379,'1.0.11');
INSERT INTO `xe_autoinstall_packages` VALUES (19518188,18322923,'./modules/socialxeserver','N','20231017222353',22120897,'1.0.11');
INSERT INTO `xe_autoinstall_packages` VALUES (19518196,18322925,'./addons/socialxe_helper','N','20231017223042',20361435,'1.0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (19518201,18322927,'./widgets/socialxe_comment','N','20231015003714',20361452,'1.0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (19518204,18322927,'./widgets/socialxe_info','N','20231017232641',19679127,'1.0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (19519171,18322950,'./widgets/tab_newest_document/skins/xe_official','N','20231020010639',19519369,'xe_official');
INSERT INTO `xe_autoinstall_packages` VALUES (19519182,18322923,'./modules/aroundmap','N','20231019175049',19519377,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19519186,18322925,'./addons/qrcode','N','20231019175044',19528193,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19519188,18322923,'./modules/rssboard','N','20231019185754',19539111,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19519235,18322923,'./modules/sphinx','N','20231019175047',19519336,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19522899,18322923,'./modules/bannermgm','N','20231019175039',19523059,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19522900,18322927,'./widgets/bannermgm_widget','N','20231019175041',19525794,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19524346,18322950,'./widgets/login_info/skins/gallery_layout_login','N','20231017105051',19527566,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19525249,18322943,'./modules/textyle/skins/fotowallXE','N','20231016222846',19526784,'0.4.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19526505,18322927,'./widgets/bible_read','N','20231017151311',19585818,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19526573,18322943,'./modules/board/skins/lune_board','N','20231017192134',20290780,'1.04');
INSERT INTO `xe_autoinstall_packages` VALUES (19527443,18322925,'./addons/event_board','N','20231019150034',19527447,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19527550,18322927,'./widgets/gallery_layout_widget','N','20230930181926',19532746,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19527787,18322927,'./widgets/sitemap','N','20231020032315',19527788,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19529399,18322954,'./layouts/crom_iXE','N','20231019075334',19600243,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19529916,18322943,'./modules/editor/skins/jowrneyEditor','N','20231017060012',19533373,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19529917,18322977,'해당사항없음','N','20231017211116',19533355,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19530900,18322950,'./widgets/content/skins/church_skin','N','20231017191424',19532808,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19530901,18322950,'./widgets/login_info/skins/church_layout_login','N','20231017154741',19530913,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19532317,18322954,'./layouts/portal_layout','N','20231017233137',19533824,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19532779,18322954,'./layouts/church_layout','N','20231017221125',19532784,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19533731,18322977,'./modules/point/icons/xeicon_coa','N','20231017140931',19736559,'3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19534671,18322927,'./widgets/sejin7940_calendar','N','20231017171632',19534672,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19548524,18322927,'./widgets/newest_document_tab','N','20231019151529',19548663,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19549401,18322925,'./addons/source_marking','N','20231020030634',19549402,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19550402,18322925,'./addons/socialxe_mid_forwarder','N','20231017211913',20361446,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19551431,18322977,'./modules/document/tpl/icons','N','20231005122345',19551432,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19555797,18322925,'./addons/prettyphoto','N','20231017232134',21336236,'1.1.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19555878,18322925,'./addons/webfont','N','20231017204644',21378394,'1.1.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19555887,18322925,'./addons/css3pie','N','20230928072038',20878725,'1.3.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19555890,18322954,'./layouts/sketchbook5','N','20231018004759',21336191,'1.6.3.6');
INSERT INTO `xe_autoinstall_packages` VALUES (19555903,18322943,'./modules/board/skins/sketchbook5','N','20231019135359',22754336,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19555926,18322925,'./addons/tag_relation/skins/default','N','20231005030107',19915132,'0.9.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19555927,18322950,'./widgets/socialxe_comment/skins/sketchbook5','N','20231017142730',22509535,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19560898,18322943,'./modules/member/skins/photoGalleryA','N','20231017145303',19560902,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19565911,18322925,'./addons/soo_body_content','N','20231005075512',19565912,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19566135,18322977,'./modules/point/icons/NetCabin_Lvic','N','20231016232844',19576465,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19570840,18322954,'./layouts/CN_No3','N','20231017165251',19582438,'1.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (19574799,18322925,'./addons/smenubox_scaleupdown','N','20231017100317',19576713,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19583417,18322925,'./addons/wiki-link','N','20231017160757',19600787,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19594292,18994172,'./m.layouts/sketchbook5Mobile','N','20231020081939',20557098,'1.2.2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19594435,18994170,'./modules/board/m.skins/sketchbook5Mobile','N','20231018015453',20973906,'1.2.3.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19600206,18322925,'./addons/autowww','N','20231019103845',19604227,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19608490,18322925,'./addons/del-www','N','20230913003156',19608585,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19618448,18322954,'./layouts/Tony','N','20231009072302',19620083,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19618480,18322950,'./widgets/login_info/skins/Tony','N','20230922115012',19618481,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19623053,18322950,'./widgets/login_info/skins/neutral','N','20231017203605',20803425,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19623082,18322950,'./widgets/login_info/skins/graystyle','N','20231019011753',22756124,'0.22');
INSERT INTO `xe_autoinstall_packages` VALUES (19623904,18322954,'./layouts/layout_photoGalleyA_sub','N','20231017224712',19623910,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19623994,18322954,'./layouts/layout_newsMagazine_free','N','20230922145335',19623995,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19624853,18322950,'./widgets/login_info/skins/Quad','N','20231018170115',19624859,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19624858,18322954,'./layouts/Quad','N','20231017092107',19630832,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19630138,18322954,'./layouts/SimpleDropDown','N','20231018024515',20467486,'2.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19637507,18322943,'./modules/board/skins/JB_erebus_board','N','20231017183536',22450338,'1.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19639463,18322952,'./widgetstyles/lineBox','N','20231017223920',19639464,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19655120,18322954,'./layouts/NetCabin_X3','N','20231017233919',20430977,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19657758,18322954,'./layouts/NetCabin_X2','N','20231018190748',19657761,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19657941,18322929,'./modules/editor/components/chess','N','20231018055208',19688815,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19673444,18904838,'./modules/editor/styles/NomarginPTag','N','20231017212458',19675462,'0.0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19674194,18904838,'./modules/editor/styles/misol','N','20231016224813',19674198,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19674471,18322927,'./widgets/twitter','N','20231018024303',19676523,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19684891,18322954,'./layouts/elkha_pieces','N','20231018062646',19788968,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19684961,18322950,'./widgets/login_info/skins/eond_gateway','N','20231018184700',19684962,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19692489,18322927,'./widgets/music24_kr_clock','N','20231017181739',19692490,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19700913,18322954,'./layouts/elkha_monochrome','N','20231018000130',19803893,'0.12');
INSERT INTO `xe_autoinstall_packages` VALUES (19702417,18322950,'./widgets/login_info/skins/monochrome','N','20231017040224',20803243,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19702419,18322950,'./widgets/language_select/skins/monochrome','N','20231017114803',19702444,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19705472,18322927,'./widgets/content/skins/XEgrid_content','N','20231017042438',19705666,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19707673,18322950,'./widgets/newest_document/skins/CN_No_series','N','20231017125429',19707678,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19707730,18322952,'./widgetstyles/CN_No_series','N','20231017080031',19707731,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19707750,18322954,'./layouts/CN_No4','N','20231009061054',19708324,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19708869,18322927,'./widgets/navigation','N','20231018024955',19712189,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (19711536,18322954,'./layouts/people blue','N','20231018134433',19744693,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (19712183,18322954,'./layouts/smart','N','20231019101816',20902184,'0.9.9');
INSERT INTO `xe_autoinstall_packages` VALUES (19712751,18322954,'./layouts/layout_skin(xenara_v1.2_type2_xe1.4.5.2)','N','20231017180546',19712752,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19723352,18322927,'./widgets/facebook','N','20231017130312',19723353,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19740666,18322943,'./modules/textyle/skins/PHOTOGRAPHER','N','20230912235443',19757669,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19740680,18322943,'./modules/textyle/skins/DESIGNER','N','20231009023326',19757652,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19740711,18322943,'./modules/textyle/skins/designspiration','N','20230912023855',19757610,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19744664,18322943,'./modules/textyle/skins/BlueMood','N','20231017082232',19757584,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19749792,18322954,'./layouts/layoutwotc_text','N','20231017080245',22596494,'1.0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (19754728,18322977,'./modules/point/icons/ca_ladder_60','N','20231017231832',19755182,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19759864,18322927,'./widgets/google_map','N','20231017052332',19759892,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19765252,18322954,'./layouts/XEgrid_Free','N','20231017113118',19765321,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (19767397,18322954,'./layouts/columnist','N','20231017144039',20270404,'1.5.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775760,18322950,'./widgets/content/skins/Photographer','N','20231017082255',19775761,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775788,18322950,'./widgets/content/skins/default_new','N','20230912040122',19775789,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775816,18322950,'./widgets/content/skins/default2','N','20231017132936',19775820,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775829,18322950,'./widgets/tag_list/skins/default1','N','20231017005515',19775830,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775849,18322950,'./widgets/tag_list/skins/default2','N','20230912124610',19775850,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775878,18322950,'./widgets/tag_list/skins/default3','N','20231017101731',19775879,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775899,18322950,'./widgets/counter_status/skins/Designspiration','N','20231017154848',19775901,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775908,18322950,'./widgets/counter_status/skins/default_new','N','20231017013831',19775909,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775924,18322950,'./widgets/counter_status/skins/default2','N','20230912064532',19775928,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775942,18322950,'./widgets/category/skins/Designspiration','N','20230913180010',19775943,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775958,18322950,'./widgets/category/skins/BlogskinDesigner','N','20231016221348',19775962,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19775971,18322950,'./widgets/category/skins/default_new','N','20231018155411',19775972,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19804189,18322925,'./addons/elkha_www','N','20231009184014',20702493,'0.11');
INSERT INTO `xe_autoinstall_packages` VALUES (19806836,18322977,'./modules/point/icons/elkha_poporina_zerostar50','N','20231017233303',19806837,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19807569,18322950,'./widgets/login_info/skins/webengine_black','N','20231017130515',19827659,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19816429,18322954,'./layouts/CN_No5','N','20231018132914',19816430,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19816467,18322950,'./widgets/newest_document/skins/CN_No5','N','20231017103719',19816468,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19816486,18322950,'./widgets/newest_comment/skins/CN_No5','N','20231017011453',19816487,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19817434,18322929,'./modules/editor/components/eh_player','N','20231017185610',22755204,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (19818901,18322954,'./layouts/ikarusv1simple','N','20231017190228',19829113,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19831182,18322954,'./layouts/layout_skin(xenara_v3.0_type2_xe1.4.4.4)','N','20231018013533',19831183,'3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19831194,18322954,'./layouts/layout_skin(xenara_v3.1_type2_xe1.4.4.4)','N','20231017155939',19831195,'3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19833041,18322952,'./widgetstyles/sctb','N','20231017172808',20213631,'6.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19834157,18322954,'xe/layouts','N','20231017144811',19834158,'0.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19849619,18322952,'./widgetstyles/SteelblueRound','N','20231017105319',19849620,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19854096,18322927,'./widgets/qrcode_creator','N','20231017113640',19854097,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19859881,18322925,'./addons/googleplus','N','20231017013348',19864516,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19862381,18322925,'./addons/soo_googleplus','N','20231019200303',19890691,'0.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753528,18322925,'./addons/point_pangpang_plus','N','20231019193626',22754951,'0.2b');
INSERT INTO `xe_autoinstall_packages` VALUES (19875631,18322925,'./addons/gosite','N','20231017171309',19875632,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19885185,18322943,'./modules/board/skins/sr_memo','N','20231018091441',20959847,'0.9.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19891355,18322954,'./layouts/steelblue4_Basic','N','20231017163634',19891356,'4');
INSERT INTO `xe_autoinstall_packages` VALUES (19894029,18322943,'./modules/bodex/skins/sw_contact','N','20231018140011',19902554,'0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (19901434,18994170,'./modules/board/m.skins','N','20230922135657',19902394,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19906026,18322925,'./addons/mypeople','N','20231017054636',19906139,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19918081,18322943,'./modules/board/skins/CNboard','N','20231017122150',19918082,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19918823,18322954,'./layouts/cimple_plus','N','20231017094552',19921280,'1.3c');
INSERT INTO `xe_autoinstall_packages` VALUES (19923002,18322925,'./addons/sejin7940_write_limit','N','20231019080727',22687892,'1.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19960240,18322925,'./addons/sejin7940_readed_count','N','20231017193320',19960243,'1.6');
INSERT INTO `xe_autoinstall_packages` VALUES (19962621,18322943,'./modules/member/skins/noangel_black','N','20231017215901',19962952,'1.0a');
INSERT INTO `xe_autoinstall_packages` VALUES (19964934,18322950,'./widgets/login_info/skins/cronos_free','N','20231019162933',20187569,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19974913,18322954,'./layouts/Dynamic','N','20231018221128',20429124,'3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (19976643,18322950,'./modules/message/skins/naruCD','N','20231018152521',19984421,'0.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (19496679,18904838,'./modules/editor/components/emoticon/tpl/images','N','20231016151539',19504007,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (19988049,18322977,'./modules/point/icons','N','20231017071653',19988222,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20003560,18322977,'레이아웃에서 직접 업로드','N','20230928072003',20003621,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20070033,18322927,'./widgets/widget_kgcalendar','N','20231017103421',20117642,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20070206,18322927,'./widgets/widget_kgcontent','N','20231018134627',20315271,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20074878,18322954,'./layouts/elkha_tskorea','N','20231018162810',22755825,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (20075809,18322950,'./widgets/language_select/skins/tskorea','N','20231005105901',20092424,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20075810,18322927,'./widgets/layout_info','N','20231018221322',20092486,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20079764,18322950,'./widgets/counter_status/skins/flash','N','20231009090407',20079797,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20091784,18322927,'./widgets/shopxeslider','N','20231011173342',20123108,'V1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20092690,18322950,'widgets/content/skins/elkha_nivo','N','20231005105916',20092697,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20092760,18322925,'./addons/elkha_packer','N','20231017101514',20702463,'0.11');
INSERT INTO `xe_autoinstall_packages` VALUES (20117694,18322943,'.modules/board/skins','N','20231017153559',20117695,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20118343,18322925,'./addon/cufon','N','20231017011309',20190605,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20120961,18322927,'./widgets/treasurej_popular','N','20231020064134',22550390,'1.0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (20122381,18322950,'./widgets/treasurej_popular/skins/treasurej_popular_tabr','N','20231018050141',21972737,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20155119,18322943,'./modules/member/skins/XET_member','N','20231017225934',21197586,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20155171,18322943,'./modules/communication/skins/XET_communication','N','20231017175643',21344485,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20168220,18322954,'./layouts/xe_cafe_site','N','20231018195623',21803913,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20168286,18322950,'./widgets/login_info/skins/cafe_site','N','20231017035808',21802090,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20168297,18322950,'./widgets/language_select/skins/cafe_site','N','20231018145014',21802140,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20185969,18322927,'./widgets/autoredirect','N','20231019140437',20185972,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20186750,18322950,'./widgets/treasurej_popular/skins/treasurej_popular_tabs','N','20231017161918',21972593,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20187337,18322923,'./modules/guestbook','N','20231018195543',21962590,'1.7.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20187411,18322923,'./modules/faq','N','20231018195551',21854296,'1.7.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20187450,18322923,'./modules/contact','N','20231019092229',21968983,'1.7.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20236415,18322943,'./modules/attendance/skins/sr_at_skin','N','20231009003100',20236418,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20242228,18322943,'/modules/editor/skins','N','20230922150449',20624981,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20259612,18322954,'./layouts/HappyTravel_v1','N','20231017154834',20261781,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20276661,18322950,'./widgets/login_info/skins/cafe_official','N','20231017205321',21801927,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20276676,18322950,'./widgets/language_select/skins/xe_cafe_language','N','20231017050413',20276677,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20276726,18322954,'./layouts/xe_cafe_hub','N','20231018195605',21803871,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20277082,18322943,'./modules/homepage/skins/xe_cafe_v2','N','20231017203128',20309227,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20277901,18322925,'./addons/controlbox','N','20231017120756',20632434,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20279228,18322923,'./modules/boardauction','N','20231017190358',20295567,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20279332,18322943,'./modules/board/skins/xe_auction','N','20231017180947',20369078,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20290703,18994170,'./modules/board/m.skins/m_sr_memo','N','20231018154055',20300033,'0.3.6');
INSERT INTO `xe_autoinstall_packages` VALUES (20324298,18322923,'./modules/textmessage','N','20231019211304',22755760,'3.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20324311,18322923,'./modules/notification','N','20231017132045',22755762,'2.4.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20330088,18322954,'./layouts/layoutwotc_portal','N','20231017152007',20691619,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20340640,18322925,'./addons/iphone_checkbox','N','20230912141330',20409821,'1.0a');
INSERT INTO `xe_autoinstall_packages` VALUES (20350195,18322927,'./widgets/contentslist','N','20231016232615',20350196,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (20393822,18322923,'./modules/newposts','N','20231019213956',22755538,'2.4');
INSERT INTO `xe_autoinstall_packages` VALUES (20401336,18322954,'./layouts/style_a_lite','N','20231020064137',22754751,'2.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (20415487,18322943,'./modules/lottery/skins/simple','N','20231017184925',20451828,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20427455,18322952,'./widgetstyles/admin_ws','N','20231017221617',20454155,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20453531,18322925,'./addons/bodyfade','N','20231017134821',21401825,'0.2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (20458826,18322954,'./layouts/we_home','N','20231017212443',20980624,'1.8');
INSERT INTO `xe_autoinstall_packages` VALUES (20464644,18322927,'./widgets/vanner','N','20231012164107',20464663,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20466120,18322925,'./addons/elfinder','N','20231013044535',20480086,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20472943,18322954,'./layouts/xe_solid_enterprise_LeCiel_v1','N','20231018185034',20613484,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (20473328,18904838,'./modules/editor/skins/fckplus','N','20231019185758',20487316,'1.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (20473753,18322943,'./modules/editor/skins/xeed','N','20231017194419',20473754,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20476783,18904838,'./modules/editor/skins/fckplus_SimpleWhite','N','20231019185807',20487172,'1.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (20476937,18322943,'./modules/contact/skins/cameron','N','20231019092037',21970579,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (20493834,18322950,'./widgets/content/skins/updatenews','N','20231017150159',21134264,'1.8');
INSERT INTO `xe_autoinstall_packages` VALUES (20495669,18322943,'./modules/member/skins/simple','N','20231017195908',20507441,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20502461,18322943,'./modules/message/skins/cmd_message','N','20230922150442',20502462,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20509760,18322943,'./modules/page/skins/sejin7940_page','N','20231019080734',22572810,'1.4.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20514706,18322943,'./modules/board/skins/simple_board','N','20231018145634',22754093,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (20519604,18322943,'./modules/member/skins/simple_for_14','N','20231014150008',21193099,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20520233,18322952,'./widgetstyles/sketchbook5_wincomi','N','20231017150822',20798858,'3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20520855,18322925,'./addons/color_message','N','20231017161343',20520858,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20522778,18322925,'./addons/color_message_for_14','N','20231017041115',20522789,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20522820,18322950,'./widgets/bible_read/skins/KnDol','N','20230912235201',20590447,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20525058,18322925,'./addons/popup_menu_like_1_4','N','20231017191407',20798880,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20526823,18322925,'./addons/me2plugin_for_14','N','20231017135837',20526828,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20531619,18322954,'./layouts/white_square_layout','N','20230922115731',20882875,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (20533710,18322950,'./widgets/xeBanner/skins','N','20231017120253',20533711,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20547035,18322925,'./addons/exif','N','20231017193113',21378417,'0.9.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20557173,18322950,'./widgets/content/skins/xe2011_contributor_present','N','20230928072026',20557174,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20558958,18322950,'./widgets/lnb_menu/skins','N','20231020043601',20558964,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20564368,18322925,'./addons/sejin7940_align','N','20231019080723',20564370,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20579823,18322954,'./layouts/SilverCloud','N','20231017120935',20579824,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20605745,18322927,'./widgets/widget_kgmedia','N','20231017115824',20695833,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20612563,18322927,'./widgets/contentsmedia','N','20231017225547',20696865,'0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (20644220,18322925,'./addons/prohibit_monologue','N','20231017014817',20644221,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20649732,18322925,'./addons/commentwritedownload','N','20231017012220',20681999,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (20670102,18322923,'./modules/lisense','N','20231016232517',20692149,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20673638,18322925,'./addons/html5audio_flash','N','20231017195638',22541039,'1.5.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20673640,18322925,'./addons/falling_snow','N','20231016214147',20697610,'1.5.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20673970,18322923,'./modules/referer','N','20231017223642',22756252,'3.12.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20673999,18322925,'./addons/referer','N','20231018084304',22755559,'3.5.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20687933,18322954,'./layouts/xdt_offical_2','N','20231017194205',20949015,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (20707031,18322943,'/modules/contact/skins','N','20231018133806',20707032,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20710471,18322923,'./modules/checkip','N','20231017160825',20765854,'0.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20789735,18322943,'./modules/socialxe/skins/bootstrap.single','N','20231017231614',20789736,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20792413,18322950,'./widgets/content/skins/sticky_note','N','20230928072032',20792414,'1.0.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20796792,18322927,'./widgets/notice','N','20231019151642',22755365,'1.0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (20806148,18322925,'./addons/nonebutton','N','20231017010041',20823285,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20832909,18322927,'./widgets/user_finder','N','20231019230137',20836373,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20832931,18322923,'./modules/user_finder','N','20231019222039',20836347,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20908270,18322923,'./modules/detail_search','N','20231017005432',20949711,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20908354,18322950,'./widgets/dswidget','N','20231017172641',20950044,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20927819,18322950,'./widgets/login_info/skins/photo15','N','20231016223934',22253694,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20936395,18322923,'./modules/umessage','N','20230926100900',20943903,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20949728,18322925,'./addons/CssOutPlus','N','20231017201525',20952200,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20951206,18322925,'./addons/css3pie_js','N','20231009132144',20966650,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20954749,18322925,'./addons/message_alarm','N','20231017180334',21041089,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20957609,18322925,'./addons/wating_message','N','20231017134956',20957612,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20959091,18322925,'./addons/doc_viewer','N','20231019160436',20959094,'0.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20966755,18322954,'./layouts/xdt_community','N','20231017140426',21002067,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (20971314,18322925,'./addons/kakao_link','N','20231017120524',20975200,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (20989209,18322954,'./layouts/Chemistry_lite','N','20231017171420',20989210,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (20999893,18322927,'./widgets/sys_status','N','20231018150450',21005314,'3.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21003996,18322927,'./widgets/xestream','N','20231018011830',21014531,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21004386,18322950,'./widgets/sys_status/skin/simple','N','20231017014434',21004387,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21009029,18322954,'./layouts/xdt_community_2','N','20231017033301',21009030,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21014822,18322929,'./modules/editor/components/soo_youtube','N','20231017120251',21039496,'0.5.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21015635,18322925,'./addons/appoint_view_user','N','20231016232600',22755995,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21038796,18322950,'./widgets/point_status/skins/bootstrap','N','20231017215441',21146775,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21038825,18322950,'./widgets/content/skins/sketchbook5_style','N','20231017155159',22756032,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21090780,18322954,'./layouts/pleasure','N','20231017061001',21092056,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21092346,18322925,'./addons/xdt_button','N','20231018120431',21739119,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21124707,18322925,'./addons/soo_add_ssl','N','20231019200245',21124708,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21146815,18322950,'./widgets/sys_status/skins/tb','N','20230912171249',21146816,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21154641,18322925,'./addons/iframe_resize','N','20231020003131',21189969,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21189057,18322925,'./addons/settitle','N','20231017222740',21383555,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (21189175,18322925,'./addons/texteffect','N','20231017154831',21197591,'0.2 beta');
INSERT INTO `xe_autoinstall_packages` VALUES (21190663,18322925,'./addons/report_addon','N','20230921032749',21194703,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21194822,18322929,'./modules/editor/components/simple_jw','N','20231017125139',21364752,'0.3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21194850,18322925,'./addons/bootstrap_btn','N','20231017141651',21194883,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21195053,18322925,'./addons/bootstrap_icon','N','20231017045350',21202617,'1.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (21195185,18322923,'./modules/authentication','N','20231017234715',22754169,'3.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21196855,18322927,'./widgets/camtv','N','20231017065524',21228634,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21204144,18322925,'./addons/number_display','N','20231017043842',21204145,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21211103,18322923,'./modules/sejin7940_comment','N','20231019080857',22755699,'1.8');
INSERT INTO `xe_autoinstall_packages` VALUES (21220010,18322925,'./addons/limit_message','N','20231017084054',21229637,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21221462,18322925,'./addons/naver_analytics','N','20231018050342',22658323,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21231044,18322923,'./modules/reset_password','N','20231017153916',22728311,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21245296,18322954,'./layouts/xe_official_v2.2','N','20231016233234',21295736,'v.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21262112,18322925,'./addons/scrollbar','N','20231017130537',21262114,'0.9.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21289114,18322925,'./addons/division','N','20231016223301',21294767,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21290615,18994170,'./modules/board/m.skins/xenon_m_board','N','20231019161141',21393065,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (21290617,18994170,'./modules/page/m.skins/xenon_m_page','N','20231018051756',21295253,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21290626,18994170,'./modules/member/m.skins/xenon_m_member','N','20231019161139',21429905,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21290627,18994172,'./m.layouts/XenonMoblie','N','20231019161055',21815540,'1.9.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21298003,18322925,'./addons/layerpopup','N','20231019161147',22754287,'1.10');
INSERT INTO `xe_autoinstall_packages` VALUES (21302525,18322954,'./layouts/xdt_pure','N','20231017085233',22755554,'1.6');
INSERT INTO `xe_autoinstall_packages` VALUES (21305288,18322952,'./widgetstyles/nico','N','20231017121821',21532773,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21305881,18322923,'./modules/xewall','N','20231019230140',22754355,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21352623,18322925,'./addons/mresizer','N','20231019160801',22755552,'1.6');
INSERT INTO `xe_autoinstall_packages` VALUES (21354730,18322925,'./addons/msg_point','N','20230924223213',21354731,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21354767,18322925,'./addons/change_nickname','N','20231009173457',22754182,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21364832,18322950,'./widgets/newest_comment/skins/mynote','N','20231017142325',21364833,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21367559,18322954,'/layout','N','20231017075510',21389903,'0.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21369594,18322925,'./addons/my_comment_addon','N','20231018204530',21394119,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21369690,18322950,'./widgets/newest_comment/skins/xenon_m_com','N','20231016211856',21370425,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21369691,18322950,'./widgets/newest_document/skins/xenon_m_doc','N','20230912190304',21369734,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21369692,18322950,'./widgets/newest_document/skins/xenon_m_gel','N','20231017145043',21369738,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21370287,18322923,'./modules/smartux','N','20231017093145',21370289,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21373345,18322925,'./addons/searchhighlight','N','20231019220414',21394152,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21374711,18322923,'./modules/ncenterlite','N','20231019081053',22756275,'3.0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (21378491,18994170,'./modules/board/m.skins/sketchbook5','N','20231019135358',22754337,'1.7.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21382622,18322925,'./addon/jquery_snow','N','20231017162200',21391227,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21384926,18322925,'./addons/dragcolor','N','20231018114333',21385023,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21388442,18322923,'./modules/mobileex','N','20231017195742',22107721,'0.6.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21391263,18322925,'./addons/mbanner','N','20231017195812',21391414,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21396254,18322950,'./widgets/content/skins/tb_sb','N','20231019012153',21396255,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21398290,18322925,'./addons/pagechange','N','20231017145335',21432465,'3.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21400134,18322925,'./addons/securityPlus','N','20230921143413',21400135,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21410063,18322952,'./widgetstyles/xdt_windless','N','20231017183420',21410071,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21411060,18322943,'./modules/socialxe/skins/tb','N','20230922150220',22122003,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753897,18322925,'./addons/floating_video','N','20231017172342',22755842,'0.6.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21411087,18322943,'./modules/socialxeserver/skins/tb','N','20230922150336',21411095,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21411172,18322943,'./modules/contact/skins/tb','N','20231017210705',21411184,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21412475,18322923,'./modules/recruit','N','20231017101657',21412476,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21413017,18322927,'./widgets/xegallery','N','20231017222345',21433519,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (21415137,18322925,'./addons/setitle2','N','20231009233738',21415140,'2.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21428178,18322954,'./layouts/xdt_simple_home','N','20231017112144',22403086,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (21439563,18322925,'./addons/kru_sslhelper','N','20231017202747',21711242,'3.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21526323,18322925,'./addons/noclick','N','20231019160931',22754294,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (21535219,18322954,'./layouts/live_login','N','20231017205826',21768603,'1.5.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21591779,18322925,'./addons/radarURL','N','20231017185155',21594258,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21606824,18322925,'./addons/href_fixed1','N','20231019161120',21606841,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21620531,18322925,'./addons/opengraph','N','20231017221720',21620532,'0.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21626541,18322925,'./addons/Redirection','N','20231017215223',21626542,'1.0a');
INSERT INTO `xe_autoinstall_packages` VALUES (21643081,18322950,'./widgets/content/skins/mynote','N','20231002171516',21643082,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21643233,18322954,'./layouts/Express999','N','20231017212345',21838875,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21648251,18322950,'./widgets/content/skins/tb_cw','N','20231017092150',21978061,'2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21651786,18322925,'./addons/scmplayer','N','20231019161157',22299133,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (21715889,18322943,'./modules/message/skins/eond','N','20231017231501',21715890,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21717275,18322923,'./modules/okname','N','20231017213209',21726208,'0.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21717279,18322925,'./addons/okname','N','20231017034838',21726233,'0.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21736776,18322925,'./addons/kru_dab','N','20231017053729',21748943,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21749702,18994170,'./modules/textyle/m.skins','N','20231017230631',21762837,'0.9');
INSERT INTO `xe_autoinstall_packages` VALUES (21752944,18322925,'./addons/layerAlert','N','20230920142758',21753018,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21761048,18322954,'./layouts/eond_rosso','N','20231017164437',21791719,'0.3.3');
INSERT INTO `xe_autoinstall_packages` VALUES (21776217,18322954,'./layouts/eond_starter','N','20231017193354',21776218,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21782412,18322954,'./layouts/eond_compact','N','20231018173137',21782413,'0.8.4');
INSERT INTO `xe_autoinstall_packages` VALUES (21788706,18322925,'./addons/AntiProxy','N','20231017191701',21788708,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21798677,18322943,'./modules/ncenterlite/skins/playerplace','N','20231017143311',21798682,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21802016,18322943,'./modules/board/skins/xe_official_planner123/colorset','N','20231019144513',22754341,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (21805731,18322925,'./addons/activescrollbar','N','20231017173705',21805732,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21807603,18322927,'./widgets/xehoverdir','N','20231017110458',21807604,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21810388,18322954,'./layouts/xdt_black_time','N','20231018023311',22403080,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21813965,18322943,'./modules/board/skins/xe_v3_gallery_haan','N','20231019184933',21814028,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21838367,18322927,'./widgets/foodin','N','20231017073629',21845017,'0.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (21838368,18322950,'./widgets/foodin/skin/simple','N','20231017113545',21845033,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21854312,18322923,'./modules/forum','N','20231018195529',21956789,'1.7.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21855754,18322927,'./widgets/server_status','N','20231018041035',21885905,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21861240,18322943,'./modules/member/skins/tb','N','20231019012153',21861246,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21861251,18322943,'./modules/communication/skins/tb','N','20231019012153',21861263,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21861272,18322943,'./modules/message/skins/tb','N','20231017041041',21861277,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21861282,18322943,'./modules/integration_search/skins/tb','N','20231009154324',21861307,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21862798,18322954,'./layouts/brownwhite','N','20230922120258',21863022,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21876980,18322923,'./modules/multidomain','N','20231017205342',22755400,'1.4.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21876999,18322925,'./addons/multidomain','N','20231017101555',22280906,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21883072,18322954,'./layouts/the_bootstrap','N','20231019012152',22755641,'3.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21889835,18322925,'./addons/counter_ex','N','20230912063945',22754574,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (21901097,18322925,'./addons/today_fortune','N','20231019154552',21908882,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (21933112,18322925,'./addons/to_sns','N','20231017204137',22756009,'0.2.6');
INSERT INTO `xe_autoinstall_packages` VALUES (21933295,18322923,'./modules/realnotice','N','20230917211634',21933310,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (21950613,18322925,'./addons/sejin7940_mustlogin','N','20231019080720',21959492,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (21978106,18322925,'./addons/sejin7940_autotrash','N','20231019080716',21978124,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22069845,18322927,'./widgets/traffic_status','N','20231018022412',22069874,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22073155,18322923,'./modules/cash','N','20231019080543',22074809,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22115065,18322954,'./layouts/awake','N','20231017201613',22754348,'1.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22115651,18322923,'./modules/pa','N','20231017101001',22121058,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22141994,18322977,'./modules/point/icons/level_icon','N','20231017144535',22734341,'SSS');
INSERT INTO `xe_autoinstall_packages` VALUES (22160991,18322977,'./modules/point/icons/wf_lv','N','20231016150754',22161011,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22186881,18322977,'./modules/point/icons/star','N','20231017024844',22186890,'S');
INSERT INTO `xe_autoinstall_packages` VALUES (22194465,18322925,'./addons/member_join_ex','N','20231017061533',22194483,'0.2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22208650,18322923,'/messageTalk','N','20231017164355',22208679,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22208653,18322925,'./addons/font-awesome','N','20230921112226',22226740,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22223413,18322925,'./addons/wiki_extend','N','20231017223100',22223443,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22228663,18322925,'./addons/addon_insert_sticker','N','20231018204442',22228684,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22235916,18322925,'./addons/zipped_xe','N','20231019155639',22278143,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22245450,18322943,'./widgets/logged_members/skins/w_redtokbox','N','20231017141144',22277385,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22260417,18322925,'./addons/301moved','N','20231017171028',22265949,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22263678,18322927,'./widgets/eh_whcarousel','N','20231017073051',22754205,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22266089,18322977,'./modules/point/icons/default_J','N','20231017215558',22266113,'PK_CP');
INSERT INTO `xe_autoinstall_packages` VALUES (22280542,18322954,'./layouts/simplestrap','N','20231019011759',22756198,'2.4.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22282486,18322950,'./widgets/content/skins/simplestrap_sb','N','20231019011801',22756081,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22283649,18322943,'./modules/member/skins/simplestrap','N','20231019011800',22756205,'2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22283657,18322943,'./modules/communication/skins/simplestrap','N','20231019011800',22756200,'2.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22288778,18322927,'./widgets/talkbox','N','20231016153550',22460980,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22301990,18322943,'./modules/board/skins/sketchbook5_youtube','N','20231018004832',22304077,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22303618,18322977,'./modules/point/icons/donek','N','20231017115838',22303661,'Acc');
INSERT INTO `xe_autoinstall_packages` VALUES (22305559,18322977,'./modules/point/icons/KJA_Love','N','20231016234552',22305588,'R');
INSERT INTO `xe_autoinstall_packages` VALUES (22332211,18322954,'./layouts/xdt_cool','N','20231018003404',22595789,'1.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22337183,18322977,'./modules/point/icons/typical-t','N','20231017104008',22337194,'Timeless');
INSERT INTO `xe_autoinstall_packages` VALUES (22337993,18322954,'/layouts','N','20231017040805',22337998,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22348667,18322954,'./layouts/blue','N','20231017152626',22348685,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753681,18322925,'./addons/hashtags','N','20231017105753',22755203,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22351328,18322943,'./modules/forum/skins/flat_forum_lite','N','20231017063348',22374400,'1.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22356670,18322943,'./modules/integration_search/skins/yjsoft_ggcse','N','20231017185648',22756280,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22356680,18322977,'./modules/point/icons/zanazana','N','20231018042026',22356690,'I don\'t no');
INSERT INTO `xe_autoinstall_packages` VALUES (22359020,18322925,'./addons/elkha_simple_spam','N','20231017004016',22359071,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22377937,18322954,'./layouts/hestia','N','20231017215225',22754444,'2.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22393789,18322950,'widgets/counter_status/skins/hestia_status','N','20231017184722',22393813,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22396862,18322954,'./layouts/xdt_style_b','N','20231017232332',22658304,'1.2.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22402420,18322977,'./modules/point/icons/500-983','N','20231017212347',22402437,'fort');
INSERT INTO `xe_autoinstall_packages` VALUES (22440981,18322950,'./widgets/content/skins/eond_ygh','N','20231017042638',22440999,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22446815,18322923,'./modules/upgletyle','N','20231017202752',22692647,'0.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22450636,18322943,'./modules/editor/skins/xpresseditor_axupload5','N','20231020065523',22755307,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22452877,18904838,'./modules/editor/styles/simplestrap','N','20231019011800',22452885,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22454021,18322923,'./messageTalk','N','20231017165121',22460914,'2.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22455366,18322925,'./addons/block_document','N','20230923222714',22755330,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22456939,18322925,'./addons/xdt_scrollbar','N','20231017145249',22456955,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22467273,18322943,'./modules/board/skins/phiz_A_zine2','N','20231005172715',22471747,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22470148,18322954,'./layouts/layout_intermission','N','20231017054850',22545808,'0.9.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22473723,18322954,'./layouts/daol_official','N','20231019185906',22755920,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22481310,18322977,'./modules/point/icons/Dandy_TJ','N','20231017233605',22481349,'I\'m very Dandy');
INSERT INTO `xe_autoinstall_packages` VALUES (22488105,18322954,'./layouts/webengine_white','N','20231017125254',22602278,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22497371,18322925,'./addons/url_shortener','N','20230913073800',22574332,'1.12');
INSERT INTO `xe_autoinstall_packages` VALUES (22501400,18322950,'./widgets/newest_document/skins/luke_doc','N','20231017142140',22502529,'v1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22501977,18322954,'./layouts/dark_white','N','20231017140448',22508454,'v1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22505945,18322950,'./widgets/newest_comment/skins/luke_doc','N','20230913032710',22505955,'v1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22511691,18322925,'./addons/member_activity_check','N','20231019194734',22754292,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22514693,18994172,'./m.layouts/xenon_nx','N','20231019160803',22754354,'0.9.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22516532,18322925,'./addons/langfilter','N','20231019203833',22754507,'0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22526030,18322927,'./widgets/simple_clock','N','20231019003802',22537348,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22526528,18322925,'./addons/falling_snow2','N','20231016235230',22528351,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22526756,18322925,'./addons/falling_snow3','N','20230913154824',22528554,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22529686,18322927,'./widgets/simple_calendar','N','20231018022955',22579892,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22529898,18322950,'./widgets/browserWidget/skins/simplestrap','N','20231017075936',22529948,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22530581,18322943,'./modules/board/skins/contact_write','N','20231017163527',22755840,'1.14');
INSERT INTO `xe_autoinstall_packages` VALUES (22531811,18322950,'./widgets/treasurej_popular/skins/neat_popular_tabs','N','20231017025614',22754295,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22535332,18322954,'./layouts/xeschool_red','N','20231017115906',22535344,'red');
INSERT INTO `xe_autoinstall_packages` VALUES (22535350,18322977,'./modules/point/icons/redskiicons','N','20231016221933',22535354,'redski');
INSERT INTO `xe_autoinstall_packages` VALUES (22535360,18322977,'./modules/point/icons/plusalpine','N','20231016150712',22535364,'plusAlpha');
INSERT INTO `xe_autoinstall_packages` VALUES (22537451,18322925,'./addons/bootstrap3_css','N','20231017145936',22537493,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22539420,18322927,'./widgets/cute_clock','N','20231017035324',22539425,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22540074,18322954,'./layouts/s4us_1.0','N','20231017065742',22540131,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22540502,18322943,'./modules/contact/skins/phizContact','N','20231019153917',22540527,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22540996,18322929,'./modules/editor/components/multimedia_link','N','20231019135412',22616932,'1.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22542943,18322954,'./layouts/Fresh','N','20231017155604',22543307,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22544858,18322925,'./addons/html5video_flash','N','20231017004529',22544908,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22547855,18994170,'./modules/member/m.skins/Blouse','N','20231017205444',22568070,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22549104,18322925,'./addons/recommend','N','20231017132726',22549119,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22553944,18322925,'./addons/xdt_css','N','20231017210343',22553960,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22556480,18322927,'./widgets/moonchat','N','20231017211129',22755858,'3.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22562932,18322950,'./widgets/sitemap/skins/select','N','20231017190816',22585636,'0.3.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22563110,18322950,'./widgets/content/skins/s4utabview','N','20231017072657',22563143,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22563158,18322954,'./layouts/nextep','N','20231017224432',22581078,'nextep v1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22566102,18322943,'./modules/board/skins/wmboard','N','20231017083913',22573020,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22568598,18322954,'./layouts/xdt_simple_home2','N','20231017233357',22715996,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22572346,18322927,'./widgets/hindole','N','20231017124605',22572496,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22572358,18322950,'./widgets/newest_comment/skins/hindole_v1_com','N','20231017043840',22572455,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22572362,18322954,'./layout/book_layout','N','20231009214553',22572485,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22572365,18322952,'./widgetstyles/hindole_box','N','20231017221147',22600170,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22572369,18322952,'./widgetstyles/simple-style','N','20231016152048',22572466,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22572375,18322950,'./widgets/newest_document/skins/hindole_v1_doc','N','20231017200706',22572430,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22577184,18322923,'./modules/sejin7940_copy','N','20231019210337',22756190,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22579388,18322923,'./modules/money','N','20231017195533',22702291,'0.1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22580059,18322925,'./addons/xesticky','N','20231017164921',22580144,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22581369,18322927,'./widgets/towc_new_docu','N','20231017143325',22638452,'1.9');
INSERT INTO `xe_autoinstall_packages` VALUES (22583905,18322950,'./widgets/content/skins/phiz_rwd_images','N','20231019135522',22583963,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22583972,18322954,'./layouts/phizRWDThemes','N','20231019140211',22714063,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22585779,18322943,'./modules/board/skins/sm','N','20231018014202',22696276,'1.9.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22587055,18994170,'./modules/board/m.skins/sm','N','20231017235237',22693248,'0.5.8');
INSERT INTO `xe_autoinstall_packages` VALUES (22589792,18994172,'./m.layouts/webbuilder','N','20231019230948',22589821,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22590697,18322943,'./modules/editor/skins/ckeditor','N','20231017162334',22590711,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22591861,18322954,'./layouts/webbuilder_layout','N','20231017100948',22610423,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22594541,18322923,'./modules/nproduct','N','20231019123919',22755889,'2.6.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594546,18322923,'./modules/nstore','N','20231019124428',22755810,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594548,18322923,'./modules/store_review','N','20231019124540',22755815,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594549,18322923,'./modules/ncart','N','20231019124407',22755807,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594556,18322923,'./modules/epay','N','20231019124426',22755804,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594557,18322923,'./modules/nmileage','N','20231019124418',22755808,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594571,18322927,'./widgets/frontdisplay','N','20231016154545',22596682,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22594576,18322927,'./widgets/category_menu','N','20231017050455',22596721,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22594585,18322925,'./addons/trolley','N','20230912035556',22596756,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22596809,18322923,'./modules/nstore_digital','N','20231019124421',22755812,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22596810,18322923,'./modules/nstore_digital_contents','N','20231019124528',22755811,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22597020,18322923,'./modules/license','N','20231017013556',22635123,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22597112,18322923,'./modules/cympusadmin','N','20231019124519',22755802,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22597120,18322923,'./modules/store_search','N','20231019124423',22755816,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22597227,18322923,'./modules/paynoty','N','20231019124033',22755890,'2.6.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22597855,18322943,'./modules/board/skins/rest_default','N','20231017135416',22723910,'1.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22605220,18322925,'./addons/cameron_plugin','N','20231017221200',22754521,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22607524,18322925,'./addons/dsori_submanager_free','N','20231018004924',22608742,'0.1740.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753629,18322927,'./widgets/Ding_Button_Collection','N','20231019195953',22754874,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22610153,18322943,'./modules/editor/skins/dsori_ckeditor','N','20231017231402',22624901,'0.1740.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753996,18322943,'./modules/board/skins/ena_board_set_simplemellow','N','20231019123005',22756265,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22610154,18322925,'./addons/dsori_ckeditor_setting','N','20231018002758',22624891,'0.1740.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22610502,18322954,'./layouts/webbuilder_layout2','N','20231019231515',22614812,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22611192,18322925,'./addons/dsori_facebook_comment','N','20231016215841',22613855,'0.1740.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22616427,18322925,'./addons/pushwing','N','20231017190253',22663888,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22616439,18322925,'./addons/pushwing_comment','N','20231017145241',22639689,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22617898,18322923,'./modules/automail','N','20230921071950',22617911,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22618830,18322925,'./addons/checklen','N','20231019161507',22754320,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22622633,18322925,'./addons/blockact','N','20231020081845',22755957,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22627992,18322954,'./layouts/orange_simple','N','20231017224623',22670250,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22631178,18322925,'./addons/mobile_redirect','N','20231019161142',22631183,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22631822,18322954,'./layouts/xeview_layout','N','20231017043331',22631830,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22631837,18322954,'./layouts/five_start','N','20231017204113',22631859,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22634250,18322925,'./addons/browser_helper','N','20231019161153',22634254,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22634927,18322952,'./widgetstyles/m_cronos_ws','N','20231016222847',22647143,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22634955,18322950,'./widgets/mcontent/skins/m_cronos_w','N','20231016225823',22647135,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22640952,18322925,'./addons/twoc_memo_del','N','20231016234841',22640972,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22641332,18322954,'./layouts/Imagemonster','N','20231017123909',22754363,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22641961,18322927,'./widgets/photoslider','N','20231016234913',22641966,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22643750,18322925,'./addons/bot_title_control','N','20231017180559',22643845,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22644317,18322925,'./addons/member_control','N','20231017013716',22644546,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22646356,18322943,'./modules/member/skins/sketchbook5_member_skin','N','20231019010852',22755492,'0.4.21');
INSERT INTO `xe_autoinstall_packages` VALUES (22646443,18322943,'./modules/communication/skins/sketchbook5_communication_skin','N','20231019010858',22755495,'0.4.21');
INSERT INTO `xe_autoinstall_packages` VALUES (22646468,18994170,'./modules/member/m.skins/sketchbook5_member_m.skin','N','20231019011512',22755493,'0.4.21');
INSERT INTO `xe_autoinstall_packages` VALUES (22646488,18994170,'./modules/communication/m.skins/sketchbook5_communication_m.skin','N','20231019011501',22755494,'0.4.21');
INSERT INTO `xe_autoinstall_packages` VALUES (22648755,18322923,'./modules/upgletyle_plugin_daumview','N','20230930170552',22648765,'0.1.0.b1');
INSERT INTO `xe_autoinstall_packages` VALUES (22648862,18322925,'./addons/robotcontrol','N','20230912185812',22649123,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22649096,18322925,'./addons/fa_loader','N','20231019153821',22754343,'4.2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22649328,18322925,'./addons/checkkorean','N','20231019161136',22651662,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22650410,18322925,'./addons/login_defencer','N','20231019200248',22650418,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22651543,18322954,'./layouts/flat_series','N','20231019012741',22754140,'1.0.22');
INSERT INTO `xe_autoinstall_packages` VALUES (22651552,18322950,'./widgets/login_info/skins/flat_series','N','20231019193559',22744104,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22652987,18322925,'./addons/confirm_declare','N','20231019193610',22754564,'1.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (22653449,18322925,'./addons/block_ip','N','20231019203720',22754567,'2.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (22654408,18322925,'./addons/authentication_change','N','20231020081006',22654433,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22655078,18322954,'./layouts/emergence','N','20231017190950',22660012,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22657234,18322925,'./addons/xdt_google_analytics','N','20231018050505',22756278,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22658404,18994170,'./modules/board/m.skins/sosifam_memo','N','20231019164650',22738369,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22658524,18322927,'./widgets/hb_bank','N','20231019015148',22658668,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22660923,18994172,'./m.layouts/phizMobileThemes','N','20231018223952',22754202,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22660940,18994170,'./modules/member/m.skins/phizMobile','N','20231016145331',22660950,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22660953,18994170,'./modules/communication/m.skin/phizMobile','N','20231016145352',22660956,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22664861,18322927,'./widgets/cameronSlider','N','20231018025246',22754523,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22664862,18322950,'./widgets/cameronSlider/skins/cameraSlider','N','20231017175226',22754329,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22665526,18322950,'./widgets/cameronSlider/skins/bxSlider','N','20231017193517',22754330,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22665670,18322950,'./widgets/cameronSlider/skins/FlexSlider2','N','20231018072058',22754331,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22668729,18322927,'./widgets/webcon_newswidget','N','20231018105551',22700746,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22669010,18322954,'./layouts/css3_simple','N','20231017041207',22687348,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22672196,18322925,'./addons/new_document_notify','N','20231019200254',22754335,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22673162,18322925,'./addons/fileicon','N','20231019161150',22716823,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22673736,18322925,'./addons/jqueryuicdn','N','20231017033827',22673740,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22677441,18322925,'./addons/jquerycdn','N','20231019193602',22714080,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22678118,18322927,'./widgets/webcon_smartTab','N','20231017155710',22680181,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22678527,18322954,'./layouts/awake2','N','20231019012055',22755684,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22678880,18322925,'./addons/jsecure_xe','N','20231019213742',22684436,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22690074,18322923,'./modules/sejin7940_vote','N','20231019080547',22755593,'1.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22692696,18322927,'./widgets/webcon_mosaicGallery','N','20231017093814',22692724,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22692901,18322927,'./widgets/srchat_count','N','20231018085718',22692906,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22699529,18322927,'./widgets/webcon_carousel','N','20231018091750',22699542,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22703498,18322927,'./widgets/webcon_N_newsSearch','N','20231016232452',22703507,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22703903,18322927,'./widgets/webcon_verticalTab','N','20231017152718',22708158,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22703904,18322925,'./addons/xetrace','N','20231019200411',22703936,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22705169,18322923,'./modules/moneysend','N','20231009165924',22705176,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22706212,18322925,'./addons/hide_mid','N','20231017113905',22706230,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22711628,18322954,'./layouts/xelab_ll1','N','20231017100112',22712736,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22715595,18322925,'./addons/captbha','N','20231017003041',22715603,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22716306,18322954,'./layouts/firstkenta','N','20231017223426',22754179,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22716407,18322925,'./addons/autodeny','N','20231017040502',22716411,'0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22718180,18322927,'./widgets/webcon_effectSlider','N','20231017092404',22718196,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22718477,18322925,'./addons/fa_fileicon','N','20231017150401',22754338,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22720710,18322943,'./modules/upgletyle/skins/emplode','N','20231016210327',22720745,'0.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22723913,18322925,'./addons/dyform_no_spam','N','20231019213713',22754947,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22726124,18322923,'./modules/ggmailing','N','20231017174838',22756092,'0.4.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22730394,18322943,'./modules/sejin7940_comment/skins/sketchbook5_mycomment_skin','N','20231019010904',22755498,'1.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22730395,18994170,'./modules/sejin7940_comment/m.skins/sketchbook5_mycomment_mskin','N','20231019011506',22755497,'1.0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22730560,18322954,'./layouts/purexe','N','20231017214927',22754180,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753344,18322954,'./layouts/simple_is_best','N','20231019161155',22754147,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22735026,18322925,'./addons/sejin7940_mobile_resize','N','20231019080751',22735066,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22735793,18322927,'./widgets/webcon_mosaicContents','N','20231017032507',22735808,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22736227,18322925,'./addons/memberinfo','N','20231019161623',22754342,'1.10');
INSERT INTO `xe_autoinstall_packages` VALUES (22736353,18322925,'./addons/bbCode','N','20231017130446',22736356,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22736372,18322925,'./addons/placeHolders','N','20231017005552',22736378,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22737353,18322977,'./modules/point/icons/semo','N','20231017051655',22737363,'Volkswagen');
INSERT INTO `xe_autoinstall_packages` VALUES (22744282,18322925,'./addons/stop_spambot_xe','N','20231020030148',22756215,'2.8');
INSERT INTO `xe_autoinstall_packages` VALUES (22752234,18322925,'./addons/block_country','N','20231017213910',22752338,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753306,18322927,'./widgets/ggboardmailing_widget','N','20231017134718',22755528,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753312,18322925,'./addons/new_document_notify2','N','20231019195746',22754204,'1.0.12');
INSERT INTO `xe_autoinstall_packages` VALUES (22753313,18322923,'./modules/attendance','N','20231019144529',22756122,'7.2.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753314,18322923,'./modules/privilege','N','20231017200722',22756207,'0.1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753315,18322925,'./addons/sns_card','N','20231019203744',22754099,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753316,18322954,'./layouts/doorweb_v4','N','20231019225045',22754256,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753317,18322950,'./widgets/content/skins/doorweb','N','20231019205211',22754080,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753322,18322954,'./layouts/rkt001','N','20231017205955',22754084,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753326,18322923,'./modules/ajaxboard','N','20231019193629',22754482,'2.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753327,18322950,'./widgets/content/skins/funnyxeGallery','N','20231017070759',22754107,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753328,18322954,'./layouts/verti','N','20231018034742',22754108,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753334,18322943,'./modules/editor/skins/xpresseditor_datauri','N','20231018002831',22754114,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753336,18322925,'./addons/font_awesome_new','N','20231017090119',22754115,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753339,18322954,'./layouts/rkt002','N','20231016224802',22754118,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753340,18322925,'./addons/font_nanum_gothic','N','20231019153936',22754124,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753341,18322954,'./layouts/The_Simple_Classic_Lite','N','20231017204148',22754141,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753342,18322927,'./widgets/slideimg','N','20231018154950',22756263,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753343,18322925,'./addons/multimedia_thumbnail','N','20231017122401',22756019,'2.5.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753345,18994172,'./m.layouts/simple_is_best_mobile','N','20231019161222',22754148,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753346,18322923,'./modules/currency','N','20231019124531',22755801,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753348,18322923,'./modules/inipay','N','20231016230408',22754422,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753349,18322923,'./modules/inipaymobile','N','20231019123957',22755895,'2.6.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753783,18322923,'./modules/inipaystandard','N','20231019124035',22755887,'2.6.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753350,18322923,'./modules/kcp','N','20231019124524',22755806,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753351,18322923,'./modules/cashpay','N','20231019124424',22755800,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753352,18322923,'./modules/paypal','N','20231019124533',22755814,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753353,18322954,'./layouts/kbfree','N','20231017102056',22754197,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753675,18322923,'./modules/youtube','N','20231017230619',22755418,'1.1.1.');
INSERT INTO `xe_autoinstall_packages` VALUES (22753428,18322927,'./widgets/sejin7940_navermap','N','20231019080729',22754347,'0.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753356,18322923,'./modules/gdata','N','20231019200305',22754185,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753358,18322927,'./widgets/picasa_recent_images','N','20231019200257',22754183,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753359,18322925,'./addons/my_reading','N','20231019200301',22754203,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753373,18322925,'./addons/updatecategory','N','20231019161220',22754190,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753374,18322927,'./widgets/xelayout_weather','N','20231017165117',22754198,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753381,18322925,'./addons/sxe_block_write','N','20231016222253',22754220,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753382,18322925,'./addons/sxe_now_connected','N','20231017201742',22754221,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753386,18322954,'./layouts/b_black','N','20231017200315',22754231,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753387,18322925,'./addons/sxe_bbcode_lite','N','20231017012449',22754233,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753388,18322923,'./modules/sejin7940_nick','N','20231019080549',22755824,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753390,18322925,'./addons/sxe_writing_format','N','20231018021938',22754246,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753393,18322925,'./addons/sxe_ncenter_plus','N','20231017002806',22754245,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753396,18322923,'./modules/ximember','N','20231020101944',22754333,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753397,18322923,'./modules/board_extend','N','20231018003155',22754254,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753489,18322925,'./addons/member_ajaxboard','N','20231019200446',22754483,'2.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753399,18322943,'./modules/ncenterlite/skins/wild_ones','N','20231017064739',22754258,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753403,18322927,'./widgets/opageWidget','N','20231016232042',22754271,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753406,18322929,'./modules/editor/components/map_components','N','20231019233730',22755647,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753408,18322925,'./addons/member_extra_vars_check','N','20231010021017',22754283,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753411,18322925,'./addons/block_control','N','20231019145830',22754291,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753413,18322927,'./widgets/sitemap_selectbox','N','20231017131601',22754293,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753416,18322925,'./addons/auto_multimedia','N','20231019193612',22754308,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753417,18322925,'./addons/addon_write_insert_media','N','20231017174805',22754309,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753419,18322925,'./addons/addon_insert_video','N','20231020105841',22754313,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753420,18322923,'./modules/pointhistory','N','20231019081114',22755663,'0.2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753422,18322950,'./widgets/treasurej_popular/skins/smart_popular_tabs','N','20231017162122',22754327,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753429,18322943,'./modules/board/skins/sosi_memo','N','20231019180021',22754360,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753434,18322923,'./modules/profiler','N','20231017075011',22754941,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753437,18322950,'./widgets/calendar/skins/UXF_CALENDER_TYPE_01','N','20231017183033',22754368,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753449,18322925,'./addons/xss_session_protector','N','20231019213711',22754383,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753457,18322954,'./layouts/simplicity','N','20231017100713',22754391,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753458,18322925,'./addons/youtube_control','N','20231020030958',22754991,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753459,18322923,'./modules/maps','N','20231019231232',22755385,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753460,18322927,'./widgets/maps_widget','N','20231019231223',22755384,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753462,18322925,'./addons/download_wanna_reply','N','20230912110315',22754407,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753463,18322925,'./addons/image_preview','N','20231020030955',22754413,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753464,18322943,'./modules/board/skins/mixitup','N','20231017045827',22754418,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753465,18322923,'./modules/easyxe','N','20231017191833',22755347,'1.43.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753466,18322925,'./addons/auto_nick','N','20231020030930',22754428,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753474,18322943,'./modules/lottery/skins/eond_v1','N','20230922145946',22754439,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753475,18322943,'./modules/board/skins/bbsmusic','N','20231020025029',22754834,'1.7.105');
INSERT INTO `xe_autoinstall_packages` VALUES (22753476,18322954,'./layouts/CustomStrap','N','20231017053758',22754447,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753478,18322927,'./widgets/ggwmmemberexcel_widget','N','20231017181342',22754450,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753481,18322925,'./addons/sejin7940_kakao_link','N','20231019080621',22754488,'0.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753482,18322925,'./addons/tag_relation_add','N','20231020030820',22754457,'1.4.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753484,18322925,'./addons/html5multimedia_flash','N','20231016225544',22754465,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753488,18322923,'./modules/sitemap','N','20231020032420',22755639,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753492,18322925,'./addons/okiz_easyadmin_logout','N','20231017210605',22754522,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753497,18994170,'./modules/board/m.skins/ms_m_board','N','20231017185728',22755358,'1.5.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753498,18322950,'./widgets/login_info/skins/eond_ppomppu','N','20231009105519',22754494,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753500,18322925,'./addons/sejin7940_addvote','N','20231019080512',22755698,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753501,18322925,'./addons/ssl_support','N','20231019080545',22754509,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753504,18322923,'./modules/timeline','N','20231017233240',22755266,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753506,18322925,'./addons/hot_document','N','20231020012540',22754766,'1.2.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753508,18322925,'./addons/sejin7940_all_notice','N','20231019081117',22754697,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753510,18322925,'./addons/member_block_addon','N','20231019201328',22754665,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753512,18322927,'./widgets/magiccontentWidget','N','20231016230827',22754746,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753515,18322925,'./addons/denied_word','N','20231020030831',22754797,'1.002');
INSERT INTO `xe_autoinstall_packages` VALUES (22753517,18322923,'./modules/bulkmsg','N','20231017150255',22754543,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753534,18322925,'./addons/auto_reply','N','20231019193555',22754579,'0.1a');
INSERT INTO `xe_autoinstall_packages` VALUES (22753535,18322927,'./widgets/doorweb_content','N','20231019112942',22754622,'1.7.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753538,18322954,'./layouts/doorweb_basic','N','20231020031632',22754722,'1.7.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753540,18322923,'./modules/stats','N','20231017215430',22754620,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753541,18322923,'./modules/marketplace','N','20231017164246',22754737,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753542,18994172,'./m.layouts/sweetMobile','N','20231018100557',22754694,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753543,18322950,'./widgets/mcontent/skins/sweetMobileContent','N','20231017185153',22754588,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753545,18322929,'./modules/editor/components/markdown','N','20231019230339',22756056,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753546,18322925,'./addons/login_2sisstore','N','20231019161439',22755326,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753550,18322925,'./addons/stats','N','20231020030750',22754602,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753552,18322923,'./modules/pado_ajax_newsModule','N','20231019161447',22754727,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753556,18322927,'./widgets/pado_ajax_newsWidget','N','20231019161445',22754726,'1.9');
INSERT INTO `xe_autoinstall_packages` VALUES (22753558,18994170,'./modules/board/m.skins/sweetMobileBoard','N','20231016145256',22754647,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753559,18322954,'./layouts/xet_onecolor','N','20231018013410',22754842,'1.0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753560,18322927,'./widgets/pado_board_rankingWidget','N','20231019161449',22755211,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753561,18322954,'./layouts/ts_basic','N','20230921185116',22754619,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753562,18322952,'./widgetstyles/sweetMobileWidgetStyle','N','20231016152013',22754626,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753563,18322923,'./modules/apporix','N','20231019113016',22754631,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753564,18322925,'./addons/apporix','N','20231019113128',22754645,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753565,18322923,'./modules/smith','N','20231017153901',22754636,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753566,18322943,'./modules/editor/skins/sejin7940_editor_fileupload','N','20231020103508',22754637,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753567,18322950,'./widgets/login_info/skins/simplicity_login','N','20231018211437',22754649,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753568,18322943,'./modules/editor/skins/sejin7940_editor_blank','N','20231019080618',22754639,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753570,18322925,'./addons/message_btn','N','20231019161428',22754743,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753571,18322923,'./modules/exam','N','20231017072659',22754771,'0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (22753572,18322954,'./layouts/websitebuilder','N','20231017193959',22754679,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753573,18994172,'./m.layouts/xenon_hs','N','20231017185739',22754659,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753575,18322943,'./modules/board/skins/ASXE_FLAT','N','20231019161434',22754714,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753576,18322954,'./layouts/ASXE_FLAT','N','20231020004051',22754715,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753581,18322925,'./addons/apporix_native_alert','N','20231019113054',22754678,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753582,18322927,'./widgets/ding_loginWidget','N','20231019193614',22755210,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753587,18322954,'./layouts/miku_daisuki','N','20230922134301',22754733,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753588,18322923,'./modules/moneyhistory','N','20231017013646',22754731,'0.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753594,18322925,'./addons/session_shield','N','20231019082939',22756003,'2.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753600,18322927,'./widgets/ding_member_ranking','N','20231019195854',22754905,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753603,18322927,'./widgets/widget_marketplace','N','20231017001324',22754783,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753605,18322927,'./widgets/padoLittleBanner','N','20231019195955',22754817,'0.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753685,18322925,'./addons/no_adblock','N','20231019213714',22755161,'1.1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753606,18322925,'./addons/level_permit','N','20231020030824',22754795,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753607,18322925,'./addons/member_doc','N','20231020103102',22754796,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753608,18322925,'./addons/denied_exist','N','20231020030826',22754798,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753609,18322925,'./addons/regdate_edit','N','20231020030817',22754803,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753610,18322925,'./addons/poll_point','N','20231020030822',22754813,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753612,18322925,'./addons/select_addon','N','20231020025045',22754818,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753614,18322927,'./widgets/pado_image_news','N','20231019195821',22755163,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753615,18322927,'./widgets/nkoclock','N','20230922141342',22754823,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753616,18322927,'./widgets/uhachat','N','20231019190438',22755376,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753617,18322923,'./modules/encryption','N','20231019085357',22755121,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753620,18322927,'./widgets/fixedNotice','N','20231019195859',22754854,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753622,18322925,'./addons/signoutdel','N','20231020014121',22754837,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753624,18322923,'./modules/member_condition','N','20231017180440',22755317,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753627,18322925,'./addons/fixed_notice','N','20231019195857',22754875,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753634,18322927,'./widgets/soo_kma_rss','N','20231017104301',22755438,'0.3.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753633,18322925,'./addons/Ding_Fixed_Banner','N','20231019193616',22755314,'1.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753637,18322923,'./modules/androidpushapp','N','20231017205001',22755682,'2.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753636,18322923,'./modules/auto_login','N','20231019214706',22754942,'1.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753638,18322943,'./modules/editor/skins/ck_xpress','N','20231018212948',22754981,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753639,18322925,'./addons/Ding_Light_Box','N','20231019193607',22755312,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753640,18322925,'./addons/autolang','N','20231019085416',22754915,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753645,18322950,'./widgets/content/skins/notice_slider','N','20231017203648',22754937,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753646,18322925,'./addons/fix_domain','N','20231019213623',22754935,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753647,18322923,'./modules/schedule','N','20231017185403',22754990,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753648,18322925,'./addons/bot_challenge','N','20231019221940',22755249,'1.0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753651,18322923,'./modules/vote','N','20231019212431',22755019,'1.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753652,18322925,'./addons/point_pangpang','N','20231017064450',22755059,'1.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753653,18322925,'./addons/content_regex_filter','N','20231017165247',22754961,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753654,18322929,'./modules/editor/components/srook_maker','N','20231019192617',22754966,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753655,18322923,'./modules/beluxe','N','20231017063902',22755255,'2.8.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753657,18322925,'./addons/remail','N','20231017224122',22754984,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753658,18322925,'./addons/zipperupper','N','20231019085412',22755026,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753660,18322954,'./layouts/ding_default_layout','N','20231019195901',22755044,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753662,18322954,'./layouts/xe_kimtajo_layout','N','20231019211656',22755545,'2.03');
INSERT INTO `xe_autoinstall_packages` VALUES (22753663,18322923,'./modules/speedlimiter','N','20231017164709',22755981,'1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753666,18322927,'./widgets/jwplayer','N','20231017191417',22755048,'2.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753667,18322925,'./addons/requirefile','N','20231017171316',22755038,'1.01');
INSERT INTO `xe_autoinstall_packages` VALUES (22753674,18322943,'./modules/beluxe/skins/dxblog','N','20231017091658',22755246,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753677,18322923,'./modules/advanced_mailer','N','20231019085340',22756149,'1.8.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753678,18322927,'./widgets/youtube','N','20231017181425',22755381,'1.3.0.');
INSERT INTO `xe_autoinstall_packages` VALUES (22753680,18322943,'./modules/beluxe/skins/dxreview','N','20231017213455',22755245,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753684,18322925,'./addons/lua_external_file','N','20231017051410',22755147,'0.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753688,18322927,'./widgets/best_content','N','20231017123425',22755148,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753689,18322929,'./modules/editor/components/btn_add','N','20231018042848',22755152,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753692,18322927,'./widgets/androidapp_login','N','20231017172145',22755388,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753693,18322925,'./addons/outdated_browser','N','20231017162255',22755188,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753695,18322925,'./addons/lua_hashtag','N','20231017115727',22755190,'0.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753696,18322925,'./addons/lua_shortcut','N','20231017030212',22755315,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753698,18322950,'./widgets/sitemap/skins/eond_hmap','N','20231018130048',22755200,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753699,18322950,'./widgets/planet_document/skins/eond_on','N','20231018001252',22755212,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753702,18322925,'./addons/document_permission_control_by_author','N','20231019194736',22755263,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753703,18322925,'./addons/image_new_windows','N','20231017163702',22755252,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753706,18322925,'./addons/adsense_helper','N','20231017204401',22755268,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753710,18322954,'./layouts/creative_sim','N','20231019151956',22755295,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753711,18322954,'./layouts/sim_blog','N','20231019151958',22755296,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753712,18322954,'./layouts/xit','N','20231017101632',22755284,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753713,18322954,'./layouts/xecafe','N','20231017065557',22755285,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753717,18322923,'./modules/member_expire','N','20231017192934',22756005,'1.2.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753720,18322954,'./layouts/simblog2','N','20231019152001',22755305,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753721,18322927,'./widgets/daum_postcode','N','20231017235711',22755318,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753722,18322925,'./addons/latex','N','20231017102137',22755316,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753723,18322925,'./addons/auto_secret','N','20231017135348',22755355,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753724,18322923,'./modules/freedownload','N','20231019193638',22755331,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753725,18322927,'./widgets/pado_comment_rankingWidget','N','20231019193604',22755325,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753726,18322923,'./modules/imageprocess','N','20231019161409',22756180,'2.6.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753727,18322943,'./modules/board/skins/ena_board_set_simpledashed','N','20231019194948',22755328,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753733,18322927,'./widgets/kimtajo_subpage_widget','N','20230922141119',22755346,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753815,18322925,'./addons/member_realname','N','20231017103303',22755592,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753741,18322927,'./widgets/eond_fileboxBanner','N','20231017195805',22755364,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753742,18322954,'./layouts/basic_tpl_c','N','20231018002502',22755404,'1.04');
INSERT INTO `xe_autoinstall_packages` VALUES (22753743,18322954,'./layouts/yourfoliomain','N','20231019151219',22755394,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753745,18322925,'./addons/auto_comment_allow','N','20231017182558',22755397,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753748,18322925,'./addons/admin_hide','N','20231017143944',22755416,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753755,18322925,'./addons/fixed_img','N','20231017224007',22755449,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753759,18322923,'./modules/laweb_xe','N','20231018100053',22755702,'3.10');
INSERT INTO `xe_autoinstall_packages` VALUES (22753768,18322927,'./widgets/contactfree','N','20231019012255',22755456,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753769,18322954,'./layouts/freelancer','N','20231019012254',22755465,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753770,18322925,'./addons/ggwoorimailscrap','N','20231017174446',22755522,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753779,18994170,'./modules/board/m.skins/BlueRock','N','20231017185757',22755476,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753780,18994172,'./m.layouts/BlueRock','N','20231020022339',22755477,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753787,18322954,'./layouts/kimtajo_responsive_one_page','N','20231017132801',22755594,'1.03');
INSERT INTO `xe_autoinstall_packages` VALUES (22753791,18322923,'./modules/yeyak','N','20231019161343',22756169,'2.2.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753796,18322925,'./addons/fix_mysql_utf8','N','20231019085353',22755521,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753797,18322925,'./addons/autoattach','N','20231019083212',22755954,'1.1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753798,18322927,'./widgets/ggward','N','20231017182632',22755532,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753799,18322927,'./widgets/ggnewsletter','N','20231018090403',22755533,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753881,18322925,'./addons/clamav','N','20231019082934',22755764,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753800,18322925,'./addons/web_fonts','N','20231019054049',22755550,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753801,18322954,'./layouts/xedition_r','N','20231019012314',22755551,'1.9');
INSERT INTO `xe_autoinstall_packages` VALUES (22753802,18322950,'./widgets/uhachat/skins/pinklet','N','20231017190953',22755553,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753806,18322923,'./modules/mailing','N','20231018015436',22755557,'0.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753807,18322925,'./addons/hello_member','N','20231017054223',22755565,'1.1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753811,18322923,'./modules/opensearch','N','20231017112429',22755570,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753817,18322943,'./modules/board/skins/simple_banner','N','20231020052114',22755613,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753818,18322923,'./modules/phpexcel_module','N','20231018072509',22755598,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753820,18322954,'./layouts/kimtajo_onepage_widget_layout','N','20231017092441',22755601,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753822,18322927,'./widgets/onepage_about','N','20231019185717',22755603,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753823,18322927,'./widgets/onepage_features','N','20231019185724',22755604,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753824,18322927,'./widgets/onepage_pricing','N','20231019185727',22755605,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753825,18322927,'./widgets/onepage_service','N','20231019185714',22755606,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753826,18322927,'./widgets/onepage_team','N','20231019185730',22755607,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753827,18322927,'./widgets/onepage_testimonial','N','20231019185735',22755608,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753828,18322927,'./widgets/onepage_work','N','20231019185722',22755609,'1.00');
INSERT INTO `xe_autoinstall_packages` VALUES (22753833,18322943,'./modules/board/skins/Horizon','N','20231020060602',22755713,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753835,18994172,'./m.layouts/phizmobile_m','N','20231017191801',22755630,'1.8.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753837,18994170,'./modules/page/m.skins/main02_MobileM','N','20231017185812',22755631,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753838,18322923,'./modules/phizeditormobile','N','20231016152928',22755632,'1.8.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753840,18994170,'./modules/board/m.skins/phiz_mboard','N','20231017074007',22755633,'1.8.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753841,18322943,'./modules/board/skins/phiz_mboard','N','20231019135831',22755634,'1.8.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753842,18322923,'./modules/sitemaplite','N','20231020102128',22756007,'1.1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753845,18322952,'./widgetstyles/clearstrap_ws','N','20231017202754',22755645,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753846,18322925,'./addons/no_act','N','20231017075610',22755661,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753847,18322954,'./layouts/stellar','N','20231019011950',22755946,'1.0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753849,18322925,'./addons/block_search','N','20231019085413',22755674,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753850,18322925,'./addons/login_redirect','N','20231019085401',22755675,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753851,18322925,'./addons/backspace_killer','N','20231019085356',22755676,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753852,18322925,'./addons/noduplicate','N','20231017192446',22755677,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753856,18322954,'./layouts/magik','N','20231016222953',22755690,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753857,18322923,'./modules/notifymessage','N','20231016221424',22755694,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753859,18322927,'./widgets/widget_rssreader','N','20231016213509',22755695,'1.8.25');
INSERT INTO `xe_autoinstall_packages` VALUES (22753861,18322923,'./modules/roulette','N','20231017145516',22755708,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753863,18322923,'./modules/couponsms','N','20231017200109',22755709,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753864,18322923,'./modules/layout_manager','N','20231002190431',22755722,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753865,18322923,'./modules/supercache','N','20231019150114',22756150,'1.3.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753866,18322927,'./widgets/widget_update_document','N','20231017020923',22755718,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753867,18322954,'./layouts/Door_cpA_limit','N','20231020101533',22755752,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753868,18322950,'./widgets/content/skins/Door_cpA','N','20231017061422',22755724,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753870,18322927,'./widgets/uchat2','N','20231017231650',22756220,'1.0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (22753871,18322954,'./layouts/Door_cpB_limit','N','20231019092345',22755754,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753872,18322950,'./widgets/content/skins/Door_cpB','N','20231017184349',22755744,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753876,18322952,'./widgetstyles/greenButtonStyle','N','20231017150803',22755756,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753889,18322927,'./widgets/sitemap7','N','20231016145451',22755786,'0.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753885,18322925,'./addons/ext_ad_membership','N','20231016232943',22755775,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753886,18322977,'./modules/point/icons/las_icon','N','20231017130229',22755781,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753890,18322923,'./modules/blind','N','20231016152432',22755799,'0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753891,18322923,'./modules/cympuser','N','20231019180012',22755803,'2.5.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753892,18322954,'./layouts/ena_creamy','N','20231019185901',22755817,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753893,18322943,'./modules/board/skins/ena_board_set_mellow','N','20231019194945',22756262,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753894,18322923,'./modules/randocument','N','20231019123942',22755828,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753895,18322923,'./modules/etorrent','N','20231016152436',22755829,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753896,18322927,'./widgets/etorrent_pop','N','20231017061858',22755830,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753898,18322925,'./addons/datasaver_warning','N','20231017104654',22755847,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753900,18322954,'./layouts/undeviating','N','20231017225336',22755942,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753901,18322925,'./addons/zhttps','N','20231019150350',22755861,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753902,18322925,'./addons/replace_word','N','20231019113313',22755873,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753904,18322925,'./addons/only_once_comment','N','20231019083616',22755872,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753905,18322923,'./modules/voteextend','N','20231020032350',22755884,'1.88');
INSERT INTO `xe_autoinstall_packages` VALUES (22753906,18322943,'./modules/message/skins/stalla','N','20231017131602',22755891,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753907,18994170,'./modules/message/m.skins/stalla','N','20231017191338',22755892,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753909,18322925,'./addons/google_recaptcha','N','20231018001553',22756168,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753915,18322954,'./layouts/J_Furniture','N','20231017204700',22755994,'2.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753917,18322954,'./layouts/J_Finder','N','20231018014751',22756013,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753916,18322950,'./widgets/content/skins/J_Furniture','N','20231017204700',22755993,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753918,18322950,'./widgets/content/skins/J_Finder_scroll','N','20231017204739',22755914,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753919,18322950,'./widgets/content/skins/J_Finder','N','20231017204739',22755915,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753920,18322954,'./layouts/J_Flex','N','20231017200857',22755939,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753925,18322954,'./layouts/J_Maltese','N','20231017215259',22755949,'1.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753926,18322950,'./widgets/content/skins/J_Maltese_Left','N','20231017220249',22755928,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753927,18322950,'./widgets/content/skins/J_Maltese_Right','N','20231017205027',22755948,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753929,18322950,'./widgets/login_info/skins/j_maltese_login','N','20231017205027',22755940,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753930,18322925,'./addons/number_dice','N','20231020024956',22755945,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753933,18322943,'./modules/board/skins/insp_yotube','N','20231018112040',22755979,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753934,18322925,'./addons/zipdownload','N','20231020043320',22756123,'1.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753935,18322923,'./modules/admin_menu','N','20230912190527',22755982,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753936,18322923,'./modules/file_log','N','20230929214713',22755983,'1.7');
INSERT INTO `xe_autoinstall_packages` VALUES (22753937,18322954,'./layouts/equeer_layout','N','20231020001012',22755985,'1.4.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753940,18322925,'./addons/theme_admin','N','20231016063048',22756006,'1.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753941,18322943,'./modules/board/skins/uikit','N','20231019154715',22756000,'1.0.15.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753939,18322950,'./widgets/point_status/skins/equeer_point','N','20231017214410',22755987,'0.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753942,18322954,'./layouts/root_basic_layout','N','20231019051854',22756191,'1.2.2');
INSERT INTO `xe_autoinstall_packages` VALUES (22753943,18322943,'./modules/board/skins/aplos_v2','N','20231019010250',22756132,'2.2.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753945,18322923,'./modules/something','N','20231018115238',22756057,'1.0.10');
INSERT INTO `xe_autoinstall_packages` VALUES (22753946,18322925,'./addons/prohibit_backlink','N','20231016144932',22756053,'1.0.3');
INSERT INTO `xe_autoinstall_packages` VALUES (22753947,18322923,'./modules/devcenter','N','20231017210653',22756118,'0.4.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753949,18322954,'./layouts/game_layout','N','20231017164533',22756074,'1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753950,18322925,'./addons/prevent_deletion','N','20231017080227',22756080,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753953,18322923,'./modules/google_calendar','N','20231016144334',22756094,'1.0.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753955,18322954,'./layouts/ena_paper','N','20231018200330',22756099,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753957,18322923,'./modules/geoipxe','N','20231017231837',22756186,'0.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753958,18322925,'./addons/fontawesome5','N','20231016144754',22756130,'1.0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753963,18322927,'./widgets/exchangeRateXE123','N','20231017182144',22756142,'1.1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753967,18322954,'./layouts/mh_fullpage','N','20231019011714',22756147,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753969,18322925,'./addons/typofix','N','20231020030848',22756154,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753971,18322925,'./addons/meta_remove','N','20231018144534',22756165,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753972,18322925,'./addons/google_tagmanager','N','20231016144747',22756167,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753975,18322923,'./modules/pagelocker','N','20231017231531',22756270,'1.1.5');
INSERT INTO `xe_autoinstall_packages` VALUES (22753977,18322923,'./modules/import_excel','N','20231017210105',22756192,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753982,18322925,'./addons/auto_comment_secret','N','20231017110151',22756201,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753983,18322923,'./modules/dable','N','20231019054943',22756257,'0.9.4');
INSERT INTO `xe_autoinstall_packages` VALUES (22753984,18322950,'./widgets/counter_status/skins/counter','N','20231019172241',22756202,'1.0');
INSERT INTO `xe_autoinstall_packages` VALUES (22753986,18322923,'./modules/nowconnect','N','20231017223954',22756267,'1.0.8');
INSERT INTO `xe_autoinstall_packages` VALUES (22753988,18322925,'./addons/simple_mp3_player','N','20231017190024',22756219,'1.1.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753989,18322925,'./addons/tag_off','N','20231017190032',22756227,'0.1');
INSERT INTO `xe_autoinstall_packages` VALUES (22753992,18322925,'./addons/dsori_notifier_document','N','20231017120511',22756244,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753993,18322925,'./addons/dsori_notifier_member','N','20231017234707',22756245,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753994,18322925,'./addons/dsori_notifier_comment','N','20231017190037',22756246,'0.6');
INSERT INTO `xe_autoinstall_packages` VALUES (22753995,18322927,'./widgets/dsori_sms_form_solapi','N','20231017190040',22756247,'0.6');
/*!40000 ALTER TABLE `xe_autoinstall_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_comment_declared`
--

DROP TABLE IF EXISTS `xe_comment_declared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_comment_declared` (
  `comment_srl` bigint(11) NOT NULL,
  `declared_count` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_srl`),
  KEY `idx_declared_count` (`declared_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_comment_declared`
--

LOCK TABLES `xe_comment_declared` WRITE;
/*!40000 ALTER TABLE `xe_comment_declared` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_comment_declared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_comment_declared_log`
--

DROP TABLE IF EXISTS `xe_comment_declared_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_comment_declared_log` (
  `comment_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_comment_srl` (`comment_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_comment_declared_log`
--

LOCK TABLES `xe_comment_declared_log` WRITE;
/*!40000 ALTER TABLE `xe_comment_declared_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_comment_declared_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_comment_voted_log`
--

DROP TABLE IF EXISTS `xe_comment_voted_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_comment_voted_log` (
  `comment_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `point` bigint(11) NOT NULL,
  KEY `idx_comment_srl` (`comment_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_comment_voted_log`
--

LOCK TABLES `xe_comment_voted_log` WRITE;
/*!40000 ALTER TABLE `xe_comment_voted_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_comment_voted_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_comments`
--

DROP TABLE IF EXISTS `xe_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_comments` (
  `comment_srl` bigint(11) NOT NULL,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `parent_srl` bigint(11) NOT NULL DEFAULT 0,
  `is_secret` char(1) NOT NULL DEFAULT 'N',
  `content` longtext NOT NULL,
  `voted_count` bigint(11) NOT NULL DEFAULT 0,
  `blamed_count` bigint(11) NOT NULL DEFAULT 0,
  `notify_message` char(1) NOT NULL DEFAULT 'N',
  `password` varchar(60) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `user_name` varchar(80) NOT NULL,
  `nick_name` varchar(80) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `homepage` varchar(250) NOT NULL,
  `uploaded_count` bigint(11) NOT NULL DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `list_order` bigint(11) NOT NULL,
  `status` bigint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`comment_srl`),
  UNIQUE KEY `idx_module_list_order` (`module_srl`,`list_order`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_parent_srl` (`parent_srl`),
  KEY `idx_voted_count` (`voted_count`),
  KEY `idx_blamed_count` (`blamed_count`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_uploaded_count` (`uploaded_count`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_last_update` (`last_update`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_list_order` (`list_order`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_comments`
--

LOCK TABLES `xe_comments` WRITE;
/*!40000 ALTER TABLE `xe_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_comments_list`
--

DROP TABLE IF EXISTS `xe_comments_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_comments_list` (
  `comment_srl` bigint(11) NOT NULL,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `head` bigint(11) NOT NULL DEFAULT 0,
  `arrange` bigint(11) NOT NULL DEFAULT 0,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  `depth` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_srl`),
  KEY `idx_list` (`document_srl`,`head`,`arrange`),
  KEY `idx_date` (`module_srl`,`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_comments_list`
--

LOCK TABLES `xe_comments_list` WRITE;
/*!40000 ALTER TABLE `xe_comments_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_comments_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_counter_log`
--

DROP TABLE IF EXISTS `xe_counter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_counter_log` (
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `ipaddress` varchar(250) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `user_agent` varchar(250) DEFAULT NULL,
  KEY `idx_site_counter_log` (`site_srl`,`ipaddress`),
  KEY `idx_counter_log` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_counter_log`
--

LOCK TABLES `xe_counter_log` WRITE;
/*!40000 ALTER TABLE `xe_counter_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_counter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_counter_site_status`
--

DROP TABLE IF EXISTS `xe_counter_site_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_counter_site_status` (
  `site_srl` bigint(11) NOT NULL,
  `regdate` bigint(11) NOT NULL,
  `unique_visitor` bigint(11) DEFAULT 0,
  `pageview` bigint(11) DEFAULT 0,
  UNIQUE KEY `site_status` (`site_srl`,`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_counter_site_status`
--

LOCK TABLES `xe_counter_site_status` WRITE;
/*!40000 ALTER TABLE `xe_counter_site_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_counter_site_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_counter_status`
--

DROP TABLE IF EXISTS `xe_counter_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_counter_status` (
  `regdate` bigint(11) NOT NULL,
  `unique_visitor` bigint(11) DEFAULT 0,
  `pageview` bigint(11) DEFAULT 0,
  PRIMARY KEY (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_counter_status`
--

LOCK TABLES `xe_counter_status` WRITE;
/*!40000 ALTER TABLE `xe_counter_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_counter_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_aliases`
--

DROP TABLE IF EXISTS `xe_document_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_aliases` (
  `alias_srl` bigint(11) NOT NULL DEFAULT 0,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `alias_title` varchar(250) NOT NULL,
  PRIMARY KEY (`alias_srl`),
  UNIQUE KEY `idx_module_title` (`module_srl`,`alias_title`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_alias_title` (`alias_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_aliases`
--

LOCK TABLES `xe_document_aliases` WRITE;
/*!40000 ALTER TABLE `xe_document_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_categories`
--

DROP TABLE IF EXISTS `xe_document_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_categories` (
  `category_srl` bigint(11) NOT NULL DEFAULT 0,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `parent_srl` bigint(12) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `expand` char(1) DEFAULT 'N',
  `document_count` bigint(11) NOT NULL DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  `group_srls` text DEFAULT NULL,
  `color` varchar(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`category_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_categories`
--

LOCK TABLES `xe_document_categories` WRITE;
/*!40000 ALTER TABLE `xe_document_categories` DISABLE KEYS */;
INSERT INTO `xe_document_categories` VALUES (256,226,0,'청년캠퍼스','N',0,'20231019143002','20231019143002',256,'',NULL,NULL);
INSERT INTO `xe_document_categories` VALUES (257,226,0,'엘틴 캠퍼스','N',6,'20231019143009','20231019150958',257,'',NULL,NULL);
INSERT INTO `xe_document_categories` VALUES (258,226,0,'주니어 캠퍼스','N',0,'20231019143017','20231019143017',258,'',NULL,NULL);
INSERT INTO `xe_document_categories` VALUES (259,226,0,'O2솔로몬 아카데미','N',0,'20231019143039','20231019143051',259,'',NULL,'');
/*!40000 ALTER TABLE `xe_document_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_declared`
--

DROP TABLE IF EXISTS `xe_document_declared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_declared` (
  `document_srl` bigint(11) NOT NULL,
  `declared_count` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`document_srl`),
  KEY `idx_declared_count` (`declared_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_declared`
--

LOCK TABLES `xe_document_declared` WRITE;
/*!40000 ALTER TABLE `xe_document_declared` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_declared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_declared_log`
--

DROP TABLE IF EXISTS `xe_document_declared_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_declared_log` (
  `document_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_declared_log`
--

LOCK TABLES `xe_document_declared_log` WRITE;
/*!40000 ALTER TABLE `xe_document_declared_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_declared_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_extra_keys`
--

DROP TABLE IF EXISTS `xe_document_extra_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_extra_keys` (
  `module_srl` bigint(11) NOT NULL,
  `var_idx` bigint(11) NOT NULL,
  `var_name` varchar(250) NOT NULL,
  `var_type` varchar(50) NOT NULL,
  `var_is_required` char(1) NOT NULL DEFAULT 'N',
  `var_search` char(1) NOT NULL DEFAULT 'N',
  `var_default` text DEFAULT NULL,
  `var_desc` text DEFAULT NULL,
  `eid` varchar(40) DEFAULT NULL,
  UNIQUE KEY `unique_module_keys` (`module_srl`,`var_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_extra_keys`
--

LOCK TABLES `xe_document_extra_keys` WRITE;
/*!40000 ALTER TABLE `xe_document_extra_keys` DISABLE KEYS */;
INSERT INTO `xe_document_extra_keys` VALUES (208,1,'동영상 URL 입력','homepage','N','N','','','video');
INSERT INTO `xe_document_extra_keys` VALUES (210,1,'동영상 URL 입력','text','N','N','','','video');
INSERT INTO `xe_document_extra_keys` VALUES (212,1,'동영상 URL 입력','homepage','N','N','','','video');
INSERT INTO `xe_document_extra_keys` VALUES (200,1,'동영상 URL 입력','homepage','N','N','','','video');
/*!40000 ALTER TABLE `xe_document_extra_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_extra_vars`
--

DROP TABLE IF EXISTS `xe_document_extra_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_extra_vars` (
  `module_srl` bigint(11) NOT NULL,
  `document_srl` bigint(11) NOT NULL,
  `var_idx` bigint(11) NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `value` longtext DEFAULT NULL,
  `eid` varchar(40) DEFAULT NULL,
  UNIQUE KEY `unique_extra_vars` (`module_srl`,`document_srl`,`var_idx`,`lang_code`),
  KEY `idx_document_list_order` (`document_srl`,`module_srl`,`var_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_extra_vars`
--

LOCK TABLES `xe_document_extra_vars` WRITE;
/*!40000 ALTER TABLE `xe_document_extra_vars` DISABLE KEYS */;
INSERT INTO `xe_document_extra_vars` VALUES (208,230,1,'ko','https://www.youtube.com/watch?v=k0cuN81DEQw','video');
INSERT INTO `xe_document_extra_vars` VALUES (210,284,1,'ko','https://www.youtube.com/watch?v=k0cuN81DEQw','video');
INSERT INTO `xe_document_extra_vars` VALUES (200,362,1,'ko','https://www.youtube.com/watch?v=k0cuN81DEQw','video');
INSERT INTO `xe_document_extra_vars` VALUES (212,382,1,'ko','https://www.youtube.com/watch?v=k0cuN81DEQw','video');
/*!40000 ALTER TABLE `xe_document_extra_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_histories`
--

DROP TABLE IF EXISTS `xe_document_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_histories` (
  `history_srl` bigint(11) NOT NULL DEFAULT 0,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `nick_name` varchar(80) NOT NULL,
  `member_srl` bigint(11) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  PRIMARY KEY (`history_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_ipaddress` (`ipaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_histories`
--

LOCK TABLES `xe_document_histories` WRITE;
/*!40000 ALTER TABLE `xe_document_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_readed_log`
--

DROP TABLE IF EXISTS `xe_document_readed_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_readed_log` (
  `document_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_readed_log`
--

LOCK TABLES `xe_document_readed_log` WRITE;
/*!40000 ALTER TABLE `xe_document_readed_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_readed_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_trash`
--

DROP TABLE IF EXISTS `xe_document_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_trash` (
  `trash_srl` bigint(11) NOT NULL DEFAULT 0,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `trash_date` varchar(14) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `user_name` varchar(80) NOT NULL,
  `nick_name` varchar(80) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  PRIMARY KEY (`trash_srl`),
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_trash_date` (`trash_date`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_member_srl` (`member_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_trash`
--

LOCK TABLES `xe_document_trash` WRITE;
/*!40000 ALTER TABLE `xe_document_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_document_voted_log`
--

DROP TABLE IF EXISTS `xe_document_voted_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_document_voted_log` (
  `document_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `point` bigint(11) NOT NULL,
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_document_voted_log`
--

LOCK TABLES `xe_document_voted_log` WRITE;
/*!40000 ALTER TABLE `xe_document_voted_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_document_voted_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_documents`
--

DROP TABLE IF EXISTS `xe_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_documents` (
  `document_srl` bigint(11) NOT NULL,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `category_srl` bigint(11) NOT NULL DEFAULT 0,
  `lang_code` varchar(10) NOT NULL DEFAULT '',
  `is_notice` char(1) NOT NULL DEFAULT 'N',
  `title` varchar(250) DEFAULT NULL,
  `title_bold` char(1) NOT NULL DEFAULT 'N',
  `title_color` varchar(7) DEFAULT NULL,
  `content` longtext NOT NULL,
  `readed_count` bigint(11) NOT NULL DEFAULT 0,
  `voted_count` bigint(11) NOT NULL DEFAULT 0,
  `blamed_count` bigint(11) NOT NULL DEFAULT 0,
  `comment_count` bigint(11) NOT NULL DEFAULT 0,
  `trackback_count` bigint(11) NOT NULL DEFAULT 0,
  `uploaded_count` bigint(11) NOT NULL DEFAULT 0,
  `password` varchar(60) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `user_name` varchar(80) NOT NULL,
  `nick_name` varchar(80) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `homepage` varchar(250) NOT NULL,
  `tags` text DEFAULT NULL,
  `extra_vars` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  `last_updater` varchar(80) DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `list_order` bigint(11) NOT NULL,
  `update_order` bigint(11) NOT NULL,
  `allow_trackback` char(1) NOT NULL DEFAULT 'Y',
  `notify_message` char(1) NOT NULL DEFAULT 'N',
  `status` varchar(20) DEFAULT 'PUBLIC',
  `comment_status` varchar(20) DEFAULT 'ALLOW',
  PRIMARY KEY (`document_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_category_srl` (`category_srl`),
  KEY `idx_is_notice` (`is_notice`),
  KEY `idx_readed_count` (`readed_count`),
  KEY `idx_voted_count` (`voted_count`),
  KEY `idx_blamed_count` (`blamed_count`),
  KEY `idx_comment_count` (`comment_count`),
  KEY `idx_trackback_count` (`trackback_count`),
  KEY `idx_uploaded_count` (`uploaded_count`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_last_update` (`last_update`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_list_order` (`list_order`),
  KEY `idx_update_order` (`update_order`),
  KEY `idx_module_list_order` (`module_srl`,`list_order`),
  KEY `idx_module_update_order` (`module_srl`,`update_order`),
  KEY `idx_module_readed_count` (`module_srl`,`readed_count`),
  KEY `idx_module_voted_count` (`module_srl`,`voted_count`),
  KEY `idx_module_notice` (`module_srl`,`is_notice`),
  KEY `idx_module_document_srl` (`module_srl`,`document_srl`),
  KEY `idx_module_blamed_count` (`module_srl`,`blamed_count`),
  KEY `idx_module_status` (`module_srl`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_documents`
--

LOCK TABLES `xe_documents` WRITE;
/*!40000 ALTER TABLE `xe_documents` DISABLE KEYS */;
INSERT INTO `xe_documents` VALUES (96,71,0,'ko','N','Welcome XE','N','N','<link rel=\"stylesheet\" href=\"./layouts/xedition/css/welcome.css\" />\n<div class=\"welcomeXE\">\n	<section class=\"intro\">\n		<span class=\"noti\">WELCOME TO</span>\n		<h1 class=\"tit\">WELCOME TO XPRESSENGINE</h1>\n		<P class=\"cont\">XpressEngine은 자유로운 웹 콘텐츠 발행을 돕는 CMS입니다.<br />간편한 설치와 다양한 추가 프로그램을 활용하여<br /> 자신만의 웹페이지를 쉽고 빠르게 만들 수 있습니다.</P>\n		<a href=\"/index.php?module=admin\" target=\"_blank\" class=\"btn_start\">XE 시작하기</a>\n	</section>\n</div>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-96,-96,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (97,71,0,'ko','N','Welcome mobile XE','N','N','<link rel=\"stylesheet\" href=\"./layouts/xedition/css/welcome.css\" />\n<div class=\"welcomeXE\">\n	<section class=\"intro\">\n		<span class=\"noti\">WELCOME TO</span>\n		<h1 class=\"tit\">WELCOME TO XPRESSENGINE</h1>\n		<P class=\"cont\">XpressEngine은 자유로운 웹 콘텐츠 발행을 돕는 CMS입니다.<br />간편한 설치와 다양한 추가 프로그램을 활용하여<br /> 자신만의 웹페이지를 쉽고 빠르게 만들 수 있습니다.</P>\n		<a href=\"/index.php?module=admin\" target=\"_blank\" class=\"btn_start\">XE 시작하기</a>\n	</section>\n</div>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-97,-97,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (98,71,0,'ko','N','XEIcon (1)','N','N','<section class=\"main_title fixedwidth\">\n	<h1>Beautiful iconic font &amp; CSS toolkit</h1>\n	<p>\n		XEIcon은 웹사이트 제작에 최적화된 백터 그래픽 아이콘 툴킷입니다.<br />\n		한국 웹서비스 문화에 적합한 디자인과 카테고리를 고려하여 제작되었습니다.<br />\n		XEIcon으로 아름답고 직관적인 웹페이지를 만들어보세요!<br />\n	</p>\n</section>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-98,-98,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (99,71,0,'ko','N','XEIcon (2)','N','N','<section class=\"feature fixedwidth\">\n	<div class=\"tit\"><h1>FEATURE</h1></div>\n	<ul>\n	<li>\n		<div class=\"ico\"><i class=\"xi-cube\"></i></div>\n		<h2>한개의 폰트, 680개의 아이콘</h2>\n		<p>웹 콘텐츠의 목적에 맞는 아이콘을 다양한 구성에서 찾아볼 수 있습니다.<br /><a href=\"https://xpressengine.github.io/XEIcon/library_common.html\" target=\"_blank\">라이브러리</a>에서 필요한 아이콘을 찾아보세요!</p>\n	</li>\n	<li>\n		<div class=\"ico\"><i class=\"xi-sitemap\"></i></div>\n		<h2>호환성</h2>\n		<p>XEIcon은 자바스크립트 없이 구현됩니다. <br />또한 다양한 브라우저에서도 동일한 뷰로 웹 페이지를 노출합니다.</p>\n	</li>\n	<li>\n		<div class=\"ico\"><i class=\"xi-layout-top-left\"></i></div>\n		<h2>최적화</h2>\n		<p>XpressEngine 뿐 아니라, 다양한 프레임워크에서 동일하게 구현됩니다. 여러 환경에서 자유롭게 이용해보세요!</p>\n	</li>\n	<li>\n		<div class=\"ico\"><i class=\"xi-arrows-alt\"></i></div>\n		<h2>확장성</h2>\n		<p>백터 아이콘으로 만들어진 XEIcon은 어떤 크기로도 확장이 가능하며 높은 해상도의 화면에서도 선명한 형태를 유지합니다.</p>\n	</li>\n	<li>\n		<div class=\"ico\"><i class=\"xi-pen\"></i></div>\n		<h2>자유로운 변형</h2>\n		<p>CSS를 통해 아이콘의 색상, 크기 등을 손쉽게 변형할 수 있습니다. <a href=\"https://xpressengine.github.io/XEIcon/examples.html\" target=\"_blank\">LESS SASS</a>로 더 넓어진 활용 범위를 확인하세요!</p>\n	</li>\n	<li>\n		<div class=\"ico\"><i class=\"xi-present\"></i></div>\n		<h2>오픈소스</h2>\n		<p>XEIcon은 OFL 라이선스를 따르는 오픈소스로 모든 사용자에게 무료로 제공됩니다. <a href=\"https://xpressengine.github.io/XEIcon/license.html\" target=\"_blank\">라이선스</a>를 확인해 보세요!</p>\n	</li>\n	</ul>\n</section>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-99,-99,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (100,71,0,'ko','N','XEIcon (3)','N','N','<section class=\"get_started\">\n	<div class=\"fixedwidth\">\n		<div class=\"tit\"><h1>GET STARTED</h1></div>\n		<p class=\"cont\">XEIcon 사용과 설치 방법은 매우 간단합니다. 자세한 사용방법을 <a href=\"http://xpressengine.github.io/XEIcon/\">XEIcon 공식사이트</a>에서 확인해보세요!</p>\n		<ul>\n			<li>\n				<h2>최신버전 다운로드</h2>\n				<p>가장 최신버전 구성을 압축파일로<br />다운로드 받아볼 수 있습니다.</p>\n				<a href=\"https://github.com/xpressengine/XEIcon/archive/master.zip\"><i class=\"xeicon xi-download\"></i> Download</a>\n			</li>\n			<li>\n				<h2>Git 저장소 복제</h2>\n				<p>Github에서 로컬 저장소로 복제하여 사용할 수 있습니다.</p>\n				<a href=\"https://xpressengine.github.io/XEIcon/started.html#installation\" target=\"_blank\"><i class=\"xeicon xi-arrow-right\"></i> check out</a>\n			</li>\n			<li>\n				<h2>CDN by jsDelivr</h2>\n				<p>한줄의 코드만 작성하면 다운로드 없이 XEIcon을 사용할 수 있습니다.</p>\n				<a href=\"https://xpressengine.github.io/XEIcon/started.html#cdn\" target=\"_blank\"><i class=\"xeicon xi-arrow-right\"></i> check out</a>\n			</li>\n			<li>\n				<h2>Install with Bower</h2>\n				<p>Bower 서비스에서 XEIcon 패키지를 바로 설치할 수 있습니다.</p>\n				<a href=\"https://xpressengine.github.io/XEIcon/started.html#bower\"><i class=\"xeicon xi-arrow-right\"></i> check out</a>\n			</li>\n		</ul>\n	</div>\n</section>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-100,-100,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (101,71,0,'ko','N','XEIcon (4)','N','N','<section class=\"contribution fixedwidth\">\n	<div class=\"tit\"><h1>CONTRIBUTION</h1></div>\n	<p class=\"cont\">새로운 아이콘 요청이나 XEICON에 대한 제안이 있다면 자유롭게 이야기해주세요!<br />앞으로의 이야기들을 함께 만들어갈 third party 참여 또한 환영합니다.</p>\n	<a href=\"https://github.com/xpressengine/XEIcon\" target=\"_blank\" class=\"btn_github\">github</a>\n</section>\n',0,0,0,0,0,0,NULL,'admin','admin','admin',4,'web@doweb.kr','',NULL,'N;','20230919112544','20230919112544',NULL,'124.111.143.85',-101,-101,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (230,208,0,'ko','N','에벤에셀을 에벤에셀 되게 한 사무엘','N','N','<p>test</p>',12,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231004144701','20231201114514',NULL,'124.111.143.85',-230,-370,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (234,216,0,'ko','N','2019.06.16 해피데이','N','N','<p><img alt=\"cc5423e70301af55c0ef3cbd9cac1f70.jpg\" data-file-srl=\"250\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/216/234/a8bd8892d816371051bc1ad4647d9504.jpg\" /></p>\n\n<p>&nbsp;</p>',0,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231005143806','20231006162002',NULL,'124.111.143.85',-234,-251,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (241,216,0,'ko','N','2019.09.29 가을한마당2','N','N','<p><img alt=\"6ffb94ecb4047d5de1712079f2fc4a1d.jpg\" data-file-srl=\"254\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/216/241/5c01cfb1ecb4e1effc8e2895c152f712.jpg\" /></p>\n\n<p>&nbsp;</p>',3,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231005144524','20231006162100',NULL,'124.111.143.85',-241,-255,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (243,177,0,'ko','N','세계로 소식 - 2023년 8월 20일','N','N','<p>공지테스트</p>\n\n<p>&nbsp;</p>\n\n<p>세계로 소식 - 2023년 8월 20일</p>',1,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231005154926','20231005154926',NULL,'124.111.143.85',-243,-243,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (244,177,0,'ko','N','세계로 소식 - 2023년 8월 27일','N','N','<p>공지테스트</p>\n\n<p>&nbsp;</p>\n\n<p>세계로 소식 - 2023년 8월 20일</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231005154948','20231005154948',NULL,'124.111.143.85',-244,-244,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (245,177,0,'ko','N','조대근 형제의 부친께서 소천 2023.9.2.','N','N','<p>공지 테스트</p>\n\n<p>조대근 형제의 부친께서 소천 2023.9.2.</p>',3,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231005155007','20231005155007',NULL,'124.111.143.85',-245,-245,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (246,177,0,'ko','N','세계로소식 - 2023년 9월 3일','N','N','<p>공지 테스트</p>\n\n<p>세계로소식 - 2023년 9월 3일</p>',1,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231005155030','20231005155030',NULL,'124.111.143.85',-246,-246,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (247,177,0,'ko','N','(온라인)우리 홈페이지 설문조사입니다.','N','N','<p>테스트</p>\n\n<p>(온라인)우리 홈페이지 설문조사입니다.</p>',6,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231005155048','20231005155048',NULL,'124.111.143.85',-247,-247,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (248,216,0,'ko','N','세계로 비전센터 입당예배2','N','N','<p><img alt=\"9cbc94dc46d0b0eb3159b4379a2c6958.jpg\" data-file-srl=\"252\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/216/248/fc31d360802097e007d3dee42d9a6a1c.jpg\" /></p>\n\n<p>&nbsp;</p>',7,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231006161855','20231006162028',NULL,'124.111.143.85',-248,-253,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (260,226,257,'ko','N','2019.06.22~23 캠퍼스 수련회6','N','N','<p><img alt=\"8d9ab34fdb075c29879beb27b673f3a2.jpg\" data-file-srl=\"262\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/260/332e2528d39470352a72033d1c034683.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>',2,0,0,0,0,2,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231019145333','20231019150657',NULL,'175.112.112.60',-260,-268,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (264,226,257,'ko','N','2019.06.22-23 캠퍼스 수련회 7','N','N','<p><img alt=\"7f06736680dd31cf2ba8132aca992813.jpg\" data-file-srl=\"265\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/264/27635d137ce8bd9d568416363608ab79.jpg\" /></p>\n\n<p>&nbsp;</p>',0,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231019150554','20231019150721',NULL,'175.112.112.60',-264,-269,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (266,226,257,'ko','N','2019.06.22-23 캠퍼스 수련회 8','N','N','<p><img alt=\"cc932a7e82d8f1cd7ea4d0b2f6e14f95.jpg\" data-file-srl=\"267\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/266/96502d2c6c6698b9b26ee71ebfeee789.jpg\" /></p>\n\n<p>&nbsp;</p>',1,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231019150640','20231019150729',NULL,'175.112.112.60',-266,-270,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (271,226,257,'ko','N','2019.08.30~31 SDT 마무리 비치캠프 1','N','N','<p><img alt=\"1c8531ef01fe76df4b75ff56b63cfd2f.jpg\" data-file-srl=\"272\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/271/53eacb08b6872b02ec5512fa20b8d48c.jpg\" /></p>\n\n<p>&nbsp;</p>',2,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231019150805','20231019150958',NULL,'175.112.112.60',-271,-278,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (273,226,257,'ko','N','2019.08.30~31 SDT 마무리 비치캠프 2','N','N','<p><img alt=\"48403a6fe0d949c43766d02dd496bc8e.jpg\" data-file-srl=\"274\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/273/1c248403d62a5f2c6d6651d7ae8fae0a.jpg\" /></p>\n\n<p>&nbsp;</p>',1,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231019150847','20231019150951',NULL,'175.112.112.60',-273,-277,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (275,226,257,'ko','N','2019.09.29 가을한마당 캠퍼스','N','N','<p><img alt=\"6f93e4e2784c6ce8428f48a0f232dce4.jpg\" data-file-srl=\"276\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/226/275/5cf727e328be88535773d5e84921f136.jpg\" /></p>\n\n<p>&nbsp;</p>',5,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231019150943','20231019150943',NULL,'175.112.112.60',-275,-275,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (284,210,0,'ko','N','성령강림주간 특별새벽기도 - 성령으로 살고 성령으로 행하라(갈5:16-26)','N','N','<p>.</p>',4,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231020110854','20231201140247',NULL,'175.112.112.60',-284,-381,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (289,165,0,'ko','N','2023년 11월- 하윤호 선교사 부부 기도편지 (캐나다)  - 테스트','N','N','<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">주 안에서 동역자님들께 문안드립니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">이곳은 산꼭대기에 눈이 쌓이고 겨울의 문턱에 들어선 듯합니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">동역자 여러분들의 건강과 평안을 위하여 기도합니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">9</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">월과&nbsp;</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">10</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">월에는 클럽데이</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">,&nbsp;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">캐나다 추수 감사절과 야외 연합 예배</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">,&nbsp;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">합창단 초청 예배 등 그동안 익숙하지 않은 사역의 시도들이 있었습니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(189, 61, 61);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">이런 활동들이 제자 삼고 일꾼을 배가하는 저희의 부르신 사역과 캠퍼스 선교의 비전 성취를 위한 자원 확보에 통로가 되기를 구하며</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">,&nbsp;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">또한 다민족</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">,&nbsp;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">다문화적 환경에 거주하는 디아스포라 이주자들과의 접촉을 넓히는 기회 문들이 되기를 바라며 기도하게 됩니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(21, 148, 21);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">&ldquo;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">내가 너를 내 손바닥에 새겼다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">&rdquo;(</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">사</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">49:16)</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">는 말씀으로 하나님의 영원한 사랑과 구속의 은총에 감사를 드리고</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">,&nbsp;</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">언제나 기도와 후원을 아끼지 않으시는 본국 선교부와 형제 자매님들께 감사를 전하며</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">, 11</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">월&nbsp;</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">12</span></span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">월 기도제목을 나눕니다</span></span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\"><span style=\"line-height: 29.8667px; color: rgb(0, 23, 247);\">.</span></span></span></span></span></span></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">캐나다 하윤호</span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">서난희 선교사</span></span></span></span></span></span><br />\n<br />\n<img alt=\"세계로선교회_선교현장.jpg\" data-file-srl=\"314\" editor_component=\"image_link\" src=\"https://enm0919.iwinv.net/./files/attach/images/165/289/68ae3a2060ec3527b29f5beba0da6115.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-indent: -15pt; text-align: justify;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 20.8px;\"><u><span lang=\"en-us\" style=\"line-height: 32px; font-size: 15pt;\" xml:lang=\"en-us\"><span style=\"line-height: 32px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 32px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 32px; letter-spacing: 0pt;\"><span style=\"line-height: 32px; font-weight: bold;\"><span style=\"line-height: 32px; color: rgb(255, 0, 0);\">11</span></span></span></span></span></span></u><u><span style=\"line-height: 32px; font-size: 15pt;\"><span style=\"line-height: 32px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 32px; font-weight: bold;\"><span style=\"line-height: 32px; color: rgb(255, 0, 0);\">월&nbsp;</span></span></span></span></u><u><span lang=\"en-us\" style=\"line-height: 32px; font-size: 15pt;\" xml:lang=\"en-us\"><span style=\"line-height: 32px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 32px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 32px; letter-spacing: 0pt;\"><span style=\"line-height: 32px; font-weight: bold;\"><span style=\"line-height: 32px; color: rgb(255, 0, 0);\">12</span></span></span></span></span></span></u><u><span style=\"line-height: 32px; font-size: 15pt;\"><span style=\"line-height: 32px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 32px; font-weight: bold;\"><span style=\"line-height: 32px; color: rgb(255, 0, 0);\">월 기도제목</span></span></span></span></u></span></span></span></span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-indent: -15pt;\"><span style=\"line-height: 20.8px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</span></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); text-indent: -15pt;\"><span style=\"line-height: 20.8px;\"><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">&nbsp; &nbsp; &nbsp;*2023년 사역 평가와&nbsp;</span></span></span><span lang=\"en-us\" style=\"line-height: 29.8667px; font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-family: &quot;맑은 고딕&quot;;\"><span style=\"line-height: 29.8667px; letter-spacing: 0pt;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">2024</span></span></span></span></span><span style=\"line-height: 29.8667px; font-size: 14pt;\"><span style=\"line-height: 29.8667px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"line-height: 29.8667px; font-weight: bold;\">년 사역 계획을 기도로 잘 준비 할 수 있도록</span></span></span></span></p>\n\n<ul style=\"margin-left: 1em; margin-right: 0px; padding-left: 25px; padding-right: 0px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">\n	<li><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">한 선교사 부부가 말씀과 기도로 거룩해지고</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">날마다 주님과의 교제로 기쁨을 누리게 하소서</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">겨울철 건강을 잘 유지하며</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">두 자녀가 학기말 시험 준비와 마무리를 잘 하고</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">영적으로 성장하고</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">개인적인 확신과 삶의 목적을 따라 장래를 인도해 주시도록</span></span></span></li>\n	<li><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">중국어</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">영어권 일꾼들이 세워지게 하소서</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">캠퍼스 선교의 부흥이 일어나게 하소서</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">겨울철 사역이 형통케 하소서</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">새 모임 장소가 디아스포라 선교와 제자훈련의 귀한 도구가 될 수 있도록</span></span></span></li>\n	<li><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">거주하는 멤버들</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">(R. D&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">형제와&nbsp;</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">R. M&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">자매</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">)</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">이 현지에서 믿음의 삶에 형통하고</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">온라인 교제를 통하여 필요를 채우고 격려할 수 있도록</span></span></span></li>\n	<li><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">사역에 헌신하여 수고하는 저희 교제 출신 일꾼들이 형통하게 사역을 잘 감당하고 필요를 따라 협력하며</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">주님의 나라 확장에 기여하도록</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">(</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">이란인 교회개척</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">-C</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">형제부부</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">노숙자 사역</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">-H</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">형제</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">)</span></span></span></span></span></li>\n	<li><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">가정의 연로하신 부모님들의 건강과 복음화</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">어린 자녀들의 건강과 적절한 신앙교육</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">환우들의 치유와 회복이 있게 하소서</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">학업</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">직장</span></span></span><span lang=\"en-us\" style=\"font-size: 14pt;\" xml:lang=\"en-us\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"letter-spacing: 0pt;\"><span style=\"font-weight: bold;\">,&nbsp;</span></span></span></span></span><span style=\"font-size: 14pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">사업장에 주님의 도우심과 형통의 은혜를 더 하여 주소서 아멘</span></span></span></li>\n</ul>\n\n<p>&nbsp;</p>',0,0,0,0,0,2,'sha256:0008192:HD8CtzdN6FKX:8/ZBVcKE2utEBZUJlXfU9KbuPof4oC7f','','','세계로선교회',0,'','','','N;','20231108101822','20231201104042',NULL,'58.224.126.102',-289,-365,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (292,200,0,'ko','N','선교의 현장 TEST','N','N','<p>선교의 현장 TEST</p>\n\n<p><img alt=\"sample.jpg\" data-file-srl=\"293\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/200/292/99f2c4ad76f9951b95d3120a2049efe4.jpg\" /></p>\n\n<p>&nbsp;</p>',0,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231108135901','20231108140257',NULL,'58.224.126.102',-292,-294,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (295,200,0,'ko','N','선교의 현장 TEST2','N','N','<p><img alt=\"sample2.jpg\" data-file-srl=\"296\" editor_component=\"image_link\" src=\"http://enm0919.iwinv.net/./files/attach/images/200/295/66aa15434245abec26b2da71e0f44506.jpg\" /></p>\n\n<p>&nbsp;</p>',0,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231108141528','20231108141528',NULL,'58.224.126.102',-295,-295,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (301,0,0,'ko','N','청빙공고','N','N','<p><img alt=\"01.JPG\" data-file-srl=\"302\" editor_component=\"image_link\" src=\"https://enm0919.iwinv.net/./files/attach/images//301/0e7d7826e5c5a32c56f58ee3a5f91e3f.JPG\" /></p>\r\n\r\n<p>&nbsp;</p>',0,0,0,0,0,1,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231115165122','20231115165122',NULL,'58.224.126.102',-301,-301,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (322,200,0,'ko','N','2019년 1월- 일본 후쿠오카 신년수양회','N','N','<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>2019년 후쿠오카 신년수양회를 은혜 가운데 잘 가졌습니다.</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>풍성한 은혜의 말씀으로 한해를 시작하게 하신 하나님을 찬양합니다. </strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>복 있는 사람의 첫째되는 말씀 묵상에 형제자매들이 더 많이 드려짐으로 올 한 해 풍성한 열매를 맺게 하소서</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>1. 올 해는 모든 형제자매들이 호세아 말씀처럼(6:3) 힘써 여호와를 알아가게 되도록.  말씀공부, 기도, 결단, 다른 사람에게 전함을 통해 여호와를 더 알아가게 되도록. 그리함으로 각자 한 단계씩 성장하게 되도록. </strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>2. 현재 교회에서 행하고 있는 서클 활동을 좀 더 효과적으로 행함으로 많은 사람들이 연결되게 하시고 또 이들과의 관계 개발이나 전도에 하나님이 함께하심으로 많은 구원의 열매를 맺을 수 있게 되도록. </strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>3. 중심되는 목자들이 주님이 기뻐하시는 자들로 성장하고 또 그기에 부합한 삶을 살아가게 되도록.</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>4. 강선교사 부부가 해야할 일을 정확히 알고 하나님의 뜻을 따라 맡겨진 일들을 감당해 나가도록. 세 아이가 하나님을 사랑하며 하나님중심으로 살아갈 수 있도록. Job 이나 결혼에도 주의 은혜를 입을 수 있도록 </strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><img alt=\"선교의현장_01.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/322/0ce31cd07f15f0389966f4213114a5ad.jpg\" /></p>\n\n<p><span style=\"color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">  &lt;말씀 전하시는 변형제님&gt;</span></p>\n\n<p> </p>\n\n<p> </p>\n\n<p><img alt=\"선교의현장_02.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/322/34d11687e44824daa5d8c2d3ae856ff0.jpg\" /></p>\n\n<p> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>',0,0,0,0,0,2,'sha256:0008192:MsFcAXxEw6l5:+1FXQhUiTsgnlK4dVsOnBpl3eV/V5Ffp','','','관리자테스트',0,'','',NULL,'N;','20231130095304','20231130095304',NULL,'58.224.126.102',-322,-322,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (320,177,0,'ko','N','청소년활동 프로그램 신청','N','N','청소년활동 프로그램 신청',3,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231122143900','20231122143900',NULL,'58.224.126.102',-320,-320,'N','N','PUBLIC','DENY');
INSERT INTO `xe_documents` VALUES (326,200,0,'ko','N','2018년 10월- 미주유럽 선교사수양회 (멕시코 칸쿤)','N','N','<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\">샬롬^^</span></span></strong></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\">미주유럽 부산</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">ENM</span><span style=\"line-height:32px;\">수양회를 통해</span></span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\">보고픈 선교사들 얼굴을 마주하며</span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\"><span style=\"line-height:32px;\">풍성한 교제</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">간증과 시간시간마다 말씀을 통해 새 힘을 얻게 하시고</span></span></span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\"><span style=\"line-height:32px;\">쉼과 재충전의 특별한 은혜를 허락하신 주님께 감사와 영광을 돌립니다</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\">미주유럽에서 선교사역을 감당하는</span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\">선교사들이 주님의 대사명에 지속적으로 쓰임받는 생애 되도록 기도합니다</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\"> </span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><strong><span style=\"line-height:20.8px;color:rgb(41,128,185);\"><span style=\"line-height:32px;font-size:20px;\">  ---------------------------------</span></span></strong></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;color:rgb(211,84,0);\"><span style=\"line-height:32px;\">미주유럽 부산 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">ENM </span><span style=\"line-height:32px;\">선교사 수양회 기도제목</span></span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\">    <span style=\"line-height:32px;\">  </span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">♣ </span><span style=\"line-height:32px;\">주제 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">: </span><span style=\"line-height:32px;\">회복 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">(</span><span style=\"line-height:32px;\">마</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">28:18~20, </span><span style=\"line-height:32px;\">시</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">1:3)</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">♣ </span><span style=\"line-height:32px;\">강사 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">: </span><span style=\"line-height:32px;\">변형제님</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">,</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">♣ </span><span style=\"line-height:32px;\">일시 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">: 2018</span><span style=\"line-height:32px;\">년 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">10</span><span style=\"line-height:32px;\">월 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">1</span><span style=\"line-height:32px;\">일</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">(</span><span style=\"line-height:32px;\">월</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">)~5</span><span style=\"line-height:32px;\">일</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">(</span><span style=\"line-height:32px;\">금</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">)</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">♣ </span><span style=\"line-height:32px;\">장소 </span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">: </span><span style=\"line-height:32px;\">멕시코 칸쿤</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> <span style=\"line-height:32px;\"><strong><span style=\"line-height:32px;color:rgb(211,84,0);\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">[</span><span style=\"line-height:32px;\">기도 제목</span></span></strong><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\"><strong><span style=\"line-height:32px;color:rgb(211,84,0);\">] <span style=\"line-height:32px;\">   </span></span></strong></span></span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">1. </span><span style=\"line-height:32px;\">목표 및 주제</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">수양회를 통해 미주에서 사역하는 선교사 가정들이 하나님의 사랑 안에 하나 되게 하시고</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">서로 사랑하며 아름다운 팀웍을 이루어 주신 비전과 사명을 힘있게 이루어가게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">참석자들에게 회복과 쉼</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">재충전의 기회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">2. </span><span style=\"line-height:32px;\">강사님</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\">변형제님에게 육체적인 강건함을 주시고</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">영적인 충만함 가운데 말씀을 준비하며 선포할 때</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">참석자들의 실제적인 필요가 채워지는 수양회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">3. </span><span style=\"line-height:32px;\">참석자</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">수련회를 통하여 참석하는 모든 선교사들께 영적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">정서적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">육체적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">쉼과 회복</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">선교사들간에 풍성한 교제의 기회가 되며</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">믿음과 비전이 새로워지는 기회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">수양회 참석기간 중에 가정과 사역</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">사업을 지켜 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">③ </span><span style=\"line-height:32px;\">참석하는 선교사가정의 물질적인 필요들을 채워 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">4. </span><span style=\"line-height:32px;\">기타</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">섬기는 자들에게 마음의 성실함을 주셔서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">전체의 필요들을 탁월하게 잘 섬기게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">각 사역지에서 오고 가며</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">체류하는 모든 여정 가운데 안전과 건강을 지켜 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> <img alt=\"2018_01.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/b74dbff9c49a5ac38922cb3b37c023e4.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_02.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/daf08b0d8c0ba584c77eb0f0b9367f52.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_03.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/2671fd6856196d6870547b29a1863a45.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_04.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/ae064514dfc797c75c5a4306bbaf3b6b.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_05.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/ea5171050a006f0f45f80a04b14c6df9.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_06.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/ba47552a64bf02e0493ea050bda51c80.jpg\" /></p>\n\n<p> </p>\n\n<p><img alt=\"2018_07.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/326/a7dc1b38a5d2f55e8c8d2c2a8598914d.jpg\" /></p>\n\n<p> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>',0,0,0,0,0,7,'sha256:0008192:vc3QGVhb6xaJ:WORgHZ2K7OPhsbm2Q3bUuqRVsX2t1FO0','','','관리자테스트',0,'','',NULL,'N;','20231130095606','20231130095606',NULL,'58.224.126.102',-326,-326,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (336,200,0,'ko','N','목창명 선교사 선교간증2','N','N','<p>이미지 테스트</p>\n\n<p><img alt=\"2018_05.jpg\" src=\"https://enm0919.iwinv.net/./files/attach/images/200/336/f3d23e35cc91f22a8c51cde02ce50bda.jpg\" /></p>\n\n<p> </p>\n\n<p> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\"><strong><span style=\"line-height:32px;color:rgb(211,84,0);\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">[</span><span style=\"line-height:32px;\">기도 제목</span></span></strong><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\"><strong><span style=\"line-height:32px;color:rgb(211,84,0);\">] <span style=\"line-height:32px;\">   </span></span></strong></span></span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">1. </span><span style=\"line-height:32px;\">목표 및 주제</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">수양회를 통해 미주에서 사역하는 선교사 가정들이 하나님의 사랑 안에 하나 되게 하시고</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">서로 사랑하며 아름다운 팀웍을 이루어 주신 비전과 사명을 힘있게 이루어가게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">참석자들에게 회복과 쉼</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">재충전의 기회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">2. </span><span style=\"line-height:32px;\">강사님</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;\">변형제님에게 육체적인 강건함을 주시고</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">영적인 충만함 가운데 말씀을 준비하며 선포할 때</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">참석자들의 실제적인 필요가 채워지는 수양회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">3. </span><span style=\"line-height:32px;\">참석자</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">수련회를 통하여 참석하는 모든 선교사들께 영적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">정서적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">육체적</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">쉼과 회복</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">선교사들간에 풍성한 교제의 기회가 되며</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">믿음과 비전이 새로워지는 기회가 되게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">수양회 참석기간 중에 가정과 사역</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">사업을 지켜 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">③ </span><span style=\"line-height:32px;\">참석하는 선교사가정의 물질적인 필요들을 채워 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"> </span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">4. </span><span style=\"line-height:32px;\">기타</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">① </span><span style=\"line-height:32px;\">섬기는 자들에게 마음의 성실함을 주셔서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">전체의 필요들을 탁월하게 잘 섬기게 하소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:32px;font-size:20px;\"><span style=\"line-height:32px;letter-spacing:0pt;\">② </span><span style=\"line-height:32px;\">각 사역지에서 오고 가며</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">, </span><span style=\"line-height:32px;\">체류하는 모든 여정 가운데 안전과 건강을 지켜 주소서</span><span lang=\"en-us\" style=\"line-height:32px;letter-spacing:0pt;font-family:\'함초롬바탕\';\">.</span></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"> </p>',0,0,0,0,0,1,'sha256:0008192:bl3pvNOaCyra:28cIZIyahMAAbqcUARM4FgpvlB+L5VvQ','','','관리자테스트',0,'','','','N;','20231130114720','20231130115005',NULL,'58.224.126.102',-336,-347,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (349,287,0,'ko','N','테스트_01','N','N','<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>2019년&nbsp;후쿠오카 신년수양회를 은혜 가운데 잘 가졌습니다.</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>풍성한 은혜의 말씀으로 한해를&nbsp;시작하게 하신 하나님을 찬양합니다.&nbsp;</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:28.8px;font-family:Tahoma, Geneva, sans-serif;font-size:18px;color:rgb(192,57,43);letter-spacing:0pt;\"><strong>복 있는 사람의 첫째되는&nbsp;말씀 묵상에 형제자매들이 더 많이 드려짐으로 올 한 해 풍성한 열매를 맺게 하소서</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">&nbsp;</p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">&nbsp;</p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>1.&nbsp;올 해는 모든 형제자매들이 호세아 말씀처럼(6:3) 힘써 여호와를 알아가게 되도록.&nbsp; 말씀공부, 기도, 결단, 다른 사람에게 전함을 통해 여호와를 더 알아가게 되도록. 그리함으로 각자 한 단계씩 성장하게 되도록.&nbsp;</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">&nbsp;</p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>2. 현재 교회에서 행하고 있는 서클 활동을 좀 더 효과적으로 행함으로 많은 사람들이 연결되게 하시고 또 이들과의 관계 개발이나 전도에 하나님이 함께하심으로 많은 구원의 열매를 맺을 수 있게 되도록.&nbsp;</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">&nbsp;</p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>3.&nbsp;중심되는 목자들이 주님이 기뻐하시는 자들로 성장하고 또 그기에 부합한 삶을 살아가게 되도록.</strong></span></p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\">&nbsp;</p>\n\n<p style=\"line-height:20.8px;color:rgb(68,68,68);font-family:\'Noto Sans KR\', \'Nanum Gothic\', \'Malgun Gothic\', \'돋움\', sans-serif;font-size:13px;background-color:rgb(255,255,255);\"><span style=\"line-height:25.6px;color:rgb(0,51,204);font-family:Arial, Helvetica, sans-serif;font-size:16px;letter-spacing:0pt;\"><strong>4. 강선교사 부부가 해야할 일을 정확히 알고 하나님의 뜻을 따라 맡겨진 일들을 감당해 나가도록. 세 아이가 하나님을 사랑하며 하나님중심으로 살아갈 수 있도록.&nbsp;Job 이나 결혼에도 주의 은혜를 입을 수 있도록&nbsp;</strong></span></p>',0,0,0,0,0,0,'sha256:0008192:xaKkpVhNQGhY:VBEQZ8W+v5kaku/Zppj0FcFGlr+YBP3Q','','','관리자테스트',0,'','','','N;','20231130115231','20231201104555',NULL,'58.224.126.102',-349,-366,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (362,200,0,'ko','N','test','N','N','<p>test</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231201102225','20231201112021',NULL,'58.224.126.102',-362,-368,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (369,287,0,'ko','N','아프리카 6개국 순방 (2010년 - 코트디부아르)','N','N','<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><img alt=\"fruits of Ivorycoast.JPG\" height=\"1920\" src=\"http://busanenm.or.kr/files/attach/images/195/263/546/23e65d8fc7a134e0569b16a6c231691b.JPG\" style=\"vertical-align: middle;\" width=\"2560\" />&nbsp;<img alt=\"CIMG0126.JPG\" height=\"1536\" src=\"http://busanenm.or.kr/files/attach/images/195/263/546/9666105d77d370d772af4e5ce2040f8e.JPG\" style=\"vertical-align: middle;\" width=\"2048\" />&nbsp;<img alt=\"코트디부아르의 열매들.jpg\" height=\"1536\" src=\"http://busanenm.or.kr/files/attach/images/195/263/546/61ee8c7f48dbc400593a5e348fae1499.jpg\" style=\"vertical-align: middle;\" width=\"2048\" />&nbsp;<img alt=\"코트디부아르의 열매들1.jpg\" height=\"480\" src=\"http://busanenm.or.kr/files/attach/images/195/263/546/f9f2eebbf839954914035d8d6d696fe1.jpg\" style=\"vertical-align: middle;\" width=\"640\" /></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;</p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">코트디부아르에서는 장진호, 전명숙 선교사 부부가 섬기고 있습니다.</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231201114244','20231201114244',NULL,'58.224.126.102',-369,-369,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (371,287,0,'ko','N','아프리카 6개국 순방 (2010년 - 가나)','N','N','<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><img alt=\"fruits of Ghana.jpg\" height=\"1596\" src=\"http://busanenm.or.kr/files/attach/images/195/260/546/d9553c14e3c11843467309f61d92b95a.jpg\" style=\"vertical-align: middle;\" width=\"2496\" />&nbsp;<img alt=\"fruit of Ghana(2).jpg\" height=\"583\" src=\"http://busanenm.or.kr/files/attach/images/195/260/546/7737b3cfb2b4cc329130735b81fb0232.jpg\" style=\"vertical-align: middle;\" width=\"818\" /></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;</p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">아프리카 가나에는 목창명, 신종선 선교사부부가 섬기고 있습니다.</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231201114800','20231201114800',NULL,'58.224.126.102',-371,-371,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (372,287,0,'ko','N','아프리카 6개국 순방 (2010년 - 부르키나파소)','N','N','<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><img alt=\"baptism.jpg\" height=\"875\" src=\"http://busanenm.or.kr/files/attach/images/195/256/546/7f02edf5107ce93f38eddcf6d479b2d7.jpg\" style=\"vertical-align: middle;\" width=\"595\" />&nbsp;<img alt=\"fruits of Burkinafaso.jpg\" height=\"599\" src=\"http://busanenm.or.kr/files/attach/images/195/256/546/f88a5794897ad4f064a23c9dac81d0d1.jpg\" style=\"vertical-align: middle;\" width=\"883\" />&nbsp;<img alt=\"withAhnfamily.jpg\" height=\"535\" src=\"http://busanenm.or.kr/files/attach/images/195/256/546/b713c69394ef2864041078b5437a7149.jpg\" style=\"vertical-align: middle;\" width=\"800\" /></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;</p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">아프리카 부르키나파소에는 5가정이 파송되어 팀웍하고 있습니다.<br />\n<br />\n위에서부터<br />\n* 세례식 장면<br />\n* 부르키나파소의 열매들<br />\n* 안성욱 선교사 가정과 함께</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231201114825','20231201114825',NULL,'58.224.126.102',-372,-372,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (373,287,0,'ko','N','현지인선교사 파송식(2005년)','N','N','<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><img alt=\"10.jpg\" height=\"1279\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/c6c4f2cde592e58bc8fb3d70d94bf98f.jpg\" style=\"vertical-align: middle;\" width=\"1860\" />&nbsp;<img alt=\"9.jpg\" height=\"1287\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/06142e3519a915697a92b8fb2f0da455.jpg\" style=\"vertical-align: middle;\" width=\"1873\" />&nbsp;<img alt=\"2.jpg\" height=\"1309\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/4b04c3e8338784a3fb5cf3561f090bc6.jpg\" style=\"vertical-align: middle;\" width=\"1857\" />&nbsp;<img alt=\"6.jpg\" height=\"1278\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/0c900f06c26dd74f167a759f741f813b.jpg\" style=\"vertical-align: middle;\" width=\"1860\" />&nbsp;<img alt=\"5.jpg\" height=\"1299\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/1e4fead23eda167a4cb6c2789f7536eb.jpg\" style=\"vertical-align: middle;\" width=\"1845\" />&nbsp;<img alt=\"3.jpg\" height=\"1268\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/0ba6c60fd00c68d0d9d6c30369871824.jpg\" style=\"vertical-align: middle;\" width=\"1907\" />&nbsp;<img alt=\"8.jpg\" height=\"1278\" src=\"http://busanenm.or.kr/files/attach/images/195/248/546/755a20e7c0be53f1efdf51ecb35ee4fc.jpg\" style=\"vertical-align: middle;\" width=\"1863\" /></p>\n\n<p style=\"line-height: 20.8px; color: rgb(68, 68, 68); font-family: &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, 돋움, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">현지인 선교사 파송식</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','','','N;','20231201114908','20231201114908',NULL,'58.224.126.102',-374,-375,'N','N','PUBLIC','ALLOW');
INSERT INTO `xe_documents` VALUES (382,212,0,'ko','N','test','N','N','<p>test</p>',0,0,0,0,0,0,NULL,'admin','admin','최고관리자',4,'web@doweb.kr','',NULL,'N;','20231201140804','20231201140804',NULL,'58.224.126.102',-382,-382,'N','N','PUBLIC','ALLOW');
/*!40000 ALTER TABLE `xe_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_editor_autosave`
--

DROP TABLE IF EXISTS `xe_editor_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_editor_autosave` (
  `member_srl` bigint(11) DEFAULT 0,
  `ipaddress` varchar(128) DEFAULT NULL,
  `module_srl` bigint(11) DEFAULT NULL,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `content` longtext NOT NULL,
  `certify_key` varchar(100) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_certify_key` (`certify_key`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_editor_autosave`
--

LOCK TABLES `xe_editor_autosave` WRITE;
/*!40000 ALTER TABLE `xe_editor_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_editor_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_editor_components`
--

DROP TABLE IF EXISTS `xe_editor_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_editor_components` (
  `component_name` varchar(250) NOT NULL,
  `enabled` char(1) NOT NULL DEFAULT 'N',
  `extra_vars` text DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  PRIMARY KEY (`component_name`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_editor_components`
--

LOCK TABLES `xe_editor_components` WRITE;
/*!40000 ALTER TABLE `xe_editor_components` DISABLE KEYS */;
INSERT INTO `xe_editor_components` VALUES ('colorpicker_text','Y',NULL,44);
INSERT INTO `xe_editor_components` VALUES ('colorpicker_bg','Y',NULL,46);
INSERT INTO `xe_editor_components` VALUES ('emoticon','Y',NULL,30);
INSERT INTO `xe_editor_components` VALUES ('url_link','Y',NULL,50);
INSERT INTO `xe_editor_components` VALUES ('image_link','Y',NULL,31);
INSERT INTO `xe_editor_components` VALUES ('multimedia_link','Y',NULL,54);
INSERT INTO `xe_editor_components` VALUES ('quotation','Y',NULL,56);
INSERT INTO `xe_editor_components` VALUES ('table_maker','Y',NULL,58);
INSERT INTO `xe_editor_components` VALUES ('poll_maker','N',NULL,32);
INSERT INTO `xe_editor_components` VALUES ('image_gallery','Y',NULL,33);
/*!40000 ALTER TABLE `xe_editor_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_editor_components_site`
--

DROP TABLE IF EXISTS `xe_editor_components_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_editor_components_site` (
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `component_name` varchar(250) NOT NULL,
  `enabled` char(1) NOT NULL DEFAULT 'N',
  `extra_vars` text DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  UNIQUE KEY `unique_component_site` (`site_srl`,`component_name`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_editor_components_site`
--

LOCK TABLES `xe_editor_components_site` WRITE;
/*!40000 ALTER TABLE `xe_editor_components_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_editor_components_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_files`
--

DROP TABLE IF EXISTS `xe_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_files` (
  `file_srl` bigint(11) NOT NULL,
  `upload_target_srl` bigint(11) NOT NULL DEFAULT 0,
  `upload_target_type` char(3) DEFAULT NULL,
  `sid` varchar(60) DEFAULT NULL,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `member_srl` bigint(11) NOT NULL,
  `download_count` bigint(11) NOT NULL DEFAULT 0,
  `direct_download` char(1) NOT NULL DEFAULT 'N',
  `source_filename` varchar(250) DEFAULT NULL,
  `uploaded_filename` varchar(250) DEFAULT NULL,
  `file_size` bigint(11) NOT NULL DEFAULT 0,
  `comment` varchar(250) DEFAULT NULL,
  `isvalid` char(1) DEFAULT 'N',
  `cover_image` char(1) NOT NULL DEFAULT 'N',
  `regdate` varchar(14) DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  PRIMARY KEY (`file_srl`),
  KEY `idx_upload_target_srl` (`upload_target_srl`),
  KEY `idx_upload_target_type` (`upload_target_type`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_download_count` (`download_count`),
  KEY `idx_file_size` (`file_size`),
  KEY `idx_is_valid` (`isvalid`),
  KEY `idx_list_order` (`cover_image`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_ipaddress` (`ipaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_files`
--

LOCK TABLES `xe_files` WRITE;
/*!40000 ALTER TABLE `xe_files` DISABLE KEYS */;
INSERT INTO `xe_files` VALUES (250,234,NULL,'7e00b44bf2e94ec5badd00f078aaec29',216,4,0,'Y','cc5423e70301af55c0ef3cbd9cac1f70.jpg','./files/attach/images/216/234/a8bd8892d816371051bc1ad4647d9504.jpg',73702,NULL,'Y','N','20231006162000','124.111.143.85');
INSERT INTO `xe_files` VALUES (238,236,NULL,'16d27670281196c505aaa725312533d6',216,4,0,'Y','9cbc94dc46d0b0eb3159b4379a2c6958.jpg','./files/attach/images/216/236/ba50fd1338acdecaa322e440f56cc5d0.jpg',5690782,NULL,'N','N','20231005144248','124.111.143.85');
INSERT INTO `xe_files` VALUES (240,239,NULL,'fd6b76c83a9d8aa91da96c00d4a2a826',216,4,0,'Y','9cbc94dc46d0b0eb3159b4379a2c6958.jpg','./files/attach/images/216/239/0ce6b9d9a9d86091c98668abffb1c4dc.jpg',5690782,NULL,'N','N','20231005144315','124.111.143.85');
INSERT INTO `xe_files` VALUES (254,241,NULL,'b9c7676d0496709a351484d528202dec',216,4,0,'Y','6ffb94ecb4047d5de1712079f2fc4a1d.jpg','./files/attach/images/216/241/5c01cfb1ecb4e1effc8e2895c152f712.jpg',84104,NULL,'Y','N','20231006162054','124.111.143.85');
INSERT INTO `xe_files` VALUES (252,248,NULL,'e19af5f3a3eb81bc49e93df1973ad4fa',216,4,0,'Y','9cbc94dc46d0b0eb3159b4379a2c6958.jpg','./files/attach/images/216/248/fc31d360802097e007d3dee42d9a6a1c.jpg',121521,NULL,'Y','N','20231006162023','124.111.143.85');
INSERT INTO `xe_files` VALUES (261,260,NULL,'27b7a1e2006957dfadb76ea9335352a6',226,4,0,'Y','Group 14.jpg','./files/attach/images/226/260/dee9aa92fe76993381da8f722624d4e0.jpg',60437,NULL,'Y','N','20231019145330','175.112.112.60');
INSERT INTO `xe_files` VALUES (262,260,NULL,'ce87bd2d4b90ba36089f628f6e1e8378',226,4,0,'Y','8d9ab34fdb075c29879beb27b673f3a2.jpg','./files/attach/images/226/260/332e2528d39470352a72033d1c034683.jpg',67421,NULL,'Y','N','20231019145937','175.112.112.60');
INSERT INTO `xe_files` VALUES (265,264,NULL,'a6940d2a2f9ca45327b0a65854ded8e8',226,4,0,'Y','7f06736680dd31cf2ba8132aca992813.jpg','./files/attach/images/226/264/27635d137ce8bd9d568416363608ab79.jpg',134281,NULL,'Y','N','20231019150552','175.112.112.60');
INSERT INTO `xe_files` VALUES (267,266,NULL,'5edc4ebb6310e6034fd033188ea1c0ee',226,4,0,'Y','cc932a7e82d8f1cd7ea4d0b2f6e14f95.jpg','./files/attach/images/226/266/96502d2c6c6698b9b26ee71ebfeee789.jpg',93790,NULL,'Y','N','20231019150639','175.112.112.60');
INSERT INTO `xe_files` VALUES (272,271,NULL,'427ba9fe031ffec5522056aeea1305f6',226,4,0,'Y','1c8531ef01fe76df4b75ff56b63cfd2f.jpg','./files/attach/images/226/271/53eacb08b6872b02ec5512fa20b8d48c.jpg',97094,NULL,'Y','N','20231019150804','175.112.112.60');
INSERT INTO `xe_files` VALUES (274,273,NULL,'6e2a12602e925f7e8da4379b65dc5a62',226,4,0,'Y','48403a6fe0d949c43766d02dd496bc8e.jpg','./files/attach/images/226/273/1c248403d62a5f2c6d6651d7ae8fae0a.jpg',90698,NULL,'Y','N','20231019150844','175.112.112.60');
INSERT INTO `xe_files` VALUES (276,275,NULL,'b53cb9f730867101125e58b2d74a23c0',226,4,0,'Y','6f93e4e2784c6ce8428f48a0f232dce4.jpg','./files/attach/images/226/275/5cf727e328be88535773d5e84921f136.jpg',89823,NULL,'Y','N','20231019150936','175.112.112.60');
INSERT INTO `xe_files` VALUES (290,289,NULL,'9782de3d535672e232f9e41cb7ef58bd',165,0,0,'Y','CK_tc02360000727_l.jpg','./files/attach/images/165/289/75c2cb14884c037f8b9f96fe47891e18.jpg',252527,NULL,'Y','N','20231108101805','58.224.126.102');
INSERT INTO `xe_files` VALUES (293,292,NULL,'4f37b7565e5e46799ad5266acbcee406',200,4,0,'Y','sample.jpg','./files/attach/images/200/292/99f2c4ad76f9951b95d3120a2049efe4.jpg',69442,NULL,'Y','N','20231108140249','58.224.126.102');
INSERT INTO `xe_files` VALUES (296,295,NULL,'dad7007cf5628bb83c9a368ce0a3a7ae',200,4,0,'Y','sample2.jpg','./files/attach/images/200/295/66aa15434245abec26b2da71e0f44506.jpg',73190,NULL,'Y','N','20231108140416','58.224.126.102');
INSERT INTO `xe_files` VALUES (302,301,NULL,'75b5e596e9c0ac7f577cd8cc00d27591',0,4,0,'Y','01.JPG','./files/attach/images//301/0e7d7826e5c5a32c56f58ee3a5f91e3f.JPG',83420,NULL,'Y','N','20231115165024','58.224.126.102');
INSERT INTO `xe_files` VALUES (309,306,NULL,'dbbb52bb1055f0c9ddccf67e3fb9fd7d',200,0,0,'Y','세계로선교회_선교현장.jpg','./files/attach/images/200/306/244774b8e167d7d45239bfb211c3ce58.jpg',70635,NULL,'N','N','20231120180911','58.224.126.102');
INSERT INTO `xe_files` VALUES (310,306,NULL,'2484e8e6427f410e9f0f926bafd9fcd3',200,0,0,'Y','세계로선교회_선교현장02.jpg','./files/attach/images/200/306/50ee01845ca0bff5e5fe2939e9ff9328.jpg',92666,NULL,'N','N','20231120181153','58.224.126.102');
INSERT INTO `xe_files` VALUES (314,289,NULL,'d1936723edf372fa95e4fec40bd40e50',165,4,0,'Y','세계로선교회_선교현장.jpg','./files/attach/images/165/289/68ae3a2060ec3527b29f5beba0da6115.jpg',70635,NULL,'Y','N','20231121110557','58.224.126.102');
INSERT INTO `xe_files` VALUES (324,322,NULL,'9977808560378c11b453f0864b117e9d',200,0,0,'Y','선교의현장_02.jpg','./files/attach/images/200/322/34d11687e44824daa5d8c2d3ae856ff0.jpg',74386,NULL,'Y','N','20231130095224','58.224.126.102');
INSERT INTO `xe_files` VALUES (323,322,NULL,'2900ae3d7f8005872093ca007a7eef1b',200,0,0,'Y','선교의현장_01.jpg','./files/attach/images/200/322/0ce31cd07f15f0389966f4213114a5ad.jpg',82334,NULL,'Y','N','20231130095205','58.224.126.102');
INSERT INTO `xe_files` VALUES (327,326,NULL,'c8e8515d42624687f91f6c0496f52634',200,0,0,'Y','2018_01.jpg','./files/attach/images/200/326/b74dbff9c49a5ac38922cb3b37c023e4.jpg',69763,NULL,'Y','N','20231130095539','58.224.126.102');
INSERT INTO `xe_files` VALUES (328,326,NULL,'9613ffeb0ca98b30b50c3b86d4b9e0b9',200,0,0,'Y','2018_02.jpg','./files/attach/images/200/326/daf08b0d8c0ba584c77eb0f0b9367f52.jpg',206185,NULL,'Y','N','20231130095543','58.224.126.102');
INSERT INTO `xe_files` VALUES (329,326,NULL,'1c94a5ac16b788701324e40504a50521',200,0,0,'Y','2018_03.jpg','./files/attach/images/200/326/2671fd6856196d6870547b29a1863a45.jpg',232367,NULL,'Y','N','20231130095544','58.224.126.102');
INSERT INTO `xe_files` VALUES (330,326,NULL,'ca36405627f32b495ed0f260816365e9',200,0,0,'Y','2018_04.jpg','./files/attach/images/200/326/ae064514dfc797c75c5a4306bbaf3b6b.jpg',377885,NULL,'Y','N','20231130095548','58.224.126.102');
INSERT INTO `xe_files` VALUES (331,326,NULL,'4d02b8b58f4a7ef008e611d84bb1ede6',200,0,0,'Y','2018_05.jpg','./files/attach/images/200/326/ea5171050a006f0f45f80a04b14c6df9.jpg',381066,NULL,'Y','N','20231130095550','58.224.126.102');
INSERT INTO `xe_files` VALUES (332,326,NULL,'9cc5255e277a432cf77da52d41fdbcf2',200,0,0,'Y','2018_06.jpg','./files/attach/images/200/326/ba47552a64bf02e0493ea050bda51c80.jpg',305988,NULL,'Y','N','20231130095552','58.224.126.102');
INSERT INTO `xe_files` VALUES (333,326,NULL,'86a2d8186935191078af2ce4c19a5f00',200,0,0,'Y','2018_07.jpg','./files/attach/images/200/326/a7dc1b38a5d2f55e8c8d2c2a8598914d.jpg',287569,NULL,'Y','N','20231130095555','58.224.126.102');
INSERT INTO `xe_files` VALUES (345,336,NULL,'f0cb12b7bd8fc0d1eea9732a20ced471',200,0,0,'Y','2018_05.jpg','./files/attach/images/200/336/f3d23e35cc91f22a8c51cde02ce50bda.jpg',381066,NULL,'Y','Y','20231130114947','58.224.126.102');
/*!40000 ALTER TABLE `xe_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_imageexif`
--

DROP TABLE IF EXISTS `xe_imageexif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_imageexif` (
  `file_srl` bigint(11) NOT NULL,
  `target_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `exif` text DEFAULT NULL,
  `gps` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`file_srl`),
  KEY `idx_target_srl` (`target_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_imageexif`
--

LOCK TABLES `xe_imageexif` WRITE;
/*!40000 ALTER TABLE `xe_imageexif` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_imageexif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_lang`
--

DROP TABLE IF EXISTS `xe_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_lang` (
  `site_srl` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `value` text DEFAULT NULL,
  KEY `idx_lang` (`site_srl`,`name`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_lang`
--

LOCK TABLES `xe_lang` WRITE;
/*!40000 ALTER TABLE `xe_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_layouts`
--

DROP TABLE IF EXISTS `xe_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_layouts` (
  `layout_srl` bigint(12) NOT NULL,
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `layout` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `extra_vars` text DEFAULT NULL,
  `layout_path` varchar(250) DEFAULT NULL,
  `module_srl` bigint(12) DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  `layout_type` char(1) DEFAULT 'P',
  PRIMARY KEY (`layout_srl`),
  KEY `menu_site_srl` (`site_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_layouts`
--

LOCK TABLES `xe_layouts` WRITE;
/*!40000 ALTER TABLE `xe_layouts` DISABLE KEYS */;
INSERT INTO `xe_layouts` VALUES (94,0,'xedition','XEDITION','O:8:\"stdClass\":3:{s:3:\"GNB\";i:70;s:3:\"UNB\";i:81;s:3:\"FNB\";i:84;}',NULL,0,'20230919112544','P');
INSERT INTO `xe_layouts` VALUES (95,0,'default','welcome_mobile_layout','O:8:\"stdClass\":4:{s:3:\"GNB\";i:70;s:3:\"UNB\";i:81;s:3:\"FNB\";i:84;s:9:\"main_menu\";i:70;}',NULL,0,'20230919112544','M');
INSERT INTO `xe_layouts` VALUES (138,0,'yj','세계로선교회','O:8:\"stdClass\":8:{s:16:\"error_return_url\";s:1:\"/\";s:7:\"ruleset\";s:12:\"updateLayout\";s:12:\"_layout_type\";s:1:\"P\";s:15:\"xe_validator_id\";s:37:\"modules/layout/tpl/lyaout_info_view/1\";s:9:\"slide_num\";s:1:\"6\";s:11:\"slide_num_m\";s:1:\"6\";s:9:\"main_menu\";s:3:\"151\";s:14:\"menu_name_list\";a:1:{i:151;s:25:\"세계로선교회 메뉴\";}}',NULL,0,'20230919112827','P');
INSERT INTO `xe_layouts` VALUES (225,0,'enm','세계로선교회','O:8:\"stdClass\":8:{s:16:\"error_return_url\";s:1:\"/\";s:7:\"ruleset\";s:12:\"updateLayout\";s:12:\"_layout_type\";s:1:\"P\";s:15:\"xe_validator_id\";s:37:\"modules/layout/tpl/lyaout_info_view/1\";s:9:\"slide_num\";s:1:\"6\";s:11:\"slide_num_m\";s:1:\"6\";s:9:\"main_menu\";s:3:\"151\";s:14:\"menu_name_list\";a:1:{i:151;s:25:\"세계로선교회 메뉴\";}}',NULL,0,'20230925145948','P');
INSERT INTO `xe_layouts` VALUES (297,0,'colorCode','XE Color Code 모바일 레이아웃',NULL,NULL,0,'20231115103623','M');
INSERT INTO `xe_layouts` VALUES (298,0,'simpleGray','XE 심플 그레이 레이아웃',NULL,NULL,0,'20231115103623','M');
/*!40000 ALTER TABLE `xe_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member`
--

DROP TABLE IF EXISTS `xe_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member` (
  `member_srl` bigint(11) NOT NULL,
  `user_id` varchar(80) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email_id` varchar(80) NOT NULL,
  `email_host` varchar(160) DEFAULT NULL,
  `user_name` varchar(40) NOT NULL,
  `nick_name` varchar(40) NOT NULL,
  `find_account_question` bigint(11) DEFAULT NULL,
  `find_account_answer` varchar(250) DEFAULT NULL,
  `homepage` varchar(250) DEFAULT NULL,
  `blog` varchar(250) DEFAULT NULL,
  `birthday` char(8) DEFAULT NULL,
  `allow_mailing` char(1) NOT NULL DEFAULT 'Y',
  `allow_message` char(1) NOT NULL DEFAULT 'Y',
  `denied` char(1) DEFAULT 'N',
  `limit_date` varchar(14) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `last_login` varchar(14) DEFAULT NULL,
  `change_password_date` varchar(14) DEFAULT NULL,
  `is_admin` char(1) DEFAULT 'N',
  `description` text DEFAULT NULL,
  `extra_vars` text DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  PRIMARY KEY (`member_srl`),
  UNIQUE KEY `unique_user_id` (`user_id`),
  UNIQUE KEY `unique_email_address` (`email_address`),
  UNIQUE KEY `unique_nick_name` (`nick_name`),
  KEY `idx_email_host` (`email_host`),
  KEY `idx_allow_mailing` (`allow_mailing`),
  KEY `idx_is_denied` (`denied`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_last_login` (`last_login`),
  KEY `idx_is_admin` (`is_admin`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member`
--

LOCK TABLES `xe_member` WRITE;
/*!40000 ALTER TABLE `xe_member` DISABLE KEYS */;
INSERT INTO `xe_member` VALUES (4,'admin','web@doweb.kr','sha256:0008192:HAoKdDiD2qhb:DiEKDYL3+3/hystDdks6EmR9zJL6pc5Z','web','doweb.kr','admin','최고관리자',NULL,'sha256:0008192:jDl4GUlsrHGH:NfY9lVcAqS3cxIxnyxn7DpGsVxfrIlhH','','','','N','F','N','','20230919112543','20231201135157','20230919112543','Y','','O:8:\"stdClass\":1:{s:15:\"xe_validator_id\";s:20:\"modules/member/tpl/1\";}',-4);
/*!40000 ALTER TABLE `xe_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_auth_mail`
--

DROP TABLE IF EXISTS `xe_member_auth_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_auth_mail` (
  `auth_key` varchar(60) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `user_id` varchar(80) NOT NULL,
  `new_password` varchar(80) NOT NULL,
  `is_register` char(1) DEFAULT 'N',
  `regdate` varchar(14) DEFAULT NULL,
  UNIQUE KEY `unique_key` (`auth_key`,`member_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_auth_mail`
--

LOCK TABLES `xe_member_auth_mail` WRITE;
/*!40000 ALTER TABLE `xe_member_auth_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_auth_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_autologin`
--

DROP TABLE IF EXISTS `xe_member_autologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_autologin` (
  `autologin_key` varchar(80) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  UNIQUE KEY `unique_key` (`autologin_key`,`member_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_autologin`
--

LOCK TABLES `xe_member_autologin` WRITE;
/*!40000 ALTER TABLE `xe_member_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_autologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_count_history`
--

DROP TABLE IF EXISTS `xe_member_count_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_count_history` (
  `member_srl` bigint(11) NOT NULL,
  `content` longtext NOT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`member_srl`),
  KEY `idx_last_update` (`last_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_count_history`
--

LOCK TABLES `xe_member_count_history` WRITE;
/*!40000 ALTER TABLE `xe_member_count_history` DISABLE KEYS */;
INSERT INTO `xe_member_count_history` VALUES (4,'a:5:{i:0;a:3:{i:0;s:14:\"175.112.112.60\";i:1;s:32:\"잘못된 비밀번호입니다.\";i:2;i:1697684814;}i:1;a:3:{i:0;s:14:\"175.112.112.60\";i:1;s:32:\"잘못된 비밀번호입니다.\";i:2;i:1697695910;}i:2;a:3:{i:0;s:14:\"58.224.126.102\";i:1;s:32:\"잘못된 비밀번호입니다.\";i:2;i:1700466063;}i:3;a:3:{i:0;s:14:\"58.224.126.102\";i:1;s:32:\"잘못된 비밀번호입니다.\";i:2;i:1700471737;}i:4;a:3:{i:0;s:14:\"58.224.126.102\";i:1;s:32:\"잘못된 비밀번호입니다.\";i:2;i:1700472054;}}','20231120182055');
/*!40000 ALTER TABLE `xe_member_count_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_denied_nick_name`
--

DROP TABLE IF EXISTS `xe_member_denied_nick_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_denied_nick_name` (
  `nick_name` varchar(80) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`nick_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_denied_nick_name`
--

LOCK TABLES `xe_member_denied_nick_name` WRITE;
/*!40000 ALTER TABLE `xe_member_denied_nick_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_denied_nick_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_denied_user_id`
--

DROP TABLE IF EXISTS `xe_member_denied_user_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_denied_user_id` (
  `user_id` varchar(80) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_denied_user_id`
--

LOCK TABLES `xe_member_denied_user_id` WRITE;
/*!40000 ALTER TABLE `xe_member_denied_user_id` DISABLE KEYS */;
INSERT INTO `xe_member_denied_user_id` VALUES ('addon','20230919112543','',-5);
INSERT INTO `xe_member_denied_user_id` VALUES ('admin','20230919112543','',-6);
INSERT INTO `xe_member_denied_user_id` VALUES ('adminlogging','20230919112543','',-7);
INSERT INTO `xe_member_denied_user_id` VALUES ('autoinstall','20230919112543','',-8);
INSERT INTO `xe_member_denied_user_id` VALUES ('board','20230919112543','',-9);
INSERT INTO `xe_member_denied_user_id` VALUES ('comment','20230919112543','',-10);
INSERT INTO `xe_member_denied_user_id` VALUES ('communication','20230919112543','',-11);
INSERT INTO `xe_member_denied_user_id` VALUES ('counter','20230919112543','',-12);
INSERT INTO `xe_member_denied_user_id` VALUES ('document','20230919112543','',-13);
INSERT INTO `xe_member_denied_user_id` VALUES ('editor','20230919112543','',-14);
INSERT INTO `xe_member_denied_user_id` VALUES ('file','20230919112543','',-15);
INSERT INTO `xe_member_denied_user_id` VALUES ('imageprocess','20230919112543','',-16);
INSERT INTO `xe_member_denied_user_id` VALUES ('importer','20230919112543','',-17);
INSERT INTO `xe_member_denied_user_id` VALUES ('install','20230919112543','',-18);
INSERT INTO `xe_member_denied_user_id` VALUES ('integration_search','20230919112543','',-19);
INSERT INTO `xe_member_denied_user_id` VALUES ('krzip','20230919112543','',-20);
INSERT INTO `xe_member_denied_user_id` VALUES ('layout','20230919112543','',-21);
INSERT INTO `xe_member_denied_user_id` VALUES ('member','20230919112543','',-22);
INSERT INTO `xe_member_denied_user_id` VALUES ('menu','20230919112543','',-23);
INSERT INTO `xe_member_denied_user_id` VALUES ('message','20230919112543','',-24);
INSERT INTO `xe_member_denied_user_id` VALUES ('module','20230919112543','',-25);
INSERT INTO `xe_member_denied_user_id` VALUES ('page','20230919112543','',-26);
INSERT INTO `xe_member_denied_user_id` VALUES ('point','20230919112543','',-27);
INSERT INTO `xe_member_denied_user_id` VALUES ('poll','20230919112543','',-28);
INSERT INTO `xe_member_denied_user_id` VALUES ('popup','20230919112543','',-29);
INSERT INTO `xe_member_denied_user_id` VALUES ('rss','20230919112543','',-30);
INSERT INTO `xe_member_denied_user_id` VALUES ('seo','20230919112543','',-31);
INSERT INTO `xe_member_denied_user_id` VALUES ('session','20230919112543','',-32);
INSERT INTO `xe_member_denied_user_id` VALUES ('spamfilter','20230919112543','',-33);
INSERT INTO `xe_member_denied_user_id` VALUES ('tag','20230919112543','',-34);
INSERT INTO `xe_member_denied_user_id` VALUES ('trash','20230919112543','',-35);
INSERT INTO `xe_member_denied_user_id` VALUES ('widget','20230919112543','',-36);
INSERT INTO `xe_member_denied_user_id` VALUES ('youtube','20230919112543','',-37);
INSERT INTO `xe_member_denied_user_id` VALUES ('www','20230919112543','',-38);
INSERT INTO `xe_member_denied_user_id` VALUES ('root','20230919112543','',-39);
INSERT INTO `xe_member_denied_user_id` VALUES ('administrator','20230919112543','',-40);
INSERT INTO `xe_member_denied_user_id` VALUES ('telnet','20230919112543','',-41);
INSERT INTO `xe_member_denied_user_id` VALUES ('ftp','20230919112543','',-42);
INSERT INTO `xe_member_denied_user_id` VALUES ('http','20230919112543','',-43);
/*!40000 ALTER TABLE `xe_member_denied_user_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_friend`
--

DROP TABLE IF EXISTS `xe_member_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_friend` (
  `friend_srl` bigint(11) NOT NULL,
  `friend_group_srl` bigint(11) NOT NULL DEFAULT 0,
  `member_srl` bigint(11) NOT NULL,
  `target_srl` bigint(11) NOT NULL,
  `list_order` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`friend_srl`),
  KEY `idx_friend_group_srl` (`friend_group_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_target_srl` (`target_srl`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_friend`
--

LOCK TABLES `xe_member_friend` WRITE;
/*!40000 ALTER TABLE `xe_member_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_friend_group`
--

DROP TABLE IF EXISTS `xe_member_friend_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_friend_group` (
  `friend_group_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`friend_group_srl`),
  KEY `index_owner_member_srl` (`member_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_friend_group`
--

LOCK TABLES `xe_member_friend_group` WRITE;
/*!40000 ALTER TABLE `xe_member_friend_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_friend_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_group`
--

DROP TABLE IF EXISTS `xe_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_group` (
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `group_srl` bigint(11) NOT NULL,
  `list_order` bigint(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `is_default` char(1) DEFAULT 'N',
  `is_admin` char(1) DEFAULT 'N',
  `image_mark` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`group_srl`),
  UNIQUE KEY `idx_site_title` (`site_srl`,`title`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_group`
--

LOCK TABLES `xe_member_group` WRITE;
/*!40000 ALTER TABLE `xe_member_group` DISABLE KEYS */;
INSERT INTO `xe_member_group` VALUES (0,1,1,'관리그룹','20230919112543','N','Y','','');
INSERT INTO `xe_member_group` VALUES (0,2,2,'준회원','20230919112543','Y','N','','');
INSERT INTO `xe_member_group` VALUES (0,3,3,'정회원','20230919112543','N','N','','');
/*!40000 ALTER TABLE `xe_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_group_member`
--

DROP TABLE IF EXISTS `xe_member_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_group_member` (
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `group_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_site_srl` (`site_srl`),
  KEY `idx_group_member` (`group_srl`,`member_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_group_member`
--

LOCK TABLES `xe_member_group_member` WRITE;
/*!40000 ALTER TABLE `xe_member_group_member` DISABLE KEYS */;
INSERT INTO `xe_member_group_member` VALUES (0,1,4,'20231115161021');
INSERT INTO `xe_member_group_member` VALUES (0,2,4,'20231115161021');
INSERT INTO `xe_member_group_member` VALUES (0,3,4,'20231115161021');
/*!40000 ALTER TABLE `xe_member_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_join_form`
--

DROP TABLE IF EXISTS `xe_member_join_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_join_form` (
  `member_join_form_srl` bigint(11) NOT NULL,
  `column_type` varchar(60) NOT NULL,
  `column_name` varchar(60) NOT NULL,
  `column_title` varchar(60) NOT NULL,
  `required` char(1) NOT NULL DEFAULT 'N',
  `default_value` text DEFAULT NULL,
  `is_active` char(1) DEFAULT 'Y',
  `description` text DEFAULT NULL,
  `list_order` bigint(11) NOT NULL DEFAULT 1,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`member_join_form_srl`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_join_form`
--

LOCK TABLES `xe_member_join_form` WRITE;
/*!40000 ALTER TABLE `xe_member_join_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_join_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_login_count`
--

DROP TABLE IF EXISTS `xe_member_login_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_login_count` (
  `ipaddress` varchar(128) NOT NULL,
  `count` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_last_update` (`last_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_login_count`
--

LOCK TABLES `xe_member_login_count` WRITE;
/*!40000 ALTER TABLE `xe_member_login_count` DISABLE KEYS */;
INSERT INTO `xe_member_login_count` VALUES ('175.112.112.60',1,'20231019120654','20231019151150');
INSERT INTO `xe_member_login_count` VALUES ('58.224.126.102',1,'20231120164103','20231120182055');
/*!40000 ALTER TABLE `xe_member_login_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_message`
--

DROP TABLE IF EXISTS `xe_member_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_message` (
  `message_srl` bigint(11) NOT NULL,
  `related_srl` bigint(11) NOT NULL,
  `sender_srl` bigint(11) NOT NULL,
  `receiver_srl` bigint(11) NOT NULL,
  `message_type` char(1) NOT NULL DEFAULT 'S',
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `readed` char(1) NOT NULL DEFAULT 'N',
  `list_order` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `readed_date` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`message_srl`),
  KEY `idx_related_srl` (`related_srl`),
  KEY `idx_sender_srl` (`sender_srl`),
  KEY `idx_receiver_srl` (`receiver_srl`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_message`
--

LOCK TABLES `xe_member_message` WRITE;
/*!40000 ALTER TABLE `xe_member_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_member_scrap`
--

DROP TABLE IF EXISTS `xe_member_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_member_scrap` (
  `member_srl` bigint(11) NOT NULL,
  `document_srl` bigint(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `user_name` varchar(80) NOT NULL,
  `nick_name` varchar(80) NOT NULL,
  `target_member_srl` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  UNIQUE KEY `unique_scrap` (`member_srl`,`document_srl`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_member_scrap`
--

LOCK TABLES `xe_member_scrap` WRITE;
/*!40000 ALTER TABLE `xe_member_scrap` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_member_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_menu`
--

DROP TABLE IF EXISTS `xe_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_menu` (
  `menu_srl` bigint(12) NOT NULL,
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `listorder` bigint(11) DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`menu_srl`),
  KEY `menu_site_srl` (`site_srl`),
  KEY `idx_title` (`title`),
  KEY `idx_listorder` (`listorder`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_menu`
--

LOCK TABLES `xe_menu` WRITE;
/*!40000 ALTER TABLE `xe_menu` DISABLE KEYS */;
INSERT INTO `xe_menu` VALUES (70,0,'세계로선교회 홈',-70,'20230919112543');
INSERT INTO `xe_menu` VALUES (151,0,'세계로선교회 메뉴',-151,'20230919113239');
INSERT INTO `xe_menu` VALUES (102,0,'__ADMINMENU_V17__',-102,'20230919112706');
INSERT INTO `xe_menu` VALUES (182,0,'unlinked',-182,'20230919115840');
/*!40000 ALTER TABLE `xe_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_menu_item`
--

DROP TABLE IF EXISTS `xe_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_menu_item` (
  `menu_item_srl` bigint(12) NOT NULL,
  `parent_srl` bigint(12) NOT NULL DEFAULT 0,
  `menu_srl` bigint(12) NOT NULL,
  `name` text DEFAULT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `is_shortcut` char(1) DEFAULT 'N',
  `open_window` char(1) DEFAULT 'N',
  `expand` char(1) DEFAULT 'N',
  `normal_btn` varchar(255) DEFAULT NULL,
  `hover_btn` varchar(255) DEFAULT NULL,
  `active_btn` varchar(255) DEFAULT NULL,
  `group_srls` text DEFAULT NULL,
  `listorder` bigint(11) DEFAULT 0,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`menu_item_srl`),
  KEY `idx_menu_srl` (`menu_srl`),
  KEY `idx_listorder` (`listorder`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_menu_item`
--

LOCK TABLES `xe_menu_item` WRITE;
/*!40000 ALTER TABLE `xe_menu_item` DISABLE KEYS */;
INSERT INTO `xe_menu_item` VALUES (72,0,70,'세계로선교회','세계로선교회','index','N','N','N',NULL,NULL,NULL,NULL,-72,'20230919112543');
INSERT INTO `xe_menu_item` VALUES (161,164,151,'예배·모임안내','예배·모임안내','sub01_06','N','N','N',NULL,NULL,NULL,NULL,-5,'20230919113627');
INSERT INTO `xe_menu_item` VALUES (159,164,151,'비전센터소개','비전센터소개','sub01_05','N','N','N',NULL,NULL,NULL,NULL,-4,'20230919113614');
INSERT INTO `xe_menu_item` VALUES (157,164,151,'유동근 목사','유동근 목사','sub01_03','N','N','N',NULL,NULL,NULL,NULL,-2,'20230919113556');
INSERT INTO `xe_menu_item` VALUES (155,164,151,'세계로 발자취','세계로 발자취','sub01_02','N','N','N',NULL,NULL,NULL,NULL,-1,'20230919113431');
INSERT INTO `xe_menu_item` VALUES (164,0,151,'소개합니다','소개합니다','sub01_01','Y','N','N',NULL,NULL,NULL,NULL,-153,'20230919113403');
INSERT INTO `xe_menu_item` VALUES (163,164,151,'오시는 길','오시는 길','sub01_07','N','N','N',NULL,NULL,NULL,NULL,-6,'20230919113817');
INSERT INTO `xe_menu_item` VALUES (166,167,151,'기도편지','기도편지','sub03_03','N','N','N',NULL,NULL,NULL,NULL,-2,'20230919114333');
INSERT INTO `xe_menu_item` VALUES (167,0,151,'해외선교','해외선교','sub03_01','Y','N','N',NULL,NULL,NULL,NULL,-169,'20230919114333');
INSERT INTO `xe_menu_item` VALUES (188,168,151,'목장','목장','sub02_02','N','N','N',NULL,NULL,NULL,NULL,-188,'20230925135553');
INSERT INTO `xe_menu_item` VALUES (209,175,151,'주일예배','주일예배','sub04_01','N','N','N',NULL,NULL,NULL,NULL,-209,'20230925142640');
INSERT INTO `xe_menu_item` VALUES (172,168,151,'새가족 안내','새가족 안내','sub02_01','N','N','N',NULL,NULL,NULL,NULL,-172,'20230919115417');
INSERT INTO `xe_menu_item` VALUES (168,0,151,'국내선교','국내선교','sub02_01','Y','N','N',NULL,NULL,NULL,NULL,-154,'20230919114414');
INSERT INTO `xe_menu_item` VALUES (103,0,102,'{$lang->menu_gnb[\'dashboard\']}',NULL,'index.php?module=admin','N','N','N',NULL,NULL,NULL,NULL,-103,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (104,0,102,'{$lang->menu_gnb[\'menu\']}',NULL,'#','N','N','N',NULL,NULL,NULL,NULL,-104,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (105,0,102,'{$lang->menu_gnb[\'user\']}',NULL,'#','N','N','N',NULL,NULL,NULL,NULL,-105,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (106,0,102,'{$lang->menu_gnb[\'content\']}',NULL,'#','N','N','N',NULL,NULL,NULL,NULL,-106,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (107,0,102,'{$lang->menu_gnb[\'configuration\']}',NULL,'#','N','N','N',NULL,NULL,NULL,NULL,-107,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (108,0,102,'{$lang->menu_gnb[\'advanced\']}',NULL,'#','N','N','N',NULL,NULL,NULL,NULL,-108,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (109,104,102,'{$lang->menu_gnb_sub[\'siteMap\']}',NULL,'index.php?module=admin&act=dispMenuAdminSiteMap','N','N','N','','','','1',-109,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (110,104,102,'{$lang->menu_gnb_sub[\'siteDesign\']}',NULL,'index.php?module=admin&act=dispMenuAdminSiteDesign','N','N','N','','','','1',-110,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (111,105,102,'{$lang->menu_gnb_sub[\'userList\']}',NULL,'index.php?module=admin&act=dispMemberAdminList','N','N','N','','','','1',-111,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (112,105,102,'{$lang->menu_gnb_sub[\'userSetting\']}',NULL,'index.php?module=admin&act=dispMemberAdminConfig','N','N','N','','','','1',-112,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (113,105,102,'{$lang->menu_gnb_sub[\'userGroup\']}',NULL,'index.php?module=admin&act=dispMemberAdminGroupList','N','N','N','','','','1',-113,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (114,106,102,'{$lang->menu_gnb_sub[\'document\']}',NULL,'index.php?module=admin&act=dispDocumentAdminList','N','N','N','','','','1',-114,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (115,106,102,'{$lang->menu_gnb_sub[\'comment\']}',NULL,'index.php?module=admin&act=dispCommentAdminList','N','N','N','','','','1',-115,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (116,106,102,'{$lang->menu_gnb_sub[\'file\']}',NULL,'index.php?module=admin&act=dispFileAdminList','N','N','N','','','','1',-116,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (117,106,102,'{$lang->menu_gnb_sub[\'poll\']}',NULL,'index.php?module=admin&act=dispPollAdminList','N','N','N','','','','1',-117,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (118,106,102,'{$lang->menu_gnb_sub[\'rss\']}',NULL,'index.php?module=admin&act=dispRssAdminIndex','N','N','N','','','','1',-118,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (119,106,102,'{$lang->menu_gnb_sub[\'multilingual\']}',NULL,'index.php?module=admin&act=dispModuleAdminLangcode','N','N','N','','','','1',-119,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (120,106,102,'{$lang->menu_gnb_sub[\'importer\']}',NULL,'index.php?module=admin&act=dispImporterAdminImportForm','N','N','N','','','','1',-120,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (121,106,102,'{$lang->menu_gnb_sub[\'trash\']}',NULL,'index.php?module=admin&act=dispTrashAdminList','N','N','N','','','','1',-121,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (122,108,102,'{$lang->menu_gnb_sub[\'easyInstall\']}',NULL,'index.php?module=admin&act=dispAutoinstallAdminIndex','N','N','N','','','','1',-122,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (123,108,102,'{$lang->menu_gnb_sub[\'installedLayout\']}',NULL,'index.php?module=admin&act=dispLayoutAdminInstalledList','N','N','N','','','','1',-123,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (124,108,102,'{$lang->menu_gnb_sub[\'installedModule\']}',NULL,'index.php?module=admin&act=dispModuleAdminContent','N','N','N','','','','1',-124,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (125,108,102,'{$lang->menu_gnb_sub[\'installedWidget\']}',NULL,'index.php?module=admin&act=dispWidgetAdminDownloadedList','N','N','N','','','','1',-125,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (126,108,102,'{$lang->menu_gnb_sub[\'installedAddon\']}',NULL,'index.php?module=admin&act=dispAddonAdminIndex','N','N','N','','','','1',-126,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (127,108,102,'{$lang->menu_gnb_sub[\'editor\']}',NULL,'index.php?module=admin&act=dispEditorAdminIndex','N','N','N','','','','1',-127,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (128,106,102,'{$lang->menu_gnb_sub[\'spamFilter\']}',NULL,'index.php?module=admin&act=dispSpamfilterAdminDeniedIPList','N','N','N','','','','1',-128,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (129,107,102,'{$lang->menu_gnb_sub[\'adminConfigurationGeneral\']}',NULL,'index.php?module=admin&act=dispAdminConfigGeneral','N','N','N','','','','1',-129,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (130,107,102,'{$lang->menu_gnb_sub[\'adminConfigurationFtp\']}',NULL,'index.php?module=admin&act=dispAdminConfigFtp','N','N','N','','','','1',-130,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (131,107,102,'{$lang->menu_gnb_sub[\'adminMenuSetup\']}',NULL,'index.php?module=admin&act=dispAdminSetup','N','N','N','','','','1',-131,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (132,107,102,'{$lang->menu_gnb_sub[\'fileUpload\']}',NULL,'index.php?module=admin&act=dispFileAdminConfig','N','N','N','','','','1',-132,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (133,107,102,'{$lang->menu_gnb_sub[\'filebox\']}',NULL,'index.php?module=admin&act=dispModuleAdminFileBox','N','N','N','','','','1',-133,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (134,105,102,'{$lang->menu_gnb_sub[\'point\']}',NULL,'index.php?module=admin&act=dispPointAdminConfig','N','N','N','','','','1',-134,'20230919112706');
INSERT INTO `xe_menu_item` VALUES (153,164,151,'세계로선교회 소개','세계로선교회 소개','sub01_01','N','N','N',NULL,NULL,NULL,NULL,0,'20230919113403');
INSERT INTO `xe_menu_item` VALUES (175,0,151,'세계로TV','세계로TV','sub04_01','Y','N','N',NULL,NULL,NULL,NULL,-176,'20230919115527');
INSERT INTO `xe_menu_item` VALUES (176,0,151,'소식 · 자료','소식 · 자료','sub05_01','Y','N','N',NULL,NULL,NULL,NULL,-177,'20230919115603');
INSERT INTO `xe_menu_item` VALUES (178,176,151,'세계로 소식','세계로 소식','sub05_01','N','N','N',NULL,NULL,NULL,NULL,-178,'20230919115603');
INSERT INTO `xe_menu_item` VALUES (219,0,182,'통통성경일독학교','통통성경일독학교','sub05_03','N','N','N',NULL,NULL,NULL,NULL,-2,'20230925143002');
INSERT INTO `xe_menu_item` VALUES (217,176,151,'세계로 앨범','세계로 앨범','sub05_02','N','N','N',NULL,NULL,NULL,NULL,-217,'20230925142913');
INSERT INTO `xe_menu_item` VALUES (184,0,182,'popup',NULL,'popup','N','N','N',NULL,NULL,NULL,NULL,0,'20230925134913');
INSERT INTO `xe_menu_item` VALUES (186,164,151,'섬기는 이들','섬기는 이들','sub01_04','N','N','N',NULL,NULL,NULL,NULL,-3,'20230925134952');
INSERT INTO `xe_menu_item` VALUES (190,193,151,'청년 캠퍼스','청년 캠퍼스','sub02_0301','N','N','N',NULL,NULL,NULL,NULL,0,'20230925140414');
INSERT INTO `xe_menu_item` VALUES (193,168,151,'다음세대','다음세대','sub02_0301','Y','N','N',NULL,NULL,NULL,NULL,-193,'20230925140414');
INSERT INTO `xe_menu_item` VALUES (195,193,151,'엘틴 캠퍼스','엘틴 캠퍼스','sub02_0302','N','N','N',NULL,NULL,NULL,NULL,-195,'20230925140611');
INSERT INTO `xe_menu_item` VALUES (197,193,151,'주니어 캠퍼스','주니어 캠퍼스','sub02_0303','N','N','N',NULL,NULL,NULL,NULL,-197,'20230925140704');
INSERT INTO `xe_menu_item` VALUES (199,193,151,'O2솔로몬아카데미','O2솔로몬아카데미','sub02_0304','N','N','N',NULL,NULL,NULL,NULL,-199,'20230925140731');
INSERT INTO `xe_menu_item` VALUES (201,167,151,'선교의 현장','선교의 현장','sub03_04','N','N','N',NULL,NULL,NULL,NULL,-203,'20230925142002');
INSERT INTO `xe_menu_item` VALUES (229,167,151,'세계선교의 비전·발자취','세계선교의 비전·발자취','sub03_01','N','N','N',NULL,NULL,NULL,NULL,0,'20231004135930');
INSERT INTO `xe_menu_item` VALUES (286,167,151,'선교사 파송현황','선교사 파송현황','sub03_02','N','N','N',NULL,NULL,NULL,NULL,-1,'20231102102358');
INSERT INTO `xe_menu_item` VALUES (211,175,151,'집회 · 세미나','집회 · 세미나','sub04_02','N','N','N',NULL,NULL,NULL,NULL,-211,'20230925142645');
INSERT INTO `xe_menu_item` VALUES (213,175,151,'세계로 영상','세계로 영상','sub04_03','N','N','N',NULL,NULL,NULL,NULL,-213,'20230925142724');
INSERT INTO `xe_menu_item` VALUES (215,175,151,'나의 신앙','나의 신앙','sub04_04','N','N','N',NULL,NULL,NULL,NULL,-215,'20230925142801');
INSERT INTO `xe_menu_item` VALUES (227,193,151,'다음세대 광장','다음세대 광장','sub02_0305','N','N','N',NULL,NULL,NULL,NULL,-227,'20231004135727');
INSERT INTO `xe_menu_item` VALUES (224,0,182,'쉐마교육','쉐마교육','sub05_04','N','N','N',NULL,NULL,NULL,NULL,-1,'20230925143053');
INSERT INTO `xe_menu_item` VALUES (288,167,151,'선교적 유산(변희관목사)','선교적 유산(변희관목사)','sub03_05','N','N','N',NULL,NULL,NULL,NULL,-288,'20231102102514');
/*!40000 ALTER TABLE `xe_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_menu_layout`
--

DROP TABLE IF EXISTS `xe_menu_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_menu_layout` (
  `menu_srl` bigint(12) NOT NULL,
  `layout_srl` bigint(12) NOT NULL,
  PRIMARY KEY (`menu_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_menu_layout`
--

LOCK TABLES `xe_menu_layout` WRITE;
/*!40000 ALTER TABLE `xe_menu_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_menu_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_admins`
--

DROP TABLE IF EXISTS `xe_module_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_admins` (
  `module_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  UNIQUE KEY `unique_module_admin` (`module_srl`,`member_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_admins`
--

LOCK TABLES `xe_module_admins` WRITE;
/*!40000 ALTER TABLE `xe_module_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_categories`
--

DROP TABLE IF EXISTS `xe_module_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_categories` (
  `module_category_srl` bigint(11) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`module_category_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_categories`
--

LOCK TABLES `xe_module_categories` WRITE;
/*!40000 ALTER TABLE `xe_module_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_config`
--

DROP TABLE IF EXISTS `xe_module_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_config` (
  `module` varchar(250) NOT NULL,
  `site_srl` bigint(11) NOT NULL,
  `config` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_config`
--

LOCK TABLES `xe_module_config` WRITE;
/*!40000 ALTER TABLE `xe_module_config` DISABLE KEYS */;
INSERT INTO `xe_module_config` VALUES ('comment',0,'N;','20230919112542');
INSERT INTO `xe_module_config` VALUES ('editor',0,'O:8:\"stdClass\":10:{s:12:\"font_defined\";s:1:\"Y\";s:12:\"content_font\";s:26:\"\'Noto Sans KR\', sans-serif\";s:11:\"editor_skin\";s:8:\"ckeditor\";s:13:\"editor_height\";s:3:\"300\";s:19:\"comment_editor_skin\";s:8:\"ckeditor\";s:21:\"comment_editor_height\";s:3:\"100\";s:13:\"content_style\";s:7:\"default\";s:17:\"content_font_size\";s:4:\"15px\";s:19:\"sel_editor_colorset\";s:5:\"moono\";s:27:\"sel_comment_editor_colorset\";s:5:\"moono\";}','20231020105742');
INSERT INTO `xe_module_config` VALUES ('file',0,'O:8:\"stdClass\":3:{s:16:\"allowed_filesize\";s:1:\"2\";s:19:\"allowed_attach_size\";s:1:\"2\";s:17:\"allowed_filetypes\";s:3:\"*.*\";}','20230919112543');
INSERT INTO `xe_module_config` VALUES ('layout',0,'N;','20230919112542');
INSERT INTO `xe_module_config` VALUES ('point',0,'O:8:\"stdClass\":22:{s:11:\"able_module\";s:1:\"N\";s:9:\"max_level\";i:30;s:10:\"level_step\";a:30:{i:1;i:90;i:2;i:360;i:3;i:810;i:4;i:1440;i:5;i:2250;i:6;i:3240;i:7;i:4410;i:8;i:5760;i:9;i:7290;i:10;i:9000;i:11;i:10890;i:12;i:12960;i:13;i:15210;i:14;i:17640;i:15;i:20250;i:16;i:23040;i:17;i:26010;i:18;i:29160;i:19;i:32490;i:20;i:36000;i:21;i:39690;i:22;i:43560;i:23;i:47610;i:24;i:51840;i:25;i:56250;i:26;i:60840;i:27;i:65610;i:28;i:70560;i:29;i:75690;i:30;i:81000;}s:12:\"signup_point\";i:10;s:11:\"login_point\";i:5;s:10:\"point_name\";s:5:\"point\";s:10:\"level_icon\";s:7:\"default\";s:16:\"disable_download\";b:0;s:15:\"insert_document\";i:10;s:19:\"insert_document_act\";s:23:\"procBoardInsertDocument\";s:19:\"delete_document_act\";s:23:\"procBoardDeleteDocument\";s:14:\"insert_comment\";i:5;s:18:\"insert_comment_act\";s:44:\"procBoardInsertComment,procBlogInsertComment\";s:18:\"delete_comment_act\";s:44:\"procBoardDeleteComment,procBlogDeleteComment\";s:11:\"upload_file\";i:5;s:15:\"upload_file_act\";s:14:\"procFileUpload\";s:15:\"delete_file_act\";s:14:\"procFileDelete\";s:13:\"download_file\";i:-5;s:17:\"download_file_act\";s:16:\"procFileDownload\";s:13:\"read_document\";i:0;s:5:\"voted\";i:0;s:6:\"blamed\";i:0;}','20230919112543');
INSERT INTO `xe_module_config` VALUES ('rss',0,'N;','20230919112542');
INSERT INTO `xe_module_config` VALUES ('module',0,'O:8:\"stdClass\":3:{s:18:\"isUpdateFixedValue\";b:1;s:10:\"htmlFooter\";N;s:9:\"siteTitle\";s:18:\"세계로선교회\";}','20230919113034');
INSERT INTO `xe_module_config` VALUES ('autoinstall',0,'O:8:\"stdClass\":1:{s:14:\"downloadServer\";s:33:\"http://download.xpressengine.com/\";}','20230919112542');
INSERT INTO `xe_module_config` VALUES ('poll',0,'O:8:\"stdClass\":2:{s:4:\"skin\";s:7:\"default\";s:8:\"colorset\";s:6:\"normal\";}','20230919112543');
INSERT INTO `xe_module_config` VALUES ('imageprocess',0,'O:8:\"stdClass\":23:{s:10:\"resize_use\";s:1:\"Y\";s:12:\"resize_width\";s:4:\"1200\";s:14:\"original_store\";s:1:\"N\";s:14:\"resize_quality\";s:2:\"80\";s:13:\"minimum_width\";s:3:\"300\";s:13:\"watermark_use\";s:1:\"N\";s:9:\"magic_use\";s:1:\"N\";s:9:\"watermark\";s:0:\"\";s:13:\"water_quality\";s:3:\"100\";s:14:\"water_position\";s:2:\"RB\";s:9:\"store_mid\";s:0:\"\";s:9:\"water_mid\";s:0:\"\";s:10:\"target_mid\";s:48:\";216;177;165;287;208;200;226;223;218;214;212;210\";s:10:\"store_path\";s:0:\"\";s:10:\"down_group\";s:0:\"\";s:7:\"xmargin\";i:10;s:7:\"ymargin\";i:10;s:3:\"ext\";s:7:\"jpg;png\";s:8:\"logo_ext\";s:7:\"jpg;png\";s:7:\"version\";s:5:\"2.6.6\";s:12:\"target_width\";s:1:\"Y\";s:10:\"resize_ext\";s:0:\"\";s:13:\"noresizegroup\";s:0:\"\";}','20231201113307');
INSERT INTO `xe_module_config` VALUES ('menu',0,'O:8:\"stdClass\":1:{s:17:\"unlinked_menu_srl\";i:182;}','20230919115840');
INSERT INTO `xe_module_config` VALUES ('member',0,'O:8:\"stdClass\":34:{s:11:\"enable_join\";s:1:\"Y\";s:13:\"enable_openid\";s:1:\"N\";s:16:\"enable_auth_mail\";s:1:\"N\";s:10:\"image_name\";s:1:\"N\";s:10:\"image_mark\";s:1:\"N\";s:13:\"profile_image\";s:1:\"N\";s:20:\"image_name_max_width\";N;s:21:\"image_name_max_height\";N;s:20:\"image_mark_max_width\";N;s:21:\"image_mark_max_height\";N;s:23:\"profile_image_max_width\";N;s:24:\"profile_image_max_height\";N;s:16:\"group_image_mark\";s:1:\"N\";s:17:\"password_strength\";s:6:\"normal\";s:26:\"password_hashing_algorithm\";s:6:\"pbkdf2\";s:28:\"password_hashing_work_factor\";i:8;s:29:\"password_hashing_auto_upgrade\";s:1:\"Y\";s:10:\"signupForm\";a:13:{i:0;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:1;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:7:\"user_id\";s:5:\"title\";s:9:\"아이디\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:1;s:5:\"isUse\";b:1;s:8:\"isPublic\";s:1:\"N\";}i:1;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:13:\"email_address\";s:5:\"title\";s:16:\"이메일 주소\";s:12:\"mustRequired\";b:1;s:9:\"imageType\";b:0;s:8:\"required\";b:1;s:5:\"isUse\";b:1;s:8:\"isPublic\";s:1:\"N\";}i:2;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:8:\"password\";s:5:\"title\";s:12:\"비밀번호\";s:12:\"mustRequired\";b:1;s:9:\"imageType\";b:0;s:8:\"required\";b:1;s:5:\"isUse\";b:1;s:8:\"isPublic\";s:1:\"N\";}i:3;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:9:\"user_name\";s:5:\"title\";s:6:\"이름\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";}i:4;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:9:\"nick_name\";s:5:\"title\";s:9:\"닉네임\";s:12:\"mustRequired\";b:1;s:9:\"imageType\";b:0;s:8:\"required\";b:1;s:5:\"isUse\";b:1;s:8:\"isPublic\";s:1:\"Y\";}i:5;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:21:\"find_account_question\";s:5:\"title\";s:33:\"비밀번호 찾기 질문/답변\";s:12:\"mustRequired\";b:1;s:9:\"imageType\";b:0;s:8:\"required\";b:1;s:5:\"isUse\";b:1;s:8:\"isPublic\";s:1:\"N\";}i:6;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:8:\"homepage\";s:5:\"title\";s:12:\"홈페이지\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";}i:7;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:4:\"blog\";s:5:\"title\";s:9:\"블로그\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";}i:8;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:8:\"birthday\";s:5:\"title\";s:6:\"생일\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";}i:9;O:8:\"stdClass\":9:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:9:\"signature\";s:5:\"title\";s:6:\"서명\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:0;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";}i:10;O:8:\"stdClass\":13:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:13:\"profile_image\";s:5:\"title\";s:16:\"프로필 사진\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:1;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";s:9:\"max_width\";N;s:10:\"max_height\";N;s:12:\"max_filesize\";N;s:27:\"allow_transparent_thumbnail\";N;}i:11;O:8:\"stdClass\":13:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:10:\"image_name\";s:5:\"title\";s:16:\"이미지 이름\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:1;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";s:9:\"max_width\";N;s:10:\"max_height\";N;s:12:\"max_filesize\";N;s:27:\"allow_transparent_thumbnail\";N;}i:12;O:8:\"stdClass\":13:{s:12:\"isIdentifier\";b:0;s:13:\"isDefaultForm\";b:1;s:4:\"name\";s:10:\"image_mark\";s:5:\"title\";s:16:\"이미지 마크\";s:12:\"mustRequired\";b:0;s:9:\"imageType\";b:1;s:8:\"required\";b:0;s:5:\"isUse\";b:0;s:8:\"isPublic\";s:1:\"N\";s:9:\"max_width\";N;s:10:\"max_height\";N;s:12:\"max_filesize\";N;s:27:\"allow_transparent_thumbnail\";N;}}s:10:\"identifier\";s:7:\"user_id\";s:9:\"limit_day\";i:0;s:21:\"limit_day_description\";N;s:9:\"agreement\";N;s:12:\"redirect_url\";N;s:26:\"profile_image_max_filesize\";N;s:23:\"image_name_max_filesize\";N;s:23:\"image_mark_max_filesize\";N;s:21:\"signature_editor_skin\";s:8:\"ckeditor\";s:19:\"sel_editor_colorset\";s:5:\"moono\";s:9:\"signature\";s:1:\"N\";s:10:\"layout_srl\";s:3:\"138\";s:4:\"skin\";s:7:\"default\";s:8:\"colorset\";s:5:\"white\";s:11:\"mlayout_srl\";N;s:5:\"mskin\";s:7:\"default\";}','20230919113007');
INSERT INTO `xe_module_config` VALUES ('document',0,'O:8:\"stdClass\":1:{s:14:\"thumbnail_type\";s:4:\"crop\";}','20230919113034');
/*!40000 ALTER TABLE `xe_module_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_extend`
--

DROP TABLE IF EXISTS `xe_module_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_extend` (
  `parent_module` varchar(80) NOT NULL,
  `extend_module` varchar(80) NOT NULL,
  `type` varchar(15) NOT NULL,
  `kind` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_extend`
--

LOCK TABLES `xe_module_extend` WRITE;
/*!40000 ALTER TABLE `xe_module_extend` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_extra_vars`
--

DROP TABLE IF EXISTS `xe_module_extra_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_extra_vars` (
  `module_srl` bigint(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` text DEFAULT NULL,
  UNIQUE KEY `unique_module_vars` (`module_srl`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_extra_vars`
--

LOCK TABLES `xe_module_extra_vars` WRITE;
/*!40000 ALTER TABLE `xe_module_extra_vars` DISABLE KEYS */;
INSERT INTO `xe_module_extra_vars` VALUES (71,'page_type','WIDGET');
INSERT INTO `xe_module_extra_vars` VALUES (154,'regdate','20230919113431');
INSERT INTO `xe_module_extra_vars` VALUES (71,'regdate','20230919112543');
INSERT INTO `xe_module_extra_vars` VALUES (158,'path','layouts/enm/pages/sub01_05.php');
INSERT INTO `xe_module_extra_vars` VALUES (160,'path','layouts/enm/pages/sub01_06.php');
INSERT INTO `xe_module_extra_vars` VALUES (162,'regdate','20230919113817');
INSERT INTO `xe_module_extra_vars` VALUES (152,'regdate','20230919113403');
INSERT INTO `xe_module_extra_vars` VALUES (154,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (156,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (162,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (171,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (171,'regdate','20230919115417');
INSERT INTO `xe_module_extra_vars` VALUES (177,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (177,'list','no,regdate,title,user_name');
INSERT INTO `xe_module_extra_vars` VALUES (185,'regdate','20230925134952');
INSERT INTO `xe_module_extra_vars` VALUES (185,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (165,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (187,'regdate','20230925135553');
INSERT INTO `xe_module_extra_vars` VALUES (187,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (189,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (189,'regdate','20230925140414');
INSERT INTO `xe_module_extra_vars` VALUES (194,'regdate','20230925140611');
INSERT INTO `xe_module_extra_vars` VALUES (194,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (196,'regdate','20230925140704');
INSERT INTO `xe_module_extra_vars` VALUES (196,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (198,'regdate','20230925140731');
INSERT INTO `xe_module_extra_vars` VALUES (198,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (200,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (216,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (228,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (228,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (212,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (216,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (218,'regdate','20230925143002');
INSERT INTO `xe_module_extra_vars` VALUES (223,'regdate','20230925143053');
INSERT INTO `xe_module_extra_vars` VALUES (216,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (216,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (216,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (216,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (216,'list','no,title,nick_name,regdate,readed_count');
INSERT INTO `xe_module_extra_vars` VALUES (216,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (216,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (216,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (216,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (216,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (216,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (216,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (208,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (200,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (177,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (177,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (177,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (177,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (177,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (177,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (152,'path','layouts/enm/pages/sub01_01.php');
INSERT INTO `xe_module_extra_vars` VALUES (152,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (152,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (187,'path','layouts/enm/pages/sub02_02.php');
INSERT INTO `xe_module_extra_vars` VALUES (187,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (189,'path','layouts/enm/pages/sub02_0301.php');
INSERT INTO `xe_module_extra_vars` VALUES (189,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (194,'path','layouts/enm/pages/sub02_0302.php');
INSERT INTO `xe_module_extra_vars` VALUES (194,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (196,'path','layouts/enm/pages/sub02_0303.php');
INSERT INTO `xe_module_extra_vars` VALUES (196,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (198,'path','layouts/enm/pages/sub02_0304.php');
INSERT INTO `xe_module_extra_vars` VALUES (198,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (156,'path','layouts/enm/pages/sub01_03.php');
INSERT INTO `xe_module_extra_vars` VALUES (156,'regdate','20230919113556');
INSERT INTO `xe_module_extra_vars` VALUES (156,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (154,'path','layouts/enm/pages/sub01_02.php');
INSERT INTO `xe_module_extra_vars` VALUES (154,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (185,'path','layouts/enm/pages/sub01_04.php');
INSERT INTO `xe_module_extra_vars` VALUES (185,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (177,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (177,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (177,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (177,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (177,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (208,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (208,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (208,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (208,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (208,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (208,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (208,'list','regdate,title,thumbnail,no');
INSERT INTO `xe_module_extra_vars` VALUES (208,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (208,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (208,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (208,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (208,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (212,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (212,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (212,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (212,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (212,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (212,'list','regdate,title,thumbnail,no');
INSERT INTO `xe_module_extra_vars` VALUES (212,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (212,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (212,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (210,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (210,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (210,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (210,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (210,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (210,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (210,'list','no,title,regdate,thumbnail');
INSERT INTO `xe_module_extra_vars` VALUES (210,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (210,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (171,'path','layouts/enm/pages/sub02_01.php');
INSERT INTO `xe_module_extra_vars` VALUES (171,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (228,'path','layouts/enm/pages/sub03_01.php');
INSERT INTO `xe_module_extra_vars` VALUES (228,'regdate','20231004135930');
INSERT INTO `xe_module_extra_vars` VALUES (162,'path','layouts/enm/pages/sub01_07.php');
INSERT INTO `xe_module_extra_vars` VALUES (162,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (160,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (160,'regdate','20230919113627');
INSERT INTO `xe_module_extra_vars` VALUES (158,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (158,'regdate','20230919113614');
INSERT INTO `xe_module_extra_vars` VALUES (210,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (210,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (210,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (212,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (212,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (212,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (158,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (160,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (285,'xe_js_callback','top.opener.top.fullSetupDone');
INSERT INTO `xe_module_extra_vars` VALUES (285,'page_type','OUTSIDE');
INSERT INTO `xe_module_extra_vars` VALUES (285,'path','layouts/enm/pages/sub03_02.php');
INSERT INTO `xe_module_extra_vars` VALUES (285,'regdate','20231102102357');
INSERT INTO `xe_module_extra_vars` VALUES (287,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (165,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (165,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (165,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (165,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (165,'list','no,title,regdate');
INSERT INTO `xe_module_extra_vars` VALUES (165,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (165,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (165,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (165,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (165,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (165,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (165,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (165,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (210,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (208,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (287,'list','no,title,regdate,summary');
INSERT INTO `xe_module_extra_vars` VALUES (200,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (200,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (200,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (200,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (200,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (200,'list','no,title,regdate,summary,thumbnail');
INSERT INTO `xe_module_extra_vars` VALUES (200,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (200,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (200,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (177,'protect_content','N');
INSERT INTO `xe_module_extra_vars` VALUES (200,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (200,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (200,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (287,'use_status','PUBLIC');
INSERT INTO `xe_module_extra_vars` VALUES (287,'use_anonymous','N');
INSERT INTO `xe_module_extra_vars` VALUES (287,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (287,'except_notice','Y');
INSERT INTO `xe_module_extra_vars` VALUES (287,'order_target','list_order');
INSERT INTO `xe_module_extra_vars` VALUES (287,'order_type','asc');
INSERT INTO `xe_module_extra_vars` VALUES (287,'list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (287,'search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (287,'page_count','10');
INSERT INTO `xe_module_extra_vars` VALUES (287,'mobile_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (287,'mobile_search_list_count','20');
INSERT INTO `xe_module_extra_vars` VALUES (287,'mobile_page_count','5');
INSERT INTO `xe_module_extra_vars` VALUES (210,'consultation','N');
INSERT INTO `xe_module_extra_vars` VALUES (212,'protect_content','N');
/*!40000 ALTER TABLE `xe_module_extra_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_filebox`
--

DROP TABLE IF EXISTS `xe_module_filebox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_filebox` (
  `module_filebox_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `fileextension` varchar(4) NOT NULL,
  `filesize` bigint(11) NOT NULL DEFAULT 0,
  `comment` varchar(250) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`module_filebox_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_fileextension` (`fileextension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_filebox`
--

LOCK TABLES `xe_module_filebox` WRITE;
/*!40000 ALTER TABLE `xe_module_filebox` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_filebox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_grants`
--

DROP TABLE IF EXISTS `xe_module_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_grants` (
  `module_srl` bigint(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `group_srl` bigint(11) NOT NULL,
  UNIQUE KEY `unique_module` (`module_srl`,`name`,`group_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_grants`
--

LOCK TABLES `xe_module_grants` WRITE;
/*!40000 ALTER TABLE `xe_module_grants` DISABLE KEYS */;
INSERT INTO `xe_module_grants` VALUES (165,'access',0);
INSERT INTO `xe_module_grants` VALUES (165,'consultation_read',-3);
INSERT INTO `xe_module_grants` VALUES (165,'list',0);
INSERT INTO `xe_module_grants` VALUES (165,'manager',-3);
INSERT INTO `xe_module_grants` VALUES (165,'view',0);
INSERT INTO `xe_module_grants` VALUES (165,'write_comment',-1);
INSERT INTO `xe_module_grants` VALUES (165,'write_document',-1);
/*!40000 ALTER TABLE `xe_module_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_locks`
--

DROP TABLE IF EXISTS `xe_module_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_locks` (
  `lock_name` varchar(40) NOT NULL,
  `deadline` varchar(14) DEFAULT NULL,
  `member_srl` bigint(11) DEFAULT NULL,
  UNIQUE KEY `unique_lock_name` (`lock_name`),
  KEY `idx_deadline` (`deadline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_locks`
--

LOCK TABLES `xe_module_locks` WRITE;
/*!40000 ALTER TABLE `xe_module_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_mobile_skins`
--

DROP TABLE IF EXISTS `xe_module_mobile_skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_mobile_skins` (
  `module_srl` bigint(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` text DEFAULT NULL,
  UNIQUE KEY `unique_module_mobile_skins` (`module_srl`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_mobile_skins`
--

LOCK TABLES `xe_module_mobile_skins` WRITE;
/*!40000 ALTER TABLE `xe_module_mobile_skins` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_module_mobile_skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_part_config`
--

DROP TABLE IF EXISTS `xe_module_part_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_part_config` (
  `module` varchar(250) NOT NULL,
  `module_srl` bigint(11) NOT NULL,
  `config` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  UNIQUE KEY `unique_module_part_config` (`module`,`module_srl`),
  KEY `idx_module_part_config` (`module`,`module_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_part_config`
--

LOCK TABLES `xe_module_part_config` WRITE;
/*!40000 ALTER TABLE `xe_module_part_config` DISABLE KEYS */;
INSERT INTO `xe_module_part_config` VALUES ('editor',135,'O:8:\"stdClass\":19:{s:11:\"editor_skin\";N;s:19:\"comment_editor_skin\";N;s:13:\"content_style\";N;s:21:\"comment_content_style\";N;s:12:\"content_font\";N;s:17:\"content_font_size\";N;s:19:\"sel_editor_colorset\";N;s:27:\"sel_comment_editor_colorset\";N;s:17:\"enable_html_grant\";a:0:{}s:25:\"enable_comment_html_grant\";a:0:{}s:17:\"upload_file_grant\";a:0:{}s:25:\"comment_upload_file_grant\";a:0:{}s:30:\"enable_default_component_grant\";a:0:{}s:38:\"enable_comment_default_component_grant\";a:0:{}s:22:\"enable_component_grant\";a:0:{}s:30:\"enable_comment_component_grant\";a:0:{}s:13:\"editor_height\";i:200;s:21:\"comment_editor_height\";i:0;s:15:\"enable_autosave\";s:1:\"N\";}','20230919112731');
INSERT INTO `xe_module_part_config` VALUES ('layout',138,'O:8:\"stdClass\":1:{s:13:\"header_script\";N;}','20230925143129');
INSERT INTO `xe_module_part_config` VALUES ('editor',144,'O:8:\"stdClass\":19:{s:11:\"editor_skin\";N;s:19:\"comment_editor_skin\";N;s:13:\"content_style\";N;s:21:\"comment_content_style\";N;s:12:\"content_font\";N;s:17:\"content_font_size\";N;s:19:\"sel_editor_colorset\";N;s:27:\"sel_comment_editor_colorset\";N;s:17:\"enable_html_grant\";a:0:{}s:25:\"enable_comment_html_grant\";a:0:{}s:17:\"upload_file_grant\";a:0:{}s:25:\"comment_upload_file_grant\";a:0:{}s:30:\"enable_default_component_grant\";a:0:{}s:38:\"enable_comment_default_component_grant\";a:0:{}s:22:\"enable_component_grant\";a:0:{}s:30:\"enable_comment_component_grant\";a:0:{}s:13:\"editor_height\";i:200;s:21:\"comment_editor_height\";i:0;s:15:\"enable_autosave\";s:1:\"N\";}','20230919113104');
INSERT INTO `xe_module_part_config` VALUES ('comment',169,'N;','20230919114414');
INSERT INTO `xe_module_part_config` VALUES ('document',169,'N;','20230919114414');
INSERT INTO `xe_module_part_config` VALUES ('editor',169,'N;','20230919114414');
INSERT INTO `xe_module_part_config` VALUES ('file',169,'N;','20230919114414');
INSERT INTO `xe_module_part_config` VALUES ('rss',169,'N;','20230919114414');
INSERT INTO `xe_module_part_config` VALUES ('comment',177,'N;','20230919115603');
INSERT INTO `xe_module_part_config` VALUES ('document',177,'N;','20230919115603');
INSERT INTO `xe_module_part_config` VALUES ('editor',177,'N;','20230919115603');
INSERT INTO `xe_module_part_config` VALUES ('file',177,'N;','20230919115603');
INSERT INTO `xe_module_part_config` VALUES ('rss',177,'N;','20230919115603');
INSERT INTO `xe_module_part_config` VALUES ('comment',180,'N;','20230919115753');
INSERT INTO `xe_module_part_config` VALUES ('document',180,'N;','20230919115753');
INSERT INTO `xe_module_part_config` VALUES ('editor',180,'N;','20230919115753');
INSERT INTO `xe_module_part_config` VALUES ('file',180,'N;','20230919115753');
INSERT INTO `xe_module_part_config` VALUES ('rss',180,'N;','20230919115753');
INSERT INTO `xe_module_part_config` VALUES ('editor',183,'O:8:\"stdClass\":19:{s:11:\"editor_skin\";N;s:19:\"comment_editor_skin\";N;s:13:\"content_style\";N;s:21:\"comment_content_style\";N;s:12:\"content_font\";N;s:17:\"content_font_size\";N;s:19:\"sel_editor_colorset\";N;s:27:\"sel_comment_editor_colorset\";N;s:17:\"enable_html_grant\";a:0:{}s:25:\"enable_comment_html_grant\";a:0:{}s:17:\"upload_file_grant\";a:0:{}s:25:\"comment_upload_file_grant\";a:0:{}s:30:\"enable_default_component_grant\";a:0:{}s:38:\"enable_comment_default_component_grant\";a:0:{}s:22:\"enable_component_grant\";a:0:{}s:30:\"enable_comment_component_grant\";a:0:{}s:13:\"editor_height\";i:200;s:21:\"comment_editor_height\";i:0;s:15:\"enable_autosave\";s:1:\"N\";}','20230925134913');
INSERT INTO `xe_module_part_config` VALUES ('comment',185,'N;','20230925134952');
INSERT INTO `xe_module_part_config` VALUES ('document',185,'N;','20230925134952');
INSERT INTO `xe_module_part_config` VALUES ('editor',185,'N;','20230925134952');
INSERT INTO `xe_module_part_config` VALUES ('file',185,'N;','20230925134952');
INSERT INTO `xe_module_part_config` VALUES ('rss',185,'N;','20230925134952');
INSERT INTO `xe_module_part_config` VALUES ('comment',187,'N;','20230925135553');
INSERT INTO `xe_module_part_config` VALUES ('document',187,'N;','20230925135553');
INSERT INTO `xe_module_part_config` VALUES ('editor',187,'N;','20230925135553');
INSERT INTO `xe_module_part_config` VALUES ('file',187,'N;','20230925135553');
INSERT INTO `xe_module_part_config` VALUES ('rss',187,'N;','20230925135553');
INSERT INTO `xe_module_part_config` VALUES ('comment',189,'N;','20230925140414');
INSERT INTO `xe_module_part_config` VALUES ('document',189,'N;','20230925140414');
INSERT INTO `xe_module_part_config` VALUES ('editor',189,'N;','20230925140414');
INSERT INTO `xe_module_part_config` VALUES ('file',189,'N;','20230925140414');
INSERT INTO `xe_module_part_config` VALUES ('rss',189,'N;','20230925140414');
INSERT INTO `xe_module_part_config` VALUES ('comment',191,'N;','20230925140534');
INSERT INTO `xe_module_part_config` VALUES ('document',191,'N;','20230925140534');
INSERT INTO `xe_module_part_config` VALUES ('editor',191,'N;','20230925140534');
INSERT INTO `xe_module_part_config` VALUES ('file',191,'N;','20230925140534');
INSERT INTO `xe_module_part_config` VALUES ('rss',191,'N;','20230925140534');
INSERT INTO `xe_module_part_config` VALUES ('comment',194,'N;','20230925140611');
INSERT INTO `xe_module_part_config` VALUES ('document',194,'N;','20230925140611');
INSERT INTO `xe_module_part_config` VALUES ('editor',194,'N;','20230925140611');
INSERT INTO `xe_module_part_config` VALUES ('file',194,'N;','20230925140611');
INSERT INTO `xe_module_part_config` VALUES ('rss',194,'N;','20230925140611');
INSERT INTO `xe_module_part_config` VALUES ('comment',196,'N;','20230925140704');
INSERT INTO `xe_module_part_config` VALUES ('document',196,'N;','20230925140704');
INSERT INTO `xe_module_part_config` VALUES ('editor',196,'N;','20230925140704');
INSERT INTO `xe_module_part_config` VALUES ('file',196,'N;','20230925140704');
INSERT INTO `xe_module_part_config` VALUES ('rss',196,'N;','20230925140704');
INSERT INTO `xe_module_part_config` VALUES ('comment',198,'N;','20230925140731');
INSERT INTO `xe_module_part_config` VALUES ('document',198,'N;','20230925140731');
INSERT INTO `xe_module_part_config` VALUES ('editor',198,'N;','20230925140731');
INSERT INTO `xe_module_part_config` VALUES ('file',198,'N;','20230925140731');
INSERT INTO `xe_module_part_config` VALUES ('rss',198,'N;','20230925140731');
INSERT INTO `xe_module_part_config` VALUES ('comment',200,'N;','20230925142002');
INSERT INTO `xe_module_part_config` VALUES ('document',200,'N;','20230925142002');
INSERT INTO `xe_module_part_config` VALUES ('editor',200,'N;','20230925142002');
INSERT INTO `xe_module_part_config` VALUES ('file',200,'N;','20230925142002');
INSERT INTO `xe_module_part_config` VALUES ('rss',200,'N;','20230925142002');
INSERT INTO `xe_module_part_config` VALUES ('comment',210,'N;','20230925142645');
INSERT INTO `xe_module_part_config` VALUES ('document',210,'N;','20230925142645');
INSERT INTO `xe_module_part_config` VALUES ('editor',210,'N;','20230925142645');
INSERT INTO `xe_module_part_config` VALUES ('file',210,'N;','20230925142645');
INSERT INTO `xe_module_part_config` VALUES ('rss',210,'N;','20230925142645');
INSERT INTO `xe_module_part_config` VALUES ('comment',212,'N;','20230925142724');
INSERT INTO `xe_module_part_config` VALUES ('document',212,'N;','20230925142724');
INSERT INTO `xe_module_part_config` VALUES ('editor',212,'N;','20230925142724');
INSERT INTO `xe_module_part_config` VALUES ('file',212,'N;','20230925142724');
INSERT INTO `xe_module_part_config` VALUES ('rss',212,'N;','20230925142724');
INSERT INTO `xe_module_part_config` VALUES ('comment',216,'N;','20230925142913');
INSERT INTO `xe_module_part_config` VALUES ('document',216,'N;','20230925142913');
INSERT INTO `xe_module_part_config` VALUES ('editor',216,'N;','20230925142913');
INSERT INTO `xe_module_part_config` VALUES ('file',216,'N;','20230925142913');
INSERT INTO `xe_module_part_config` VALUES ('rss',216,'N;','20230925142913');
INSERT INTO `xe_module_part_config` VALUES ('comment',218,'N;','20230925143002');
INSERT INTO `xe_module_part_config` VALUES ('document',218,'N;','20230925143002');
INSERT INTO `xe_module_part_config` VALUES ('editor',218,'N;','20230925143002');
INSERT INTO `xe_module_part_config` VALUES ('file',218,'N;','20230925143002');
INSERT INTO `xe_module_part_config` VALUES ('rss',218,'N;','20230925143002');
INSERT INTO `xe_module_part_config` VALUES ('comment',221,'N;','20230925143038');
INSERT INTO `xe_module_part_config` VALUES ('document',221,'N;','20230925143038');
INSERT INTO `xe_module_part_config` VALUES ('editor',221,'N;','20230925143038');
INSERT INTO `xe_module_part_config` VALUES ('file',221,'N;','20230925143038');
INSERT INTO `xe_module_part_config` VALUES ('rss',221,'N;','20230925143038');
INSERT INTO `xe_module_part_config` VALUES ('comment',223,'N;','20230925143053');
INSERT INTO `xe_module_part_config` VALUES ('document',223,'N;','20230925143053');
INSERT INTO `xe_module_part_config` VALUES ('editor',223,'N;','20230925143053');
INSERT INTO `xe_module_part_config` VALUES ('file',223,'N;','20230925143053');
INSERT INTO `xe_module_part_config` VALUES ('rss',223,'N;','20230925143053');
INSERT INTO `xe_module_part_config` VALUES ('layout',225,'O:8:\"stdClass\":1:{s:13:\"header_script\";N;}','20231115162330');
INSERT INTO `xe_module_part_config` VALUES ('board',216,'a:5:{i:0;s:2:\"no\";i:1;s:5:\"title\";i:2;s:9:\"nick_name\";i:3;s:7:\"regdate\";i:4;s:12:\"readed_count\";}','20231005143723');
INSERT INTO `xe_module_part_config` VALUES ('board',177,'a:4:{i:0;s:2:\"no\";i:1;s:7:\"regdate\";i:2;s:5:\"title\";i:3;s:9:\"user_name\";}','20231122145019');
INSERT INTO `xe_module_part_config` VALUES ('board',208,'a:4:{i:0;s:7:\"regdate\";i:1;s:5:\"title\";i:2;s:9:\"thumbnail\";i:3;s:2:\"no\";}','20231201113657');
INSERT INTO `xe_module_part_config` VALUES ('board',212,'a:4:{i:0;s:7:\"regdate\";i:1;s:5:\"title\";i:2;s:9:\"thumbnail\";i:3;s:2:\"no\";}','20231201141243');
INSERT INTO `xe_module_part_config` VALUES ('board',210,'a:4:{i:0;s:2:\"no\";i:1;s:5:\"title\";i:2;s:7:\"regdate\";i:3;s:9:\"thumbnail\";}','20231201140522');
INSERT INTO `xe_module_part_config` VALUES ('comment',285,'N;','20231102102358');
INSERT INTO `xe_module_part_config` VALUES ('document',285,'N;','20231102102358');
INSERT INTO `xe_module_part_config` VALUES ('editor',285,'N;','20231102102358');
INSERT INTO `xe_module_part_config` VALUES ('file',285,'N;','20231102102358');
INSERT INTO `xe_module_part_config` VALUES ('rss',285,'N;','20231102102358');
INSERT INTO `xe_module_part_config` VALUES ('comment',287,'N;','20231102102514');
INSERT INTO `xe_module_part_config` VALUES ('document',287,'N;','20231102102514');
INSERT INTO `xe_module_part_config` VALUES ('editor',287,'N;','20231102102514');
INSERT INTO `xe_module_part_config` VALUES ('file',287,'N;','20231102102514');
INSERT INTO `xe_module_part_config` VALUES ('rss',287,'N;','20231102102514');
INSERT INTO `xe_module_part_config` VALUES ('board',165,'a:3:{i:0;s:2:\"no\";i:1;s:5:\"title\";i:2;s:7:\"regdate\";}','20231108114526');
INSERT INTO `xe_module_part_config` VALUES ('editor',165,'O:8:\"stdClass\":19:{s:11:\"editor_skin\";s:8:\"ckeditor\";s:19:\"comment_editor_skin\";s:8:\"ckeditor\";s:13:\"content_style\";s:7:\"default\";s:21:\"comment_content_style\";s:7:\"default\";s:12:\"content_font\";s:27:\"\"Noto Sans KR\",\"sans-serif\"\";s:17:\"content_font_size\";s:4:\"16px\";s:19:\"sel_editor_colorset\";s:5:\"moono\";s:27:\"sel_comment_editor_colorset\";s:5:\"moono\";s:17:\"enable_html_grant\";a:0:{}s:25:\"enable_comment_html_grant\";a:0:{}s:17:\"upload_file_grant\";a:0:{}s:25:\"comment_upload_file_grant\";a:0:{}s:30:\"enable_default_component_grant\";a:0:{}s:38:\"enable_comment_default_component_grant\";a:0:{}s:22:\"enable_component_grant\";a:0:{}s:30:\"enable_comment_component_grant\";a:0:{}s:13:\"editor_height\";i:300;s:21:\"comment_editor_height\";i:100;s:15:\"enable_autosave\";s:1:\"Y\";}','20231108102047');
INSERT INTO `xe_module_part_config` VALUES ('comment',165,'O:8:\"stdClass\":4:{s:13:\"comment_count\";i:50;s:11:\"use_vote_up\";s:1:\"N\";s:13:\"use_vote_down\";s:1:\"N\";s:22:\"use_comment_validation\";s:1:\"N\";}','20231108121837');
INSERT INTO `xe_module_part_config` VALUES ('board',200,'a:5:{i:0;s:2:\"no\";i:1;s:5:\"title\";i:2;s:7:\"regdate\";i:3;s:7:\"summary\";i:4;s:9:\"thumbnail\";}','20231201120011');
INSERT INTO `xe_module_part_config` VALUES ('board',287,'a:4:{i:0;s:2:\"no\";i:1;s:5:\"title\";i:2;s:7:\"regdate\";i:3;s:7:\"summary\";}','20231201104704');
/*!40000 ALTER TABLE `xe_module_part_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_skins`
--

DROP TABLE IF EXISTS `xe_module_skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_skins` (
  `module_srl` bigint(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` text DEFAULT NULL,
  UNIQUE KEY `unique_module_skins` (`module_srl`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_skins`
--

LOCK TABLES `xe_module_skins` WRITE;
/*!40000 ALTER TABLE `xe_module_skins` DISABLE KEYS */;
INSERT INTO `xe_module_skins` VALUES (216,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (216,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (216,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (216,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (216,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (216,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (216,'default_style','gallery');
INSERT INTO `xe_module_skins` VALUES (216,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (216,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (216,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_viewdocumentlist','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_commentwrite','N');
INSERT INTO `xe_module_skins` VALUES (177,'default_style','list');
INSERT INTO `xe_module_skins` VALUES (177,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (177,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (177,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_viewdocumentlist','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_commentwrite','N');
INSERT INTO `xe_module_skins` VALUES (177,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (177,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (177,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (177,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (177,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (177,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (177,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (177,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (177,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (177,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (177,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (216,'display_bgStyle','Y');
INSERT INTO `xe_module_skins` VALUES (216,'display_thumbnailborder','N');
INSERT INTO `xe_module_skins` VALUES (216,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (216,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (216,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (226,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (226,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (226,'thumbnail_type','ratio');
INSERT INTO `xe_module_skins` VALUES (226,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (226,'display_thumbnailborder','N');
INSERT INTO `xe_module_skins` VALUES (226,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (226,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (226,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (212,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (226,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (226,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (226,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (226,'display_commentwrite','N');
INSERT INTO `xe_module_skins` VALUES (226,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (226,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (226,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (226,'default_style','gallery');
INSERT INTO `xe_module_skins` VALUES (226,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (226,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (226,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (226,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (212,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (212,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (212,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (212,'display_commentwrite','Y');
INSERT INTO `xe_module_skins` VALUES (212,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (212,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (212,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (212,'default_style','card');
INSERT INTO `xe_module_skins` VALUES (212,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (212,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (210,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (210,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (210,'display_commentwrite','Y');
INSERT INTO `xe_module_skins` VALUES (210,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (210,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (210,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (210,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (210,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (210,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (210,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (210,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (210,'default_style','card');
INSERT INTO `xe_module_skins` VALUES (210,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (210,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (210,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (210,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (210,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (210,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (165,'default_style','list');
INSERT INTO `xe_module_skins` VALUES (165,'display_categoryset_button','nonav');
INSERT INTO `xe_module_skins` VALUES (165,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (165,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_viewdocumentlist','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_commentwrite','N');
INSERT INTO `xe_module_skins` VALUES (165,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (165,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (165,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (165,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (165,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (165,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (165,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (165,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (165,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (165,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (165,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (208,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (208,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (208,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (208,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (208,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (208,'thumbnail_type','ratio');
INSERT INTO `xe_module_skins` VALUES (208,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (208,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (208,'default_style','card');
INSERT INTO `xe_module_skins` VALUES (208,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (208,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (208,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (208,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (208,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (210,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (200,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (200,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (200,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (200,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (200,'default_style','card');
INSERT INTO `xe_module_skins` VALUES (200,'display_categoryset_button','nonav');
INSERT INTO `xe_module_skins` VALUES (200,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (200,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (200,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (200,'display_commentwrite','N');
INSERT INTO `xe_module_skins` VALUES (200,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (200,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (200,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (200,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (287,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (287,'display_thumbnailnum','three');
INSERT INTO `xe_module_skins` VALUES (287,'search_view','B');
INSERT INTO `xe_module_skins` VALUES (287,'display_sign','N');
INSERT INTO `xe_module_skins` VALUES (287,'display_categoryset_badge','N');
INSERT INTO `xe_module_skins` VALUES (287,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (287,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (287,'display_commentwrite','Y');
INSERT INTO `xe_module_skins` VALUES (287,'cmt_wrt','simple');
INSERT INTO `xe_module_skins` VALUES (287,'default_style','list');
INSERT INTO `xe_module_skins` VALUES (287,'display_categoryset_button','pills');
INSERT INTO `xe_module_skins` VALUES (287,'display_photogallery','N');
INSERT INTO `xe_module_skins` VALUES (287,'display_setup_button','N');
INSERT INTO `xe_module_skins` VALUES (287,'display_listset_button','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (208,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (208,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (287,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (287,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (287,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (287,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (287,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (287,'display_videoplaydoc','Y');
INSERT INTO `xe_module_skins` VALUES (212,'display_bgStyle','N');
INSERT INTO `xe_module_skins` VALUES (212,'display_thumbnailborder','Y');
INSERT INTO `xe_module_skins` VALUES (212,'display_thumbnailcover','Y');
INSERT INTO `xe_module_skins` VALUES (212,'duration_new','24');
INSERT INTO `xe_module_skins` VALUES (208,'uploadFile','N');
INSERT INTO `xe_module_skins` VALUES (208,'display_viewdocumentlist','Y');
INSERT INTO `xe_module_skins` VALUES (208,'display_commentwrite','Y');
INSERT INTO `xe_module_skins` VALUES (200,'thumbnail_type','crop');
INSERT INTO `xe_module_skins` VALUES (210,'display_videoplaydocname','Y');
INSERT INTO `xe_module_skins` VALUES (208,'display_videoplaydocname','Y');
/*!40000 ALTER TABLE `xe_module_skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_trigger`
--

DROP TABLE IF EXISTS `xe_module_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_trigger` (
  `trigger_name` varchar(80) NOT NULL,
  `called_position` varchar(15) NOT NULL,
  `module` varchar(80) NOT NULL,
  `type` varchar(15) NOT NULL,
  `called_method` varchar(80) NOT NULL,
  UNIQUE KEY `idx_trigger` (`trigger_name`,`called_position`,`module`,`type`,`called_method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_trigger`
--

LOCK TABLES `xe_module_trigger` WRITE;
/*!40000 ALTER TABLE `xe_module_trigger` DISABLE KEYS */;
INSERT INTO `xe_module_trigger` VALUES ('comment.deleteComment','after','file','controller','triggerCommentDeleteAttached');
INSERT INTO `xe_module_trigger` VALUES ('comment.deleteComment','after','poll','controller','triggerDeleteCommentPoll');
INSERT INTO `xe_module_trigger` VALUES ('comment.deleteComment','after','supercache','controller','triggerAfterDeleteComment');
INSERT INTO `xe_module_trigger` VALUES ('comment.deleteComment','before','imageprocess','controller','triggerDeleteComment');
INSERT INTO `xe_module_trigger` VALUES ('comment.getCommentMenu','after','member','controller','triggerGetCommentMenu');
INSERT INTO `xe_module_trigger` VALUES ('comment.insertComment','after','file','controller','triggerCommentAttachFiles');
INSERT INTO `xe_module_trigger` VALUES ('comment.insertComment','after','poll','controller','triggerInsertCommentPoll');
INSERT INTO `xe_module_trigger` VALUES ('comment.insertComment','after','supercache','controller','triggerAfterInsertComment');
INSERT INTO `xe_module_trigger` VALUES ('comment.insertComment','before','file','controller','triggerCommentCheckAttached');
INSERT INTO `xe_module_trigger` VALUES ('comment.insertComment','before','spamfilter','controller','triggerInsertComment');
INSERT INTO `xe_module_trigger` VALUES ('comment.updateComment','after','file','controller','triggerCommentAttachFiles');
INSERT INTO `xe_module_trigger` VALUES ('comment.updateComment','after','poll','controller','triggerUpdateCommentPoll');
INSERT INTO `xe_module_trigger` VALUES ('comment.updateComment','after','supercache','controller','triggerAfterUpdateComment');
INSERT INTO `xe_module_trigger` VALUES ('comment.updateComment','before','file','controller','triggerCommentCheckAttached');
INSERT INTO `xe_module_trigger` VALUES ('comment.updateComment','before','spamfilter','controller','triggerInsertComment');
INSERT INTO `xe_module_trigger` VALUES ('communication.sendMessage','before','spamfilter','controller','triggerSendMessage');
INSERT INTO `xe_module_trigger` VALUES ('display','after','supercache','controller','triggerAfterDisplay');
INSERT INTO `xe_module_trigger` VALUES ('display','before','editor','controller','triggerEditorComponentCompile');
INSERT INTO `xe_module_trigger` VALUES ('display','before','seo','controller','triggerBeforeDisplay');
INSERT INTO `xe_module_trigger` VALUES ('display','before','supercache','controller','triggerBeforeDisplay');
INSERT INTO `xe_module_trigger` VALUES ('display','before','widget','controller','triggerWidgetCompile');
INSERT INTO `xe_module_trigger` VALUES ('document.copyDocumentModule','after','supercache','controller','triggerAfterCopyDocumentModule');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','comment','controller','triggerDeleteDocumentComments');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','file','controller','triggerDeleteAttached');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','poll','controller','triggerDeleteDocumentPoll');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','seo','controller','triggerAfterDocumentDeleteDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','supercache','controller','triggerAfterDeleteDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','after','tag','controller','triggerDeleteTag');
INSERT INTO `xe_module_trigger` VALUES ('document.deleteDocument','before','imageprocess','controller','triggerDeleteDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.getDocumentList','after','supercache','controller','triggerAfterGetDocumentList');
INSERT INTO `xe_module_trigger` VALUES ('document.getDocumentList','before','supercache','controller','triggerBeforeGetDocumentList');
INSERT INTO `xe_module_trigger` VALUES ('document.getDocumentMenu','after','member','controller','triggerGetDocumentMenu');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','after','editor','controller','triggerDeleteSavedDoc');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','after','file','controller','triggerAttachFiles');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','after','poll','controller','triggerInsertDocumentPoll');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','after','supercache','controller','triggerAfterInsertDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','after','tag','controller','triggerInsertTag');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','before','file','controller','triggerCheckAttached');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','before','spamfilter','controller','triggerInsertDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.insertDocument','before','tag','controller','triggerArrangeTag');
INSERT INTO `xe_module_trigger` VALUES ('document.moveDocumentModule','after','supercache','controller','triggerAfterMoveDocumentModule');
INSERT INTO `xe_module_trigger` VALUES ('document.moveDocumentModule','before','imageprocess','controller','triggerMoveDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.moveDocumentToTrash','after','supercache','controller','triggerAfterMoveDocumentToTrash');
INSERT INTO `xe_module_trigger` VALUES ('document.restoreTrash','after','supercache','controller','triggerAfterRestoreDocumentFromTrash');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','editor','controller','triggerDeleteSavedDoc');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','file','controller','triggerAttachFiles');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','poll','controller','triggerUpdateDocumentPoll');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','seo','controller','triggerAfterDocumentUpdateDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','supercache','controller','triggerAfterUpdateDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','after','tag','controller','triggerInsertTag');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','before','file','controller','triggerCheckAttached');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','before','spamfilter','controller','triggerInsertDocument');
INSERT INTO `xe_module_trigger` VALUES ('document.updateDocument','before','tag','controller','triggerArrangeTag');
INSERT INTO `xe_module_trigger` VALUES ('editor.deleteSavedDoc','after','file','controller','triggerDeleteAttached');
INSERT INTO `xe_module_trigger` VALUES ('file.deleteFile','after','imageprocess','controller','triggerDeleteFile');
INSERT INTO `xe_module_trigger` VALUES ('file.deleteFile','after','seo','controller','triggerAfterFileDeleteFile');
INSERT INTO `xe_module_trigger` VALUES ('file.downloadFile','before','imageprocess','controller','triggerDownloadFile');
INSERT INTO `xe_module_trigger` VALUES ('file.insertFile','after','imageprocess','controller','triggerInsertFile');
INSERT INTO `xe_module_trigger` VALUES ('member.getMemberMenu','after','board','controller','triggerMemberMenu');
INSERT INTO `xe_module_trigger` VALUES ('menu.getModuleListInSitemap','after','board','model','triggerModuleListInSitemap');
INSERT INTO `xe_module_trigger` VALUES ('menu.getModuleListInSitemap','after','youtube','model','triggerModuleListInSitemap');
INSERT INTO `xe_module_trigger` VALUES ('module.deleteModule','after','comment','controller','triggerDeleteModuleComments');
INSERT INTO `xe_module_trigger` VALUES ('module.deleteModule','after','document','controller','triggerDeleteModuleDocuments');
INSERT INTO `xe_module_trigger` VALUES ('module.deleteModule','after','file','controller','triggerDeleteModuleFiles');
INSERT INTO `xe_module_trigger` VALUES ('module.deleteModule','after','tag','controller','triggerDeleteModuleTags');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','comment','view','triggerDispCommentAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','document','view','triggerDispDocumentAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','editor','view','triggerDispEditorAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','file','view','triggerDispFileAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','imageprocess','view','triggerDispImageprocessAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','rss','view','triggerDispRssAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.dispAdditionSetup','before','seo','view','triggerDispSeoAdditionSetup');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','comment','controller','triggerCopyModule');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','document','controller','triggerCopyModule');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','document','controller','triggerCopyModuleExtraKeys');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','editor','controller','triggerCopyModule');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','file','controller','triggerCopyModule');
INSERT INTO `xe_module_trigger` VALUES ('module.procModuleAdminCopyModule','after','rss','controller','triggerCopyModule');
INSERT INTO `xe_module_trigger` VALUES ('moduleHandler.init','after','supercache','controller','triggerAfterModuleHandlerInit');
INSERT INTO `xe_module_trigger` VALUES ('moduleHandler.init','before','supercache','controller','triggerBeforeModuleHandlerInit');
INSERT INTO `xe_module_trigger` VALUES ('moduleHandler.proc','after','rss','controller','triggerRssUrlInsert');
INSERT INTO `xe_module_trigger` VALUES ('moduleHandler.proc','after','supercache','controller','triggerAfterModuleHandlerProc');
INSERT INTO `xe_module_trigger` VALUES ('trackback.insertTrackback','before','spamfilter','controller','triggerInsertTrackback');
/*!40000 ALTER TABLE `xe_module_trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_module_update`
--

DROP TABLE IF EXISTS `xe_module_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_module_update` (
  `update_id` varchar(250) NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_module_update`
--

LOCK TABLES `xe_module_update` WRITE;
/*!40000 ALTER TABLE `xe_module_update` DISABLE KEYS */;
INSERT INTO `xe_module_update` VALUES ('addon.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('admin.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('autoinstall.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('board.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('comment.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('communication.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('counter.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('document.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('editor.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('file.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('integration_search.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('layout.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('member.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('member.1.8.43.recreate_signup_ruleset');
INSERT INTO `xe_module_update` VALUES ('menu.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('message.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('module.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('page.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('poll.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('rss.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('session.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('spamfilter.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('tag.1.11.6.updated');
INSERT INTO `xe_module_update` VALUES ('widget.1.11.6.updated');
/*!40000 ALTER TABLE `xe_module_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_modules`
--

DROP TABLE IF EXISTS `xe_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_modules` (
  `module_srl` bigint(11) NOT NULL,
  `module` varchar(80) NOT NULL,
  `module_category_srl` bigint(11) DEFAULT 0,
  `layout_srl` bigint(11) DEFAULT 0,
  `use_mobile` char(1) DEFAULT 'N',
  `mlayout_srl` bigint(11) DEFAULT 0,
  `menu_srl` bigint(11) DEFAULT 0,
  `site_srl` bigint(11) NOT NULL DEFAULT 0,
  `mid` varchar(40) NOT NULL,
  `is_skin_fix` char(1) NOT NULL DEFAULT 'Y',
  `skin` varchar(250) DEFAULT NULL,
  `is_mskin_fix` char(1) NOT NULL DEFAULT 'Y',
  `mskin` varchar(250) DEFAULT NULL,
  `browser_title` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `content` longtext DEFAULT NULL,
  `mcontent` longtext DEFAULT NULL,
  `open_rss` char(1) NOT NULL DEFAULT 'Y',
  `header_text` text DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`module_srl`),
  UNIQUE KEY `idx_site_mid` (`site_srl`,`mid`),
  KEY `idx_module` (`module`),
  KEY `idx_module_category` (`module_category_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_modules`
--

LOCK TABLES `xe_modules` WRITE;
/*!40000 ALTER TABLE `xe_modules` DISABLE KEYS */;
INSERT INTO `xe_modules` VALUES (71,'page',0,-1,'Y',-1,70,0,'index','N','/USE_DEFAULT/','N','/USE_DEFAULT/','세계로선교회','','N','<img hasContent=\"true\" class=\"zbxe_widget_output\" widget=\"widgetContent\" style=\"width: 100%; float: left;\" body=\"\" document_srl=\"96\" widget_padding_left=\"0\" widget_padding_right=\"0\" widget_padding_top=\"0\" widget_padding_bottom=\"0\"  />','<img hasContent=\"true\" class=\"zbxe_widget_output\" widget=\"widgetContent\" style=\"width: 100%; float: left;\" body=\"\" document_srl=\"97\" widget_padding_left=\"0\" widget_padding_right=\"0\" widget_padding_top=\"0\" widget_padding_bottom=\"0\"  />','Y','','','20230919112543');
INSERT INTO `xe_modules` VALUES (177,'board',0,-1,'N',-1,151,0,'sub05_01','Y','KSO_v1','Y','default','세계로 소식','','N',NULL,NULL,'Y','','','20230919115603');
INSERT INTO `xe_modules` VALUES (154,'page',0,-1,'N',-1,151,0,'sub01_02','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','세계로 발자취','','N',NULL,NULL,'Y','','','20230919113431');
INSERT INTO `xe_modules` VALUES (156,'page',0,-1,'N',-1,151,0,'sub01_03','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','유동근 목사','','N',NULL,NULL,'Y','','','20230919113556');
INSERT INTO `xe_modules` VALUES (158,'page',0,-1,'N',-1,151,0,'sub01_05','N','/USE_DEFAULT/','N','/USE_DEFAULT/','비전센터소개','','N',NULL,NULL,'Y','','','20230919113614');
INSERT INTO `xe_modules` VALUES (160,'page',0,-1,'N',-1,151,0,'sub01_06','N','/USE_DEFAULT/','N','/USE_DEFAULT/','예배·모임안내','','N',NULL,NULL,'Y','','','20230919113627');
INSERT INTO `xe_modules` VALUES (162,'page',0,-1,'N',-1,151,0,'sub01_07','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','오시는 길','','N',NULL,NULL,'Y','','','20230919113817');
INSERT INTO `xe_modules` VALUES (165,'board',0,-1,'N',-1,151,0,'sub03_03','Y','KSO_v1','N','/USE_DEFAULT/','기도편지','','N',NULL,NULL,'Y','','','20230919114333');
INSERT INTO `xe_modules` VALUES (208,'board',0,-1,'N',-1,151,0,'sub04_01','Y','KSO','N','/USE_DEFAULT/','주일예배','','N',NULL,NULL,'Y','','','20230925142640');
INSERT INTO `xe_modules` VALUES (171,'page',0,-1,'N',-1,151,0,'sub02_01','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','새가족 안내','','N',NULL,NULL,'Y','','','20230919115417');
INSERT INTO `xe_modules` VALUES (152,'page',0,-1,'N',-1,151,0,'sub01_01','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','세계로선교회 소개','','N',NULL,NULL,'Y','','','20230919113403');
INSERT INTO `xe_modules` VALUES (216,'board',0,-1,'N',-1,151,0,'sub05_02','Y','KSO','Y','default','세계로 앨범','','N',NULL,NULL,'Y','','','20230925142913');
INSERT INTO `xe_modules` VALUES (183,'popup',0,0,'N',0,182,0,'popup','Y',NULL,'Y',NULL,'popup',NULL,'N',NULL,NULL,'Y',NULL,NULL,'20230925134913');
INSERT INTO `xe_modules` VALUES (185,'page',0,-1,'N',-1,151,0,'sub01_04','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','섬기는 이들','','N',NULL,NULL,'Y','','','20230925134952');
INSERT INTO `xe_modules` VALUES (187,'page',0,-1,'N',-1,151,0,'sub02_02','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','목장','','N',NULL,NULL,'Y','','','20230925135553');
INSERT INTO `xe_modules` VALUES (189,'page',0,-1,'N',-1,151,0,'sub02_0301','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','청년 캠퍼스','','N',NULL,NULL,'Y','','','20230925140414');
INSERT INTO `xe_modules` VALUES (194,'page',0,-1,'N',-1,151,0,'sub02_0302','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','엘틴 캠퍼스','','N',NULL,NULL,'Y','','','20230925140611');
INSERT INTO `xe_modules` VALUES (196,'page',0,-1,'N',-1,151,0,'sub02_0303','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','주니어 캠퍼스','','N',NULL,NULL,'Y','','','20230925140704');
INSERT INTO `xe_modules` VALUES (198,'page',0,-1,'N',-1,151,0,'sub02_0304','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','O2솔로몬아카데미','','N',NULL,NULL,'Y','','','20230925140731');
INSERT INTO `xe_modules` VALUES (200,'board',0,-1,'N',-1,151,0,'sub03_04','Y','KSO_v1','N','/USE_DEFAULT/','선교의 현장','','N',NULL,NULL,'Y','','','20230925142002');
INSERT INTO `xe_modules` VALUES (228,'page',0,-1,'N',-1,151,0,'sub03_01','N','/USE_DEFAULT/','N','/USE_DEFAULT/','세계선교의 비전·발자취','','N',NULL,NULL,'Y','','','20231004135930');
INSERT INTO `xe_modules` VALUES (210,'board',0,-1,'N',-1,151,0,'sub04_02','Y','KSO','Y','default','집회 · 세미나','','N',NULL,NULL,'Y','','','20230925142645');
INSERT INTO `xe_modules` VALUES (212,'board',0,-1,'N',-1,151,0,'sub04_03','Y','KSO','Y','default','세계로 영상','','N',NULL,NULL,'Y','','','20230925142724');
INSERT INTO `xe_modules` VALUES (214,'board',0,-1,'N',-1,151,0,'sub04_04','N',NULL,'N',NULL,'나의 신앙',NULL,'N',NULL,NULL,'Y',NULL,NULL,'20230925142801');
INSERT INTO `xe_modules` VALUES (218,'board',0,-1,'N',-1,182,0,'sub05_03','Y',NULL,'Y',NULL,'통통성경일독학교','','N',NULL,NULL,'Y','','','20230925143002');
INSERT INTO `xe_modules` VALUES (223,'board',0,-1,'N',-1,182,0,'sub05_04','Y',NULL,'Y',NULL,'쉐마교육','','N',NULL,NULL,'Y','','','20230925143053');
INSERT INTO `xe_modules` VALUES (226,'board',0,-1,'N',-1,151,0,'sub02_0305','N',NULL,'N',NULL,'다음세대 광장',NULL,'N',NULL,NULL,'Y',NULL,NULL,'20231004135726');
INSERT INTO `xe_modules` VALUES (285,'page',0,-1,'N',-1,151,0,'sub03_02','Y','/USE_DEFAULT/','Y','/USE_DEFAULT/','선교사 파송현황','','N',NULL,NULL,'Y','','','20231102102357');
INSERT INTO `xe_modules` VALUES (287,'board',0,-1,'N',-1,151,0,'sub03_05','Y','KSO_v1','N','/USE_DEFAULT/','선교적 유산(변희관목사)','','N',NULL,NULL,'Y','','','20231102102514');
/*!40000 ALTER TABLE `xe_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_point`
--

DROP TABLE IF EXISTS `xe_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_point` (
  `member_srl` bigint(11) NOT NULL,
  `point` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`member_srl`),
  KEY `idx_point` (`point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_point`
--

LOCK TABLES `xe_point` WRITE;
/*!40000 ALTER TABLE `xe_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_poll`
--

DROP TABLE IF EXISTS `xe_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_poll` (
  `poll_srl` bigint(11) NOT NULL,
  `stop_date` varchar(14) DEFAULT NULL,
  `upload_target_srl` bigint(11) NOT NULL,
  `poll_count` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  PRIMARY KEY (`poll_srl`),
  KEY `idx_upload_target_srl` (`upload_target_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_poll`
--

LOCK TABLES `xe_poll` WRITE;
/*!40000 ALTER TABLE `xe_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_poll_item`
--

DROP TABLE IF EXISTS `xe_poll_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_poll_item` (
  `poll_item_srl` bigint(11) NOT NULL,
  `poll_srl` bigint(11) NOT NULL,
  `poll_index_srl` bigint(11) NOT NULL,
  `upload_target_srl` bigint(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `poll_count` bigint(11) NOT NULL,
  PRIMARY KEY (`poll_item_srl`),
  KEY `index_poll_srl` (`poll_srl`),
  KEY `idx_poll_index_srl` (`poll_index_srl`),
  KEY `idx_upload_target_srl` (`upload_target_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_poll_item`
--

LOCK TABLES `xe_poll_item` WRITE;
/*!40000 ALTER TABLE `xe_poll_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_poll_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_poll_log`
--

DROP TABLE IF EXISTS `xe_poll_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_poll_log` (
  `poll_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  KEY `idx_poll_srl` (`poll_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_poll_log`
--

LOCK TABLES `xe_poll_log` WRITE;
/*!40000 ALTER TABLE `xe_poll_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_poll_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_poll_title`
--

DROP TABLE IF EXISTS `xe_poll_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_poll_title` (
  `poll_srl` bigint(11) NOT NULL,
  `poll_index_srl` bigint(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `checkcount` bigint(11) NOT NULL DEFAULT 1,
  `poll_count` bigint(11) NOT NULL,
  `upload_target_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `list_order` bigint(11) NOT NULL,
  KEY `idx_poll_srl` (`poll_srl`,`poll_index_srl`),
  KEY `idx_upload_target_srl` (`upload_target_srl`),
  KEY `idx_member_srl` (`member_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_list_order` (`list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_poll_title`
--

LOCK TABLES `xe_poll_title` WRITE;
/*!40000 ALTER TABLE `xe_poll_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_poll_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_popup`
--

DROP TABLE IF EXISTS `xe_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_popup` (
  `popup_srl` bigint(11) NOT NULL,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `popup_title` varchar(250) NOT NULL DEFAULT '',
  `target_type` varchar(20) DEFAULT NULL,
  `target_srl` bigint(11) DEFAULT NULL,
  `popup_type` varchar(20) NOT NULL DEFAULT 'content',
  `popup_url` varchar(200) DEFAULT NULL,
  `popup_link` varchar(200) DEFAULT NULL,
  `popup_link_type` varchar(10) NOT NULL DEFAULT 'N',
  `start_date` varchar(14) DEFAULT NULL,
  `end_date` varchar(14) DEFAULT NULL,
  `width` bigint(4) DEFAULT NULL,
  `height` bigint(4) DEFAULT NULL,
  `top` bigint(4) DEFAULT NULL,
  `left` bigint(4) DEFAULT NULL,
  `exp_days` bigint(3) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  `open_type` varchar(10) DEFAULT 'inner',
  `target_actions` varchar(250) DEFAULT NULL,
  `popup_style` varchar(20) DEFAULT NULL,
  `popup_checkbox` varchar(10) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`popup_srl`),
  KEY `idx_document_srl` (`document_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_popup`
--

LOCK TABLES `xe_popup` WRITE;
/*!40000 ALTER TABLE `xe_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_sequence`
--

DROP TABLE IF EXISTS `xe_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_sequence` (
  `seq` bigint(64) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_sequence`
--

LOCK TABLES `xe_sequence` WRITE;
/*!40000 ALTER TABLE `xe_sequence` DISABLE KEYS */;
INSERT INTO `xe_sequence` VALUES (1);
INSERT INTO `xe_sequence` VALUES (2);
INSERT INTO `xe_sequence` VALUES (3);
INSERT INTO `xe_sequence` VALUES (4);
INSERT INTO `xe_sequence` VALUES (5);
INSERT INTO `xe_sequence` VALUES (6);
INSERT INTO `xe_sequence` VALUES (7);
INSERT INTO `xe_sequence` VALUES (8);
INSERT INTO `xe_sequence` VALUES (9);
INSERT INTO `xe_sequence` VALUES (10);
INSERT INTO `xe_sequence` VALUES (11);
INSERT INTO `xe_sequence` VALUES (12);
INSERT INTO `xe_sequence` VALUES (13);
INSERT INTO `xe_sequence` VALUES (14);
INSERT INTO `xe_sequence` VALUES (15);
INSERT INTO `xe_sequence` VALUES (16);
INSERT INTO `xe_sequence` VALUES (17);
INSERT INTO `xe_sequence` VALUES (18);
INSERT INTO `xe_sequence` VALUES (19);
INSERT INTO `xe_sequence` VALUES (20);
INSERT INTO `xe_sequence` VALUES (21);
INSERT INTO `xe_sequence` VALUES (22);
INSERT INTO `xe_sequence` VALUES (23);
INSERT INTO `xe_sequence` VALUES (24);
INSERT INTO `xe_sequence` VALUES (25);
INSERT INTO `xe_sequence` VALUES (26);
INSERT INTO `xe_sequence` VALUES (27);
INSERT INTO `xe_sequence` VALUES (28);
INSERT INTO `xe_sequence` VALUES (29);
INSERT INTO `xe_sequence` VALUES (30);
INSERT INTO `xe_sequence` VALUES (31);
INSERT INTO `xe_sequence` VALUES (32);
INSERT INTO `xe_sequence` VALUES (33);
INSERT INTO `xe_sequence` VALUES (34);
INSERT INTO `xe_sequence` VALUES (35);
INSERT INTO `xe_sequence` VALUES (36);
INSERT INTO `xe_sequence` VALUES (37);
INSERT INTO `xe_sequence` VALUES (38);
INSERT INTO `xe_sequence` VALUES (39);
INSERT INTO `xe_sequence` VALUES (40);
INSERT INTO `xe_sequence` VALUES (41);
INSERT INTO `xe_sequence` VALUES (42);
INSERT INTO `xe_sequence` VALUES (43);
INSERT INTO `xe_sequence` VALUES (44);
INSERT INTO `xe_sequence` VALUES (45);
INSERT INTO `xe_sequence` VALUES (46);
INSERT INTO `xe_sequence` VALUES (47);
INSERT INTO `xe_sequence` VALUES (48);
INSERT INTO `xe_sequence` VALUES (49);
INSERT INTO `xe_sequence` VALUES (50);
INSERT INTO `xe_sequence` VALUES (51);
INSERT INTO `xe_sequence` VALUES (52);
INSERT INTO `xe_sequence` VALUES (53);
INSERT INTO `xe_sequence` VALUES (54);
INSERT INTO `xe_sequence` VALUES (55);
INSERT INTO `xe_sequence` VALUES (56);
INSERT INTO `xe_sequence` VALUES (57);
INSERT INTO `xe_sequence` VALUES (58);
INSERT INTO `xe_sequence` VALUES (59);
INSERT INTO `xe_sequence` VALUES (60);
INSERT INTO `xe_sequence` VALUES (61);
INSERT INTO `xe_sequence` VALUES (62);
INSERT INTO `xe_sequence` VALUES (63);
INSERT INTO `xe_sequence` VALUES (64);
INSERT INTO `xe_sequence` VALUES (65);
INSERT INTO `xe_sequence` VALUES (66);
INSERT INTO `xe_sequence` VALUES (67);
INSERT INTO `xe_sequence` VALUES (68);
INSERT INTO `xe_sequence` VALUES (69);
INSERT INTO `xe_sequence` VALUES (70);
INSERT INTO `xe_sequence` VALUES (71);
INSERT INTO `xe_sequence` VALUES (72);
INSERT INTO `xe_sequence` VALUES (73);
INSERT INTO `xe_sequence` VALUES (74);
INSERT INTO `xe_sequence` VALUES (75);
INSERT INTO `xe_sequence` VALUES (76);
INSERT INTO `xe_sequence` VALUES (77);
INSERT INTO `xe_sequence` VALUES (78);
INSERT INTO `xe_sequence` VALUES (79);
INSERT INTO `xe_sequence` VALUES (80);
INSERT INTO `xe_sequence` VALUES (81);
INSERT INTO `xe_sequence` VALUES (82);
INSERT INTO `xe_sequence` VALUES (83);
INSERT INTO `xe_sequence` VALUES (84);
INSERT INTO `xe_sequence` VALUES (85);
INSERT INTO `xe_sequence` VALUES (86);
INSERT INTO `xe_sequence` VALUES (87);
INSERT INTO `xe_sequence` VALUES (88);
INSERT INTO `xe_sequence` VALUES (89);
INSERT INTO `xe_sequence` VALUES (90);
INSERT INTO `xe_sequence` VALUES (91);
INSERT INTO `xe_sequence` VALUES (92);
INSERT INTO `xe_sequence` VALUES (93);
INSERT INTO `xe_sequence` VALUES (94);
INSERT INTO `xe_sequence` VALUES (95);
INSERT INTO `xe_sequence` VALUES (96);
INSERT INTO `xe_sequence` VALUES (97);
INSERT INTO `xe_sequence` VALUES (98);
INSERT INTO `xe_sequence` VALUES (99);
INSERT INTO `xe_sequence` VALUES (100);
INSERT INTO `xe_sequence` VALUES (101);
INSERT INTO `xe_sequence` VALUES (102);
INSERT INTO `xe_sequence` VALUES (103);
INSERT INTO `xe_sequence` VALUES (104);
INSERT INTO `xe_sequence` VALUES (105);
INSERT INTO `xe_sequence` VALUES (106);
INSERT INTO `xe_sequence` VALUES (107);
INSERT INTO `xe_sequence` VALUES (108);
INSERT INTO `xe_sequence` VALUES (109);
INSERT INTO `xe_sequence` VALUES (110);
INSERT INTO `xe_sequence` VALUES (111);
INSERT INTO `xe_sequence` VALUES (112);
INSERT INTO `xe_sequence` VALUES (113);
INSERT INTO `xe_sequence` VALUES (114);
INSERT INTO `xe_sequence` VALUES (115);
INSERT INTO `xe_sequence` VALUES (116);
INSERT INTO `xe_sequence` VALUES (117);
INSERT INTO `xe_sequence` VALUES (118);
INSERT INTO `xe_sequence` VALUES (119);
INSERT INTO `xe_sequence` VALUES (120);
INSERT INTO `xe_sequence` VALUES (121);
INSERT INTO `xe_sequence` VALUES (122);
INSERT INTO `xe_sequence` VALUES (123);
INSERT INTO `xe_sequence` VALUES (124);
INSERT INTO `xe_sequence` VALUES (125);
INSERT INTO `xe_sequence` VALUES (126);
INSERT INTO `xe_sequence` VALUES (127);
INSERT INTO `xe_sequence` VALUES (128);
INSERT INTO `xe_sequence` VALUES (129);
INSERT INTO `xe_sequence` VALUES (130);
INSERT INTO `xe_sequence` VALUES (131);
INSERT INTO `xe_sequence` VALUES (132);
INSERT INTO `xe_sequence` VALUES (133);
INSERT INTO `xe_sequence` VALUES (134);
INSERT INTO `xe_sequence` VALUES (135);
INSERT INTO `xe_sequence` VALUES (136);
INSERT INTO `xe_sequence` VALUES (137);
INSERT INTO `xe_sequence` VALUES (138);
INSERT INTO `xe_sequence` VALUES (139);
INSERT INTO `xe_sequence` VALUES (140);
INSERT INTO `xe_sequence` VALUES (141);
INSERT INTO `xe_sequence` VALUES (142);
INSERT INTO `xe_sequence` VALUES (143);
INSERT INTO `xe_sequence` VALUES (144);
INSERT INTO `xe_sequence` VALUES (145);
INSERT INTO `xe_sequence` VALUES (146);
INSERT INTO `xe_sequence` VALUES (147);
INSERT INTO `xe_sequence` VALUES (148);
INSERT INTO `xe_sequence` VALUES (149);
INSERT INTO `xe_sequence` VALUES (150);
INSERT INTO `xe_sequence` VALUES (151);
INSERT INTO `xe_sequence` VALUES (152);
INSERT INTO `xe_sequence` VALUES (153);
INSERT INTO `xe_sequence` VALUES (154);
INSERT INTO `xe_sequence` VALUES (155);
INSERT INTO `xe_sequence` VALUES (156);
INSERT INTO `xe_sequence` VALUES (157);
INSERT INTO `xe_sequence` VALUES (158);
INSERT INTO `xe_sequence` VALUES (159);
INSERT INTO `xe_sequence` VALUES (160);
INSERT INTO `xe_sequence` VALUES (161);
INSERT INTO `xe_sequence` VALUES (162);
INSERT INTO `xe_sequence` VALUES (163);
INSERT INTO `xe_sequence` VALUES (164);
INSERT INTO `xe_sequence` VALUES (165);
INSERT INTO `xe_sequence` VALUES (166);
INSERT INTO `xe_sequence` VALUES (167);
INSERT INTO `xe_sequence` VALUES (168);
INSERT INTO `xe_sequence` VALUES (169);
INSERT INTO `xe_sequence` VALUES (170);
INSERT INTO `xe_sequence` VALUES (171);
INSERT INTO `xe_sequence` VALUES (172);
INSERT INTO `xe_sequence` VALUES (173);
INSERT INTO `xe_sequence` VALUES (174);
INSERT INTO `xe_sequence` VALUES (175);
INSERT INTO `xe_sequence` VALUES (176);
INSERT INTO `xe_sequence` VALUES (177);
INSERT INTO `xe_sequence` VALUES (178);
INSERT INTO `xe_sequence` VALUES (179);
INSERT INTO `xe_sequence` VALUES (180);
INSERT INTO `xe_sequence` VALUES (181);
INSERT INTO `xe_sequence` VALUES (182);
INSERT INTO `xe_sequence` VALUES (183);
INSERT INTO `xe_sequence` VALUES (184);
INSERT INTO `xe_sequence` VALUES (185);
INSERT INTO `xe_sequence` VALUES (186);
INSERT INTO `xe_sequence` VALUES (187);
INSERT INTO `xe_sequence` VALUES (188);
INSERT INTO `xe_sequence` VALUES (189);
INSERT INTO `xe_sequence` VALUES (190);
INSERT INTO `xe_sequence` VALUES (191);
INSERT INTO `xe_sequence` VALUES (192);
INSERT INTO `xe_sequence` VALUES (193);
INSERT INTO `xe_sequence` VALUES (194);
INSERT INTO `xe_sequence` VALUES (195);
INSERT INTO `xe_sequence` VALUES (196);
INSERT INTO `xe_sequence` VALUES (197);
INSERT INTO `xe_sequence` VALUES (198);
INSERT INTO `xe_sequence` VALUES (199);
INSERT INTO `xe_sequence` VALUES (200);
INSERT INTO `xe_sequence` VALUES (201);
INSERT INTO `xe_sequence` VALUES (202);
INSERT INTO `xe_sequence` VALUES (203);
INSERT INTO `xe_sequence` VALUES (204);
INSERT INTO `xe_sequence` VALUES (205);
INSERT INTO `xe_sequence` VALUES (206);
INSERT INTO `xe_sequence` VALUES (207);
INSERT INTO `xe_sequence` VALUES (208);
INSERT INTO `xe_sequence` VALUES (209);
INSERT INTO `xe_sequence` VALUES (210);
INSERT INTO `xe_sequence` VALUES (211);
INSERT INTO `xe_sequence` VALUES (212);
INSERT INTO `xe_sequence` VALUES (213);
INSERT INTO `xe_sequence` VALUES (214);
INSERT INTO `xe_sequence` VALUES (215);
INSERT INTO `xe_sequence` VALUES (216);
INSERT INTO `xe_sequence` VALUES (217);
INSERT INTO `xe_sequence` VALUES (218);
INSERT INTO `xe_sequence` VALUES (219);
INSERT INTO `xe_sequence` VALUES (220);
INSERT INTO `xe_sequence` VALUES (221);
INSERT INTO `xe_sequence` VALUES (222);
INSERT INTO `xe_sequence` VALUES (223);
INSERT INTO `xe_sequence` VALUES (224);
INSERT INTO `xe_sequence` VALUES (225);
INSERT INTO `xe_sequence` VALUES (226);
INSERT INTO `xe_sequence` VALUES (227);
INSERT INTO `xe_sequence` VALUES (228);
INSERT INTO `xe_sequence` VALUES (229);
INSERT INTO `xe_sequence` VALUES (230);
INSERT INTO `xe_sequence` VALUES (231);
INSERT INTO `xe_sequence` VALUES (232);
INSERT INTO `xe_sequence` VALUES (233);
INSERT INTO `xe_sequence` VALUES (234);
INSERT INTO `xe_sequence` VALUES (235);
INSERT INTO `xe_sequence` VALUES (236);
INSERT INTO `xe_sequence` VALUES (237);
INSERT INTO `xe_sequence` VALUES (238);
INSERT INTO `xe_sequence` VALUES (239);
INSERT INTO `xe_sequence` VALUES (240);
INSERT INTO `xe_sequence` VALUES (241);
INSERT INTO `xe_sequence` VALUES (242);
INSERT INTO `xe_sequence` VALUES (243);
INSERT INTO `xe_sequence` VALUES (244);
INSERT INTO `xe_sequence` VALUES (245);
INSERT INTO `xe_sequence` VALUES (246);
INSERT INTO `xe_sequence` VALUES (247);
INSERT INTO `xe_sequence` VALUES (248);
INSERT INTO `xe_sequence` VALUES (249);
INSERT INTO `xe_sequence` VALUES (250);
INSERT INTO `xe_sequence` VALUES (251);
INSERT INTO `xe_sequence` VALUES (252);
INSERT INTO `xe_sequence` VALUES (253);
INSERT INTO `xe_sequence` VALUES (254);
INSERT INTO `xe_sequence` VALUES (255);
INSERT INTO `xe_sequence` VALUES (256);
INSERT INTO `xe_sequence` VALUES (257);
INSERT INTO `xe_sequence` VALUES (258);
INSERT INTO `xe_sequence` VALUES (259);
INSERT INTO `xe_sequence` VALUES (260);
INSERT INTO `xe_sequence` VALUES (261);
INSERT INTO `xe_sequence` VALUES (262);
INSERT INTO `xe_sequence` VALUES (263);
INSERT INTO `xe_sequence` VALUES (264);
INSERT INTO `xe_sequence` VALUES (265);
INSERT INTO `xe_sequence` VALUES (266);
INSERT INTO `xe_sequence` VALUES (267);
INSERT INTO `xe_sequence` VALUES (268);
INSERT INTO `xe_sequence` VALUES (269);
INSERT INTO `xe_sequence` VALUES (270);
INSERT INTO `xe_sequence` VALUES (271);
INSERT INTO `xe_sequence` VALUES (272);
INSERT INTO `xe_sequence` VALUES (273);
INSERT INTO `xe_sequence` VALUES (274);
INSERT INTO `xe_sequence` VALUES (275);
INSERT INTO `xe_sequence` VALUES (276);
INSERT INTO `xe_sequence` VALUES (277);
INSERT INTO `xe_sequence` VALUES (278);
INSERT INTO `xe_sequence` VALUES (279);
INSERT INTO `xe_sequence` VALUES (280);
INSERT INTO `xe_sequence` VALUES (281);
INSERT INTO `xe_sequence` VALUES (282);
INSERT INTO `xe_sequence` VALUES (283);
INSERT INTO `xe_sequence` VALUES (284);
INSERT INTO `xe_sequence` VALUES (285);
INSERT INTO `xe_sequence` VALUES (286);
INSERT INTO `xe_sequence` VALUES (287);
INSERT INTO `xe_sequence` VALUES (288);
INSERT INTO `xe_sequence` VALUES (289);
INSERT INTO `xe_sequence` VALUES (290);
INSERT INTO `xe_sequence` VALUES (291);
INSERT INTO `xe_sequence` VALUES (292);
INSERT INTO `xe_sequence` VALUES (293);
INSERT INTO `xe_sequence` VALUES (294);
INSERT INTO `xe_sequence` VALUES (295);
INSERT INTO `xe_sequence` VALUES (296);
INSERT INTO `xe_sequence` VALUES (297);
INSERT INTO `xe_sequence` VALUES (298);
INSERT INTO `xe_sequence` VALUES (299);
INSERT INTO `xe_sequence` VALUES (300);
INSERT INTO `xe_sequence` VALUES (301);
INSERT INTO `xe_sequence` VALUES (302);
INSERT INTO `xe_sequence` VALUES (303);
INSERT INTO `xe_sequence` VALUES (304);
INSERT INTO `xe_sequence` VALUES (305);
INSERT INTO `xe_sequence` VALUES (306);
INSERT INTO `xe_sequence` VALUES (307);
INSERT INTO `xe_sequence` VALUES (308);
INSERT INTO `xe_sequence` VALUES (309);
INSERT INTO `xe_sequence` VALUES (310);
INSERT INTO `xe_sequence` VALUES (311);
INSERT INTO `xe_sequence` VALUES (312);
INSERT INTO `xe_sequence` VALUES (313);
INSERT INTO `xe_sequence` VALUES (314);
INSERT INTO `xe_sequence` VALUES (315);
INSERT INTO `xe_sequence` VALUES (316);
INSERT INTO `xe_sequence` VALUES (317);
INSERT INTO `xe_sequence` VALUES (318);
INSERT INTO `xe_sequence` VALUES (319);
INSERT INTO `xe_sequence` VALUES (320);
INSERT INTO `xe_sequence` VALUES (321);
INSERT INTO `xe_sequence` VALUES (322);
INSERT INTO `xe_sequence` VALUES (323);
INSERT INTO `xe_sequence` VALUES (324);
INSERT INTO `xe_sequence` VALUES (325);
INSERT INTO `xe_sequence` VALUES (326);
INSERT INTO `xe_sequence` VALUES (327);
INSERT INTO `xe_sequence` VALUES (328);
INSERT INTO `xe_sequence` VALUES (329);
INSERT INTO `xe_sequence` VALUES (330);
INSERT INTO `xe_sequence` VALUES (331);
INSERT INTO `xe_sequence` VALUES (332);
INSERT INTO `xe_sequence` VALUES (333);
INSERT INTO `xe_sequence` VALUES (334);
INSERT INTO `xe_sequence` VALUES (335);
INSERT INTO `xe_sequence` VALUES (336);
INSERT INTO `xe_sequence` VALUES (337);
INSERT INTO `xe_sequence` VALUES (338);
INSERT INTO `xe_sequence` VALUES (339);
INSERT INTO `xe_sequence` VALUES (340);
INSERT INTO `xe_sequence` VALUES (341);
INSERT INTO `xe_sequence` VALUES (342);
INSERT INTO `xe_sequence` VALUES (343);
INSERT INTO `xe_sequence` VALUES (344);
INSERT INTO `xe_sequence` VALUES (345);
INSERT INTO `xe_sequence` VALUES (346);
INSERT INTO `xe_sequence` VALUES (347);
INSERT INTO `xe_sequence` VALUES (348);
INSERT INTO `xe_sequence` VALUES (349);
INSERT INTO `xe_sequence` VALUES (350);
INSERT INTO `xe_sequence` VALUES (351);
INSERT INTO `xe_sequence` VALUES (352);
INSERT INTO `xe_sequence` VALUES (353);
INSERT INTO `xe_sequence` VALUES (354);
INSERT INTO `xe_sequence` VALUES (355);
INSERT INTO `xe_sequence` VALUES (356);
INSERT INTO `xe_sequence` VALUES (357);
INSERT INTO `xe_sequence` VALUES (358);
INSERT INTO `xe_sequence` VALUES (359);
INSERT INTO `xe_sequence` VALUES (360);
INSERT INTO `xe_sequence` VALUES (361);
INSERT INTO `xe_sequence` VALUES (362);
INSERT INTO `xe_sequence` VALUES (363);
INSERT INTO `xe_sequence` VALUES (364);
INSERT INTO `xe_sequence` VALUES (365);
INSERT INTO `xe_sequence` VALUES (366);
INSERT INTO `xe_sequence` VALUES (367);
INSERT INTO `xe_sequence` VALUES (368);
INSERT INTO `xe_sequence` VALUES (369);
INSERT INTO `xe_sequence` VALUES (370);
INSERT INTO `xe_sequence` VALUES (371);
INSERT INTO `xe_sequence` VALUES (372);
INSERT INTO `xe_sequence` VALUES (373);
INSERT INTO `xe_sequence` VALUES (374);
INSERT INTO `xe_sequence` VALUES (375);
INSERT INTO `xe_sequence` VALUES (376);
INSERT INTO `xe_sequence` VALUES (377);
INSERT INTO `xe_sequence` VALUES (378);
INSERT INTO `xe_sequence` VALUES (379);
INSERT INTO `xe_sequence` VALUES (380);
INSERT INTO `xe_sequence` VALUES (381);
INSERT INTO `xe_sequence` VALUES (382);
/*!40000 ALTER TABLE `xe_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_session`
--

DROP TABLE IF EXISTS `xe_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_session` (
  `session_key` varchar(255) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `expired` varchar(14) DEFAULT NULL,
  `val` longtext DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `last_update` varchar(14) DEFAULT NULL,
  `cur_mid` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`session_key`),
  KEY `idx_session_member_srl` (`member_srl`),
  KEY `idx_session_expired` (`expired`),
  KEY `idx_session_update` (`last_update`),
  KEY `idx_session_cur_mid` (`cur_mid`),
  KEY `idx_session_update_mid` (`member_srl`,`last_update`,`cur_mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_session`
--

LOCK TABLES `xe_session` WRITE;
/*!40000 ALTER TABLE `xe_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_site_admin`
--

DROP TABLE IF EXISTS `xe_site_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_site_admin` (
  `site_srl` bigint(11) NOT NULL,
  `member_srl` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  UNIQUE KEY `idx_site_admin` (`site_srl`,`member_srl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_site_admin`
--

LOCK TABLES `xe_site_admin` WRITE;
/*!40000 ALTER TABLE `xe_site_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_site_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_sites`
--

DROP TABLE IF EXISTS `xe_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_sites` (
  `site_srl` bigint(11) NOT NULL,
  `index_module_srl` bigint(11) DEFAULT 0,
  `domain` varchar(255) NOT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`site_srl`),
  UNIQUE KEY `unique_domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_sites`
--

LOCK TABLES `xe_sites` WRITE;
/*!40000 ALTER TABLE `xe_sites` DISABLE KEYS */;
INSERT INTO `xe_sites` VALUES (0,71,'enm0919.iwinv.net/','ko','20230919112542');
/*!40000 ALTER TABLE `xe_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_spamfilter_denied_ip`
--

DROP TABLE IF EXISTS `xe_spamfilter_denied_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_spamfilter_denied_ip` (
  `ipaddress` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_spamfilter_denied_ip`
--

LOCK TABLES `xe_spamfilter_denied_ip` WRITE;
/*!40000 ALTER TABLE `xe_spamfilter_denied_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_spamfilter_denied_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_spamfilter_denied_word`
--

DROP TABLE IF EXISTS `xe_spamfilter_denied_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_spamfilter_denied_word` (
  `word` varchar(250) NOT NULL,
  `hit` bigint(20) NOT NULL DEFAULT 0,
  `latest_hit` varchar(14) DEFAULT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`word`),
  KEY `idx_hit` (`hit`),
  KEY `idx_latest_hit` (`latest_hit`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_spamfilter_denied_word`
--

LOCK TABLES `xe_spamfilter_denied_word` WRITE;
/*!40000 ALTER TABLE `xe_spamfilter_denied_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_spamfilter_denied_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_spamfilter_log`
--

DROP TABLE IF EXISTS `xe_spamfilter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_spamfilter_log` (
  `spamfilter_log_srl` bigint(11) NOT NULL,
  `ipaddress` varchar(250) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`spamfilter_log_srl`),
  KEY `idx_ipaddress` (`ipaddress`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_spamfilter_log`
--

LOCK TABLES `xe_spamfilter_log` WRITE;
/*!40000 ALTER TABLE `xe_spamfilter_log` DISABLE KEYS */;
INSERT INTO `xe_spamfilter_log` VALUES (291,'58.224.126.102','20231108101822');
INSERT INTO `xe_spamfilter_log` VALUES (325,'58.224.126.102','20231130095304');
INSERT INTO `xe_spamfilter_log` VALUES (334,'58.224.126.102','20231130095606');
INSERT INTO `xe_spamfilter_log` VALUES (335,'58.224.126.102','20231130114720');
INSERT INTO `xe_spamfilter_log` VALUES (337,'58.224.126.102','20231130114804');
INSERT INTO `xe_spamfilter_log` VALUES (340,'58.224.126.102','20231130114843');
INSERT INTO `xe_spamfilter_log` VALUES (343,'58.224.126.102','20231130114926');
INSERT INTO `xe_spamfilter_log` VALUES (346,'58.224.126.102','20231130115005');
INSERT INTO `xe_spamfilter_log` VALUES (348,'58.224.126.102','20231130115231');
/*!40000 ALTER TABLE `xe_spamfilter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_tags`
--

DROP TABLE IF EXISTS `xe_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_tags` (
  `tag_srl` bigint(11) NOT NULL,
  `module_srl` bigint(11) NOT NULL DEFAULT 0,
  `document_srl` bigint(11) NOT NULL DEFAULT 0,
  `tag` varchar(240) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`tag_srl`),
  KEY `idx_module_srl` (`module_srl`),
  KEY `idx_document_srl` (`document_srl`),
  KEY `idx_regdate` (`regdate`),
  KEY `idx_tag` (`document_srl`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_tags`
--

LOCK TABLES `xe_tags` WRITE;
/*!40000 ALTER TABLE `xe_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_trash`
--

DROP TABLE IF EXISTS `xe_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_trash` (
  `trash_srl` bigint(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `origin_module` varchar(250) NOT NULL DEFAULT 'document',
  `serialized_object` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `ipaddress` varchar(128) NOT NULL,
  `remover_srl` bigint(11) NOT NULL,
  `regdate` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`trash_srl`),
  KEY `idx_regdate` (`regdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_trash`
--

LOCK TABLES `xe_trash` WRITE;
/*!40000 ALTER TABLE `xe_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_youtube_playlist`
--

DROP TABLE IF EXISTS `xe_youtube_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_youtube_playlist` (
  `id` varchar(255) NOT NULL,
  `total_videos` bigint(11) DEFAULT NULL,
  `timestamp` bigint(14) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_youtube_playlist`
--

LOCK TABLES `xe_youtube_playlist` WRITE;
/*!40000 ALTER TABLE `xe_youtube_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_youtube_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe_youtube_videos`
--

DROP TABLE IF EXISTS `xe_youtube_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xe_youtube_videos` (
  `id` varchar(255) NOT NULL,
  `no` bigint(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `utc` bigint(14) DEFAULT NULL,
  `item` text DEFAULT NULL,
  `timestamp` bigint(14) DEFAULT 0,
  PRIMARY KEY (`id`,`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe_youtube_videos`
--

LOCK TABLES `xe_youtube_videos` WRITE;
/*!40000 ALTER TABLE `xe_youtube_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `xe_youtube_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'enm0919'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 11:24:53
