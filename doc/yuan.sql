/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : yuan

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-13 20:01:25
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
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7a9fdd47000b', null, '2017-04-17 14:35:48', '0', '2018-11-09 14:35:28', 'xxgk_xxld', '1', '动态定制网站', '2', '8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7a9fdd47000b', '8a2a08425b7a0b7b015b7a2a82ab0005', null, '0');
INSERT INTO `cms_column_info` VALUES ('8a2a08425b7a0b7b015b7aa0b065000c', null, '2017-04-17 14:36:42', '0', '2018-11-09 14:35:28', 'xxgk_xzjy', '1', '政府OA系统', '3', '8a2a08425b7a0b7b015b7a2a82ab0005/8a2a08425b7a0b7b015b7aa0b065000c', '8a2a08425b7a0b7b015b7a2a82ab0005', null, '0');
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
  `type` tinyint(1) NOT NULL COMMENT '操作类型"1、提现  2、转让',
  `trade_phone` varchar(16) NOT NULL COMMENT '受让人手机号',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '会员大礼包', '/uploads/attach/e84be3bf-39b8-446b-9b9c-9f566139fa5c.jpg', '高山之水天上来 ', '<p>qqqq<br/></p>', '1000', '100', '1', '20', '100', '90', '80', '/uploads/attach/f02be418-8477-47ae-ada6-e094c0de7362.png', '/uploads/attach/03af9b2a-77d0-45f7-aa6d-40cb40144289.jpg', '/uploads/attach/128cf5ee-e581-44e6-a579-209e62999776.jpg', '/uploads/attach/1cc41dce-7d70-4cff-9dd4-0c8d9673fd2a.png', '', '2018-11-10 15:02:55', '');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_register_rule
-- ----------------------------
INSERT INTO `shop_register_rule` VALUES ('1', 'v1', '1', '1', '2%', '1%', '0', '0', '30', '2018-11-04 20:24:44', null, '2018-11-08 14:56:03', null, '5%', '2%', '1%');
INSERT INTO `shop_register_rule` VALUES ('2', 'v2', '3', '1', '3%', '2%', '0', '0', '100', '2018-11-04 20:27:00', '1', null, '1', '6%', '3%', '2%');
INSERT INTO `shop_register_rule` VALUES ('3', 'v3', '10', '3', '3%', '2%', '0', '0', '300', '2018-11-04 20:27:00', '1', null, '1', '8%', '4%', '3%');
INSERT INTO `shop_register_rule` VALUES ('4', 'v4', '30', '10', '6%', '4%', '2%', '0', '900', '2018-11-04 20:27:00', '1', null, '1', '10%', '6%', '4%');
INSERT INTO `shop_register_rule` VALUES ('5', 'v5', '50', '15', '8%', '5%', '4%', '0', '1500', '2018-11-04 20:27:00', null, '2018-11-08 14:03:21', null, '12%', '8%', '5%');
INSERT INTO `shop_register_rule` VALUES ('6', 'v6', '100', '20', '10%', '8%', '6%', '%5', '3000', '2018-11-07 16:18:20', null, '2018-11-07 15:58:54', null, '15%', '10%', '6%');

