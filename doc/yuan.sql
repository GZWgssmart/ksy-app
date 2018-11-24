/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : yuan

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-23 20:57:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL COMMENT '审核标记(多余、未使用)',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `delete_flag` varchar(1) DEFAULT NULL COMMENT '逻辑删除',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `content` longtext COMMENT '文章内容',
  `cover_image_url` varchar(128) DEFAULT NULL COMMENT '封面图片url',
  `href` varchar(128) DEFAULT NULL COMMENT '文章链接',
  `order_no` int(11) DEFAULT NULL COMMENT '文章排序编号',
  `publisher` varchar(64) DEFAULT NULL COMMENT '发布者',
  `source_from` varchar(64) DEFAULT NULL COMMENT '文章来源',
  `summary` varchar(512) DEFAULT NULL COMMENT '文章摘要',
  `title` varchar(256) DEFAULT NULL COMMENT '文章标题',
  `column_info_id` varchar(32) DEFAULT NULL COMMENT '所属栏目id',
  `is_audit` bit(1) DEFAULT NULL COMMENT '是否审核（1为是，0为否）',
  `is_top` bit(1) DEFAULT NULL COMMENT '是否置顶（1为是，0为否）',
  `view_count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `root_column_info_id` varchar(32) DEFAULT NULL COMMENT '跟栏目id',
  `type` int(11) DEFAULT NULL COMMENT '类型（0位普通文章，1为外链文章，2为广告文章',
  PRIMARY KEY (`id`),
  KEY `FK_bcwrpr0ji2q3en1mrahtqkjwn` (`column_info_id`),
  KEY `FK_20m4l0vy20mnqtq74gs0nd8xo` (`root_column_info_id`),
  CONSTRAINT `FK_20m4l0vy20mnqtq74gs0nd8xo` FOREIGN KEY (`root_column_info_id`) REFERENCES `cms_column_info` (`id`),
  CONSTRAINT `FK_bcwrpr0ji2q3en1mrahtqkjwn` FOREIGN KEY (`column_info_id`) REFERENCES `cms_column_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('4028abe16716c408016716d008710000', null, '2018-11-15 17:59:51', '0', '2018-11-15 17:59:51', '<p>额恩恩</p>', null, '', null, '', null, null, 'ww', '8a2a08425b7a0b7b015b7a2b0f060006', '', null, '0', '4028821e5b7a0971015b7a0a1cbf0000', '0');

-- ----------------------------
-- Table structure for `cms_column_info`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column_info`;
CREATE TABLE `cms_column_info` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL COMMENT '审核标记(多余、未使用)',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `delete_flag` varchar(1) DEFAULT NULL COMMENT '逻辑删除(1删除  0正常)',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `code` varchar(20) DEFAULT NULL COMMENT '栏目编码（具有唯一性）',
  `level` int(11) DEFAULT NULL COMMENT '栏目层级(0是一级，1是二级)',
  `name` varchar(32) DEFAULT NULL COMMENT '栏目名称',
  `order_no` int(11) DEFAULT NULL COMMENT '栏目排序',
  `path` varchar(512) DEFAULT NULL COMMENT '栏目路径，从顶到自己的路径用当前表的id拼接表示',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点id',
  `icon` varchar(128) DEFAULT NULL COMMENT '栏目图标',
  `channel` int(11) DEFAULT NULL COMMENT '类型（0位pc，1为wap',
  PRIMARY KEY (`id`),
  KEY `FK_8pcbm05c14nhwr1bu0ui96d85` (`parent_id`),
  CONSTRAINT `FK_8pcbm05c14nhwr1bu0ui96d85` FOREIGN KEY (`parent_id`) REFERENCES `cms_column_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_column_info
