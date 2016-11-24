/*
Navicat MySQL Data Transfer

Source Server         : SSM
Source Server Version : 50712
Source Host           : 192.168.56.101:3306
Source Database       : db_simplechat

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-08-09 16:45:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for FriendShip
-- ----------------------------
DROP TABLE IF EXISTS `FriendShip`;
CREATE TABLE `FriendShip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` varchar(64) NOT NULL,
  `targetUserId` varchar(64) NOT NULL,
  `targetAccepted` tinyint(4) NOT NULL,
  `targetRefused` tinyint(4) NOT NULL,
  `createdAt` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_FriendShip_userId` (`userId`),
  KEY `FK_FriendShip_targetUserId` (`targetUserId`),
  CONSTRAINT `FK_FriendShip_targetUserId` FOREIGN KEY (`targetUserId`) REFERENCES `User` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FriendShip_userId` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `token` varchar(255) NOT NULL,
  `userId` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `portraitUri` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`token`),
  KEY `IDX_User_userId` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for UserInfo
-- ----------------------------
DROP TABLE IF EXISTS `UserInfo`;
CREATE TABLE `UserInfo` (
  `userId` varchar(64) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `mobilePhoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  CONSTRAINT `FK_UserInfo_userId` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