-- ----------------------------
-- Table structure for `shop_trade`
-- ----------------------------
DROP TABLE IF EXISTS `shop_trade`;
CREATE TABLE `shop_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(32) NOT NULL COMMENT '订单编号',
  `user_id` int(11) NOT NULL COMMENT '交易用户id',
  `type` tinyint(2) NOT NULL COMMENT '1.购买会员大礼包2.复购产品3.直推4.间推5.管理奖6.股份收益7.平台分红',
  `price` int(8) NOT NULL COMMENT '从用户角度考虑，付款是-，收益是+',
  `status` tinyint(2) DEFAULT '3' COMMENT '1.订单提交（待发货） 2.后台发货（已发货） 3.确认收货  购买商品流程',
  `credits` int(8) NOT NULL COMMENT '使用积分总数',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `jtype` int(11) NOT NULL,
  `user` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_trade
-- ----------------------------
INSERT INTO `shop_trade` VALUES ('1', '191292191298198', '1', '1', '3998', '3', '3998', '2018-11-09 15:54:12', null, '0', null);
INSERT INTO `shop_trade` VALUES ('2', '111111111111111', '2', '1', '9999', '1', '9999', '2018-11-12 16:18:16', null, '0', null);

-- ----------------------------
-- Table structure for `shop_trade_detail`
-- ----------------------------
DROP TABLE IF EXISTS `shop_trade_detail`;
CREATE TABLE `shop_trade_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_id` int(11) NOT NULL COMMENT '订单表shop_trade主键id',
  `pro_id` int(11) NOT NULL COMMENT '订单表shop_trade主键id',
  `count` tinyint(4) NOT NULL COMMENT '商品个数',
  `price` int(8) NOT NULL COMMENT '实际付款价格',
  `pro_name` varchar(64) NOT NULL COMMENT '商品名称',
  `pro_logo_img` varchar(64) NOT NULL COMMENT '商品logo图片',
  PRIMARY KEY (`id`),
  KEY `pk_trade_id` (`trade_id`),
  CONSTRAINT `pk_trade_id` FOREIGN KEY (`trade_id`) REFERENCES `shop_trade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_trade_detail
-- ----------------------------
INSERT INTO `shop_trade_detail` VALUES ('2', '1', '1', '5', '30', '会员大礼包', '/static/images/null.png');
INSERT INTO `shop_trade_detail` VALUES ('3', '1', '1', '1', '50', '会员大礼包', '/static/images/null.png');

-- ----------------------------
-- Table structure for `shop_user`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '账户名',
  `phone` varchar(12) NOT NULL COMMENT '手机号',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `ref_phone` varchar(20) DEFAULT NULL COMMENT '推荐人手机号',
  `vip_level` varchar(2) DEFAULT NULL COMMENT 'v1普通会员、v2个人vip、v3初级代理、v4高级代理、v5核心代理、v6运营中心、v7公司股东',
  `address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1有效 2无效',
  PRIMARY KEY (`id`),
  KEY `idx_phone` (`phone`) USING BTREE,
  KEY `idx_ref_phone` (`ref_phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('1', '丁金清', '13798369750', '123456', '19979458414', 'v1', '江西省赣州市于都县', '2018-11-07 17:58:45', null, '2018-11-08 16:19:56', null, '1');
INSERT INTO `shop_user` VALUES ('2', '丁清', '19979458414', '123456', null, 'v6', '江西省赣州市于都县', '2018-11-07 17:59:41', null, '2018-11-07 17:59:45', null, '1');
INSERT INTO `shop_user` VALUES ('3', '丁丁', '13360525570', '123456', '13798369750', 'v1', '江西', '2018-11-07 18:20:19', null, null, null, '1');
INSERT INTO `shop_user` VALUES ('7', '1111111111', '13798369751', '', '13798369750', 'v2', '11', '2018-11-08 16:42:02', null, '2018-11-08 16:46:44', null, '1');

-- ----------------------------
-- Table structure for `shop_user_ext`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_ext`;
CREATE TABLE `shop_user_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户表主键',
  `credits` varchar(20) NOT NULL DEFAULT '0' COMMENT '账户积分',
  `bill` varchar(8) NOT NULL DEFAULT '0' COMMENT '总健康链',
  `active_bill` varchar(8) NOT NULL DEFAULT '0' COMMENT '激活的健康链',
  `trade_bill` varchar(8) NOT NULL DEFAULT '0' COMMENT '转让获得的健康链',
  `balance` varchar(12) NOT NULL DEFAULT '0' COMMENT '账户余额',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user_ext
-- ----------------------------
INSERT INTO `shop_user_ext` VALUES ('1', '1', '30000', '30', '1', '0', '50000', '2018-11-07 18:03:48', null, '2018-11-08 16:19:56', null);
INSERT INTO `shop_user_ext` VALUES ('2', '2', '300000', '3000', '30', '50', '500000', '2018-11-07 18:04:50', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('3', '3', '0', '30', '0', '0', '0', '2018-11-08 16:23:10', null, null, null);
INSERT INTO `shop_user_ext` VALUES ('4', '7', '0', '100', '0', '0', '5000', '2018-11-08 16:42:02', null, '2018-11-08 16:46:44', null);