-- ----------------------------
INSERT INTO `cms_column_info` VALUES ('4028821e5b7a0971015b7a0a1cbf0000', null, '2017-04-17 11:52:14', '0', '2018-11-09 14:36:15', 'shouye', '0', '首页', '1', '4028821e5b7a0971015b7a0a1cbf0000', null, null, '0');
INSERT INTO `cms_column_info` VALUES ('4028821e5b7a9cbf015b7a9f79e00000', null, '2017-04-17 14:35:23', '0', '2018-11-09 14:53:09', 'jiaoxuejiaoyan', '0', '资讯', '3', '4028821e5b7a9cbf015b7a9f79e00000', null, null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a0cf4440000', null, '2017-04-17 11:55:21', '0', '2018-11-09 14:44:02', 'sy_xydt_ad', '1', '产品介绍', '11', '4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a0cf4440000', '4028821e5b7a0971015b7a0a1cbf0000', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a105a640003', null, '2017-04-17 11:59:03', '0', '2018-11-09 14:36:15', 'sy_tzgg', '1', '通知公告', '14', '4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a105a640003', '4028821e5b7a0971015b7a0a1cbf0000', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a2a82ab0005', null, '2017-04-17 12:27:38', '0', '2018-11-09 14:47:45', 'xuexiaogaikuang', '0', '健康管理', '2', '8a2a08425b7a0b7b015b7a2a82ab0005', null, null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a2b0f060006', null, '2017-04-17 12:28:13', '0', '2018-11-09 14:43:47', 'sy_ad', '1', '广告位(图片)', '10', '4028821e5b7a0971015b7a0a1cbf0000/8a2a08425b7a0b7b015b7a2b0f060006', '4028821e5b7a0971015b7a0a1cbf0000', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a9d0b2e000a', null, '2017-04-17 14:32:44', '0', '2018-11-09 14:48:35', 'xxgk_xxjj', '1', '健康管理专家', '1', '8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7a9d0b2e000a', '8a2a08425b7a0b7b015b7a2a82ab0005', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7aa230015b7aa9a1ad0004', null, '2017-04-17 14:46:29', '0', '2018-11-09 14:35:24', 'jxjy_jxyt', '1', 'Html5', '1', '4028821e5b7a9cbf015b7a9f79e00000/8a2a08425b7aa230015b7aa9a1ad0004', '4028821e5b7a9cbf015b7a9f79e00000', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7aa230015b7ab7f0ae001d', null, '2017-04-17 15:02:06', '0', '2018-11-09 14:35:15', 'lxwm', '0', '联系我们', '8', '8a2a08425b7aa230015b7ab7f0ae001d', null, null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7aa230015b7ab849e6001e', null, '2017-04-17 15:02:29', '0', '2018-11-09 14:35:15', 'lxwm_lxwm', '1', '联系我们', '1', '8a2a08425b7aa230015b7ab7f0ae001d/8a2a08425b7aa230015b7ab849e6001e', '8a2a08425b7aa230015b7ab7f0ae001d', null, '0');

-- ----------------------------
-- Table structure for `ins_institution`
-- ----------------------------
DROP TABLE IF EXISTS `ins_institution`;
CREATE TABLE `ins_institution` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `contact` varchar(64) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `ins_type` int(11) DEFAULT NULL,
  `introduction` longtext,
  `logo` varchar(128) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `website` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ins_institution
-- ----------------------------

-- ----------------------------
-- Table structure for `org_resource`
-- ----------------------------
DROP TABLE IF EXISTS `org_resource`;
CREATE TABLE `org_resource` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `icon` varchar(512) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2qoscu42yxypno5iv9w9raj2n` (`parent_id`),
  CONSTRAINT `FK_2qoscu42yxypno5iv9w9raj2n` FOREIGN KEY (`parent_id`) REFERENCES `org_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of org_resource
