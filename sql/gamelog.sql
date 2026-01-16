# Host: localhost  (Version: 5.5.53)
# Date: 2026-01-16 11:32:05
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "accountlog202108"
#

DROP TABLE IF EXISTS `accountlog202108`;
CREATE TABLE `accountlog202108` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202108"
#

/*!40000 ALTER TABLE `accountlog202108` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202108` ENABLE KEYS */;

#
# Structure for table "accountlog202109"
#

DROP TABLE IF EXISTS `accountlog202109`;
CREATE TABLE `accountlog202109` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=766 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202109"
#

/*!40000 ALTER TABLE `accountlog202109` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202109` ENABLE KEYS */;

#
# Structure for table "accountlog202110"
#

DROP TABLE IF EXISTS `accountlog202110`;
CREATE TABLE `accountlog202110` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=1736 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202110"
#

/*!40000 ALTER TABLE `accountlog202110` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202110` ENABLE KEYS */;

#
# Structure for table "accountlog202111"
#

DROP TABLE IF EXISTS `accountlog202111`;
CREATE TABLE `accountlog202111` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202111"
#

/*!40000 ALTER TABLE `accountlog202111` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202111` ENABLE KEYS */;

#
# Structure for table "accountlog202112"
#

DROP TABLE IF EXISTS `accountlog202112`;
CREATE TABLE `accountlog202112` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202112"
#

/*!40000 ALTER TABLE `accountlog202112` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202112` ENABLE KEYS */;

#
# Structure for table "accountlog202201"
#

DROP TABLE IF EXISTS `accountlog202201`;
CREATE TABLE `accountlog202201` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202201"
#

/*!40000 ALTER TABLE `accountlog202201` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202201` ENABLE KEYS */;

#
# Structure for table "accountlog202209"
#

DROP TABLE IF EXISTS `accountlog202209`;
CREATE TABLE `accountlog202209` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202209"
#

/*!40000 ALTER TABLE `accountlog202209` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202209` ENABLE KEYS */;

#
# Structure for table "accountlog202210"
#

DROP TABLE IF EXISTS `accountlog202210`;
CREATE TABLE `accountlog202210` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202210"
#

/*!40000 ALTER TABLE `accountlog202210` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202210` ENABLE KEYS */;

#
# Structure for table "accountlog202211"
#

DROP TABLE IF EXISTS `accountlog202211`;
CREATE TABLE `accountlog202211` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202211"
#

/*!40000 ALTER TABLE `accountlog202211` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202211` ENABLE KEYS */;

#
# Structure for table "accountlog202301"
#

DROP TABLE IF EXISTS `accountlog202301`;
CREATE TABLE `accountlog202301` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202301"
#

/*!40000 ALTER TABLE `accountlog202301` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202301` ENABLE KEYS */;

#
# Structure for table "accountlog202302"
#

DROP TABLE IF EXISTS `accountlog202302`;
CREATE TABLE `accountlog202302` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202302"
#

/*!40000 ALTER TABLE `accountlog202302` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202302` ENABLE KEYS */;

#
# Structure for table "accountlog202304"
#

DROP TABLE IF EXISTS `accountlog202304`;
CREATE TABLE `accountlog202304` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202304"
#

