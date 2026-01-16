# Host: localhost  (Version: 5.5.53)
# Date: 2026-01-16 11:32:12
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "castle"
#

DROP TABLE IF EXISTS `castle`;
CREATE TABLE `castle` (
  `Guid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `TotalGold` int(10) unsigned NOT NULL DEFAULT '0',
  `TodayIncome` int(10) unsigned NOT NULL DEFAULT '0',
  `WineCount` int(10) unsigned NOT NULL DEFAULT '0',
  `OwnGuild` char(32) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '',
  `IncomeToday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `changeDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `WarDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Data` blob,
  `ExtValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue2` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue3` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue4` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue5` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue6` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "castle"
#

/*!40000 ALTER TABLE `castle` DISABLE KEYS */;
INSERT INTO `castle` VALUES (1,'иж3буик??',0,0,0,'','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `castle` ENABLE KEYS */;

#
# Structure for table "castlelog"
#

DROP TABLE IF EXISTS `castlelog`;
CREATE TABLE `castlelog` (
  `name` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `guildName` char(32) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '',
  `guildLordName` char(32) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '',
  `takeDay` date NOT NULL DEFAULT '0000-00-00',
  `takeTime` datetime NOT NULL,
  PRIMARY KEY (`name`,`takeDay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "castlelog"
#

/*!40000 ALTER TABLE `castlelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `castlelog` ENABLE KEYS */;

#
# Structure for table "guild_list"
#

DROP TABLE IF EXISTS `guild_list`;
CREATE TABLE `guild_list` (
  `Idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Gname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `MaxUser` int(10) unsigned NOT NULL DEFAULT '0',
  `GLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `CurExp` int(10) unsigned NOT NULL DEFAULT '0',
  `UserAddExp` int(10) unsigned NOT NULL DEFAULT '0',
  `Water` int(10) unsigned NOT NULL DEFAULT '0',
  `StarPoint` int(10) unsigned NOT NULL DEFAULT '0',
  `StarGrantTime` int(10) unsigned NOT NULL DEFAULT '0',
  `GuildFlag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `StarOwner` char(15) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '',
  `CreateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Notice` blob,
  `ExtValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue2` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue3` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue4` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue5` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue6` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Idx`),
  UNIQUE KEY `gname_index` (`Gname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "guild_list"
#

/*!40000 ALTER TABLE `guild_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_list` ENABLE KEYS */;

#
# Structure for table "guild_log"
#

DROP TABLE IF EXISTS `guild_log`;
CREATE TABLE `guild_log` (
  `Idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Gname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `LogType` int(10) unsigned NOT NULL DEFAULT '0',
  `MsgText` char(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `CreateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Idx`),
  KEY `gname_index` (`Gname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "guild_log"
#

/*!40000 ALTER TABLE `guild_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_log` ENABLE KEYS */;

#
# Structure for table "guild_rank"
#

DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `Idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Gname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `RankID` int(10) unsigned NOT NULL DEFAULT '0',
  `RankName` char(16) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '0',
  `MaxUser` int(10) unsigned NOT NULL DEFAULT '0',
  `CreateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Idx`),
  UNIQUE KEY `rankid_index` (`Gname`,`RankID`),
  UNIQUE KEY `rankname_index` (`Gname`,`RankName`),
  KEY `gname_index` (`Gname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "guild_rank"
#

/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;

#
# Structure for table "guild_relation"
#

DROP TABLE IF EXISTS `guild_relation`;
CREATE TABLE `guild_relation` (
  `Idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SrcGname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `DstGname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Relationid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ExtValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtValue2` int(10) unsigned NOT NULL DEFAULT '0',
  `CreateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Idx`),
  UNIQUE KEY `pair_index` (`SrcGname`,`DstGname`,`Relationid`),
  KEY `src_index` (`SrcGname`,`Relationid`),
  KEY `dst_index` (`DstGname`,`Relationid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "guild_relation"
#

/*!40000 ALTER TABLE `guild_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_relation` ENABLE KEYS */;

#
# Structure for table "guild_user"
#

DROP TABLE IF EXISTS `guild_user`;
CREATE TABLE `guild_user` (
  `Idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Gname` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `CharName` char(16) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `RankID` int(10) unsigned NOT NULL DEFAULT '0',
  `ConferRight` int(10) unsigned NOT NULL DEFAULT '0',
  `Contribution` int(10) unsigned NOT NULL DEFAULT '0',
  `JoinDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` tinyint(3) unsigned DEFAULT '0',
  `sex` tinyint(3) unsigned DEFAULT '0',
  `level` smallint(5) unsigned DEFAULT '0',
  `modifydate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sfLevel` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`Idx`),
  UNIQUE KEY `user_index` (`CharName`),
  KEY `rankid_index` (`Gname`,`RankID`),
  KEY `gname_index` (`Gname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "guild_user"
#

/*!40000 ALTER TABLE `guild_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_user` ENABLE KEYS */;
