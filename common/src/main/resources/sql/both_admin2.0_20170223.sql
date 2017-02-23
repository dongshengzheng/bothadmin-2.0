/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : go

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-02-23 16:20:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of databasechangelog
-- ----------------------------
INSERT INTO `databasechangelog` VALUES ('15950097942-001', 'WangShun', 'src/main/resources/changelog.xml', '2017-01-20 18:08:43', '1', 'EXECUTED', '7:8c9d2dcf821c9cb4f7ea5506967568bf', 'addColumn tableName=sys_user', '', null, '3.5.3', null, null, '4906922107');
INSERT INTO `databasechangelog` VALUES ('15950097942-002', 'WangShun', 'src/main/resources/changelog.xml', '2017-01-20 18:25:53', '2', 'EXECUTED', '7:cadf4500b8903664980db191b6cf5c76', 'sql', '', null, '3.5.3', null, null, '4907953654');
INSERT INTO `databasechangelog` VALUES ('15950097942-003', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '3', 'EXECUTED', '7:f1c4e3941d7812821879aeeb2e88b1ec', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('15950097942-004', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '4', 'EXECUTED', '7:6f50631b2628966e7876addf59d1d002', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('15950097942-005', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '5', 'EXECUTED', '7:e2ff4cb0eb561d55445a0198ee2af072', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('17317309132-001', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-07 15:31:24', '6', 'EXECUTED', '7:912a34a33ff4db5522b5132c1d497138', 'sql', '', null, '3.5.3', null, null, '6452684121');
INSERT INTO `databasechangelog` VALUES ('17317309132-002', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-08 15:49:01', '7', 'EXECUTED', '7:b6a7f328311cb3dd4fbb072fba56a171', 'sql', '', null, '3.5.3', null, null, '6540141255');
INSERT INTO `databasechangelog` VALUES ('15950097942-006', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-09 12:18:23', '8', 'EXECUTED', '7:07c1731b9d0f95987ca721fbe9068d96', 'sql', '', null, '3.5.3', null, null, '6613902277');
INSERT INTO `databasechangelog` VALUES ('17317309132-003', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-09 12:28:18', '9', 'EXECUTED', '7:94c468585077cc538a533d06e9904c12', 'sql', '', null, '3.5.3', null, null, '6614497679');
INSERT INTO `databasechangelog` VALUES ('17317309132-005', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 12:05:22', '10', 'EXECUTED', '7:a1b142e2823af82a8bbe7bf1cb9868ac', 'sql', '', null, '3.5.3', null, null, '6699521249');
INSERT INTO `databasechangelog` VALUES ('17317309132-006', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 14:17:45', '11', 'EXECUTED', '7:cf18da8d347f01233de3f54bda722bfb', 'sql', '', null, '3.5.3', null, null, '6707464354');
INSERT INTO `databasechangelog` VALUES ('17317309132-007', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 16:28:11', '12', 'EXECUTED', '7:45ef4080c14b2097d8379b5898951868', 'sql', '', null, '3.5.3', null, null, '6715290391');

-- ----------------------------
-- Table structure for databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of databasechangeloglock
-- ----------------------------
INSERT INTO `databasechangeloglock` VALUES ('1', '\0', null, null);

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL COMMENT '子菜单名称',
  `button_name` varchar(64) NOT NULL COMMENT '按钮名称',
  `button_url` varchar(255) NOT NULL COMMENT '按钮路径',
  `del_flag` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('1', '2', '新增菜单/子菜单', 'right/addMenu', '0');
INSERT INTO `sys_button` VALUES ('2', '2', '修改菜单/子菜单', 'right/editMenu', '0');
INSERT INTO `sys_button` VALUES ('3', '2', '删除菜单/子菜单', 'right/deleteMenu', '0');
INSERT INTO `sys_button` VALUES ('4', '2', '批量删除菜单/子菜单', 'right/batchDeleteMenu', '0');
INSERT INTO `sys_button` VALUES ('5', '2', '子菜单信息', 'right/subMenu', '0');
INSERT INTO `sys_button` VALUES ('6', '2', '权限信息', 'right/button', '0');
INSERT INTO `sys_button` VALUES ('7', '2', '新增权限', 'right/addBtn', '0');
INSERT INTO `sys_button` VALUES ('8', '2', '修改权限', 'right/editBtn', '0');
INSERT INTO `sys_button` VALUES ('9', '2', '删除权限', 'right/deleteBtn', '0');
INSERT INTO `sys_button` VALUES ('10', '2', '批量删除权限', 'right/batchDeleteBtn', '0');
INSERT INTO `sys_button` VALUES ('11', '3', '新增', 'user/add', '0');
INSERT INTO `sys_button` VALUES ('12', '3', '修改', 'user/edit', '0');
INSERT INTO `sys_button` VALUES ('13', '3', '删除', 'user/delete', '0');
INSERT INTO `sys_button` VALUES ('14', '3', '批量删除', 'user/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('15', '3', '授权', 'user/editRole', '0');
INSERT INTO `sys_button` VALUES ('16', '4', '新增', 'role/add', '0');
INSERT INTO `sys_button` VALUES ('17', '4', '修改', 'role/edit', '0');
INSERT INTO `sys_button` VALUES ('18', '4', '删除', 'role/delete', '0');
INSERT INTO `sys_button` VALUES ('19', '4', '批量删除', 'role/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('20', '4', '编辑权限', 'role/editRight', '0');
INSERT INTO `sys_button` VALUES ('35', '101', '新增船舶', 'ship/addBtn', '0');
INSERT INTO `sys_button` VALUES ('36', '106', '更改样式', 'account/editStyle', '0');
INSERT INTO `sys_button` VALUES ('37', '106', '更改个人姓名', 'account/editName', '0');
INSERT INTO `sys_button` VALUES ('38', '106', '更改密码', 'account/editPassword', '0');
INSERT INTO `sys_button` VALUES ('39', '106', '更改手机号码', 'account/editPhone', '0');
INSERT INTO `sys_button` VALUES ('40', '106', '更改电子邮箱', 'account/editEmail', '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单URL',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `menu_order` int(11) DEFAULT NULL COMMENT '菜单顺序',
  `menu_icon` varchar(128) DEFAULT NULL COMMENT '菜单图标',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型 资源类型：1-分类； 2-菜单',
  `removable` int(11) NOT NULL DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `del_flag` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统配置', '#', '0', '40', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_40.png', '1', '0', '系统配置', '0');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', 'right', '1', '41', '', '2', '1', '权限管理', '0');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', 'user', '1', '42', '', '2', '1', '用户管理', '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', 'role', '1', '43', '', '2', '1', '角色管理', '0');
INSERT INTO `sys_menu` VALUES ('93', '维修进度', '#', '0', '30', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_30.png', '1', '1', '维修进度', '0');
INSERT INTO `sys_menu` VALUES ('100', '维修工程管理', 'management', '93', '31', null, '2', '1', '维修工程管理', '0');
INSERT INTO `sys_menu` VALUES ('101', '基础信息', '#', '0', '10', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_10.png', '1', '1', '基础信息', '0');
INSERT INTO `sys_menu` VALUES ('102', '船舶信息', 'ship', '101', '11', null, '2', '1', '船舶信息', '0');
INSERT INTO `sys_menu` VALUES ('103', '船厂信息', 'shipyard', '101', '12', null, '2', '1', '船厂信息', '0');
INSERT INTO `sys_menu` VALUES ('104', '公司信息', 'company', '101', '13', null, '2', '1', '公司信息', '0');
INSERT INTO `sys_menu` VALUES ('105', '维修进度汇报', 'progress', '93', '32', null, '2', '1', '维修进度汇报', '0');
INSERT INTO `sys_menu` VALUES ('106', '账号设置', 'account', '1', '45', null, '2', '1', '账号设置', '0');
INSERT INTO `sys_menu` VALUES ('107', '公司资料', 'company/edit', '1', '46', null, '2', '1', '公司资料', '0');
INSERT INTO `sys_menu` VALUES ('108', '维修工程单', '#', '0', '20', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_20.png', '1', '1', '维修工程单', '0');
INSERT INTO `sys_menu` VALUES ('109', '维修工程单', 'repairlist', '108', '21', null, '2', '1', '维修工程单', '0');
INSERT INTO `sys_menu` VALUES ('110', '工程单询价', 'inquiry', '108', '22', null, '2', '1', '工程单询价', '0');
INSERT INTO `sys_menu` VALUES ('111', '工程单比价', 'compare', '108', '23', null, '2', '1', '工程单比价', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '#', '0,', '伯曦运维流程管理', '10', '90ecd439eb3845db97a627d9242145e8', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-08-03 20:04:16', '', '0');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '客户', '30', '90ecd439eb3845db97a627d9242145e8', '100003', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-08-03 20:05:24', '', '0');
INSERT INTO `sys_office` VALUES ('6a642e140e40496a8d467c646b8e935e', '1', '0,1,', '技术部', '30', '90ecd439eb3845db97a627d9242145e8', '1000', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2015-12-03 18:10:13', '1', '2016-08-03 20:05:15', '', '0');
INSERT INTO `sys_office` VALUES ('e081f1f21b9f4ba7b7ce186a5e3fe35d', '1', '0,1,', '查看部', '30', '90ecd439eb3845db97a627d9242145e8', '100000005', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2016-11-07 15:12:59', '1', '2016-11-07 15:12:59', '', '0');
INSERT INTO `sys_office` VALUES ('e0ef8af9cae6416f8bb359714a1b4244', '1', '0,1,', '主管', '30', '90ecd439eb3845db97a627d9242145e8', '', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2015-11-11 17:41:41', '1', '2016-08-15 21:40:05', '', '0');
INSERT INTO `sys_office` VALUES ('e92cbc338f65448b8613b661e34c89c5', '1', '0,1,', '客服', '30', '90ecd439eb3845db97a627d9242145e8', '002', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2016-08-09 23:35:00', '1', '2016-08-09 23:35:00', '', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL COMMENT '角色名称',
  `removable` int(3) NOT NULL DEFAULT '0' COMMENT '可被删除 0=不行 1=可以',
  `allocatable` int(3) DEFAULT '1' COMMENT '可被分配 0=不行 1=可以',
  `description` varchar(255) DEFAULT NULL,
  `del_flag` int(3) NOT NULL DEFAULT '1' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', '1', '系统管理员', '0');

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `resource_id` int(11) NOT NULL DEFAULT '0',
  `resource_type` int(3) NOT NULL DEFAULT '0' COMMENT '资源类型：1-分类； 2-菜单；3-按钮',
  PRIMARY KEY (`id`),
  KEY `role_id_idx` (`role_id`),
  KEY `resource_id_idx` (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COMMENT='权限和资源（菜单+按钮）';

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('374', '1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('375', '1', '2', '2');
INSERT INTO `sys_role_resource` VALUES ('376', '1', '3', '2');
INSERT INTO `sys_role_resource` VALUES ('377', '1', '4', '2');
INSERT INTO `sys_role_resource` VALUES ('379', '1', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('380', '1', '100', '2');
INSERT INTO `sys_role_resource` VALUES ('381', '1', '101', '1');
INSERT INTO `sys_role_resource` VALUES ('382', '1', '102', '2');
INSERT INTO `sys_role_resource` VALUES ('383', '1', '103', '2');
INSERT INTO `sys_role_resource` VALUES ('384', '1', '104', '2');
INSERT INTO `sys_role_resource` VALUES ('385', '1', '105', '2');
INSERT INTO `sys_role_resource` VALUES ('386', '1', '106', '2');
INSERT INTO `sys_role_resource` VALUES ('387', '1', '107', '2');
INSERT INTO `sys_role_resource` VALUES ('388', '1', '108', '1');
INSERT INTO `sys_role_resource` VALUES ('389', '1', '109', '2');
INSERT INTO `sys_role_resource` VALUES ('390', '1', '110', '2');
INSERT INTO `sys_role_resource` VALUES ('391', '1', '111', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) NOT NULL COMMENT '登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `ip` varchar(32) DEFAULT NULL COMMENT 'IP',
  `del_flag` varchar(32) DEFAULT NULL COMMENT '状态',
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL,
  `identification` varchar(64) DEFAULT NULL COMMENT '身份证',
  `public` varchar(64) DEFAULT NULL COMMENT '是否公开',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `type` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者',
  `update_by` int(11) DEFAULT NULL COMMENT '更新者',
  `office_id` varchar(30) DEFAULT NULL COMMENT '部门Id',
  `open_id` varchar(200) DEFAULT NULL COMMENT 'openId',
  `prefer` varchar(64) DEFAULT NULL COMMENT '偏好',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `head_img_url` varchar(200) DEFAULT NULL COMMENT '头像图片地址',
  `style_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `email_status` int(11) DEFAULT NULL COMMENT '邮箱验证状态',
  `email_time` datetime DEFAULT NULL COMMENT '邮箱验证开始时间',
  `email_code` varchar(200) DEFAULT NULL COMMENT '邮箱验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', '2017-01-20 10:34:39', '0:0:0:0:0:0:0:1', '0', '123', '1234', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', 'luzhen', '18d5907164eddc5f29f39732c8eb4254e6082f10', 'luzhen', '2017-02-23 16:11:45', null, null, null, '601590910@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '2017-02-06 09:37:23', '724defcb1555caef02f730ea71a663af');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户和角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');

-- ----------------------------
-- Table structure for t_berth_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_berth_detail`;
CREATE TABLE `t_berth_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '泊位信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `loa` int(11) DEFAULT NULL COMMENT '总长',
  `draft` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `cranes` varchar(45) DEFAULT NULL COMMENT '起重机',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_berth_detail
-- ----------------------------
INSERT INTO `t_berth_detail` VALUES ('1', '2', '221', '10', '100000', '32TX1', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('2', '2', '264', '10', '150000', '40TX2', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('3', '2', '200', '7', '100000', '32Tx1', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('4', '2', '204', '10', '80000', '40TX1,32TX1', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `legal_person` varchar(45) DEFAULT NULL COMMENT '公司法人',
  `tel` varchar(45) DEFAULT NULL COMMENT '公司电话',
  `fax` varchar(45) DEFAULT NULL COMMENT '公司传真',
  `website` varchar(100) DEFAULT NULL COMMENT '公司网址',
  `address` varchar(500) DEFAULT NULL COMMENT '公司地址',
  `postal_code` varchar(45) DEFAULT NULL COMMENT '邮政编码',
  `contact_name` varchar(45) DEFAULT NULL COMMENT '联系姓名',
  `contact_tel` varchar(45) DEFAULT NULL COMMENT '详细方式',
  `logo` varchar(45) DEFAULT NULL COMMENT '公司Logo',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '上海东曦船务有限公司', '刘小姐', '023-68100000', '021-65426650', 'http://www.cosic.com.cn', '上海浦东新区陆家嘴假日酒店', '2010000', '张小姐', '13600001234', 'go/upload-images/W87H86yGyE.jpg', null, '', null, null, '0');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------

-- ----------------------------
-- Table structure for t_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `t_enquiry`;
CREATE TABLE `t_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '询价id',
  `title` varchar(45) DEFAULT NULL COMMENT '询价标题',
  `supplier` varchar(45) DEFAULT NULL COMMENT '供应商',
  `quote_date` date DEFAULT NULL COMMENT '报价日期',
  `quote_totle_price` varchar(45) DEFAULT NULL COMMENT '报价总额',
  `other_price` varchar(45) DEFAULT NULL COMMENT '其他费用',
  `discount` varchar(45) DEFAULT NULL COMMENT '折扣率',
  `payment` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `invoice_type` varchar(45) DEFAULT NULL COMMENT '发票类型',
  `t_repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程单的id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_enquiry
-- ----------------------------

-- ----------------------------
-- Table structure for t_facility_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_facility_detail`;
CREATE TABLE `t_facility_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '起重机信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `type` varchar(45) DEFAULT NULL COMMENT '类型',
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `unit` varchar(10) DEFAULT NULL COMMENT '单元',
  `faci_category` varchar(45) DEFAULT NULL COMMENT '设施类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_facility_detail
-- ----------------------------
INSERT INTO `t_facility_detail` VALUES ('1', '2', 'Gantry crane', '600', '', '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('2', '2', 'Floating crane', '150', null, '2', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('3', '2', 'Floating crane', '63', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('4', '2', 'Floating crane', '60', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('5', '2', 'Floating crane', '50', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('6', '2', 'Mobile crane', '30', null, '2', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('7', '2', null, '4600', null, '1', 'Tugboats Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('8', '2', null, '4000', null, '2', 'Tugboats Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('9', '2', 'Cherry Picker', null, '40sets', null, 'Others', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_general_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_general_detail`;
CREATE TABLE `t_general_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一般信息的id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `item` varchar(45) DEFAULT NULL COMMENT '项目',
  `item_category` varchar(45) DEFAULT NULL COMMENT '项目类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_general_detail
-- ----------------------------
INSERT INTO `t_general_detail` VALUES ('1', '2', 'Bulker', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('2', '2', 'Container', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('3', '2', 'Tanker', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('4', '2', 'Gas Carrier', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('5', '2', 'Offshore', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('6', '2', 'Cruise', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('7', '2', 'Other', 'Major Clients', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('8', '2', 'Offshore', 'Major Clients', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('9', '2', 'BW Offshore', 'Major Clients', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_private_shipyard
-- ----------------------------
DROP TABLE IF EXISTS `t_private_shipyard`;
CREATE TABLE `t_private_shipyard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船东关联的船厂的id',
  `name` varchar(45) DEFAULT NULL,
  `group_company` varchar(45) DEFAULT NULL COMMENT '集团公司',
  `country` varchar(45) DEFAULT NULL COMMENT '国家',
  `city` varchar(45) DEFAULT NULL COMMENT '城市',
  `location` varchar(45) DEFAULT NULL COMMENT '位置',
  `tel` varchar(45) DEFAULT NULL COMMENT '电话',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂的id',
  `contact_name` varchar(45) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_private_shipyard
-- ----------------------------
INSERT INTO `t_private_shipyard` VALUES ('1', '	COSCO DaLian', 'COSCO', '中国', '辽宁沈阳', null, null, null, null, null, null, null, '0', '1', '1', '张三', null);
INSERT INTO `t_private_shipyard` VALUES ('2', 'COSCO(Nantong) Shipyard Co.,Ltd', 'COSCO	', 'China', 'Central China', 'Nantong,Jiangsu Province', '(86)-21-58600111', '601590910@qq.com', null, null, null, null, '0', '1', '2', 'zhenLu', null);
INSERT INTO `t_private_shipyard` VALUES ('3', '上海 船务', null, null, null, null, null, null, null, null, null, null, '1', '1', null, '李四', null);
INSERT INTO `t_private_shipyard` VALUES ('4', '岙洋船务', '中远', 'China', '上海', '上海', '131313131', 'luzhen', null, null, null, null, '1', '1', null, 'luzhen', null);
INSERT INTO `t_private_shipyard` VALUES ('5', 'xxx', '中远', 'China', '', '', '17317309132', 'luzhen', null, null, null, null, '1', '1', null, 'luzhen', null);
INSERT INTO `t_private_shipyard` VALUES ('6', 'xxx', '中远', 'China', '', '', '17317309132', 'luzhen', null, null, null, null, '1', '1', null, 'luzhen', null);
INSERT INTO `t_private_shipyard` VALUES ('7', '岙洋船务', '中远', 'China', '', '', '17317309132', 'luzhen', null, null, null, null, '1', '1', null, 'luzhen', null);
INSERT INTO `t_private_shipyard` VALUES ('8', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, '0', '1', null, 'luzhen', null);
INSERT INTO `t_private_shipyard` VALUES ('9', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, null, null, null, 'luzhen', 'go/upload-images/pwXxns2yeS.png');
INSERT INTO `t_private_shipyard` VALUES ('10', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, '0', '1', null, 'luzhen', '');
INSERT INTO `t_private_shipyard` VALUES ('11', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, null, null, null, 'luzhen', '');
INSERT INTO `t_private_shipyard` VALUES ('12', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, '0', '1', null, 'luzhen', '');
INSERT INTO `t_private_shipyard` VALUES ('13', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, '1', '1', null, 'luzhen', 'go/upload-images/sm7GSEZ3wQ.png');

-- ----------------------------
-- Table structure for t_repair_model
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model`;
CREATE TABLE `t_repair_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修红本id',
  `name` varchar(100) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL COMMENT '维修类型',
  `version` varchar(30) DEFAULT NULL COMMENT '红本版本号',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_model_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model_item`;
CREATE TABLE `t_repair_model_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修红本项目id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '''维修项目类型''',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` text COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `info` text COMMENT '维修信息',
  `parentid` varchar(45) DEFAULT NULL COMMENT '父id',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `repair_model_id` int(11) DEFAULT NULL COMMENT '维修红本id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_prog
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog`;
CREATE TABLE `t_repair_prog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度id',
  `order_no` varchar(45) DEFAULT NULL COMMENT '维修单号',
  `ship_id` int(11) DEFAULT NULL COMMENT '船的id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `s_start_date` date DEFAULT NULL COMMENT '计划进厂日期',
  `s_days` int(11) DEFAULT NULL COMMENT '计划天数',
  `s_cost` int(11) DEFAULT NULL COMMENT '计划金额',
  `type` varchar(45) DEFAULT NULL COMMENT '维修类型',
  `enquiry_id` int(11) DEFAULT NULL COMMENT '询价id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船舶名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_prog_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_detail`;
CREATE TABLE `t_repair_prog_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度详细信息id',
  `repair_prog_id` int(11) DEFAULT NULL COMMENT '维修进度id',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `catagory` varchar(45) DEFAULT NULL COMMENT '项目分类',
  `pro_name` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `pro_desc` varchar(45) DEFAULT NULL COMMENT '工程描述',
  `faci_name` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_type` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_no` varchar(45) DEFAULT NULL COMMENT '序列号',
  `faci_param` varchar(200) DEFAULT NULL COMMENT '相关参数',
  `faci_src` varchar(45) DEFAULT NULL COMMENT '厂家/国家',
  `repair_position` varchar(45) DEFAULT NULL COMMENT '维修部位',
  `repair_position_desc` varchar(500) DEFAULT NULL COMMENT '维修详细位置',
  `damage` varchar(500) DEFAULT NULL COMMENT '损坏程度',
  `repair_tech` varchar(300) DEFAULT NULL COMMENT '修理工艺',
  `repair_tech_desc` varchar(500) DEFAULT NULL COMMENT '详细修理工艺',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_prog_detail_req
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_detail_req`;
CREATE TABLE `t_repair_prog_detail_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度中修理要求和规格的id',
  `des` varchar(500) DEFAULT NULL COMMENT '''要求描述/材料规格''',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详细的信息id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_detail_req
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_prog_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_item`;
CREATE TABLE `t_repair_prog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度项目id',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详细信息id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '维修项目类型',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` varchar(45) DEFAULT NULL COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `parentid` int(11) DEFAULT NULL COMMENT '父id',
  `info` text COMMENT '维修信息',
  `task_status` varchar(45) DEFAULT NULL COMMENT '任务状态',
  `repair_prog_id` int(11) DEFAULT NULL COMMENT '维修进度id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_spec
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec`;
CREATE TABLE `t_repair_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程单id',
  `order_no` varchar(45) DEFAULT NULL COMMENT '维修单号',
  `name` varchar(100) DEFAULT NULL COMMENT 'spec name',
  `ship_id` int(11) DEFAULT NULL COMMENT '船id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `s_start_date` date DEFAULT NULL COMMENT '计划进厂日期',
  `s_days` int(11) DEFAULT NULL COMMENT '计划天数',
  `s_cost` int(11) DEFAULT NULL COMMENT '计划金额',
  `type` varchar(45) DEFAULT NULL COMMENT '维修类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_spec_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_detail`;
CREATE TABLE `t_repair_spec_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程范本的id',
  `repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程单的id',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `catagory` varchar(45) DEFAULT NULL COMMENT '项目分类',
  `pro_name` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `pro_desc` text COMMENT '项目描述',
  `faci_name` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_type` varchar(45) DEFAULT NULL COMMENT '设备类型',
  `faci_src` varchar(45) DEFAULT NULL COMMENT '厂家/国家',
  `faci_no` varchar(45) DEFAULT NULL COMMENT '设备信息：序列号',
  `faci_param` varchar(200) DEFAULT NULL COMMENT '设备信息：相关参数',
  `repair_position` varchar(45) DEFAULT NULL COMMENT '维修部位',
  `repair_position_desc` text COMMENT '维修详细位置',
  `damage` varchar(500) DEFAULT NULL COMMENT '损坏程度',
  `repair_tech` varchar(300) DEFAULT NULL COMMENT '修理工艺',
  `repair_tech_desc` varchar(500) DEFAULT NULL COMMENT '详细修理工艺',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_spec_detail_req
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_detail_req`;
CREATE TABLE `t_repair_spec_detail_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '修理要求/和材料规格的id',
  `des` varchar(500) DEFAULT NULL COMMENT '要求描述/和材料规格',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `repair_spec_detail_id` int(11) DEFAULT NULL COMMENT '维修工程单范本的id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_detail_req
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_item`;
CREATE TABLE `t_repair_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程详情的id',
  `repair_spec_detail_id` int(11) DEFAULT NULL COMMENT '维修工程的id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '维修项目类型',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` varchar(100) DEFAULT NULL COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `info` text COMMENT '维修信息',
  `parentid` int(11) DEFAULT NULL COMMENT '父id',
  `repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程的id',
  `status` int(11) DEFAULT NULL COMMENT '是否需要维修的状态',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_repair_spec_item_price
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_item_price`;
CREATE TABLE `t_repair_spec_item_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每个项目的价格id',
  `unit_price` varchar(45) DEFAULT NULL COMMENT '单价',
  `total_price` varchar(45) DEFAULT NULL COMMENT '总价',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `repair_spec_item_id` int(11) DEFAULT NULL COMMENT '维修工程单项目id',
  `enquiry_id` int(11) DEFAULT NULL COMMENT '询价的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_item_price
-- ----------------------------

-- ----------------------------
-- Table structure for t_ship
-- ----------------------------
DROP TABLE IF EXISTS `t_ship`;
CREATE TABLE `t_ship` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船的id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `imo` varchar(45) DEFAULT NULL COMMENT '船的imo号',
  `name` varchar(45) DEFAULT NULL COMMENT '船名',
  `type` varchar(45) DEFAULT NULL COMMENT '船舶类型',
  `ship_class` varchar(45) DEFAULT NULL COMMENT '船级社',
  `builder` varchar(45) DEFAULT NULL COMMENT '船的建造者',
  `build_year` date DEFAULT NULL,
  `call_sign` varchar(45) DEFAULT NULL COMMENT '船舶呼号',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `draft` int(11) DEFAULT NULL COMMENT '吃水',
  `dwt` int(11) DEFAULT NULL COMMENT '载重吨',
  `gt` int(11) DEFAULT NULL COMMENT '总吨',
  `depth` int(11) DEFAULT NULL COMMENT '型深',
  `beam` int(11) DEFAULT NULL COMMENT '船宽',
  `loa` int(11) DEFAULT NULL COMMENT '船长',
  `me_maker` varchar(45) DEFAULT NULL COMMENT '主机：厂家',
  `me_type` varchar(45) DEFAULT NULL COMMENT '主机：型号',
  `me_bhp_rpm` varchar(45) DEFAULT NULL COMMENT '主机：马力/转速',
  `me_qty` int(11) DEFAULT NULL COMMENT '主机：数量',
  `me_cyl_bore` int(11) DEFAULT NULL COMMENT '主机：缸径',
  `aux_maker` varchar(45) DEFAULT NULL COMMENT '辅机：厂家',
  `aux_type` varchar(45) DEFAULT NULL COMMENT '辅机：型号',
  `aux_rated_or` varchar(45) DEFAULT NULL COMMENT '辅机：额定功率',
  `aux_qty` int(11) DEFAULT NULL COMMENT '辅机：数量',
  `aux_cyl_bore` int(11) DEFAULT NULL COMMENT '辅机：缸径',
  `boiler_maker` varchar(45) DEFAULT NULL COMMENT '锅炉：厂家',
  `boiler_type` varchar(45) DEFAULT NULL COMMENT '锅炉：型号',
  `boiler_pressure` varchar(45) DEFAULT NULL COMMENT '锅炉：工作压力',
  `boiler_qty` int(11) DEFAULT NULL COMMENT '锅炉：数量',
  `boiler_heating_area` int(11) DEFAULT NULL COMMENT '锅炉：热交换面积',
  `boiler_evaporation` int(11) DEFAULT NULL COMMENT '锅炉：蒸发量',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `dd` varchar(45) DEFAULT NULL,
  `ss` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ship
-- ----------------------------
INSERT INTO `t_ship` VALUES ('1', '1', '1111', '222', '222', '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `t_ship` VALUES ('2', '2', '333', '333', '33', '3333', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `t_ship` VALUES ('3', '1', '33322', '222', '111', '1111', '', null, '', '', '1212', null, null, '121', '121', '121', '', '', '', null, null, '', '', '', null, null, 'dssd', '', '', null, null, null, null, '', null, null, '0', null, null);

-- ----------------------------
-- Table structure for t_shipyard
-- ----------------------------
DROP TABLE IF EXISTS `t_shipyard`;
CREATE TABLE `t_shipyard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船厂id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `name` varchar(45) DEFAULT NULL COMMENT '船厂名称',
  `des` text COMMENT '船厂简介',
  `short_name` varchar(45) DEFAULT NULL COMMENT '短名称',
  `group_company` varchar(45) DEFAULT NULL COMMENT '集团公司',
  `country` varchar(45) DEFAULT NULL COMMENT '国家',
  `area` varchar(45) DEFAULT NULL COMMENT '区域',
  `location` varchar(45) DEFAULT NULL COMMENT '位置',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `longitude` varchar(45) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(45) DEFAULT NULL COMMENT '纬度',
  `tel` varchar(45) DEFAULT NULL COMMENT '电话',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `website` varchar(45) DEFAULT NULL COMMENT '网站',
  `logo` varchar(45) DEFAULT NULL COMMENT '船厂logo',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shipyard
-- ----------------------------
INSERT INTO `t_shipyard` VALUES ('1', '1', 'COSCO DaLian', null, null, 'COSCO', '中国', '辽宁沈阳', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_shipyard` VALUES ('2', '1', 'COSCO(Nantong) Shipyard Co.,Ltd', null, 'COSCO', 'COSCO', 'China', 'Central China', 'Nantong,Jiangsu Province', 'No.1 Zhongyuan Road,Nantong,Jiangsu province', '120°52′59″E', '31°58′59″N', '(86)-21-58600111', 'biz@cosco-shipyard.com', 'http://en.cosco-shipyard.com/', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_style
-- ----------------------------
DROP TABLE IF EXISTS `t_style`;
CREATE TABLE `t_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '风格id',
  `des` varchar(30) DEFAULT NULL COMMENT '描述',
  `color` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_style
-- ----------------------------
INSERT INTO `t_style` VALUES ('1', 'default', 'dark', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('2', 'blue', 'blue', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('3', 'darkblue', 'blue-dark', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('4', 'grey', 'grey', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('5', 'light', 'white', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('6', 'light2', 'grey-cararra', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_wharf_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_wharf_detail`;
CREATE TABLE `t_wharf_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '码头信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `type` varchar(45) DEFAULT NULL COMMENT '类型',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `lift_capacity` int(11) DEFAULT NULL COMMENT '提升能力',
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL COMMENT '维：宽度',
  `draft` int(11) DEFAULT NULL,
  `cranes` varchar(45) DEFAULT NULL COMMENT '起重机',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wharf_detail
-- ----------------------------
INSERT INTO `t_wharf_detail` VALUES ('1', '2', 'Floating', 'Nantong', '150000', null, '270', '48', '9', '24TX1,22TX1,15TX1,5TX1', null, null, null, null, null, '0');
INSERT INTO `t_wharf_detail` VALUES ('2', '2', 'Floating', 'Yuantong', '80000', null, '230', '42', '8', '22TX1,5TX1', null, null, null, null, null, '0');
SET FOREIGN_KEY_CHECKS=1;
