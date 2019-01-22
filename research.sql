/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : research

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-01-21 08:40:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basicinfo`
-- ----------------------------
DROP TABLE IF EXISTS `basicinfo`;
CREATE TABLE `basicinfo` (
  `projectno` varchar(20) NOT NULL COMMENT '项目批号',
  `projectname` varchar(100) NOT NULL COMMENT '项目名称',
  `hostid` varchar(6) NOT NULL COMMENT '负责人工号',
  `hostname` varchar(20) NOT NULL COMMENT '负责人',
  `ktjbdm` varchar(2) DEFAULT NULL COMMENT '课题级别代码',
  `ktsxdm` varchar(2) DEFAULT NULL COMMENT '课题属性代码',
  `ktlbdm` varchar(3) DEFAULT NULL COMMENT '课题类别代码',
  `ktfxdm` varchar(2) DEFAULT NULL COMMENT '课题方向代码',
  `xkfldm` varchar(3) DEFAULT NULL COMMENT '学科分类代码',
  `jtfsdm` varchar(2) DEFAULT NULL COMMENT '结题方式代码',
  `sbdwdm` varchar(2) DEFAULT NULL COMMENT '申报单位代码',
  `jflydm` varchar(3) DEFAULT NULL COMMENT '经费来源代码',
  `bftjdm` varchar(2) DEFAULT NULL COMMENT '拨付途径代码',
  `pzsj` date NOT NULL COMMENT '批准时间',
  `wcsj` date NOT NULL COMMENT '完成时间',
  `zjf` int(8) NOT NULL COMMENT '总经费',
  `member1` varchar(50) DEFAULT NULL COMMENT '参与人1',
  `member2` varchar(50) DEFAULT NULL COMMENT '参与人2',
  `member3` varchar(50) DEFAULT NULL COMMENT '参与人3',
  `member4` varchar(50) DEFAULT NULL COMMENT '参与人4',
  `member5` varchar(50) DEFAULT NULL COMMENT '参与人5',
  `sftj` int(1) DEFAULT NULL COMMENT '是否提交',
  `sflx` int(1) DEFAULT NULL COMMENT '是否立项',
  PRIMARY KEY (`projectno`) USING BTREE,
  KEY `ktjbdm` (`ktjbdm`) USING BTREE,
  KEY `ktsxdm` (`ktsxdm`) USING BTREE,
  KEY `ktlbdm` (`ktlbdm`) USING BTREE,
  KEY `ktfxdm` (`ktfxdm`) USING BTREE,
  KEY `xkfldm` (`xkfldm`) USING BTREE,
  KEY `sbdwdm` (`sbdwdm`) USING BTREE,
  KEY `bftjdm` (`bftjdm`) USING BTREE,
  KEY `jflydm` (`jflydm`) USING BTREE,
  KEY `jtfsdm` (`jtfsdm`) USING BTREE,
  CONSTRAINT `bftjdm` FOREIGN KEY (`bftjdm`) REFERENCES `bftj` (`bftjdm`),
  CONSTRAINT `jflydm` FOREIGN KEY (`jflydm`) REFERENCES `jfly` (`jflydm`),
  CONSTRAINT `jtfsdm` FOREIGN KEY (`jtfsdm`) REFERENCES `jtfs` (`jtfsdm`),
  CONSTRAINT `ktfxdm` FOREIGN KEY (`ktfxdm`) REFERENCES `ktfx` (`ktfxdm`),
  CONSTRAINT `ktjbdm` FOREIGN KEY (`ktjbdm`) REFERENCES `ktjb` (`ktjbdm`),
  CONSTRAINT `ktlbdm` FOREIGN KEY (`ktlbdm`) REFERENCES `ktlb` (`ktlbdm`),
  CONSTRAINT `ktsxdm` FOREIGN KEY (`ktsxdm`) REFERENCES `ktsx` (`ktsxdm`),
  CONSTRAINT `sbdwdm` FOREIGN KEY (`sbdwdm`) REFERENCES `sbdw` (`sbdwdm`),
  CONSTRAINT `xkfldm` FOREIGN KEY (`xkfldm`) REFERENCES `xkfl` (`xkfldm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of basicinfo
