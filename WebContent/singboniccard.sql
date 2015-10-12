/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : singboniccard

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-10-10 16:23:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `authgroup`
-- ----------------------------
DROP TABLE IF EXISTS `authgroup`;
CREATE TABLE `authgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `groupName` varchar(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `roles` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authgroup
-- ----------------------------
INSERT INTO `authgroup` VALUES ('1', '1', '管理员', null, null);
INSERT INTO `authgroup` VALUES ('2', '1', '出纳员', null, null);
INSERT INTO `authgroup` VALUES ('3', '1', '出纳员2', '', 'ROLE_SYSTEMSETTING,ROLE_BATCH,ROLE_BATCH_ADD,ROLE_ACCOUNTINGCENTER,');
INSERT INTO `authgroup` VALUES ('6', '1', '好', null, 'ROLE_SYSTEMSETTING,ROLE_SYSTEMPARAMETER,ROLE_BATCH,ROLE_BATCH_ADD,ROLE_BATCH_EDIT,ROLE_USERDEPT,ROLE_USERDEPT_ADD,ROLE_USERDEPT_EDIT,ROLE_USERDEPT_DEL,ROLE_DISCOUNT,ROLE_DISCOUNT_ADD,ROLE_DISCOUNT_EDIT,ROLE_DISCOUNT_DEL,');
INSERT INTO `authgroup` VALUES ('7', '1', '出纳员23', null, 'ffsff');
INSERT INTO `authgroup` VALUES ('8', '1', '出纳员234', null, 'ROLE_SYSTEMSETTING,ROLE_SYSTEMPARAMETER,ROLE_BATCH,ROLE_BATCH_ADD,ROLE_BATCH_EDIT,ROLE_USERDEPT,ROLE_USERDEPT_ADD,ROLE_USERDEPT_EDIT,ROLE_USERDEPT_DEL,ROLE_DISCOUNT,ROLE_DISCOUNT_ADD,ROLE_DISCOUNT_EDIT,ROLE_DISCOUNT_DEL,ROLE_CARDCENTER,ROLE_FUNCCARD,ROLE_CARDMANAGER,ROLE_ACCOUNTINGCENTER,');

-- ----------------------------
-- Table structure for `authusergroup`
-- ----------------------------
DROP TABLE IF EXISTS `authusergroup`;
CREATE TABLE `authusergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `groupId` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authusergroup
-- ----------------------------
INSERT INTO `authusergroup` VALUES ('1', '1', '1');
INSERT INTO `authusergroup` VALUES ('2', '1', '2');
INSERT INTO `authusergroup` VALUES ('3', '2', '3');
INSERT INTO `authusergroup` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for `batch`
-- ----------------------------
DROP TABLE IF EXISTS `batch`;
CREATE TABLE `batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchName` varchar(255) DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `invalidDate` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of batch
-- ----------------------------
INSERT INTO `batch` VALUES ('1', '11112', '2015-05-28 00:00:00', '2015-08-28 00:00:00', '2015-10-31 00:00:00', '1');
INSERT INTO `batch` VALUES ('2', '112', '2015-05-28 00:00:00', '2015-08-29 00:00:00', '2015-10-31 00:00:00', '1');
INSERT INTO `batch` VALUES ('3', '33341', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-05-30 00:00:00', '1');
INSERT INTO `batch` VALUES ('4', '11222', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-10-28 00:00:00', '1');
INSERT INTO `batch` VALUES ('5', '111', '2015-05-28 00:00:00', '2015-05-29 00:00:00', null, '1');
INSERT INTO `batch` VALUES ('6', '33341', '2015-05-07 00:00:00', '2015-05-29 00:00:00', '2015-05-30 00:00:00', '1');
INSERT INTO `batch` VALUES ('7', '11222', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-06-16 00:00:00', '1');
INSERT INTO `batch` VALUES ('8', '11222去去去', '2015-05-28 00:00:00', '2015-05-29 00:00:00', null, '1');
INSERT INTO `batch` VALUES ('9', '112222222', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-06-17 00:00:00', '1');
INSERT INTO `batch` VALUES ('10', '1122222223', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-06-17 00:00:00', '1');
INSERT INTO `batch` VALUES ('11', '批次n1', '2015-05-28 00:00:00', '2015-05-29 00:00:00', '2015-06-17 00:00:00', '1');
INSERT INTO `batch` VALUES ('12', 'fdf', '2015-07-02 00:00:00', '2015-07-08 00:00:00', '2015-07-22 00:00:00', '1');
INSERT INTO `batch` VALUES ('13', '112221233', '2015-05-28 00:00:00', '2015-05-29 00:00:00', null, '1');
INSERT INTO `batch` VALUES ('14', '0731', '2015-05-28 00:00:00', '2015-08-28 00:00:00', null, '1');
INSERT INTO `batch` VALUES ('15', 'sdssfsdf', '2015-05-07 00:00:00', '2015-05-29 00:00:00', null, '1');

-- ----------------------------
-- Table structure for `cardparam`
-- ----------------------------
DROP TABLE IF EXISTS `cardparam`;
CREATE TABLE `cardparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `cardCost` int(11) DEFAULT NULL,
  `cardDeposit` int(11) DEFAULT NULL,
  `prepayFare` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cardparam
-- ----------------------------
INSERT INTO `cardparam` VALUES ('1', '1', '10', '5', '20');

-- ----------------------------
-- Table structure for `cardparambase`
-- ----------------------------
DROP TABLE IF EXISTS `cardparambase`;
CREATE TABLE `cardparambase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardCost` int(11) DEFAULT NULL,
  `cardDeposit` int(11) DEFAULT NULL,
  `prepayFare` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cardparambase
-- ----------------------------
INSERT INTO `cardparambase` VALUES ('1', '0', '0', '0');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL,
  `serialNumber` varchar(50) DEFAULT NULL,
  `authNumber` varchar(50) DEFAULT NULL,
  `baseSection` int(11) DEFAULT NULL,
  `heartInterval` int(11) DEFAULT NULL,
  `uploadInterval` int(11) DEFAULT NULL,
  `uploadErrTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '河南郑州电子有限公司', '0312', '0371', '1', '10', '5', '5');

-- ----------------------------
-- Table structure for `consume`
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float DEFAULT NULL,
  `uploadTime` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lb6mlnq6t18p7rmq1ydclckd8` (`company_id`),
  CONSTRAINT `FK_lb6mlnq6t18p7rmq1ydclckd8` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consume
-- ----------------------------

-- ----------------------------
-- Table structure for `consumeparam`
-- ----------------------------
DROP TABLE IF EXISTS `consumeparam`;
CREATE TABLE `consumeparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `cardMinFare` int(11) DEFAULT NULL,
  `cardMinFareCardTypes` varchar(16) DEFAULT NULL,
  `dayLimitFare` int(11) DEFAULT NULL,
  `dayLimitFareCardTypes` varchar(16) DEFAULT NULL,
  `timeLimitFare` int(11) DEFAULT NULL,
  `timeLimitFareCardTypes` varchar(16) DEFAULT NULL,
  `consumeType` int(11) DEFAULT NULL COMMENT '补助钱包、大钱包、先补助后大钱包',
  `userPwd` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumeparam
-- ----------------------------
INSERT INTO `consumeparam` VALUES ('1', '1', '10', ',11,14,,', '100', ',11,,', '12', ',4,14,,', '1', '88887');

-- ----------------------------
-- Table structure for `consumeparambase`
-- ----------------------------
DROP TABLE IF EXISTS `consumeparambase`;
CREATE TABLE `consumeparambase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardMinFare` int(11) DEFAULT NULL,
  `cardMinFareCardTypes` varchar(16) DEFAULT NULL,
  `dayLimitFare` int(11) DEFAULT NULL,
  `dayLimitFareCardTypes` varchar(16) DEFAULT NULL,
  `timeLimitFare` int(11) DEFAULT NULL,
  `timeLimitFareCardTypes` varchar(16) DEFAULT NULL,
  `consumeType` int(11) DEFAULT NULL COMMENT '补助钱包、大钱包、先补助后大钱包',
  `userPwd` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumeparambase
-- ----------------------------
INSERT INTO `consumeparambase` VALUES ('1', '0', ',,', '0', ',,', '0', ',,', '2', '88888');

-- ----------------------------
-- Table structure for `cookbook`
-- ----------------------------
DROP TABLE IF EXISTS `cookbook`;
CREATE TABLE `cookbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `cookbookCode` int(11) DEFAULT NULL,
  `cookbookName` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=842 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cookbook
-- ----------------------------
INSERT INTO `cookbook` VALUES ('1', '1', '1', '胡辣汤1', '1', null, '');
INSERT INTO `cookbook` VALUES ('2', '1', '2', '胡辣汤2', '2', null, '');
INSERT INTO `cookbook` VALUES ('3', '1', '3', '胡辣汤3', '2', null, '');
INSERT INTO `cookbook` VALUES ('4', '1', '4', '胡辣汤4', '15', null, '');
INSERT INTO `cookbook` VALUES ('5', '1', '5', '胡辣汤5', '20', null, '');
INSERT INTO `cookbook` VALUES ('6', '1', '6', '胡辣汤6', '28', null, '');
INSERT INTO `cookbook` VALUES ('7', '1', '7', '胡辣汤7', '18', null, '');
INSERT INTO `cookbook` VALUES ('8', '1', '8', '胡辣汤8', '3', null, '');
INSERT INTO `cookbook` VALUES ('9', '1', '9', '胡辣汤9', '3', null, '');
INSERT INTO `cookbook` VALUES ('10', '1', '10', '胡辣汤10', '3', null, '');
INSERT INTO `cookbook` VALUES ('11', '1', '11', '胡辣汤11', '3', null, '');
INSERT INTO `cookbook` VALUES ('12', '1', '12', '胡辣汤12', '6', null, '');
INSERT INTO `cookbook` VALUES ('13', '1', '13', '胡辣汤13', '9', null, '');
INSERT INTO `cookbook` VALUES ('14', '1', '14', '胡辣汤14', '12', null, '');
INSERT INTO `cookbook` VALUES ('15', '1', '15', '胡辣汤15', '15', null, '');
INSERT INTO `cookbook` VALUES ('16', '1', '16', '胡辣汤16', '18', null, '');
INSERT INTO `cookbook` VALUES ('17', '1', '17', '胡辣汤17', '21', null, '');
INSERT INTO `cookbook` VALUES ('18', '1', '18', '胡辣汤18', '22', null, '');
INSERT INTO `cookbook` VALUES ('19', '1', '19', '胡辣汤19', '24', null, '');
INSERT INTO `cookbook` VALUES ('20', '1', '20', '胡辣汤20', '26', null, '');
INSERT INTO `cookbook` VALUES ('21', '1', '21', '胡辣汤21', '28', null, '');
INSERT INTO `cookbook` VALUES ('22', '1', '22', '胡辣汤22', '29', null, '');
INSERT INTO `cookbook` VALUES ('23', '1', '23', '胡辣汤23', '30', null, '');
INSERT INTO `cookbook` VALUES ('24', '1', '24', '胡辣汤24', '31', null, '');
INSERT INTO `cookbook` VALUES ('25', '1', '25', '胡辣汤25', '32', null, '');
INSERT INTO `cookbook` VALUES ('26', '1', '26', '胡辣汤26', '33', null, '');
INSERT INTO `cookbook` VALUES ('27', '1', '27', '胡辣汤27', '34', null, '');
INSERT INTO `cookbook` VALUES ('28', '1', '28', '胡辣汤28', '36', null, '');
INSERT INTO `cookbook` VALUES ('29', '1', '29', '胡辣汤29', '37', null, '');
INSERT INTO `cookbook` VALUES ('30', '1', '30', '胡辣汤30', '38', null, '');
INSERT INTO `cookbook` VALUES ('31', '1', '31', '胡辣汤31', '39', null, '');
INSERT INTO `cookbook` VALUES ('32', '1', '32', '胡辣汤32', '40', null, '');
INSERT INTO `cookbook` VALUES ('33', '1', '33', '胡辣汤33', '10', null, '');
INSERT INTO `cookbook` VALUES ('34', '1', '34', '胡辣汤34', '30', null, '');
INSERT INTO `cookbook` VALUES ('35', '1', '35', '胡辣汤35', '10', null, '');
INSERT INTO `cookbook` VALUES ('36', '1', '36', '胡辣汤36', '15', null, '');
INSERT INTO `cookbook` VALUES ('37', '1', '37', '胡辣汤37', '15', null, '');
INSERT INTO `cookbook` VALUES ('38', '1', '38', '胡辣汤38', '20', null, '');
INSERT INTO `cookbook` VALUES ('39', '1', '39', '胡辣汤39', '25', null, '');
INSERT INTO `cookbook` VALUES ('40', '1', '40', '胡辣汤40', '25', null, '');
INSERT INTO `cookbook` VALUES ('41', '1', '41', '胡辣汤41', '10', null, '');
INSERT INTO `cookbook` VALUES ('42', '1', '42', '胡辣汤42', '5', null, '');
INSERT INTO `cookbook` VALUES ('43', '1', '43', '胡辣汤43', '30', null, '');
INSERT INTO `cookbook` VALUES ('44', '1', '44', '胡辣汤44', '30', null, '');
INSERT INTO `cookbook` VALUES ('45', '1', '45', '胡辣汤45', '10', null, '');
INSERT INTO `cookbook` VALUES ('46', '1', '46', '胡辣汤46', '30', null, '');
INSERT INTO `cookbook` VALUES ('47', '1', '47', '胡辣汤47', '20', null, '');
INSERT INTO `cookbook` VALUES ('48', '1', '48', '胡辣汤48', '25', null, '');
INSERT INTO `cookbook` VALUES ('49', '1', '49', '胡辣汤49', '25', null, '');
INSERT INTO `cookbook` VALUES ('50', '1', '50', '胡辣汤50', '15', null, '');
INSERT INTO `cookbook` VALUES ('51', '1', '51', '胡辣汤51', '15', null, '');
INSERT INTO `cookbook` VALUES ('52', '1', '52', '胡辣汤52', '15', null, '');
INSERT INTO `cookbook` VALUES ('53', '1', '53', '胡辣汤53', '25', null, '');
INSERT INTO `cookbook` VALUES ('54', '1', '54', '胡辣汤54', '25', null, '');
INSERT INTO `cookbook` VALUES ('55', '1', '55', '胡辣汤55', '10', null, '');
INSERT INTO `cookbook` VALUES ('56', '1', '56', '胡辣汤56', '20', null, '');
INSERT INTO `cookbook` VALUES ('57', '1', '57', '胡辣汤57', '8', null, '');
INSERT INTO `cookbook` VALUES ('58', '1', '58', '胡辣汤58', '15', null, '');
INSERT INTO `cookbook` VALUES ('59', '1', '59', '胡辣汤59', '20', null, '');
INSERT INTO `cookbook` VALUES ('60', '1', '60', '胡辣汤60', '25', null, '');
INSERT INTO `cookbook` VALUES ('61', '1', '61', '胡辣汤61', '20', null, '');
INSERT INTO `cookbook` VALUES ('62', '1', '62', '胡辣汤62', '20', null, '');
INSERT INTO `cookbook` VALUES ('63', '1', '63', '胡辣汤63', '18', null, '');
INSERT INTO `cookbook` VALUES ('64', '1', '64', '胡辣汤64', '20', null, '');
INSERT INTO `cookbook` VALUES ('65', '1', '65', '胡辣汤65', '20', null, '');
INSERT INTO `cookbook` VALUES ('66', '1', '66', '胡辣汤66', '10', null, '');
INSERT INTO `cookbook` VALUES ('67', '1', '67', '胡辣汤67', '25', null, '');
INSERT INTO `cookbook` VALUES ('68', '1', '68', '胡辣汤68', '20', null, '');
INSERT INTO `cookbook` VALUES ('69', '1', '69', '胡辣汤69', '18', null, '');
INSERT INTO `cookbook` VALUES ('70', '1', '70', '胡辣汤70', '25', null, '');
INSERT INTO `cookbook` VALUES ('71', '1', '71', '胡辣汤71', '15', null, '');
INSERT INTO `cookbook` VALUES ('72', '1', '72', '胡辣汤72', '15', null, '');
INSERT INTO `cookbook` VALUES ('73', '1', '73', '胡辣汤73', '15', null, '');
INSERT INTO `cookbook` VALUES ('74', '1', '74', '胡辣汤74', '25', null, '');
INSERT INTO `cookbook` VALUES ('75', '1', '75', '胡辣汤75', '15', null, '');
INSERT INTO `cookbook` VALUES ('76', '1', '76', '胡辣汤76', '35', null, '');
INSERT INTO `cookbook` VALUES ('77', '1', '77', '胡辣汤77', '15', null, '');
INSERT INTO `cookbook` VALUES ('78', '1', '78', '胡辣汤78', '10', null, '');
INSERT INTO `cookbook` VALUES ('79', '1', '79', '胡辣汤79', '25', null, '');
INSERT INTO `cookbook` VALUES ('80', '1', '80', '胡辣汤80', '15', null, '');
INSERT INTO `cookbook` VALUES ('81', '1', '81', '胡辣汤81', '15', null, '');
INSERT INTO `cookbook` VALUES ('82', '1', '82', '胡辣汤82', '15', null, '');
INSERT INTO `cookbook` VALUES ('83', '1', '83', '胡辣汤83', '30', null, '');
INSERT INTO `cookbook` VALUES ('84', '1', '84', '胡辣汤84', '20', null, '');
INSERT INTO `cookbook` VALUES ('85', '1', '85', '胡辣汤85', '20', null, '');
INSERT INTO `cookbook` VALUES ('86', '1', '86', '胡辣汤86', '30', null, '');
INSERT INTO `cookbook` VALUES ('87', '1', '87', '胡辣汤87', '15', null, '');
INSERT INTO `cookbook` VALUES ('88', '1', '88', '胡辣汤88', '10', null, '');
INSERT INTO `cookbook` VALUES ('89', '1', '89', '胡辣汤89', '25', null, '');
INSERT INTO `cookbook` VALUES ('90', '1', '90', '胡辣汤90', '20', null, '');
INSERT INTO `cookbook` VALUES ('91', '1', '91', '胡辣汤91', '20', null, '');
INSERT INTO `cookbook` VALUES ('92', '1', '92', '胡辣汤92', '15', null, '');
INSERT INTO `cookbook` VALUES ('93', '1', '93', '胡辣汤93', '15', null, '');
INSERT INTO `cookbook` VALUES ('94', '1', '94', '胡辣汤94', '15', null, '');
INSERT INTO `cookbook` VALUES ('95', '1', '95', '胡辣汤95', '15', null, '');
INSERT INTO `cookbook` VALUES ('96', '1', '96', '胡辣汤96', '15', null, '');
INSERT INTO `cookbook` VALUES ('97', '1', '97', '胡辣汤97', '25', null, '');
INSERT INTO `cookbook` VALUES ('98', '1', '98', '胡辣汤98', '30', null, '');
INSERT INTO `cookbook` VALUES ('99', '1', '99', '胡辣汤99', '15', null, '');
INSERT INTO `cookbook` VALUES ('100', '1', '100', '胡辣汤100', '20', null, '');

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('10', '00', '1', '0');
INSERT INTO `dept` VALUES ('13', '西校区', '1', '0');
INSERT INTO `dept` VALUES ('14', '食堂', '1', '13');
INSERT INTO `dept` VALUES ('16', '食堂', '1', '10');
INSERT INTO `dept` VALUES ('17', '老食堂', '1', '16');
INSERT INTO `dept` VALUES ('18', '新食堂', '1', '16');
INSERT INTO `dept` VALUES ('20', '食堂0', '1', '14');
INSERT INTO `dept` VALUES ('21', '澡堂', '1', '13');
INSERT INTO `dept` VALUES ('22', '男澡堂', '1', '21');
INSERT INTO `dept` VALUES ('23', '1', '1', '0');
INSERT INTO `dept` VALUES ('24', '0', '1', '0');
INSERT INTO `dept` VALUES ('27', '01', '1', '23');
INSERT INTO `dept` VALUES ('28', '02', '1', '23');
INSERT INTO `dept` VALUES ('29', '03', '1', '23');
INSERT INTO `dept` VALUES ('30', '11', '1', '24');

-- ----------------------------
-- Table structure for `device`
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `operId` int(11) DEFAULT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  `deviceNum` int(11) DEFAULT NULL,
  `deviceType` int(11) DEFAULT '0' COMMENT '1读卡器,2点餐机,3水控,4手持机',
  `enable` int(11) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', '1', '1', '1', '读卡机', '12345678', '0', '1', '4159a96e838e4df5bdecd4e2d8e940f1');
INSERT INTO `device` VALUES ('2', '1', '1', null, '点餐机1', '1', '1', '1', '01010101010101010101010101010101');
INSERT INTO `device` VALUES ('3', '1', '1', null, '点餐机2', '2', '1', '1', '02020202020202020202020202020202');
INSERT INTO `device` VALUES ('4', '1', '1', null, '点餐机3', '3', '1', '1', '02020202020202020202020202020203');
INSERT INTO `device` VALUES ('5', '1', '1', null, '点餐机5', '5', '1', '1', '1f263bc66f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('6', '1', '1', null, '点餐机6', '6', '1', '1', '1f8209336f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('7', '1', '1', null, '点餐机7', '7', '1', '1', '22625a386f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('8', '1', '1', null, '点餐机8', '8', '1', '1', '229d3eb46f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('9', '1', '1', null, '点餐机9', '9', '1', '1', '22c376e36f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('10', '1', '1', null, '点餐机10', '10', '1', '1', '22e689476f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('11', '1', '1', null, '点餐机11', '11', '1', '1', '23080c2d6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('12', '1', '1', null, '点餐机12', '12', '1', '1', '232c507c6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('13', '1', '1', null, '点餐机13', '13', '1', '1', '234cb6ff6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('14', '1', '1', null, '点餐机14', '14', '1', '1', '236bdf7e6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('15', '1', '1', null, '点餐机15', '15', '1', '1', '239293fc6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('16', '1', '1', null, '点餐机16', '16', '1', '1', '23b4c7de6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('17', '1', '1', null, '点餐机17', '17', '1', '1', '23d80f8b6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('18', '1', '1', null, '点餐机18', '18', '1', '1', '23f851026f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('19', '1', '1', null, '点餐机19', '19', '1', '1', '241b76b26f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('20', '1', '1', null, '点餐机20', '20', '1', '1', '243e3e0f6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('21', '1', '1', null, '点餐机21', '21', '1', '1', '2462699e6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('22', '1', '1', null, '点餐机22', '22', '1', '1', '248ae2e66f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('23', '1', '1', null, '点餐机23', '23', '1', '1', '24ae818d6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('24', '1', '1', null, '点餐机24', '24', '1', '1', '24d079886f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('25', '1', '1', null, '点餐机25', '25', '1', '1', '24f96cdc6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('26', '1', '1', null, '点餐机26', '26', '1', '1', '251dc4286f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('27', '1', '1', null, '点餐机27', '27', '1', '1', '25421bf16f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('28', '1', '1', null, '点餐机28', '28', '1', '1', '2566d36e6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('29', '1', '1', null, '点餐机29', '29', '1', '1', '258bc7fd6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('30', '1', '1', null, '点餐机30', '30', '1', '1', '25b7ed7c6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('31', '1', '1', null, '点餐机31', '31', '1', '1', '25dd26ce6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('32', '1', '1', null, '点餐机32', '32', '1', '1', '25ffbe446f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('33', '1', '1', null, '点餐机33', '33', '1', '1', '26221ea06f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('34', '1', '1', null, '点餐机34', '34', '1', '1', '264b1fef6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('35', '1', '1', null, '点餐机35', '35', '1', '1', '2674e5b76f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('36', '1', '1', null, '点餐机36', '36', '1', '1', '2698edd36f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('37', '1', '1', null, '点餐机37', '37', '1', '1', '26c153396f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('38', '1', '1', null, '点餐机38', '38', '1', '1', '26ee7cd96f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('39', '1', '1', null, '点餐机39', '39', '1', '1', '2715548b6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('40', '1', '1', null, '点餐机40', '40', '1', '1', '273772ad6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('41', '1', '1', null, '点餐机41', '41', '1', '1', '2757282d6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('42', '1', '1', null, '点餐机42', '42', '1', '1', '327fb7e36f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('43', '1', '1', null, '点餐机43', '43', '1', '1', '32b0ed556f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('44', '1', '1', null, '点餐机44', '44', '1', '1', '32d783426f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('45', '1', '1', null, '点餐机45', '45', '1', '1', '32fdd8216f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('46', '1', '1', null, '点餐机46', '46', '1', '1', '332239bd6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('47', '1', '1', null, '点餐机47', '47', '1', '1', '3349d7a76f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('48', '1', '1', null, '点餐机48', '48', '1', '1', '336d05936f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('49', '1', '1', null, '点餐机49', '49', '1', '1', '3398045a6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('50', '1', '1', null, '点餐机50', '50', '1', '1', '33d76a4d6f2711e5aa1500e04c828a8d');
INSERT INTO `device` VALUES ('51', '1', '1', null, '点餐机51', '51', '1', '1', '3424bee36f2711e5aa1500e04c828a8d');

-- ----------------------------
-- Table structure for `devicegroup`
-- ----------------------------
DROP TABLE IF EXISTS `devicegroup`;
CREATE TABLE `devicegroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `groupType` int(11) DEFAULT '0' COMMENT '1读卡器,2点餐机,3水控,4手持机',
  `operId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devicegroup
-- ----------------------------
INSERT INTO `devicegroup` VALUES ('1', '1', '东校区', '0', '1');
INSERT INTO `devicegroup` VALUES ('2', '1', '西校区', '0', '1');

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `discountType` int(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `subsidy` int(11) DEFAULT NULL,
  `giveCash` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('4', '1', '0', '1', '0', '10');
INSERT INTO `discount` VALUES ('5', '1', '1', '1', '0', '100');
INSERT INTO `discount` VALUES ('6', '1', '2', '1', '0', '0');
INSERT INTO `discount` VALUES ('7', '1', '3', '1', '0', '12');
INSERT INTO `discount` VALUES ('8', '1', '4', '1', '0', '0');
INSERT INTO `discount` VALUES ('9', '1', '5', '1', '0', '1');
INSERT INTO `discount` VALUES ('10', '1', '6', '100', '0', '0');
INSERT INTO `discount` VALUES ('11', '1', '7', '1', '1', '20');
INSERT INTO `discount` VALUES ('12', '1', '8', '100', '0', '0');
INSERT INTO `discount` VALUES ('13', '1', '9', '100', '0', '0');
INSERT INTO `discount` VALUES ('14', '1', '10', '100', '0', '0');
INSERT INTO `discount` VALUES ('15', '1', '11', '100', '0', '0');
INSERT INTO `discount` VALUES ('16', '1', '12', '100', '0', '0');
INSERT INTO `discount` VALUES ('17', '1', '13', '100', '0', '0');
INSERT INTO `discount` VALUES ('18', '1', '14', '100', '0', '0');
INSERT INTO `discount` VALUES ('19', '1', '15', '100', '0', '0');

-- ----------------------------
-- Table structure for `discountbase`
-- ----------------------------
DROP TABLE IF EXISTS `discountbase`;
CREATE TABLE `discountbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discountType` int(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `subsidy` int(11) DEFAULT NULL,
  `giveCash` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discountbase
-- ----------------------------
INSERT INTO `discountbase` VALUES ('1', '0', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('2', '1', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('3', '2', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('4', '3', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('5', '4', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('6', '5', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('7', '6', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('8', '7', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('9', '8', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('10', '9', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('11', '10', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('12', '11', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('13', '12', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('14', '13', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('15', '14', '100', '0', '0');
INSERT INTO `discountbase` VALUES ('16', '15', '100', '0', '0');

-- ----------------------------
-- Table structure for `entranceguard`
-- ----------------------------
DROP TABLE IF EXISTS `entranceguard`;
CREATE TABLE `entranceguard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `openDelay` int(11) DEFAULT NULL,
  `cardPwdType` int(11) DEFAULT NULL,
  `recordType` int(11) DEFAULT NULL,
  `authType` int(11) DEFAULT NULL,
  `openStatus` int(11) DEFAULT NULL,
  `operPwd` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entranceguard
-- ----------------------------
INSERT INTO `entranceguard` VALUES ('1', '1', '10', '0', '1', '1', '2', '000000');

-- ----------------------------
-- Table structure for `entranceguardbase`
-- ----------------------------
DROP TABLE IF EXISTS `entranceguardbase`;
CREATE TABLE `entranceguardbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openDelay` int(11) DEFAULT NULL,
  `cardPwdType` int(11) DEFAULT NULL,
  `recordType` int(11) DEFAULT NULL,
  `authType` int(11) DEFAULT NULL,
  `openStatus` int(11) DEFAULT NULL,
  `operPwd` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entranceguardbase
-- ----------------------------
INSERT INTO `entranceguardbase` VALUES ('1', '10', '1', '0', '0', '0', '000000');

-- ----------------------------
-- Table structure for `meal`
-- ----------------------------
DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `mealName` varchar(255) DEFAULT NULL,
  `beginTime` varchar(8) DEFAULT NULL,
  `endTime` varchar(8) DEFAULT NULL,
  `timeLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal
-- ----------------------------
INSERT INTO `meal` VALUES ('18', '1', '早餐', '06:30:00', '10:30:00', '1');
INSERT INTO `meal` VALUES ('19', '1', '午餐', '10:30:01', '15:30:00', '0');
INSERT INTO `meal` VALUES ('20', '1', '晚餐', '15:30:01', '18:30:00', '0');
INSERT INTO `meal` VALUES ('21', '1', '夜宵', '18:30:01', '20:30:00', '0');
INSERT INTO `meal` VALUES ('22', '1', '加班一', '20:30:01', '22:30:00', '0');
INSERT INTO `meal` VALUES ('23', '1', '加班二', '22:00:01', '23:59:59', '10');
INSERT INTO `meal` VALUES ('24', '2', '早餐', '06:30:00', '10:30:00', '0');
INSERT INTO `meal` VALUES ('25', '2', '午餐', '10:30:01', '15:30:00', '0');
INSERT INTO `meal` VALUES ('26', '2', '晚餐', '15:30:01', '18:30:00', '0');
INSERT INTO `meal` VALUES ('27', '2', '夜宵', '18:30:01', '20:30:00', '0');
INSERT INTO `meal` VALUES ('28', '2', '加班一', '20:30:01', '22:30:00', '0');
INSERT INTO `meal` VALUES ('29', '2', '加班二', '22:00:01', '23:59:59', '0');

-- ----------------------------
-- Table structure for `mealbase`
-- ----------------------------
DROP TABLE IF EXISTS `mealbase`;
CREATE TABLE `mealbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mealName` varchar(255) DEFAULT NULL,
  `beginTime` varchar(8) DEFAULT NULL,
  `endTime` varchar(8) DEFAULT NULL,
  `timeLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mealbase
-- ----------------------------
INSERT INTO `mealbase` VALUES ('1', '早餐', '06:30:00', '10:30:00', '0');
INSERT INTO `mealbase` VALUES ('2', '午餐', '10:30:01', '15:30:00', '0');
INSERT INTO `mealbase` VALUES ('3', '晚餐', '15:30:01', '18:30:00', '0');
INSERT INTO `mealbase` VALUES ('4', '夜宵', '18:30:01', '20:30:00', '0');
INSERT INTO `mealbase` VALUES ('5', '加班一', '20:30:01', '22:30:00', '0');
INSERT INTO `mealbase` VALUES ('6', '加班二', '22:00:01', '23:59:59', '0');

-- ----------------------------
-- Table structure for `multiwaterrate`
-- ----------------------------
DROP TABLE IF EXISTS `multiwaterrate`;
CREATE TABLE `multiwaterrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `consumeType` int(11) DEFAULT NULL,
  `chargeType` int(11) DEFAULT NULL,
  `rate1Status` int(11) DEFAULT NULL,
  `rate1DeductFare` int(11) DEFAULT NULL,
  `rate1DeductCycle` int(11) DEFAULT NULL,
  `rate2Status` int(11) DEFAULT NULL,
  `rate2DeductFare` int(11) DEFAULT NULL,
  `rate2DeductCycle` int(11) DEFAULT NULL,
  `rate3Status` int(11) DEFAULT NULL,
  `rate3DeductFare` int(11) DEFAULT NULL,
  `rate3DeductCycle` int(11) DEFAULT NULL,
  `rate4Status` int(11) DEFAULT NULL,
  `rate4DeductFare` int(11) DEFAULT NULL,
  `rate4DeductCycle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multiwaterrate
-- ----------------------------
INSERT INTO `multiwaterrate` VALUES ('1', '1', '0', '0', '1', '10', '1', '0', '12', '6', '1', '13', '2', '1', '16', '3');

-- ----------------------------
-- Table structure for `multiwaterratebase`
-- ----------------------------
DROP TABLE IF EXISTS `multiwaterratebase`;
CREATE TABLE `multiwaterratebase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumeType` int(11) DEFAULT NULL,
  `chargeType` int(11) DEFAULT NULL,
  `rate1Status` int(11) DEFAULT NULL,
  `rate1DeductFare` int(11) DEFAULT NULL,
  `rate1DeductCycle` int(11) DEFAULT NULL,
  `rate2Status` int(11) DEFAULT NULL,
  `rate2DeductFare` int(11) DEFAULT NULL,
  `rate2DeductCycle` int(11) DEFAULT NULL,
  `rate3Status` int(11) DEFAULT NULL,
  `rate3DeductFare` int(11) DEFAULT NULL,
  `rate3DeductCycle` int(11) DEFAULT NULL,
  `rate4Status` int(11) DEFAULT NULL,
  `rate4DeductFare` int(11) DEFAULT NULL,
  `rate4DeductCycle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multiwaterratebase
-- ----------------------------
INSERT INTO `multiwaterratebase` VALUES ('1', '0', '0', '1', '10', '5', '1', '10', '5', '1', '10', '5', '1', '10', '5');

-- ----------------------------
-- Table structure for `ordertime`
-- ----------------------------
DROP TABLE IF EXISTS `ordertime`;
CREATE TABLE `ordertime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `orderTimeName` varchar(50) DEFAULT NULL,
  `beginTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordertime
-- ----------------------------
INSERT INTO `ordertime` VALUES ('1', '1', '早餐', '06:00', '08:30', '111', '');
INSERT INTO `ordertime` VALUES ('2', '1', '中餐', '11:30', '14:00', null, '');
INSERT INTO `ordertime` VALUES ('3', '1', '晚餐', '17:00', '19:00', null, '');
INSERT INTO `ordertime` VALUES ('4', '1', '夜宵', '19:01', '20:30', null, '');
INSERT INTO `ordertime` VALUES ('5', '1', '加班1', '20:31', '23:59', null, '');
INSERT INTO `ordertime` VALUES ('6', '1', '加班2', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('7', '1', '加班3', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('8', '1', '加班4', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('9', '1', '加班5', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('10', '1', '加班6', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('11', '1', '加班7', '00:00', '00:00', null, '');
INSERT INTO `ordertime` VALUES ('12', '1', '加班8', '00:00', '00:00', null, '');

-- ----------------------------
-- Table structure for `ordertimebase`
-- ----------------------------
DROP TABLE IF EXISTS `ordertimebase`;
CREATE TABLE `ordertimebase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderTimeName` varchar(50) DEFAULT NULL,
  `beginTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `enable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordertimebase
-- ----------------------------
INSERT INTO `ordertimebase` VALUES ('1', '早餐', '06:00', '08:30', '');
INSERT INTO `ordertimebase` VALUES ('2', '中餐', '11:30', '14:00', '');
INSERT INTO `ordertimebase` VALUES ('3', '晚餐', '17:00', '19:00', '');
INSERT INTO `ordertimebase` VALUES ('4', '夜宵', '19:01', '20:30', '');
INSERT INTO `ordertimebase` VALUES ('5', '加班1', '20:31', '23:59', '');
INSERT INTO `ordertimebase` VALUES ('6', '加班2', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('7', '加班3', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('8', '加班4', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('9', '加班5', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('10', '加班6', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('11', '加班7', '00:00', '00:00', '');
INSERT INTO `ordertimebase` VALUES ('12', '加班8', '00:00', '00:00', '');

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `operId` int(11) NOT NULL AUTO_INCREMENT,
  `operName` varchar(255) DEFAULT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL,
  `superAdmin` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL COMMENT '1管理员,2出纳员',
  `cardSN` varchar(255) DEFAULT NULL,
  `cardNO` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `deviceId` int(11) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `invalidDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`operId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', null, '1', '1', null, '0', '', null, '1', '1', '1', null, '0');
INSERT INTO `sysuser` VALUES ('2', '222', '2', '2', null, '1', 'a48a2a41', '13', '1', '1', '1', '2015-10-31 00:00:00', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `userNO` varchar(255) DEFAULT NULL,
  `cardID` varchar(255) DEFAULT NULL,
  `cardNO` int(255) DEFAULT NULL,
  `cardSN` varchar(255) DEFAULT NULL,
  `cardSeq` int(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0未发卡、241正常、243挂失、244注销卡，其他都是异常卡',
  `sex` int(11) DEFAULT NULL,
  `cardTypeId` int(11) DEFAULT NULL,
  `cardFunc` int(11) DEFAULT NULL,
  `cardIdentity` int(11) DEFAULT NULL,
  `beginDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `invalidDate` date DEFAULT NULL,
  `cardMakeDate` date DEFAULT NULL,
  `consumePwd` varchar(255) DEFAULT NULL,
  `identityPwd` varchar(255) DEFAULT NULL,
  `totalFare` int(11) DEFAULT '0',
  `oddFare` int(11) DEFAULT '0',
  `lastConsumeTime` datetime DEFAULT NULL,
  `daySumFare` int(11) DEFAULT '0',
  `opCount` int(11) DEFAULT '0',
  `subsidyOddFare` float DEFAULT '0',
  `lastSubsidyConsumeTime` datetime DEFAULT NULL,
  `subsidydaySum` int(11) DEFAULT '0',
  `subsidyOpCount` int(11) DEFAULT '0',
  `subsidyVersion` int(11) DEFAULT '0',
  `subsidyInvalidDate` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('48', '1', '14', '001', '001', '001', '123456789012345678', '1', 'bca6552f', '1', '241', '0', '0', '0', '1', '2015-05-28', null, '2018-07-01', '2002-01-30', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('51', '1', '10', '005', '005', '005', '123456789012345678', '30', '7025f025', '1', '241', '0', '0', '0', '1', '2015-05-28', null, '2018-07-01', '2015-09-20', '8888', '8888', '101000', '101000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('52', '1', '14', '006', '006', '006', '123456789012345678', null, null, '1', '0', '0', '0', '0', '1', '2015-05-28', null, '2018-07-01', '2002-01-29', '8888', '8888', '124400', '124400', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('53', '1', '13', '王亮', 'WL', '1001', '123456789012345678', '32', 'a48a2a41', '2', '241', '0', '0', '0', '1', '2015-07-20', null, '2018-07-01', '2015-08-19', '8888', '8888', '132000', '132000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('55', '1', '13', '党晓菲', 'DXF', '1003', '123456789012345678', '31', '90d24626', '2', '241', '0', '0', '0', '1', '2015-07-20', null, '2018-07-01', '2002-01-09', '8888', '8888', '101000', '101000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('56', '1', '13', '王真平', 'WZP', '1004', '123456789012345678', '28', '24fa5a41', '1', '241', '0', '0', '0', '1', '2015-07-20', null, '2018-07-01', '2015-09-14', '8888', '8888', '11000', '11000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('60', '1', '18', '任鸿飞', 'RHF', '4001', '123456789012345678', '29', 'd4841941', '1', '241', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', '2015-09-16', '8888', '8888', '101000', '101000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('61', '1', '18', '王晓光', 'WXG', '4002', '123456789012345678', null, null, '0', '0', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('62', '1', '18', '郭永帅', 'GYS', '4003', '123456789012345678', null, null, '0', '0', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('63', '1', '18', '董山园', 'DSY', '4004', '123456789012345678', null, null, '0', '242', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('64', '1', '18', '曹翠翠', 'CCC', '4005', '123456789012345678', null, null, '0', '242', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('65', '1', '18', '李全政', 'LQZ', '4006', '123456789012345678', null, null, '0', '243', '0', '0', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('71', '1', '19', '王勤', 'WQ', '5001', '123456789012345678', null, null, '0', '243', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('72', '1', '19', '詹广阳', 'ZGY', '5002', '123456789012345678', null, null, '0', '244', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('73', '1', '19', '朱留升', 'ZLS', '5003', '123456789012345678', null, null, '0', '244', '0', '5', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('74', '1', '19', '周浩', 'ZH', '5004', '123456789012345678', null, null, '0', '245', '0', '5', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('75', '1', '19', '张翠娟', 'ZCJ', '5005', '123456789012345678', null, null, '0', '245', '0', '5', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('83', '1', '16', '王宇', 'WY', '2001', '123456789012345678', null, null, '0', '0', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('84', '1', '16', '颜贝', 'YB', '2002', '123456789012345678', null, null, '0', '0', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('85', '1', '16', '申妞妞', 'SNN', '2003', '123456789012345678', null, null, '0', '0', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('86', '1', '16', '马慧丹', 'MHD', '2004', '123456789012345678', null, null, '0', '0', '0', '3', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('88', '1', '17', '周金平', 'ZJP', '3001', '123456789012345678', null, null, '0', '0', '0', '4', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('89', '1', '17', '张丹丹', 'ZDD', '3002', '123456789012345678', null, null, '0', '0', '0', '4', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('90', '1', '17', '司文文', 'SWW', '3003', '123456789012345678', null, null, '0', '0', '0', '4', '0', '1', '2015-07-06', null, '2018-07-01', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('92', '1', '17', '崔连杰', 'CLJ', '3005', '123456789012345678', null, null, '0', '0', '0', '4', '0', '1', '2015-07-06', null, '2018-07-01', '2002-01-02', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('93', '1', '17', '3006', '3006', '3006', '123456789012345678', null, null, '0', '0', '0', '3', '0', '4', '2015-07-06', null, '2018-07-01', '2002-01-02', '8888', '8888', '11000', '11000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('96', '1', '22', '3', '3', '3', '123456789012345678', '2', '450f671d', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('97', '1', '22', '4', '4', '4', '123456789012345678', '3', '7511401c', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('98', '1', '22', '5', '5', '5', '123456789012345678', '4', 'd57e6c1c', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('99', '1', '22', '6', '6', '6', '123456789012345678', '5', '319992d5', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('100', '1', '22', '7', '7', '7', '123456789012345678', '6', 'c4883641', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('101', '1', '22', '8', '8', '8', '123456789012345678', '7', 'b0195a99', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('102', '1', '22', '9', '9', '9', '123456789012345678', '11', 'cdcde79b', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('103', '1', '22', '10', '10', '10', '123456789012345678', '12', 'c5ed2b20', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '120000', '120000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('104', '1', '22', '11', '11', '11', '123456789012345678', '13', 'd4b5f940', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('105', '1', '22', '12', '12', '12', '123456789012345678', '14', '0a6ad304', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('106', '1', '22', '13', '13', '13', '123456789012345678', '15', '204d6d99', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('107', '1', '22', '14', '14', '14', '123456789012345678', '16', 'a417cf24', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('108', '1', '22', '15', '15', '15', '123456789012345678', '23', 'c1f775d5', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2015-08-21', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('109', '1', '22', '16', '16', '16', '123456789012345678', '9', '1c924e2f', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-19', '8888', '8888', '1000', '1000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('110', '1', '22', '17', '17', '17', '123456789012345678', '17', '000df125', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('111', '1', '22', '18', '18', '18', '123456789012345678', '18', 'b10759d6', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('112', '1', '22', '19', '19', '19', '123456789012345678', '19', '54683e41', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('113', '1', '22', '20', '20', '20', '123456789012345678', '20', '746c3c41', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('114', '1', '22', '21', '21', '21', '123456789012345678', '21', '40d7f125', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '10000', '10000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('115', '1', '22', '22', '22', '22', '123456789012345678', '22', 'c4314441', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2015-08-21', '8888', '8888', '20000', '20000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('116', '1', '22', '23', '23', '23', '123456789012345678', '24', '60795231', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2002-01-09', '8888', '8888', '11000', '11000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('117', '1', '22', '24', '24', '24', '123456789012345678', '26', 'c4283b41', '1', '241', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', '2002-01-09', '8888', '8888', '11000', '11000', null, '0', '1', '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('118', '1', '22', '25', '25', '25', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('119', '1', '22', '26', '26', '26', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('120', '1', '22', '27', '27', '27', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('121', '1', '22', '28', '28', '28', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('122', '1', '22', '29', '29', '29', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('123', '1', '22', '30', '30', '30', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('124', '1', '22', '31', '31', '31', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('125', '1', '22', '32', '32', '32', '123456789012345678', null, null, null, '0', '0', '0', '0', '1', '2015-08-17', null, '2099-12-30', null, '8888', '8888', null, null, null, '0', null, '0', null, '0', '0', '0', null);

-- ----------------------------
-- Table structure for `userdept`
-- ----------------------------
DROP TABLE IF EXISTS `userdept`;
CREATE TABLE `userdept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `batchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdept
-- ----------------------------
INSERT INTO `userdept` VALUES ('13', '第四部门', '1', '0', '2');
INSERT INTO `userdept` VALUES ('14', '第5部门', '1', '13', '1');
INSERT INTO `userdept` VALUES ('16', '销售部', '1', '0', '1');
INSERT INTO `userdept` VALUES ('17', '客服部', '1', '0', '12');
INSERT INTO `userdept` VALUES ('18', '技术部', '1', '0', '12');
INSERT INTO `userdept` VALUES ('19', '生产部', '1', '0', '12');
INSERT INTO `userdept` VALUES ('20', '财务部', '1', '0', '12');
INSERT INTO `userdept` VALUES ('21', '财务部0', '1', '20', '1');
INSERT INTO `userdept` VALUES ('22', '1', '1', '0', '13');
INSERT INTO `userdept` VALUES ('23', '0', '1', '0', '1');
INSERT INTO `userdept` VALUES ('24', '2', '1', '0', '1');
INSERT INTO `userdept` VALUES ('25', '3', '1', '0', '1');
INSERT INTO `userdept` VALUES ('26', '4', '1', '0', '1');
INSERT INTO `userdept` VALUES ('27', '5', '1', '0', '1');
INSERT INTO `userdept` VALUES ('28', '6', '1', '0', '1');
INSERT INTO `userdept` VALUES ('29', '7', '1', '0', '1');
INSERT INTO `userdept` VALUES ('30', '生产部0', '1', '19', '1');
INSERT INTO `userdept` VALUES ('31', '2', '1', '19', '1');
INSERT INTO `userdept` VALUES ('32', '技术部0', '1', '18', '1');
INSERT INTO `userdept` VALUES ('33', '2', '1', '18', '1');
INSERT INTO `userdept` VALUES ('34', '3', '1', '18', '1');
INSERT INTO `userdept` VALUES ('35', '财务部1', '1', '20', '1');

-- ----------------------------
-- Table structure for `waterrate`
-- ----------------------------
DROP TABLE IF EXISTS `waterrate`;
CREATE TABLE `waterrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `consumeType` int(11) DEFAULT NULL,
  `goWaterType` int(11) DEFAULT NULL,
  `stopWaterType` int(11) DEFAULT NULL,
  `rate1Status` int(11) DEFAULT NULL,
  `rate1ConsumeFare` int(11) DEFAULT NULL,
  `rate1ConsumeCycle` int(11) DEFAULT NULL,
  `rate1NextDayReset` int(11) DEFAULT NULL,
  `rate2Status` int(11) DEFAULT NULL,
  `rate2BeginTime` varchar(255) DEFAULT NULL,
  `rate2EndTime` varchar(255) DEFAULT NULL,
  `rate2Value1` int(11) DEFAULT NULL,
  `rate2Value2` int(11) DEFAULT NULL,
  `rate2CardTypes` varchar(255) DEFAULT NULL,
  `rate3Status` int(11) DEFAULT NULL,
  `rate3BeginTime` varchar(255) DEFAULT NULL,
  `rate3EndTime` varchar(255) DEFAULT NULL,
  `rate3Value1` int(11) DEFAULT NULL,
  `rate3Value2` int(11) DEFAULT NULL,
  `rate3CardTypes` varchar(255) DEFAULT NULL,
  `rate4Status` int(11) DEFAULT NULL,
  `rate4BeginTime` varchar(255) DEFAULT NULL,
  `rate4EndTime` varchar(255) DEFAULT NULL,
  `rate4Value1` int(11) DEFAULT NULL,
  `rate4Value2` int(11) DEFAULT NULL,
  `rate4CardTypes` varchar(255) DEFAULT NULL,
  `rate5DeductFare` int(11) DEFAULT NULL,
  `rate5DeductCycle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterrate
-- ----------------------------
INSERT INTO `waterrate` VALUES ('1', '1', '0', '1', '1', '0', '101', '6', '0', '0', '00:00', '00:00', '0', '1', ',0,1,3,4,5,6,7,8,9,10,11,13,14,15,,', '1', '00:46', '00:49', '0', '2', ',0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,,', '1', '00:00', '00:00', '0', '3', ',0,1,2,3,4,5,6,8,9,10,11,12,13,14,15,,', '10', '50');

-- ----------------------------
-- Table structure for `waterratebase`
-- ----------------------------
DROP TABLE IF EXISTS `waterratebase`;
CREATE TABLE `waterratebase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumeType` int(11) DEFAULT NULL,
  `goWaterType` int(11) DEFAULT NULL,
  `stopWaterType` int(11) DEFAULT NULL,
  `rate1Status` int(11) DEFAULT NULL,
  `rate1ConsumeFare` int(11) DEFAULT NULL,
  `rate1ConsumeCycle` int(11) DEFAULT NULL,
  `rate1NextDayReset` int(11) DEFAULT NULL,
  `rate2Status` int(11) DEFAULT NULL,
  `rate2BeginTime` varchar(255) DEFAULT NULL,
  `rate2EndTime` varchar(255) DEFAULT NULL,
  `rate2Value1` int(11) DEFAULT NULL,
  `rate2Value2` int(11) DEFAULT NULL,
  `rate2CardTypes` varchar(255) DEFAULT NULL,
  `rate3Status` int(11) DEFAULT NULL,
  `rate3BeginTime` varchar(255) DEFAULT NULL,
  `rate3EndTime` varchar(255) DEFAULT NULL,
  `rate3Value1` int(11) DEFAULT NULL,
  `rate3Value2` int(11) DEFAULT NULL,
  `rate3CardTypes` varchar(255) DEFAULT NULL,
  `rate4Status` int(11) DEFAULT NULL,
  `rate4BeginTime` varchar(255) DEFAULT NULL,
  `rate4EndTime` varchar(255) DEFAULT NULL,
  `rate4Value1` int(11) DEFAULT NULL,
  `rate4Value2` int(11) DEFAULT NULL,
  `rate4CardTypes` varchar(255) DEFAULT NULL,
  `rate5DeductFare` int(11) DEFAULT NULL,
  `rate5DeductCycle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of waterratebase
-- ----------------------------
INSERT INTO `waterratebase` VALUES ('1', '0', '0', '0', '0', '10', '5', '0', '0', '00:00', '00:00', '0', '0', ',0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,', '0', '00:00', '00:00', '0', '0', ',0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,', '0', '00:00', '00:00', '0', '0', ',0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,', '10', '5');