-- ----------------------------
INSERT INTO `org_resource` VALUES ('2c9025ab5adb1eef015adb2e74b90000', null, '2017-03-17 15:32:19', '0', '2017-03-17 15:32:19', '', '修改密码', '90', 'module', '/user/update_pwd', null);
INSERT INTO `org_resource` VALUES ('2c9025ab5adb1eef015adb32ffb90001', null, '2017-03-17 15:37:16', '0', '2017-03-17 15:37:16', '', '内容管理', '30', 'module', '', null);
INSERT INTO `org_resource` VALUES ('2c9025ab5adb1eef015adb36bac60002', null, '2017-03-17 15:41:21', '0', '2017-03-17 16:17:12', '', '栏目列表', '31', 'page', '/cms/column/list', '2c9025ab5adb1eef015adb32ffb90001');
INSERT INTO `org_resource` VALUES ('2c9025ab5adb1eef015adb37ccd50003', null, '2017-03-17 15:42:31', '0', '2017-03-17 16:17:21', '', '文章列表', '32', 'page', '/cms/article/list', '2c9025ab5adb1eef015adb32ffb90001');
INSERT INTO `org_resource` VALUES ('2c9025ab5b140c22015b140fbbd30000', null, '2017-03-28 16:37:07', '0', '2017-03-28 16:37:07', '', '换肤管理', '20', 'module', '/user/skin/list', null);
INSERT INTO `org_resource` VALUES ('402887d866f717ea0166f71fd6320000', null, '2018-11-09 14:19:10', '0', '2018-11-09 14:22:01', '', '交易管理', '12', 'page', '/shoptrade/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('4028abe166e90efe0166e915b3e60000', null, '2018-11-06 20:53:25', '0', '2018-11-08 10:40:52', '', '商城管理', '10', 'module', '', null);
INSERT INTO `org_resource` VALUES ('4028abe166e90efe0166e91ded670001', null, '2018-11-06 21:02:24', '0', '2018-11-08 10:41:18', '', '奖励规则', '16', 'page', '/shoprule/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('4028abe166edabdd0166edadb7590000', null, '2018-11-07 18:17:56', '0', '2018-11-08 10:41:03', '', '商城用户', '11', 'page', '/shopuser/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('4028abe166fb769e0166fb785dcc0000', null, '2018-11-10 10:34:21', '0', '2018-11-10 10:34:21', '', '商品管理', '13', 'page', '/shopproduct/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('4028abe16707d853016707dabd7b0000', null, '2018-11-12 20:17:15', '0', '2018-11-12 20:17:15', '', '健康值管理', '14', 'page', '/shopbilltrade/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('4028abe1672bd3dd01672bd790e40000', null, '2018-11-19 20:00:06', '0', '2018-11-19 20:00:06', '', '商城参数设置', '15', 'page', '/sysParam/list', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_resource` VALUES ('70', null, '2016-08-17 17:06:19', '0', '2018-11-08 10:40:18', '', '权限管理', '70', 'module', '/user/list', null);
INSERT INTO `org_resource` VALUES ('71', null, '2016-09-07 15:15:58', '0', '2018-11-08 10:40:26', '', '用户列表', '71', 'page', '/user/list', '70');
INSERT INTO `org_resource` VALUES ('72', null, '2016-09-07 15:17:37', '0', '2018-11-08 10:40:33', '', '角色列表', '72', 'page', '/user/role_list', '70');
INSERT INTO `org_resource` VALUES ('73', null, '2016-09-18 16:34:14', '0', '2018-11-08 10:40:41', '', '菜单列表', '73', 'page', '/user/menu_list', '70');

-- ----------------------------
-- Table structure for `org_role`
-- ----------------------------
DROP TABLE IF EXISTS `org_role`;
CREATE TABLE `org_role` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `role_name` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of org_role
-- ----------------------------
INSERT INTO `org_role` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', null, '2017-02-24 16:11:40', '0', '2017-02-24 16:11:40', null, '可以分配后台用户', '权限管理员', null, '', null);
INSERT INTO `org_role` VALUES ('402881e457f075530157f0791e2f0000', null, '2016-10-23 15:37:31', '0', '2017-02-24 16:11:20', null, '拥有所有的权限', '超级管理员', null, 'role_admin', null);

-- ----------------------------
-- Table structure for `org_role_resource_rel`
-- ----------------------------
DROP TABLE IF EXISTS `org_role_resource_rel`;
CREATE TABLE `org_role_resource_rel` (
  `role_id` varchar(32) NOT NULL,
  `resources_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`resources_id`),
  KEY `FK_hpsdqtxbypycwcdrw23na40bp` (`resources_id`),
  CONSTRAINT `FK_ew2x71wsjwd939pdgqdsvnnsd` FOREIGN KEY (`role_id`) REFERENCES `org_role` (`id`),
  CONSTRAINT `FK_hpsdqtxbypycwcdrw23na40bp` FOREIGN KEY (`resources_id`) REFERENCES `org_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of org_role_resource_rel
-- ----------------------------
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', '2c9025ab5adb1eef015adb2e74b90000');
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5ada5755015ada59461d0000', '2c9025ab5adb1eef015adb2e74b90000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '2c9025ab5adb1eef015adb2e74b90000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '2c9025ab5adb1eef015adb32ffb90001');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '2c9025ab5adb1eef015adb36bac60002');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '2c9025ab5adb1eef015adb37ccd50003');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '2c9025ab5b140c22015b140fbbd30000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '402887d866f717ea0166f71fd6320000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe166e90efe0166e915b3e60000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe166e90efe0166e91ded670001');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe166edabdd0166edadb7590000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe166fb769e0166fb785dcc0000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe16707d853016707dabd7b0000');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '4028abe1672bd3dd01672bd790e40000');
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', '70');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '70');
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', '71');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '71');
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', '72');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '72');
INSERT INTO `org_role_resource_rel` VALUES ('2c9025ab5a6f2b85015a6f2cef950000', '73');
INSERT INTO `org_role_resource_rel` VALUES ('402881e457f075530157f0791e2f0000', '73');

-- ----------------------------
-- Table structure for `org_user`
-- ----------------------------
DROP TABLE IF EXISTS `org_user`;
CREATE TABLE `org_user` (
  `id` varchar(32) NOT NULL,
  `audit_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `current_skin` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of org_user
-- ----------------------------
INSERT INTO `org_user` VALUES ('4028821e5b7a6947015b7a6ebacf0000', null, '2016-08-17 15:17:02', '0', '2018-08-24 16:49:12', null, '13798369750', 'E10ADC3949BA59ABBE56E057F20F883E', '超级管理员', '1', 'admin', '0', 'skin_blue');

-- ----------------------------
-- Table structure for `org_user_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `org_user_role_rel`;
CREATE TABLE `org_user_role_rel` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_ikyyd9vv4u7y3m3yqvqo1vwdd` (`role_id`),
  CONSTRAINT `FK_92837trmh851io1pb73qjakvf` FOREIGN KEY (`user_id`) REFERENCES `org_user` (`id`),
  CONSTRAINT `FK_ikyyd9vv4u7y3m3yqvqo1vwdd` FOREIGN KEY (`role_id`) REFERENCES `org_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of org_user_role_rel
-- ----------------------------
INSERT INTO `org_user_role_rel` VALUES ('4028821e5b7a6947015b7a6ebacf0000', '402881e457f075530157f0791e2f0000');

-- ----------------------------
-- Table structure for `shop_bill_trade`
-- ----------------------------
DROP TABLE IF EXISTS `shop_bill_trade`;
CREATE TABLE `shop_bill_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请提现或转让用户id',
  `type` tinyint(1) NOT NULL COMMENT '操作类型"1、提现  2、转让 3.捐赠',
  `trade_phone` varchar(16) DEFAULT NULL COMMENT '受让人手机号',
  `count` int(8) NOT NULL COMMENT '提现或者转让个数',
  `trade_status` tinyint(1) DEFAULT NULL COMMENT '1、待审/2、完成（转让直接完成，提现需要后台审核，通过后减少健康链，增加余额）',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_bill_trade
-- ----------------------------
INSERT INTO `shop_bill_trade` VALUES ('1', '1', '2', '', '1', '2', '2018-11-12 20:26:16', null);

-- ----------------------------
-- Table structure for `shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(128) NOT NULL COMMENT '商品名称',
  `pro_logo_img` varchar(64) NOT NULL COMMENT '商品logo图片',
  `introduction` varchar(256) DEFAULT NULL COMMENT '商品简介',
  `detail` longtext COMMENT '商品详情',
  `pro_count` varchar(8) DEFAULT NULL COMMENT '商品库存数量',
  `income_credits` varchar(8) DEFAULT '0' COMMENT '购买商品赠送积分',
  `vip_level` varchar(2) DEFAULT NULL COMMENT 'v1普通会员、v2个人vip、v3初级代理、v4高级代理、v5核心代理、v6运营中心、v7公司股东',
  `type` varchar(1) DEFAULT '2' COMMENT '商品类型：1.会员大礼包 2.平台产品 3.项目合作',
  `status` varchar(1) DEFAULT '1' COMMENT '1 上架 2下架',
  `consume_credits` varchar(8) DEFAULT '0' COMMENT '购买商品最高抵扣积分',
  `price1` varchar(8) DEFAULT NULL COMMENT '商品价格1(个人vip 初级代理的价格，会员大礼包直接使用价格1)',
  `price2` varchar(8) DEFAULT NULL COMMENT '商品价格2(高级代理、核心代理价格)',
  `price3` varchar(8) DEFAULT NULL COMMENT '商品价格3(运营中心、公司股东价格)',
  `picture1` varchar(64) DEFAULT NULL COMMENT '商品展示图片1',
  `picture2` varchar(64) DEFAULT NULL COMMENT '商品展示图片2',
  `picture3` varchar(64) DEFAULT NULL COMMENT '商品展示图片3',
  `picture4` varchar(64) DEFAULT NULL COMMENT '商品展示图片4',
  `picture5` varchar(64) DEFAULT NULL COMMENT '商品展示图片5',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '4000', 'v2', '1', '1', '0', '4000', '4000', '4000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');
INSERT INTO `shop_product` VALUES ('2', '返购商品', '', '返购产品', '<p>商品描述详情，可能包含图片和文字等</p>', '100', '0', '', '1', '1', '10', '188', '166', '155', '', '', '', '', '', '2018-11-15 17:52:39', '');
INSERT INTO `shop_product` VALUES ('3', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '10000', 'v3', '1', '1', '0', '10000', '10000', '10000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');
INSERT INTO `shop_product` VALUES ('4', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '30000', 'v4', '1', '1', '0', '30000', '30000', '30000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');
INSERT INTO `shop_product` VALUES ('5', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '90000', 'v5', '1', '1', '0', '90000', '90000', '90000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');
INSERT INTO `shop_product` VALUES ('6', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '150000', 'v6', '1', '1', '0', '150000', '150000', '150000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');
INSERT INTO `shop_product` VALUES ('7', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来   ', '<p>qqqq<br/></p>', '1000', '300000', 'v7', '1', '1', '0', '300000', '300000', '300000', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');

-- ----------------------------
-- Table structure for `shop_register_rule`
-- ----------------------------
DROP TABLE IF EXISTS `shop_register_rule`;
CREATE TABLE `shop_register_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_level` varchar(8) NOT NULL COMMENT '会员等级',
  `ztjkljhs` int(8) NOT NULL COMMENT '健康链激活数（直推）',
  `jtjkljhs` int(8) NOT NULL COMMENT '健康链激活数（间推）',
  `ztj` varchar(8) DEFAULT NULL COMMENT '直推奖',
  `jtj` varchar(8) DEFAULT NULL COMMENT '间推奖',
  `glj` varchar(8) DEFAULT NULL COMMENT '管理奖',
  `gufen` varchar(8) DEFAULT NULL COMMENT '股份',
  `bill` varchar(8) DEFAULT NULL COMMENT '健康链',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `fugoufd` varchar(8) DEFAULT NULL COMMENT '会员购买产品返点',
  `fugouztfd` varchar(8) DEFAULT NULL COMMENT '邀请用户复购的直推返点',
  `fugoujtfd` varchar(8) DEFAULT NULL COMMENT '邀请复购用户的间推返点',
  `fenhong` varchar(8) DEFAULT NULL COMMENT '分红积分，用于每日平台分红',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_register_rule
-- ----------------------------
INSERT INTO `shop_register_rule` VALUES ('1', 'v2', '1', '1', '0.02', '0.01', '0', '0', '30', '2018-11-04 20:24:44', null, '2018-11-08 14:56:03', null, '0.05', '0.02', '0.01', '4000');
INSERT INTO `shop_register_rule` VALUES ('2', 'v3', '3', '1', '0.03', '0.02', '0', '0', '100', '2018-11-04 20:27:00', '1', null, '1', '0.06', '0.03', '0.02', '10000');
INSERT INTO `shop_register_rule` VALUES ('3', 'v4', '10', '3', '0.03', '0.02', '0', '0', '300', '2018-11-04 20:27:00', '1', null, '1', '0.08', '0.04', '0.03', '30000');
INSERT INTO `shop_register_rule` VALUES ('4', 'v5', '30', '10', '0.06', '0.04', '0.02', '0', '900', '2018-11-04 20:27:00', '1', null, '1', '0.10', '0.06', '0.04', '90000');
INSERT INTO `shop_register_rule` VALUES ('5', 'v6', '50', '15', '0.08', '0.05', '0.04', '0', '1500', '2018-11-04 20:27:00', null, '2018-11-08 14:03:21', null, '0.12', '0.08', '0.05', '150000');
INSERT INTO `shop_register_rule` VALUES ('6', 'v7', '100', '20', '0.10', '0.08', '0.06', '0.05', '3000', '2018-11-07 16:18:20', null, '2018-11-07 15:58:54', null, '0.15', '0.10', '0.06', '300000');
INSERT INTO `shop_register_rule` VALUES ('7', 'v1', '0', '0', '0.02', '0.01', '0', '0', '0', '2018-11-19 21:43:18', null, null, null, '0', '0', '0', '');

-- ----------------------------
-- Table structure for `shop_sys_param`
-- ----------------------------
DROP TABLE IF EXISTS `shop_sys_param`;
CREATE TABLE `shop_sys_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_code` varchar(12) NOT NULL COMMENT '系统参数编码',
  `sys_type` varchar(4) NOT NULL COMMENT '系统参数类型',
  `sys_value` varchar(24) NOT NULL COMMENT '参数值',
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_sys_param
-- ----------------------------
INSERT INTO `shop_sys_param` VALUES ('1', 'SY_CHENGBEN', '1', '10000', null, '2018-11-19 20:07:04');
INSERT INTO `shop_sys_param` VALUES ('2', 'SY_LIRUN', '1', '50000', null, '2018-11-22 23:23:46');
INSERT INTO `shop_sys_param` VALUES ('3', 'SY_FENBFB', '1', '0.1', null, '2018-11-22 23:37:57');
INSERT INTO `shop_sys_param` VALUES ('4', 'SY_GUQUANBFB', '1', '0.01', null, '2018-11-22 23:43:55');
INSERT INTO `shop_sys_param` VALUES ('5', 'SYS_TIXIAN', '1', '200', null, '2018-11-23 13:39:18');

-- ----------------------------
-- Table structure for `shop_trade`
-- ----------------------------
DROP TABLE IF EXISTS `shop_trade`;
CREATE TABLE `shop_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(32) NOT NULL COMMENT '订单编号',
  `user_id` int(11) NOT NULL COMMENT '交易用户id',
  `type` tinyint(2) NOT NULL COMMENT '1.购买会员大礼包2.复购产品3.直推4.间推5.管理奖6.股份收益7.平台分红8.捐赠9购买返点10直推购买返点11间推购买返点12提现健康值13项目合作',
  `price` decimal(8,2) NOT NULL COMMENT '从用户角度考虑，付款是-，收益是+',
  `status` tinyint(2) DEFAULT '3' COMMENT '1.订单提交（待发货） 2.后台发货（已发货） 3.确认收货  购买商品流程',
  `credits` int(8) NOT NULL COMMENT '使用积分总数',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_trade
-- ----------------------------
INSERT INTO `shop_trade` VALUES ('1', '191292191298198', '1', '2', '3998.00', '3', '3998', '2018-11-21 15:54:12', null);
INSERT INTO `shop_trade` VALUES ('2', '111111111111111', '1', '1', '9999.00', '3', '9999', '2018-11-22 16:18:16', null);
INSERT INTO `shop_trade` VALUES ('3', 'NO201811220121140547', '7', '3', '299.97', '3', '0', '2018-11-22 01:21:58', null);
INSERT INTO `shop_trade` VALUES ('4', 'NO20181122012151081', '10', '4', '299.97', '3', '0', '2018-11-22 01:21:58', null);
INSERT INTO `shop_trade` VALUES ('5', 'NO20181122012233271', '7', '3', '299.97', '3', '0', '2018-11-22 01:22:25', null);
INSERT INTO `shop_trade` VALUES ('6', 'NO201811220122940282', '10', '4', '299.97', '3', '0', '2018-11-22 01:22:25', null);
INSERT INTO `shop_trade` VALUES ('7', 'NO201811221504511625', '7', '3', '199.98', '3', '0', '2018-11-22 15:04:34', null);
INSERT INTO `shop_trade` VALUES ('8', 'NO20181122150424319', '10', '4', '499.95', '3', '0', '2018-11-22 15:04:34', null);
INSERT INTO `shop_trade` VALUES ('9', 'NO201811221504401047', '10', '5', '399.96', '3', '0', '2018-11-22 15:04:34', null);
INSERT INTO `shop_trade` VALUES ('10', 'NO201811221508152914', '11', '9', '239.88', '3', '0', '2018-11-22 15:08:55', null);
INSERT INTO `shop_trade` VALUES ('11', 'NO201811221508798336', '7', '10', '79.96', '3', '0', '2018-11-22 15:08:55', null);
INSERT INTO `shop_trade` VALUES ('12', 'NO201811221508538019', '10', '11', '199.90', '3', '0', '2018-11-22 15:08:55', null);
INSERT INTO `shop_trade` VALUES ('13', 'NO201811231729685986', '1', '7', '1.78', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('14', 'NO201811231729760176', '2', '7', '1.78', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('15', 'NO201811231729742923', '3', '7', '4.45', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('16', 'NO201811231729434088', '4', '7', '4.45', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('17', 'NO201811231729741673', '4', '7', '13.35', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('18', 'NO201811231729506102', '5', '7', '40.06', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('19', 'NO201811231729205492', '6', '7', '66.77', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('20', 'NO201811231729309154', '7', '7', '66.77', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('21', 'NO201811231729829292', '8', '7', '66.77', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('22', 'NO201811231729419001', '10', '7', '133.53', '3', '0', '2018-11-23 17:29:58', null);
INSERT INTO `shop_trade` VALUES ('23', 'NO201811231731407130', '7', '7', '1.78', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('24', 'NO201811231731678646', '20', '7', '1.78', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('25', 'NO201811231731271841', '11', '7', '4.45', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('26', 'NO201811231731123268', '22', '7', '4.45', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('27', 'NO201811231731600819', '1', '7', '13.35', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('28', 'NO201811231731734291', '12', '7', '40.06', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('29', 'NO201811231731868998', '2', '7', '66.77', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('30', 'NO201811231731242118', '10', '7', '66.77', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('31', 'NO201811231731303596', '21', '7', '66.77', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('32', 'NO201811231731691627', '3', '7', '133.53', '3', '0', '2018-11-23 17:31:59', null);
INSERT INTO `shop_trade` VALUES ('33', 'NO201811232045567216', '7', '7', '1.78', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('34', 'NO201811232045450527', '20', '7', '1.78', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('35', 'NO201811232045450988', '11', '7', '4.45', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('36', 'NO201811232045803360', '22', '7', '4.45', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('37', 'NO201811232045763836', '1', '7', '13.35', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('38', 'NO201811232045409101', '12', '7', '40.06', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('39', 'NO201811232045553998', '2', '7', '66.77', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('40', 'NO201811232045542688', '10', '7', '66.77', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('41', 'NO201811232045951444', '21', '7', '66.77', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('42', 'NO201811232045329159', '3', '7', '133.53', '3', '0', '2018-11-23 20:45:13', null);
INSERT INTO `shop_trade` VALUES ('43', 'NO201811232050491463', '7', '7', '1.78', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('44', 'NO201811232050469840', '20', '7', '1.78', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('45', 'NO201811232050774809', '11', '7', '4.45', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('46', 'NO201811232050564527', '22', '7', '4.45', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('47', 'NO201811232050398209', '1', '7', '13.35', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('48', 'NO201811232050197463', '12', '7', '40.06', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('49', 'NO201811232050592691', '2', '7', '66.77', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('50', 'NO201811232050471065', '10', '7', '66.77', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('51', 'NO201811232050477254', '21', '7', '66.77', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('52', 'NO201811232050873073', '3', '7', '133.53', '3', '0', '2018-11-23 20:50:54', null);
INSERT INTO `shop_trade` VALUES ('53', 'NO201811232053648812', '7', '7', '-2.67', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('54', 'NO201811232053943242', '20', '7', '-2.67', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('55', 'NO201811232053869773', '11', '7', '-6.68', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('56', 'NO201811232053519138', '22', '7', '-6.68', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('57', 'NO201811232053786374', '1', '7', '-20.05', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('58', 'NO201811232053474457', '12', '7', '-60.15', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('59', 'NO201811232053813163', '2', '7', '-100.26', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('60', 'NO201811232053742446', '10', '7', '-100.26', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('61', 'NO201811232053272740', '21', '7', '-100.26', '3', '0', '2018-11-23 20:53:27', null);
INSERT INTO `shop_trade` VALUES ('62', 'NO201811232053836363', '3', '7', '-200.51', '3', '0', '2018-11-23 20:53:27', null);

-- ----------------------------
-- Table structure for `shop_trade_detail`
-- ----------------------------
DROP TABLE IF EXISTS `shop_trade_detail`;
CREATE TABLE `shop_trade_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_id` int(11) NOT NULL COMMENT '订单表shop_trade主键id',
  `pro_id` int(11) NOT NULL COMMENT '订单表shop_trade主键id',
  `count` tinyint(4) NOT NULL COMMENT '商品个数',
  `price` decimal(8,2) NOT NULL COMMENT '实际付款价格',
  `pro_name` varchar(64) NOT NULL COMMENT '商品名称',
  `pro_logo_img` varchar(64) NOT NULL COMMENT '商品logo图片',
  PRIMARY KEY (`id`),
  KEY `pk_trade_id` (`trade_id`),
  CONSTRAINT `pk_trade_id` FOREIGN KEY (`trade_id`) REFERENCES `shop_trade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_trade_detail
-- ----------------------------
INSERT INTO `shop_trade_detail` VALUES ('2', '2', '3', '1', '9999.00', '会员大礼包', '/static/images/null.png');
INSERT INTO `shop_trade_detail` VALUES ('3', '1', '1', '1', '3999.00', '会员大礼包', '/static/images/null.png');

-- ----------------------------
-- Table structure for `shop_user`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL COMMENT '账户名',
  `phone` varchar(12) NOT NULL COMMENT '手机号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `ref_phone` varchar(20) DEFAULT NULL COMMENT '推荐人手机号',
  `vip_level` varchar(2) DEFAULT NULL COMMENT 'v1普通会员、v2个人vip、v3初级代理、v4高级代理、v5核心代理、v6运营中心、v7公司股东',
  `address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1有效 2无效',
  `nick_name` varchar(48) DEFAULT NULL COMMENT '昵称',
  `jiaoyimima` varchar(32) DEFAULT NULL COMMENT '交易密码',
  PRIMARY KEY (`id`),
  KEY `idx_phone` (`phone`) USING BTREE,
  KEY `idx_ref_phone` (`ref_phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('1', '丁金清', '13798369752', 'E10ADC3949BA59ABBE56E057F20F883E', '19979458414', 'v4', '江西省赣州市于都县', '2018-11-07 17:58:45', null, '2018-11-08 16:19:56', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('2', '丁清', '19979458414', 'E10ADC3949BA59ABBE56E057F20F883E', '13360525570', 'v6', '江西省赣州市于都县', '2018-11-07 17:59:41', null, '2018-11-07 17:59:45', null, '1', null, null);
INSERT INTO `shop_user` VALUES ('3', '丁丁', '13360525570', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369750', 'v7', '江西', '2018-11-07 18:20:19', null, null, null, '1', null, null);
INSERT INTO `shop_user` VALUES ('7', '1111111111', '13798369751', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369750', 'v2', '11', '2018-11-08 16:42:02', null, '2018-11-21 11:28:02', null, '1', '', '');
INSERT INTO `shop_user` VALUES ('10', '99999999', '13798369750', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369751', 'v6', '11', '2018-11-21 10:53:59', null, '2018-11-21 14:00:05', null, '1', '', '');
INSERT INTO `shop_user` VALUES ('11', 'sdfsddsdsdd', '13798369753', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369751', 'v3', null, '2018-11-21 11:11:39', null, null, null, '1', null, null);
INSERT INTO `shop_user` VALUES ('12', '3333', '13798369754', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369751', 'v5', null, '2018-11-21 11:35:12', null, null, null, '1', null, null);
INSERT INTO `shop_user` VALUES ('20', '111111111111111', '13798369756', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369750', 'v2', '11', '2018-11-21 19:41:22', null, null, null, '1', '王五', '');
INSERT INTO `shop_user` VALUES ('21', '111111111111', '13798369757', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369750', 'v6', '11', '2018-11-21 19:45:13', null, '2018-11-21 19:52:51', null, '1', '王五', '');
INSERT INTO `shop_user` VALUES ('22', '111111111111111', '13798369758', 'E10ADC3949BA59ABBE56E057F20F883E', '13798369750', 'v3', '11', '2018-11-21 19:46:13', null, null, null, '1', '王五', '');

-- ----------------------------
-- Table structure for `shop_user_ext`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_ext`;
CREATE TABLE `shop_user_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `credits` varchar(20) DEFAULT '0' COMMENT '账户积分',
  `bill` varchar(8) DEFAULT '0' COMMENT '总健康链',
  `active_bill` varchar(8) DEFAULT '0' COMMENT '激活的健康链',
  `trade_bill` varchar(8) DEFAULT '0' COMMENT '转让获得的健康链',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '账户余额',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid` (`user_id`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user_ext
-- ----------------------------
INSERT INTO `shop_user_ext` VALUES ('1', '1', '30000', '30', '1', '0', '50033.35', '2018-11-07 18:03:48', null, '2018-11-08 16:19:56', null);
INSERT INTO `shop_user_ext` VALUES ('2', '2', '300000', '3000', '30', '50', '500166.82', '2018-11-07 18:04:50', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('3', '3', '0', '30', '0', '0', '333.61', '2018-11-08 16:23:10', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('4', '7', '1', '100', '17', '0', '897.00', '2018-11-08 16:42:02', null, '2018-11-21 11:28:03', null);
INSERT INTO `shop_user_ext` VALUES ('5', '10', '1', '2', '23', '4', '1866.57', '2018-11-21 10:53:59', null, '2018-11-21 14:00:05', null);
INSERT INTO `shop_user_ext` VALUES ('6', '11', '10000', '100', '0', '0', '251.00', '2018-11-21 11:11:39', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('7', '12', '0', '0', '0', '0', '100.09', '2018-11-21 11:35:23', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('8', '22', '1', '0', '0', '0', '11.12', '2018-11-21 19:46:13', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('9', '21', '0', '0', '1', '0', '166.82', '2018-11-21 19:51:21', null, '2018-11-21 19:52:52', null);
INSERT INTO `shop_user_ext` VALUES ('10', '20', '0', '0', '0', '0', '4.45', '2018-11-21 19:51:46', null, null, null);

-- ----------------------------
-- Procedure structure for `proc_pingtaifenhong`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_pingtaifenhong`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_pingtaifenhong`(in yesterday date)
BEGIN
    declare uuser_id int(11); -- 用户id
		declare ubalance decimal(10,2) DEFAULT 0; -- 用户余额
		declare ufenghong decimal(10,2) DEFAULT 0; -- 用户对应分红积分
		declare total_jifen decimal(18,2) DEFAULT 0; -- 积分总数
		declare total_yinli decimal(10,2) DEFAULT 0; -- 平台昨日盈利
		declare sys_chenben decimal(10,2) DEFAULT 0; -- 平台成本
		declare sys_bili decimal(8,2) DEFAULT 0; -- 分红比例
		DECLARE done INT DEFAULT FALSE; -- 自定义控制游标循环变量,默认false  

		DECLARE My_Cursor CURSOR FOR ( SELECT t2.user_id,t2.balance,CONVERT(t3.fenhong, DECIMAL(8,2)) FROM  shop_user t1 LEFT JOIN  shop_user_ext t2 on t1.id = t2.user_id LEFT JOIN shop_register_rule t3 on t1.vip_level=t3.vip_level ); -- 定义游标并输入结果集  
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; -- 绑定控制变量到游标,游标循环结束自动转true  
		-- 积分总数查找
		select SUM(t3.fenhong) into total_jifen   from shop_user t1  LEFT JOIN shop_register_rule t3 on t1.vip_level=t3.vip_level;
		-- 平台当天盈利(营业额)
		select SUM(ABS(t.price)) into total_yinli from shop_trade t where  t.type in (1,2) and  t.create_date >DATE_ADD(DATE_SUB(yesterday,INTERVAL 1 DAY),INTERVAL 1 HOUR) and t.create_date <DATE_ADD(yesterday,INTERVAL 1 HOUR);

		-- 平台成本
		SELECT CONVERT(sys_value, DECIMAL(10,2)) into  sys_chenben  from shop_sys_param where sys_code='SY_CHENGBEN';
		-- X%
		select CONVERT(sys_value, DECIMAL(8,2)) into  sys_bili from shop_sys_param where sys_code='SY_FENBFB';

		OPEN My_Cursor; -- 打开游标  
			myLoop: LOOP -- 开始循环体,myLoop为自定义循环名,结束循环时用到  
			FETCH My_Cursor into uuser_id, ubalance,ufenghong; -- 将游标当前读取行的数据顺序赋予自定义变量12  
			IF done THEN -- 判断是否继续循环  
				LEAVE myLoop; -- 结束循环  
			END IF;  
    -- 自己要做的事情,在 sql 中直接使用自定义变量即可  
			update shop_user_ext set balance=balance+(total_yinli-sys_chenben)*sys_bili/total_jifen*ufenghong  where user_id=uuser_id;
			insert into shop_trade (trade_no,user_id,type,price,status,credits,create_date) 
				VALUES (CONCAT('NO',DATE_FORMAT(NOW(),'%Y%m%d%H%i'), FLOOR(100000 + (RAND() * 900000))),
				uuser_id,7,(total_yinli-sys_chenben)*sys_bili/total_jifen*ufenghong,3,0,NOW());
  
    COMMIT; -- 提交事务  
  END LOOP myLoop; -- 结束自定义循环体  
  CLOSE My_Cursor; -- 关闭游标  
END
;;
DELIMITER ;