-- ----------------------------
INSERT INTO `basicinfo` VALUES ('123', '213', '321', '321', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2019-01-30', '2019-11-30', '321', '3213', '321', '312', '312', '321', '321', '321');
INSERT INTO `basicinfo` VALUES ('234', '234', '234', '234', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2019-01-30', '2020-01-01', '234', '234', '234', '234', '234', '234', '234', '234');

-- ----------------------------
-- Table structure for `bftj`
-- ----------------------------
DROP TABLE IF EXISTS `bftj`;
CREATE TABLE `bftj` (
  `bftjdm` varchar(2) NOT NULL,
  `bftj` varchar(50) NOT NULL,
  PRIMARY KEY (`bftjdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bftj
-- ----------------------------
INSERT INTO `bftj` VALUES ('1', '外单位');
INSERT INTO `bftj` VALUES ('2', '学校');

-- ----------------------------
-- Table structure for `jfly`
-- ----------------------------
DROP TABLE IF EXISTS `jfly`;
CREATE TABLE `jfly` (
  `jflydm` varchar(3) NOT NULL,
  `jfly` varchar(50) NOT NULL,
  PRIMARY KEY (`jflydm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of jfly
-- ----------------------------
INSERT INTO `jfly` VALUES ('1', '安徽省科技厅');
INSERT INTO `jfly` VALUES ('2', '安徽省教育厅科研处');
INSERT INTO `jfly` VALUES ('3', '科研处');
INSERT INTO `jfly` VALUES ('4', '国家自然基金');
INSERT INTO `jfly` VALUES ('5', '教育部');
INSERT INTO `jfly` VALUES ('6', '安徽省社科规划办');
INSERT INTO `jfly` VALUES ('7', '企事业');

-- ----------------------------
-- Table structure for `jtfs`
-- ----------------------------
DROP TABLE IF EXISTS `jtfs`;
CREATE TABLE `jtfs` (
  `jtfsdm` varchar(2) NOT NULL,
  `jtfs` varchar(50) NOT NULL,
  PRIMARY KEY (`jtfsdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of jtfs
-- ----------------------------
INSERT INTO `jtfs` VALUES ('1', '论文');
INSERT INTO `jtfs` VALUES ('2', '专著');
INSERT INTO `jtfs` VALUES ('3', '发明专利');
INSERT INTO `jtfs` VALUES ('4', '设计方案');

-- ----------------------------
-- Table structure for `ktfx`
-- ----------------------------
DROP TABLE IF EXISTS `ktfx`;
CREATE TABLE `ktfx` (
  `ktfxdm` varchar(2) NOT NULL,
  `ktfx` varchar(50) NOT NULL,
  PRIMARY KEY (`ktfxdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ktfx
-- ----------------------------
INSERT INTO `ktfx` VALUES ('1', '纵向');
INSERT INTO `ktfx` VALUES ('2', '横向');

-- ----------------------------
-- Table structure for `ktjb`
-- ----------------------------
DROP TABLE IF EXISTS `ktjb`;
CREATE TABLE `ktjb` (
  `ktjbdm` varchar(2) NOT NULL,
  `ktjb` varchar(50) NOT NULL,
  PRIMARY KEY (`ktjbdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ktjb
-- ----------------------------
INSERT INTO `ktjb` VALUES ('1', '校级项目\r\n');
INSERT INTO `ktjb` VALUES ('2', '国家级项目\r\n');
INSERT INTO `ktjb` VALUES ('3', '省部级项目\r\n');
INSERT INTO `ktjb` VALUES ('4', '企事业委托\r\n');
INSERT INTO `ktjb` VALUES ('5', '厅级项目');

-- ----------------------------
-- Table structure for `ktlb`
-- ----------------------------
DROP TABLE IF EXISTS `ktlb`;
CREATE TABLE `ktlb` (
  `ktlbdm` varchar(3) NOT NULL,
  `ktlb` varchar(50) NOT NULL,
  PRIMARY KEY (`ktlbdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ktlb
-- ----------------------------
INSERT INTO `ktlb` VALUES ('1', '基础性研究');
INSERT INTO `ktlb` VALUES ('2', '应用性研究');

-- ----------------------------
-- Table structure for `ktsx`
-- ----------------------------
DROP TABLE IF EXISTS `ktsx`;
CREATE TABLE `ktsx` (
  `ktsxdm` varchar(2) NOT NULL,
  `ktsx` varchar(50) NOT NULL,
  PRIMARY KEY (`ktsxdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ktsx
-- ----------------------------
INSERT INTO `ktsx` VALUES ('1', '科研项目');

-- ----------------------------
-- Table structure for `sbdw`
-- ----------------------------
DROP TABLE IF EXISTS `sbdw`;
CREATE TABLE `sbdw` (
  `sbdwdm` varchar(2) NOT NULL,
  `sbdw` varchar(50) NOT NULL,
  PRIMARY KEY (`sbdwdm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sbdw
-- ----------------------------
INSERT INTO `sbdw` VALUES ('1', '化学化工学院');
INSERT INTO `sbdw` VALUES ('2', '信息工程学院');
INSERT INTO `sbdw` VALUES ('3', '外国语学院');
INSERT INTO `sbdw` VALUES ('4', '体育学院');
INSERT INTO `sbdw` VALUES ('5', '建筑工程学院');
INSERT INTO `sbdw` VALUES ('6', '机电工程学院');
INSERT INTO `sbdw` VALUES ('7', '数学与统计学院');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `power` int(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '1', 'admin');

-- ----------------------------
-- Table structure for `xkfl`
-- ----------------------------
DROP TABLE IF EXISTS `xkfl`;
CREATE TABLE `xkfl` (
  `xkfldm` varchar(3) NOT NULL,
  `xkfl` varchar(50) NOT NULL,
  PRIMARY KEY (`xkfldm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of xkfl
-- ----------------------------
INSERT INTO `xkfl` VALUES ('1', '化学工程');
INSERT INTO `xkfl` VALUES ('10', '数学');
INSERT INTO `xkfl` VALUES ('11', '艺术学');
INSERT INTO `xkfl` VALUES ('2', '语言学');
INSERT INTO `xkfl` VALUES ('3', '体育科学');
INSERT INTO `xkfl` VALUES ('4', '体育科学');
INSERT INTO `xkfl` VALUES ('5', '信息科学与系统科学');
INSERT INTO `xkfl` VALUES ('6', '土木建筑工程');
INSERT INTO `xkfl` VALUES ('7', '电子与通信技术');
INSERT INTO `xkfl` VALUES ('8', '机械工程');
INSERT INTO `xkfl` VALUES ('9', '食品科学技术');
