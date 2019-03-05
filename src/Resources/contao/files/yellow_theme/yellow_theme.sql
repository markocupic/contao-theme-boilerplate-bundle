-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: aeracing_contao44
-- ------------------------------------------------------
-- Server version	5.7.22-log-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tl_article`
--

DROP TABLE IF EXISTS `tl_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `inColumn` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `showTeaser` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` mediumtext COLLATE utf8mb4_unicode_ci,
  `printable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published_sorting` (`pid`,`start`,`stop`,`published`,`sorting`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_article`
--

LOCK TABLES `tl_article` WRITE;
/*!40000 ALTER TABLE `tl_article` DISABLE KEYS */;
INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `customTpl`, `protected`, `groups`, `guests`, `cssID`, `published`, `start`, `stop`) VALUES (1,2,128,1551268203,'Newsliste','newsliste',1,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(2,3,128,1551292429,'Newsreader','newsreader',1,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(3,4,128,1551383196,'Gallery Creator','gallery-creator',1,'main',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'','','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(5,6,128,1551301893,'footer-content','footer-content',1,'main',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'','','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(6,7,128,1551601408,'Test','test',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(7,8,128,1551601441,'Test','',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(8,9,128,1551601454,'Test','',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(9,10,128,1551601470,'Test','',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(10,11,128,1551719381,'Seite 3','seite-3',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(11,12,128,1551719396,'Seite 4','seite-4',1,'main',NULL,'','',NULL,'','','',NULL,'','','','',''),(12,13,128,1551719419,'Test 4','test-4',1,'main',NULL,'','',NULL,'','','',NULL,'','','','','');
/*!40000 ALTER TABLE `tl_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_bs_grid`
--

DROP TABLE IF EXISTS `tl_bs_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_bs_grid` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` tinyblob,
  `xsSize` blob,
  `smSize` blob,
  `mdSize` blob,
  `lgSize` blob,
  `xlSize` blob,
  `align` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `justify` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rowClass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noGutters` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_bs_grid`
--

LOCK TABLES `tl_bs_grid` WRITE;
/*!40000 ALTER TABLE `tl_bs_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_bs_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar`
--

DROP TABLE IF EXISTS `tl_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar`
--

LOCK TABLES `tl_calendar` WRITE;
/*!40000 ALTER TABLE `tl_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_events`
--

DROP TABLE IF EXISTS `tl_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `addTime` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `startTime` int(10) unsigned DEFAULT NULL,
  `endTime` int(10) unsigned DEFAULT NULL,
  `startDate` int(10) unsigned DEFAULT NULL,
  `endDate` int(10) unsigned DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` mediumtext COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recurring` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repeatEach` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repeatEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `recurrences` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `orderEnclosure` blob,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_events`
--

LOCK TABLES `tl_calendar_events` WRITE;
/*!40000 ALTER TABLE `tl_calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_feed`
--

DROP TABLE IF EXISTS `tl_calendar_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_feed`
--

LOCK TABLES `tl_calendar_feed` WRITE;
/*!40000 ALTER TABLE `tl_calendar_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments`
--

DROP TABLE IF EXISTS `tl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `addReply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notified` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notifiedReply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `member` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `source_parent_published` (`source`,`parent`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments`
--

LOCK TABLES `tl_comments` WRITE;
/*!40000 ALTER TABLE `tl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments_notify`
--

DROP TABLE IF EXISTS `tl_comments_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source_parent_active` (`source`,`parent`,`active`),
  KEY `tokenremove` (`tokenRemove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments_notify`
--

LOCK TABLES `tl_comments_notify` WRITE;
/*!40000 ALTER TABLE `tl_comments_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content`
--

DROP TABLE IF EXISTS `tl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `ptable` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `listtype` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thead` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tfoot` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tleft` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooStyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooClasses` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `highlight` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` mediumtext COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `perRow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metaIgnore` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vimeo` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inline` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sliderDelay` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) unsigned NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cteAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `articleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_order` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tab_nav_class` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tab_content_class` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tab_fade` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tab_nav_position` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tabs` blob,
  `bs_tab_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_tab_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_image_sizes` blob,
  `bs_grid_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_grid_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_grid` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_panel_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_expanded` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bootstrap_dataAttributes` blob,
  `formLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `gc_publish_all_albums` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_publish_single_album` blob,
  `gc_publish_albums` blob,
  `gc_ThumbsPerPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `gc_imagemargin_albumlisting` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_size_albumlisting` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_imagemargin_detailview` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_size_detailview` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_PaginationNumberOfLinks` smallint(5) unsigned NOT NULL DEFAULT '7',
  `gc_AlbumsPerPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_redirectSingleAlb` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_picture_sorting_direction` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_picture_sorting` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_sorting_direction` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_sorting` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_hierarchicalOutput` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gc_rows` smallint(5) unsigned NOT NULL DEFAULT '4',
  `youtubeOptions` mediumtext COLLATE utf8mb4_unicode_ci,
  `overwriteLink` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerOptions` mediumtext COLLATE utf8mb4_unicode_ci,
  `vimeoOptions` mediumtext COLLATE utf8mb4_unicode_ci,
  `playerStart` int(10) unsigned NOT NULL DEFAULT '0',
  `playerStop` int(10) unsigned NOT NULL DEFAULT '0',
  `playerColor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerPreload` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerAspect` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerCaption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid_ptable_invisible_sorting` (`pid`,`ptable`,`invisible`,`sorting`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content`
--

LOCK TABLES `tl_content` WRITE;
/*!40000 ALTER TABLE `tl_content` DISABLE KEYS */;
INSERT INTO `tl_content` (`id`, `pid`, `ptable`, `sorting`, `tstamp`, `type`, `headline`, `text`, `addImage`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `code`, `url`, `target`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `vimeo`, `posterSRC`, `playerSize`, `inline`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`, `bs_tab_nav_class`, `bs_tab_content_class`, `bs_tab_fade`, `bs_tab_nav_position`, `bs_tabs`, `bs_tab_name`, `bs_tab_parent`, `bs_image_sizes`, `bs_grid_parent`, `bs_grid_name`, `bs_grid`, `bs_panel_name`, `bs_expanded`, `bootstrap_dataAttributes`, `formLayout`, `gc_publish_all_albums`, `gc_publish_single_album`, `gc_publish_albums`, `gc_ThumbsPerPage`, `gc_fullsize`, `gc_imagemargin_albumlisting`, `gc_size_albumlisting`, `gc_imagemargin_detailview`, `gc_size_detailview`, `gc_PaginationNumberOfLinks`, `gc_AlbumsPerPage`, `gc_redirectSingleAlb`, `gc_picture_sorting_direction`, `gc_picture_sorting`, `gc_sorting_direction`, `gc_sorting`, `gc_hierarchicalOutput`, `gc_template`, `gc_rows`, `youtubeOptions`, `overwriteLink`, `playerOptions`, `vimeoOptions`, `playerStart`, `playerStop`, `playerColor`, `playerPreload`, `playerAspect`, `playerCaption`) VALUES (2,2,'tl_news',128,1551268353,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(3,3,'tl_news',128,1551268367,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(4,4,'tl_news',128,1551268367,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(5,5,'tl_news',128,1551268378,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(6,6,'tl_news',128,1551268378,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(7,7,'tl_news',128,1551268378,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(8,8,'tl_news',128,1551268378,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(9,9,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(10,10,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(11,11,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(12,12,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(13,13,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(14,14,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(15,15,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(16,16,'tl_news',128,1551268385,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>dsfasdf sadfsafsaf sadfsafd safdsadfsdf sadfsad</p>\n<p>sdf sadfsadf sdafsafsadf dfssafsdfsdfasadf</p>','1','','0u\Â:Ü\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(17,1,'tl_article',64,1551268587,'module','',NULL,'','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,2,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(18,1,'tl_article',32,1551292260,'headline','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:20:\"News infinite scroll\";}',NULL,'','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','0',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(20,2,'tl_article',64,1551292558,'module','',NULL,'','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,5,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','0',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','','','','','','',4,NULL,'',NULL,NULL,0,0,'','','',''),(21,3,'tl_article',64,1551383256,'gallery_creator_ce','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}',NULL,'','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','0',NULL,0,'1',NULL,'a:0:{}',0,'1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}',7,0,'','DESC','date','DESC','date','','ce_gc_default',4,NULL,'',NULL,NULL,0,0,'','','',''),(22,3,'tl_article',32,1551296037,'headline','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:15:\"Gallery Creator\";}',NULL,'','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','0',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','DESC','date','DESC','date','0','',4,NULL,'',NULL,NULL,0,0,'','','',''),(23,5,'tl_article',64,1551301669,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>Marko Cupic, Contao developer since 2008, Oberkirch Switzerland</p>','','',NULL,'','','','','','','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default','','','','',NULL,'',0,NULL,0,'',0,'','0',NULL,0,'',NULL,NULL,0,'1','','','','',7,0,'','DESC','date','DESC','date','0','',4,NULL,'',NULL,NULL,0,0,'','','','');
/*!40000 ALTER TABLE `tl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_cron`
--

DROP TABLE IF EXISTS `tl_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_cron`
--

LOCK TABLES `tl_cron` WRITE;
/*!40000 ALTER TABLE `tl_cron` DISABLE KEYS */;
INSERT INTO `tl_cron` (`id`, `name`, `value`) VALUES (1,'lastrun','1551818820'),(2,'monthly','0'),(3,'weekly','0'),(4,'daily','20190305'),(5,'hourly','0'),(6,'minutely','0');
/*!40000 ALTER TABLE `tl_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq`
--

DROP TABLE IF EXISTS `tl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` mediumtext COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `orderEnclosure` blob,
  PRIMARY KEY (`id`),
  KEY `pid_published_sorting` (`pid`,`published`,`sorting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq`
--

LOCK TABLES `tl_faq` WRITE;
/*!40000 ALTER TABLE `tl_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq_category`
--

DROP TABLE IF EXISTS `tl_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq_category`
--

LOCK TABLES `tl_faq_category` WRITE;
/*!40000 ALTER TABLE `tl_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_files`
--

DROP TABLE IF EXISTS `tl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1022) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `extension` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `found` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `importantPartX` int(11) NOT NULL DEFAULT '0',
  `importantPartY` int(11) NOT NULL DEFAULT '0',
  `importantPartWidth` int(11) NOT NULL DEFAULT '0',
  `importantPartHeight` int(11) NOT NULL DEFAULT '0',
  `meta` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `path` (`path`(768)),
  KEY `pid` (`pid`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` (`id`, `pid`, `tstamp`, `uuid`, `type`, `path`, `extension`, `hash`, `found`, `name`, `importantPartX`, `importantPartY`, `importantPartWidth`, `importantPartHeight`, `meta`) VALUES (9,'EKõ;ç\Èù\0\n\0\n',1551721459,'GÌ±å:¿\Èù\0\n\0\n','folder','files/yellow_theme/logo','','64ae464f7cdd0d8e14c34565be7d2a3a','1','logo',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(10,'GÌ±å:¿\Èù\0\n\0\n',1551721459,'GÌ±É:¿\Èù\0\n\0\n','file','files/yellow_theme/logo/logo.svg','svg','b918793e3115de0d88659d4c2869c9c9','1','logo.svg',0,0,0,0,NULL),(11,NULL,1551819785,'≥?g\ :\√\Èù\0\n\0\n','folder','files/gallery_creator_albums','','8f1ba5b57d8c9fd0b2d05b4d7bb3123a','1','gallery_creator_albums',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(186,NULL,1551721459,'EKõ;ç\Èù\0\n\0\n','folder','files/yellow_theme','','4adee1a0d259100432c5591897bcea7a','1','yellow_theme',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(189,'EKõ;ç\Èù\0\n\0\n',1551535180,'k=\⁄<\Û\Èù\0\n\0\n','folder','files/yellow_theme/sass','','27fb3b0c7d5fe35a21deb2900c93afc3','1','sass',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(190,'k=\⁄<\Û\Èù\0\n\0\n',1551721459,'k=\Œ<\Û\Èù\0\n\0\n','file','files/yellow_theme/sass/_typo.scss','scss','fd845b51ffbd0c8a7256d64d59388030','1','_typo.scss',0,0,0,0,NULL),(191,'k=\⁄<\Û\Èù\0\n\0\n',1551721459,'k=¡<\Û\Èù\0\n\0\n','file','files/yellow_theme/sass/main.scss','scss','6518f1b5a93e59af24376643bbcef259','1','main.scss',0,0,0,0,NULL),(196,'≥?g\ :\√\Èù\0\n\0\n',1551721458,'\r`l>ò\Èù\0\n\0\n','folder','files/gallery_creator_albums/pop-art-1','','9bc8cd386bab3c813d901dd724f4e716','1','pop-art-1',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(197,'\r`l>ò\Èù\0\n\0\n',1551715844,'©Lˇ>ò\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-1/gallery.jpg','jpg','bf3999f37b1808c382e7fc38fd22a9b8','1','gallery.jpg',0,0,0,0,NULL),(198,'\r`l>ò\Èù\0\n\0\n',1551715855,'#•>ò\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-1/gallery_0001.jpg','jpg','bf3999f37b1808c382e7fc38fd22a9b8','1','gallery_0001.jpg',0,0,0,0,NULL),(199,'\r`l>ò\Èù\0\n\0\n',1551715860,'\ZMΩé>ò\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-1/gallery_0002.jpg','jpg','bf3999f37b1808c382e7fc38fd22a9b8','1','gallery_0002.jpg',0,0,0,0,NULL),(200,'\r`l>ò\Èù\0\n\0\n',1551715866,'z¡>ò\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-1/gallery_0003.jpg','jpg','bf3999f37b1808c382e7fc38fd22a9b8','1','gallery_0003.jpg',0,0,0,0,NULL),(205,'≥?g\ :\√\Èù\0\n\0\n',1551717394,'¨™\k>õ\Èù\0\n\0\n','folder','files/gallery_creator_albums/pop-art-3','','ff1dd6b2dd6a3055f0e29af42e2060ed','1','pop-art-3',0,0,0,0,NULL),(207,'EKõ;ç\Èù\0\n\0\n',1551718328,'\Ÿ?∑>ù\Èù\0\n\0\n','file','files/yellow_theme/yellow-theme.png','png','40a1333e6ee8696fe818a4966c200b1b','1','yellow-theme.png',0,0,0,0,NULL),(208,'≥?g\ :\√\Èù\0\n\0\n',1551718386,'˚\Úäè>ù\Èù\0\n\0\n','folder','files/gallery_creator_albums/pop-art-2','','ff1dd6b2dd6a3055f0e29af42e2060ed','1','pop-art-2',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(209,NULL,1551819493,'\ÛÂ¥™>û\Èù\0\n\0\n','folder','files/news_assets','','241dcbe607c3d4eab2f1b956f6746e55','1','news_assets',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(212,'k=\⁄<\Û\Èù\0\n\0\n',1551721459,'#ø\‹>•\Èù\0\n\0\n','file','files/yellow_theme/sass/_variables.scss','scss','0dc3ea12b3e5b9d1c7be34e1ecc0cc16','1','_variables.scss',0,0,0,0,NULL),(213,'k=\⁄<\Û\Èù\0\n\0\n',1551721459,'#ø\“>•\Èù\0\n\0\n','folder','files/yellow_theme/sass/components','','fba4d5092634dc2e463af06172c61ef5','1','components',0,0,0,0,NULL),(214,'#ø\“>•\Èù\0\n\0\n',1551721459,'#ø\ƒ>•\Èù\0\n\0\n','file','files/yellow_theme/sass/components/_default.scss','scss','39e607fed20c0776a2b7781ee2cab78d','1','_default.scss',0,0,0,0,NULL),(215,'#ø\“>•\Èù\0\n\0\n',1551721459,'#ø≤>•\Èù\0\n\0\n','file','files/yellow_theme/sass/components/_module_gallery_creator.scss','scss','80466f4a1c7e75a64cd4a972513b9317','1','_module_gallery_creator.scss',0,0,0,0,NULL),(216,'#ø\“>•\Èù\0\n\0\n',1551721459,'#ø®>•\Èù\0\n\0\n','file','files/yellow_theme/sass/components/_module_navbar.scss','scss','2c2d8fedf27b2ffc187ee57abc48ebfb','1','_module_navbar.scss',0,0,0,0,NULL),(217,'#ø\“>•\Èù\0\n\0\n',1551721459,'#øù>•\Èù\0\n\0\n','file','files/yellow_theme/sass/components/_module_news.scss','scss','d41d8cd98f00b204e9800998ecf8427e','1','_module_news.scss',0,0,0,0,NULL),(218,'#ø\“>•\Èù\0\n\0\n',1551721459,'#øë>•\Èù\0\n\0\n','file','files/yellow_theme/sass/components/_module_news_infinite_scroll.scss','scss','85819c946c87573bda83ea8d4ed601f0','1','_module_news_infinite_scroll.scss',0,0,0,0,NULL),(219,'k=\⁄<\Û\Èù\0\n\0\n',1551721459,'#æ\Ô>•\Èù\0\n\0\n','folder','files/yellow_theme/sass/mixins','','bd3b6c57b54aa77a75020d9709a4b4d2','1','mixins',0,0,0,0,NULL),(220,'#æ\Ô>•\Èù\0\n\0\n',1551721459,'#æ\Õ>•\Èù\0\n\0\n','file','files/yellow_theme/sass/mixins/_mixins.scss','scss','ff033d0d060542fc4384268cd03dc213','1','_mixins.scss',0,0,0,0,NULL),(231,'\ÛÂ¥™>û\Èù\0\n\0\n',1551819550,'zß5?â\Èù\0\n\0\n','file','files/news_assets/news-default.jpg','jpg','bf3999f37b1808c382e7fc38fd22a9b8','1','news-default.jpg',0,0,0,0,'a:1:{s:2:\"de\";a:4:{s:5:\"title\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:0:\"\";}}'),(234,'EKõ;ç\Èù\0\n\0\n',1551819839,'2≠?ä\Èù\0\n\0\n','file','files/yellow_theme/yellow_theme.cto','cto','d8349d8e2366235f12ef068365c42f79','1','yellow_theme.cto',0,0,0,0,NULL),(235,'EKõ;ç\Èù\0\n\0\n',1551819840,'2≠\Ò?ä\Èù\0\n\0\n','file','files/yellow_theme/yellow_theme.sql','sql','d83283b84ac96fc7db698cb179da9abc','1','yellow_theme.sql',0,0,0,0,NULL),(236,'¨™\k>õ\Èù\0\n\0\n',1551819840,'2≠\Á?ä\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-3/readme.txt','txt','6704c60917a893dfb66cd8ed56104225','1','readme.txt',0,0,0,0,NULL),(237,'˚\Úäè>ù\Èù\0\n\0\n',1551819840,'2≠\€?ä\Èù\0\n\0\n','file','files/gallery_creator_albums/pop-art-2/readme.txt','txt','6704c60917a893dfb66cd8ed56104225','1','readme.txt',0,0,0,0,NULL);
/*!40000 ALTER TABLE `tl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recipient` varchar(1022) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `format` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skipEmpty` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `storeValues` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `targetTable` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `novalidate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `formID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowTags` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `formLayout` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form`
--

LOCK TABLES `tl_form` WRITE;
/*!40000 ALTER TABLE `tl_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `html` mediumtext COLLATE utf8mb4_unicode_ci,
  `options` blob,
  `mandatory` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rgxp` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multiple` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `storeFile` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accesskey` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageSubmit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_grid_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_grid_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_grid` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_inputGroup` mediumblob,
  `bs_addInputGroup` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `controlClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `helpMessage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_field`
--

LOCK TABLES `tl_form_field` WRITE;
/*!40000 ALTER TABLE `tl_form_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_layout`
--

DROP TABLE IF EXISTS `tl_form_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaultLayout` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgets` blob,
  `fallbackLayout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallbackControl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallbackLabel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallbackError` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallbackHelp` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_label` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_control` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_offset` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_row` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_layout`
--

LOCK TABLES `tl_form_layout` WRITE;
/*!40000 ALTER TABLE `tl_form_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_form_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_gallery_creator_albums`
--

DROP TABLE IF EXISTS `tl_gallery_creator_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_gallery_creator_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `assignedDir` blob,
  `owners_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `uploader` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'be_gc_html5_uploader',
  `img_resolution` smallint(5) unsigned NOT NULL DEFAULT '600',
  `img_quality` smallint(5) unsigned NOT NULL DEFAULT '100',
  `preserve_filename` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multiSRC` blob,
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `insert_article_pre` int(10) unsigned NOT NULL DEFAULT '0',
  `insert_article_post` int(10) unsigned NOT NULL DEFAULT '0',
  `visitors_details` blob,
  `visitors` int(10) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filePrefix` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photographer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_gallery_creator_albums`
--

LOCK TABLES `tl_gallery_creator_albums` WRITE;
/*!40000 ALTER TABLE `tl_gallery_creator_albums` DISABLE KEYS */;
INSERT INTO `tl_gallery_creator_albums` (`id`, `pid`, `sorting`, `tstamp`, `published`, `date`, `owner`, `assignedDir`, `owners_name`, `event_location`, `name`, `alias`, `description`, `keywords`, `comment`, `thumb`, `uploader`, `img_resolution`, `img_quality`, `preserve_filename`, `multiSRC`, `protected`, `groups`, `insert_article_pre`, `insert_article_post`, `visitors_details`, `visitors`, `sortBy`, `filePrefix`, `photographer`) VALUES (4,0,128,1551819267,'1',1551654000,1,'\r`l>ò\Èù\0\n\0\n','no-name','','Pop Art 1','pop-art-1',NULL,NULL,NULL,191,'be_gc_jumploader',600,100,'1',NULL,'',NULL,0,0,'a:1:{i:0;a:1:{s:13:\"92.105.160.12\";a:1:{s:13:\"92.105.160.12\";a:5:{s:2:\"ip\";s:13:\"92.105.160.12\";s:3:\"pid\";s:1:\"4\";s:10:\"user_agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:6:\"tstamp\";i:1551719184;s:3:\"url\";s:28:\"gallery-creator/pop-art.html\";}}}}',1,'----','',''),(6,0,384,1551819277,'1',1551654000,1,'acaaf06b-3e9b-11e9-9d1d-02000a14000a','no-name','','Pop Art 3','pop-art-3',NULL,NULL,NULL,199,'be_gc_jumploader',600,100,'1',NULL,'',NULL,0,0,NULL,0,'----','',''),(7,0,256,1551819297,'1',1551740400,1,'˚\Úäè>ù\Èù\0\n\0\n','no-name','','Pop Art 2','pop-art-2',NULL,NULL,NULL,195,'be_gc_jumploader',600,100,'1',NULL,'',NULL,0,0,'a:1:{i:0;a:1:{s:13:\"92.105.160.12\";a:1:{s:13:\"92.105.160.12\";a:5:{s:2:\"ip\";s:13:\"92.105.160.12\";s:3:\"pid\";s:1:\"7\";s:10:\"user_agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:6:\"tstamp\";i:1551819366;s:3:\"url\";s:30:\"gallery-creator/pop-art-2.html\";}}}}',1,'----','','');
/*!40000 ALTER TABLE `tl_gallery_creator_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_gallery_creator_pictures`
--

DROP TABLE IF EXISTS `tl_gallery_creator_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_gallery_creator_pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` binary(16) DEFAULT NULL,
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `externalFile` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `addCustomThumb` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customThumb` blob,
  `owner` int(11) NOT NULL DEFAULT '0',
  `socialMediaSRC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `localMediaSRC` binary(16) DEFAULT NULL,
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_gallery_creator_pictures`
--

LOCK TABLES `tl_gallery_creator_pictures` WRITE;
/*!40000 ALTER TABLE `tl_gallery_creator_pictures` DISABLE KEYS */;
INSERT INTO `tl_gallery_creator_pictures` (`id`, `pid`, `path`, `uuid`, `sorting`, `tstamp`, `published`, `title`, `externalFile`, `comment`, `date`, `addCustomThumb`, `customThumb`, `owner`, `socialMediaSRC`, `localMediaSRC`, `cssID`) VALUES (191,4,'files/gallery_creator_albums/pop-art-1/gallery.jpg','©Lˇ>ò\Èù\0\n\0\n',10,1551819307,'1','','',NULL,1551654000,'',NULL,1,'',NULL,''),(192,4,'files/gallery_creator_albums/pop-art-1/gallery_0001.jpg','#•>ò\Èù\0\n\0\n',20,1551819313,'1','','',NULL,1551654000,'',NULL,1,'',NULL,''),(193,4,'files/gallery_creator_albums/pop-art-1/gallery_0002.jpg','\ZMΩé>ò\Èù\0\n\0\n',30,1551819318,'1','','',NULL,1551654000,'',NULL,1,'',NULL,''),(194,4,'files/gallery_creator_albums/pop-art-1/gallery_0003.jpg','z¡>ò\Èù\0\n\0\n',40,1551819323,'1','','',NULL,1551654000,'',NULL,1,'',NULL,''),(195,7,'files/gallery_creator_albums/pop-art-1/gallery.jpg','©Lˇ>ò\Èù\0\n\0\n',10,1551819336,'1','','1',NULL,1551740400,'',NULL,1,'',NULL,''),(196,7,'files/gallery_creator_albums/pop-art-1/gallery_0001.jpg','#•>ò\Èù\0\n\0\n',20,1551819336,'1','','1',NULL,1551740400,'',NULL,1,'',NULL,''),(197,7,'files/gallery_creator_albums/pop-art-1/gallery_0002.jpg','\ZMΩé>ò\Èù\0\n\0\n',30,1551819336,'1','','1',NULL,1551740400,'',NULL,1,'',NULL,''),(198,7,'files/gallery_creator_albums/pop-art-1/gallery_0003.jpg','z¡>ò\Èù\0\n\0\n',40,1551819336,'1','','1',NULL,1551740400,'',NULL,1,'',NULL,''),(199,6,'files/gallery_creator_albums/pop-art-1/gallery.jpg','©Lˇ>ò\Èù\0\n\0\n',10,1551819351,'1','','1',NULL,1551654000,'',NULL,1,'',NULL,''),(200,6,'files/gallery_creator_albums/pop-art-1/gallery_0001.jpg','#•>ò\Èù\0\n\0\n',20,1551819351,'1','','1',NULL,1551654000,'',NULL,1,'',NULL,''),(201,6,'files/gallery_creator_albums/pop-art-1/gallery_0002.jpg','\ZMΩé>ò\Èù\0\n\0\n',30,1551819351,'1','','1',NULL,1551654000,'',NULL,1,'',NULL,''),(202,6,'files/gallery_creator_albums/pop-art-1/gallery_0003.jpg','z¡>ò\Èù\0\n\0\n',40,1551819351,'1','','1',NULL,1551654000,'',NULL,1,'',NULL,'');
/*!40000 ALTER TABLE `tl_gallery_creator_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size`
--

DROP TABLE IF EXISTS `tl_image_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_image_size` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size`
--

LOCK TABLES `tl_image_size` WRITE;
/*!40000 ALTER TABLE `tl_image_size` DISABLE KEYS */;
INSERT INTO `tl_image_size` (`id`, `pid`, `tstamp`, `name`, `cssClass`, `densities`, `sizes`, `width`, `height`, `resizeMode`, `zoom`) VALUES (2,1,1551721891,'Galerie Thumnails','','','',400,400,'crop',NULL);
/*!40000 ALTER TABLE `tl_image_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size_item`
--

DROP TABLE IF EXISTS `tl_image_size_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_image_size_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size_item`
--

LOCK TABLES `tl_image_size_item` WRITE;
/*!40000 ALTER TABLE `tl_image_size_item` DISABLE KEYS */;
INSERT INTO `tl_image_size_item` (`id`, `pid`, `sorting`, `tstamp`, `media`, `densities`, `sizes`, `width`, `height`, `resizeMode`, `zoom`, `invisible`) VALUES (3,2,128,1551294972,'(min-width: 600px)','','',400,400,'crop',NULL,'');
/*!40000 ALTER TABLE `tl_image_size_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rows` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headerHeight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `footerHeight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cols` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widthLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widthRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sections` blob,
  `framework` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `loadingOrder` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `combineScripts` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webfonts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `viewport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `titleTag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `onload` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `head` mediumtext COLLATE utf8mb4_unicode_ci,
  `addJQuery` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jSource` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jquery` mediumtext COLLATE utf8mb4_unicode_ci,
  `addMooTools` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooSource` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mootools` mediumtext COLLATE utf8mb4_unicode_ci,
  `picturefill` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `analytics` mediumtext COLLATE utf8mb4_unicode_ci,
  `scripts` mediumtext COLLATE utf8mb4_unicode_ci,
  `script` mediumtext COLLATE utf8mb4_unicode_ci,
  `static` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `bs_containerClass` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'container',
  `bs_containerElement` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'container',
  `bs_rightClass` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_leftClass` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_mainClass` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_footerClass` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_headerClass` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layoutType` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `externalJs` blob,
  `minifyMarkup` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `orderExtJs` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_layout`
--

LOCK TABLES `tl_layout` WRITE;
/*!40000 ALTER TABLE `tl_layout` DISABLE KEYS */;
INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `rows`, `headerHeight`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `framework`, `stylesheet`, `external`, `orderExt`, `loadingOrder`, `combineScripts`, `modules`, `template`, `webfonts`, `viewport`, `titleTag`, `cssClass`, `onload`, `head`, `addJQuery`, `jSource`, `jquery`, `addMooTools`, `mooSource`, `mootools`, `picturefill`, `analytics`, `scripts`, `script`, `static`, `width`, `align`, `newsfeeds`, `calendarfeeds`, `bs_containerClass`, `bs_containerElement`, `bs_rightClass`, `bs_leftClass`, `bs_mainClass`, `bs_footerClass`, `bs_headerClass`, `layoutType`, `externalJs`, `minifyMarkup`, `orderExtJs`) VALUES (1,1,1551719248,'Default layout','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"30\";}','','a:1:{i:0;a:4:{s:5:\"title\";s:0:\"\";s:2:\"id\";s:0:\"\";s:8:\"template\";s:13:\"block_section\";s:8:\"position\";s:3:\"top\";}}','',NULL,'a:1:{i:0;s:16:\"k=¡<\Û\Èù\0\n\0\n\";}','a:1:{i:0;s:16:\"k=¡<\Û\Èù\0\n\0\n\";}','external_first','','a:3:{i:0;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"6\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}','fe_bootstrap','','','','','',NULL,'1','j_fallback','a:5:{i:0;s:11:\"j_accordion\";i:1;s:10:\"j_colorbox\";i:2;s:14:\"j_mediaelement\";i:3;s:22:\"j_news_infinite_scroll\";i:4;s:11:\"j_tablesort\";}','','moo_local',NULL,'',NULL,'a:1:{i:0;s:15:\"js_mediaelement\";}',NULL,'','','center',NULL,NULL,'container','container','','','','','','default',NULL,'',NULL);
/*!40000 ALTER TABLE `tl_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_log`
--

DROP TABLE IF EXISTS `tl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `browser`) VALUES (13,1551819950,'BE','GENERAL','k.jones','Version 1 of record &quot;tl_user.id=2&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36'),(14,1551819957,'BE','CRON','k.jones','Purged the page cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36'),(15,1551819957,'BE','CRON','k.jones','Purged the image cache','Contao\\Automator::purgeImageCache','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36'),(16,1551819957,'BE','CRON','k.jones','Purged the page cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');
/*!40000 ALTER TABLE `tl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member`
--

DROP TABLE IF EXISTS `tl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `assignDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `newsletter` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member_group`
--

DROP TABLE IF EXISTS `tl_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `redirect` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member_group`
--

LOCK TABLES `tl_member_group` WRITE;
/*!40000 ALTER TABLE `tl_member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `showProtected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defineRoot` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customLabel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autologin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fuzzy` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `searchTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inColumn` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imgSize` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useCaption` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` mediumtext COLLATE utf8mb4_unicode_ci,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` mediumtext COLLATE utf8mb4_unicode_ci,
  `rss_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_skipName` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_close` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_assignDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `reg_password` mediumtext COLLATE utf8mb4_unicode_ci,
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `list_table` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_fields` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_where` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_search` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_info_where` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_info_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_jumpToCurrent` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_showQuantity` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nl_subscribe` mediumtext COLLATE utf8mb4_unicode_ci,
  `nl_unsubscribe` mediumtext COLLATE utf8mb4_unicode_ci,
  `nl_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_hideRunning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '1',
  `cal_format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_order` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_order` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `com_template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_gridModules` blob,
  `bs_grid` int(10) unsigned NOT NULL DEFAULT '0',
  `bs_toggleableSize` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_navbarBrandTemplate` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_navbarModules` blob,
  `bs_addBrand` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_isResponsive` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_navClass` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_nav_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `formLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `nl_text` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_module`
--

LOCK TABLES `tl_module` WRITE;
/*!40000 ALTER TABLE `tl_module` DISABLE KEYS */;
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `orderPages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `editable`, `memberTpl`, `form`, `queryType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `singleSRC`, `url`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `protected`, `groups`, `guests`, `cssID`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `cal_calendar`, `cal_noSpan`, `cal_hideRunning`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `bs_gridModules`, `bs_grid`, `bs_toggleableSize`, `bs_navbarBrandTemplate`, `bs_navbarModules`, `bs_addBrand`, `bs_isResponsive`, `bs_navClass`, `bs_nav_class`, `formLayout`, `nl_text`) VALUES (1,1,1551718680,'Navigationsleiste','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','bs_navbar',0,0,'','','',0,'nav_default','',NULL,NULL,'','','',0,'',NULL,'',0,'and','',48,1000,0,'simple','','main',0,'',NULL,'','','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:36:\"navbar navbar-expand-lg navbar-light\";}',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'order_date_desc','',NULL,NULL,'',NULL,NULL,'nl_simple',NULL,'','',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'md','navbar_brand','a:1:{i:0;a:3:{s:6:\"module\";s:1:\"4\";s:8:\"cssClass\";s:0:\"\";s:8:\"inactive\";s:0:\"\";}}','1','1','','',0,NULL),(2,1,1551721948,'News Infinite Scroll','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newslist_infinite_scroll',0,0,'','','',0,'','',NULL,NULL,'','','',0,'',NULL,'',0,'and','',48,1000,6,'simple','','main',0,'',NULL,'','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:3:\"row\";}',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"1\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'order_date_desc','',NULL,NULL,'',NULL,NULL,'nl_simple',NULL,'','',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','',NULL,'','','','',0,NULL),(4,1,1551718689,'Navigation','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','navigation',0,0,'','','',0,'nav_default_navbar_dropdown','',NULL,NULL,'','','',0,'',NULL,'',0,'and','',48,1000,0,'simple','','main',0,'',NULL,'','','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'order_date_desc','',NULL,NULL,'',NULL,NULL,'nl_simple',NULL,'','',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','mod_navbar',NULL,'','1','','',0,NULL),(5,1,1551718707,'Newsreader','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newsreader',0,0,'','','',0,'','',NULL,NULL,'','','',0,'',NULL,'',0,'and','',48,1000,0,'simple','','main',0,'',NULL,'','a:3:{i:0;s:3:\"400\";i:1;s:3:\"400\";i:2;s:13:\"center_center\";}','','',NULL,NULL,NULL,3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,0,'','','','','','','','list_default','info_default','a:1:{i:0;s:1:\"1\";}','all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_full','news_month',0,'order_date_desc','',NULL,NULL,'',NULL,NULL,'nl_simple',NULL,'','',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','mod_navbar',NULL,'','1','','',0,NULL),(6,1,1551718488,'Footer','','html',0,0,'','','',0,'','',NULL,NULL,'','','',0,'',NULL,'',0,'and','',48,1000,0,'simple','','main',0,'',NULL,'','','','',NULL,NULL,'{{insert_article::footer-content}}',3600,NULL,'rss_default',3,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','',NULL,0,'','','','','','','','list_default','info_default',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_latest','news_month',0,'order_date_desc','',NULL,NULL,'',NULL,NULL,'nl_simple',NULL,'','',1,'cal_month','','ascending',0,0,'event_full','cal_default','','ascending','','','','','com_default',NULL,0,'','mod_navbar',NULL,'','1','','',0,NULL);
/*!40000 ALTER TABLE `tl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news`
--

DROP TABLE IF EXISTS `tl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `subheadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` mediumtext COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `orderEnclosure` blob,
  `description` text COLLATE utf8mb4_unicode_ci,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news`
--

LOCK TABLES `tl_news` WRITE;
/*!40000 ALTER TABLE `tl_news` DISABLE KEYS */;
INSERT INTO `tl_news` (`id`, `pid`, `tstamp`, `headline`, `alias`, `author`, `date`, `time`, `subheadline`, `teaser`, `addImage`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `addEnclosure`, `enclosure`, `source`, `jumpTo`, `articleId`, `url`, `target`, `cssClass`, `noComments`, `featured`, `published`, `start`, `stop`, `orderEnclosure`, `description`, `pageTitle`) VALUES (2,1,1551819824,'Some news...','1-beitrag-kopie',1,1551268320,1551268320,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(3,1,1551819823,'Some news...','',1,1551268367,1551268367,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(4,1,1551819823,'Some news...','',1,1551268367,1551268367,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(5,1,1551819823,'Some news...','',1,1551268378,1551268378,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(6,1,1551819823,'Some news...','',1,1551268378,1551268378,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(7,1,1551819823,'Some news...','',1,1551268378,1551268378,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(8,1,1551819823,'Some news...','',1,1551268378,1551268378,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(9,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>Hier kommt der erste Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(10,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(11,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(12,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(13,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(14,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(15,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,''),(16,1,1551819823,'Some news...','',1,1551268385,1551268385,'','<p>... und noch ein Beitrag.</p>','1','','zß5?â\Èù\0\n\0\n','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:1:\"2\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','above','',NULL,'default',0,0,'','','','','','1','','',NULL,NULL,'');
/*!40000 ALTER TABLE `tl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_archive`
--

DROP TABLE IF EXISTS `tl_news_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_archive`
--

LOCK TABLES `tl_news_archive` WRITE;
/*!40000 ALTER TABLE `tl_news_archive` DISABLE KEYS */;
INSERT INTO `tl_news_archive` (`id`, `tstamp`, `title`, `jumpTo`, `protected`, `groups`, `allowComments`, `notify`, `sortOrder`, `perPage`, `moderate`, `bbcode`, `requireLogin`, `disableCaptcha`) VALUES (1,1551721707,'Nachrichten',3,'',NULL,'','notify_admin','ascending',0,'','','','');
/*!40000 ALTER TABLE `tl_news_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_feed`
--

DROP TABLE IF EXISTS `tl_news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_feed`
--

LOCK TABLES `tl_news_feed` WRITE;
/*!40000 ALTER TABLE `tl_news_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter`
--

DROP TABLE IF EXISTS `tl_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `addFile` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sendText` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `externalImages` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter`
--

LOCK TABLES `tl_newsletter` WRITE;
/*!40000 ALTER TABLE `tl_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_blacklist`
--

DROP TABLE IF EXISTS `tl_newsletter_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_hash` (`pid`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_blacklist`
--

LOCK TABLES `tl_newsletter_blacklist` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_channel`
--

DROP TABLE IF EXISTS `tl_newsletter_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_channel`
--

LOCK TABLES `tl_newsletter_channel` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_recipients`
--

DROP TABLE IF EXISTS `tl_newsletter_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_email` (`pid`,`email`),
  KEY `active` (`active`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_recipients`
--

LOCK TABLES `tl_newsletter_recipients` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_opt_in`
--

DROP TABLE IF EXISTS `tl_opt_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_opt_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdOn` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmedOn` int(10) unsigned NOT NULL DEFAULT '0',
  `removeOn` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailText` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `removeon` (`removeOn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_opt_in`
--

LOCK TABLES `tl_opt_in` WRITE;
/*!40000 ALTER TABLE `tl_opt_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_opt_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_opt_in_related`
--

DROP TABLE IF EXISTS `tl_opt_in_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_opt_in_related` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `relTable` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reltable_relid` (`relTable`,`relId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_opt_in_related`
--

LOCK TABLES `tl_opt_in_related` WRITE;
/*!40000 ALTER TABLE `tl_opt_in_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_opt_in_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `redirect` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staticFiles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallback` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `adminEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timeFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `datimFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createSitemap` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemapName` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useSSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoforward` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `mobileLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `clientCache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noSearch` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hide` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireItem` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `validAliasCharacters` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_dns` (`type`,`dns`),
  KEY `alias` (`alias`),
  KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `redirectBack`, `url`, `target`, `dns`, `staticFiles`, `staticPlugins`, `fallback`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `mobileLayout`, `includeCache`, `cache`, `clientCache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`, `requireItem`, `validAliasCharacters`) VALUES (1,0,128,1551268606,'contao44','contao44','root','','de','',NULL,'permanent',0,'','','','contao44.kletterkader.com','contao44.kletterkader.com','contao44.kletterkader.com','1','','','','','','','','','',NULL,'1',1,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'','1','','','',''),(2,1,128,1551268606,'Newsliste','newsliste','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'1',1,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(3,2,128,1551292533,'Newsreader','newsreader','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'1',1,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','1','','','',''),(4,1,256,1551294996,'Gallery Creator','gallery-creator','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(6,1,512,1551383402,'!!!--hidden-page-article-container--!!!','hidden-page-article-container','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','1','',0,'','','','','',''),(7,2,64,1551601411,'Test','test','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(8,7,128,1551718555,'Test 1','test-1','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(9,7,256,1551718565,'Test 2','test-2','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(10,2,96,1551718594,'Test 3','test-3','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(11,1,384,1551719383,'Seite 3','seite-3','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(12,1,448,1551719425,'Seite 4','seite-4','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',''),(13,2,112,1551719422,'Test 4','test-4','regular','','','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','','',NULL,'',0,0,'',0,0,'',0,0,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','map_default','','',0,'','1','','','','');
/*!40000 ALTER TABLE `tl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_remember_me`
--

DROP TABLE IF EXISTS `tl_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_remember_me` (
  `series` char(88) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` char(88) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_remember_me`
--

LOCK TABLES `tl_remember_me` WRITE;
/*!40000 ALTER TABLE `tl_remember_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search`
--

DROP TABLE IF EXISTS `tl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `filesize` double NOT NULL DEFAULT '0',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `checksum_pid` (`checksum`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
INSERT INTO `tl_search` (`id`, `pid`, `tstamp`, `title`, `url`, `text`, `filesize`, `checksum`, `protected`, `groups`, `language`) VALUES (1,2,1551820034,'Newsliste','http://contao44.kletterkader.com/newsliste.html','Newsliste News infinite scroll Marko Cupic, Contao developer since 2008, Oberkirch Switzerland',20.31,'aa08053508efe2a4ea606f43756d286f','','0','de'),(2,4,1551819992,'Gallery Creator','http://contao44.kletterkader.com/gallery-creator.html','Gallery Creator Gallery Creator [2019-03-05] Pop Art 2 4 Bilder 1 Aufrufe [2019-03-04] Pop Art 1 4 Bilder 1 Aufrufe [2019-03-04] Pop Art 3 4 Bilder 0 Aufrufe Marko Cupic, Contao developer since 2008, Oberkirch Switzerland Pop Art 2 [4 Bilder], Pop Art 2, Pop Art 1 [4 Bilder], Pop Art 1, Pop Art 3 [4 Bilder], Pop Art 3',16.14,'557557649d4fab20e85e80778c43e688','','0','de'),(3,11,1551819991,'Seite 3','http://contao44.kletterkader.com/seite-3.html','Seite 3 Marko Cupic, Contao developer since 2008, Oberkirch Switzerland',12.01,'8f8a936076b11574ceb00e5e36079ce3','','0','de'),(4,12,1551819990,'Seite 4','http://contao44.kletterkader.com/seite-4.html','Seite 4 Marko Cupic, Contao developer since 2008, Oberkirch Switzerland',12.01,'66386615113df68a218e37543d04f57c','','0','de');
/*!40000 ALTER TABLE `tl_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search_index`
--

DROP TABLE IF EXISTS `tl_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES (46,4,'seite',1,'de'),(47,4,'4',1,'de'),(48,4,'marko',1,'de'),(49,4,'cupic',1,'de'),(50,4,'contao',1,'de'),(51,4,'developer',1,'de'),(52,4,'since',1,'de'),(53,4,'2008',1,'de'),(54,4,'oberkirch',1,'de'),(55,4,'switzerland',1,'de'),(56,3,'seite',1,'de'),(57,3,'3',1,'de'),(58,3,'marko',1,'de'),(59,3,'cupic',1,'de'),(60,3,'contao',1,'de'),(61,3,'developer',1,'de'),(62,3,'since',1,'de'),(63,3,'2008',1,'de'),(64,3,'oberkirch',1,'de'),(65,3,'switzerland',1,'de'),(66,2,'gallery',2,'de'),(67,2,'creator',2,'de'),(68,2,'2019',3,'de'),(69,2,'03',3,'de'),(70,2,'05',1,'de'),(71,2,'pop',9,'de'),(72,2,'art',9,'de'),(73,2,'2',3,'de'),(74,2,'4',6,'de'),(75,2,'bilder',6,'de'),(76,2,'1',5,'de'),(77,2,'aufrufe',3,'de'),(78,2,'04',2,'de'),(79,2,'3',3,'de'),(80,2,'0',1,'de'),(81,2,'marko',1,'de'),(82,2,'cupic',1,'de'),(83,2,'contao',1,'de'),(84,2,'developer',1,'de'),(85,2,'since',1,'de'),(86,2,'2008',1,'de'),(87,2,'oberkirch',1,'de'),(88,2,'switzerland',1,'de'),(101,1,'newsliste',1,'de'),(102,1,'news',1,'de'),(103,1,'infinite',1,'de'),(104,1,'scroll',1,'de'),(105,1,'marko',1,'de'),(106,1,'cupic',1,'de'),(107,1,'contao',1,'de'),(108,1,'developer',1,'de'),(109,1,'since',1,'de'),(110,1,'2008',1,'de'),(111,1,'oberkirch',1,'de'),(112,1,'switzerland',1,'de');
/*!40000 ALTER TABLE `tl_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style`
--

DROP TABLE IF EXISTS `tl_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `selector` varchar(1022) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `height` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minwidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxwidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `positioning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `trbl` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clear` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overflow` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `display` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alignment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `margin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `padding` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `verticalalign` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `textalign` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `whitespace` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgposition` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shadowsize` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradientColors` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `border` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderwidth` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderstyle` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bordercolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderradius` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `font` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontfamily` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontsize` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lineheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontstyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `texttransform` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `textindent` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `letterspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wordspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `liststyletype` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `own` mediumtext COLLATE utf8mb4_unicode_ci,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style`
--

LOCK TABLES `tl_style` WRITE;
/*!40000 ALTER TABLE `tl_style` DISABLE KEYS */;
INSERT INTO `tl_style` (`id`, `pid`, `sorting`, `tstamp`, `selector`, `category`, `comment`, `size`, `width`, `height`, `minwidth`, `minheight`, `maxwidth`, `maxheight`, `positioning`, `trbl`, `position`, `floating`, `clear`, `overflow`, `display`, `alignment`, `margin`, `padding`, `align`, `verticalalign`, `textalign`, `whitespace`, `background`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `shadowsize`, `shadowcolor`, `gradientAngle`, `gradientColors`, `border`, `borderwidth`, `borderstyle`, `bordercolor`, `borderradius`, `bordercollapse`, `borderspacing`, `font`, `fontfamily`, `fontsize`, `fontcolor`, `lineheight`, `fontstyle`, `texttransform`, `textindent`, `letterspacing`, `wordspacing`, `list`, `liststyletype`, `liststyleimage`, `own`, `invisible`) VALUES (1,1,128,1551269187,'body','','','','','','','','','','','','','','','','','','','','','','','','1','a:2:{i:0;s:6:\"fffb00\";i:1;s:0:\"\";}','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','1','Helvetica','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"16\";}','a:2:{i:0;s:6:\"000000\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(2,1,64,1551269545,'.btn','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','color: #fff;\nbackground-color: #000;\npadding: 12px 24px;\nborder: 0;\nborder-radius:0;',''),(3,1,256,1551269429,'.mod_randomImage img','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','width: 100%;\nheight: auto;',''),(7,1,32,1551269623,'.inside','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,'');
/*!40000 ALTER TABLE `tl_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style_sheet`
--

DROP TABLE IF EXISTS `tl_style_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embedImages` int(10) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mediaQuery` mediumtext COLLATE utf8mb4_unicode_ci,
  `vars` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style_sheet`
--

LOCK TABLES `tl_style_sheet` WRITE;
/*!40000 ALTER TABLE `tl_style_sheet` DISABLE KEYS */;
INSERT INTO `tl_style_sheet` (`id`, `pid`, `tstamp`, `name`, `embedImages`, `cc`, `media`, `mediaQuery`, `vars`) VALUES (1,1,1551269086,'Stylesheet',0,'','a:1:{i:0;s:3:\"all\";}',NULL,'a:0:{}');
/*!40000 ALTER TABLE `tl_style_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `defaultImageDensities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bs_grid_columns` int(11) DEFAULT NULL,
  `bs_gravatar_default` binary(16) DEFAULT NULL,
  `bs_gravatar_size` int(11) DEFAULT NULL,
  `bs_templates_disable_mapping` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_theme`
--

LOCK TABLES `tl_theme` WRITE;
/*!40000 ALTER TABLE `tl_theme` DISABLE KEYS */;
INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `screenshot`, `templates`, `vars`, `defaultImageDensities`, `bs_grid_columns`, `bs_gravatar_default`, `bs_gravatar_size`, `bs_templates_disable_mapping`) VALUES (1,1551722607,'Yellow Theme','Marko Cupic','a:4:{i:0;s:16:\"≥?g\ :\√\Èù\0\n\0\n\";i:1;s:16:\"\ÛÂ¥™>û\Èù\0\n\0\n\";i:2;s:16:\"EKõ;ç\Èù\0\n\0\n\";i:3;s:16:\"GÌ±å:¿\Èù\0\n\0\n\";}','\Ÿ?∑>ù\Èù\0\n\0\n','templates/yellow_theme','a:0:{}','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_undo`
--

DROP TABLE IF EXISTS `tl_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `fromTable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` mediumtext COLLATE utf8mb4_unicode_ci,
  `affectedRows` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_undo`
--

LOCK TABLES `tl_undo` WRITE;
/*!40000 ALTER TABLE `tl_undo` DISABLE KEYS */;
INSERT INTO `tl_undo` (`id`, `pid`, `tstamp`, `fromTable`, `query`, `affectedRows`, `data`) VALUES (1,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=12',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:2:\"12\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:24:\"Regenerated the symlinks\";s:4:\"func\";s:34:\"Contao\\Automator::generateSymlinks\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(2,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=11',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:2:\"11\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:25:\"Regenerated the XML files\";s:4:\"func\";s:34:\"Contao\\Automator::generateXmlFiles\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(3,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=10',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:2:\"10\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:21:\"Purged the page cache\";s:4:\"func\";s:32:\"Contao\\Automator::purgePageCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(4,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=9',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"9\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:22:\"Purged the temp folder\";s:4:\"func\";s:33:\"Contao\\Automator::purgeTempFolder\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(5,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=8',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"8\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:23:\"Purged the search cache\";s:4:\"func\";s:34:\"Contao\\Automator::purgeSearchCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(6,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=7',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"7\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:21:\"Purged the page cache\";s:4:\"func\";s:32:\"Contao\\Automator::purgePageCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(7,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=6',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"6\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:23:\"Purged the script cache\";s:4:\"func\";s:34:\"Contao\\Automator::purgeScriptCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(8,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=5',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"5\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:21:\"Purged the page cache\";s:4:\"func\";s:32:\"Contao\\Automator::purgePageCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(9,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=4',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"4\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:48:\"Generated style sheet &quot;Stylesheet.css&quot;\";s:4:\"func\";s:37:\"Contao\\StyleSheets::updateStyleSheets\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(10,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=3',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"3\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:22:\"Purged the image cache\";s:4:\"func\";s:33:\"Contao\\Automator::purgeImageCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(11,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=2',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"2\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:21:\"Purged the page cache\";s:4:\"func\";s:32:\"Contao\\Automator::purgePageCache\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}'),(12,2,1551819940,'tl_log','DELETE FROM tl_log WHERE id=1',1,'a:1:{s:6:\"tl_log\";a:1:{i:0;a:8:{s:2:\"id\";s:1:\"1\";s:6:\"tstamp\";s:10:\"1551819930\";s:6:\"source\";s:2:\"BE\";s:6:\"action\";s:4:\"CRON\";s:8:\"username\";s:7:\"k.jones\";s:4:\"text\";s:21:\"Purged the system log\";s:4:\"func\";s:32:\"Contao\\Automator::purgeSystemLog\";s:7:\"browser\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";}}}');
/*!40000 ALTER TABLE `tl_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user`
--

DROP TABLE IF EXISTS `tl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backendTheme` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullscreen` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploader` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `showHelp` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumbnails` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useRTE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pwChange` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `gc_be_uploader_template` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'be_gc_html5_uploader',
  `gc_img_quality` smallint(5) unsigned NOT NULL DEFAULT '100',
  `gc_img_resolution` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_scaling',
  `useTwoFactor` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret` binary(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user`
--

LOCK TABLES `tl_user` WRITE;
/*!40000 ALTER TABLE `tl_user` DISABLE KEYS */;
INSERT INTO `tl_user` (`id`, `tstamp`, `username`, `name`, `email`, `language`, `backendTheme`, `fullscreen`, `uploader`, `showHelp`, `thumbnails`, `useRTE`, `useCE`, `password`, `pwChange`, `admin`, `groups`, `inherit`, `modules`, `themes`, `pagemounts`, `alpty`, `filemounts`, `fop`, `imageSizes`, `forms`, `formp`, `amg`, `disable`, `start`, `stop`, `session`, `dateAdded`, `lastLogin`, `currentLogin`, `loginCount`, `locked`, `faqs`, `faqp`, `news`, `newp`, `newsfeeds`, `newsfeedp`, `newsletters`, `newsletterp`, `calendars`, `calendarp`, `calendarfeeds`, `calendarfeedp`, `gc_be_uploader_template`, `gc_img_quality`, `gc_img_resolution`, `useTwoFactor`, `secret`) VALUES (2,1551819957,'k.jones','Kevin Jones','kjones@somehost.ch','de','flexible','','DropZone','1','1','1','1','$2y$10$5fJlaHAeqF6kxJmARe4iCucS5Q0JycNQ4i6EQ.7hCc4avnbCjN.YG','','1',NULL,'group','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','','','','a:0:{}',1551722347,0,1551819779,3,0,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','be_gc_html5_uploader',100,'no_scaling','',NULL);
/*!40000 ALTER TABLE `tl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user_group`
--

DROP TABLE IF EXISTS `tl_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `alexf` blob,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user_group`
--

LOCK TABLES `tl_user_group` WRITE;
/*!40000 ALTER TABLE `tl_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_version`
--

DROP TABLE IF EXISTS `tl_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `fromTable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editUrl` mediumtext COLLATE utf8mb4_unicode_ci,
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fromtable` (`fromTable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES (1,2,1551819950,1,'tl_user',2,'k.jones','Kevin Jones','contao?do=user&act=edit&id=2&ref=T7AfOumL&rt=ZiaTyU_CmGU3h0Igssk-zyCto1jChinIUhcfs7oG5xo&amp;act=edit&amp;id=2&amp;rt=ZiaTyU_CmGU3h0Igssk-zyCto1jChinIUhcfs7oG5xo','1','a:54:{s:2:\"id\";s:1:\"2\";s:6:\"tstamp\";s:10:\"1551722394\";s:8:\"username\";s:7:\"k.jones\";s:4:\"name\";s:11:\"Kevin Jones\";s:5:\"email\";s:18:\"kjones@somehost.ch\";s:8:\"language\";s:2:\"de\";s:12:\"backendTheme\";s:8:\"flexible\";s:10:\"fullscreen\";s:0:\"\";s:8:\"uploader\";s:8:\"DropZone\";s:8:\"showHelp\";s:1:\"1\";s:10:\"thumbnails\";s:1:\"1\";s:6:\"useRTE\";s:1:\"1\";s:5:\"useCE\";s:1:\"1\";s:8:\"password\";s:60:\"$2y$10$5fJlaHAeqF6kxJmARe4iCucS5Q0JycNQ4i6EQ.7hCc4avnbCjN.YG\";s:8:\"pwChange\";s:0:\"\";s:5:\"admin\";s:1:\"1\";s:6:\"groups\";N;s:7:\"inherit\";s:5:\"group\";s:7:\"modules\";s:6:\"a:0:{}\";s:6:\"themes\";s:6:\"a:0:{}\";s:10:\"pagemounts\";s:6:\"a:0:{}\";s:5:\"alpty\";s:6:\"a:0:{}\";s:10:\"filemounts\";s:6:\"a:0:{}\";s:3:\"fop\";s:6:\"a:0:{}\";s:10:\"imageSizes\";s:6:\"a:0:{}\";s:5:\"forms\";s:6:\"a:0:{}\";s:5:\"formp\";s:6:\"a:0:{}\";s:3:\"amg\";s:6:\"a:0:{}\";s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:7:\"session\";s:1994:\"a:13:{s:11:\"new_records\";a:0:{}s:12:\"tl_page_tree\";a:10:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;}s:15:\"fieldset_states\";a:7:{s:9:\"tl_layout\";a:6:{s:13:\"jquery_legend\";i:1;s:13:\"static_legend\";i:1;s:13:\"expert_legend\";i:1;s:18:\"picturefill_legend\";i:1;s:15:\"sections_legend\";i:1;s:15:\"webfonts_legend\";i:1;}s:9:\"tl_module\";a:3:{s:15:\"template_legend\";i:1;s:12:\"image_legend\";i:1;s:13:\"expert_legend\";i:1;}s:10:\"tl_content\";a:2:{s:16:\"invisible_legend\";i:1;s:15:\"template_legend\";i:1;}s:11:\"tl_settings\";a:4:{s:12:\"files_legend\";i:1;s:14:\"uploads_legend\";i:1;s:13:\"global_legend\";i:1;s:22:\"gallery_creator_legend\";i:1;}s:8:\"tl_style\";a:1:{s:13:\"custom_legend\";i:1;}s:7:\"tl_page\";a:6:{s:16:\"protected_legend\";i:1;s:13:\"layout_legend\";i:1;s:12:\"chmod_legend\";i:1;s:13:\"expert_legend\";i:1;s:14:\"publish_legend\";i:0;s:13:\"global_legend\";i:1;}s:8:\"tl_theme\";a:1:{s:12:\"image_legend\";i:1;}}s:23:\"tl_article_tl_page_tree\";a:3:{i:1;i:1;i:2;i:1;i:8;i:0;}s:26:\"tl_article_tl_article_tree\";a:5:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;}s:8:\"filetree\";a:20:{s:8:\"4492df80\";i:1;s:8:\"d03f6c9c\";i:1;s:8:\"de71aa55\";i:1;s:8:\"7383b3cb\";i:1;s:8:\"be0b5b82\";i:0;s:8:\"03e5f02f\";i:1;s:8:\"f7ebddea\";i:1;s:8:\"f3838c5b\";i:0;s:8:\"817a9672\";i:0;s:8:\"9eb4ed97\";i:1;s:8:\"ddc8f29a\";i:1;s:8:\"0ebd978a\";i:1;s:8:\"095c3734\";i:1;s:8:\"088d6c22\";i:1;s:8:\"43b27ca6\";i:0;s:8:\"e382d02a\";i:1;s:8:\"234cef6d\";i:1;s:8:\"a15f743f\";i:1;s:8:\"5627c46f\";i:1;s:8:\"3519ce39\";i:1;}s:12:\"tl_page_node\";s:1:\"0\";s:9:\"CLIPBOARD\";N;s:30:\"tl_gallery_creator_albums_tree\";a:7:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}s:6:\"search\";a:2:{s:27:\"tl_gallery_creator_pictures\";a:2:{s:5:\"field\";s:14:\"socialMediaSRC\";s:5:\"value\";s:0:\"\";}s:7:\"tl_news\";a:2:{s:5:\"field\";s:3:\"alt\";s:5:\"value\";s:0:\"\";}}s:6:\"filter\";a:2:{s:29:\"tl_gallery_creator_pictures_3\";a:1:{s:5:\"limit\";s:3:\"all\";}s:9:\"tl_news_1\";a:1:{s:5:\"limit\";s:3:\"all\";}}s:13:\"tl_files_node\";s:0:\"\";s:7:\"sorting\";a:1:{s:7:\"tl_news\";s:9:\"date DESC\";}}\";s:9:\"dateAdded\";s:10:\"1551722347\";s:9:\"lastLogin\";s:1:\"0\";s:12:\"currentLogin\";s:10:\"1551819779\";s:10:\"loginCount\";s:1:\"3\";s:6:\"locked\";s:1:\"0\";s:4:\"faqs\";s:6:\"a:0:{}\";s:4:\"faqp\";s:6:\"a:0:{}\";s:4:\"news\";s:6:\"a:0:{}\";s:4:\"newp\";s:6:\"a:0:{}\";s:9:\"newsfeeds\";s:6:\"a:0:{}\";s:9:\"newsfeedp\";s:6:\"a:0:{}\";s:11:\"newsletters\";s:6:\"a:0:{}\";s:11:\"newsletterp\";s:6:\"a:0:{}\";s:9:\"calendars\";s:6:\"a:0:{}\";s:9:\"calendarp\";s:6:\"a:0:{}\";s:13:\"calendarfeeds\";s:6:\"a:0:{}\";s:13:\"calendarfeedp\";s:6:\"a:0:{}\";s:23:\"gc_be_uploader_template\";s:20:\"be_gc_html5_uploader\";s:14:\"gc_img_quality\";s:3:\"100\";s:17:\"gc_img_resolution\";s:10:\"no_scaling\";s:12:\"useTwoFactor\";s:0:\"\";s:6:\"secret\";N;}');
/*!40000 ALTER TABLE `tl_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aeracing_contao44'
--

--
-- Dumping routines for database 'aeracing_contao44'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-05 22:07:50