/*!40000 ALTER TABLE `accountlog202304` DISABLE KEYS */;
INSERT INTO `accountlog202304` VALUES (1,'2023-04-21 19:45:30','','',-1,'','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,15000,0,'ltScriptRequestModify','??㊣?(那?車??∩??赤?)???車??﹞?'),(2,'2023-04-21 19:45:30','GVLNOTBSQZREAEEXVDZOFZOLWJYXGI','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,15000,0,'ltRequestSubYB','??3y?a㊣|???車'),(3,'2023-04-21 19:45:30','GVLNOTBSQZREAEEXVDZOFZOLWJYXGI','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,15000,0,'ltExecSQLBefore','℅?㊣?DT???a㊣|那y'),(4,'2023-04-21 19:45:30','GVLNOTBSQZREAEEXVDZOFZOLWJYXGI','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,15000,0,'ltExecSQLFinished','?a㊣|??㊣?'),(5,'2023-04-21 19:45:30','','',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,15000,0,'ltScriptModyfyEnd','??㊣?(那?車??∩??赤?)??﹞?3谷1|'),(6,'2023-04-21 19:46:28','','',-1,'','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,6000,0,'ltScriptRequestModify','??㊣?(那?車??∩??赤?)???車??﹞?'),(7,'2023-04-21 19:46:28','OMSYEHKNYJNNKDJKDMDWVFXCZSPIJA','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltRequestSubYB','??3y?a㊣|???車'),(8,'2023-04-21 19:46:28','OMSYEHKNYJNNKDJKDMDWVFXCZSPIJA','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltExecSQLBefore','℅?㊣?DT???a㊣|那y'),(9,'2023-04-21 19:46:28','OMSYEHKNYJNNKDJKDMDWVFXCZSPIJA','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltExecSQLFinished','?a㊣|??㊣?'),(10,'2023-04-21 19:46:28','','',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,6000,0,'ltScriptModyfyEnd','??㊣?(那?車??∩??赤?)??﹞?3谷1|'),(11,'2023-04-21 19:51:19','','',-1,'','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,6000,0,'ltScriptRequestModify','??㊣?(那?車??∩??赤?)???車??﹞?'),(12,'2023-04-21 19:51:19','MDNKIAICLLJZNOEMJHDJSVGBDXOINZ','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltRequestSubYB','??3y?a㊣|???車'),(13,'2023-04-21 19:51:19','MDNKIAICLLJZNOEMJHDJSVGBDXOINZ','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltExecSQLBefore','℅?㊣?DT???a㊣|那y'),(14,'2023-04-21 19:51:19','MDNKIAICLLJZNOEMJHDJSVGBDXOINZ','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,6000,0,'ltExecSQLFinished','?a㊣|??㊣?'),(15,'2023-04-21 19:51:19','','',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,6000,0,'ltScriptModyfyEnd','??㊣?(那?車??∩??赤?)??﹞?3谷1|'),(16,'2023-04-21 19:53:47','','',-1,'','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,5,0,'ltScriptRequestModify','??㊣?(那?車??∩??赤?)???車??﹞?'),(17,'2023-04-21 19:53:47','GWDUAHAGYHWUBNRXLGWZRRZGGZASFT','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,5,0,'ltRequestSubYB','??3y?a㊣|???車'),(18,'2023-04-21 19:53:47','GWDUAHAGYHWUBNRXLGWZRRZGGZASFT','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,5,0,'ltExecSQLBefore','℅?㊣?DT???a㊣|那y'),(19,'2023-04-21 19:53:47','GWDUAHAGYHWUBNRXLGWZRRZGGZASFT','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,5,0,'ltExecSQLFinished','?a㊣|??㊣?'),(20,'2023-04-21 19:53:47','','',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifySub',0,0,5,0,'ltScriptModyfyEnd','??㊣?(那?車??∩??赤?)??﹞?3谷1|'),(21,'2023-04-21 19:53:59','','',-1,'','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifyAdd',0,0,100000,0,'ltScriptRequestModify','??㊣?(那?車??∩??赤?)???車3??米'),(22,'2023-04-21 19:53:59','JDFPDLTYYHCWSVPTWMYULYLVOINATK','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,100000,0,'ltRequestAddYB','???車?a㊣|???車'),(23,'2023-04-21 19:53:59','JDFPDLTYYHCWSVPTWMYULYLVOINATK','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,100000,0,'ltExecSQLBefore','℅?㊣?DT???a㊣|那y'),(24,'2023-04-21 19:53:59','JDFPDLTYYHCWSVPTWMYULYLVOINATK','0',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypYBSystem',0,0,100000,0,'ltExecSQLFinished','?a㊣|??㊣?'),(25,'2023-04-21 19:53:59','','',176001000000001,'pt32d062ace60d8f0783','那?車??∩??赤?','那?車??∩??赤?','ypScriptModifyAdd',0,0,100000,0,'ltScriptModyfyEnd','??㊣?(那?車??∩??赤?)3??米3谷1|');
/*!40000 ALTER TABLE `accountlog202304` ENABLE KEYS */;

#
# Structure for table "accountlog202406"
#

DROP TABLE IF EXISTS `accountlog202406`;
CREATE TABLE `accountlog202406` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202406"
#

/*!40000 ALTER TABLE `accountlog202406` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202406` ENABLE KEYS */;

#
# Structure for table "accountlog202601"
#

DROP TABLE IF EXISTS `accountlog202601`;
CREATE TABLE `accountlog202601` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `Context_Id` char(32) NOT NULL,
  `Order_Id` char(32) NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `PTID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ChrName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FromWho` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Pay_Type` enum('ypYBSystem','ypGHomePay','ypConsignment','ypGMModifyAdd','ypGMModifySub','ypStrengthenEquip','ypYBShop','ypStallBuyItem','ypMailGetYb','ypScriptBuy','ypScriptModifyAdd','ypScriptModifySub') DEFAULT NULL,
  `ItemIdx` int(11) DEFAULT NULL,
  `ItemNum` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `nResult` int(11) DEFAULT NULL,
  `AccountAct` enum('ltRequestAddYB','ltRequestSubYB','ltExecSQLBefore','ltExecSQLFinished','ltGHomePayEnd','ltGHomePayStart','ltGMRequestModify','ltGMModyfyEnd','ltStallSubYbBegin','ltStallSubYbEnd','ltMailAddYbBegin','ltMailAddYbEnd','ltConsignmentbegin','ltRequestSubBuyerYB','ltRequestAddSellerYB','ltGiveItemsSucess','ltGiveItemsFail','ltConsignmentEnd','ltTimeOutBegin','ltRequestSubPlayerYB','ltGetBackItemsSucess','ltGetBackItemsFail','ltTimeOutEnd','ltStrengthenEquipBegin','ltStrengthenEquipEnd','ltYBShopBuyBegin','ltYBShopBuyEnd','ltYBScriptBuyBegin','ltYBScriptBuyEnd','ltScriptRequestModify','ltScriptModyfyEnd') DEFAULT NULL,
  `ActDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idx`),
  KEY `Query1_index` (`UserID`,`Pay_Type`,`nResult`,`UpdateTime`),
  KEY `Query2_index` (`Context_Id`,`Order_Id`,`Pay_Type`,`nResult`,`AccountAct`),
  KEY `Time_Index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=4294967295;

#
# Data for table "accountlog202601"
#

/*!40000 ALTER TABLE `accountlog202601` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountlog202601` ENABLE KEYS */;

#
# Structure for table "kickout_log"
#

DROP TABLE IF EXISTS `kickout_log`;
CREATE TABLE `kickout_log` (
  `Idx` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` bigint(20) NOT NULL DEFAULT '0',
  `PlayerName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `MapName` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Reason` char(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Notes` char(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `GMname` char(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `CreateDate` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`Idx`),
  KEY `PID_index` (`PlayerID`),
  KEY `PNAME_Index` (`PlayerName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "kickout_log"
#

/*!40000 ALTER TABLE `kickout_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `kickout_log` ENABLE KEYS */;

#
# Structure for table "yb_script_buy_log"
#

DROP TABLE IF EXISTS `yb_script_buy_log`;
CREATE TABLE `yb_script_buy_log` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `PTID` char(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `CharName` char(14) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `CostType` int(11) NOT NULL DEFAULT '0' COMMENT '1o?辰角角D赤',
  `PsBkFuncName` char(14) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL COMMENT '??㊣???米¯﹞?﹞“',
  `CostNum` int(11) NOT NULL DEFAULT '1' COMMENT '那y芍?',
  `UseCredit` int(11) NOT NULL DEFAULT '1' COMMENT '?“﹞??a㊣|那y',
  `CurrentCredit` int(11) NOT NULL DEFAULT '0' COMMENT '1o?辰?～?a㊣|那y',
  `Status` enum('True','Undetermined','False') NOT NULL DEFAULT 'Undetermined' COMMENT '那?﹞?3谷1|﹞⊿﹞????﹞',
  PRIMARY KEY (`idx`),
  KEY `UseLogs_index` (`UserID`,`Status`),
  KEY `UseLogs_index2` (`CharName`,`Status`),
  KEY `Time_index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='??㊣???﹞?豕???㊣赤';

#
# Data for table "yb_script_buy_log"
#

/*!40000 ALTER TABLE `yb_script_buy_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `yb_script_buy_log` ENABLE KEYS */;

#
# Structure for table "ybgoods_buy_log"
#

DROP TABLE IF EXISTS `ybgoods_buy_log`;
CREATE TABLE `ybgoods_buy_log` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `UpdateTime` datetime NOT NULL,
  `PTID` char(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `UserID` bigint(20) NOT NULL DEFAULT '0',
  `CharName` char(14) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `GoodsIdx` int(11) NOT NULL DEFAULT '0',
  `GoodsName` char(14) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `GoodsCount` int(11) NOT NULL DEFAULT '1',
  `UseCredit` int(11) NOT NULL DEFAULT '1' COMMENT '?“﹞??a㊣|那y',
  `CurrentCredit` int(11) NOT NULL DEFAULT '0' COMMENT '1o?辰?～?a㊣|那y',
  `Status` enum('True','Undetermined','False') NOT NULL DEFAULT 'Undetermined',
  PRIMARY KEY (`idx`),
  KEY `UseLogs_index` (`UserID`,`Status`),
  KEY `UseLogs_index2` (`CharName`,`Status`),
  KEY `Goods_Index` (`GoodsName`),
  KEY `Time_index` (`UpdateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='谷足3???﹞?豕???㊣赤';

#
# Data for table "ybgoods_buy_log"
#

/*!40000 ALTER TABLE `ybgoods_buy_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ybgoods_buy_log` ENABLE KEYS */;
