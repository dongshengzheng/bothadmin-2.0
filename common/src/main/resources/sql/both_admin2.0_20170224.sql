/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : go

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-02-24 18:01:43
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
-- Table structure for position_city
-- ----------------------------
DROP TABLE IF EXISTS `position_city`;
CREATE TABLE `position_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(10) unsigned NOT NULL COMMENT '地级市id',
  `city_id` bigint(20) unsigned NOT NULL COMMENT '县级市id',
  `city_name` char(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_id` (`city_id`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='县级市数据库';

-- ----------------------------
-- Records of position_city
-- ----------------------------
INSERT INTO `position_city` VALUES ('1', '11', '110100000000', '市辖区');
INSERT INTO `position_city` VALUES ('2', '11', '110200000000', '县');
INSERT INTO `position_city` VALUES ('3', '12', '120100000000', '市辖区');
INSERT INTO `position_city` VALUES ('4', '12', '120200000000', '县');
INSERT INTO `position_city` VALUES ('5', '13', '130100000000', '石家庄市');
INSERT INTO `position_city` VALUES ('6', '13', '130200000000', '唐山市');
INSERT INTO `position_city` VALUES ('7', '13', '130300000000', '秦皇岛市');
INSERT INTO `position_city` VALUES ('8', '13', '130400000000', '邯郸市');
INSERT INTO `position_city` VALUES ('9', '13', '130500000000', '邢台市');
INSERT INTO `position_city` VALUES ('10', '13', '130600000000', '保定市');
INSERT INTO `position_city` VALUES ('11', '13', '130700000000', '张家口市');
INSERT INTO `position_city` VALUES ('12', '13', '130800000000', '承德市');
INSERT INTO `position_city` VALUES ('13', '13', '130900000000', '沧州市');
INSERT INTO `position_city` VALUES ('14', '13', '131000000000', '廊坊市');
INSERT INTO `position_city` VALUES ('15', '13', '131100000000', '衡水市');
INSERT INTO `position_city` VALUES ('16', '13', '139000000000', '省直辖县级行政区划');
INSERT INTO `position_city` VALUES ('17', '14', '140100000000', '太原市');
INSERT INTO `position_city` VALUES ('18', '14', '140200000000', '大同市');
INSERT INTO `position_city` VALUES ('19', '14', '140300000000', '阳泉市');
INSERT INTO `position_city` VALUES ('20', '14', '140400000000', '长治市');
INSERT INTO `position_city` VALUES ('21', '14', '140500000000', '晋城市');
INSERT INTO `position_city` VALUES ('22', '14', '140600000000', '朔州市');
INSERT INTO `position_city` VALUES ('23', '14', '140700000000', '晋中市');
INSERT INTO `position_city` VALUES ('24', '14', '140800000000', '运城市');
INSERT INTO `position_city` VALUES ('25', '14', '140900000000', '忻州市');
INSERT INTO `position_city` VALUES ('26', '14', '141000000000', '临汾市');
INSERT INTO `position_city` VALUES ('27', '14', '141100000000', '吕梁市');
INSERT INTO `position_city` VALUES ('28', '15', '150100000000', '呼和浩特市');
INSERT INTO `position_city` VALUES ('29', '15', '150200000000', '包头市');
INSERT INTO `position_city` VALUES ('30', '15', '150300000000', '乌海市');
INSERT INTO `position_city` VALUES ('31', '15', '150400000000', '赤峰市');
INSERT INTO `position_city` VALUES ('32', '15', '150500000000', '通辽市');
INSERT INTO `position_city` VALUES ('33', '15', '150600000000', '鄂尔多斯市');
INSERT INTO `position_city` VALUES ('34', '15', '150700000000', '呼伦贝尔市');
INSERT INTO `position_city` VALUES ('35', '15', '150800000000', '巴彦淖尔市');
INSERT INTO `position_city` VALUES ('36', '15', '150900000000', '乌兰察布市');
INSERT INTO `position_city` VALUES ('37', '15', '152200000000', '兴安盟');
INSERT INTO `position_city` VALUES ('38', '15', '152500000000', '锡林郭勒盟');
INSERT INTO `position_city` VALUES ('39', '15', '152900000000', '阿拉善盟');
INSERT INTO `position_city` VALUES ('40', '21', '210100000000', '沈阳市');
INSERT INTO `position_city` VALUES ('41', '21', '210200000000', '大连市');
INSERT INTO `position_city` VALUES ('42', '21', '210300000000', '鞍山市');
INSERT INTO `position_city` VALUES ('43', '21', '210400000000', '抚顺市');
INSERT INTO `position_city` VALUES ('44', '21', '210500000000', '本溪市');
INSERT INTO `position_city` VALUES ('45', '21', '210600000000', '丹东市');
INSERT INTO `position_city` VALUES ('46', '21', '210700000000', '锦州市');
INSERT INTO `position_city` VALUES ('47', '21', '210800000000', '营口市');
INSERT INTO `position_city` VALUES ('48', '21', '210900000000', '阜新市');
INSERT INTO `position_city` VALUES ('49', '21', '211000000000', '辽阳市');
INSERT INTO `position_city` VALUES ('50', '21', '211100000000', '盘锦市');
INSERT INTO `position_city` VALUES ('51', '21', '211200000000', '铁岭市');
INSERT INTO `position_city` VALUES ('52', '21', '211300000000', '朝阳市');
INSERT INTO `position_city` VALUES ('53', '21', '211400000000', '葫芦岛市');
INSERT INTO `position_city` VALUES ('54', '22', '220100000000', '长春市');
INSERT INTO `position_city` VALUES ('55', '22', '220200000000', '吉林市');
INSERT INTO `position_city` VALUES ('56', '22', '220300000000', '四平市');
INSERT INTO `position_city` VALUES ('57', '22', '220400000000', '辽源市');
INSERT INTO `position_city` VALUES ('58', '22', '220500000000', '通化市');
INSERT INTO `position_city` VALUES ('59', '22', '220600000000', '白山市');
INSERT INTO `position_city` VALUES ('60', '22', '220700000000', '松原市');
INSERT INTO `position_city` VALUES ('61', '22', '220800000000', '白城市');
INSERT INTO `position_city` VALUES ('62', '22', '222400000000', '延边朝鲜族自治州');
INSERT INTO `position_city` VALUES ('63', '23', '230100000000', '哈尔滨市');
INSERT INTO `position_city` VALUES ('64', '23', '230200000000', '齐齐哈尔市');
INSERT INTO `position_city` VALUES ('65', '23', '230300000000', '鸡西市');
INSERT INTO `position_city` VALUES ('66', '23', '230400000000', '鹤岗市');
INSERT INTO `position_city` VALUES ('67', '23', '230500000000', '双鸭山市');
INSERT INTO `position_city` VALUES ('68', '23', '230600000000', '大庆市');
INSERT INTO `position_city` VALUES ('69', '23', '230700000000', '伊春市');
INSERT INTO `position_city` VALUES ('70', '23', '230800000000', '佳木斯市');
INSERT INTO `position_city` VALUES ('71', '23', '230900000000', '七台河市');
INSERT INTO `position_city` VALUES ('72', '23', '231000000000', '牡丹江市');
INSERT INTO `position_city` VALUES ('73', '23', '231100000000', '黑河市');
INSERT INTO `position_city` VALUES ('74', '23', '231200000000', '绥化市');
INSERT INTO `position_city` VALUES ('75', '23', '232700000000', '大兴安岭地区');
INSERT INTO `position_city` VALUES ('76', '31', '310100000000', '市辖区');
INSERT INTO `position_city` VALUES ('77', '31', '310200000000', '县');
INSERT INTO `position_city` VALUES ('78', '32', '320100000000', '南京市');
INSERT INTO `position_city` VALUES ('79', '32', '320200000000', '无锡市');
INSERT INTO `position_city` VALUES ('80', '32', '320300000000', '徐州市');
INSERT INTO `position_city` VALUES ('81', '32', '320400000000', '常州市');
INSERT INTO `position_city` VALUES ('82', '32', '320500000000', '苏州市');
INSERT INTO `position_city` VALUES ('83', '32', '320600000000', '南通市');
INSERT INTO `position_city` VALUES ('84', '32', '320700000000', '连云港市');
INSERT INTO `position_city` VALUES ('85', '32', '320800000000', '淮安市');
INSERT INTO `position_city` VALUES ('86', '32', '320900000000', '盐城市');
INSERT INTO `position_city` VALUES ('87', '32', '321000000000', '扬州市');
INSERT INTO `position_city` VALUES ('88', '32', '321100000000', '镇江市');
INSERT INTO `position_city` VALUES ('89', '32', '321200000000', '泰州市');
INSERT INTO `position_city` VALUES ('90', '32', '321300000000', '宿迁市');
INSERT INTO `position_city` VALUES ('91', '33', '330100000000', '杭州市');
INSERT INTO `position_city` VALUES ('92', '33', '330200000000', '宁波市');
INSERT INTO `position_city` VALUES ('93', '33', '330300000000', '温州市');
INSERT INTO `position_city` VALUES ('94', '33', '330400000000', '嘉兴市');
INSERT INTO `position_city` VALUES ('95', '33', '330500000000', '湖州市');
INSERT INTO `position_city` VALUES ('96', '33', '330600000000', '绍兴市');
INSERT INTO `position_city` VALUES ('97', '33', '330700000000', '金华市');
INSERT INTO `position_city` VALUES ('98', '33', '330800000000', '衢州市');
INSERT INTO `position_city` VALUES ('99', '33', '330900000000', '舟山市');
INSERT INTO `position_city` VALUES ('100', '33', '331000000000', '台州市');
INSERT INTO `position_city` VALUES ('101', '33', '331100000000', '丽水市');
INSERT INTO `position_city` VALUES ('102', '34', '340100000000', '合肥市');
INSERT INTO `position_city` VALUES ('103', '34', '340200000000', '芜湖市');
INSERT INTO `position_city` VALUES ('104', '34', '340300000000', '蚌埠市');
INSERT INTO `position_city` VALUES ('105', '34', '340400000000', '淮南市');
INSERT INTO `position_city` VALUES ('106', '34', '340500000000', '马鞍山市');
INSERT INTO `position_city` VALUES ('107', '34', '340600000000', '淮北市');
INSERT INTO `position_city` VALUES ('108', '34', '340700000000', '铜陵市');
INSERT INTO `position_city` VALUES ('109', '34', '340800000000', '安庆市');
INSERT INTO `position_city` VALUES ('110', '34', '341000000000', '黄山市');
INSERT INTO `position_city` VALUES ('111', '34', '341100000000', '滁州市');
INSERT INTO `position_city` VALUES ('112', '34', '341200000000', '阜阳市');
INSERT INTO `position_city` VALUES ('113', '34', '341300000000', '宿州市');
INSERT INTO `position_city` VALUES ('114', '34', '341500000000', '六安市');
INSERT INTO `position_city` VALUES ('115', '34', '341600000000', '亳州市');
INSERT INTO `position_city` VALUES ('116', '34', '341700000000', '池州市');
INSERT INTO `position_city` VALUES ('117', '34', '341800000000', '宣城市');
INSERT INTO `position_city` VALUES ('118', '35', '350100000000', '福州市');
INSERT INTO `position_city` VALUES ('119', '35', '350200000000', '厦门市');
INSERT INTO `position_city` VALUES ('120', '35', '350300000000', '莆田市');
INSERT INTO `position_city` VALUES ('121', '35', '350400000000', '三明市');
INSERT INTO `position_city` VALUES ('122', '35', '350500000000', '泉州市');
INSERT INTO `position_city` VALUES ('123', '35', '350600000000', '漳州市');
INSERT INTO `position_city` VALUES ('124', '35', '350700000000', '南平市');
INSERT INTO `position_city` VALUES ('125', '35', '350800000000', '龙岩市');
INSERT INTO `position_city` VALUES ('126', '35', '350900000000', '宁德市');
INSERT INTO `position_city` VALUES ('127', '36', '360100000000', '南昌市');
INSERT INTO `position_city` VALUES ('128', '36', '360200000000', '景德镇市');
INSERT INTO `position_city` VALUES ('129', '36', '360300000000', '萍乡市');
INSERT INTO `position_city` VALUES ('130', '36', '360400000000', '九江市');
INSERT INTO `position_city` VALUES ('131', '36', '360500000000', '新余市');
INSERT INTO `position_city` VALUES ('132', '36', '360600000000', '鹰潭市');
INSERT INTO `position_city` VALUES ('133', '36', '360700000000', '赣州市');
INSERT INTO `position_city` VALUES ('134', '36', '360800000000', '吉安市');
INSERT INTO `position_city` VALUES ('135', '36', '360900000000', '宜春市');
INSERT INTO `position_city` VALUES ('136', '36', '361000000000', '抚州市');
INSERT INTO `position_city` VALUES ('137', '36', '361100000000', '上饶市');
INSERT INTO `position_city` VALUES ('138', '37', '370100000000', '济南市');
INSERT INTO `position_city` VALUES ('139', '37', '370200000000', '青岛市');
INSERT INTO `position_city` VALUES ('140', '37', '370300000000', '淄博市');
INSERT INTO `position_city` VALUES ('141', '37', '370400000000', '枣庄市');
INSERT INTO `position_city` VALUES ('142', '37', '370500000000', '东营市');
INSERT INTO `position_city` VALUES ('143', '37', '370600000000', '烟台市');
INSERT INTO `position_city` VALUES ('144', '37', '370700000000', '潍坊市');
INSERT INTO `position_city` VALUES ('145', '37', '370800000000', '济宁市');
INSERT INTO `position_city` VALUES ('146', '37', '370900000000', '泰安市');
INSERT INTO `position_city` VALUES ('147', '37', '371000000000', '威海市');
INSERT INTO `position_city` VALUES ('148', '37', '371100000000', '日照市');
INSERT INTO `position_city` VALUES ('149', '37', '371200000000', '莱芜市');
INSERT INTO `position_city` VALUES ('150', '37', '371300000000', '临沂市');
INSERT INTO `position_city` VALUES ('151', '37', '371400000000', '德州市');
INSERT INTO `position_city` VALUES ('152', '37', '371500000000', '聊城市');
INSERT INTO `position_city` VALUES ('153', '37', '371600000000', '滨州市');
INSERT INTO `position_city` VALUES ('154', '37', '371700000000', '菏泽市');
INSERT INTO `position_city` VALUES ('155', '41', '410100000000', '郑州市');
INSERT INTO `position_city` VALUES ('156', '41', '410200000000', '开封市');
INSERT INTO `position_city` VALUES ('157', '41', '410300000000', '洛阳市');
INSERT INTO `position_city` VALUES ('158', '41', '410400000000', '平顶山市');
INSERT INTO `position_city` VALUES ('159', '41', '410500000000', '安阳市');
INSERT INTO `position_city` VALUES ('160', '41', '410600000000', '鹤壁市');
INSERT INTO `position_city` VALUES ('161', '41', '410700000000', '新乡市');
INSERT INTO `position_city` VALUES ('162', '41', '410800000000', '焦作市');
INSERT INTO `position_city` VALUES ('163', '41', '410900000000', '濮阳市');
INSERT INTO `position_city` VALUES ('164', '41', '411000000000', '许昌市');
INSERT INTO `position_city` VALUES ('165', '41', '411100000000', '漯河市');
INSERT INTO `position_city` VALUES ('166', '41', '411200000000', '三门峡市');
INSERT INTO `position_city` VALUES ('167', '41', '411300000000', '南阳市');
INSERT INTO `position_city` VALUES ('168', '41', '411400000000', '商丘市');
INSERT INTO `position_city` VALUES ('169', '41', '411500000000', '信阳市');
INSERT INTO `position_city` VALUES ('170', '41', '411600000000', '周口市');
INSERT INTO `position_city` VALUES ('171', '41', '411700000000', '驻马店市');
INSERT INTO `position_city` VALUES ('172', '41', '419000000000', '省直辖县级行政区划');
INSERT INTO `position_city` VALUES ('173', '42', '420100000000', '武汉市');
INSERT INTO `position_city` VALUES ('174', '42', '420200000000', '黄石市');
INSERT INTO `position_city` VALUES ('175', '42', '420300000000', '十堰市');
INSERT INTO `position_city` VALUES ('176', '42', '420500000000', '宜昌市');
INSERT INTO `position_city` VALUES ('177', '42', '420600000000', '襄阳市');
INSERT INTO `position_city` VALUES ('178', '42', '420700000000', '鄂州市');
INSERT INTO `position_city` VALUES ('179', '42', '420800000000', '荆门市');
INSERT INTO `position_city` VALUES ('180', '42', '420900000000', '孝感市');
INSERT INTO `position_city` VALUES ('181', '42', '421000000000', '荆州市');
INSERT INTO `position_city` VALUES ('182', '42', '421100000000', '黄冈市');
INSERT INTO `position_city` VALUES ('183', '42', '421200000000', '咸宁市');
INSERT INTO `position_city` VALUES ('184', '42', '421300000000', '随州市');
INSERT INTO `position_city` VALUES ('185', '42', '422800000000', '恩施土家族苗族自治州');
INSERT INTO `position_city` VALUES ('186', '42', '429000000000', '省直辖县级行政区划');
INSERT INTO `position_city` VALUES ('187', '43', '430100000000', '长沙市');
INSERT INTO `position_city` VALUES ('188', '43', '430200000000', '株洲市');
INSERT INTO `position_city` VALUES ('189', '43', '430300000000', '湘潭市');
INSERT INTO `position_city` VALUES ('190', '43', '430400000000', '衡阳市');
INSERT INTO `position_city` VALUES ('191', '43', '430500000000', '邵阳市');
INSERT INTO `position_city` VALUES ('192', '43', '430600000000', '岳阳市');
INSERT INTO `position_city` VALUES ('193', '43', '430700000000', '常德市');
INSERT INTO `position_city` VALUES ('194', '43', '430800000000', '张家界市');
INSERT INTO `position_city` VALUES ('195', '43', '430900000000', '益阳市');
INSERT INTO `position_city` VALUES ('196', '43', '431000000000', '郴州市');
INSERT INTO `position_city` VALUES ('197', '43', '431100000000', '永州市');
INSERT INTO `position_city` VALUES ('198', '43', '431200000000', '怀化市');
INSERT INTO `position_city` VALUES ('199', '43', '431300000000', '娄底市');
INSERT INTO `position_city` VALUES ('200', '43', '433100000000', '湘西土家族苗族自治州');
INSERT INTO `position_city` VALUES ('201', '44', '440100000000', '广州市');
INSERT INTO `position_city` VALUES ('202', '44', '440200000000', '韶关市');
INSERT INTO `position_city` VALUES ('203', '44', '440300000000', '深圳市');
INSERT INTO `position_city` VALUES ('204', '44', '440400000000', '珠海市');
INSERT INTO `position_city` VALUES ('205', '44', '440500000000', '汕头市');
INSERT INTO `position_city` VALUES ('206', '44', '440600000000', '佛山市');
INSERT INTO `position_city` VALUES ('207', '44', '440700000000', '江门市');
INSERT INTO `position_city` VALUES ('208', '44', '440800000000', '湛江市');
INSERT INTO `position_city` VALUES ('209', '44', '440900000000', '茂名市');
INSERT INTO `position_city` VALUES ('210', '44', '441200000000', '肇庆市');
INSERT INTO `position_city` VALUES ('211', '44', '441300000000', '惠州市');
INSERT INTO `position_city` VALUES ('212', '44', '441400000000', '梅州市');
INSERT INTO `position_city` VALUES ('213', '44', '441500000000', '汕尾市');
INSERT INTO `position_city` VALUES ('214', '44', '441600000000', '河源市');
INSERT INTO `position_city` VALUES ('215', '44', '441700000000', '阳江市');
INSERT INTO `position_city` VALUES ('216', '44', '441800000000', '清远市');
INSERT INTO `position_city` VALUES ('217', '44', '441900000000', '东莞市');
INSERT INTO `position_city` VALUES ('218', '44', '442000000000', '中山市');
INSERT INTO `position_city` VALUES ('219', '44', '445100000000', '潮州市');
INSERT INTO `position_city` VALUES ('220', '44', '445200000000', '揭阳市');
INSERT INTO `position_city` VALUES ('221', '44', '445300000000', '云浮市');
INSERT INTO `position_city` VALUES ('222', '45', '450100000000', '南宁市');
INSERT INTO `position_city` VALUES ('223', '45', '450200000000', '柳州市');
INSERT INTO `position_city` VALUES ('224', '45', '450300000000', '桂林市');
INSERT INTO `position_city` VALUES ('225', '45', '450400000000', '梧州市');
INSERT INTO `position_city` VALUES ('226', '45', '450500000000', '北海市');
INSERT INTO `position_city` VALUES ('227', '45', '450600000000', '防城港市');
INSERT INTO `position_city` VALUES ('228', '45', '450700000000', '钦州市');
INSERT INTO `position_city` VALUES ('229', '45', '450800000000', '贵港市');
INSERT INTO `position_city` VALUES ('230', '45', '450900000000', '玉林市');
INSERT INTO `position_city` VALUES ('231', '45', '451000000000', '百色市');
INSERT INTO `position_city` VALUES ('232', '45', '451100000000', '贺州市');
INSERT INTO `position_city` VALUES ('233', '45', '451200000000', '河池市');
INSERT INTO `position_city` VALUES ('234', '45', '451300000000', '来宾市');
INSERT INTO `position_city` VALUES ('235', '45', '451400000000', '崇左市');
INSERT INTO `position_city` VALUES ('236', '46', '460100000000', '海口市');
INSERT INTO `position_city` VALUES ('237', '46', '460200000000', '三亚市');
INSERT INTO `position_city` VALUES ('238', '46', '460300000000', '三沙市');
INSERT INTO `position_city` VALUES ('239', '46', '469000000000', '省直辖县级行政区划');
INSERT INTO `position_city` VALUES ('240', '50', '500100000000', '市辖区');
INSERT INTO `position_city` VALUES ('241', '50', '500200000000', '县');
INSERT INTO `position_city` VALUES ('242', '51', '510100000000', '成都市');
INSERT INTO `position_city` VALUES ('243', '51', '510300000000', '自贡市');
INSERT INTO `position_city` VALUES ('244', '51', '510400000000', '攀枝花市');
INSERT INTO `position_city` VALUES ('245', '51', '510500000000', '泸州市');
INSERT INTO `position_city` VALUES ('246', '51', '510600000000', '德阳市');
INSERT INTO `position_city` VALUES ('247', '51', '510700000000', '绵阳市');
INSERT INTO `position_city` VALUES ('248', '51', '510800000000', '广元市');
INSERT INTO `position_city` VALUES ('249', '51', '510900000000', '遂宁市');
INSERT INTO `position_city` VALUES ('250', '51', '511000000000', '内江市');
INSERT INTO `position_city` VALUES ('251', '51', '511100000000', '乐山市');
INSERT INTO `position_city` VALUES ('252', '51', '511300000000', '南充市');
INSERT INTO `position_city` VALUES ('253', '51', '511400000000', '眉山市');
INSERT INTO `position_city` VALUES ('254', '51', '511500000000', '宜宾市');
INSERT INTO `position_city` VALUES ('255', '51', '511600000000', '广安市');
INSERT INTO `position_city` VALUES ('256', '51', '511700000000', '达州市');
INSERT INTO `position_city` VALUES ('257', '51', '511800000000', '雅安市');
INSERT INTO `position_city` VALUES ('258', '51', '511900000000', '巴中市');
INSERT INTO `position_city` VALUES ('259', '51', '512000000000', '资阳市');
INSERT INTO `position_city` VALUES ('260', '51', '513200000000', '阿坝藏族羌族自治州');
INSERT INTO `position_city` VALUES ('261', '51', '513300000000', '甘孜藏族自治州');
INSERT INTO `position_city` VALUES ('262', '51', '513400000000', '凉山彝族自治州');
INSERT INTO `position_city` VALUES ('263', '52', '520100000000', '贵阳市');
INSERT INTO `position_city` VALUES ('264', '52', '520200000000', '六盘水市');
INSERT INTO `position_city` VALUES ('265', '52', '520300000000', '遵义市');
INSERT INTO `position_city` VALUES ('266', '52', '520400000000', '安顺市');
INSERT INTO `position_city` VALUES ('267', '52', '520500000000', '毕节市');
INSERT INTO `position_city` VALUES ('268', '52', '520600000000', '铜仁市');
INSERT INTO `position_city` VALUES ('269', '52', '522300000000', '黔西南布依族苗族自治州');
INSERT INTO `position_city` VALUES ('270', '52', '522600000000', '黔东南苗族侗族自治州');
INSERT INTO `position_city` VALUES ('271', '52', '522700000000', '黔南布依族苗族自治州');
INSERT INTO `position_city` VALUES ('272', '53', '530100000000', '昆明市');
INSERT INTO `position_city` VALUES ('273', '53', '530300000000', '曲靖市');
INSERT INTO `position_city` VALUES ('274', '53', '530400000000', '玉溪市');
INSERT INTO `position_city` VALUES ('275', '53', '530500000000', '保山市');
INSERT INTO `position_city` VALUES ('276', '53', '530600000000', '昭通市');
INSERT INTO `position_city` VALUES ('277', '53', '530700000000', '丽江市');
INSERT INTO `position_city` VALUES ('278', '53', '530800000000', '普洱市');
INSERT INTO `position_city` VALUES ('279', '53', '530900000000', '临沧市');
INSERT INTO `position_city` VALUES ('280', '53', '532300000000', '楚雄彝族自治州');
INSERT INTO `position_city` VALUES ('281', '53', '532500000000', '红河哈尼族彝族自治州');
INSERT INTO `position_city` VALUES ('282', '53', '532600000000', '文山壮族苗族自治州');
INSERT INTO `position_city` VALUES ('283', '53', '532800000000', '西双版纳傣族自治州');
INSERT INTO `position_city` VALUES ('284', '53', '532900000000', '大理白族自治州');
INSERT INTO `position_city` VALUES ('285', '53', '533100000000', '德宏傣族景颇族自治州');
INSERT INTO `position_city` VALUES ('286', '53', '533300000000', '怒江傈僳族自治州');
INSERT INTO `position_city` VALUES ('287', '53', '533400000000', '迪庆藏族自治州');
INSERT INTO `position_city` VALUES ('288', '54', '540100000000', '拉萨市');
INSERT INTO `position_city` VALUES ('289', '54', '540200000000', '日喀则市');
INSERT INTO `position_city` VALUES ('290', '54', '540300000000', '昌都市');
INSERT INTO `position_city` VALUES ('291', '54', '540400000000', '林芝市');
INSERT INTO `position_city` VALUES ('292', '54', '542200000000', '山南地区');
INSERT INTO `position_city` VALUES ('293', '54', '542400000000', '那曲地区');
INSERT INTO `position_city` VALUES ('294', '54', '542500000000', '阿里地区');
INSERT INTO `position_city` VALUES ('295', '61', '610100000000', '西安市');
INSERT INTO `position_city` VALUES ('296', '61', '610200000000', '铜川市');
INSERT INTO `position_city` VALUES ('297', '61', '610300000000', '宝鸡市');
INSERT INTO `position_city` VALUES ('298', '61', '610400000000', '咸阳市');
INSERT INTO `position_city` VALUES ('299', '61', '610500000000', '渭南市');
INSERT INTO `position_city` VALUES ('300', '61', '610600000000', '延安市');
INSERT INTO `position_city` VALUES ('301', '61', '610700000000', '汉中市');
INSERT INTO `position_city` VALUES ('302', '61', '610800000000', '榆林市');
INSERT INTO `position_city` VALUES ('303', '61', '610900000000', '安康市');
INSERT INTO `position_city` VALUES ('304', '61', '611000000000', '商洛市');
INSERT INTO `position_city` VALUES ('305', '62', '620100000000', '兰州市');
INSERT INTO `position_city` VALUES ('306', '62', '620200000000', '嘉峪关市');
INSERT INTO `position_city` VALUES ('307', '62', '620300000000', '金昌市');
INSERT INTO `position_city` VALUES ('308', '62', '620400000000', '白银市');
INSERT INTO `position_city` VALUES ('309', '62', '620500000000', '天水市');
INSERT INTO `position_city` VALUES ('310', '62', '620600000000', '武威市');
INSERT INTO `position_city` VALUES ('311', '62', '620700000000', '张掖市');
INSERT INTO `position_city` VALUES ('312', '62', '620800000000', '平凉市');
INSERT INTO `position_city` VALUES ('313', '62', '620900000000', '酒泉市');
INSERT INTO `position_city` VALUES ('314', '62', '621000000000', '庆阳市');
INSERT INTO `position_city` VALUES ('315', '62', '621100000000', '定西市');
INSERT INTO `position_city` VALUES ('316', '62', '621200000000', '陇南市');
INSERT INTO `position_city` VALUES ('317', '62', '622900000000', '临夏回族自治州');
INSERT INTO `position_city` VALUES ('318', '62', '623000000000', '甘南藏族自治州');
INSERT INTO `position_city` VALUES ('319', '63', '630100000000', '西宁市');
INSERT INTO `position_city` VALUES ('320', '63', '630200000000', '海东市');
INSERT INTO `position_city` VALUES ('321', '63', '632200000000', '海北藏族自治州');
INSERT INTO `position_city` VALUES ('322', '63', '632300000000', '黄南藏族自治州');
INSERT INTO `position_city` VALUES ('323', '63', '632500000000', '海南藏族自治州');
INSERT INTO `position_city` VALUES ('324', '63', '632600000000', '果洛藏族自治州');
INSERT INTO `position_city` VALUES ('325', '63', '632700000000', '玉树藏族自治州');
INSERT INTO `position_city` VALUES ('326', '63', '632800000000', '海西蒙古族藏族自治州');
INSERT INTO `position_city` VALUES ('327', '64', '640100000000', '银川市');
INSERT INTO `position_city` VALUES ('328', '64', '640200000000', '石嘴山市');
INSERT INTO `position_city` VALUES ('329', '64', '640300000000', '吴忠市');
INSERT INTO `position_city` VALUES ('330', '64', '640400000000', '固原市');
INSERT INTO `position_city` VALUES ('331', '64', '640500000000', '中卫市');
INSERT INTO `position_city` VALUES ('333', '65', '650100000000', '乌鲁木齐市');
INSERT INTO `position_city` VALUES ('334', '65', '650200000000', '克拉玛依市');
INSERT INTO `position_city` VALUES ('335', '65', '650400000000', '吐鲁番市');
INSERT INTO `position_city` VALUES ('336', '65', '652200000000', '哈密地区');
INSERT INTO `position_city` VALUES ('337', '65', '652300000000', '昌吉回族自治州');
INSERT INTO `position_city` VALUES ('338', '65', '652700000000', '博尔塔拉蒙古自治州');
INSERT INTO `position_city` VALUES ('339', '65', '652800000000', '巴音郭楞蒙古自治州');
INSERT INTO `position_city` VALUES ('340', '65', '652900000000', '阿克苏地区');
INSERT INTO `position_city` VALUES ('341', '65', '653000000000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `position_city` VALUES ('342', '65', '653100000000', '喀什地区');
INSERT INTO `position_city` VALUES ('343', '65', '653200000000', '和田地区');
INSERT INTO `position_city` VALUES ('344', '65', '654000000000', '伊犁哈萨克自治州');
INSERT INTO `position_city` VALUES ('345', '65', '654200000000', '塔城地区');
INSERT INTO `position_city` VALUES ('346', '65', '654300000000', '阿勒泰地区');
INSERT INTO `position_city` VALUES ('347', '65', '659000000000', '自治区直辖县级行政区划');

-- ----------------------------
-- Table structure for position_county
-- ----------------------------
DROP TABLE IF EXISTS `position_county`;
CREATE TABLE `position_county` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地级市主键ID',
  `city_id` bigint(20) unsigned NOT NULL COMMENT '地级市id',
  `county_id` bigint(20) unsigned NOT NULL COMMENT '县级id',
  `county_name` char(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `county_id` (`county_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3141 DEFAULT CHARSET=utf8 COMMENT='地区市数据库';

-- ----------------------------
-- Records of position_county
-- ----------------------------
INSERT INTO `position_county` VALUES ('1', '110100000000', '110101000000', '东城区');
INSERT INTO `position_county` VALUES ('2', '110100000000', '110102000000', '西城区');
INSERT INTO `position_county` VALUES ('3', '110100000000', '110105000000', '朝阳区');
INSERT INTO `position_county` VALUES ('4', '110100000000', '110106000000', '丰台区');
INSERT INTO `position_county` VALUES ('5', '110100000000', '110107000000', '石景山区');
INSERT INTO `position_county` VALUES ('6', '110100000000', '110108000000', '海淀区');
INSERT INTO `position_county` VALUES ('7', '110100000000', '110109000000', '门头沟区');
INSERT INTO `position_county` VALUES ('8', '110100000000', '110111000000', '房山区');
INSERT INTO `position_county` VALUES ('9', '110100000000', '110112000000', '通州区');
INSERT INTO `position_county` VALUES ('10', '110100000000', '110113000000', '顺义区');
INSERT INTO `position_county` VALUES ('11', '110100000000', '110114000000', '昌平区');
INSERT INTO `position_county` VALUES ('12', '110100000000', '110115000000', '大兴区');
INSERT INTO `position_county` VALUES ('13', '110100000000', '110116000000', '怀柔区');
INSERT INTO `position_county` VALUES ('14', '110100000000', '110117000000', '平谷区');
INSERT INTO `position_county` VALUES ('15', '110200000000', '110228000000', '密云县');
INSERT INTO `position_county` VALUES ('16', '110200000000', '110229000000', '延庆县');
INSERT INTO `position_county` VALUES ('17', '120100000000', '120101000000', '和平区');
INSERT INTO `position_county` VALUES ('18', '120100000000', '120102000000', '河东区');
INSERT INTO `position_county` VALUES ('19', '120100000000', '120103000000', '河西区');
INSERT INTO `position_county` VALUES ('20', '120100000000', '120104000000', '南开区');
INSERT INTO `position_county` VALUES ('21', '120100000000', '120105000000', '河北区');
INSERT INTO `position_county` VALUES ('22', '120100000000', '120106000000', '红桥区');
INSERT INTO `position_county` VALUES ('23', '120100000000', '120110000000', '东丽区');
INSERT INTO `position_county` VALUES ('24', '120100000000', '120111000000', '西青区');
INSERT INTO `position_county` VALUES ('25', '120100000000', '120112000000', '津南区');
INSERT INTO `position_county` VALUES ('26', '120100000000', '120113000000', '北辰区');
INSERT INTO `position_county` VALUES ('27', '120100000000', '120114000000', '武清区');
INSERT INTO `position_county` VALUES ('28', '120100000000', '120115000000', '宝坻区');
INSERT INTO `position_county` VALUES ('29', '120100000000', '120116000000', '滨海新区');
INSERT INTO `position_county` VALUES ('30', '120100000000', '120117000000', '宁河区');
INSERT INTO `position_county` VALUES ('31', '120100000000', '120118000000', '静海区');
INSERT INTO `position_county` VALUES ('32', '120200000000', '120225000000', '蓟县');
INSERT INTO `position_county` VALUES ('33', '130100000000', '130101000000', '市辖区');
INSERT INTO `position_county` VALUES ('34', '130100000000', '130102000000', '长安区');
INSERT INTO `position_county` VALUES ('35', '130100000000', '130104000000', '桥西区');
INSERT INTO `position_county` VALUES ('36', '130100000000', '130105000000', '新华区');
INSERT INTO `position_county` VALUES ('37', '130100000000', '130107000000', '井陉矿区');
INSERT INTO `position_county` VALUES ('38', '130100000000', '130108000000', '裕华区');
INSERT INTO `position_county` VALUES ('39', '130100000000', '130109000000', '藁城区');
INSERT INTO `position_county` VALUES ('40', '130100000000', '130110000000', '鹿泉区');
INSERT INTO `position_county` VALUES ('41', '130100000000', '130111000000', '栾城区');
INSERT INTO `position_county` VALUES ('42', '130100000000', '130121000000', '井陉县');
INSERT INTO `position_county` VALUES ('43', '130100000000', '130123000000', '正定县');
INSERT INTO `position_county` VALUES ('44', '130100000000', '130125000000', '行唐县');
INSERT INTO `position_county` VALUES ('45', '130100000000', '130126000000', '灵寿县');
INSERT INTO `position_county` VALUES ('46', '130100000000', '130127000000', '高邑县');
INSERT INTO `position_county` VALUES ('47', '130100000000', '130128000000', '深泽县');
INSERT INTO `position_county` VALUES ('48', '130100000000', '130129000000', '赞皇县');
INSERT INTO `position_county` VALUES ('49', '130100000000', '130130000000', '无极县');
INSERT INTO `position_county` VALUES ('50', '130100000000', '130131000000', '平山县');
INSERT INTO `position_county` VALUES ('51', '130100000000', '130132000000', '元氏县');
INSERT INTO `position_county` VALUES ('52', '130100000000', '130133000000', '赵县');
INSERT INTO `position_county` VALUES ('53', '130100000000', '130183000000', '晋州市');
INSERT INTO `position_county` VALUES ('54', '130100000000', '130184000000', '新乐市');
INSERT INTO `position_county` VALUES ('55', '130200000000', '130201000000', '市辖区');
INSERT INTO `position_county` VALUES ('56', '130200000000', '130202000000', '路南区');
INSERT INTO `position_county` VALUES ('57', '130200000000', '130203000000', '路北区');
INSERT INTO `position_county` VALUES ('58', '130200000000', '130204000000', '古冶区');
INSERT INTO `position_county` VALUES ('59', '130200000000', '130205000000', '开平区');
INSERT INTO `position_county` VALUES ('60', '130200000000', '130207000000', '丰南区');
INSERT INTO `position_county` VALUES ('61', '130200000000', '130208000000', '丰润区');
INSERT INTO `position_county` VALUES ('62', '130200000000', '130209000000', '曹妃甸区');
INSERT INTO `position_county` VALUES ('63', '130200000000', '130223000000', '滦县');
INSERT INTO `position_county` VALUES ('64', '130200000000', '130224000000', '滦南县');
INSERT INTO `position_county` VALUES ('65', '130200000000', '130225000000', '乐亭县');
INSERT INTO `position_county` VALUES ('66', '130200000000', '130227000000', '迁西县');
INSERT INTO `position_county` VALUES ('67', '130200000000', '130229000000', '玉田县');
INSERT INTO `position_county` VALUES ('68', '130200000000', '130281000000', '遵化市');
INSERT INTO `position_county` VALUES ('69', '130200000000', '130283000000', '迁安市');
INSERT INTO `position_county` VALUES ('70', '130300000000', '130301000000', '市辖区');
INSERT INTO `position_county` VALUES ('71', '130300000000', '130302000000', '海港区');
INSERT INTO `position_county` VALUES ('72', '130300000000', '130303000000', '山海关区');
INSERT INTO `position_county` VALUES ('73', '130300000000', '130304000000', '北戴河区');
INSERT INTO `position_county` VALUES ('74', '130300000000', '130306000000', '抚宁区');
INSERT INTO `position_county` VALUES ('75', '130300000000', '130321000000', '青龙满族自治县');
INSERT INTO `position_county` VALUES ('76', '130300000000', '130322000000', '昌黎县');
INSERT INTO `position_county` VALUES ('77', '130300000000', '130324000000', '卢龙县');
INSERT INTO `position_county` VALUES ('78', '130400000000', '130401000000', '市辖区');
INSERT INTO `position_county` VALUES ('79', '130400000000', '130402000000', '邯山区');
INSERT INTO `position_county` VALUES ('80', '130400000000', '130403000000', '丛台区');
INSERT INTO `position_county` VALUES ('81', '130400000000', '130404000000', '复兴区');
INSERT INTO `position_county` VALUES ('82', '130400000000', '130406000000', '峰峰矿区');
INSERT INTO `position_county` VALUES ('83', '130400000000', '130421000000', '邯郸县');
INSERT INTO `position_county` VALUES ('84', '130400000000', '130423000000', '临漳县');
INSERT INTO `position_county` VALUES ('85', '130400000000', '130424000000', '成安县');
INSERT INTO `position_county` VALUES ('86', '130400000000', '130425000000', '大名县');
INSERT INTO `position_county` VALUES ('87', '130400000000', '130426000000', '涉县');
INSERT INTO `position_county` VALUES ('88', '130400000000', '130427000000', '磁县');
INSERT INTO `position_county` VALUES ('89', '130400000000', '130428000000', '肥乡县');
INSERT INTO `position_county` VALUES ('90', '130400000000', '130429000000', '永年县');
INSERT INTO `position_county` VALUES ('91', '130400000000', '130430000000', '邱县');
INSERT INTO `position_county` VALUES ('92', '130400000000', '130431000000', '鸡泽县');
INSERT INTO `position_county` VALUES ('93', '130400000000', '130432000000', '广平县');
INSERT INTO `position_county` VALUES ('94', '130400000000', '130433000000', '馆陶县');
INSERT INTO `position_county` VALUES ('95', '130400000000', '130434000000', '魏县');
INSERT INTO `position_county` VALUES ('96', '130400000000', '130435000000', '曲周县');
INSERT INTO `position_county` VALUES ('97', '130400000000', '130481000000', '武安市');
INSERT INTO `position_county` VALUES ('98', '130500000000', '130501000000', '市辖区');
INSERT INTO `position_county` VALUES ('99', '130500000000', '130502000000', '桥东区');
INSERT INTO `position_county` VALUES ('100', '130500000000', '130503000000', '桥西区');
INSERT INTO `position_county` VALUES ('101', '130500000000', '130521000000', '邢台县');
INSERT INTO `position_county` VALUES ('102', '130500000000', '130522000000', '临城县');
INSERT INTO `position_county` VALUES ('103', '130500000000', '130523000000', '内丘县');
INSERT INTO `position_county` VALUES ('104', '130500000000', '130524000000', '柏乡县');
INSERT INTO `position_county` VALUES ('105', '130500000000', '130525000000', '隆尧县');
INSERT INTO `position_county` VALUES ('106', '130500000000', '130526000000', '任县');
INSERT INTO `position_county` VALUES ('107', '130500000000', '130527000000', '南和县');
INSERT INTO `position_county` VALUES ('108', '130500000000', '130528000000', '宁晋县');
INSERT INTO `position_county` VALUES ('109', '130500000000', '130529000000', '巨鹿县');
INSERT INTO `position_county` VALUES ('110', '130500000000', '130530000000', '新河县');
INSERT INTO `position_county` VALUES ('111', '130500000000', '130531000000', '广宗县');
INSERT INTO `position_county` VALUES ('112', '130500000000', '130532000000', '平乡县');
INSERT INTO `position_county` VALUES ('113', '130500000000', '130533000000', '威县');
INSERT INTO `position_county` VALUES ('114', '130500000000', '130534000000', '清河县');
INSERT INTO `position_county` VALUES ('115', '130500000000', '130535000000', '临西县');
INSERT INTO `position_county` VALUES ('116', '130500000000', '130581000000', '南宫市');
INSERT INTO `position_county` VALUES ('117', '130500000000', '130582000000', '沙河市');
INSERT INTO `position_county` VALUES ('118', '130600000000', '130601000000', '市辖区');
INSERT INTO `position_county` VALUES ('119', '130600000000', '130602000000', '竞秀区');
INSERT INTO `position_county` VALUES ('120', '130600000000', '130606000000', '莲池区');
INSERT INTO `position_county` VALUES ('121', '130600000000', '130607000000', '满城区');
INSERT INTO `position_county` VALUES ('122', '130600000000', '130608000000', '清苑区');
INSERT INTO `position_county` VALUES ('123', '130600000000', '130609000000', '徐水区');
INSERT INTO `position_county` VALUES ('124', '130600000000', '130623000000', '涞水县');
INSERT INTO `position_county` VALUES ('125', '130600000000', '130624000000', '阜平县');
INSERT INTO `position_county` VALUES ('126', '130600000000', '130626000000', '定兴县');
INSERT INTO `position_county` VALUES ('127', '130600000000', '130627000000', '唐县');
INSERT INTO `position_county` VALUES ('128', '130600000000', '130628000000', '高阳县');
INSERT INTO `position_county` VALUES ('129', '130600000000', '130629000000', '容城县');
INSERT INTO `position_county` VALUES ('130', '130600000000', '130630000000', '涞源县');
INSERT INTO `position_county` VALUES ('131', '130600000000', '130631000000', '望都县');
INSERT INTO `position_county` VALUES ('132', '130600000000', '130632000000', '安新县');
INSERT INTO `position_county` VALUES ('133', '130600000000', '130633000000', '易县');
INSERT INTO `position_county` VALUES ('134', '130600000000', '130634000000', '曲阳县');
INSERT INTO `position_county` VALUES ('135', '130600000000', '130635000000', '蠡县');
INSERT INTO `position_county` VALUES ('136', '130600000000', '130636000000', '顺平县');
INSERT INTO `position_county` VALUES ('137', '130600000000', '130637000000', '博野县');
INSERT INTO `position_county` VALUES ('138', '130600000000', '130638000000', '雄县');
INSERT INTO `position_county` VALUES ('139', '130600000000', '130681000000', '涿州市');
INSERT INTO `position_county` VALUES ('140', '130600000000', '130683000000', '安国市');
INSERT INTO `position_county` VALUES ('141', '130600000000', '130684000000', '高碑店市');
INSERT INTO `position_county` VALUES ('142', '130700000000', '130701000000', '市辖区');
INSERT INTO `position_county` VALUES ('143', '130700000000', '130702000000', '桥东区');
INSERT INTO `position_county` VALUES ('144', '130700000000', '130703000000', '桥西区');
INSERT INTO `position_county` VALUES ('145', '130700000000', '130705000000', '宣化区');
INSERT INTO `position_county` VALUES ('146', '130700000000', '130706000000', '下花园区');
INSERT INTO `position_county` VALUES ('147', '130700000000', '130721000000', '宣化县');
INSERT INTO `position_county` VALUES ('148', '130700000000', '130722000000', '张北县');
INSERT INTO `position_county` VALUES ('149', '130700000000', '130723000000', '康保县');
INSERT INTO `position_county` VALUES ('150', '130700000000', '130724000000', '沽源县');
INSERT INTO `position_county` VALUES ('151', '130700000000', '130725000000', '尚义县');
INSERT INTO `position_county` VALUES ('152', '130700000000', '130726000000', '蔚县');
INSERT INTO `position_county` VALUES ('153', '130700000000', '130727000000', '阳原县');
INSERT INTO `position_county` VALUES ('154', '130700000000', '130728000000', '怀安县');
INSERT INTO `position_county` VALUES ('155', '130700000000', '130729000000', '万全县');
INSERT INTO `position_county` VALUES ('156', '130700000000', '130730000000', '怀来县');
INSERT INTO `position_county` VALUES ('157', '130700000000', '130731000000', '涿鹿县');
INSERT INTO `position_county` VALUES ('158', '130700000000', '130732000000', '赤城县');
INSERT INTO `position_county` VALUES ('159', '130700000000', '130733000000', '崇礼县');
INSERT INTO `position_county` VALUES ('160', '130800000000', '130801000000', '市辖区');
INSERT INTO `position_county` VALUES ('161', '130800000000', '130802000000', '双桥区');
INSERT INTO `position_county` VALUES ('162', '130800000000', '130803000000', '双滦区');
INSERT INTO `position_county` VALUES ('163', '130800000000', '130804000000', '鹰手营子矿区');
INSERT INTO `position_county` VALUES ('164', '130800000000', '130821000000', '承德县');
INSERT INTO `position_county` VALUES ('165', '130800000000', '130822000000', '兴隆县');
INSERT INTO `position_county` VALUES ('166', '130800000000', '130823000000', '平泉县');
INSERT INTO `position_county` VALUES ('167', '130800000000', '130824000000', '滦平县');
INSERT INTO `position_county` VALUES ('168', '130800000000', '130825000000', '隆化县');
INSERT INTO `position_county` VALUES ('169', '130800000000', '130826000000', '丰宁满族自治县');
INSERT INTO `position_county` VALUES ('170', '130800000000', '130827000000', '宽城满族自治县');
INSERT INTO `position_county` VALUES ('171', '130800000000', '130828000000', '围场满族蒙古族自治县');
INSERT INTO `position_county` VALUES ('172', '130900000000', '130901000000', '市辖区');
INSERT INTO `position_county` VALUES ('173', '130900000000', '130902000000', '新华区');
INSERT INTO `position_county` VALUES ('174', '130900000000', '130903000000', '运河区');
INSERT INTO `position_county` VALUES ('175', '130900000000', '130921000000', '沧县');
INSERT INTO `position_county` VALUES ('176', '130900000000', '130922000000', '青县');
INSERT INTO `position_county` VALUES ('177', '130900000000', '130923000000', '东光县');
INSERT INTO `position_county` VALUES ('178', '130900000000', '130924000000', '海兴县');
INSERT INTO `position_county` VALUES ('179', '130900000000', '130925000000', '盐山县');
INSERT INTO `position_county` VALUES ('180', '130900000000', '130926000000', '肃宁县');
INSERT INTO `position_county` VALUES ('181', '130900000000', '130927000000', '南皮县');
INSERT INTO `position_county` VALUES ('182', '130900000000', '130928000000', '吴桥县');
INSERT INTO `position_county` VALUES ('183', '130900000000', '130929000000', '献县');
INSERT INTO `position_county` VALUES ('184', '130900000000', '130930000000', '孟村回族自治县');
INSERT INTO `position_county` VALUES ('185', '130900000000', '130981000000', '泊头市');
INSERT INTO `position_county` VALUES ('186', '130900000000', '130982000000', '任丘市');
INSERT INTO `position_county` VALUES ('187', '130900000000', '130983000000', '黄骅市');
INSERT INTO `position_county` VALUES ('188', '130900000000', '130984000000', '河间市');
INSERT INTO `position_county` VALUES ('189', '131000000000', '131001000000', '市辖区');
INSERT INTO `position_county` VALUES ('190', '131000000000', '131002000000', '安次区');
INSERT INTO `position_county` VALUES ('191', '131000000000', '131003000000', '广阳区');
INSERT INTO `position_county` VALUES ('192', '131000000000', '131022000000', '固安县');
INSERT INTO `position_county` VALUES ('193', '131000000000', '131023000000', '永清县');
INSERT INTO `position_county` VALUES ('194', '131000000000', '131024000000', '香河县');
INSERT INTO `position_county` VALUES ('195', '131000000000', '131025000000', '大城县');
INSERT INTO `position_county` VALUES ('196', '131000000000', '131026000000', '文安县');
INSERT INTO `position_county` VALUES ('197', '131000000000', '131028000000', '大厂回族自治县');
INSERT INTO `position_county` VALUES ('198', '131000000000', '131081000000', '霸州市');
INSERT INTO `position_county` VALUES ('199', '131000000000', '131082000000', '三河市');
INSERT INTO `position_county` VALUES ('200', '131100000000', '131101000000', '市辖区');
INSERT INTO `position_county` VALUES ('201', '131100000000', '131102000000', '桃城区');
INSERT INTO `position_county` VALUES ('202', '131100000000', '131121000000', '枣强县');
INSERT INTO `position_county` VALUES ('203', '131100000000', '131122000000', '武邑县');
INSERT INTO `position_county` VALUES ('204', '131100000000', '131123000000', '武强县');
INSERT INTO `position_county` VALUES ('205', '131100000000', '131124000000', '饶阳县');
INSERT INTO `position_county` VALUES ('206', '131100000000', '131125000000', '安平县');
INSERT INTO `position_county` VALUES ('207', '131100000000', '131126000000', '故城县');
INSERT INTO `position_county` VALUES ('208', '131100000000', '131127000000', '景县');
INSERT INTO `position_county` VALUES ('209', '131100000000', '131128000000', '阜城县');
INSERT INTO `position_county` VALUES ('210', '131100000000', '131181000000', '冀州市');
INSERT INTO `position_county` VALUES ('211', '131100000000', '131182000000', '深州市');
INSERT INTO `position_county` VALUES ('212', '139000000000', '139001000000', '定州市');
INSERT INTO `position_county` VALUES ('213', '139000000000', '139002000000', '辛集市');
INSERT INTO `position_county` VALUES ('214', '140100000000', '140101000000', '市辖区');
INSERT INTO `position_county` VALUES ('215', '140100000000', '140105000000', '小店区');
INSERT INTO `position_county` VALUES ('216', '140100000000', '140106000000', '迎泽区');
INSERT INTO `position_county` VALUES ('217', '140100000000', '140107000000', '杏花岭区');
INSERT INTO `position_county` VALUES ('218', '140100000000', '140108000000', '尖草坪区');
INSERT INTO `position_county` VALUES ('219', '140100000000', '140109000000', '万柏林区');
INSERT INTO `position_county` VALUES ('220', '140100000000', '140110000000', '晋源区');
INSERT INTO `position_county` VALUES ('221', '140100000000', '140121000000', '清徐县');
INSERT INTO `position_county` VALUES ('222', '140100000000', '140122000000', '阳曲县');
INSERT INTO `position_county` VALUES ('223', '140100000000', '140123000000', '娄烦县');
INSERT INTO `position_county` VALUES ('224', '140100000000', '140181000000', '古交市');
INSERT INTO `position_county` VALUES ('225', '140200000000', '140201000000', '市辖区');
INSERT INTO `position_county` VALUES ('226', '140200000000', '140202000000', '城区');
INSERT INTO `position_county` VALUES ('227', '140200000000', '140203000000', '矿区');
INSERT INTO `position_county` VALUES ('228', '140200000000', '140211000000', '南郊区');
INSERT INTO `position_county` VALUES ('229', '140200000000', '140212000000', '新荣区');
INSERT INTO `position_county` VALUES ('230', '140200000000', '140221000000', '阳高县');
INSERT INTO `position_county` VALUES ('231', '140200000000', '140222000000', '天镇县');
INSERT INTO `position_county` VALUES ('232', '140200000000', '140223000000', '广灵县');
INSERT INTO `position_county` VALUES ('233', '140200000000', '140224000000', '灵丘县');
INSERT INTO `position_county` VALUES ('234', '140200000000', '140225000000', '浑源县');
INSERT INTO `position_county` VALUES ('235', '140200000000', '140226000000', '左云县');
INSERT INTO `position_county` VALUES ('236', '140200000000', '140227000000', '大同县');
INSERT INTO `position_county` VALUES ('237', '140300000000', '140301000000', '市辖区');
INSERT INTO `position_county` VALUES ('238', '140300000000', '140302000000', '城区');
INSERT INTO `position_county` VALUES ('239', '140300000000', '140303000000', '矿区');
INSERT INTO `position_county` VALUES ('240', '140300000000', '140311000000', '郊区');
INSERT INTO `position_county` VALUES ('241', '140300000000', '140321000000', '平定县');
INSERT INTO `position_county` VALUES ('242', '140300000000', '140322000000', '盂县');
INSERT INTO `position_county` VALUES ('243', '140400000000', '140401000000', '市辖区');
INSERT INTO `position_county` VALUES ('244', '140400000000', '140402000000', '城区');
INSERT INTO `position_county` VALUES ('245', '140400000000', '140411000000', '郊区');
INSERT INTO `position_county` VALUES ('246', '140400000000', '140421000000', '长治县');
INSERT INTO `position_county` VALUES ('247', '140400000000', '140423000000', '襄垣县');
INSERT INTO `position_county` VALUES ('248', '140400000000', '140424000000', '屯留县');
INSERT INTO `position_county` VALUES ('249', '140400000000', '140425000000', '平顺县');
INSERT INTO `position_county` VALUES ('250', '140400000000', '140426000000', '黎城县');
INSERT INTO `position_county` VALUES ('251', '140400000000', '140427000000', '壶关县');
INSERT INTO `position_county` VALUES ('252', '140400000000', '140428000000', '长子县');
INSERT INTO `position_county` VALUES ('253', '140400000000', '140429000000', '武乡县');
INSERT INTO `position_county` VALUES ('254', '140400000000', '140430000000', '沁县');
INSERT INTO `position_county` VALUES ('255', '140400000000', '140431000000', '沁源县');
INSERT INTO `position_county` VALUES ('256', '140400000000', '140481000000', '潞城市');
INSERT INTO `position_county` VALUES ('257', '140500000000', '140501000000', '市辖区');
INSERT INTO `position_county` VALUES ('258', '140500000000', '140502000000', '城区');
INSERT INTO `position_county` VALUES ('259', '140500000000', '140521000000', '沁水县');
INSERT INTO `position_county` VALUES ('260', '140500000000', '140522000000', '阳城县');
INSERT INTO `position_county` VALUES ('261', '140500000000', '140524000000', '陵川县');
INSERT INTO `position_county` VALUES ('262', '140500000000', '140525000000', '泽州县');
INSERT INTO `position_county` VALUES ('263', '140500000000', '140581000000', '高平市');
INSERT INTO `position_county` VALUES ('264', '140600000000', '140601000000', '市辖区');
INSERT INTO `position_county` VALUES ('265', '140600000000', '140602000000', '朔城区');
INSERT INTO `position_county` VALUES ('266', '140600000000', '140603000000', '平鲁区');
INSERT INTO `position_county` VALUES ('267', '140600000000', '140621000000', '山阴县');
INSERT INTO `position_county` VALUES ('268', '140600000000', '140622000000', '应县');
INSERT INTO `position_county` VALUES ('269', '140600000000', '140623000000', '右玉县');
INSERT INTO `position_county` VALUES ('270', '140600000000', '140624000000', '怀仁县');
INSERT INTO `position_county` VALUES ('271', '140700000000', '140701000000', '市辖区');
INSERT INTO `position_county` VALUES ('272', '140700000000', '140702000000', '榆次区');
INSERT INTO `position_county` VALUES ('273', '140700000000', '140721000000', '榆社县');
INSERT INTO `position_county` VALUES ('274', '140700000000', '140722000000', '左权县');
INSERT INTO `position_county` VALUES ('275', '140700000000', '140723000000', '和顺县');
INSERT INTO `position_county` VALUES ('276', '140700000000', '140724000000', '昔阳县');
INSERT INTO `position_county` VALUES ('277', '140700000000', '140725000000', '寿阳县');
INSERT INTO `position_county` VALUES ('278', '140700000000', '140726000000', '太谷县');
INSERT INTO `position_county` VALUES ('279', '140700000000', '140727000000', '祁县');
INSERT INTO `position_county` VALUES ('280', '140700000000', '140728000000', '平遥县');
INSERT INTO `position_county` VALUES ('281', '140700000000', '140729000000', '灵石县');
INSERT INTO `position_county` VALUES ('282', '140700000000', '140781000000', '介休市');
INSERT INTO `position_county` VALUES ('283', '140800000000', '140801000000', '市辖区');
INSERT INTO `position_county` VALUES ('284', '140800000000', '140802000000', '盐湖区');
INSERT INTO `position_county` VALUES ('285', '140800000000', '140821000000', '临猗县');
INSERT INTO `position_county` VALUES ('286', '140800000000', '140822000000', '万荣县');
INSERT INTO `position_county` VALUES ('287', '140800000000', '140823000000', '闻喜县');
INSERT INTO `position_county` VALUES ('288', '140800000000', '140824000000', '稷山县');
INSERT INTO `position_county` VALUES ('289', '140800000000', '140825000000', '新绛县');
INSERT INTO `position_county` VALUES ('290', '140800000000', '140826000000', '绛县');
INSERT INTO `position_county` VALUES ('291', '140800000000', '140827000000', '垣曲县');
INSERT INTO `position_county` VALUES ('292', '140800000000', '140828000000', '夏县');
INSERT INTO `position_county` VALUES ('293', '140800000000', '140829000000', '平陆县');
INSERT INTO `position_county` VALUES ('294', '140800000000', '140830000000', '芮城县');
INSERT INTO `position_county` VALUES ('295', '140800000000', '140881000000', '永济市');
INSERT INTO `position_county` VALUES ('296', '140800000000', '140882000000', '河津市');
INSERT INTO `position_county` VALUES ('297', '140900000000', '140901000000', '市辖区');
INSERT INTO `position_county` VALUES ('298', '140900000000', '140902000000', '忻府区');
INSERT INTO `position_county` VALUES ('299', '140900000000', '140921000000', '定襄县');
INSERT INTO `position_county` VALUES ('300', '140900000000', '140922000000', '五台县');
INSERT INTO `position_county` VALUES ('301', '140900000000', '140923000000', '代县');
INSERT INTO `position_county` VALUES ('302', '140900000000', '140924000000', '繁峙县');
INSERT INTO `position_county` VALUES ('303', '140900000000', '140925000000', '宁武县');
INSERT INTO `position_county` VALUES ('304', '140900000000', '140926000000', '静乐县');
INSERT INTO `position_county` VALUES ('305', '140900000000', '140927000000', '神池县');
INSERT INTO `position_county` VALUES ('306', '140900000000', '140928000000', '五寨县');
INSERT INTO `position_county` VALUES ('307', '140900000000', '140929000000', '岢岚县');
INSERT INTO `position_county` VALUES ('308', '140900000000', '140930000000', '河曲县');
INSERT INTO `position_county` VALUES ('309', '140900000000', '140931000000', '保德县');
INSERT INTO `position_county` VALUES ('310', '140900000000', '140932000000', '偏关县');
INSERT INTO `position_county` VALUES ('311', '140900000000', '140981000000', '原平市');
INSERT INTO `position_county` VALUES ('312', '141000000000', '141001000000', '市辖区');
INSERT INTO `position_county` VALUES ('313', '141000000000', '141002000000', '尧都区');
INSERT INTO `position_county` VALUES ('314', '141000000000', '141021000000', '曲沃县');
INSERT INTO `position_county` VALUES ('315', '141000000000', '141022000000', '翼城县');
INSERT INTO `position_county` VALUES ('316', '141000000000', '141023000000', '襄汾县');
INSERT INTO `position_county` VALUES ('317', '141000000000', '141024000000', '洪洞县');
INSERT INTO `position_county` VALUES ('318', '141000000000', '141025000000', '古县');
INSERT INTO `position_county` VALUES ('319', '141000000000', '141026000000', '安泽县');
INSERT INTO `position_county` VALUES ('320', '141000000000', '141027000000', '浮山县');
INSERT INTO `position_county` VALUES ('321', '141000000000', '141028000000', '吉县');
INSERT INTO `position_county` VALUES ('322', '141000000000', '141029000000', '乡宁县');
INSERT INTO `position_county` VALUES ('323', '141000000000', '141030000000', '大宁县');
INSERT INTO `position_county` VALUES ('324', '141000000000', '141031000000', '隰县');
INSERT INTO `position_county` VALUES ('325', '141000000000', '141032000000', '永和县');
INSERT INTO `position_county` VALUES ('326', '141000000000', '141033000000', '蒲县');
INSERT INTO `position_county` VALUES ('327', '141000000000', '141034000000', '汾西县');
INSERT INTO `position_county` VALUES ('328', '141000000000', '141081000000', '侯马市');
INSERT INTO `position_county` VALUES ('329', '141000000000', '141082000000', '霍州市');
INSERT INTO `position_county` VALUES ('330', '141100000000', '141101000000', '市辖区');
INSERT INTO `position_county` VALUES ('331', '141100000000', '141102000000', '离石区');
INSERT INTO `position_county` VALUES ('332', '141100000000', '141121000000', '文水县');
INSERT INTO `position_county` VALUES ('333', '141100000000', '141122000000', '交城县');
INSERT INTO `position_county` VALUES ('334', '141100000000', '141123000000', '兴县');
INSERT INTO `position_county` VALUES ('335', '141100000000', '141124000000', '临县');
INSERT INTO `position_county` VALUES ('336', '141100000000', '141125000000', '柳林县');
INSERT INTO `position_county` VALUES ('337', '141100000000', '141126000000', '石楼县');
INSERT INTO `position_county` VALUES ('338', '141100000000', '141127000000', '岚县');
INSERT INTO `position_county` VALUES ('339', '141100000000', '141128000000', '方山县');
INSERT INTO `position_county` VALUES ('340', '141100000000', '141129000000', '中阳县');
INSERT INTO `position_county` VALUES ('341', '141100000000', '141130000000', '交口县');
INSERT INTO `position_county` VALUES ('342', '141100000000', '141181000000', '孝义市');
INSERT INTO `position_county` VALUES ('343', '141100000000', '141182000000', '汾阳市');
INSERT INTO `position_county` VALUES ('344', '150100000000', '150101000000', '市辖区');
INSERT INTO `position_county` VALUES ('345', '150100000000', '150102000000', '新城区');
INSERT INTO `position_county` VALUES ('346', '150100000000', '150103000000', '回民区');
INSERT INTO `position_county` VALUES ('347', '150100000000', '150104000000', '玉泉区');
INSERT INTO `position_county` VALUES ('348', '150100000000', '150105000000', '赛罕区');
INSERT INTO `position_county` VALUES ('349', '150100000000', '150121000000', '土默特左旗');
INSERT INTO `position_county` VALUES ('350', '150100000000', '150122000000', '托克托县');
INSERT INTO `position_county` VALUES ('351', '150100000000', '150123000000', '和林格尔县');
INSERT INTO `position_county` VALUES ('352', '150100000000', '150124000000', '清水河县');
INSERT INTO `position_county` VALUES ('353', '150100000000', '150125000000', '武川县');
INSERT INTO `position_county` VALUES ('354', '150200000000', '150201000000', '市辖区');
INSERT INTO `position_county` VALUES ('355', '150200000000', '150202000000', '东河区');
INSERT INTO `position_county` VALUES ('356', '150200000000', '150203000000', '昆都仑区');
INSERT INTO `position_county` VALUES ('357', '150200000000', '150204000000', '青山区');
INSERT INTO `position_county` VALUES ('358', '150200000000', '150205000000', '石拐区');
INSERT INTO `position_county` VALUES ('359', '150200000000', '150206000000', '白云鄂博矿区');
INSERT INTO `position_county` VALUES ('360', '150200000000', '150207000000', '九原区');
INSERT INTO `position_county` VALUES ('361', '150200000000', '150221000000', '土默特右旗');
INSERT INTO `position_county` VALUES ('362', '150200000000', '150222000000', '固阳县');
INSERT INTO `position_county` VALUES ('363', '150200000000', '150223000000', '达尔罕茂明安联合旗');
INSERT INTO `position_county` VALUES ('364', '150300000000', '150301000000', '市辖区');
INSERT INTO `position_county` VALUES ('365', '150300000000', '150302000000', '海勃湾区');
INSERT INTO `position_county` VALUES ('366', '150300000000', '150303000000', '海南区');
INSERT INTO `position_county` VALUES ('367', '150300000000', '150304000000', '乌达区');
INSERT INTO `position_county` VALUES ('368', '150400000000', '150401000000', '市辖区');
INSERT INTO `position_county` VALUES ('369', '150400000000', '150402000000', '红山区');
INSERT INTO `position_county` VALUES ('370', '150400000000', '150403000000', '元宝山区');
INSERT INTO `position_county` VALUES ('371', '150400000000', '150404000000', '松山区');
INSERT INTO `position_county` VALUES ('372', '150400000000', '150421000000', '阿鲁科尔沁旗');
INSERT INTO `position_county` VALUES ('373', '150400000000', '150422000000', '巴林左旗');
INSERT INTO `position_county` VALUES ('374', '150400000000', '150423000000', '巴林右旗');
INSERT INTO `position_county` VALUES ('375', '150400000000', '150424000000', '林西县');
INSERT INTO `position_county` VALUES ('376', '150400000000', '150425000000', '克什克腾旗');
INSERT INTO `position_county` VALUES ('377', '150400000000', '150426000000', '翁牛特旗');
INSERT INTO `position_county` VALUES ('378', '150400000000', '150428000000', '喀喇沁旗');
INSERT INTO `position_county` VALUES ('379', '150400000000', '150429000000', '宁城县');
INSERT INTO `position_county` VALUES ('380', '150400000000', '150430000000', '敖汉旗');
INSERT INTO `position_county` VALUES ('381', '150500000000', '150501000000', '市辖区');
INSERT INTO `position_county` VALUES ('382', '150500000000', '150502000000', '科尔沁区');
INSERT INTO `position_county` VALUES ('383', '150500000000', '150521000000', '科尔沁左翼中旗');
INSERT INTO `position_county` VALUES ('384', '150500000000', '150522000000', '科尔沁左翼后旗');
INSERT INTO `position_county` VALUES ('385', '150500000000', '150523000000', '开鲁县');
INSERT INTO `position_county` VALUES ('386', '150500000000', '150524000000', '库伦旗');
INSERT INTO `position_county` VALUES ('387', '150500000000', '150525000000', '奈曼旗');
INSERT INTO `position_county` VALUES ('388', '150500000000', '150526000000', '扎鲁特旗');
INSERT INTO `position_county` VALUES ('389', '150500000000', '150581000000', '霍林郭勒市');
INSERT INTO `position_county` VALUES ('390', '150600000000', '150601000000', '市辖区');
INSERT INTO `position_county` VALUES ('391', '150600000000', '150602000000', '东胜区');
INSERT INTO `position_county` VALUES ('392', '150600000000', '150621000000', '达拉特旗');
INSERT INTO `position_county` VALUES ('393', '150600000000', '150622000000', '准格尔旗');
INSERT INTO `position_county` VALUES ('394', '150600000000', '150623000000', '鄂托克前旗');
INSERT INTO `position_county` VALUES ('395', '150600000000', '150624000000', '鄂托克旗');
INSERT INTO `position_county` VALUES ('396', '150600000000', '150625000000', '杭锦旗');
INSERT INTO `position_county` VALUES ('397', '150600000000', '150626000000', '乌审旗');
INSERT INTO `position_county` VALUES ('398', '150600000000', '150627000000', '伊金霍洛旗');
INSERT INTO `position_county` VALUES ('399', '150700000000', '150701000000', '市辖区');
INSERT INTO `position_county` VALUES ('400', '150700000000', '150702000000', '海拉尔区');
INSERT INTO `position_county` VALUES ('401', '150700000000', '150703000000', '扎赉诺尔区');
INSERT INTO `position_county` VALUES ('402', '150700000000', '150721000000', '阿荣旗');
INSERT INTO `position_county` VALUES ('403', '150700000000', '150722000000', '莫力达瓦达斡尔族自治旗');
INSERT INTO `position_county` VALUES ('404', '150700000000', '150723000000', '鄂伦春自治旗');
INSERT INTO `position_county` VALUES ('405', '150700000000', '150724000000', '鄂温克族自治旗');
INSERT INTO `position_county` VALUES ('406', '150700000000', '150725000000', '陈巴尔虎旗');
INSERT INTO `position_county` VALUES ('407', '150700000000', '150726000000', '新巴尔虎左旗');
INSERT INTO `position_county` VALUES ('408', '150700000000', '150727000000', '新巴尔虎右旗');
INSERT INTO `position_county` VALUES ('409', '150700000000', '150781000000', '满洲里市');
INSERT INTO `position_county` VALUES ('410', '150700000000', '150782000000', '牙克石市');
INSERT INTO `position_county` VALUES ('411', '150700000000', '150783000000', '扎兰屯市');
INSERT INTO `position_county` VALUES ('412', '150700000000', '150784000000', '额尔古纳市');
INSERT INTO `position_county` VALUES ('413', '150700000000', '150785000000', '根河市');
INSERT INTO `position_county` VALUES ('414', '150800000000', '150801000000', '市辖区');
INSERT INTO `position_county` VALUES ('415', '150800000000', '150802000000', '临河区');
INSERT INTO `position_county` VALUES ('416', '150800000000', '150821000000', '五原县');
INSERT INTO `position_county` VALUES ('417', '150800000000', '150822000000', '磴口县');
INSERT INTO `position_county` VALUES ('418', '150800000000', '150823000000', '乌拉特前旗');
INSERT INTO `position_county` VALUES ('419', '150800000000', '150824000000', '乌拉特中旗');
INSERT INTO `position_county` VALUES ('420', '150800000000', '150825000000', '乌拉特后旗');
INSERT INTO `position_county` VALUES ('421', '150800000000', '150826000000', '杭锦后旗');
INSERT INTO `position_county` VALUES ('422', '150900000000', '150901000000', '市辖区');
INSERT INTO `position_county` VALUES ('423', '150900000000', '150902000000', '集宁区');
INSERT INTO `position_county` VALUES ('424', '150900000000', '150921000000', '卓资县');
INSERT INTO `position_county` VALUES ('425', '150900000000', '150922000000', '化德县');
INSERT INTO `position_county` VALUES ('426', '150900000000', '150923000000', '商都县');
INSERT INTO `position_county` VALUES ('427', '150900000000', '150924000000', '兴和县');
INSERT INTO `position_county` VALUES ('428', '150900000000', '150925000000', '凉城县');
INSERT INTO `position_county` VALUES ('429', '150900000000', '150926000000', '察哈尔右翼前旗');
INSERT INTO `position_county` VALUES ('430', '150900000000', '150927000000', '察哈尔右翼中旗');
INSERT INTO `position_county` VALUES ('431', '150900000000', '150928000000', '察哈尔右翼后旗');
INSERT INTO `position_county` VALUES ('432', '150900000000', '150929000000', '四子王旗');
INSERT INTO `position_county` VALUES ('433', '150900000000', '150981000000', '丰镇市');
INSERT INTO `position_county` VALUES ('434', '152200000000', '152201000000', '乌兰浩特市');
INSERT INTO `position_county` VALUES ('435', '152200000000', '152202000000', '阿尔山市');
INSERT INTO `position_county` VALUES ('436', '152200000000', '152221000000', '科尔沁右翼前旗');
INSERT INTO `position_county` VALUES ('437', '152200000000', '152222000000', '科尔沁右翼中旗');
INSERT INTO `position_county` VALUES ('438', '152200000000', '152223000000', '扎赉特旗');
INSERT INTO `position_county` VALUES ('439', '152200000000', '152224000000', '突泉县');
INSERT INTO `position_county` VALUES ('440', '152500000000', '152501000000', '二连浩特市');
INSERT INTO `position_county` VALUES ('441', '152500000000', '152502000000', '锡林浩特市');
INSERT INTO `position_county` VALUES ('442', '152500000000', '152522000000', '阿巴嘎旗');
INSERT INTO `position_county` VALUES ('443', '152500000000', '152523000000', '苏尼特左旗');
INSERT INTO `position_county` VALUES ('444', '152500000000', '152524000000', '苏尼特右旗');
INSERT INTO `position_county` VALUES ('445', '152500000000', '152525000000', '东乌珠穆沁旗');
INSERT INTO `position_county` VALUES ('446', '152500000000', '152526000000', '西乌珠穆沁旗');
INSERT INTO `position_county` VALUES ('447', '152500000000', '152527000000', '太仆寺旗');
INSERT INTO `position_county` VALUES ('448', '152500000000', '152528000000', '镶黄旗');
INSERT INTO `position_county` VALUES ('449', '152500000000', '152529000000', '正镶白旗');
INSERT INTO `position_county` VALUES ('450', '152500000000', '152530000000', '正蓝旗');
INSERT INTO `position_county` VALUES ('451', '152500000000', '152531000000', '多伦县');
INSERT INTO `position_county` VALUES ('452', '152900000000', '152921000000', '阿拉善左旗');
INSERT INTO `position_county` VALUES ('453', '152900000000', '152922000000', '阿拉善右旗');
INSERT INTO `position_county` VALUES ('454', '152900000000', '152923000000', '额济纳旗');
INSERT INTO `position_county` VALUES ('455', '210100000000', '210101000000', '市辖区');
INSERT INTO `position_county` VALUES ('456', '210100000000', '210102000000', '和平区');
INSERT INTO `position_county` VALUES ('457', '210100000000', '210103000000', '沈河区');
INSERT INTO `position_county` VALUES ('458', '210100000000', '210104000000', '大东区');
INSERT INTO `position_county` VALUES ('459', '210100000000', '210105000000', '皇姑区');
INSERT INTO `position_county` VALUES ('460', '210100000000', '210106000000', '铁西区');
INSERT INTO `position_county` VALUES ('461', '210100000000', '210111000000', '苏家屯区');
INSERT INTO `position_county` VALUES ('462', '210100000000', '210112000000', '浑南区');
INSERT INTO `position_county` VALUES ('463', '210100000000', '210113000000', '沈北新区');
INSERT INTO `position_county` VALUES ('464', '210100000000', '210114000000', '于洪区');
INSERT INTO `position_county` VALUES ('465', '210100000000', '210122000000', '辽中县');
INSERT INTO `position_county` VALUES ('466', '210100000000', '210123000000', '康平县');
INSERT INTO `position_county` VALUES ('467', '210100000000', '210124000000', '法库县');
INSERT INTO `position_county` VALUES ('468', '210100000000', '210181000000', '新民市');
INSERT INTO `position_county` VALUES ('469', '210200000000', '210201000000', '市辖区');
INSERT INTO `position_county` VALUES ('470', '210200000000', '210202000000', '中山区');
INSERT INTO `position_county` VALUES ('471', '210200000000', '210203000000', '西岗区');
INSERT INTO `position_county` VALUES ('472', '210200000000', '210204000000', '沙河口区');
INSERT INTO `position_county` VALUES ('473', '210200000000', '210211000000', '甘井子区');
INSERT INTO `position_county` VALUES ('474', '210200000000', '210212000000', '旅顺口区');
INSERT INTO `position_county` VALUES ('475', '210200000000', '210213000000', '金州区');
INSERT INTO `position_county` VALUES ('476', '210200000000', '210224000000', '长海县');
INSERT INTO `position_county` VALUES ('477', '210200000000', '210281000000', '瓦房店市');
INSERT INTO `position_county` VALUES ('478', '210200000000', '210282000000', '普兰店市');
INSERT INTO `position_county` VALUES ('479', '210200000000', '210283000000', '庄河市');
INSERT INTO `position_county` VALUES ('480', '210300000000', '210301000000', '市辖区');
INSERT INTO `position_county` VALUES ('481', '210300000000', '210302000000', '铁东区');
INSERT INTO `position_county` VALUES ('482', '210300000000', '210303000000', '铁西区');
INSERT INTO `position_county` VALUES ('483', '210300000000', '210304000000', '立山区');
INSERT INTO `position_county` VALUES ('484', '210300000000', '210311000000', '千山区');
INSERT INTO `position_county` VALUES ('485', '210300000000', '210321000000', '台安县');
INSERT INTO `position_county` VALUES ('486', '210300000000', '210323000000', '岫岩满族自治县');
INSERT INTO `position_county` VALUES ('487', '210300000000', '210381000000', '海城市');
INSERT INTO `position_county` VALUES ('488', '210400000000', '210401000000', '市辖区');
INSERT INTO `position_county` VALUES ('489', '210400000000', '210402000000', '新抚区');
INSERT INTO `position_county` VALUES ('490', '210400000000', '210403000000', '东洲区');
INSERT INTO `position_county` VALUES ('491', '210400000000', '210404000000', '望花区');
INSERT INTO `position_county` VALUES ('492', '210400000000', '210411000000', '顺城区');
INSERT INTO `position_county` VALUES ('493', '210400000000', '210421000000', '抚顺县');
INSERT INTO `position_county` VALUES ('494', '210400000000', '210422000000', '新宾满族自治县');
INSERT INTO `position_county` VALUES ('495', '210400000000', '210423000000', '清原满族自治县');
INSERT INTO `position_county` VALUES ('496', '210500000000', '210501000000', '市辖区');
INSERT INTO `position_county` VALUES ('497', '210500000000', '210502000000', '平山区');
INSERT INTO `position_county` VALUES ('498', '210500000000', '210503000000', '溪湖区');
INSERT INTO `position_county` VALUES ('499', '210500000000', '210504000000', '明山区');
INSERT INTO `position_county` VALUES ('500', '210500000000', '210505000000', '南芬区');
INSERT INTO `position_county` VALUES ('501', '210500000000', '210521000000', '本溪满族自治县');
INSERT INTO `position_county` VALUES ('502', '210500000000', '210522000000', '桓仁满族自治县');
INSERT INTO `position_county` VALUES ('503', '210600000000', '210601000000', '市辖区');
INSERT INTO `position_county` VALUES ('504', '210600000000', '210602000000', '元宝区');
INSERT INTO `position_county` VALUES ('505', '210600000000', '210603000000', '振兴区');
INSERT INTO `position_county` VALUES ('506', '210600000000', '210604000000', '振安区');
INSERT INTO `position_county` VALUES ('507', '210600000000', '210624000000', '宽甸满族自治县');
INSERT INTO `position_county` VALUES ('508', '210600000000', '210681000000', '东港市');
INSERT INTO `position_county` VALUES ('509', '210600000000', '210682000000', '凤城市');
INSERT INTO `position_county` VALUES ('510', '210700000000', '210701000000', '市辖区');
INSERT INTO `position_county` VALUES ('511', '210700000000', '210702000000', '古塔区');
INSERT INTO `position_county` VALUES ('512', '210700000000', '210703000000', '凌河区');
INSERT INTO `position_county` VALUES ('513', '210700000000', '210711000000', '太和区');
INSERT INTO `position_county` VALUES ('514', '210700000000', '210726000000', '黑山县');
INSERT INTO `position_county` VALUES ('515', '210700000000', '210727000000', '义县');
INSERT INTO `position_county` VALUES ('516', '210700000000', '210781000000', '凌海市');
INSERT INTO `position_county` VALUES ('517', '210700000000', '210782000000', '北镇市');
INSERT INTO `position_county` VALUES ('518', '210800000000', '210801000000', '市辖区');
INSERT INTO `position_county` VALUES ('519', '210800000000', '210802000000', '站前区');
INSERT INTO `position_county` VALUES ('520', '210800000000', '210803000000', '西市区');
INSERT INTO `position_county` VALUES ('521', '210800000000', '210804000000', '鲅鱼圈区');
INSERT INTO `position_county` VALUES ('522', '210800000000', '210811000000', '老边区');
INSERT INTO `position_county` VALUES ('523', '210800000000', '210881000000', '盖州市');
INSERT INTO `position_county` VALUES ('524', '210800000000', '210882000000', '大石桥市');
INSERT INTO `position_county` VALUES ('525', '210900000000', '210901000000', '市辖区');
INSERT INTO `position_county` VALUES ('526', '210900000000', '210902000000', '海州区');
INSERT INTO `position_county` VALUES ('527', '210900000000', '210903000000', '新邱区');
INSERT INTO `position_county` VALUES ('528', '210900000000', '210904000000', '太平区');
INSERT INTO `position_county` VALUES ('529', '210900000000', '210905000000', '清河门区');
INSERT INTO `position_county` VALUES ('530', '210900000000', '210911000000', '细河区');
INSERT INTO `position_county` VALUES ('531', '210900000000', '210921000000', '阜新蒙古族自治县');
INSERT INTO `position_county` VALUES ('532', '210900000000', '210922000000', '彰武县');
INSERT INTO `position_county` VALUES ('533', '211000000000', '211001000000', '市辖区');
INSERT INTO `position_county` VALUES ('534', '211000000000', '211002000000', '白塔区');
INSERT INTO `position_county` VALUES ('535', '211000000000', '211003000000', '文圣区');
INSERT INTO `position_county` VALUES ('536', '211000000000', '211004000000', '宏伟区');
INSERT INTO `position_county` VALUES ('537', '211000000000', '211005000000', '弓长岭区');
INSERT INTO `position_county` VALUES ('538', '211000000000', '211011000000', '太子河区');
INSERT INTO `position_county` VALUES ('539', '211000000000', '211021000000', '辽阳县');
INSERT INTO `position_county` VALUES ('540', '211000000000', '211081000000', '灯塔市');
INSERT INTO `position_county` VALUES ('541', '211100000000', '211101000000', '市辖区');
INSERT INTO `position_county` VALUES ('542', '211100000000', '211102000000', '双台子区');
INSERT INTO `position_county` VALUES ('543', '211100000000', '211103000000', '兴隆台区');
INSERT INTO `position_county` VALUES ('544', '211100000000', '211121000000', '大洼县');
INSERT INTO `position_county` VALUES ('545', '211100000000', '211122000000', '盘山县');
INSERT INTO `position_county` VALUES ('546', '211200000000', '211201000000', '市辖区');
INSERT INTO `position_county` VALUES ('547', '211200000000', '211202000000', '银州区');
INSERT INTO `position_county` VALUES ('548', '211200000000', '211204000000', '清河区');
INSERT INTO `position_county` VALUES ('549', '211200000000', '211221000000', '铁岭县');
INSERT INTO `position_county` VALUES ('550', '211200000000', '211223000000', '西丰县');
INSERT INTO `position_county` VALUES ('551', '211200000000', '211224000000', '昌图县');
INSERT INTO `position_county` VALUES ('552', '211200000000', '211281000000', '调兵山市');
INSERT INTO `position_county` VALUES ('553', '211200000000', '211282000000', '开原市');
INSERT INTO `position_county` VALUES ('554', '211300000000', '211301000000', '市辖区');
INSERT INTO `position_county` VALUES ('555', '211300000000', '211302000000', '双塔区');
INSERT INTO `position_county` VALUES ('556', '211300000000', '211303000000', '龙城区');
INSERT INTO `position_county` VALUES ('557', '211300000000', '211321000000', '朝阳县');
INSERT INTO `position_county` VALUES ('558', '211300000000', '211322000000', '建平县');
INSERT INTO `position_county` VALUES ('559', '211300000000', '211324000000', '喀喇沁左翼蒙古族自治县');
INSERT INTO `position_county` VALUES ('560', '211300000000', '211381000000', '北票市');
INSERT INTO `position_county` VALUES ('561', '211300000000', '211382000000', '凌源市');
INSERT INTO `position_county` VALUES ('562', '211400000000', '211401000000', '市辖区');
INSERT INTO `position_county` VALUES ('563', '211400000000', '211402000000', '连山区');
INSERT INTO `position_county` VALUES ('564', '211400000000', '211403000000', '龙港区');
INSERT INTO `position_county` VALUES ('565', '211400000000', '211404000000', '南票区');
INSERT INTO `position_county` VALUES ('566', '211400000000', '211421000000', '绥中县');
INSERT INTO `position_county` VALUES ('567', '211400000000', '211422000000', '建昌县');
INSERT INTO `position_county` VALUES ('568', '211400000000', '211481000000', '兴城市');
INSERT INTO `position_county` VALUES ('569', '220100000000', '220101000000', '市辖区');
INSERT INTO `position_county` VALUES ('570', '220100000000', '220102000000', '南关区');
INSERT INTO `position_county` VALUES ('571', '220100000000', '220103000000', '宽城区');
INSERT INTO `position_county` VALUES ('572', '220100000000', '220104000000', '朝阳区');
INSERT INTO `position_county` VALUES ('573', '220100000000', '220105000000', '二道区');
INSERT INTO `position_county` VALUES ('574', '220100000000', '220106000000', '绿园区');
INSERT INTO `position_county` VALUES ('575', '220100000000', '220112000000', '双阳区');
INSERT INTO `position_county` VALUES ('576', '220100000000', '220113000000', '九台区');
INSERT INTO `position_county` VALUES ('577', '220100000000', '220122000000', '农安县');
INSERT INTO `position_county` VALUES ('578', '220100000000', '220182000000', '榆树市');
INSERT INTO `position_county` VALUES ('579', '220100000000', '220183000000', '德惠市');
INSERT INTO `position_county` VALUES ('580', '220200000000', '220201000000', '市辖区');
INSERT INTO `position_county` VALUES ('581', '220200000000', '220202000000', '昌邑区');
INSERT INTO `position_county` VALUES ('582', '220200000000', '220203000000', '龙潭区');
INSERT INTO `position_county` VALUES ('583', '220200000000', '220204000000', '船营区');
INSERT INTO `position_county` VALUES ('584', '220200000000', '220211000000', '丰满区');
INSERT INTO `position_county` VALUES ('585', '220200000000', '220221000000', '永吉县');
INSERT INTO `position_county` VALUES ('586', '220200000000', '220281000000', '蛟河市');
INSERT INTO `position_county` VALUES ('587', '220200000000', '220282000000', '桦甸市');
INSERT INTO `position_county` VALUES ('588', '220200000000', '220283000000', '舒兰市');
INSERT INTO `position_county` VALUES ('589', '220200000000', '220284000000', '磐石市');
INSERT INTO `position_county` VALUES ('590', '220300000000', '220301000000', '市辖区');
INSERT INTO `position_county` VALUES ('591', '220300000000', '220302000000', '铁西区');
INSERT INTO `position_county` VALUES ('592', '220300000000', '220303000000', '铁东区');
INSERT INTO `position_county` VALUES ('593', '220300000000', '220322000000', '梨树县');
INSERT INTO `position_county` VALUES ('594', '220300000000', '220323000000', '伊通满族自治县');
INSERT INTO `position_county` VALUES ('595', '220300000000', '220381000000', '公主岭市');
INSERT INTO `position_county` VALUES ('596', '220300000000', '220382000000', '双辽市');
INSERT INTO `position_county` VALUES ('597', '220400000000', '220401000000', '市辖区');
INSERT INTO `position_county` VALUES ('598', '220400000000', '220402000000', '龙山区');
INSERT INTO `position_county` VALUES ('599', '220400000000', '220403000000', '西安区');
INSERT INTO `position_county` VALUES ('600', '220400000000', '220421000000', '东丰县');
INSERT INTO `position_county` VALUES ('601', '220400000000', '220422000000', '东辽县');
INSERT INTO `position_county` VALUES ('602', '220500000000', '220501000000', '市辖区');
INSERT INTO `position_county` VALUES ('603', '220500000000', '220502000000', '东昌区');
INSERT INTO `position_county` VALUES ('604', '220500000000', '220503000000', '二道江区');
INSERT INTO `position_county` VALUES ('605', '220500000000', '220521000000', '通化县');
INSERT INTO `position_county` VALUES ('606', '220500000000', '220523000000', '辉南县');
INSERT INTO `position_county` VALUES ('607', '220500000000', '220524000000', '柳河县');
INSERT INTO `position_county` VALUES ('608', '220500000000', '220581000000', '梅河口市');
INSERT INTO `position_county` VALUES ('609', '220500000000', '220582000000', '集安市');
INSERT INTO `position_county` VALUES ('610', '220600000000', '220601000000', '市辖区');
INSERT INTO `position_county` VALUES ('611', '220600000000', '220602000000', '浑江区');
INSERT INTO `position_county` VALUES ('612', '220600000000', '220605000000', '江源区');
INSERT INTO `position_county` VALUES ('613', '220600000000', '220621000000', '抚松县');
INSERT INTO `position_county` VALUES ('614', '220600000000', '220622000000', '靖宇县');
INSERT INTO `position_county` VALUES ('615', '220600000000', '220623000000', '长白朝鲜族自治县');
INSERT INTO `position_county` VALUES ('616', '220600000000', '220681000000', '临江市');
INSERT INTO `position_county` VALUES ('617', '220700000000', '220701000000', '市辖区');
INSERT INTO `position_county` VALUES ('618', '220700000000', '220702000000', '宁江区');
INSERT INTO `position_county` VALUES ('619', '220700000000', '220721000000', '前郭尔罗斯蒙古族自治县');
INSERT INTO `position_county` VALUES ('620', '220700000000', '220722000000', '长岭县');
INSERT INTO `position_county` VALUES ('621', '220700000000', '220723000000', '乾安县');
INSERT INTO `position_county` VALUES ('622', '220700000000', '220781000000', '扶余市');
INSERT INTO `position_county` VALUES ('623', '220800000000', '220801000000', '市辖区');
INSERT INTO `position_county` VALUES ('624', '220800000000', '220802000000', '洮北区');
INSERT INTO `position_county` VALUES ('625', '220800000000', '220821000000', '镇赉县');
INSERT INTO `position_county` VALUES ('626', '220800000000', '220822000000', '通榆县');
INSERT INTO `position_county` VALUES ('627', '220800000000', '220881000000', '洮南市');
INSERT INTO `position_county` VALUES ('628', '220800000000', '220882000000', '大安市');
INSERT INTO `position_county` VALUES ('629', '222400000000', '222401000000', '延吉市');
INSERT INTO `position_county` VALUES ('630', '222400000000', '222402000000', '图们市');
INSERT INTO `position_county` VALUES ('631', '222400000000', '222403000000', '敦化市');
INSERT INTO `position_county` VALUES ('632', '222400000000', '222404000000', '珲春市');
INSERT INTO `position_county` VALUES ('633', '222400000000', '222405000000', '龙井市');
INSERT INTO `position_county` VALUES ('634', '222400000000', '222406000000', '和龙市');
INSERT INTO `position_county` VALUES ('635', '222400000000', '222424000000', '汪清县');
INSERT INTO `position_county` VALUES ('636', '222400000000', '222426000000', '安图县');
INSERT INTO `position_county` VALUES ('637', '230100000000', '230101000000', '市辖区');
INSERT INTO `position_county` VALUES ('638', '230100000000', '230102000000', '道里区');
INSERT INTO `position_county` VALUES ('639', '230100000000', '230103000000', '南岗区');
INSERT INTO `position_county` VALUES ('640', '230100000000', '230104000000', '道外区');
INSERT INTO `position_county` VALUES ('641', '230100000000', '230108000000', '平房区');
INSERT INTO `position_county` VALUES ('642', '230100000000', '230109000000', '松北区');
INSERT INTO `position_county` VALUES ('643', '230100000000', '230110000000', '香坊区');
INSERT INTO `position_county` VALUES ('644', '230100000000', '230111000000', '呼兰区');
INSERT INTO `position_county` VALUES ('645', '230100000000', '230112000000', '阿城区');
INSERT INTO `position_county` VALUES ('646', '230100000000', '230113000000', '双城区');
INSERT INTO `position_county` VALUES ('647', '230100000000', '230123000000', '依兰县');
INSERT INTO `position_county` VALUES ('648', '230100000000', '230124000000', '方正县');
INSERT INTO `position_county` VALUES ('649', '230100000000', '230125000000', '宾县');
INSERT INTO `position_county` VALUES ('650', '230100000000', '230126000000', '巴彦县');
INSERT INTO `position_county` VALUES ('651', '230100000000', '230127000000', '木兰县');
INSERT INTO `position_county` VALUES ('652', '230100000000', '230128000000', '通河县');
INSERT INTO `position_county` VALUES ('653', '230100000000', '230129000000', '延寿县');
INSERT INTO `position_county` VALUES ('654', '230100000000', '230183000000', '尚志市');
INSERT INTO `position_county` VALUES ('655', '230100000000', '230184000000', '五常市');
INSERT INTO `position_county` VALUES ('656', '230200000000', '230201000000', '市辖区');
INSERT INTO `position_county` VALUES ('657', '230200000000', '230202000000', '龙沙区');
INSERT INTO `position_county` VALUES ('658', '230200000000', '230203000000', '建华区');
INSERT INTO `position_county` VALUES ('659', '230200000000', '230204000000', '铁锋区');
INSERT INTO `position_county` VALUES ('660', '230200000000', '230205000000', '昂昂溪区');
INSERT INTO `position_county` VALUES ('661', '230200000000', '230206000000', '富拉尔基区');
INSERT INTO `position_county` VALUES ('662', '230200000000', '230207000000', '碾子山区');
INSERT INTO `position_county` VALUES ('663', '230200000000', '230208000000', '梅里斯达斡尔族区');
INSERT INTO `position_county` VALUES ('664', '230200000000', '230221000000', '龙江县');
INSERT INTO `position_county` VALUES ('665', '230200000000', '230223000000', '依安县');
INSERT INTO `position_county` VALUES ('666', '230200000000', '230224000000', '泰来县');
INSERT INTO `position_county` VALUES ('667', '230200000000', '230225000000', '甘南县');
INSERT INTO `position_county` VALUES ('668', '230200000000', '230227000000', '富裕县');
INSERT INTO `position_county` VALUES ('669', '230200000000', '230229000000', '克山县');
INSERT INTO `position_county` VALUES ('670', '230200000000', '230230000000', '克东县');
INSERT INTO `position_county` VALUES ('671', '230200000000', '230231000000', '拜泉县');
INSERT INTO `position_county` VALUES ('672', '230200000000', '230281000000', '讷河市');
INSERT INTO `position_county` VALUES ('673', '230300000000', '230301000000', '市辖区');
INSERT INTO `position_county` VALUES ('674', '230300000000', '230302000000', '鸡冠区');
INSERT INTO `position_county` VALUES ('675', '230300000000', '230303000000', '恒山区');
INSERT INTO `position_county` VALUES ('676', '230300000000', '230304000000', '滴道区');
INSERT INTO `position_county` VALUES ('677', '230300000000', '230305000000', '梨树区');
INSERT INTO `position_county` VALUES ('678', '230300000000', '230306000000', '城子河区');
INSERT INTO `position_county` VALUES ('679', '230300000000', '230307000000', '麻山区');
INSERT INTO `position_county` VALUES ('680', '230300000000', '230321000000', '鸡东县');
INSERT INTO `position_county` VALUES ('681', '230300000000', '230381000000', '虎林市');
INSERT INTO `position_county` VALUES ('682', '230300000000', '230382000000', '密山市');
INSERT INTO `position_county` VALUES ('683', '230400000000', '230401000000', '市辖区');
INSERT INTO `position_county` VALUES ('684', '230400000000', '230402000000', '向阳区');
INSERT INTO `position_county` VALUES ('685', '230400000000', '230403000000', '工农区');
INSERT INTO `position_county` VALUES ('686', '230400000000', '230404000000', '南山区');
INSERT INTO `position_county` VALUES ('687', '230400000000', '230405000000', '兴安区');
INSERT INTO `position_county` VALUES ('688', '230400000000', '230406000000', '东山区');
INSERT INTO `position_county` VALUES ('689', '230400000000', '230407000000', '兴山区');
INSERT INTO `position_county` VALUES ('690', '230400000000', '230421000000', '萝北县');
INSERT INTO `position_county` VALUES ('691', '230400000000', '230422000000', '绥滨县');
INSERT INTO `position_county` VALUES ('692', '230500000000', '230501000000', '市辖区');
INSERT INTO `position_county` VALUES ('693', '230500000000', '230502000000', '尖山区');
INSERT INTO `position_county` VALUES ('694', '230500000000', '230503000000', '岭东区');
INSERT INTO `position_county` VALUES ('695', '230500000000', '230505000000', '四方台区');
INSERT INTO `position_county` VALUES ('696', '230500000000', '230506000000', '宝山区');
INSERT INTO `position_county` VALUES ('697', '230500000000', '230521000000', '集贤县');
INSERT INTO `position_county` VALUES ('698', '230500000000', '230522000000', '友谊县');
INSERT INTO `position_county` VALUES ('699', '230500000000', '230523000000', '宝清县');
INSERT INTO `position_county` VALUES ('700', '230500000000', '230524000000', '饶河县');
INSERT INTO `position_county` VALUES ('701', '230600000000', '230601000000', '市辖区');
INSERT INTO `position_county` VALUES ('702', '230600000000', '230602000000', '萨尔图区');
INSERT INTO `position_county` VALUES ('703', '230600000000', '230603000000', '龙凤区');
INSERT INTO `position_county` VALUES ('704', '230600000000', '230604000000', '让胡路区');
INSERT INTO `position_county` VALUES ('705', '230600000000', '230605000000', '红岗区');
INSERT INTO `position_county` VALUES ('706', '230600000000', '230606000000', '大同区');
INSERT INTO `position_county` VALUES ('707', '230600000000', '230621000000', '肇州县');
INSERT INTO `position_county` VALUES ('708', '230600000000', '230622000000', '肇源县');
INSERT INTO `position_county` VALUES ('709', '230600000000', '230623000000', '林甸县');
INSERT INTO `position_county` VALUES ('710', '230600000000', '230624000000', '杜尔伯特蒙古族自治县');
INSERT INTO `position_county` VALUES ('711', '230700000000', '230701000000', '市辖区');
INSERT INTO `position_county` VALUES ('712', '230700000000', '230702000000', '伊春区');
INSERT INTO `position_county` VALUES ('713', '230700000000', '230703000000', '南岔区');
INSERT INTO `position_county` VALUES ('714', '230700000000', '230704000000', '友好区');
INSERT INTO `position_county` VALUES ('715', '230700000000', '230705000000', '西林区');
INSERT INTO `position_county` VALUES ('716', '230700000000', '230706000000', '翠峦区');
INSERT INTO `position_county` VALUES ('717', '230700000000', '230707000000', '新青区');
INSERT INTO `position_county` VALUES ('718', '230700000000', '230708000000', '美溪区');
INSERT INTO `position_county` VALUES ('719', '230700000000', '230709000000', '金山屯区');
INSERT INTO `position_county` VALUES ('720', '230700000000', '230710000000', '五营区');
INSERT INTO `position_county` VALUES ('721', '230700000000', '230711000000', '乌马河区');
INSERT INTO `position_county` VALUES ('722', '230700000000', '230712000000', '汤旺河区');
INSERT INTO `position_county` VALUES ('723', '230700000000', '230713000000', '带岭区');
INSERT INTO `position_county` VALUES ('724', '230700000000', '230714000000', '乌伊岭区');
INSERT INTO `position_county` VALUES ('725', '230700000000', '230715000000', '红星区');
INSERT INTO `position_county` VALUES ('726', '230700000000', '230716000000', '上甘岭区');
INSERT INTO `position_county` VALUES ('727', '230700000000', '230722000000', '嘉荫县');
INSERT INTO `position_county` VALUES ('728', '230700000000', '230781000000', '铁力市');
INSERT INTO `position_county` VALUES ('729', '230800000000', '230801000000', '市辖区');
INSERT INTO `position_county` VALUES ('730', '230800000000', '230803000000', '向阳区');
INSERT INTO `position_county` VALUES ('731', '230800000000', '230804000000', '前进区');
INSERT INTO `position_county` VALUES ('732', '230800000000', '230805000000', '东风区');
INSERT INTO `position_county` VALUES ('733', '230800000000', '230811000000', '郊区');
INSERT INTO `position_county` VALUES ('734', '230800000000', '230822000000', '桦南县');
INSERT INTO `position_county` VALUES ('735', '230800000000', '230826000000', '桦川县');
INSERT INTO `position_county` VALUES ('736', '230800000000', '230828000000', '汤原县');
INSERT INTO `position_county` VALUES ('737', '230800000000', '230833000000', '抚远县');
INSERT INTO `position_county` VALUES ('738', '230800000000', '230881000000', '同江市');
INSERT INTO `position_county` VALUES ('739', '230800000000', '230882000000', '富锦市');
INSERT INTO `position_county` VALUES ('740', '230900000000', '230901000000', '市辖区');
INSERT INTO `position_county` VALUES ('741', '230900000000', '230902000000', '新兴区');
INSERT INTO `position_county` VALUES ('742', '230900000000', '230903000000', '桃山区');
INSERT INTO `position_county` VALUES ('743', '230900000000', '230904000000', '茄子河区');
INSERT INTO `position_county` VALUES ('744', '230900000000', '230921000000', '勃利县');
INSERT INTO `position_county` VALUES ('745', '231000000000', '231001000000', '市辖区');
INSERT INTO `position_county` VALUES ('746', '231000000000', '231002000000', '东安区');
INSERT INTO `position_county` VALUES ('747', '231000000000', '231003000000', '阳明区');
INSERT INTO `position_county` VALUES ('748', '231000000000', '231004000000', '爱民区');
INSERT INTO `position_county` VALUES ('749', '231000000000', '231005000000', '西安区');
INSERT INTO `position_county` VALUES ('750', '231000000000', '231024000000', '东宁县');
INSERT INTO `position_county` VALUES ('751', '231000000000', '231025000000', '林口县');
INSERT INTO `position_county` VALUES ('752', '231000000000', '231081000000', '绥芬河市');
INSERT INTO `position_county` VALUES ('753', '231000000000', '231083000000', '海林市');
INSERT INTO `position_county` VALUES ('754', '231000000000', '231084000000', '宁安市');
INSERT INTO `position_county` VALUES ('755', '231000000000', '231085000000', '穆棱市');
INSERT INTO `position_county` VALUES ('756', '231100000000', '231101000000', '市辖区');
INSERT INTO `position_county` VALUES ('757', '231100000000', '231102000000', '爱辉区');
INSERT INTO `position_county` VALUES ('758', '231100000000', '231121000000', '嫩江县');
INSERT INTO `position_county` VALUES ('759', '231100000000', '231123000000', '逊克县');
INSERT INTO `position_county` VALUES ('760', '231100000000', '231124000000', '孙吴县');
INSERT INTO `position_county` VALUES ('761', '231100000000', '231181000000', '北安市');
INSERT INTO `position_county` VALUES ('762', '231100000000', '231182000000', '五大连池市');
INSERT INTO `position_county` VALUES ('763', '231200000000', '231201000000', '市辖区');
INSERT INTO `position_county` VALUES ('764', '231200000000', '231202000000', '北林区');
INSERT INTO `position_county` VALUES ('765', '231200000000', '231221000000', '望奎县');
INSERT INTO `position_county` VALUES ('766', '231200000000', '231222000000', '兰西县');
INSERT INTO `position_county` VALUES ('767', '231200000000', '231223000000', '青冈县');
INSERT INTO `position_county` VALUES ('768', '231200000000', '231224000000', '庆安县');
INSERT INTO `position_county` VALUES ('769', '231200000000', '231225000000', '明水县');
INSERT INTO `position_county` VALUES ('770', '231200000000', '231226000000', '绥棱县');
INSERT INTO `position_county` VALUES ('771', '231200000000', '231281000000', '安达市');
INSERT INTO `position_county` VALUES ('772', '231200000000', '231282000000', '肇东市');
INSERT INTO `position_county` VALUES ('773', '231200000000', '231283000000', '海伦市');
INSERT INTO `position_county` VALUES ('774', '232700000000', '232721000000', '呼玛县');
INSERT INTO `position_county` VALUES ('775', '232700000000', '232722000000', '塔河县');
INSERT INTO `position_county` VALUES ('776', '232700000000', '232723000000', '漠河县');
INSERT INTO `position_county` VALUES ('777', '310100000000', '310101000000', '黄浦区');
INSERT INTO `position_county` VALUES ('778', '310100000000', '310104000000', '徐汇区');
INSERT INTO `position_county` VALUES ('779', '310100000000', '310105000000', '长宁区');
INSERT INTO `position_county` VALUES ('780', '310100000000', '310106000000', '静安区');
INSERT INTO `position_county` VALUES ('781', '310100000000', '310107000000', '普陀区');
INSERT INTO `position_county` VALUES ('782', '310100000000', '310108000000', '闸北区');
INSERT INTO `position_county` VALUES ('783', '310100000000', '310109000000', '虹口区');
INSERT INTO `position_county` VALUES ('784', '310100000000', '310110000000', '杨浦区');
INSERT INTO `position_county` VALUES ('785', '310100000000', '310112000000', '闵行区');
INSERT INTO `position_county` VALUES ('786', '310100000000', '310113000000', '宝山区');
INSERT INTO `position_county` VALUES ('787', '310100000000', '310114000000', '嘉定区');
INSERT INTO `position_county` VALUES ('788', '310100000000', '310115000000', '浦东新区');
INSERT INTO `position_county` VALUES ('789', '310100000000', '310116000000', '金山区');
INSERT INTO `position_county` VALUES ('790', '310100000000', '310117000000', '松江区');
INSERT INTO `position_county` VALUES ('791', '310100000000', '310118000000', '青浦区');
INSERT INTO `position_county` VALUES ('792', '310100000000', '310120000000', '奉贤区');
INSERT INTO `position_county` VALUES ('793', '310200000000', '310230000000', '崇明县');
INSERT INTO `position_county` VALUES ('794', '320100000000', '320101000000', '市辖区');
INSERT INTO `position_county` VALUES ('795', '320100000000', '320102000000', '玄武区');
INSERT INTO `position_county` VALUES ('796', '320100000000', '320104000000', '秦淮区');
INSERT INTO `position_county` VALUES ('797', '320100000000', '320105000000', '建邺区');
INSERT INTO `position_county` VALUES ('798', '320100000000', '320106000000', '鼓楼区');
INSERT INTO `position_county` VALUES ('799', '320100000000', '320111000000', '浦口区');
INSERT INTO `position_county` VALUES ('800', '320100000000', '320113000000', '栖霞区');
INSERT INTO `position_county` VALUES ('801', '320100000000', '320114000000', '雨花台区');
INSERT INTO `position_county` VALUES ('802', '320100000000', '320115000000', '江宁区');
INSERT INTO `position_county` VALUES ('803', '320100000000', '320116000000', '六合区');
INSERT INTO `position_county` VALUES ('804', '320100000000', '320117000000', '溧水区');
INSERT INTO `position_county` VALUES ('805', '320100000000', '320118000000', '高淳区');
INSERT INTO `position_county` VALUES ('806', '320200000000', '320201000000', '市辖区');
INSERT INTO `position_county` VALUES ('807', '320200000000', '320202000000', '崇安区');
INSERT INTO `position_county` VALUES ('808', '320200000000', '320203000000', '南长区');
INSERT INTO `position_county` VALUES ('809', '320200000000', '320204000000', '北塘区');
INSERT INTO `position_county` VALUES ('810', '320200000000', '320205000000', '锡山区');
INSERT INTO `position_county` VALUES ('811', '320200000000', '320206000000', '惠山区');
INSERT INTO `position_county` VALUES ('812', '320200000000', '320211000000', '滨湖区');
INSERT INTO `position_county` VALUES ('813', '320200000000', '320281000000', '江阴市');
INSERT INTO `position_county` VALUES ('814', '320200000000', '320282000000', '宜兴市');
INSERT INTO `position_county` VALUES ('815', '320300000000', '320301000000', '市辖区');
INSERT INTO `position_county` VALUES ('816', '320300000000', '320302000000', '鼓楼区');
INSERT INTO `position_county` VALUES ('817', '320300000000', '320303000000', '云龙区');
INSERT INTO `position_county` VALUES ('818', '320300000000', '320305000000', '贾汪区');
INSERT INTO `position_county` VALUES ('819', '320300000000', '320311000000', '泉山区');
INSERT INTO `position_county` VALUES ('820', '320300000000', '320312000000', '铜山区');
INSERT INTO `position_county` VALUES ('821', '320300000000', '320321000000', '丰县');
INSERT INTO `position_county` VALUES ('822', '320300000000', '320322000000', '沛县');
INSERT INTO `position_county` VALUES ('823', '320300000000', '320324000000', '睢宁县');
INSERT INTO `position_county` VALUES ('824', '320300000000', '320381000000', '新沂市');
INSERT INTO `position_county` VALUES ('825', '320300000000', '320382000000', '邳州市');
INSERT INTO `position_county` VALUES ('826', '320400000000', '320401000000', '市辖区');
INSERT INTO `position_county` VALUES ('827', '320400000000', '320402000000', '天宁区');
INSERT INTO `position_county` VALUES ('828', '320400000000', '320404000000', '钟楼区');
INSERT INTO `position_county` VALUES ('829', '320400000000', '320411000000', '新北区');
INSERT INTO `position_county` VALUES ('830', '320400000000', '320412000000', '武进区');
INSERT INTO `position_county` VALUES ('831', '320400000000', '320413000000', '金坛区');
INSERT INTO `position_county` VALUES ('832', '320400000000', '320481000000', '溧阳市');
INSERT INTO `position_county` VALUES ('833', '320500000000', '320501000000', '市辖区');
INSERT INTO `position_county` VALUES ('834', '320500000000', '320505000000', '虎丘区');
INSERT INTO `position_county` VALUES ('835', '320500000000', '320506000000', '吴中区');
INSERT INTO `position_county` VALUES ('836', '320500000000', '320507000000', '相城区');
INSERT INTO `position_county` VALUES ('837', '320500000000', '320508000000', '姑苏区');
INSERT INTO `position_county` VALUES ('838', '320500000000', '320509000000', '吴江区');
INSERT INTO `position_county` VALUES ('839', '320500000000', '320581000000', '常熟市');
INSERT INTO `position_county` VALUES ('840', '320500000000', '320582000000', '张家港市');
INSERT INTO `position_county` VALUES ('841', '320500000000', '320583000000', '昆山市');
INSERT INTO `position_county` VALUES ('842', '320500000000', '320585000000', '太仓市');
INSERT INTO `position_county` VALUES ('843', '320600000000', '320601000000', '市辖区');
INSERT INTO `position_county` VALUES ('844', '320600000000', '320602000000', '崇川区');
INSERT INTO `position_county` VALUES ('845', '320600000000', '320611000000', '港闸区');
INSERT INTO `position_county` VALUES ('846', '320600000000', '320612000000', '通州区');
INSERT INTO `position_county` VALUES ('847', '320600000000', '320621000000', '海安县');
INSERT INTO `position_county` VALUES ('848', '320600000000', '320623000000', '如东县');
INSERT INTO `position_county` VALUES ('849', '320600000000', '320681000000', '启东市');
INSERT INTO `position_county` VALUES ('850', '320600000000', '320682000000', '如皋市');
INSERT INTO `position_county` VALUES ('851', '320600000000', '320684000000', '海门市');
INSERT INTO `position_county` VALUES ('852', '320700000000', '320701000000', '市辖区');
INSERT INTO `position_county` VALUES ('853', '320700000000', '320703000000', '连云区');
INSERT INTO `position_county` VALUES ('854', '320700000000', '320706000000', '海州区');
INSERT INTO `position_county` VALUES ('855', '320700000000', '320707000000', '赣榆区');
INSERT INTO `position_county` VALUES ('856', '320700000000', '320722000000', '东海县');
INSERT INTO `position_county` VALUES ('857', '320700000000', '320723000000', '灌云县');
INSERT INTO `position_county` VALUES ('858', '320700000000', '320724000000', '灌南县');
INSERT INTO `position_county` VALUES ('859', '320800000000', '320801000000', '市辖区');
INSERT INTO `position_county` VALUES ('860', '320800000000', '320802000000', '清河区');
INSERT INTO `position_county` VALUES ('861', '320800000000', '320803000000', '淮安区');
INSERT INTO `position_county` VALUES ('862', '320800000000', '320804000000', '淮阴区');
INSERT INTO `position_county` VALUES ('863', '320800000000', '320811000000', '清浦区');
INSERT INTO `position_county` VALUES ('864', '320800000000', '320826000000', '涟水县');
INSERT INTO `position_county` VALUES ('865', '320800000000', '320829000000', '洪泽县');
INSERT INTO `position_county` VALUES ('866', '320800000000', '320830000000', '盱眙县');
INSERT INTO `position_county` VALUES ('867', '320800000000', '320831000000', '金湖县');
INSERT INTO `position_county` VALUES ('868', '320900000000', '320901000000', '市辖区');
INSERT INTO `position_county` VALUES ('869', '320900000000', '320902000000', '亭湖区');
INSERT INTO `position_county` VALUES ('870', '320900000000', '320903000000', '盐都区');
INSERT INTO `position_county` VALUES ('871', '320900000000', '320904000000', '大丰区');
INSERT INTO `position_county` VALUES ('872', '320900000000', '320921000000', '响水县');
INSERT INTO `position_county` VALUES ('873', '320900000000', '320922000000', '滨海县');
INSERT INTO `position_county` VALUES ('874', '320900000000', '320923000000', '阜宁县');
INSERT INTO `position_county` VALUES ('875', '320900000000', '320924000000', '射阳县');
INSERT INTO `position_county` VALUES ('876', '320900000000', '320925000000', '建湖县');
INSERT INTO `position_county` VALUES ('877', '320900000000', '320981000000', '东台市');
INSERT INTO `position_county` VALUES ('878', '321000000000', '321001000000', '市辖区');
INSERT INTO `position_county` VALUES ('879', '321000000000', '321002000000', '广陵区');
INSERT INTO `position_county` VALUES ('880', '321000000000', '321003000000', '邗江区');
INSERT INTO `position_county` VALUES ('881', '321000000000', '321012000000', '江都区');
INSERT INTO `position_county` VALUES ('882', '321000000000', '321023000000', '宝应县');
INSERT INTO `position_county` VALUES ('883', '321000000000', '321081000000', '仪征市');
INSERT INTO `position_county` VALUES ('884', '321000000000', '321084000000', '高邮市');
INSERT INTO `position_county` VALUES ('885', '321100000000', '321101000000', '市辖区');
INSERT INTO `position_county` VALUES ('886', '321100000000', '321102000000', '京口区');
INSERT INTO `position_county` VALUES ('887', '321100000000', '321111000000', '润州区');
INSERT INTO `position_county` VALUES ('888', '321100000000', '321112000000', '丹徒区');
INSERT INTO `position_county` VALUES ('889', '321100000000', '321181000000', '丹阳市');
INSERT INTO `position_county` VALUES ('890', '321100000000', '321182000000', '扬中市');
INSERT INTO `position_county` VALUES ('891', '321100000000', '321183000000', '句容市');
INSERT INTO `position_county` VALUES ('892', '321200000000', '321201000000', '市辖区');
INSERT INTO `position_county` VALUES ('893', '321200000000', '321202000000', '海陵区');
INSERT INTO `position_county` VALUES ('894', '321200000000', '321203000000', '高港区');
INSERT INTO `position_county` VALUES ('895', '321200000000', '321204000000', '姜堰区');
INSERT INTO `position_county` VALUES ('896', '321200000000', '321281000000', '兴化市');
INSERT INTO `position_county` VALUES ('897', '321200000000', '321282000000', '靖江市');
INSERT INTO `position_county` VALUES ('898', '321200000000', '321283000000', '泰兴市');
INSERT INTO `position_county` VALUES ('899', '321300000000', '321301000000', '市辖区');
INSERT INTO `position_county` VALUES ('900', '321300000000', '321302000000', '宿城区');
INSERT INTO `position_county` VALUES ('901', '321300000000', '321311000000', '宿豫区');
INSERT INTO `position_county` VALUES ('902', '321300000000', '321322000000', '沭阳县');
INSERT INTO `position_county` VALUES ('903', '321300000000', '321323000000', '泗阳县');
INSERT INTO `position_county` VALUES ('904', '321300000000', '321324000000', '泗洪县');
INSERT INTO `position_county` VALUES ('905', '330100000000', '330101000000', '市辖区');
INSERT INTO `position_county` VALUES ('906', '330100000000', '330102000000', '上城区');
INSERT INTO `position_county` VALUES ('907', '330100000000', '330103000000', '下城区');
INSERT INTO `position_county` VALUES ('908', '330100000000', '330104000000', '江干区');
INSERT INTO `position_county` VALUES ('909', '330100000000', '330105000000', '拱墅区');
INSERT INTO `position_county` VALUES ('910', '330100000000', '330106000000', '西湖区');
INSERT INTO `position_county` VALUES ('911', '330100000000', '330108000000', '滨江区');
INSERT INTO `position_county` VALUES ('912', '330100000000', '330109000000', '萧山区');
INSERT INTO `position_county` VALUES ('913', '330100000000', '330110000000', '余杭区');
INSERT INTO `position_county` VALUES ('914', '330100000000', '330111000000', '富阳区');
INSERT INTO `position_county` VALUES ('915', '330100000000', '330122000000', '桐庐县');
INSERT INTO `position_county` VALUES ('916', '330100000000', '330127000000', '淳安县');
INSERT INTO `position_county` VALUES ('917', '330100000000', '330182000000', '建德市');
INSERT INTO `position_county` VALUES ('918', '330100000000', '330185000000', '临安市');
INSERT INTO `position_county` VALUES ('919', '330200000000', '330201000000', '市辖区');
INSERT INTO `position_county` VALUES ('920', '330200000000', '330203000000', '海曙区');
INSERT INTO `position_county` VALUES ('921', '330200000000', '330204000000', '江东区');
INSERT INTO `position_county` VALUES ('922', '330200000000', '330205000000', '江北区');
INSERT INTO `position_county` VALUES ('923', '330200000000', '330206000000', '北仑区');
INSERT INTO `position_county` VALUES ('924', '330200000000', '330211000000', '镇海区');
INSERT INTO `position_county` VALUES ('925', '330200000000', '330212000000', '鄞州区');
INSERT INTO `position_county` VALUES ('926', '330200000000', '330225000000', '象山县');
INSERT INTO `position_county` VALUES ('927', '330200000000', '330226000000', '宁海县');
INSERT INTO `position_county` VALUES ('928', '330200000000', '330281000000', '余姚市');
INSERT INTO `position_county` VALUES ('929', '330200000000', '330282000000', '慈溪市');
INSERT INTO `position_county` VALUES ('930', '330200000000', '330283000000', '奉化市');
INSERT INTO `position_county` VALUES ('931', '330300000000', '330301000000', '市辖区');
INSERT INTO `position_county` VALUES ('932', '330300000000', '330302000000', '鹿城区');
INSERT INTO `position_county` VALUES ('933', '330300000000', '330303000000', '龙湾区');
INSERT INTO `position_county` VALUES ('934', '330300000000', '330304000000', '瓯海区');
INSERT INTO `position_county` VALUES ('935', '330300000000', '330305000000', '洞头区');
INSERT INTO `position_county` VALUES ('936', '330300000000', '330324000000', '永嘉县');
INSERT INTO `position_county` VALUES ('937', '330300000000', '330326000000', '平阳县');
INSERT INTO `position_county` VALUES ('938', '330300000000', '330327000000', '苍南县');
INSERT INTO `position_county` VALUES ('939', '330300000000', '330328000000', '文成县');
INSERT INTO `position_county` VALUES ('940', '330300000000', '330329000000', '泰顺县');
INSERT INTO `position_county` VALUES ('941', '330300000000', '330381000000', '瑞安市');
INSERT INTO `position_county` VALUES ('942', '330300000000', '330382000000', '乐清市');
INSERT INTO `position_county` VALUES ('943', '330400000000', '330401000000', '市辖区');
INSERT INTO `position_county` VALUES ('944', '330400000000', '330402000000', '南湖区');
INSERT INTO `position_county` VALUES ('945', '330400000000', '330411000000', '秀洲区');
INSERT INTO `position_county` VALUES ('946', '330400000000', '330421000000', '嘉善县');
INSERT INTO `position_county` VALUES ('947', '330400000000', '330424000000', '海盐县');
INSERT INTO `position_county` VALUES ('948', '330400000000', '330481000000', '海宁市');
INSERT INTO `position_county` VALUES ('949', '330400000000', '330482000000', '平湖市');
INSERT INTO `position_county` VALUES ('950', '330400000000', '330483000000', '桐乡市');
INSERT INTO `position_county` VALUES ('951', '330500000000', '330501000000', '市辖区');
INSERT INTO `position_county` VALUES ('952', '330500000000', '330502000000', '吴兴区');
INSERT INTO `position_county` VALUES ('953', '330500000000', '330503000000', '南浔区');
INSERT INTO `position_county` VALUES ('954', '330500000000', '330521000000', '德清县');
INSERT INTO `position_county` VALUES ('955', '330500000000', '330522000000', '长兴县');
INSERT INTO `position_county` VALUES ('956', '330500000000', '330523000000', '安吉县');
INSERT INTO `position_county` VALUES ('957', '330600000000', '330601000000', '市辖区');
INSERT INTO `position_county` VALUES ('958', '330600000000', '330602000000', '越城区');
INSERT INTO `position_county` VALUES ('959', '330600000000', '330603000000', '柯桥区');
INSERT INTO `position_county` VALUES ('960', '330600000000', '330604000000', '上虞区');
INSERT INTO `position_county` VALUES ('961', '330600000000', '330624000000', '新昌县');
INSERT INTO `position_county` VALUES ('962', '330600000000', '330681000000', '诸暨市');
INSERT INTO `position_county` VALUES ('963', '330600000000', '330683000000', '嵊州市');
INSERT INTO `position_county` VALUES ('964', '330700000000', '330701000000', '市辖区');
INSERT INTO `position_county` VALUES ('965', '330700000000', '330702000000', '婺城区');
INSERT INTO `position_county` VALUES ('966', '330700000000', '330703000000', '金东区');
INSERT INTO `position_county` VALUES ('967', '330700000000', '330723000000', '武义县');
INSERT INTO `position_county` VALUES ('968', '330700000000', '330726000000', '浦江县');
INSERT INTO `position_county` VALUES ('969', '330700000000', '330727000000', '磐安县');
INSERT INTO `position_county` VALUES ('970', '330700000000', '330781000000', '兰溪市');
INSERT INTO `position_county` VALUES ('971', '330700000000', '330782000000', '义乌市');
INSERT INTO `position_county` VALUES ('972', '330700000000', '330783000000', '东阳市');
INSERT INTO `position_county` VALUES ('973', '330700000000', '330784000000', '永康市');
INSERT INTO `position_county` VALUES ('974', '330800000000', '330801000000', '市辖区');
INSERT INTO `position_county` VALUES ('975', '330800000000', '330802000000', '柯城区');
INSERT INTO `position_county` VALUES ('976', '330800000000', '330803000000', '衢江区');
INSERT INTO `position_county` VALUES ('977', '330800000000', '330822000000', '常山县');
INSERT INTO `position_county` VALUES ('978', '330800000000', '330824000000', '开化县');
INSERT INTO `position_county` VALUES ('979', '330800000000', '330825000000', '龙游县');
INSERT INTO `position_county` VALUES ('980', '330800000000', '330881000000', '江山市');
INSERT INTO `position_county` VALUES ('981', '330900000000', '330901000000', '市辖区');
INSERT INTO `position_county` VALUES ('982', '330900000000', '330902000000', '定海区');
INSERT INTO `position_county` VALUES ('983', '330900000000', '330903000000', '普陀区');
INSERT INTO `position_county` VALUES ('984', '330900000000', '330921000000', '岱山县');
INSERT INTO `position_county` VALUES ('985', '330900000000', '330922000000', '嵊泗县');
INSERT INTO `position_county` VALUES ('986', '331000000000', '331001000000', '市辖区');
INSERT INTO `position_county` VALUES ('987', '331000000000', '331002000000', '椒江区');
INSERT INTO `position_county` VALUES ('988', '331000000000', '331003000000', '黄岩区');
INSERT INTO `position_county` VALUES ('989', '331000000000', '331004000000', '路桥区');
INSERT INTO `position_county` VALUES ('990', '331000000000', '331021000000', '玉环县');
INSERT INTO `position_county` VALUES ('991', '331000000000', '331022000000', '三门县');
INSERT INTO `position_county` VALUES ('992', '331000000000', '331023000000', '天台县');
INSERT INTO `position_county` VALUES ('993', '331000000000', '331024000000', '仙居县');
INSERT INTO `position_county` VALUES ('994', '331000000000', '331081000000', '温岭市');
INSERT INTO `position_county` VALUES ('995', '331000000000', '331082000000', '临海市');
INSERT INTO `position_county` VALUES ('996', '331100000000', '331101000000', '市辖区');
INSERT INTO `position_county` VALUES ('997', '331100000000', '331102000000', '莲都区');
INSERT INTO `position_county` VALUES ('998', '331100000000', '331121000000', '青田县');
INSERT INTO `position_county` VALUES ('999', '331100000000', '331122000000', '缙云县');
INSERT INTO `position_county` VALUES ('1000', '331100000000', '331123000000', '遂昌县');
INSERT INTO `position_county` VALUES ('1001', '331100000000', '331124000000', '松阳县');
INSERT INTO `position_county` VALUES ('1002', '331100000000', '331125000000', '云和县');
INSERT INTO `position_county` VALUES ('1003', '331100000000', '331126000000', '庆元县');
INSERT INTO `position_county` VALUES ('1004', '331100000000', '331127000000', '景宁畲族自治县');
INSERT INTO `position_county` VALUES ('1005', '331100000000', '331181000000', '龙泉市');
INSERT INTO `position_county` VALUES ('1006', '340100000000', '340101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1007', '340100000000', '340102000000', '瑶海区');
INSERT INTO `position_county` VALUES ('1008', '340100000000', '340103000000', '庐阳区');
INSERT INTO `position_county` VALUES ('1009', '340100000000', '340104000000', '蜀山区');
INSERT INTO `position_county` VALUES ('1010', '340100000000', '340111000000', '包河区');
INSERT INTO `position_county` VALUES ('1011', '340100000000', '340121000000', '长丰县');
INSERT INTO `position_county` VALUES ('1012', '340100000000', '340122000000', '肥东县');
INSERT INTO `position_county` VALUES ('1013', '340100000000', '340123000000', '肥西县');
INSERT INTO `position_county` VALUES ('1014', '340100000000', '340124000000', '庐江县');
INSERT INTO `position_county` VALUES ('1015', '340100000000', '340181000000', '巢湖市');
INSERT INTO `position_county` VALUES ('1016', '340200000000', '340201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1017', '340200000000', '340202000000', '镜湖区');
INSERT INTO `position_county` VALUES ('1018', '340200000000', '340203000000', '弋江区');
INSERT INTO `position_county` VALUES ('1019', '340200000000', '340207000000', '鸠江区');
INSERT INTO `position_county` VALUES ('1020', '340200000000', '340208000000', '三山区');
INSERT INTO `position_county` VALUES ('1021', '340200000000', '340221000000', '芜湖县');
INSERT INTO `position_county` VALUES ('1022', '340200000000', '340222000000', '繁昌县');
INSERT INTO `position_county` VALUES ('1023', '340200000000', '340223000000', '南陵县');
INSERT INTO `position_county` VALUES ('1024', '340200000000', '340225000000', '无为县');
INSERT INTO `position_county` VALUES ('1025', '340300000000', '340301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1026', '340300000000', '340302000000', '龙子湖区');
INSERT INTO `position_county` VALUES ('1027', '340300000000', '340303000000', '蚌山区');
INSERT INTO `position_county` VALUES ('1028', '340300000000', '340304000000', '禹会区');
INSERT INTO `position_county` VALUES ('1029', '340300000000', '340311000000', '淮上区');
INSERT INTO `position_county` VALUES ('1030', '340300000000', '340321000000', '怀远县');
INSERT INTO `position_county` VALUES ('1031', '340300000000', '340322000000', '五河县');
INSERT INTO `position_county` VALUES ('1032', '340300000000', '340323000000', '固镇县');
INSERT INTO `position_county` VALUES ('1033', '340400000000', '340401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1034', '340400000000', '340402000000', '大通区');
INSERT INTO `position_county` VALUES ('1035', '340400000000', '340403000000', '田家庵区');
INSERT INTO `position_county` VALUES ('1036', '340400000000', '340404000000', '谢家集区');
INSERT INTO `position_county` VALUES ('1037', '340400000000', '340405000000', '八公山区');
INSERT INTO `position_county` VALUES ('1038', '340400000000', '340406000000', '潘集区');
INSERT INTO `position_county` VALUES ('1039', '340400000000', '340421000000', '凤台县');
INSERT INTO `position_county` VALUES ('1040', '340500000000', '340501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1041', '340500000000', '340503000000', '花山区');
INSERT INTO `position_county` VALUES ('1042', '340500000000', '340504000000', '雨山区');
INSERT INTO `position_county` VALUES ('1043', '340500000000', '340506000000', '博望区');
INSERT INTO `position_county` VALUES ('1044', '340500000000', '340521000000', '当涂县');
INSERT INTO `position_county` VALUES ('1045', '340500000000', '340522000000', '含山县');
INSERT INTO `position_county` VALUES ('1046', '340500000000', '340523000000', '和县');
INSERT INTO `position_county` VALUES ('1047', '340600000000', '340601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1048', '340600000000', '340602000000', '杜集区');
INSERT INTO `position_county` VALUES ('1049', '340600000000', '340603000000', '相山区');
INSERT INTO `position_county` VALUES ('1050', '340600000000', '340604000000', '烈山区');
INSERT INTO `position_county` VALUES ('1051', '340600000000', '340621000000', '濉溪县');
INSERT INTO `position_county` VALUES ('1052', '340700000000', '340701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1053', '340700000000', '340702000000', '铜官山区');
INSERT INTO `position_county` VALUES ('1054', '340700000000', '340703000000', '狮子山区');
INSERT INTO `position_county` VALUES ('1055', '340700000000', '340711000000', '郊区');
INSERT INTO `position_county` VALUES ('1056', '340700000000', '340721000000', '铜陵县');
INSERT INTO `position_county` VALUES ('1057', '340800000000', '340801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1058', '340800000000', '340802000000', '迎江区');
INSERT INTO `position_county` VALUES ('1059', '340800000000', '340803000000', '大观区');
INSERT INTO `position_county` VALUES ('1060', '340800000000', '340811000000', '宜秀区');
INSERT INTO `position_county` VALUES ('1061', '340800000000', '340822000000', '怀宁县');
INSERT INTO `position_county` VALUES ('1062', '340800000000', '340823000000', '枞阳县');
INSERT INTO `position_county` VALUES ('1063', '340800000000', '340824000000', '潜山县');
INSERT INTO `position_county` VALUES ('1064', '340800000000', '340825000000', '太湖县');
INSERT INTO `position_county` VALUES ('1065', '340800000000', '340826000000', '宿松县');
INSERT INTO `position_county` VALUES ('1066', '340800000000', '340827000000', '望江县');
INSERT INTO `position_county` VALUES ('1067', '340800000000', '340828000000', '岳西县');
INSERT INTO `position_county` VALUES ('1068', '340800000000', '340881000000', '桐城市');
INSERT INTO `position_county` VALUES ('1069', '341000000000', '341001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1070', '341000000000', '341002000000', '屯溪区');
INSERT INTO `position_county` VALUES ('1071', '341000000000', '341003000000', '黄山区');
INSERT INTO `position_county` VALUES ('1072', '341000000000', '341004000000', '徽州区');
INSERT INTO `position_county` VALUES ('1073', '341000000000', '341021000000', '歙县');
INSERT INTO `position_county` VALUES ('1074', '341000000000', '341022000000', '休宁县');
INSERT INTO `position_county` VALUES ('1075', '341000000000', '341023000000', '黟县');
INSERT INTO `position_county` VALUES ('1076', '341000000000', '341024000000', '祁门县');
INSERT INTO `position_county` VALUES ('1077', '341100000000', '341101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1078', '341100000000', '341102000000', '琅琊区');
INSERT INTO `position_county` VALUES ('1079', '341100000000', '341103000000', '南谯区');
INSERT INTO `position_county` VALUES ('1080', '341100000000', '341122000000', '来安县');
INSERT INTO `position_county` VALUES ('1081', '341100000000', '341124000000', '全椒县');
INSERT INTO `position_county` VALUES ('1082', '341100000000', '341125000000', '定远县');
INSERT INTO `position_county` VALUES ('1083', '341100000000', '341126000000', '凤阳县');
INSERT INTO `position_county` VALUES ('1084', '341100000000', '341181000000', '天长市');
INSERT INTO `position_county` VALUES ('1085', '341100000000', '341182000000', '明光市');
INSERT INTO `position_county` VALUES ('1086', '341200000000', '341201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1087', '341200000000', '341202000000', '颍州区');
INSERT INTO `position_county` VALUES ('1088', '341200000000', '341203000000', '颍东区');
INSERT INTO `position_county` VALUES ('1089', '341200000000', '341204000000', '颍泉区');
INSERT INTO `position_county` VALUES ('1090', '341200000000', '341221000000', '临泉县');
INSERT INTO `position_county` VALUES ('1091', '341200000000', '341222000000', '太和县');
INSERT INTO `position_county` VALUES ('1092', '341200000000', '341225000000', '阜南县');
INSERT INTO `position_county` VALUES ('1093', '341200000000', '341226000000', '颍上县');
INSERT INTO `position_county` VALUES ('1094', '341200000000', '341282000000', '界首市');
INSERT INTO `position_county` VALUES ('1095', '341300000000', '341301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1096', '341300000000', '341302000000', '埇桥区');
INSERT INTO `position_county` VALUES ('1097', '341300000000', '341321000000', '砀山县');
INSERT INTO `position_county` VALUES ('1098', '341300000000', '341322000000', '萧县');
INSERT INTO `position_county` VALUES ('1099', '341300000000', '341323000000', '灵璧县');
INSERT INTO `position_county` VALUES ('1100', '341300000000', '341324000000', '泗县');
INSERT INTO `position_county` VALUES ('1101', '341500000000', '341501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1102', '341500000000', '341502000000', '金安区');
INSERT INTO `position_county` VALUES ('1103', '341500000000', '341503000000', '裕安区');
INSERT INTO `position_county` VALUES ('1104', '341500000000', '341521000000', '寿县');
INSERT INTO `position_county` VALUES ('1105', '341500000000', '341522000000', '霍邱县');
INSERT INTO `position_county` VALUES ('1106', '341500000000', '341523000000', '舒城县');
INSERT INTO `position_county` VALUES ('1107', '341500000000', '341524000000', '金寨县');
INSERT INTO `position_county` VALUES ('1108', '341500000000', '341525000000', '霍山县');
INSERT INTO `position_county` VALUES ('1109', '341600000000', '341601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1110', '341600000000', '341602000000', '谯城区');
INSERT INTO `position_county` VALUES ('1111', '341600000000', '341621000000', '涡阳县');
INSERT INTO `position_county` VALUES ('1112', '341600000000', '341622000000', '蒙城县');
INSERT INTO `position_county` VALUES ('1113', '341600000000', '341623000000', '利辛县');
INSERT INTO `position_county` VALUES ('1114', '341700000000', '341701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1115', '341700000000', '341702000000', '贵池区');
INSERT INTO `position_county` VALUES ('1116', '341700000000', '341721000000', '东至县');
INSERT INTO `position_county` VALUES ('1117', '341700000000', '341722000000', '石台县');
INSERT INTO `position_county` VALUES ('1118', '341700000000', '341723000000', '青阳县');
INSERT INTO `position_county` VALUES ('1119', '341800000000', '341801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1120', '341800000000', '341802000000', '宣州区');
INSERT INTO `position_county` VALUES ('1121', '341800000000', '341821000000', '郎溪县');
INSERT INTO `position_county` VALUES ('1122', '341800000000', '341822000000', '广德县');
INSERT INTO `position_county` VALUES ('1123', '341800000000', '341823000000', '泾县');
INSERT INTO `position_county` VALUES ('1124', '341800000000', '341824000000', '绩溪县');
INSERT INTO `position_county` VALUES ('1125', '341800000000', '341825000000', '旌德县');
INSERT INTO `position_county` VALUES ('1126', '341800000000', '341881000000', '宁国市');
INSERT INTO `position_county` VALUES ('1127', '350100000000', '350101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1128', '350100000000', '350102000000', '鼓楼区');
INSERT INTO `position_county` VALUES ('1129', '350100000000', '350103000000', '台江区');
INSERT INTO `position_county` VALUES ('1130', '350100000000', '350104000000', '仓山区');
INSERT INTO `position_county` VALUES ('1131', '350100000000', '350105000000', '马尾区');
INSERT INTO `position_county` VALUES ('1132', '350100000000', '350111000000', '晋安区');
INSERT INTO `position_county` VALUES ('1133', '350100000000', '350121000000', '闽侯县');
INSERT INTO `position_county` VALUES ('1134', '350100000000', '350122000000', '连江县');
INSERT INTO `position_county` VALUES ('1135', '350100000000', '350123000000', '罗源县');
INSERT INTO `position_county` VALUES ('1136', '350100000000', '350124000000', '闽清县');
INSERT INTO `position_county` VALUES ('1137', '350100000000', '350125000000', '永泰县');
INSERT INTO `position_county` VALUES ('1138', '350100000000', '350128000000', '平潭县');
INSERT INTO `position_county` VALUES ('1139', '350100000000', '350181000000', '福清市');
INSERT INTO `position_county` VALUES ('1140', '350100000000', '350182000000', '长乐市');
INSERT INTO `position_county` VALUES ('1141', '350200000000', '350201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1142', '350200000000', '350203000000', '思明区');
INSERT INTO `position_county` VALUES ('1143', '350200000000', '350205000000', '海沧区');
INSERT INTO `position_county` VALUES ('1144', '350200000000', '350206000000', '湖里区');
INSERT INTO `position_county` VALUES ('1145', '350200000000', '350211000000', '集美区');
INSERT INTO `position_county` VALUES ('1146', '350200000000', '350212000000', '同安区');
INSERT INTO `position_county` VALUES ('1147', '350200000000', '350213000000', '翔安区');
INSERT INTO `position_county` VALUES ('1148', '350300000000', '350301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1149', '350300000000', '350302000000', '城厢区');
INSERT INTO `position_county` VALUES ('1150', '350300000000', '350303000000', '涵江区');
INSERT INTO `position_county` VALUES ('1151', '350300000000', '350304000000', '荔城区');
INSERT INTO `position_county` VALUES ('1152', '350300000000', '350305000000', '秀屿区');
INSERT INTO `position_county` VALUES ('1153', '350300000000', '350322000000', '仙游县');
INSERT INTO `position_county` VALUES ('1154', '350400000000', '350401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1155', '350400000000', '350402000000', '梅列区');
INSERT INTO `position_county` VALUES ('1156', '350400000000', '350403000000', '三元区');
INSERT INTO `position_county` VALUES ('1157', '350400000000', '350421000000', '明溪县');
INSERT INTO `position_county` VALUES ('1158', '350400000000', '350423000000', '清流县');
INSERT INTO `position_county` VALUES ('1159', '350400000000', '350424000000', '宁化县');
INSERT INTO `position_county` VALUES ('1160', '350400000000', '350425000000', '大田县');
INSERT INTO `position_county` VALUES ('1161', '350400000000', '350426000000', '尤溪县');
INSERT INTO `position_county` VALUES ('1162', '350400000000', '350427000000', '沙县');
INSERT INTO `position_county` VALUES ('1163', '350400000000', '350428000000', '将乐县');
INSERT INTO `position_county` VALUES ('1164', '350400000000', '350429000000', '泰宁县');
INSERT INTO `position_county` VALUES ('1165', '350400000000', '350430000000', '建宁县');
INSERT INTO `position_county` VALUES ('1166', '350400000000', '350481000000', '永安市');
INSERT INTO `position_county` VALUES ('1167', '350500000000', '350501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1168', '350500000000', '350502000000', '鲤城区');
INSERT INTO `position_county` VALUES ('1169', '350500000000', '350503000000', '丰泽区');
INSERT INTO `position_county` VALUES ('1170', '350500000000', '350504000000', '洛江区');
INSERT INTO `position_county` VALUES ('1171', '350500000000', '350505000000', '泉港区');
INSERT INTO `position_county` VALUES ('1172', '350500000000', '350521000000', '惠安县');
INSERT INTO `position_county` VALUES ('1173', '350500000000', '350524000000', '安溪县');
INSERT INTO `position_county` VALUES ('1174', '350500000000', '350525000000', '永春县');
INSERT INTO `position_county` VALUES ('1175', '350500000000', '350526000000', '德化县');
INSERT INTO `position_county` VALUES ('1176', '350500000000', '350527000000', '金门县');
INSERT INTO `position_county` VALUES ('1177', '350500000000', '350581000000', '石狮市');
INSERT INTO `position_county` VALUES ('1178', '350500000000', '350582000000', '晋江市');
INSERT INTO `position_county` VALUES ('1179', '350500000000', '350583000000', '南安市');
INSERT INTO `position_county` VALUES ('1180', '350600000000', '350601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1181', '350600000000', '350602000000', '芗城区');
INSERT INTO `position_county` VALUES ('1182', '350600000000', '350603000000', '龙文区');
INSERT INTO `position_county` VALUES ('1183', '350600000000', '350622000000', '云霄县');
INSERT INTO `position_county` VALUES ('1184', '350600000000', '350623000000', '漳浦县');
INSERT INTO `position_county` VALUES ('1185', '350600000000', '350624000000', '诏安县');
INSERT INTO `position_county` VALUES ('1186', '350600000000', '350625000000', '长泰县');
INSERT INTO `position_county` VALUES ('1187', '350600000000', '350626000000', '东山县');
INSERT INTO `position_county` VALUES ('1188', '350600000000', '350627000000', '南靖县');
INSERT INTO `position_county` VALUES ('1189', '350600000000', '350628000000', '平和县');
INSERT INTO `position_county` VALUES ('1190', '350600000000', '350629000000', '华安县');
INSERT INTO `position_county` VALUES ('1191', '350600000000', '350681000000', '龙海市');
INSERT INTO `position_county` VALUES ('1192', '350700000000', '350701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1193', '350700000000', '350702000000', '延平区');
INSERT INTO `position_county` VALUES ('1194', '350700000000', '350703000000', '建阳区');
INSERT INTO `position_county` VALUES ('1195', '350700000000', '350721000000', '顺昌县');
INSERT INTO `position_county` VALUES ('1196', '350700000000', '350722000000', '浦城县');
INSERT INTO `position_county` VALUES ('1197', '350700000000', '350723000000', '光泽县');
INSERT INTO `position_county` VALUES ('1198', '350700000000', '350724000000', '松溪县');
INSERT INTO `position_county` VALUES ('1199', '350700000000', '350725000000', '政和县');
INSERT INTO `position_county` VALUES ('1200', '350700000000', '350781000000', '邵武市');
INSERT INTO `position_county` VALUES ('1201', '350700000000', '350782000000', '武夷山市');
INSERT INTO `position_county` VALUES ('1202', '350700000000', '350783000000', '建瓯市');
INSERT INTO `position_county` VALUES ('1203', '350800000000', '350801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1204', '350800000000', '350802000000', '新罗区');
INSERT INTO `position_county` VALUES ('1205', '350800000000', '350803000000', '永定区');
INSERT INTO `position_county` VALUES ('1206', '350800000000', '350821000000', '长汀县');
INSERT INTO `position_county` VALUES ('1207', '350800000000', '350823000000', '上杭县');
INSERT INTO `position_county` VALUES ('1208', '350800000000', '350824000000', '武平县');
INSERT INTO `position_county` VALUES ('1209', '350800000000', '350825000000', '连城县');
INSERT INTO `position_county` VALUES ('1210', '350800000000', '350881000000', '漳平市');
INSERT INTO `position_county` VALUES ('1211', '350900000000', '350901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1212', '350900000000', '350902000000', '蕉城区');
INSERT INTO `position_county` VALUES ('1213', '350900000000', '350921000000', '霞浦县');
INSERT INTO `position_county` VALUES ('1214', '350900000000', '350922000000', '古田县');
INSERT INTO `position_county` VALUES ('1215', '350900000000', '350923000000', '屏南县');
INSERT INTO `position_county` VALUES ('1216', '350900000000', '350924000000', '寿宁县');
INSERT INTO `position_county` VALUES ('1217', '350900000000', '350925000000', '周宁县');
INSERT INTO `position_county` VALUES ('1218', '350900000000', '350926000000', '柘荣县');
INSERT INTO `position_county` VALUES ('1219', '350900000000', '350981000000', '福安市');
INSERT INTO `position_county` VALUES ('1220', '350900000000', '350982000000', '福鼎市');
INSERT INTO `position_county` VALUES ('1221', '360100000000', '360101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1222', '360100000000', '360102000000', '东湖区');
INSERT INTO `position_county` VALUES ('1223', '360100000000', '360103000000', '西湖区');
INSERT INTO `position_county` VALUES ('1224', '360100000000', '360104000000', '青云谱区');
INSERT INTO `position_county` VALUES ('1225', '360100000000', '360105000000', '湾里区');
INSERT INTO `position_county` VALUES ('1226', '360100000000', '360111000000', '青山湖区');
INSERT INTO `position_county` VALUES ('1227', '360100000000', '360112000000', '新建区');
INSERT INTO `position_county` VALUES ('1228', '360100000000', '360121000000', '南昌县');
INSERT INTO `position_county` VALUES ('1229', '360100000000', '360123000000', '安义县');
INSERT INTO `position_county` VALUES ('1230', '360100000000', '360124000000', '进贤县');
INSERT INTO `position_county` VALUES ('1231', '360200000000', '360201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1232', '360200000000', '360202000000', '昌江区');
INSERT INTO `position_county` VALUES ('1233', '360200000000', '360203000000', '珠山区');
INSERT INTO `position_county` VALUES ('1234', '360200000000', '360222000000', '浮梁县');
INSERT INTO `position_county` VALUES ('1235', '360200000000', '360281000000', '乐平市');
INSERT INTO `position_county` VALUES ('1236', '360300000000', '360301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1237', '360300000000', '360302000000', '安源区');
INSERT INTO `position_county` VALUES ('1238', '360300000000', '360313000000', '湘东区');
INSERT INTO `position_county` VALUES ('1239', '360300000000', '360321000000', '莲花县');
INSERT INTO `position_county` VALUES ('1240', '360300000000', '360322000000', '上栗县');
INSERT INTO `position_county` VALUES ('1241', '360300000000', '360323000000', '芦溪县');
INSERT INTO `position_county` VALUES ('1242', '360400000000', '360401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1243', '360400000000', '360402000000', '庐山区');
INSERT INTO `position_county` VALUES ('1244', '360400000000', '360403000000', '浔阳区');
INSERT INTO `position_county` VALUES ('1245', '360400000000', '360421000000', '九江县');
INSERT INTO `position_county` VALUES ('1246', '360400000000', '360423000000', '武宁县');
INSERT INTO `position_county` VALUES ('1247', '360400000000', '360424000000', '修水县');
INSERT INTO `position_county` VALUES ('1248', '360400000000', '360425000000', '永修县');
INSERT INTO `position_county` VALUES ('1249', '360400000000', '360426000000', '德安县');
INSERT INTO `position_county` VALUES ('1250', '360400000000', '360427000000', '星子县');
INSERT INTO `position_county` VALUES ('1251', '360400000000', '360428000000', '都昌县');
INSERT INTO `position_county` VALUES ('1252', '360400000000', '360429000000', '湖口县');
INSERT INTO `position_county` VALUES ('1253', '360400000000', '360430000000', '彭泽县');
INSERT INTO `position_county` VALUES ('1254', '360400000000', '360481000000', '瑞昌市');
INSERT INTO `position_county` VALUES ('1255', '360400000000', '360482000000', '共青城市');
INSERT INTO `position_county` VALUES ('1256', '360500000000', '360501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1257', '360500000000', '360502000000', '渝水区');
INSERT INTO `position_county` VALUES ('1258', '360500000000', '360521000000', '分宜县');
INSERT INTO `position_county` VALUES ('1259', '360600000000', '360601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1260', '360600000000', '360602000000', '月湖区');
INSERT INTO `position_county` VALUES ('1261', '360600000000', '360622000000', '余江县');
INSERT INTO `position_county` VALUES ('1262', '360600000000', '360681000000', '贵溪市');
INSERT INTO `position_county` VALUES ('1263', '360700000000', '360701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1264', '360700000000', '360702000000', '章贡区');
INSERT INTO `position_county` VALUES ('1265', '360700000000', '360703000000', '南康区');
INSERT INTO `position_county` VALUES ('1266', '360700000000', '360721000000', '赣县');
INSERT INTO `position_county` VALUES ('1267', '360700000000', '360722000000', '信丰县');
INSERT INTO `position_county` VALUES ('1268', '360700000000', '360723000000', '大余县');
INSERT INTO `position_county` VALUES ('1269', '360700000000', '360724000000', '上犹县');
INSERT INTO `position_county` VALUES ('1270', '360700000000', '360725000000', '崇义县');
INSERT INTO `position_county` VALUES ('1271', '360700000000', '360726000000', '安远县');
INSERT INTO `position_county` VALUES ('1272', '360700000000', '360727000000', '龙南县');
INSERT INTO `position_county` VALUES ('1273', '360700000000', '360728000000', '定南县');
INSERT INTO `position_county` VALUES ('1274', '360700000000', '360729000000', '全南县');
INSERT INTO `position_county` VALUES ('1275', '360700000000', '360730000000', '宁都县');
INSERT INTO `position_county` VALUES ('1276', '360700000000', '360731000000', '于都县');
INSERT INTO `position_county` VALUES ('1277', '360700000000', '360732000000', '兴国县');
INSERT INTO `position_county` VALUES ('1278', '360700000000', '360733000000', '会昌县');
INSERT INTO `position_county` VALUES ('1279', '360700000000', '360734000000', '寻乌县');
INSERT INTO `position_county` VALUES ('1280', '360700000000', '360735000000', '石城县');
INSERT INTO `position_county` VALUES ('1281', '360700000000', '360781000000', '瑞金市');
INSERT INTO `position_county` VALUES ('1282', '360800000000', '360801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1283', '360800000000', '360802000000', '吉州区');
INSERT INTO `position_county` VALUES ('1284', '360800000000', '360803000000', '青原区');
INSERT INTO `position_county` VALUES ('1285', '360800000000', '360821000000', '吉安县');
INSERT INTO `position_county` VALUES ('1286', '360800000000', '360822000000', '吉水县');
INSERT INTO `position_county` VALUES ('1287', '360800000000', '360823000000', '峡江县');
INSERT INTO `position_county` VALUES ('1288', '360800000000', '360824000000', '新干县');
INSERT INTO `position_county` VALUES ('1289', '360800000000', '360825000000', '永丰县');
INSERT INTO `position_county` VALUES ('1290', '360800000000', '360826000000', '泰和县');
INSERT INTO `position_county` VALUES ('1291', '360800000000', '360827000000', '遂川县');
INSERT INTO `position_county` VALUES ('1292', '360800000000', '360828000000', '万安县');
INSERT INTO `position_county` VALUES ('1293', '360800000000', '360829000000', '安福县');
INSERT INTO `position_county` VALUES ('1294', '360800000000', '360830000000', '永新县');
INSERT INTO `position_county` VALUES ('1295', '360800000000', '360881000000', '井冈山市');
INSERT INTO `position_county` VALUES ('1296', '360900000000', '360901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1297', '360900000000', '360902000000', '袁州区');
INSERT INTO `position_county` VALUES ('1298', '360900000000', '360921000000', '奉新县');
INSERT INTO `position_county` VALUES ('1299', '360900000000', '360922000000', '万载县');
INSERT INTO `position_county` VALUES ('1300', '360900000000', '360923000000', '上高县');
INSERT INTO `position_county` VALUES ('1301', '360900000000', '360924000000', '宜丰县');
INSERT INTO `position_county` VALUES ('1302', '360900000000', '360925000000', '靖安县');
INSERT INTO `position_county` VALUES ('1303', '360900000000', '360926000000', '铜鼓县');
INSERT INTO `position_county` VALUES ('1304', '360900000000', '360981000000', '丰城市');
INSERT INTO `position_county` VALUES ('1305', '360900000000', '360982000000', '樟树市');
INSERT INTO `position_county` VALUES ('1306', '360900000000', '360983000000', '高安市');
INSERT INTO `position_county` VALUES ('1307', '361000000000', '361001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1308', '361000000000', '361002000000', '临川区');
INSERT INTO `position_county` VALUES ('1309', '361000000000', '361021000000', '南城县');
INSERT INTO `position_county` VALUES ('1310', '361000000000', '361022000000', '黎川县');
INSERT INTO `position_county` VALUES ('1311', '361000000000', '361023000000', '南丰县');
INSERT INTO `position_county` VALUES ('1312', '361000000000', '361024000000', '崇仁县');
INSERT INTO `position_county` VALUES ('1313', '361000000000', '361025000000', '乐安县');
INSERT INTO `position_county` VALUES ('1314', '361000000000', '361026000000', '宜黄县');
INSERT INTO `position_county` VALUES ('1315', '361000000000', '361027000000', '金溪县');
INSERT INTO `position_county` VALUES ('1316', '361000000000', '361028000000', '资溪县');
INSERT INTO `position_county` VALUES ('1317', '361000000000', '361029000000', '东乡县');
INSERT INTO `position_county` VALUES ('1318', '361000000000', '361030000000', '广昌县');
INSERT INTO `position_county` VALUES ('1319', '361100000000', '361101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1320', '361100000000', '361102000000', '信州区');
INSERT INTO `position_county` VALUES ('1321', '361100000000', '361103000000', '广丰区');
INSERT INTO `position_county` VALUES ('1322', '361100000000', '361121000000', '上饶县');
INSERT INTO `position_county` VALUES ('1323', '361100000000', '361123000000', '玉山县');
INSERT INTO `position_county` VALUES ('1324', '361100000000', '361124000000', '铅山县');
INSERT INTO `position_county` VALUES ('1325', '361100000000', '361125000000', '横峰县');
INSERT INTO `position_county` VALUES ('1326', '361100000000', '361126000000', '弋阳县');
INSERT INTO `position_county` VALUES ('1327', '361100000000', '361127000000', '余干县');
INSERT INTO `position_county` VALUES ('1328', '361100000000', '361128000000', '鄱阳县');
INSERT INTO `position_county` VALUES ('1329', '361100000000', '361129000000', '万年县');
INSERT INTO `position_county` VALUES ('1330', '361100000000', '361130000000', '婺源县');
INSERT INTO `position_county` VALUES ('1331', '361100000000', '361181000000', '德兴市');
INSERT INTO `position_county` VALUES ('1332', '370100000000', '370101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1333', '370100000000', '370102000000', '历下区');
INSERT INTO `position_county` VALUES ('1334', '370100000000', '370103000000', '市中区');
INSERT INTO `position_county` VALUES ('1335', '370100000000', '370104000000', '槐荫区');
INSERT INTO `position_county` VALUES ('1336', '370100000000', '370105000000', '天桥区');
INSERT INTO `position_county` VALUES ('1337', '370100000000', '370112000000', '历城区');
INSERT INTO `position_county` VALUES ('1338', '370100000000', '370113000000', '长清区');
INSERT INTO `position_county` VALUES ('1339', '370100000000', '370124000000', '平阴县');
INSERT INTO `position_county` VALUES ('1340', '370100000000', '370125000000', '济阳县');
INSERT INTO `position_county` VALUES ('1341', '370100000000', '370126000000', '商河县');
INSERT INTO `position_county` VALUES ('1342', '370100000000', '370181000000', '章丘市');
INSERT INTO `position_county` VALUES ('1343', '370200000000', '370201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1344', '370200000000', '370202000000', '市南区');
INSERT INTO `position_county` VALUES ('1345', '370200000000', '370203000000', '市北区');
INSERT INTO `position_county` VALUES ('1346', '370200000000', '370211000000', '黄岛区');
INSERT INTO `position_county` VALUES ('1347', '370200000000', '370212000000', '崂山区');
INSERT INTO `position_county` VALUES ('1348', '370200000000', '370213000000', '李沧区');
INSERT INTO `position_county` VALUES ('1349', '370200000000', '370214000000', '城阳区');
INSERT INTO `position_county` VALUES ('1350', '370200000000', '370281000000', '胶州市');
INSERT INTO `position_county` VALUES ('1351', '370200000000', '370282000000', '即墨市');
INSERT INTO `position_county` VALUES ('1352', '370200000000', '370283000000', '平度市');
INSERT INTO `position_county` VALUES ('1353', '370200000000', '370285000000', '莱西市');
INSERT INTO `position_county` VALUES ('1354', '370300000000', '370301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1355', '370300000000', '370302000000', '淄川区');
INSERT INTO `position_county` VALUES ('1356', '370300000000', '370303000000', '张店区');
INSERT INTO `position_county` VALUES ('1357', '370300000000', '370304000000', '博山区');
INSERT INTO `position_county` VALUES ('1358', '370300000000', '370305000000', '临淄区');
INSERT INTO `position_county` VALUES ('1359', '370300000000', '370306000000', '周村区');
INSERT INTO `position_county` VALUES ('1360', '370300000000', '370321000000', '桓台县');
INSERT INTO `position_county` VALUES ('1361', '370300000000', '370322000000', '高青县');
INSERT INTO `position_county` VALUES ('1362', '370300000000', '370323000000', '沂源县');
INSERT INTO `position_county` VALUES ('1363', '370400000000', '370401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1364', '370400000000', '370402000000', '市中区');
INSERT INTO `position_county` VALUES ('1365', '370400000000', '370403000000', '薛城区');
INSERT INTO `position_county` VALUES ('1366', '370400000000', '370404000000', '峄城区');
INSERT INTO `position_county` VALUES ('1367', '370400000000', '370405000000', '台儿庄区');
INSERT INTO `position_county` VALUES ('1368', '370400000000', '370406000000', '山亭区');
INSERT INTO `position_county` VALUES ('1369', '370400000000', '370481000000', '滕州市');
INSERT INTO `position_county` VALUES ('1370', '370500000000', '370501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1371', '370500000000', '370502000000', '东营区');
INSERT INTO `position_county` VALUES ('1372', '370500000000', '370503000000', '河口区');
INSERT INTO `position_county` VALUES ('1373', '370500000000', '370521000000', '垦利县');
INSERT INTO `position_county` VALUES ('1374', '370500000000', '370522000000', '利津县');
INSERT INTO `position_county` VALUES ('1375', '370500000000', '370523000000', '广饶县');
INSERT INTO `position_county` VALUES ('1376', '370600000000', '370601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1377', '370600000000', '370602000000', '芝罘区');
INSERT INTO `position_county` VALUES ('1378', '370600000000', '370611000000', '福山区');
INSERT INTO `position_county` VALUES ('1379', '370600000000', '370612000000', '牟平区');
INSERT INTO `position_county` VALUES ('1380', '370600000000', '370613000000', '莱山区');
INSERT INTO `position_county` VALUES ('1381', '370600000000', '370634000000', '长岛县');
INSERT INTO `position_county` VALUES ('1382', '370600000000', '370681000000', '龙口市');
INSERT INTO `position_county` VALUES ('1383', '370600000000', '370682000000', '莱阳市');
INSERT INTO `position_county` VALUES ('1384', '370600000000', '370683000000', '莱州市');
INSERT INTO `position_county` VALUES ('1385', '370600000000', '370684000000', '蓬莱市');
INSERT INTO `position_county` VALUES ('1386', '370600000000', '370685000000', '招远市');
INSERT INTO `position_county` VALUES ('1387', '370600000000', '370686000000', '栖霞市');
INSERT INTO `position_county` VALUES ('1388', '370600000000', '370687000000', '海阳市');
INSERT INTO `position_county` VALUES ('1389', '370700000000', '370701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1390', '370700000000', '370702000000', '潍城区');
INSERT INTO `position_county` VALUES ('1391', '370700000000', '370703000000', '寒亭区');
INSERT INTO `position_county` VALUES ('1392', '370700000000', '370704000000', '坊子区');
INSERT INTO `position_county` VALUES ('1393', '370700000000', '370705000000', '奎文区');
INSERT INTO `position_county` VALUES ('1394', '370700000000', '370724000000', '临朐县');
INSERT INTO `position_county` VALUES ('1395', '370700000000', '370725000000', '昌乐县');
INSERT INTO `position_county` VALUES ('1396', '370700000000', '370781000000', '青州市');
INSERT INTO `position_county` VALUES ('1397', '370700000000', '370782000000', '诸城市');
INSERT INTO `position_county` VALUES ('1398', '370700000000', '370783000000', '寿光市');
INSERT INTO `position_county` VALUES ('1399', '370700000000', '370784000000', '安丘市');
INSERT INTO `position_county` VALUES ('1400', '370700000000', '370785000000', '高密市');
INSERT INTO `position_county` VALUES ('1401', '370700000000', '370786000000', '昌邑市');
INSERT INTO `position_county` VALUES ('1402', '370800000000', '370801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1403', '370800000000', '370811000000', '任城区');
INSERT INTO `position_county` VALUES ('1404', '370800000000', '370812000000', '兖州区');
INSERT INTO `position_county` VALUES ('1405', '370800000000', '370826000000', '微山县');
INSERT INTO `position_county` VALUES ('1406', '370800000000', '370827000000', '鱼台县');
INSERT INTO `position_county` VALUES ('1407', '370800000000', '370828000000', '金乡县');
INSERT INTO `position_county` VALUES ('1408', '370800000000', '370829000000', '嘉祥县');
INSERT INTO `position_county` VALUES ('1409', '370800000000', '370830000000', '汶上县');
INSERT INTO `position_county` VALUES ('1410', '370800000000', '370831000000', '泗水县');
INSERT INTO `position_county` VALUES ('1411', '370800000000', '370832000000', '梁山县');
INSERT INTO `position_county` VALUES ('1412', '370800000000', '370881000000', '曲阜市');
INSERT INTO `position_county` VALUES ('1413', '370800000000', '370883000000', '邹城市');
INSERT INTO `position_county` VALUES ('1414', '370900000000', '370901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1415', '370900000000', '370902000000', '泰山区');
INSERT INTO `position_county` VALUES ('1416', '370900000000', '370911000000', '岱岳区');
INSERT INTO `position_county` VALUES ('1417', '370900000000', '370921000000', '宁阳县');
INSERT INTO `position_county` VALUES ('1418', '370900000000', '370923000000', '东平县');
INSERT INTO `position_county` VALUES ('1419', '370900000000', '370982000000', '新泰市');
INSERT INTO `position_county` VALUES ('1420', '370900000000', '370983000000', '肥城市');
INSERT INTO `position_county` VALUES ('1421', '371000000000', '371001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1422', '371000000000', '371002000000', '环翠区');
INSERT INTO `position_county` VALUES ('1423', '371000000000', '371003000000', '文登区');
INSERT INTO `position_county` VALUES ('1424', '371000000000', '371082000000', '荣成市');
INSERT INTO `position_county` VALUES ('1425', '371000000000', '371083000000', '乳山市');
INSERT INTO `position_county` VALUES ('1426', '371100000000', '371101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1427', '371100000000', '371102000000', '东港区');
INSERT INTO `position_county` VALUES ('1428', '371100000000', '371103000000', '岚山区');
INSERT INTO `position_county` VALUES ('1429', '371100000000', '371121000000', '五莲县');
INSERT INTO `position_county` VALUES ('1430', '371100000000', '371122000000', '莒县');
INSERT INTO `position_county` VALUES ('1431', '371200000000', '371201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1432', '371200000000', '371202000000', '莱城区');
INSERT INTO `position_county` VALUES ('1433', '371200000000', '371203000000', '钢城区');
INSERT INTO `position_county` VALUES ('1434', '371300000000', '371301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1435', '371300000000', '371302000000', '兰山区');
INSERT INTO `position_county` VALUES ('1436', '371300000000', '371311000000', '罗庄区');
INSERT INTO `position_county` VALUES ('1437', '371300000000', '371312000000', '河东区');
INSERT INTO `position_county` VALUES ('1438', '371300000000', '371321000000', '沂南县');
INSERT INTO `position_county` VALUES ('1439', '371300000000', '371322000000', '郯城县');
INSERT INTO `position_county` VALUES ('1440', '371300000000', '371323000000', '沂水县');
INSERT INTO `position_county` VALUES ('1441', '371300000000', '371324000000', '兰陵县');
INSERT INTO `position_county` VALUES ('1442', '371300000000', '371325000000', '费县');
INSERT INTO `position_county` VALUES ('1443', '371300000000', '371326000000', '平邑县');
INSERT INTO `position_county` VALUES ('1444', '371300000000', '371327000000', '莒南县');
INSERT INTO `position_county` VALUES ('1445', '371300000000', '371328000000', '蒙阴县');
INSERT INTO `position_county` VALUES ('1446', '371300000000', '371329000000', '临沭县');
INSERT INTO `position_county` VALUES ('1447', '371400000000', '371401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1448', '371400000000', '371402000000', '德城区');
INSERT INTO `position_county` VALUES ('1449', '371400000000', '371403000000', '陵城区');
INSERT INTO `position_county` VALUES ('1450', '371400000000', '371422000000', '宁津县');
INSERT INTO `position_county` VALUES ('1451', '371400000000', '371423000000', '庆云县');
INSERT INTO `position_county` VALUES ('1452', '371400000000', '371424000000', '临邑县');
INSERT INTO `position_county` VALUES ('1453', '371400000000', '371425000000', '齐河县');
INSERT INTO `position_county` VALUES ('1454', '371400000000', '371426000000', '平原县');
INSERT INTO `position_county` VALUES ('1455', '371400000000', '371427000000', '夏津县');
INSERT INTO `position_county` VALUES ('1456', '371400000000', '371428000000', '武城县');
INSERT INTO `position_county` VALUES ('1457', '371400000000', '371481000000', '乐陵市');
INSERT INTO `position_county` VALUES ('1458', '371400000000', '371482000000', '禹城市');
INSERT INTO `position_county` VALUES ('1459', '371500000000', '371501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1460', '371500000000', '371502000000', '东昌府区');
INSERT INTO `position_county` VALUES ('1461', '371500000000', '371521000000', '阳谷县');
INSERT INTO `position_county` VALUES ('1462', '371500000000', '371522000000', '莘县');
INSERT INTO `position_county` VALUES ('1463', '371500000000', '371523000000', '茌平县');
INSERT INTO `position_county` VALUES ('1464', '371500000000', '371524000000', '东阿县');
INSERT INTO `position_county` VALUES ('1465', '371500000000', '371525000000', '冠县');
INSERT INTO `position_county` VALUES ('1466', '371500000000', '371526000000', '高唐县');
INSERT INTO `position_county` VALUES ('1467', '371500000000', '371581000000', '临清市');
INSERT INTO `position_county` VALUES ('1468', '371600000000', '371601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1469', '371600000000', '371602000000', '滨城区');
INSERT INTO `position_county` VALUES ('1470', '371600000000', '371603000000', '沾化区');
INSERT INTO `position_county` VALUES ('1471', '371600000000', '371621000000', '惠民县');
INSERT INTO `position_county` VALUES ('1472', '371600000000', '371622000000', '阳信县');
INSERT INTO `position_county` VALUES ('1473', '371600000000', '371623000000', '无棣县');
INSERT INTO `position_county` VALUES ('1474', '371600000000', '371625000000', '博兴县');
INSERT INTO `position_county` VALUES ('1475', '371600000000', '371626000000', '邹平县');
INSERT INTO `position_county` VALUES ('1476', '371700000000', '371701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1477', '371700000000', '371702000000', '牡丹区');
INSERT INTO `position_county` VALUES ('1478', '371700000000', '371721000000', '曹县');
INSERT INTO `position_county` VALUES ('1479', '371700000000', '371722000000', '单县');
INSERT INTO `position_county` VALUES ('1480', '371700000000', '371723000000', '成武县');
INSERT INTO `position_county` VALUES ('1481', '371700000000', '371724000000', '巨野县');
INSERT INTO `position_county` VALUES ('1482', '371700000000', '371725000000', '郓城县');
INSERT INTO `position_county` VALUES ('1483', '371700000000', '371726000000', '鄄城县');
INSERT INTO `position_county` VALUES ('1484', '371700000000', '371727000000', '定陶县');
INSERT INTO `position_county` VALUES ('1485', '371700000000', '371728000000', '东明县');
INSERT INTO `position_county` VALUES ('1486', '410100000000', '410101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1487', '410100000000', '410102000000', '中原区');
INSERT INTO `position_county` VALUES ('1488', '410100000000', '410103000000', '二七区');
INSERT INTO `position_county` VALUES ('1489', '410100000000', '410104000000', '管城回族区');
INSERT INTO `position_county` VALUES ('1490', '410100000000', '410105000000', '金水区');
INSERT INTO `position_county` VALUES ('1491', '410100000000', '410106000000', '上街区');
INSERT INTO `position_county` VALUES ('1492', '410100000000', '410108000000', '惠济区');
INSERT INTO `position_county` VALUES ('1493', '410100000000', '410122000000', '中牟县');
INSERT INTO `position_county` VALUES ('1494', '410100000000', '410181000000', '巩义市');
INSERT INTO `position_county` VALUES ('1495', '410100000000', '410182000000', '荥阳市');
INSERT INTO `position_county` VALUES ('1496', '410100000000', '410183000000', '新密市');
INSERT INTO `position_county` VALUES ('1497', '410100000000', '410184000000', '新郑市');
INSERT INTO `position_county` VALUES ('1498', '410100000000', '410185000000', '登封市');
INSERT INTO `position_county` VALUES ('1499', '410200000000', '410201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1500', '410200000000', '410202000000', '龙亭区');
INSERT INTO `position_county` VALUES ('1501', '410200000000', '410203000000', '顺河回族区');
INSERT INTO `position_county` VALUES ('1502', '410200000000', '410204000000', '鼓楼区');
INSERT INTO `position_county` VALUES ('1503', '410200000000', '410205000000', '禹王台区');
INSERT INTO `position_county` VALUES ('1504', '410200000000', '410211000000', '金明区');
INSERT INTO `position_county` VALUES ('1505', '410200000000', '410212000000', '祥符区');
INSERT INTO `position_county` VALUES ('1506', '410200000000', '410221000000', '杞县');
INSERT INTO `position_county` VALUES ('1507', '410200000000', '410222000000', '通许县');
INSERT INTO `position_county` VALUES ('1508', '410200000000', '410223000000', '尉氏县');
INSERT INTO `position_county` VALUES ('1509', '410200000000', '410225000000', '兰考县');
INSERT INTO `position_county` VALUES ('1510', '410300000000', '410301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1511', '410300000000', '410302000000', '老城区');
INSERT INTO `position_county` VALUES ('1512', '410300000000', '410303000000', '西工区');
INSERT INTO `position_county` VALUES ('1513', '410300000000', '410304000000', '瀍河回族区');
INSERT INTO `position_county` VALUES ('1514', '410300000000', '410305000000', '涧西区');
INSERT INTO `position_county` VALUES ('1515', '410300000000', '410306000000', '吉利区');
INSERT INTO `position_county` VALUES ('1516', '410300000000', '410311000000', '洛龙区');
INSERT INTO `position_county` VALUES ('1517', '410300000000', '410322000000', '孟津县');
INSERT INTO `position_county` VALUES ('1518', '410300000000', '410323000000', '新安县');
INSERT INTO `position_county` VALUES ('1519', '410300000000', '410324000000', '栾川县');
INSERT INTO `position_county` VALUES ('1520', '410300000000', '410325000000', '嵩县');
INSERT INTO `position_county` VALUES ('1521', '410300000000', '410326000000', '汝阳县');
INSERT INTO `position_county` VALUES ('1522', '410300000000', '410327000000', '宜阳县');
INSERT INTO `position_county` VALUES ('1523', '410300000000', '410328000000', '洛宁县');
INSERT INTO `position_county` VALUES ('1524', '410300000000', '410329000000', '伊川县');
INSERT INTO `position_county` VALUES ('1525', '410300000000', '410381000000', '偃师市');
INSERT INTO `position_county` VALUES ('1526', '410400000000', '410401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1527', '410400000000', '410402000000', '新华区');
INSERT INTO `position_county` VALUES ('1528', '410400000000', '410403000000', '卫东区');
INSERT INTO `position_county` VALUES ('1529', '410400000000', '410404000000', '石龙区');
INSERT INTO `position_county` VALUES ('1530', '410400000000', '410411000000', '湛河区');
INSERT INTO `position_county` VALUES ('1531', '410400000000', '410421000000', '宝丰县');
INSERT INTO `position_county` VALUES ('1532', '410400000000', '410422000000', '叶县');
INSERT INTO `position_county` VALUES ('1533', '410400000000', '410423000000', '鲁山县');
INSERT INTO `position_county` VALUES ('1534', '410400000000', '410425000000', '郏县');
INSERT INTO `position_county` VALUES ('1535', '410400000000', '410481000000', '舞钢市');
INSERT INTO `position_county` VALUES ('1536', '410400000000', '410482000000', '汝州市');
INSERT INTO `position_county` VALUES ('1537', '410500000000', '410501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1538', '410500000000', '410502000000', '文峰区');
INSERT INTO `position_county` VALUES ('1539', '410500000000', '410503000000', '北关区');
INSERT INTO `position_county` VALUES ('1540', '410500000000', '410505000000', '殷都区');
INSERT INTO `position_county` VALUES ('1541', '410500000000', '410506000000', '龙安区');
INSERT INTO `position_county` VALUES ('1542', '410500000000', '410522000000', '安阳县');
INSERT INTO `position_county` VALUES ('1543', '410500000000', '410523000000', '汤阴县');
INSERT INTO `position_county` VALUES ('1544', '410500000000', '410526000000', '滑县');
INSERT INTO `position_county` VALUES ('1545', '410500000000', '410527000000', '内黄县');
INSERT INTO `position_county` VALUES ('1546', '410500000000', '410581000000', '林州市');
INSERT INTO `position_county` VALUES ('1547', '410600000000', '410601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1548', '410600000000', '410602000000', '鹤山区');
INSERT INTO `position_county` VALUES ('1549', '410600000000', '410603000000', '山城区');
INSERT INTO `position_county` VALUES ('1550', '410600000000', '410611000000', '淇滨区');
INSERT INTO `position_county` VALUES ('1551', '410600000000', '410621000000', '浚县');
INSERT INTO `position_county` VALUES ('1552', '410600000000', '410622000000', '淇县');
INSERT INTO `position_county` VALUES ('1553', '410700000000', '410701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1554', '410700000000', '410702000000', '红旗区');
INSERT INTO `position_county` VALUES ('1555', '410700000000', '410703000000', '卫滨区');
INSERT INTO `position_county` VALUES ('1556', '410700000000', '410704000000', '凤泉区');
INSERT INTO `position_county` VALUES ('1557', '410700000000', '410711000000', '牧野区');
INSERT INTO `position_county` VALUES ('1558', '410700000000', '410721000000', '新乡县');
INSERT INTO `position_county` VALUES ('1559', '410700000000', '410724000000', '获嘉县');
INSERT INTO `position_county` VALUES ('1560', '410700000000', '410725000000', '原阳县');
INSERT INTO `position_county` VALUES ('1561', '410700000000', '410726000000', '延津县');
INSERT INTO `position_county` VALUES ('1562', '410700000000', '410727000000', '封丘县');
INSERT INTO `position_county` VALUES ('1563', '410700000000', '410728000000', '长垣县');
INSERT INTO `position_county` VALUES ('1564', '410700000000', '410781000000', '卫辉市');
INSERT INTO `position_county` VALUES ('1565', '410700000000', '410782000000', '辉县市');
INSERT INTO `position_county` VALUES ('1566', '410800000000', '410801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1567', '410800000000', '410802000000', '解放区');
INSERT INTO `position_county` VALUES ('1568', '410800000000', '410803000000', '中站区');
INSERT INTO `position_county` VALUES ('1569', '410800000000', '410804000000', '马村区');
INSERT INTO `position_county` VALUES ('1570', '410800000000', '410811000000', '山阳区');
INSERT INTO `position_county` VALUES ('1571', '410800000000', '410821000000', '修武县');
INSERT INTO `position_county` VALUES ('1572', '410800000000', '410822000000', '博爱县');
INSERT INTO `position_county` VALUES ('1573', '410800000000', '410823000000', '武陟县');
INSERT INTO `position_county` VALUES ('1574', '410800000000', '410825000000', '温县');
INSERT INTO `position_county` VALUES ('1575', '410800000000', '410882000000', '沁阳市');
INSERT INTO `position_county` VALUES ('1576', '410800000000', '410883000000', '孟州市');
INSERT INTO `position_county` VALUES ('1577', '410900000000', '410901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1578', '410900000000', '410902000000', '华龙区');
INSERT INTO `position_county` VALUES ('1579', '410900000000', '410922000000', '清丰县');
INSERT INTO `position_county` VALUES ('1580', '410900000000', '410923000000', '南乐县');
INSERT INTO `position_county` VALUES ('1581', '410900000000', '410926000000', '范县');
INSERT INTO `position_county` VALUES ('1582', '410900000000', '410927000000', '台前县');
INSERT INTO `position_county` VALUES ('1583', '410900000000', '410928000000', '濮阳县');
INSERT INTO `position_county` VALUES ('1584', '411000000000', '411001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1585', '411000000000', '411002000000', '魏都区');
INSERT INTO `position_county` VALUES ('1586', '411000000000', '411023000000', '许昌县');
INSERT INTO `position_county` VALUES ('1587', '411000000000', '411024000000', '鄢陵县');
INSERT INTO `position_county` VALUES ('1588', '411000000000', '411025000000', '襄城县');
INSERT INTO `position_county` VALUES ('1589', '411000000000', '411081000000', '禹州市');
INSERT INTO `position_county` VALUES ('1590', '411000000000', '411082000000', '长葛市');
INSERT INTO `position_county` VALUES ('1591', '411100000000', '411101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1592', '411100000000', '411102000000', '源汇区');
INSERT INTO `position_county` VALUES ('1593', '411100000000', '411103000000', '郾城区');
INSERT INTO `position_county` VALUES ('1594', '411100000000', '411104000000', '召陵区');
INSERT INTO `position_county` VALUES ('1595', '411100000000', '411121000000', '舞阳县');
INSERT INTO `position_county` VALUES ('1596', '411100000000', '411122000000', '临颍县');
INSERT INTO `position_county` VALUES ('1597', '411200000000', '411201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1598', '411200000000', '411202000000', '湖滨区');
INSERT INTO `position_county` VALUES ('1599', '411200000000', '411221000000', '渑池县');
INSERT INTO `position_county` VALUES ('1600', '411200000000', '411222000000', '陕县');
INSERT INTO `position_county` VALUES ('1601', '411200000000', '411224000000', '卢氏县');
INSERT INTO `position_county` VALUES ('1602', '411200000000', '411281000000', '义马市');
INSERT INTO `position_county` VALUES ('1603', '411200000000', '411282000000', '灵宝市');
INSERT INTO `position_county` VALUES ('1604', '411300000000', '411301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1605', '411300000000', '411302000000', '宛城区');
INSERT INTO `position_county` VALUES ('1606', '411300000000', '411303000000', '卧龙区');
INSERT INTO `position_county` VALUES ('1607', '411300000000', '411321000000', '南召县');
INSERT INTO `position_county` VALUES ('1608', '411300000000', '411322000000', '方城县');
INSERT INTO `position_county` VALUES ('1609', '411300000000', '411323000000', '西峡县');
INSERT INTO `position_county` VALUES ('1610', '411300000000', '411324000000', '镇平县');
INSERT INTO `position_county` VALUES ('1611', '411300000000', '411325000000', '内乡县');
INSERT INTO `position_county` VALUES ('1612', '411300000000', '411326000000', '淅川县');
INSERT INTO `position_county` VALUES ('1613', '411300000000', '411327000000', '社旗县');
INSERT INTO `position_county` VALUES ('1614', '411300000000', '411328000000', '唐河县');
INSERT INTO `position_county` VALUES ('1615', '411300000000', '411329000000', '新野县');
INSERT INTO `position_county` VALUES ('1616', '411300000000', '411330000000', '桐柏县');
INSERT INTO `position_county` VALUES ('1617', '411300000000', '411381000000', '邓州市');
INSERT INTO `position_county` VALUES ('1618', '411400000000', '411401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1619', '411400000000', '411402000000', '梁园区');
INSERT INTO `position_county` VALUES ('1620', '411400000000', '411403000000', '睢阳区');
INSERT INTO `position_county` VALUES ('1621', '411400000000', '411421000000', '民权县');
INSERT INTO `position_county` VALUES ('1622', '411400000000', '411422000000', '睢县');
INSERT INTO `position_county` VALUES ('1623', '411400000000', '411423000000', '宁陵县');
INSERT INTO `position_county` VALUES ('1624', '411400000000', '411424000000', '柘城县');
INSERT INTO `position_county` VALUES ('1625', '411400000000', '411425000000', '虞城县');
INSERT INTO `position_county` VALUES ('1626', '411400000000', '411426000000', '夏邑县');
INSERT INTO `position_county` VALUES ('1627', '411400000000', '411481000000', '永城市');
INSERT INTO `position_county` VALUES ('1628', '411500000000', '411501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1629', '411500000000', '411502000000', '浉河区');
INSERT INTO `position_county` VALUES ('1630', '411500000000', '411503000000', '平桥区');
INSERT INTO `position_county` VALUES ('1631', '411500000000', '411521000000', '罗山县');
INSERT INTO `position_county` VALUES ('1632', '411500000000', '411522000000', '光山县');
INSERT INTO `position_county` VALUES ('1633', '411500000000', '411523000000', '新县');
INSERT INTO `position_county` VALUES ('1634', '411500000000', '411524000000', '商城县');
INSERT INTO `position_county` VALUES ('1635', '411500000000', '411525000000', '固始县');
INSERT INTO `position_county` VALUES ('1636', '411500000000', '411526000000', '潢川县');
INSERT INTO `position_county` VALUES ('1637', '411500000000', '411527000000', '淮滨县');
INSERT INTO `position_county` VALUES ('1638', '411500000000', '411528000000', '息县');
INSERT INTO `position_county` VALUES ('1639', '411600000000', '411601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1640', '411600000000', '411602000000', '川汇区');
INSERT INTO `position_county` VALUES ('1641', '411600000000', '411621000000', '扶沟县');
INSERT INTO `position_county` VALUES ('1642', '411600000000', '411622000000', '西华县');
INSERT INTO `position_county` VALUES ('1643', '411600000000', '411623000000', '商水县');
INSERT INTO `position_county` VALUES ('1644', '411600000000', '411624000000', '沈丘县');
INSERT INTO `position_county` VALUES ('1645', '411600000000', '411625000000', '郸城县');
INSERT INTO `position_county` VALUES ('1646', '411600000000', '411626000000', '淮阳县');
INSERT INTO `position_county` VALUES ('1647', '411600000000', '411627000000', '太康县');
INSERT INTO `position_county` VALUES ('1648', '411600000000', '411628000000', '鹿邑县');
INSERT INTO `position_county` VALUES ('1649', '411600000000', '411681000000', '项城市');
INSERT INTO `position_county` VALUES ('1650', '411700000000', '411701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1651', '411700000000', '411702000000', '驿城区');
INSERT INTO `position_county` VALUES ('1652', '411700000000', '411721000000', '西平县');
INSERT INTO `position_county` VALUES ('1653', '411700000000', '411722000000', '上蔡县');
INSERT INTO `position_county` VALUES ('1654', '411700000000', '411723000000', '平舆县');
INSERT INTO `position_county` VALUES ('1655', '411700000000', '411724000000', '正阳县');
INSERT INTO `position_county` VALUES ('1656', '411700000000', '411725000000', '确山县');
INSERT INTO `position_county` VALUES ('1657', '411700000000', '411726000000', '泌阳县');
INSERT INTO `position_county` VALUES ('1658', '411700000000', '411727000000', '汝南县');
INSERT INTO `position_county` VALUES ('1659', '411700000000', '411728000000', '遂平县');
INSERT INTO `position_county` VALUES ('1660', '411700000000', '411729000000', '新蔡县');
INSERT INTO `position_county` VALUES ('1661', '419000000000', '419001000000', '济源市');
INSERT INTO `position_county` VALUES ('1662', '420100000000', '420101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1663', '420100000000', '420102000000', '江岸区');
INSERT INTO `position_county` VALUES ('1664', '420100000000', '420103000000', '江汉区');
INSERT INTO `position_county` VALUES ('1665', '420100000000', '420104000000', '硚口区');
INSERT INTO `position_county` VALUES ('1666', '420100000000', '420105000000', '汉阳区');
INSERT INTO `position_county` VALUES ('1667', '420100000000', '420106000000', '武昌区');
INSERT INTO `position_county` VALUES ('1668', '420100000000', '420107000000', '青山区');
INSERT INTO `position_county` VALUES ('1669', '420100000000', '420111000000', '洪山区');
INSERT INTO `position_county` VALUES ('1670', '420100000000', '420112000000', '东西湖区');
INSERT INTO `position_county` VALUES ('1671', '420100000000', '420113000000', '汉南区');
INSERT INTO `position_county` VALUES ('1672', '420100000000', '420114000000', '蔡甸区');
INSERT INTO `position_county` VALUES ('1673', '420100000000', '420115000000', '江夏区');
INSERT INTO `position_county` VALUES ('1674', '420100000000', '420116000000', '黄陂区');
INSERT INTO `position_county` VALUES ('1675', '420100000000', '420117000000', '新洲区');
INSERT INTO `position_county` VALUES ('1676', '420200000000', '420201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1677', '420200000000', '420202000000', '黄石港区');
INSERT INTO `position_county` VALUES ('1678', '420200000000', '420203000000', '西塞山区');
INSERT INTO `position_county` VALUES ('1679', '420200000000', '420204000000', '下陆区');
INSERT INTO `position_county` VALUES ('1680', '420200000000', '420205000000', '铁山区');
INSERT INTO `position_county` VALUES ('1681', '420200000000', '420222000000', '阳新县');
INSERT INTO `position_county` VALUES ('1682', '420200000000', '420281000000', '大冶市');
INSERT INTO `position_county` VALUES ('1683', '420300000000', '420301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1684', '420300000000', '420302000000', '茅箭区');
INSERT INTO `position_county` VALUES ('1685', '420300000000', '420303000000', '张湾区');
INSERT INTO `position_county` VALUES ('1686', '420300000000', '420304000000', '郧阳区');
INSERT INTO `position_county` VALUES ('1687', '420300000000', '420322000000', '郧西县');
INSERT INTO `position_county` VALUES ('1688', '420300000000', '420323000000', '竹山县');
INSERT INTO `position_county` VALUES ('1689', '420300000000', '420324000000', '竹溪县');
INSERT INTO `position_county` VALUES ('1690', '420300000000', '420325000000', '房县');
INSERT INTO `position_county` VALUES ('1691', '420300000000', '420381000000', '丹江口市');
INSERT INTO `position_county` VALUES ('1692', '420500000000', '420501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1693', '420500000000', '420502000000', '西陵区');
INSERT INTO `position_county` VALUES ('1694', '420500000000', '420503000000', '伍家岗区');
INSERT INTO `position_county` VALUES ('1695', '420500000000', '420504000000', '点军区');
INSERT INTO `position_county` VALUES ('1696', '420500000000', '420505000000', '猇亭区');
INSERT INTO `position_county` VALUES ('1697', '420500000000', '420506000000', '夷陵区');
INSERT INTO `position_county` VALUES ('1698', '420500000000', '420525000000', '远安县');
INSERT INTO `position_county` VALUES ('1699', '420500000000', '420526000000', '兴山县');
INSERT INTO `position_county` VALUES ('1700', '420500000000', '420527000000', '秭归县');
INSERT INTO `position_county` VALUES ('1701', '420500000000', '420528000000', '长阳土家族自治县');
INSERT INTO `position_county` VALUES ('1702', '420500000000', '420529000000', '五峰土家族自治县');
INSERT INTO `position_county` VALUES ('1703', '420500000000', '420581000000', '宜都市');
INSERT INTO `position_county` VALUES ('1704', '420500000000', '420582000000', '当阳市');
INSERT INTO `position_county` VALUES ('1705', '420500000000', '420583000000', '枝江市');
INSERT INTO `position_county` VALUES ('1706', '420600000000', '420601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1707', '420600000000', '420602000000', '襄城区');
INSERT INTO `position_county` VALUES ('1708', '420600000000', '420606000000', '樊城区');
INSERT INTO `position_county` VALUES ('1709', '420600000000', '420607000000', '襄州区');
INSERT INTO `position_county` VALUES ('1710', '420600000000', '420624000000', '南漳县');
INSERT INTO `position_county` VALUES ('1711', '420600000000', '420625000000', '谷城县');
INSERT INTO `position_county` VALUES ('1712', '420600000000', '420626000000', '保康县');
INSERT INTO `position_county` VALUES ('1713', '420600000000', '420682000000', '老河口市');
INSERT INTO `position_county` VALUES ('1714', '420600000000', '420683000000', '枣阳市');
INSERT INTO `position_county` VALUES ('1715', '420600000000', '420684000000', '宜城市');
INSERT INTO `position_county` VALUES ('1716', '420700000000', '420701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1717', '420700000000', '420702000000', '梁子湖区');
INSERT INTO `position_county` VALUES ('1718', '420700000000', '420703000000', '华容区');
INSERT INTO `position_county` VALUES ('1719', '420700000000', '420704000000', '鄂城区');
INSERT INTO `position_county` VALUES ('1720', '420800000000', '420801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1721', '420800000000', '420802000000', '东宝区');
INSERT INTO `position_county` VALUES ('1722', '420800000000', '420804000000', '掇刀区');
INSERT INTO `position_county` VALUES ('1723', '420800000000', '420821000000', '京山县');
INSERT INTO `position_county` VALUES ('1724', '420800000000', '420822000000', '沙洋县');
INSERT INTO `position_county` VALUES ('1725', '420800000000', '420881000000', '钟祥市');
INSERT INTO `position_county` VALUES ('1726', '420900000000', '420901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1727', '420900000000', '420902000000', '孝南区');
INSERT INTO `position_county` VALUES ('1728', '420900000000', '420921000000', '孝昌县');
INSERT INTO `position_county` VALUES ('1729', '420900000000', '420922000000', '大悟县');
INSERT INTO `position_county` VALUES ('1730', '420900000000', '420923000000', '云梦县');
INSERT INTO `position_county` VALUES ('1731', '420900000000', '420981000000', '应城市');
INSERT INTO `position_county` VALUES ('1732', '420900000000', '420982000000', '安陆市');
INSERT INTO `position_county` VALUES ('1733', '420900000000', '420984000000', '汉川市');
INSERT INTO `position_county` VALUES ('1734', '421000000000', '421001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1735', '421000000000', '421002000000', '沙市区');
INSERT INTO `position_county` VALUES ('1736', '421000000000', '421003000000', '荆州区');
INSERT INTO `position_county` VALUES ('1737', '421000000000', '421022000000', '公安县');
INSERT INTO `position_county` VALUES ('1738', '421000000000', '421023000000', '监利县');
INSERT INTO `position_county` VALUES ('1739', '421000000000', '421024000000', '江陵县');
INSERT INTO `position_county` VALUES ('1740', '421000000000', '421081000000', '石首市');
INSERT INTO `position_county` VALUES ('1741', '421000000000', '421083000000', '洪湖市');
INSERT INTO `position_county` VALUES ('1742', '421000000000', '421087000000', '松滋市');
INSERT INTO `position_county` VALUES ('1743', '421100000000', '421101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1744', '421100000000', '421102000000', '黄州区');
INSERT INTO `position_county` VALUES ('1745', '421100000000', '421121000000', '团风县');
INSERT INTO `position_county` VALUES ('1746', '421100000000', '421122000000', '红安县');
INSERT INTO `position_county` VALUES ('1747', '421100000000', '421123000000', '罗田县');
INSERT INTO `position_county` VALUES ('1748', '421100000000', '421124000000', '英山县');
INSERT INTO `position_county` VALUES ('1749', '421100000000', '421125000000', '浠水县');
INSERT INTO `position_county` VALUES ('1750', '421100000000', '421126000000', '蕲春县');
INSERT INTO `position_county` VALUES ('1751', '421100000000', '421127000000', '黄梅县');
INSERT INTO `position_county` VALUES ('1752', '421100000000', '421181000000', '麻城市');
INSERT INTO `position_county` VALUES ('1753', '421100000000', '421182000000', '武穴市');
INSERT INTO `position_county` VALUES ('1754', '421200000000', '421201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1755', '421200000000', '421202000000', '咸安区');
INSERT INTO `position_county` VALUES ('1756', '421200000000', '421221000000', '嘉鱼县');
INSERT INTO `position_county` VALUES ('1757', '421200000000', '421222000000', '通城县');
INSERT INTO `position_county` VALUES ('1758', '421200000000', '421223000000', '崇阳县');
INSERT INTO `position_county` VALUES ('1759', '421200000000', '421224000000', '通山县');
INSERT INTO `position_county` VALUES ('1760', '421200000000', '421281000000', '赤壁市');
INSERT INTO `position_county` VALUES ('1761', '421300000000', '421301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1762', '421300000000', '421303000000', '曾都区');
INSERT INTO `position_county` VALUES ('1763', '421300000000', '421321000000', '随县');
INSERT INTO `position_county` VALUES ('1764', '421300000000', '421381000000', '广水市');
INSERT INTO `position_county` VALUES ('1765', '422800000000', '422801000000', '恩施市');
INSERT INTO `position_county` VALUES ('1766', '422800000000', '422802000000', '利川市');
INSERT INTO `position_county` VALUES ('1767', '422800000000', '422822000000', '建始县');
INSERT INTO `position_county` VALUES ('1768', '422800000000', '422823000000', '巴东县');
INSERT INTO `position_county` VALUES ('1769', '422800000000', '422825000000', '宣恩县');
INSERT INTO `position_county` VALUES ('1770', '422800000000', '422826000000', '咸丰县');
INSERT INTO `position_county` VALUES ('1771', '422800000000', '422827000000', '来凤县');
INSERT INTO `position_county` VALUES ('1772', '422800000000', '422828000000', '鹤峰县');
INSERT INTO `position_county` VALUES ('1773', '429000000000', '429004000000', '仙桃市');
INSERT INTO `position_county` VALUES ('1774', '429000000000', '429005000000', '潜江市');
INSERT INTO `position_county` VALUES ('1775', '429000000000', '429006000000', '天门市');
INSERT INTO `position_county` VALUES ('1776', '429000000000', '429021000000', '神农架林区');
INSERT INTO `position_county` VALUES ('1777', '430100000000', '430101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1778', '430100000000', '430102000000', '芙蓉区');
INSERT INTO `position_county` VALUES ('1779', '430100000000', '430103000000', '天心区');
INSERT INTO `position_county` VALUES ('1780', '430100000000', '430104000000', '岳麓区');
INSERT INTO `position_county` VALUES ('1781', '430100000000', '430105000000', '开福区');
INSERT INTO `position_county` VALUES ('1782', '430100000000', '430111000000', '雨花区');
INSERT INTO `position_county` VALUES ('1783', '430100000000', '430112000000', '望城区');
INSERT INTO `position_county` VALUES ('1784', '430100000000', '430121000000', '长沙县');
INSERT INTO `position_county` VALUES ('1785', '430100000000', '430124000000', '宁乡县');
INSERT INTO `position_county` VALUES ('1786', '430100000000', '430181000000', '浏阳市');
INSERT INTO `position_county` VALUES ('1787', '430200000000', '430201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1788', '430200000000', '430202000000', '荷塘区');
INSERT INTO `position_county` VALUES ('1789', '430200000000', '430203000000', '芦淞区');
INSERT INTO `position_county` VALUES ('1790', '430200000000', '430204000000', '石峰区');
INSERT INTO `position_county` VALUES ('1791', '430200000000', '430211000000', '天元区');
INSERT INTO `position_county` VALUES ('1792', '430200000000', '430221000000', '株洲县');
INSERT INTO `position_county` VALUES ('1793', '430200000000', '430223000000', '攸县');
INSERT INTO `position_county` VALUES ('1794', '430200000000', '430224000000', '茶陵县');
INSERT INTO `position_county` VALUES ('1795', '430200000000', '430225000000', '炎陵县');
INSERT INTO `position_county` VALUES ('1796', '430200000000', '430281000000', '醴陵市');
INSERT INTO `position_county` VALUES ('1797', '430300000000', '430301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1798', '430300000000', '430302000000', '雨湖区');
INSERT INTO `position_county` VALUES ('1799', '430300000000', '430304000000', '岳塘区');
INSERT INTO `position_county` VALUES ('1800', '430300000000', '430321000000', '湘潭县');
INSERT INTO `position_county` VALUES ('1801', '430300000000', '430381000000', '湘乡市');
INSERT INTO `position_county` VALUES ('1802', '430300000000', '430382000000', '韶山市');
INSERT INTO `position_county` VALUES ('1803', '430400000000', '430401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1804', '430400000000', '430405000000', '珠晖区');
INSERT INTO `position_county` VALUES ('1805', '430400000000', '430406000000', '雁峰区');
INSERT INTO `position_county` VALUES ('1806', '430400000000', '430407000000', '石鼓区');
INSERT INTO `position_county` VALUES ('1807', '430400000000', '430408000000', '蒸湘区');
INSERT INTO `position_county` VALUES ('1808', '430400000000', '430412000000', '南岳区');
INSERT INTO `position_county` VALUES ('1809', '430400000000', '430421000000', '衡阳县');
INSERT INTO `position_county` VALUES ('1810', '430400000000', '430422000000', '衡南县');
INSERT INTO `position_county` VALUES ('1811', '430400000000', '430423000000', '衡山县');
INSERT INTO `position_county` VALUES ('1812', '430400000000', '430424000000', '衡东县');
INSERT INTO `position_county` VALUES ('1813', '430400000000', '430426000000', '祁东县');
INSERT INTO `position_county` VALUES ('1814', '430400000000', '430481000000', '耒阳市');
INSERT INTO `position_county` VALUES ('1815', '430400000000', '430482000000', '常宁市');
INSERT INTO `position_county` VALUES ('1816', '430500000000', '430501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1817', '430500000000', '430502000000', '双清区');
INSERT INTO `position_county` VALUES ('1818', '430500000000', '430503000000', '大祥区');
INSERT INTO `position_county` VALUES ('1819', '430500000000', '430511000000', '北塔区');
INSERT INTO `position_county` VALUES ('1820', '430500000000', '430521000000', '邵东县');
INSERT INTO `position_county` VALUES ('1821', '430500000000', '430522000000', '新邵县');
INSERT INTO `position_county` VALUES ('1822', '430500000000', '430523000000', '邵阳县');
INSERT INTO `position_county` VALUES ('1823', '430500000000', '430524000000', '隆回县');
INSERT INTO `position_county` VALUES ('1824', '430500000000', '430525000000', '洞口县');
INSERT INTO `position_county` VALUES ('1825', '430500000000', '430527000000', '绥宁县');
INSERT INTO `position_county` VALUES ('1826', '430500000000', '430528000000', '新宁县');
INSERT INTO `position_county` VALUES ('1827', '430500000000', '430529000000', '城步苗族自治县');
INSERT INTO `position_county` VALUES ('1828', '430500000000', '430581000000', '武冈市');
INSERT INTO `position_county` VALUES ('1829', '430600000000', '430601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1830', '430600000000', '430602000000', '岳阳楼区');
INSERT INTO `position_county` VALUES ('1831', '430600000000', '430603000000', '云溪区');
INSERT INTO `position_county` VALUES ('1832', '430600000000', '430611000000', '君山区');
INSERT INTO `position_county` VALUES ('1833', '430600000000', '430621000000', '岳阳县');
INSERT INTO `position_county` VALUES ('1834', '430600000000', '430623000000', '华容县');
INSERT INTO `position_county` VALUES ('1835', '430600000000', '430624000000', '湘阴县');
INSERT INTO `position_county` VALUES ('1836', '430600000000', '430626000000', '平江县');
INSERT INTO `position_county` VALUES ('1837', '430600000000', '430681000000', '汨罗市');
INSERT INTO `position_county` VALUES ('1838', '430600000000', '430682000000', '临湘市');
INSERT INTO `position_county` VALUES ('1839', '430700000000', '430701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1840', '430700000000', '430702000000', '武陵区');
INSERT INTO `position_county` VALUES ('1841', '430700000000', '430703000000', '鼎城区');
INSERT INTO `position_county` VALUES ('1842', '430700000000', '430721000000', '安乡县');
INSERT INTO `position_county` VALUES ('1843', '430700000000', '430722000000', '汉寿县');
INSERT INTO `position_county` VALUES ('1844', '430700000000', '430723000000', '澧县');
INSERT INTO `position_county` VALUES ('1845', '430700000000', '430724000000', '临澧县');
INSERT INTO `position_county` VALUES ('1846', '430700000000', '430725000000', '桃源县');
INSERT INTO `position_county` VALUES ('1847', '430700000000', '430726000000', '石门县');
INSERT INTO `position_county` VALUES ('1848', '430700000000', '430781000000', '津市市');
INSERT INTO `position_county` VALUES ('1849', '430800000000', '430801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1850', '430800000000', '430802000000', '永定区');
INSERT INTO `position_county` VALUES ('1851', '430800000000', '430811000000', '武陵源区');
INSERT INTO `position_county` VALUES ('1852', '430800000000', '430821000000', '慈利县');
INSERT INTO `position_county` VALUES ('1853', '430800000000', '430822000000', '桑植县');
INSERT INTO `position_county` VALUES ('1854', '430900000000', '430901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1855', '430900000000', '430902000000', '资阳区');
INSERT INTO `position_county` VALUES ('1856', '430900000000', '430903000000', '赫山区');
INSERT INTO `position_county` VALUES ('1857', '430900000000', '430921000000', '南县');
INSERT INTO `position_county` VALUES ('1858', '430900000000', '430922000000', '桃江县');
INSERT INTO `position_county` VALUES ('1859', '430900000000', '430923000000', '安化县');
INSERT INTO `position_county` VALUES ('1860', '430900000000', '430981000000', '沅江市');
INSERT INTO `position_county` VALUES ('1861', '431000000000', '431001000000', '市辖区');
INSERT INTO `position_county` VALUES ('1862', '431000000000', '431002000000', '北湖区');
INSERT INTO `position_county` VALUES ('1863', '431000000000', '431003000000', '苏仙区');
INSERT INTO `position_county` VALUES ('1864', '431000000000', '431021000000', '桂阳县');
INSERT INTO `position_county` VALUES ('1865', '431000000000', '431022000000', '宜章县');
INSERT INTO `position_county` VALUES ('1866', '431000000000', '431023000000', '永兴县');
INSERT INTO `position_county` VALUES ('1867', '431000000000', '431024000000', '嘉禾县');
INSERT INTO `position_county` VALUES ('1868', '431000000000', '431025000000', '临武县');
INSERT INTO `position_county` VALUES ('1869', '431000000000', '431026000000', '汝城县');
INSERT INTO `position_county` VALUES ('1870', '431000000000', '431027000000', '桂东县');
INSERT INTO `position_county` VALUES ('1871', '431000000000', '431028000000', '安仁县');
INSERT INTO `position_county` VALUES ('1872', '431000000000', '431081000000', '资兴市');
INSERT INTO `position_county` VALUES ('1873', '431100000000', '431101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1874', '431100000000', '431102000000', '零陵区');
INSERT INTO `position_county` VALUES ('1875', '431100000000', '431103000000', '冷水滩区');
INSERT INTO `position_county` VALUES ('1876', '431100000000', '431121000000', '祁阳县');
INSERT INTO `position_county` VALUES ('1877', '431100000000', '431122000000', '东安县');
INSERT INTO `position_county` VALUES ('1878', '431100000000', '431123000000', '双牌县');
INSERT INTO `position_county` VALUES ('1879', '431100000000', '431124000000', '道县');
INSERT INTO `position_county` VALUES ('1880', '431100000000', '431125000000', '江永县');
INSERT INTO `position_county` VALUES ('1881', '431100000000', '431126000000', '宁远县');
INSERT INTO `position_county` VALUES ('1882', '431100000000', '431127000000', '蓝山县');
INSERT INTO `position_county` VALUES ('1883', '431100000000', '431128000000', '新田县');
INSERT INTO `position_county` VALUES ('1884', '431100000000', '431129000000', '江华瑶族自治县');
INSERT INTO `position_county` VALUES ('1885', '431200000000', '431201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1886', '431200000000', '431202000000', '鹤城区');
INSERT INTO `position_county` VALUES ('1887', '431200000000', '431221000000', '中方县');
INSERT INTO `position_county` VALUES ('1888', '431200000000', '431222000000', '沅陵县');
INSERT INTO `position_county` VALUES ('1889', '431200000000', '431223000000', '辰溪县');
INSERT INTO `position_county` VALUES ('1890', '431200000000', '431224000000', '溆浦县');
INSERT INTO `position_county` VALUES ('1891', '431200000000', '431225000000', '会同县');
INSERT INTO `position_county` VALUES ('1892', '431200000000', '431226000000', '麻阳苗族自治县');
INSERT INTO `position_county` VALUES ('1893', '431200000000', '431227000000', '新晃侗族自治县');
INSERT INTO `position_county` VALUES ('1894', '431200000000', '431228000000', '芷江侗族自治县');
INSERT INTO `position_county` VALUES ('1895', '431200000000', '431229000000', '靖州苗族侗族自治县');
INSERT INTO `position_county` VALUES ('1896', '431200000000', '431230000000', '通道侗族自治县');
INSERT INTO `position_county` VALUES ('1897', '431200000000', '431281000000', '洪江市');
INSERT INTO `position_county` VALUES ('1898', '431300000000', '431301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1899', '431300000000', '431302000000', '娄星区');
INSERT INTO `position_county` VALUES ('1900', '431300000000', '431321000000', '双峰县');
INSERT INTO `position_county` VALUES ('1901', '431300000000', '431322000000', '新化县');
INSERT INTO `position_county` VALUES ('1902', '431300000000', '431381000000', '冷水江市');
INSERT INTO `position_county` VALUES ('1903', '431300000000', '431382000000', '涟源市');
INSERT INTO `position_county` VALUES ('1904', '433100000000', '433101000000', '吉首市');
INSERT INTO `position_county` VALUES ('1905', '433100000000', '433122000000', '泸溪县');
INSERT INTO `position_county` VALUES ('1906', '433100000000', '433123000000', '凤凰县');
INSERT INTO `position_county` VALUES ('1907', '433100000000', '433124000000', '花垣县');
INSERT INTO `position_county` VALUES ('1908', '433100000000', '433125000000', '保靖县');
INSERT INTO `position_county` VALUES ('1909', '433100000000', '433126000000', '古丈县');
INSERT INTO `position_county` VALUES ('1910', '433100000000', '433127000000', '永顺县');
INSERT INTO `position_county` VALUES ('1911', '433100000000', '433130000000', '龙山县');
INSERT INTO `position_county` VALUES ('1912', '440100000000', '440101000000', '市辖区');
INSERT INTO `position_county` VALUES ('1913', '440100000000', '440103000000', '荔湾区');
INSERT INTO `position_county` VALUES ('1914', '440100000000', '440104000000', '越秀区');
INSERT INTO `position_county` VALUES ('1915', '440100000000', '440105000000', '海珠区');
INSERT INTO `position_county` VALUES ('1916', '440100000000', '440106000000', '天河区');
INSERT INTO `position_county` VALUES ('1917', '440100000000', '440111000000', '白云区');
INSERT INTO `position_county` VALUES ('1918', '440100000000', '440112000000', '黄埔区');
INSERT INTO `position_county` VALUES ('1919', '440100000000', '440113000000', '番禺区');
INSERT INTO `position_county` VALUES ('1920', '440100000000', '440114000000', '花都区');
INSERT INTO `position_county` VALUES ('1921', '440100000000', '440115000000', '南沙区');
INSERT INTO `position_county` VALUES ('1922', '440100000000', '440117000000', '从化区');
INSERT INTO `position_county` VALUES ('1923', '440100000000', '440118000000', '增城区');
INSERT INTO `position_county` VALUES ('1924', '440200000000', '440201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1925', '440200000000', '440203000000', '武江区');
INSERT INTO `position_county` VALUES ('1926', '440200000000', '440204000000', '浈江区');
INSERT INTO `position_county` VALUES ('1927', '440200000000', '440205000000', '曲江区');
INSERT INTO `position_county` VALUES ('1928', '440200000000', '440222000000', '始兴县');
INSERT INTO `position_county` VALUES ('1929', '440200000000', '440224000000', '仁化县');
INSERT INTO `position_county` VALUES ('1930', '440200000000', '440229000000', '翁源县');
INSERT INTO `position_county` VALUES ('1931', '440200000000', '440232000000', '乳源瑶族自治县');
INSERT INTO `position_county` VALUES ('1932', '440200000000', '440233000000', '新丰县');
INSERT INTO `position_county` VALUES ('1933', '440200000000', '440281000000', '乐昌市');
INSERT INTO `position_county` VALUES ('1934', '440200000000', '440282000000', '南雄市');
INSERT INTO `position_county` VALUES ('1935', '440300000000', '440301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1936', '440300000000', '440303000000', '罗湖区');
INSERT INTO `position_county` VALUES ('1937', '440300000000', '440304000000', '福田区');
INSERT INTO `position_county` VALUES ('1938', '440300000000', '440305000000', '南山区');
INSERT INTO `position_county` VALUES ('1939', '440300000000', '440306000000', '宝安区');
INSERT INTO `position_county` VALUES ('1940', '440300000000', '440307000000', '龙岗区');
INSERT INTO `position_county` VALUES ('1941', '440300000000', '440308000000', '盐田区');
INSERT INTO `position_county` VALUES ('1942', '440400000000', '440401000000', '市辖区');
INSERT INTO `position_county` VALUES ('1943', '440400000000', '440402000000', '香洲区');
INSERT INTO `position_county` VALUES ('1944', '440400000000', '440403000000', '斗门区');
INSERT INTO `position_county` VALUES ('1945', '440400000000', '440404000000', '金湾区');
INSERT INTO `position_county` VALUES ('1946', '440500000000', '440501000000', '市辖区');
INSERT INTO `position_county` VALUES ('1947', '440500000000', '440507000000', '龙湖区');
INSERT INTO `position_county` VALUES ('1948', '440500000000', '440511000000', '金平区');
INSERT INTO `position_county` VALUES ('1949', '440500000000', '440512000000', '濠江区');
INSERT INTO `position_county` VALUES ('1950', '440500000000', '440513000000', '潮阳区');
INSERT INTO `position_county` VALUES ('1951', '440500000000', '440514000000', '潮南区');
INSERT INTO `position_county` VALUES ('1952', '440500000000', '440515000000', '澄海区');
INSERT INTO `position_county` VALUES ('1953', '440500000000', '440523000000', '南澳县');
INSERT INTO `position_county` VALUES ('1954', '440600000000', '440601000000', '市辖区');
INSERT INTO `position_county` VALUES ('1955', '440600000000', '440604000000', '禅城区');
INSERT INTO `position_county` VALUES ('1956', '440600000000', '440605000000', '南海区');
INSERT INTO `position_county` VALUES ('1957', '440600000000', '440606000000', '顺德区');
INSERT INTO `position_county` VALUES ('1958', '440600000000', '440607000000', '三水区');
INSERT INTO `position_county` VALUES ('1959', '440600000000', '440608000000', '高明区');
INSERT INTO `position_county` VALUES ('1960', '440700000000', '440701000000', '市辖区');
INSERT INTO `position_county` VALUES ('1961', '440700000000', '440703000000', '蓬江区');
INSERT INTO `position_county` VALUES ('1962', '440700000000', '440704000000', '江海区');
INSERT INTO `position_county` VALUES ('1963', '440700000000', '440705000000', '新会区');
INSERT INTO `position_county` VALUES ('1964', '440700000000', '440781000000', '台山市');
INSERT INTO `position_county` VALUES ('1965', '440700000000', '440783000000', '开平市');
INSERT INTO `position_county` VALUES ('1966', '440700000000', '440784000000', '鹤山市');
INSERT INTO `position_county` VALUES ('1967', '440700000000', '440785000000', '恩平市');
INSERT INTO `position_county` VALUES ('1968', '440800000000', '440801000000', '市辖区');
INSERT INTO `position_county` VALUES ('1969', '440800000000', '440802000000', '赤坎区');
INSERT INTO `position_county` VALUES ('1970', '440800000000', '440803000000', '霞山区');
INSERT INTO `position_county` VALUES ('1971', '440800000000', '440804000000', '坡头区');
INSERT INTO `position_county` VALUES ('1972', '440800000000', '440811000000', '麻章区');
INSERT INTO `position_county` VALUES ('1973', '440800000000', '440823000000', '遂溪县');
INSERT INTO `position_county` VALUES ('1974', '440800000000', '440825000000', '徐闻县');
INSERT INTO `position_county` VALUES ('1975', '440800000000', '440881000000', '廉江市');
INSERT INTO `position_county` VALUES ('1976', '440800000000', '440882000000', '雷州市');
INSERT INTO `position_county` VALUES ('1977', '440800000000', '440883000000', '吴川市');
INSERT INTO `position_county` VALUES ('1978', '440900000000', '440901000000', '市辖区');
INSERT INTO `position_county` VALUES ('1979', '440900000000', '440902000000', '茂南区');
INSERT INTO `position_county` VALUES ('1980', '440900000000', '440904000000', '电白区');
INSERT INTO `position_county` VALUES ('1981', '440900000000', '440981000000', '高州市');
INSERT INTO `position_county` VALUES ('1982', '440900000000', '440982000000', '化州市');
INSERT INTO `position_county` VALUES ('1983', '440900000000', '440983000000', '信宜市');
INSERT INTO `position_county` VALUES ('1984', '441200000000', '441201000000', '市辖区');
INSERT INTO `position_county` VALUES ('1985', '441200000000', '441202000000', '端州区');
INSERT INTO `position_county` VALUES ('1986', '441200000000', '441203000000', '鼎湖区');
INSERT INTO `position_county` VALUES ('1987', '441200000000', '441204000000', '高要区');
INSERT INTO `position_county` VALUES ('1988', '441200000000', '441223000000', '广宁县');
INSERT INTO `position_county` VALUES ('1989', '441200000000', '441224000000', '怀集县');
INSERT INTO `position_county` VALUES ('1990', '441200000000', '441225000000', '封开县');
INSERT INTO `position_county` VALUES ('1991', '441200000000', '441226000000', '德庆县');
INSERT INTO `position_county` VALUES ('1992', '441200000000', '441284000000', '四会市');
INSERT INTO `position_county` VALUES ('1993', '441300000000', '441301000000', '市辖区');
INSERT INTO `position_county` VALUES ('1994', '441300000000', '441302000000', '惠城区');
INSERT INTO `position_county` VALUES ('1995', '441300000000', '441303000000', '惠阳区');
INSERT INTO `position_county` VALUES ('1996', '441300000000', '441322000000', '博罗县');
INSERT INTO `position_county` VALUES ('1997', '441300000000', '441323000000', '惠东县');
INSERT INTO `position_county` VALUES ('1998', '441300000000', '441324000000', '龙门县');
INSERT INTO `position_county` VALUES ('1999', '441400000000', '441401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2000', '441400000000', '441402000000', '梅江区');
INSERT INTO `position_county` VALUES ('2001', '441400000000', '441403000000', '梅县区');
INSERT INTO `position_county` VALUES ('2002', '441400000000', '441422000000', '大埔县');
INSERT INTO `position_county` VALUES ('2003', '441400000000', '441423000000', '丰顺县');
INSERT INTO `position_county` VALUES ('2004', '441400000000', '441424000000', '五华县');
INSERT INTO `position_county` VALUES ('2005', '441400000000', '441426000000', '平远县');
INSERT INTO `position_county` VALUES ('2006', '441400000000', '441427000000', '蕉岭县');
INSERT INTO `position_county` VALUES ('2007', '441400000000', '441481000000', '兴宁市');
INSERT INTO `position_county` VALUES ('2008', '441500000000', '441501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2009', '441500000000', '441502000000', '城区');
INSERT INTO `position_county` VALUES ('2010', '441500000000', '441521000000', '海丰县');
INSERT INTO `position_county` VALUES ('2011', '441500000000', '441523000000', '陆河县');
INSERT INTO `position_county` VALUES ('2012', '441500000000', '441581000000', '陆丰市');
INSERT INTO `position_county` VALUES ('2013', '441600000000', '441601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2014', '441600000000', '441602000000', '源城区');
INSERT INTO `position_county` VALUES ('2015', '441600000000', '441621000000', '紫金县');
INSERT INTO `position_county` VALUES ('2016', '441600000000', '441622000000', '龙川县');
INSERT INTO `position_county` VALUES ('2017', '441600000000', '441623000000', '连平县');
INSERT INTO `position_county` VALUES ('2018', '441600000000', '441624000000', '和平县');
INSERT INTO `position_county` VALUES ('2019', '441600000000', '441625000000', '东源县');
INSERT INTO `position_county` VALUES ('2020', '441700000000', '441701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2021', '441700000000', '441702000000', '江城区');
INSERT INTO `position_county` VALUES ('2022', '441700000000', '441704000000', '阳东区');
INSERT INTO `position_county` VALUES ('2023', '441700000000', '441721000000', '阳西县');
INSERT INTO `position_county` VALUES ('2024', '441700000000', '441781000000', '阳春市');
INSERT INTO `position_county` VALUES ('2025', '441800000000', '441801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2026', '441800000000', '441802000000', '清城区');
INSERT INTO `position_county` VALUES ('2027', '441800000000', '441803000000', '清新区');
INSERT INTO `position_county` VALUES ('2028', '441800000000', '441821000000', '佛冈县');
INSERT INTO `position_county` VALUES ('2029', '441800000000', '441823000000', '阳山县');
INSERT INTO `position_county` VALUES ('2030', '441800000000', '441825000000', '连山壮族瑶族自治县');
INSERT INTO `position_county` VALUES ('2031', '441800000000', '441826000000', '连南瑶族自治县');
INSERT INTO `position_county` VALUES ('2032', '441800000000', '441881000000', '英德市');
INSERT INTO `position_county` VALUES ('2033', '441800000000', '441882000000', '连州市');
INSERT INTO `position_county` VALUES ('2034', '441900000000', '0', '东莞市无县级区划');
INSERT INTO `position_county` VALUES ('2035', '442000000000', '1', '中山市无县级区划');
INSERT INTO `position_county` VALUES ('2036', '445100000000', '445101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2037', '445100000000', '445102000000', '湘桥区');
INSERT INTO `position_county` VALUES ('2038', '445100000000', '445103000000', '潮安区');
INSERT INTO `position_county` VALUES ('2039', '445100000000', '445122000000', '饶平县');
INSERT INTO `position_county` VALUES ('2040', '445200000000', '445201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2041', '445200000000', '445202000000', '榕城区');
INSERT INTO `position_county` VALUES ('2042', '445200000000', '445203000000', '揭东区');
INSERT INTO `position_county` VALUES ('2043', '445200000000', '445222000000', '揭西县');
INSERT INTO `position_county` VALUES ('2044', '445200000000', '445224000000', '惠来县');
INSERT INTO `position_county` VALUES ('2045', '445200000000', '445281000000', '普宁市');
INSERT INTO `position_county` VALUES ('2046', '445300000000', '445301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2047', '445300000000', '445302000000', '云城区');
INSERT INTO `position_county` VALUES ('2048', '445300000000', '445303000000', '云安区');
INSERT INTO `position_county` VALUES ('2049', '445300000000', '445321000000', '新兴县');
INSERT INTO `position_county` VALUES ('2050', '445300000000', '445322000000', '郁南县');
INSERT INTO `position_county` VALUES ('2051', '445300000000', '445381000000', '罗定市');
INSERT INTO `position_county` VALUES ('2052', '450100000000', '450101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2053', '450100000000', '450102000000', '兴宁区');
INSERT INTO `position_county` VALUES ('2054', '450100000000', '450103000000', '青秀区');
INSERT INTO `position_county` VALUES ('2055', '450100000000', '450105000000', '江南区');
INSERT INTO `position_county` VALUES ('2056', '450100000000', '450107000000', '西乡塘区');
INSERT INTO `position_county` VALUES ('2057', '450100000000', '450108000000', '良庆区');
INSERT INTO `position_county` VALUES ('2058', '450100000000', '450109000000', '邕宁区');
INSERT INTO `position_county` VALUES ('2059', '450100000000', '450110000000', '武鸣区');
INSERT INTO `position_county` VALUES ('2060', '450100000000', '450123000000', '隆安县');
INSERT INTO `position_county` VALUES ('2061', '450100000000', '450124000000', '马山县');
INSERT INTO `position_county` VALUES ('2062', '450100000000', '450125000000', '上林县');
INSERT INTO `position_county` VALUES ('2063', '450100000000', '450126000000', '宾阳县');
INSERT INTO `position_county` VALUES ('2064', '450100000000', '450127000000', '横县');
INSERT INTO `position_county` VALUES ('2065', '450200000000', '450201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2066', '450200000000', '450202000000', '城中区');
INSERT INTO `position_county` VALUES ('2067', '450200000000', '450203000000', '鱼峰区');
INSERT INTO `position_county` VALUES ('2068', '450200000000', '450204000000', '柳南区');
INSERT INTO `position_county` VALUES ('2069', '450200000000', '450205000000', '柳北区');
INSERT INTO `position_county` VALUES ('2070', '450200000000', '450221000000', '柳江县');
INSERT INTO `position_county` VALUES ('2071', '450200000000', '450222000000', '柳城县');
INSERT INTO `position_county` VALUES ('2072', '450200000000', '450223000000', '鹿寨县');
INSERT INTO `position_county` VALUES ('2073', '450200000000', '450224000000', '融安县');
INSERT INTO `position_county` VALUES ('2074', '450200000000', '450225000000', '融水苗族自治县');
INSERT INTO `position_county` VALUES ('2075', '450200000000', '450226000000', '三江侗族自治县');
INSERT INTO `position_county` VALUES ('2076', '450300000000', '450301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2077', '450300000000', '450302000000', '秀峰区');
INSERT INTO `position_county` VALUES ('2078', '450300000000', '450303000000', '叠彩区');
INSERT INTO `position_county` VALUES ('2079', '450300000000', '450304000000', '象山区');
INSERT INTO `position_county` VALUES ('2080', '450300000000', '450305000000', '七星区');
INSERT INTO `position_county` VALUES ('2081', '450300000000', '450311000000', '雁山区');
INSERT INTO `position_county` VALUES ('2082', '450300000000', '450312000000', '临桂区');
INSERT INTO `position_county` VALUES ('2083', '450300000000', '450321000000', '阳朔县');
INSERT INTO `position_county` VALUES ('2084', '450300000000', '450323000000', '灵川县');
INSERT INTO `position_county` VALUES ('2085', '450300000000', '450324000000', '全州县');
INSERT INTO `position_county` VALUES ('2086', '450300000000', '450325000000', '兴安县');
INSERT INTO `position_county` VALUES ('2087', '450300000000', '450326000000', '永福县');
INSERT INTO `position_county` VALUES ('2088', '450300000000', '450327000000', '灌阳县');
INSERT INTO `position_county` VALUES ('2089', '450300000000', '450328000000', '龙胜各族自治县');
INSERT INTO `position_county` VALUES ('2090', '450300000000', '450329000000', '资源县');
INSERT INTO `position_county` VALUES ('2091', '450300000000', '450330000000', '平乐县');
INSERT INTO `position_county` VALUES ('2092', '450300000000', '450331000000', '荔浦县');
INSERT INTO `position_county` VALUES ('2093', '450300000000', '450332000000', '恭城瑶族自治县');
INSERT INTO `position_county` VALUES ('2094', '450400000000', '450401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2095', '450400000000', '450403000000', '万秀区');
INSERT INTO `position_county` VALUES ('2096', '450400000000', '450405000000', '长洲区');
INSERT INTO `position_county` VALUES ('2097', '450400000000', '450406000000', '龙圩区');
INSERT INTO `position_county` VALUES ('2098', '450400000000', '450421000000', '苍梧县');
INSERT INTO `position_county` VALUES ('2099', '450400000000', '450422000000', '藤县');
INSERT INTO `position_county` VALUES ('2100', '450400000000', '450423000000', '蒙山县');
INSERT INTO `position_county` VALUES ('2101', '450400000000', '450481000000', '岑溪市');
INSERT INTO `position_county` VALUES ('2102', '450500000000', '450501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2103', '450500000000', '450502000000', '海城区');
INSERT INTO `position_county` VALUES ('2104', '450500000000', '450503000000', '银海区');
INSERT INTO `position_county` VALUES ('2105', '450500000000', '450512000000', '铁山港区');
INSERT INTO `position_county` VALUES ('2106', '450500000000', '450521000000', '合浦县');
INSERT INTO `position_county` VALUES ('2107', '450600000000', '450601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2108', '450600000000', '450602000000', '港口区');
INSERT INTO `position_county` VALUES ('2109', '450600000000', '450603000000', '防城区');
INSERT INTO `position_county` VALUES ('2110', '450600000000', '450621000000', '上思县');
INSERT INTO `position_county` VALUES ('2111', '450600000000', '450681000000', '东兴市');
INSERT INTO `position_county` VALUES ('2112', '450700000000', '450701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2113', '450700000000', '450702000000', '钦南区');
INSERT INTO `position_county` VALUES ('2114', '450700000000', '450703000000', '钦北区');
INSERT INTO `position_county` VALUES ('2115', '450700000000', '450721000000', '灵山县');
INSERT INTO `position_county` VALUES ('2116', '450700000000', '450722000000', '浦北县');
INSERT INTO `position_county` VALUES ('2117', '450800000000', '450801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2118', '450800000000', '450802000000', '港北区');
INSERT INTO `position_county` VALUES ('2119', '450800000000', '450803000000', '港南区');
INSERT INTO `position_county` VALUES ('2120', '450800000000', '450804000000', '覃塘区');
INSERT INTO `position_county` VALUES ('2121', '450800000000', '450821000000', '平南县');
INSERT INTO `position_county` VALUES ('2122', '450800000000', '450881000000', '桂平市');
INSERT INTO `position_county` VALUES ('2123', '450900000000', '450901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2124', '450900000000', '450902000000', '玉州区');
INSERT INTO `position_county` VALUES ('2125', '450900000000', '450903000000', '福绵区');
INSERT INTO `position_county` VALUES ('2126', '450900000000', '450921000000', '容县');
INSERT INTO `position_county` VALUES ('2127', '450900000000', '450922000000', '陆川县');
INSERT INTO `position_county` VALUES ('2128', '450900000000', '450923000000', '博白县');
INSERT INTO `position_county` VALUES ('2129', '450900000000', '450924000000', '兴业县');
INSERT INTO `position_county` VALUES ('2130', '450900000000', '450981000000', '北流市');
INSERT INTO `position_county` VALUES ('2131', '451000000000', '451001000000', '市辖区');
INSERT INTO `position_county` VALUES ('2132', '451000000000', '451002000000', '右江区');
INSERT INTO `position_county` VALUES ('2133', '451000000000', '451021000000', '田阳县');
INSERT INTO `position_county` VALUES ('2134', '451000000000', '451022000000', '田东县');
INSERT INTO `position_county` VALUES ('2135', '451000000000', '451023000000', '平果县');
INSERT INTO `position_county` VALUES ('2136', '451000000000', '451024000000', '德保县');
INSERT INTO `position_county` VALUES ('2137', '451000000000', '451026000000', '那坡县');
INSERT INTO `position_county` VALUES ('2138', '451000000000', '451027000000', '凌云县');
INSERT INTO `position_county` VALUES ('2139', '451000000000', '451028000000', '乐业县');
INSERT INTO `position_county` VALUES ('2140', '451000000000', '451029000000', '田林县');
INSERT INTO `position_county` VALUES ('2141', '451000000000', '451030000000', '西林县');
INSERT INTO `position_county` VALUES ('2142', '451000000000', '451031000000', '隆林各族自治县');
INSERT INTO `position_county` VALUES ('2143', '451000000000', '451081000000', '靖西市');
INSERT INTO `position_county` VALUES ('2144', '451100000000', '451101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2145', '451100000000', '451102000000', '八步区');
INSERT INTO `position_county` VALUES ('2146', '451100000000', '451121000000', '昭平县');
INSERT INTO `position_county` VALUES ('2147', '451100000000', '451122000000', '钟山县');
INSERT INTO `position_county` VALUES ('2148', '451100000000', '451123000000', '富川瑶族自治县');
INSERT INTO `position_county` VALUES ('2149', '451200000000', '451201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2150', '451200000000', '451202000000', '金城江区');
INSERT INTO `position_county` VALUES ('2151', '451200000000', '451221000000', '南丹县');
INSERT INTO `position_county` VALUES ('2152', '451200000000', '451222000000', '天峨县');
INSERT INTO `position_county` VALUES ('2153', '451200000000', '451223000000', '凤山县');
INSERT INTO `position_county` VALUES ('2154', '451200000000', '451224000000', '东兰县');
INSERT INTO `position_county` VALUES ('2155', '451200000000', '451225000000', '罗城仫佬族自治县');
INSERT INTO `position_county` VALUES ('2156', '451200000000', '451226000000', '环江毛南族自治县');
INSERT INTO `position_county` VALUES ('2157', '451200000000', '451227000000', '巴马瑶族自治县');
INSERT INTO `position_county` VALUES ('2158', '451200000000', '451228000000', '都安瑶族自治县');
INSERT INTO `position_county` VALUES ('2159', '451200000000', '451229000000', '大化瑶族自治县');
INSERT INTO `position_county` VALUES ('2160', '451200000000', '451281000000', '宜州市');
INSERT INTO `position_county` VALUES ('2161', '451300000000', '451301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2162', '451300000000', '451302000000', '兴宾区');
INSERT INTO `position_county` VALUES ('2163', '451300000000', '451321000000', '忻城县');
INSERT INTO `position_county` VALUES ('2164', '451300000000', '451322000000', '象州县');
INSERT INTO `position_county` VALUES ('2165', '451300000000', '451323000000', '武宣县');
INSERT INTO `position_county` VALUES ('2166', '451300000000', '451324000000', '金秀瑶族自治县');
INSERT INTO `position_county` VALUES ('2167', '451300000000', '451381000000', '合山市');
INSERT INTO `position_county` VALUES ('2168', '451400000000', '451401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2169', '451400000000', '451402000000', '江州区');
INSERT INTO `position_county` VALUES ('2170', '451400000000', '451421000000', '扶绥县');
INSERT INTO `position_county` VALUES ('2171', '451400000000', '451422000000', '宁明县');
INSERT INTO `position_county` VALUES ('2172', '451400000000', '451423000000', '龙州县');
INSERT INTO `position_county` VALUES ('2173', '451400000000', '451424000000', '大新县');
INSERT INTO `position_county` VALUES ('2174', '451400000000', '451425000000', '天等县');
INSERT INTO `position_county` VALUES ('2175', '451400000000', '451481000000', '凭祥市');
INSERT INTO `position_county` VALUES ('2176', '460100000000', '460101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2177', '460100000000', '460105000000', '秀英区');
INSERT INTO `position_county` VALUES ('2178', '460100000000', '460106000000', '龙华区');
INSERT INTO `position_county` VALUES ('2179', '460100000000', '460107000000', '琼山区');
INSERT INTO `position_county` VALUES ('2180', '460100000000', '460108000000', '美兰区');
INSERT INTO `position_county` VALUES ('2181', '460200000000', '460201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2182', '460200000000', '460202000000', '海棠区');
INSERT INTO `position_county` VALUES ('2183', '460200000000', '460203000000', '吉阳区');
INSERT INTO `position_county` VALUES ('2184', '460200000000', '460204000000', '天涯区');
INSERT INTO `position_county` VALUES ('2185', '460200000000', '460205000000', '崖州区');
INSERT INTO `position_county` VALUES ('2186', '460300000000', '460321000000', '西沙群岛');
INSERT INTO `position_county` VALUES ('2187', '460300000000', '460322000000', '南沙群岛');
INSERT INTO `position_county` VALUES ('2188', '460300000000', '460323000000', '中沙群岛的岛礁及其海域');
INSERT INTO `position_county` VALUES ('2189', '469000000000', '469001000000', '五指山市');
INSERT INTO `position_county` VALUES ('2190', '469000000000', '469002000000', '琼海市');
INSERT INTO `position_county` VALUES ('2191', '469000000000', '469003000000', '儋州市');
INSERT INTO `position_county` VALUES ('2192', '469000000000', '469005000000', '文昌市');
INSERT INTO `position_county` VALUES ('2193', '469000000000', '469006000000', '万宁市');
INSERT INTO `position_county` VALUES ('2194', '469000000000', '469007000000', '东方市');
INSERT INTO `position_county` VALUES ('2195', '469000000000', '469021000000', '定安县');
INSERT INTO `position_county` VALUES ('2196', '469000000000', '469022000000', '屯昌县');
INSERT INTO `position_county` VALUES ('2197', '469000000000', '469023000000', '澄迈县');
INSERT INTO `position_county` VALUES ('2198', '469000000000', '469024000000', '临高县');
INSERT INTO `position_county` VALUES ('2199', '469000000000', '469025000000', '白沙黎族自治县');
INSERT INTO `position_county` VALUES ('2200', '469000000000', '469026000000', '昌江黎族自治县');
INSERT INTO `position_county` VALUES ('2201', '469000000000', '469027000000', '乐东黎族自治县');
INSERT INTO `position_county` VALUES ('2202', '469000000000', '469028000000', '陵水黎族自治县');
INSERT INTO `position_county` VALUES ('2203', '469000000000', '469029000000', '保亭黎族苗族自治县');
INSERT INTO `position_county` VALUES ('2204', '469000000000', '469030000000', '琼中黎族苗族自治县');
INSERT INTO `position_county` VALUES ('2205', '500100000000', '500101000000', '万州区');
INSERT INTO `position_county` VALUES ('2206', '500100000000', '500102000000', '涪陵区');
INSERT INTO `position_county` VALUES ('2207', '500100000000', '500103000000', '渝中区');
INSERT INTO `position_county` VALUES ('2208', '500100000000', '500104000000', '大渡口区');
INSERT INTO `position_county` VALUES ('2209', '500100000000', '500105000000', '江北区');
INSERT INTO `position_county` VALUES ('2210', '500100000000', '500106000000', '沙坪坝区');
INSERT INTO `position_county` VALUES ('2211', '500100000000', '500107000000', '九龙坡区');
INSERT INTO `position_county` VALUES ('2212', '500100000000', '500108000000', '南岸区');
INSERT INTO `position_county` VALUES ('2213', '500100000000', '500109000000', '北碚区');
INSERT INTO `position_county` VALUES ('2214', '500100000000', '500110000000', '綦江区');
INSERT INTO `position_county` VALUES ('2215', '500100000000', '500111000000', '大足区');
INSERT INTO `position_county` VALUES ('2216', '500100000000', '500112000000', '渝北区');
INSERT INTO `position_county` VALUES ('2217', '500100000000', '500113000000', '巴南区');
INSERT INTO `position_county` VALUES ('2218', '500100000000', '500114000000', '黔江区');
INSERT INTO `position_county` VALUES ('2219', '500100000000', '500115000000', '长寿区');
INSERT INTO `position_county` VALUES ('2220', '500100000000', '500116000000', '江津区');
INSERT INTO `position_county` VALUES ('2221', '500100000000', '500117000000', '合川区');
INSERT INTO `position_county` VALUES ('2222', '500100000000', '500118000000', '永川区');
INSERT INTO `position_county` VALUES ('2223', '500100000000', '500119000000', '南川区');
INSERT INTO `position_county` VALUES ('2224', '500100000000', '500120000000', '璧山区');
INSERT INTO `position_county` VALUES ('2225', '500100000000', '500151000000', '铜梁区');
INSERT INTO `position_county` VALUES ('2226', '500100000000', '500152000000', '潼南区');
INSERT INTO `position_county` VALUES ('2227', '500100000000', '500153000000', '荣昌区');
INSERT INTO `position_county` VALUES ('2228', '500200000000', '500228000000', '梁平县');
INSERT INTO `position_county` VALUES ('2229', '500200000000', '500229000000', '城口县');
INSERT INTO `position_county` VALUES ('2230', '500200000000', '500230000000', '丰都县');
INSERT INTO `position_county` VALUES ('2231', '500200000000', '500231000000', '垫江县');
INSERT INTO `position_county` VALUES ('2232', '500200000000', '500232000000', '武隆县');
INSERT INTO `position_county` VALUES ('2233', '500200000000', '500233000000', '忠县');
INSERT INTO `position_county` VALUES ('2234', '500200000000', '500234000000', '开县');
INSERT INTO `position_county` VALUES ('2235', '500200000000', '500235000000', '云阳县');
INSERT INTO `position_county` VALUES ('2236', '500200000000', '500236000000', '奉节县');
INSERT INTO `position_county` VALUES ('2237', '500200000000', '500237000000', '巫山县');
INSERT INTO `position_county` VALUES ('2238', '500200000000', '500238000000', '巫溪县');
INSERT INTO `position_county` VALUES ('2239', '500200000000', '500240000000', '石柱土家族自治县');
INSERT INTO `position_county` VALUES ('2240', '500200000000', '500241000000', '秀山土家族苗族自治县');
INSERT INTO `position_county` VALUES ('2241', '500200000000', '500242000000', '酉阳土家族苗族自治县');
INSERT INTO `position_county` VALUES ('2242', '500200000000', '500243000000', '彭水苗族土家族自治县');
INSERT INTO `position_county` VALUES ('2243', '510100000000', '510101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2244', '510100000000', '510104000000', '锦江区');
INSERT INTO `position_county` VALUES ('2245', '510100000000', '510105000000', '青羊区');
INSERT INTO `position_county` VALUES ('2246', '510100000000', '510106000000', '金牛区');
INSERT INTO `position_county` VALUES ('2247', '510100000000', '510107000000', '武侯区');
INSERT INTO `position_county` VALUES ('2248', '510100000000', '510108000000', '成华区');
INSERT INTO `position_county` VALUES ('2249', '510100000000', '510112000000', '龙泉驿区');
INSERT INTO `position_county` VALUES ('2250', '510100000000', '510113000000', '青白江区');
INSERT INTO `position_county` VALUES ('2251', '510100000000', '510114000000', '新都区');
INSERT INTO `position_county` VALUES ('2252', '510100000000', '510115000000', '温江区');
INSERT INTO `position_county` VALUES ('2253', '510100000000', '510121000000', '金堂县');
INSERT INTO `position_county` VALUES ('2254', '510100000000', '510122000000', '双流县');
INSERT INTO `position_county` VALUES ('2255', '510100000000', '510124000000', '郫县');
INSERT INTO `position_county` VALUES ('2256', '510100000000', '510129000000', '大邑县');
INSERT INTO `position_county` VALUES ('2257', '510100000000', '510131000000', '蒲江县');
INSERT INTO `position_county` VALUES ('2258', '510100000000', '510132000000', '新津县');
INSERT INTO `position_county` VALUES ('2259', '510100000000', '510181000000', '都江堰市');
INSERT INTO `position_county` VALUES ('2260', '510100000000', '510182000000', '彭州市');
INSERT INTO `position_county` VALUES ('2261', '510100000000', '510183000000', '邛崃市');
INSERT INTO `position_county` VALUES ('2262', '510100000000', '510184000000', '崇州市');
INSERT INTO `position_county` VALUES ('2263', '510300000000', '510301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2264', '510300000000', '510302000000', '自流井区');
INSERT INTO `position_county` VALUES ('2265', '510300000000', '510303000000', '贡井区');
INSERT INTO `position_county` VALUES ('2266', '510300000000', '510304000000', '大安区');
INSERT INTO `position_county` VALUES ('2267', '510300000000', '510311000000', '沿滩区');
INSERT INTO `position_county` VALUES ('2268', '510300000000', '510321000000', '荣县');
INSERT INTO `position_county` VALUES ('2269', '510300000000', '510322000000', '富顺县');
INSERT INTO `position_county` VALUES ('2270', '510400000000', '510401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2271', '510400000000', '510402000000', '东区');
INSERT INTO `position_county` VALUES ('2272', '510400000000', '510403000000', '西区');
INSERT INTO `position_county` VALUES ('2273', '510400000000', '510411000000', '仁和区');
INSERT INTO `position_county` VALUES ('2274', '510400000000', '510421000000', '米易县');
INSERT INTO `position_county` VALUES ('2275', '510400000000', '510422000000', '盐边县');
INSERT INTO `position_county` VALUES ('2276', '510500000000', '510501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2277', '510500000000', '510502000000', '江阳区');
INSERT INTO `position_county` VALUES ('2278', '510500000000', '510503000000', '纳溪区');
INSERT INTO `position_county` VALUES ('2279', '510500000000', '510504000000', '龙马潭区');
INSERT INTO `position_county` VALUES ('2280', '510500000000', '510521000000', '泸县');
INSERT INTO `position_county` VALUES ('2281', '510500000000', '510522000000', '合江县');
INSERT INTO `position_county` VALUES ('2282', '510500000000', '510524000000', '叙永县');
INSERT INTO `position_county` VALUES ('2283', '510500000000', '510525000000', '古蔺县');
INSERT INTO `position_county` VALUES ('2284', '510600000000', '510601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2285', '510600000000', '510603000000', '旌阳区');
INSERT INTO `position_county` VALUES ('2286', '510600000000', '510623000000', '中江县');
INSERT INTO `position_county` VALUES ('2287', '510600000000', '510626000000', '罗江县');
INSERT INTO `position_county` VALUES ('2288', '510600000000', '510681000000', '广汉市');
INSERT INTO `position_county` VALUES ('2289', '510600000000', '510682000000', '什邡市');
INSERT INTO `position_county` VALUES ('2290', '510600000000', '510683000000', '绵竹市');
INSERT INTO `position_county` VALUES ('2291', '510700000000', '510701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2292', '510700000000', '510703000000', '涪城区');
INSERT INTO `position_county` VALUES ('2293', '510700000000', '510704000000', '游仙区');
INSERT INTO `position_county` VALUES ('2294', '510700000000', '510722000000', '三台县');
INSERT INTO `position_county` VALUES ('2295', '510700000000', '510723000000', '盐亭县');
INSERT INTO `position_county` VALUES ('2296', '510700000000', '510724000000', '安县');
INSERT INTO `position_county` VALUES ('2297', '510700000000', '510725000000', '梓潼县');
INSERT INTO `position_county` VALUES ('2298', '510700000000', '510726000000', '北川羌族自治县');
INSERT INTO `position_county` VALUES ('2299', '510700000000', '510727000000', '平武县');
INSERT INTO `position_county` VALUES ('2300', '510700000000', '510781000000', '江油市');
INSERT INTO `position_county` VALUES ('2301', '510800000000', '510801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2302', '510800000000', '510802000000', '利州区');
INSERT INTO `position_county` VALUES ('2303', '510800000000', '510811000000', '昭化区');
INSERT INTO `position_county` VALUES ('2304', '510800000000', '510812000000', '朝天区');
INSERT INTO `position_county` VALUES ('2305', '510800000000', '510821000000', '旺苍县');
INSERT INTO `position_county` VALUES ('2306', '510800000000', '510822000000', '青川县');
INSERT INTO `position_county` VALUES ('2307', '510800000000', '510823000000', '剑阁县');
INSERT INTO `position_county` VALUES ('2308', '510800000000', '510824000000', '苍溪县');
INSERT INTO `position_county` VALUES ('2309', '510900000000', '510901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2310', '510900000000', '510903000000', '船山区');
INSERT INTO `position_county` VALUES ('2311', '510900000000', '510904000000', '安居区');
INSERT INTO `position_county` VALUES ('2312', '510900000000', '510921000000', '蓬溪县');
INSERT INTO `position_county` VALUES ('2313', '510900000000', '510922000000', '射洪县');
INSERT INTO `position_county` VALUES ('2314', '510900000000', '510923000000', '大英县');
INSERT INTO `position_county` VALUES ('2315', '511000000000', '511001000000', '市辖区');
INSERT INTO `position_county` VALUES ('2316', '511000000000', '511002000000', '市中区');
INSERT INTO `position_county` VALUES ('2317', '511000000000', '511011000000', '东兴区');
INSERT INTO `position_county` VALUES ('2318', '511000000000', '511024000000', '威远县');
INSERT INTO `position_county` VALUES ('2319', '511000000000', '511025000000', '资中县');
INSERT INTO `position_county` VALUES ('2320', '511000000000', '511028000000', '隆昌县');
INSERT INTO `position_county` VALUES ('2321', '511100000000', '511101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2322', '511100000000', '511102000000', '市中区');
INSERT INTO `position_county` VALUES ('2323', '511100000000', '511111000000', '沙湾区');
INSERT INTO `position_county` VALUES ('2324', '511100000000', '511112000000', '五通桥区');
INSERT INTO `position_county` VALUES ('2325', '511100000000', '511113000000', '金口河区');
INSERT INTO `position_county` VALUES ('2326', '511100000000', '511123000000', '犍为县');
INSERT INTO `position_county` VALUES ('2327', '511100000000', '511124000000', '井研县');
INSERT INTO `position_county` VALUES ('2328', '511100000000', '511126000000', '夹江县');
INSERT INTO `position_county` VALUES ('2329', '511100000000', '511129000000', '沐川县');
INSERT INTO `position_county` VALUES ('2330', '511100000000', '511132000000', '峨边彝族自治县');
INSERT INTO `position_county` VALUES ('2331', '511100000000', '511133000000', '马边彝族自治县');
INSERT INTO `position_county` VALUES ('2332', '511100000000', '511181000000', '峨眉山市');
INSERT INTO `position_county` VALUES ('2333', '511300000000', '511301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2334', '511300000000', '511302000000', '顺庆区');
INSERT INTO `position_county` VALUES ('2335', '511300000000', '511303000000', '高坪区');
INSERT INTO `position_county` VALUES ('2336', '511300000000', '511304000000', '嘉陵区');
INSERT INTO `position_county` VALUES ('2337', '511300000000', '511321000000', '南部县');
INSERT INTO `position_county` VALUES ('2338', '511300000000', '511322000000', '营山县');
INSERT INTO `position_county` VALUES ('2339', '511300000000', '511323000000', '蓬安县');
INSERT INTO `position_county` VALUES ('2340', '511300000000', '511324000000', '仪陇县');
INSERT INTO `position_county` VALUES ('2341', '511300000000', '511325000000', '西充县');
INSERT INTO `position_county` VALUES ('2342', '511300000000', '511381000000', '阆中市');
INSERT INTO `position_county` VALUES ('2343', '511400000000', '511401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2344', '511400000000', '511402000000', '东坡区');
INSERT INTO `position_county` VALUES ('2345', '511400000000', '511403000000', '彭山区');
INSERT INTO `position_county` VALUES ('2346', '511400000000', '511421000000', '仁寿县');
INSERT INTO `position_county` VALUES ('2347', '511400000000', '511423000000', '洪雅县');
INSERT INTO `position_county` VALUES ('2348', '511400000000', '511424000000', '丹棱县');
INSERT INTO `position_county` VALUES ('2349', '511400000000', '511425000000', '青神县');
INSERT INTO `position_county` VALUES ('2350', '511500000000', '511501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2351', '511500000000', '511502000000', '翠屏区');
INSERT INTO `position_county` VALUES ('2352', '511500000000', '511503000000', '南溪区');
INSERT INTO `position_county` VALUES ('2353', '511500000000', '511521000000', '宜宾县');
INSERT INTO `position_county` VALUES ('2354', '511500000000', '511523000000', '江安县');
INSERT INTO `position_county` VALUES ('2355', '511500000000', '511524000000', '长宁县');
INSERT INTO `position_county` VALUES ('2356', '511500000000', '511525000000', '高县');
INSERT INTO `position_county` VALUES ('2357', '511500000000', '511526000000', '珙县');
INSERT INTO `position_county` VALUES ('2358', '511500000000', '511527000000', '筠连县');
INSERT INTO `position_county` VALUES ('2359', '511500000000', '511528000000', '兴文县');
INSERT INTO `position_county` VALUES ('2360', '511500000000', '511529000000', '屏山县');
INSERT INTO `position_county` VALUES ('2361', '511600000000', '511601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2362', '511600000000', '511602000000', '广安区');
INSERT INTO `position_county` VALUES ('2363', '511600000000', '511603000000', '前锋区');
INSERT INTO `position_county` VALUES ('2364', '511600000000', '511621000000', '岳池县');
INSERT INTO `position_county` VALUES ('2365', '511600000000', '511622000000', '武胜县');
INSERT INTO `position_county` VALUES ('2366', '511600000000', '511623000000', '邻水县');
INSERT INTO `position_county` VALUES ('2367', '511600000000', '511681000000', '华蓥市');
INSERT INTO `position_county` VALUES ('2368', '511700000000', '511701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2369', '511700000000', '511702000000', '通川区');
INSERT INTO `position_county` VALUES ('2370', '511700000000', '511703000000', '达川区');
INSERT INTO `position_county` VALUES ('2371', '511700000000', '511722000000', '宣汉县');
INSERT INTO `position_county` VALUES ('2372', '511700000000', '511723000000', '开江县');
INSERT INTO `position_county` VALUES ('2373', '511700000000', '511724000000', '大竹县');
INSERT INTO `position_county` VALUES ('2374', '511700000000', '511725000000', '渠县');
INSERT INTO `position_county` VALUES ('2375', '511700000000', '511781000000', '万源市');
INSERT INTO `position_county` VALUES ('2376', '511800000000', '511801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2377', '511800000000', '511802000000', '雨城区');
INSERT INTO `position_county` VALUES ('2378', '511800000000', '511803000000', '名山区');
INSERT INTO `position_county` VALUES ('2379', '511800000000', '511822000000', '荥经县');
INSERT INTO `position_county` VALUES ('2380', '511800000000', '511823000000', '汉源县');
INSERT INTO `position_county` VALUES ('2381', '511800000000', '511824000000', '石棉县');
INSERT INTO `position_county` VALUES ('2382', '511800000000', '511825000000', '天全县');
INSERT INTO `position_county` VALUES ('2383', '511800000000', '511826000000', '芦山县');
INSERT INTO `position_county` VALUES ('2384', '511800000000', '511827000000', '宝兴县');
INSERT INTO `position_county` VALUES ('2385', '511900000000', '511901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2386', '511900000000', '511902000000', '巴州区');
INSERT INTO `position_county` VALUES ('2387', '511900000000', '511903000000', '恩阳区');
INSERT INTO `position_county` VALUES ('2388', '511900000000', '511921000000', '通江县');
INSERT INTO `position_county` VALUES ('2389', '511900000000', '511922000000', '南江县');
INSERT INTO `position_county` VALUES ('2390', '511900000000', '511923000000', '平昌县');
INSERT INTO `position_county` VALUES ('2391', '512000000000', '512001000000', '市辖区');
INSERT INTO `position_county` VALUES ('2392', '512000000000', '512002000000', '雁江区');
INSERT INTO `position_county` VALUES ('2393', '512000000000', '512021000000', '安岳县');
INSERT INTO `position_county` VALUES ('2394', '512000000000', '512022000000', '乐至县');
INSERT INTO `position_county` VALUES ('2395', '512000000000', '512081000000', '简阳市');
INSERT INTO `position_county` VALUES ('2396', '513200000000', '513221000000', '汶川县');
INSERT INTO `position_county` VALUES ('2397', '513200000000', '513222000000', '理县');
INSERT INTO `position_county` VALUES ('2398', '513200000000', '513223000000', '茂县');
INSERT INTO `position_county` VALUES ('2399', '513200000000', '513224000000', '松潘县');
INSERT INTO `position_county` VALUES ('2400', '513200000000', '513225000000', '九寨沟县');
INSERT INTO `position_county` VALUES ('2401', '513200000000', '513226000000', '金川县');
INSERT INTO `position_county` VALUES ('2402', '513200000000', '513227000000', '小金县');
INSERT INTO `position_county` VALUES ('2403', '513200000000', '513228000000', '黑水县');
INSERT INTO `position_county` VALUES ('2404', '513200000000', '513229000000', '马尔康县');
INSERT INTO `position_county` VALUES ('2405', '513200000000', '513230000000', '壤塘县');
INSERT INTO `position_county` VALUES ('2406', '513200000000', '513231000000', '阿坝县');
INSERT INTO `position_county` VALUES ('2407', '513200000000', '513232000000', '若尔盖县');
INSERT INTO `position_county` VALUES ('2408', '513200000000', '513233000000', '红原县');
INSERT INTO `position_county` VALUES ('2409', '513300000000', '513301000000', '康定市');
INSERT INTO `position_county` VALUES ('2410', '513300000000', '513322000000', '泸定县');
INSERT INTO `position_county` VALUES ('2411', '513300000000', '513323000000', '丹巴县');
INSERT INTO `position_county` VALUES ('2412', '513300000000', '513324000000', '九龙县');
INSERT INTO `position_county` VALUES ('2413', '513300000000', '513325000000', '雅江县');
INSERT INTO `position_county` VALUES ('2414', '513300000000', '513326000000', '道孚县');
INSERT INTO `position_county` VALUES ('2415', '513300000000', '513327000000', '炉霍县');
INSERT INTO `position_county` VALUES ('2416', '513300000000', '513328000000', '甘孜县');
INSERT INTO `position_county` VALUES ('2417', '513300000000', '513329000000', '新龙县');
INSERT INTO `position_county` VALUES ('2418', '513300000000', '513330000000', '德格县');
INSERT INTO `position_county` VALUES ('2419', '513300000000', '513331000000', '白玉县');
INSERT INTO `position_county` VALUES ('2420', '513300000000', '513332000000', '石渠县');
INSERT INTO `position_county` VALUES ('2421', '513300000000', '513333000000', '色达县');
INSERT INTO `position_county` VALUES ('2422', '513300000000', '513334000000', '理塘县');
INSERT INTO `position_county` VALUES ('2423', '513300000000', '513335000000', '巴塘县');
INSERT INTO `position_county` VALUES ('2424', '513300000000', '513336000000', '乡城县');
INSERT INTO `position_county` VALUES ('2425', '513300000000', '513337000000', '稻城县');
INSERT INTO `position_county` VALUES ('2426', '513300000000', '513338000000', '得荣县');
INSERT INTO `position_county` VALUES ('2427', '513400000000', '513401000000', '西昌市');
INSERT INTO `position_county` VALUES ('2428', '513400000000', '513422000000', '木里藏族自治县');
INSERT INTO `position_county` VALUES ('2429', '513400000000', '513423000000', '盐源县');
INSERT INTO `position_county` VALUES ('2430', '513400000000', '513424000000', '德昌县');
INSERT INTO `position_county` VALUES ('2431', '513400000000', '513425000000', '会理县');
INSERT INTO `position_county` VALUES ('2432', '513400000000', '513426000000', '会东县');
INSERT INTO `position_county` VALUES ('2433', '513400000000', '513427000000', '宁南县');
INSERT INTO `position_county` VALUES ('2434', '513400000000', '513428000000', '普格县');
INSERT INTO `position_county` VALUES ('2435', '513400000000', '513429000000', '布拖县');
INSERT INTO `position_county` VALUES ('2436', '513400000000', '513430000000', '金阳县');
INSERT INTO `position_county` VALUES ('2437', '513400000000', '513431000000', '昭觉县');
INSERT INTO `position_county` VALUES ('2438', '513400000000', '513432000000', '喜德县');
INSERT INTO `position_county` VALUES ('2439', '513400000000', '513433000000', '冕宁县');
INSERT INTO `position_county` VALUES ('2440', '513400000000', '513434000000', '越西县');
INSERT INTO `position_county` VALUES ('2441', '513400000000', '513435000000', '甘洛县');
INSERT INTO `position_county` VALUES ('2442', '513400000000', '513436000000', '美姑县');
INSERT INTO `position_county` VALUES ('2443', '513400000000', '513437000000', '雷波县');
INSERT INTO `position_county` VALUES ('2444', '520100000000', '520101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2445', '520100000000', '520102000000', '南明区');
INSERT INTO `position_county` VALUES ('2446', '520100000000', '520103000000', '云岩区');
INSERT INTO `position_county` VALUES ('2447', '520100000000', '520111000000', '花溪区');
INSERT INTO `position_county` VALUES ('2448', '520100000000', '520112000000', '乌当区');
INSERT INTO `position_county` VALUES ('2449', '520100000000', '520113000000', '白云区');
INSERT INTO `position_county` VALUES ('2450', '520100000000', '520115000000', '观山湖区');
INSERT INTO `position_county` VALUES ('2451', '520100000000', '520121000000', '开阳县');
INSERT INTO `position_county` VALUES ('2452', '520100000000', '520122000000', '息烽县');
INSERT INTO `position_county` VALUES ('2453', '520100000000', '520123000000', '修文县');
INSERT INTO `position_county` VALUES ('2454', '520100000000', '520181000000', '清镇市');
INSERT INTO `position_county` VALUES ('2455', '520200000000', '520201000000', '钟山区');
INSERT INTO `position_county` VALUES ('2456', '520200000000', '520203000000', '六枝特区');
INSERT INTO `position_county` VALUES ('2457', '520200000000', '520221000000', '水城县');
INSERT INTO `position_county` VALUES ('2458', '520200000000', '520222000000', '盘县');
INSERT INTO `position_county` VALUES ('2459', '520300000000', '520301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2460', '520300000000', '520302000000', '红花岗区');
INSERT INTO `position_county` VALUES ('2461', '520300000000', '520303000000', '汇川区');
INSERT INTO `position_county` VALUES ('2462', '520300000000', '520321000000', '遵义县');
INSERT INTO `position_county` VALUES ('2463', '520300000000', '520322000000', '桐梓县');
INSERT INTO `position_county` VALUES ('2464', '520300000000', '520323000000', '绥阳县');
INSERT INTO `position_county` VALUES ('2465', '520300000000', '520324000000', '正安县');
INSERT INTO `position_county` VALUES ('2466', '520300000000', '520325000000', '道真仡佬族苗族自治县');
INSERT INTO `position_county` VALUES ('2467', '520300000000', '520326000000', '务川仡佬族苗族自治县');
INSERT INTO `position_county` VALUES ('2468', '520300000000', '520327000000', '凤冈县');
INSERT INTO `position_county` VALUES ('2469', '520300000000', '520328000000', '湄潭县');
INSERT INTO `position_county` VALUES ('2470', '520300000000', '520329000000', '余庆县');
INSERT INTO `position_county` VALUES ('2471', '520300000000', '520330000000', '习水县');
INSERT INTO `position_county` VALUES ('2472', '520300000000', '520381000000', '赤水市');
INSERT INTO `position_county` VALUES ('2473', '520300000000', '520382000000', '仁怀市');
INSERT INTO `position_county` VALUES ('2474', '520400000000', '520401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2475', '520400000000', '520402000000', '西秀区');
INSERT INTO `position_county` VALUES ('2476', '520400000000', '520403000000', '平坝区');
INSERT INTO `position_county` VALUES ('2477', '520400000000', '520422000000', '普定县');
INSERT INTO `position_county` VALUES ('2478', '520400000000', '520423000000', '镇宁布依族苗族自治县');
INSERT INTO `position_county` VALUES ('2479', '520400000000', '520424000000', '关岭布依族苗族自治县');
INSERT INTO `position_county` VALUES ('2480', '520400000000', '520425000000', '紫云苗族布依族自治县');
INSERT INTO `position_county` VALUES ('2481', '520500000000', '520501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2482', '520500000000', '520502000000', '七星关区');
INSERT INTO `position_county` VALUES ('2483', '520500000000', '520521000000', '大方县');
INSERT INTO `position_county` VALUES ('2484', '520500000000', '520522000000', '黔西县');
INSERT INTO `position_county` VALUES ('2485', '520500000000', '520523000000', '金沙县');
INSERT INTO `position_county` VALUES ('2486', '520500000000', '520524000000', '织金县');
INSERT INTO `position_county` VALUES ('2487', '520500000000', '520525000000', '纳雍县');
INSERT INTO `position_county` VALUES ('2488', '520500000000', '520526000000', '威宁彝族回族苗族自治县');
INSERT INTO `position_county` VALUES ('2489', '520500000000', '520527000000', '赫章县');
INSERT INTO `position_county` VALUES ('2490', '520600000000', '520601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2491', '520600000000', '520602000000', '碧江区');
INSERT INTO `position_county` VALUES ('2492', '520600000000', '520603000000', '万山区');
INSERT INTO `position_county` VALUES ('2493', '520600000000', '520621000000', '江口县');
INSERT INTO `position_county` VALUES ('2494', '520600000000', '520622000000', '玉屏侗族自治县');
INSERT INTO `position_county` VALUES ('2495', '520600000000', '520623000000', '石阡县');
INSERT INTO `position_county` VALUES ('2496', '520600000000', '520624000000', '思南县');
INSERT INTO `position_county` VALUES ('2497', '520600000000', '520625000000', '印江土家族苗族自治县');
INSERT INTO `position_county` VALUES ('2498', '520600000000', '520626000000', '德江县');
INSERT INTO `position_county` VALUES ('2499', '520600000000', '520627000000', '沿河土家族自治县');
INSERT INTO `position_county` VALUES ('2500', '520600000000', '520628000000', '松桃苗族自治县');
INSERT INTO `position_county` VALUES ('2501', '522300000000', '522301000000', '兴义市');
INSERT INTO `position_county` VALUES ('2502', '522300000000', '522322000000', '兴仁县');
INSERT INTO `position_county` VALUES ('2503', '522300000000', '522323000000', '普安县');
INSERT INTO `position_county` VALUES ('2504', '522300000000', '522324000000', '晴隆县');
INSERT INTO `position_county` VALUES ('2505', '522300000000', '522325000000', '贞丰县');
INSERT INTO `position_county` VALUES ('2506', '522300000000', '522326000000', '望谟县');
INSERT INTO `position_county` VALUES ('2507', '522300000000', '522327000000', '册亨县');
INSERT INTO `position_county` VALUES ('2508', '522300000000', '522328000000', '安龙县');
INSERT INTO `position_county` VALUES ('2509', '522600000000', '522601000000', '凯里市');
INSERT INTO `position_county` VALUES ('2510', '522600000000', '522622000000', '黄平县');
INSERT INTO `position_county` VALUES ('2511', '522600000000', '522623000000', '施秉县');
INSERT INTO `position_county` VALUES ('2512', '522600000000', '522624000000', '三穗县');
INSERT INTO `position_county` VALUES ('2513', '522600000000', '522625000000', '镇远县');
INSERT INTO `position_county` VALUES ('2514', '522600000000', '522626000000', '岑巩县');
INSERT INTO `position_county` VALUES ('2515', '522600000000', '522627000000', '天柱县');
INSERT INTO `position_county` VALUES ('2516', '522600000000', '522628000000', '锦屏县');
INSERT INTO `position_county` VALUES ('2517', '522600000000', '522629000000', '剑河县');
INSERT INTO `position_county` VALUES ('2518', '522600000000', '522630000000', '台江县');
INSERT INTO `position_county` VALUES ('2519', '522600000000', '522631000000', '黎平县');
INSERT INTO `position_county` VALUES ('2520', '522600000000', '522632000000', '榕江县');
INSERT INTO `position_county` VALUES ('2521', '522600000000', '522633000000', '从江县');
INSERT INTO `position_county` VALUES ('2522', '522600000000', '522634000000', '雷山县');
INSERT INTO `position_county` VALUES ('2523', '522600000000', '522635000000', '麻江县');
INSERT INTO `position_county` VALUES ('2524', '522600000000', '522636000000', '丹寨县');
INSERT INTO `position_county` VALUES ('2525', '522700000000', '522701000000', '都匀市');
INSERT INTO `position_county` VALUES ('2526', '522700000000', '522702000000', '福泉市');
INSERT INTO `position_county` VALUES ('2527', '522700000000', '522722000000', '荔波县');
INSERT INTO `position_county` VALUES ('2528', '522700000000', '522723000000', '贵定县');
INSERT INTO `position_county` VALUES ('2529', '522700000000', '522725000000', '瓮安县');
INSERT INTO `position_county` VALUES ('2530', '522700000000', '522726000000', '独山县');
INSERT INTO `position_county` VALUES ('2531', '522700000000', '522727000000', '平塘县');
INSERT INTO `position_county` VALUES ('2532', '522700000000', '522728000000', '罗甸县');
INSERT INTO `position_county` VALUES ('2533', '522700000000', '522729000000', '长顺县');
INSERT INTO `position_county` VALUES ('2534', '522700000000', '522730000000', '龙里县');
INSERT INTO `position_county` VALUES ('2535', '522700000000', '522731000000', '惠水县');
INSERT INTO `position_county` VALUES ('2536', '522700000000', '522732000000', '三都水族自治县');
INSERT INTO `position_county` VALUES ('2537', '530100000000', '530101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2538', '530100000000', '530102000000', '五华区');
INSERT INTO `position_county` VALUES ('2539', '530100000000', '530103000000', '盘龙区');
INSERT INTO `position_county` VALUES ('2540', '530100000000', '530111000000', '官渡区');
INSERT INTO `position_county` VALUES ('2541', '530100000000', '530112000000', '西山区');
INSERT INTO `position_county` VALUES ('2542', '530100000000', '530113000000', '东川区');
INSERT INTO `position_county` VALUES ('2543', '530100000000', '530114000000', '呈贡区');
INSERT INTO `position_county` VALUES ('2544', '530100000000', '530122000000', '晋宁县');
INSERT INTO `position_county` VALUES ('2545', '530100000000', '530124000000', '富民县');
INSERT INTO `position_county` VALUES ('2546', '530100000000', '530125000000', '宜良县');
INSERT INTO `position_county` VALUES ('2547', '530100000000', '530126000000', '石林彝族自治县');
INSERT INTO `position_county` VALUES ('2548', '530100000000', '530127000000', '嵩明县');
INSERT INTO `position_county` VALUES ('2549', '530100000000', '530128000000', '禄劝彝族苗族自治县');
INSERT INTO `position_county` VALUES ('2550', '530100000000', '530129000000', '寻甸回族彝族自治县');
INSERT INTO `position_county` VALUES ('2551', '530100000000', '530181000000', '安宁市');
INSERT INTO `position_county` VALUES ('2552', '530300000000', '530301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2553', '530300000000', '530302000000', '麒麟区');
INSERT INTO `position_county` VALUES ('2554', '530300000000', '530321000000', '马龙县');
INSERT INTO `position_county` VALUES ('2555', '530300000000', '530322000000', '陆良县');
INSERT INTO `position_county` VALUES ('2556', '530300000000', '530323000000', '师宗县');
INSERT INTO `position_county` VALUES ('2557', '530300000000', '530324000000', '罗平县');
INSERT INTO `position_county` VALUES ('2558', '530300000000', '530325000000', '富源县');
INSERT INTO `position_county` VALUES ('2559', '530300000000', '530326000000', '会泽县');
INSERT INTO `position_county` VALUES ('2560', '530300000000', '530328000000', '沾益县');
INSERT INTO `position_county` VALUES ('2561', '530300000000', '530381000000', '宣威市');
INSERT INTO `position_county` VALUES ('2562', '530400000000', '530401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2563', '530400000000', '530402000000', '红塔区');
INSERT INTO `position_county` VALUES ('2564', '530400000000', '530421000000', '江川县');
INSERT INTO `position_county` VALUES ('2565', '530400000000', '530422000000', '澄江县');
INSERT INTO `position_county` VALUES ('2566', '530400000000', '530423000000', '通海县');
INSERT INTO `position_county` VALUES ('2567', '530400000000', '530424000000', '华宁县');
INSERT INTO `position_county` VALUES ('2568', '530400000000', '530425000000', '易门县');
INSERT INTO `position_county` VALUES ('2569', '530400000000', '530426000000', '峨山彝族自治县');
INSERT INTO `position_county` VALUES ('2570', '530400000000', '530427000000', '新平彝族傣族自治县');
INSERT INTO `position_county` VALUES ('2571', '530400000000', '530428000000', '元江哈尼族彝族傣族自治县');
INSERT INTO `position_county` VALUES ('2572', '530500000000', '530501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2573', '530500000000', '530502000000', '隆阳区');
INSERT INTO `position_county` VALUES ('2574', '530500000000', '530521000000', '施甸县');
INSERT INTO `position_county` VALUES ('2575', '530500000000', '530523000000', '龙陵县');
INSERT INTO `position_county` VALUES ('2576', '530500000000', '530524000000', '昌宁县');
INSERT INTO `position_county` VALUES ('2577', '530500000000', '530581000000', '腾冲市');
INSERT INTO `position_county` VALUES ('2578', '530600000000', '530601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2579', '530600000000', '530602000000', '昭阳区');
INSERT INTO `position_county` VALUES ('2580', '530600000000', '530621000000', '鲁甸县');
INSERT INTO `position_county` VALUES ('2581', '530600000000', '530622000000', '巧家县');
INSERT INTO `position_county` VALUES ('2582', '530600000000', '530623000000', '盐津县');
INSERT INTO `position_county` VALUES ('2583', '530600000000', '530624000000', '大关县');
INSERT INTO `position_county` VALUES ('2584', '530600000000', '530625000000', '永善县');
INSERT INTO `position_county` VALUES ('2585', '530600000000', '530626000000', '绥江县');
INSERT INTO `position_county` VALUES ('2586', '530600000000', '530627000000', '镇雄县');
INSERT INTO `position_county` VALUES ('2587', '530600000000', '530628000000', '彝良县');
INSERT INTO `position_county` VALUES ('2588', '530600000000', '530629000000', '威信县');
INSERT INTO `position_county` VALUES ('2589', '530600000000', '530630000000', '水富县');
INSERT INTO `position_county` VALUES ('2590', '530700000000', '530701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2591', '530700000000', '530702000000', '古城区');
INSERT INTO `position_county` VALUES ('2592', '530700000000', '530721000000', '玉龙纳西族自治县');
INSERT INTO `position_county` VALUES ('2593', '530700000000', '530722000000', '永胜县');
INSERT INTO `position_county` VALUES ('2594', '530700000000', '530723000000', '华坪县');
INSERT INTO `position_county` VALUES ('2595', '530700000000', '530724000000', '宁蒗彝族自治县');
INSERT INTO `position_county` VALUES ('2596', '530800000000', '530801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2597', '530800000000', '530802000000', '思茅区');
INSERT INTO `position_county` VALUES ('2598', '530800000000', '530821000000', '宁洱哈尼族彝族自治县');
INSERT INTO `position_county` VALUES ('2599', '530800000000', '530822000000', '墨江哈尼族自治县');
INSERT INTO `position_county` VALUES ('2600', '530800000000', '530823000000', '景东彝族自治县');
INSERT INTO `position_county` VALUES ('2601', '530800000000', '530824000000', '景谷傣族彝族自治县');
INSERT INTO `position_county` VALUES ('2602', '530800000000', '530825000000', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `position_county` VALUES ('2603', '530800000000', '530826000000', '江城哈尼族彝族自治县');
INSERT INTO `position_county` VALUES ('2604', '530800000000', '530827000000', '孟连傣族拉祜族佤族自治县');
INSERT INTO `position_county` VALUES ('2605', '530800000000', '530828000000', '澜沧拉祜族自治县');
INSERT INTO `position_county` VALUES ('2606', '530800000000', '530829000000', '西盟佤族自治县');
INSERT INTO `position_county` VALUES ('2607', '530900000000', '530901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2608', '530900000000', '530902000000', '临翔区');
INSERT INTO `position_county` VALUES ('2609', '530900000000', '530921000000', '凤庆县');
INSERT INTO `position_county` VALUES ('2610', '530900000000', '530922000000', '云县');
INSERT INTO `position_county` VALUES ('2611', '530900000000', '530923000000', '永德县');
INSERT INTO `position_county` VALUES ('2612', '530900000000', '530924000000', '镇康县');
INSERT INTO `position_county` VALUES ('2613', '530900000000', '530925000000', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `position_county` VALUES ('2614', '530900000000', '530926000000', '耿马傣族佤族自治县');
INSERT INTO `position_county` VALUES ('2615', '530900000000', '530927000000', '沧源佤族自治县');
INSERT INTO `position_county` VALUES ('2616', '532300000000', '532301000000', '楚雄市');
INSERT INTO `position_county` VALUES ('2617', '532300000000', '532322000000', '双柏县');
INSERT INTO `position_county` VALUES ('2618', '532300000000', '532323000000', '牟定县');
INSERT INTO `position_county` VALUES ('2619', '532300000000', '532324000000', '南华县');
INSERT INTO `position_county` VALUES ('2620', '532300000000', '532325000000', '姚安县');
INSERT INTO `position_county` VALUES ('2621', '532300000000', '532326000000', '大姚县');
INSERT INTO `position_county` VALUES ('2622', '532300000000', '532327000000', '永仁县');
INSERT INTO `position_county` VALUES ('2623', '532300000000', '532328000000', '元谋县');
INSERT INTO `position_county` VALUES ('2624', '532300000000', '532329000000', '武定县');
INSERT INTO `position_county` VALUES ('2625', '532300000000', '532331000000', '禄丰县');
INSERT INTO `position_county` VALUES ('2626', '532500000000', '532501000000', '个旧市');
INSERT INTO `position_county` VALUES ('2627', '532500000000', '532502000000', '开远市');
INSERT INTO `position_county` VALUES ('2628', '532500000000', '532503000000', '蒙自市');
INSERT INTO `position_county` VALUES ('2629', '532500000000', '532504000000', '弥勒市');
INSERT INTO `position_county` VALUES ('2630', '532500000000', '532523000000', '屏边苗族自治县');
INSERT INTO `position_county` VALUES ('2631', '532500000000', '532524000000', '建水县');
INSERT INTO `position_county` VALUES ('2632', '532500000000', '532525000000', '石屏县');
INSERT INTO `position_county` VALUES ('2633', '532500000000', '532527000000', '泸西县');
INSERT INTO `position_county` VALUES ('2634', '532500000000', '532528000000', '元阳县');
INSERT INTO `position_county` VALUES ('2635', '532500000000', '532529000000', '红河县');
INSERT INTO `position_county` VALUES ('2636', '532500000000', '532530000000', '金平苗族瑶族傣族自治县');
INSERT INTO `position_county` VALUES ('2637', '532500000000', '532531000000', '绿春县');
INSERT INTO `position_county` VALUES ('2638', '532500000000', '532532000000', '河口瑶族自治县');
INSERT INTO `position_county` VALUES ('2639', '532600000000', '532601000000', '文山市');
INSERT INTO `position_county` VALUES ('2640', '532600000000', '532622000000', '砚山县');
INSERT INTO `position_county` VALUES ('2641', '532600000000', '532623000000', '西畴县');
INSERT INTO `position_county` VALUES ('2642', '532600000000', '532624000000', '麻栗坡县');
INSERT INTO `position_county` VALUES ('2643', '532600000000', '532625000000', '马关县');
INSERT INTO `position_county` VALUES ('2644', '532600000000', '532626000000', '丘北县');
INSERT INTO `position_county` VALUES ('2645', '532600000000', '532627000000', '广南县');
INSERT INTO `position_county` VALUES ('2646', '532600000000', '532628000000', '富宁县');
INSERT INTO `position_county` VALUES ('2647', '532800000000', '532801000000', '景洪市');
INSERT INTO `position_county` VALUES ('2648', '532800000000', '532822000000', '勐海县');
INSERT INTO `position_county` VALUES ('2649', '532800000000', '532823000000', '勐腊县');
INSERT INTO `position_county` VALUES ('2650', '532900000000', '532901000000', '大理市');
INSERT INTO `position_county` VALUES ('2651', '532900000000', '532922000000', '漾濞彝族自治县');
INSERT INTO `position_county` VALUES ('2652', '532900000000', '532923000000', '祥云县');
INSERT INTO `position_county` VALUES ('2653', '532900000000', '532924000000', '宾川县');
INSERT INTO `position_county` VALUES ('2654', '532900000000', '532925000000', '弥渡县');
INSERT INTO `position_county` VALUES ('2655', '532900000000', '532926000000', '南涧彝族自治县');
INSERT INTO `position_county` VALUES ('2656', '532900000000', '532927000000', '巍山彝族回族自治县');
INSERT INTO `position_county` VALUES ('2657', '532900000000', '532928000000', '永平县');
INSERT INTO `position_county` VALUES ('2658', '532900000000', '532929000000', '云龙县');
INSERT INTO `position_county` VALUES ('2659', '532900000000', '532930000000', '洱源县');
INSERT INTO `position_county` VALUES ('2660', '532900000000', '532931000000', '剑川县');
INSERT INTO `position_county` VALUES ('2661', '532900000000', '532932000000', '鹤庆县');
INSERT INTO `position_county` VALUES ('2662', '533100000000', '533102000000', '瑞丽市');
INSERT INTO `position_county` VALUES ('2663', '533100000000', '533103000000', '芒市');
INSERT INTO `position_county` VALUES ('2664', '533100000000', '533122000000', '梁河县');
INSERT INTO `position_county` VALUES ('2665', '533100000000', '533123000000', '盈江县');
INSERT INTO `position_county` VALUES ('2666', '533100000000', '533124000000', '陇川县');
INSERT INTO `position_county` VALUES ('2667', '533300000000', '533321000000', '泸水县');
INSERT INTO `position_county` VALUES ('2668', '533300000000', '533323000000', '福贡县');
INSERT INTO `position_county` VALUES ('2669', '533300000000', '533324000000', '贡山独龙族怒族自治县');
INSERT INTO `position_county` VALUES ('2670', '533300000000', '533325000000', '兰坪白族普米族自治县');
INSERT INTO `position_county` VALUES ('2671', '533400000000', '533401000000', '香格里拉市');
INSERT INTO `position_county` VALUES ('2672', '533400000000', '533422000000', '德钦县');
INSERT INTO `position_county` VALUES ('2673', '533400000000', '533423000000', '维西傈僳族自治县');
INSERT INTO `position_county` VALUES ('2674', '540100000000', '540101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2675', '540100000000', '540102000000', '城关区');
INSERT INTO `position_county` VALUES ('2676', '540100000000', '540121000000', '林周县');
INSERT INTO `position_county` VALUES ('2677', '540100000000', '540122000000', '当雄县');
INSERT INTO `position_county` VALUES ('2678', '540100000000', '540123000000', '尼木县');
INSERT INTO `position_county` VALUES ('2679', '540100000000', '540124000000', '曲水县');
INSERT INTO `position_county` VALUES ('2680', '540100000000', '540125000000', '堆龙德庆县');
INSERT INTO `position_county` VALUES ('2681', '540100000000', '540126000000', '达孜县');
INSERT INTO `position_county` VALUES ('2682', '540100000000', '540127000000', '墨竹工卡县');
INSERT INTO `position_county` VALUES ('2683', '540200000000', '540202000000', '桑珠孜区');
INSERT INTO `position_county` VALUES ('2684', '540200000000', '540221000000', '南木林县');
INSERT INTO `position_county` VALUES ('2685', '540200000000', '540222000000', '江孜县');
INSERT INTO `position_county` VALUES ('2686', '540200000000', '540223000000', '定日县');
INSERT INTO `position_county` VALUES ('2687', '540200000000', '540224000000', '萨迦县');
INSERT INTO `position_county` VALUES ('2688', '540200000000', '540225000000', '拉孜县');
INSERT INTO `position_county` VALUES ('2689', '540200000000', '540226000000', '昂仁县');
INSERT INTO `position_county` VALUES ('2690', '540200000000', '540227000000', '谢通门县');
INSERT INTO `position_county` VALUES ('2691', '540200000000', '540228000000', '白朗县');
INSERT INTO `position_county` VALUES ('2692', '540200000000', '540229000000', '仁布县');
INSERT INTO `position_county` VALUES ('2693', '540200000000', '540230000000', '康马县');
INSERT INTO `position_county` VALUES ('2694', '540200000000', '540231000000', '定结县');
INSERT INTO `position_county` VALUES ('2695', '540200000000', '540232000000', '仲巴县');
INSERT INTO `position_county` VALUES ('2696', '540200000000', '540233000000', '亚东县');
INSERT INTO `position_county` VALUES ('2697', '540200000000', '540234000000', '吉隆县');
INSERT INTO `position_county` VALUES ('2698', '540200000000', '540235000000', '聂拉木县');
INSERT INTO `position_county` VALUES ('2699', '540200000000', '540236000000', '萨嘎县');
INSERT INTO `position_county` VALUES ('2700', '540200000000', '540237000000', '岗巴县');
INSERT INTO `position_county` VALUES ('2701', '540300000000', '540302000000', '卡若区');
INSERT INTO `position_county` VALUES ('2702', '540300000000', '540321000000', '江达县');
INSERT INTO `position_county` VALUES ('2703', '540300000000', '540322000000', '贡觉县');
INSERT INTO `position_county` VALUES ('2704', '540300000000', '540323000000', '类乌齐县');
INSERT INTO `position_county` VALUES ('2705', '540300000000', '540324000000', '丁青县');
INSERT INTO `position_county` VALUES ('2706', '540300000000', '540325000000', '察雅县');
INSERT INTO `position_county` VALUES ('2707', '540300000000', '540326000000', '八宿县');
INSERT INTO `position_county` VALUES ('2708', '540300000000', '540327000000', '左贡县');
INSERT INTO `position_county` VALUES ('2709', '540300000000', '540328000000', '芒康县');
INSERT INTO `position_county` VALUES ('2710', '540300000000', '540329000000', '洛隆县');
INSERT INTO `position_county` VALUES ('2711', '540300000000', '540330000000', '边坝县');
INSERT INTO `position_county` VALUES ('2712', '540400000000', '540402000000', '巴宜区');
INSERT INTO `position_county` VALUES ('2713', '540400000000', '540421000000', '工布江达县');
INSERT INTO `position_county` VALUES ('2714', '540400000000', '540422000000', '米林县');
INSERT INTO `position_county` VALUES ('2715', '540400000000', '540423000000', '墨脱县');
INSERT INTO `position_county` VALUES ('2716', '540400000000', '540424000000', '波密县');
INSERT INTO `position_county` VALUES ('2717', '540400000000', '540425000000', '察隅县');
INSERT INTO `position_county` VALUES ('2718', '540400000000', '540426000000', '朗县');
INSERT INTO `position_county` VALUES ('2719', '542200000000', '542221000000', '乃东县');
INSERT INTO `position_county` VALUES ('2720', '542200000000', '542222000000', '扎囊县');
INSERT INTO `position_county` VALUES ('2721', '542200000000', '542223000000', '贡嘎县');
INSERT INTO `position_county` VALUES ('2722', '542200000000', '542224000000', '桑日县');
INSERT INTO `position_county` VALUES ('2723', '542200000000', '542225000000', '琼结县');
INSERT INTO `position_county` VALUES ('2724', '542200000000', '542226000000', '曲松县');
INSERT INTO `position_county` VALUES ('2725', '542200000000', '542227000000', '措美县');
INSERT INTO `position_county` VALUES ('2726', '542200000000', '542228000000', '洛扎县');
INSERT INTO `position_county` VALUES ('2727', '542200000000', '542229000000', '加查县');
INSERT INTO `position_county` VALUES ('2728', '542200000000', '542231000000', '隆子县');
INSERT INTO `position_county` VALUES ('2729', '542200000000', '542232000000', '错那县');
INSERT INTO `position_county` VALUES ('2730', '542200000000', '542233000000', '浪卡子县');
INSERT INTO `position_county` VALUES ('2731', '542400000000', '542421000000', '那曲县');
INSERT INTO `position_county` VALUES ('2732', '542400000000', '542422000000', '嘉黎县');
INSERT INTO `position_county` VALUES ('2733', '542400000000', '542423000000', '比如县');
INSERT INTO `position_county` VALUES ('2734', '542400000000', '542424000000', '聂荣县');
INSERT INTO `position_county` VALUES ('2735', '542400000000', '542425000000', '安多县');
INSERT INTO `position_county` VALUES ('2736', '542400000000', '542426000000', '申扎县');
INSERT INTO `position_county` VALUES ('2737', '542400000000', '542427000000', '索县');
INSERT INTO `position_county` VALUES ('2738', '542400000000', '542428000000', '班戈县');
INSERT INTO `position_county` VALUES ('2739', '542400000000', '542429000000', '巴青县');
INSERT INTO `position_county` VALUES ('2740', '542400000000', '542430000000', '尼玛县');
INSERT INTO `position_county` VALUES ('2741', '542400000000', '542431000000', '双湖县');
INSERT INTO `position_county` VALUES ('2742', '542500000000', '542521000000', '普兰县');
INSERT INTO `position_county` VALUES ('2743', '542500000000', '542522000000', '札达县');
INSERT INTO `position_county` VALUES ('2744', '542500000000', '542523000000', '噶尔县');
INSERT INTO `position_county` VALUES ('2745', '542500000000', '542524000000', '日土县');
INSERT INTO `position_county` VALUES ('2746', '542500000000', '542525000000', '革吉县');
INSERT INTO `position_county` VALUES ('2747', '542500000000', '542526000000', '改则县');
INSERT INTO `position_county` VALUES ('2748', '542500000000', '542527000000', '措勤县');
INSERT INTO `position_county` VALUES ('2749', '610100000000', '610101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2750', '610100000000', '610102000000', '新城区');
INSERT INTO `position_county` VALUES ('2751', '610100000000', '610103000000', '碑林区');
INSERT INTO `position_county` VALUES ('2752', '610100000000', '610104000000', '莲湖区');
INSERT INTO `position_county` VALUES ('2753', '610100000000', '610111000000', '灞桥区');
INSERT INTO `position_county` VALUES ('2754', '610100000000', '610112000000', '未央区');
INSERT INTO `position_county` VALUES ('2755', '610100000000', '610113000000', '雁塔区');
INSERT INTO `position_county` VALUES ('2756', '610100000000', '610114000000', '阎良区');
INSERT INTO `position_county` VALUES ('2757', '610100000000', '610115000000', '临潼区');
INSERT INTO `position_county` VALUES ('2758', '610100000000', '610116000000', '长安区');
INSERT INTO `position_county` VALUES ('2759', '610100000000', '610117000000', '高陵区');
INSERT INTO `position_county` VALUES ('2760', '610100000000', '610122000000', '蓝田县');
INSERT INTO `position_county` VALUES ('2761', '610100000000', '610124000000', '周至县');
INSERT INTO `position_county` VALUES ('2762', '610100000000', '610125000000', '户县');
INSERT INTO `position_county` VALUES ('2763', '610200000000', '610201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2764', '610200000000', '610202000000', '王益区');
INSERT INTO `position_county` VALUES ('2765', '610200000000', '610203000000', '印台区');
INSERT INTO `position_county` VALUES ('2766', '610200000000', '610204000000', '耀州区');
INSERT INTO `position_county` VALUES ('2767', '610200000000', '610222000000', '宜君县');
INSERT INTO `position_county` VALUES ('2768', '610300000000', '610301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2769', '610300000000', '610302000000', '渭滨区');
INSERT INTO `position_county` VALUES ('2770', '610300000000', '610303000000', '金台区');
INSERT INTO `position_county` VALUES ('2771', '610300000000', '610304000000', '陈仓区');
INSERT INTO `position_county` VALUES ('2772', '610300000000', '610322000000', '凤翔县');
INSERT INTO `position_county` VALUES ('2773', '610300000000', '610323000000', '岐山县');
INSERT INTO `position_county` VALUES ('2774', '610300000000', '610324000000', '扶风县');
INSERT INTO `position_county` VALUES ('2775', '610300000000', '610326000000', '眉县');
INSERT INTO `position_county` VALUES ('2776', '610300000000', '610327000000', '陇县');
INSERT INTO `position_county` VALUES ('2777', '610300000000', '610328000000', '千阳县');
INSERT INTO `position_county` VALUES ('2778', '610300000000', '610329000000', '麟游县');
INSERT INTO `position_county` VALUES ('2779', '610300000000', '610330000000', '凤县');
INSERT INTO `position_county` VALUES ('2780', '610300000000', '610331000000', '太白县');
INSERT INTO `position_county` VALUES ('2781', '610400000000', '610401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2782', '610400000000', '610402000000', '秦都区');
INSERT INTO `position_county` VALUES ('2783', '610400000000', '610403000000', '杨陵区');
INSERT INTO `position_county` VALUES ('2784', '610400000000', '610404000000', '渭城区');
INSERT INTO `position_county` VALUES ('2785', '610400000000', '610422000000', '三原县');
INSERT INTO `position_county` VALUES ('2786', '610400000000', '610423000000', '泾阳县');
INSERT INTO `position_county` VALUES ('2787', '610400000000', '610424000000', '乾县');
INSERT INTO `position_county` VALUES ('2788', '610400000000', '610425000000', '礼泉县');
INSERT INTO `position_county` VALUES ('2789', '610400000000', '610426000000', '永寿县');
INSERT INTO `position_county` VALUES ('2790', '610400000000', '610427000000', '彬县');
INSERT INTO `position_county` VALUES ('2791', '610400000000', '610428000000', '长武县');
INSERT INTO `position_county` VALUES ('2792', '610400000000', '610429000000', '旬邑县');
INSERT INTO `position_county` VALUES ('2793', '610400000000', '610430000000', '淳化县');
INSERT INTO `position_county` VALUES ('2794', '610400000000', '610431000000', '武功县');
INSERT INTO `position_county` VALUES ('2795', '610400000000', '610481000000', '兴平市');
INSERT INTO `position_county` VALUES ('2796', '610500000000', '610501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2797', '610500000000', '610502000000', '临渭区');
INSERT INTO `position_county` VALUES ('2798', '610500000000', '610521000000', '华县');
INSERT INTO `position_county` VALUES ('2799', '610500000000', '610522000000', '潼关县');
INSERT INTO `position_county` VALUES ('2800', '610500000000', '610523000000', '大荔县');
INSERT INTO `position_county` VALUES ('2801', '610500000000', '610524000000', '合阳县');
INSERT INTO `position_county` VALUES ('2802', '610500000000', '610525000000', '澄城县');
INSERT INTO `position_county` VALUES ('2803', '610500000000', '610526000000', '蒲城县');
INSERT INTO `position_county` VALUES ('2804', '610500000000', '610527000000', '白水县');
INSERT INTO `position_county` VALUES ('2805', '610500000000', '610528000000', '富平县');
INSERT INTO `position_county` VALUES ('2806', '610500000000', '610581000000', '韩城市');
INSERT INTO `position_county` VALUES ('2807', '610500000000', '610582000000', '华阴市');
INSERT INTO `position_county` VALUES ('2808', '610600000000', '610601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2809', '610600000000', '610602000000', '宝塔区');
INSERT INTO `position_county` VALUES ('2810', '610600000000', '610621000000', '延长县');
INSERT INTO `position_county` VALUES ('2811', '610600000000', '610622000000', '延川县');
INSERT INTO `position_county` VALUES ('2812', '610600000000', '610623000000', '子长县');
INSERT INTO `position_county` VALUES ('2813', '610600000000', '610624000000', '安塞县');
INSERT INTO `position_county` VALUES ('2814', '610600000000', '610625000000', '志丹县');
INSERT INTO `position_county` VALUES ('2815', '610600000000', '610626000000', '吴起县');
INSERT INTO `position_county` VALUES ('2816', '610600000000', '610627000000', '甘泉县');
INSERT INTO `position_county` VALUES ('2817', '610600000000', '610628000000', '富县');
INSERT INTO `position_county` VALUES ('2818', '610600000000', '610629000000', '洛川县');
INSERT INTO `position_county` VALUES ('2819', '610600000000', '610630000000', '宜川县');
INSERT INTO `position_county` VALUES ('2820', '610600000000', '610631000000', '黄龙县');
INSERT INTO `position_county` VALUES ('2821', '610600000000', '610632000000', '黄陵县');
INSERT INTO `position_county` VALUES ('2822', '610700000000', '610701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2823', '610700000000', '610702000000', '汉台区');
INSERT INTO `position_county` VALUES ('2824', '610700000000', '610721000000', '南郑县');
INSERT INTO `position_county` VALUES ('2825', '610700000000', '610722000000', '城固县');
INSERT INTO `position_county` VALUES ('2826', '610700000000', '610723000000', '洋县');
INSERT INTO `position_county` VALUES ('2827', '610700000000', '610724000000', '西乡县');
INSERT INTO `position_county` VALUES ('2828', '610700000000', '610725000000', '勉县');
INSERT INTO `position_county` VALUES ('2829', '610700000000', '610726000000', '宁强县');
INSERT INTO `position_county` VALUES ('2830', '610700000000', '610727000000', '略阳县');
INSERT INTO `position_county` VALUES ('2831', '610700000000', '610728000000', '镇巴县');
INSERT INTO `position_county` VALUES ('2832', '610700000000', '610729000000', '留坝县');
INSERT INTO `position_county` VALUES ('2833', '610700000000', '610730000000', '佛坪县');
INSERT INTO `position_county` VALUES ('2834', '610800000000', '610801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2835', '610800000000', '610802000000', '榆阳区');
INSERT INTO `position_county` VALUES ('2836', '610800000000', '610821000000', '神木县');
INSERT INTO `position_county` VALUES ('2837', '610800000000', '610822000000', '府谷县');
INSERT INTO `position_county` VALUES ('2838', '610800000000', '610823000000', '横山县');
INSERT INTO `position_county` VALUES ('2839', '610800000000', '610824000000', '靖边县');
INSERT INTO `position_county` VALUES ('2840', '610800000000', '610825000000', '定边县');
INSERT INTO `position_county` VALUES ('2841', '610800000000', '610826000000', '绥德县');
INSERT INTO `position_county` VALUES ('2842', '610800000000', '610827000000', '米脂县');
INSERT INTO `position_county` VALUES ('2843', '610800000000', '610828000000', '佳县');
INSERT INTO `position_county` VALUES ('2844', '610800000000', '610829000000', '吴堡县');
INSERT INTO `position_county` VALUES ('2845', '610800000000', '610830000000', '清涧县');
INSERT INTO `position_county` VALUES ('2846', '610800000000', '610831000000', '子洲县');
INSERT INTO `position_county` VALUES ('2847', '610900000000', '610901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2848', '610900000000', '610902000000', '汉滨区');
INSERT INTO `position_county` VALUES ('2849', '610900000000', '610921000000', '汉阴县');
INSERT INTO `position_county` VALUES ('2850', '610900000000', '610922000000', '石泉县');
INSERT INTO `position_county` VALUES ('2851', '610900000000', '610923000000', '宁陕县');
INSERT INTO `position_county` VALUES ('2852', '610900000000', '610924000000', '紫阳县');
INSERT INTO `position_county` VALUES ('2853', '610900000000', '610925000000', '岚皋县');
INSERT INTO `position_county` VALUES ('2854', '610900000000', '610926000000', '平利县');
INSERT INTO `position_county` VALUES ('2855', '610900000000', '610927000000', '镇坪县');
INSERT INTO `position_county` VALUES ('2856', '610900000000', '610928000000', '旬阳县');
INSERT INTO `position_county` VALUES ('2857', '610900000000', '610929000000', '白河县');
INSERT INTO `position_county` VALUES ('2858', '611000000000', '611001000000', '市辖区');
INSERT INTO `position_county` VALUES ('2859', '611000000000', '611002000000', '商州区');
INSERT INTO `position_county` VALUES ('2860', '611000000000', '611021000000', '洛南县');
INSERT INTO `position_county` VALUES ('2861', '611000000000', '611022000000', '丹凤县');
INSERT INTO `position_county` VALUES ('2862', '611000000000', '611023000000', '商南县');
INSERT INTO `position_county` VALUES ('2863', '611000000000', '611024000000', '山阳县');
INSERT INTO `position_county` VALUES ('2864', '611000000000', '611025000000', '镇安县');
INSERT INTO `position_county` VALUES ('2865', '611000000000', '611026000000', '柞水县');
INSERT INTO `position_county` VALUES ('2866', '620100000000', '620101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2867', '620100000000', '620102000000', '城关区');
INSERT INTO `position_county` VALUES ('2868', '620100000000', '620103000000', '七里河区');
INSERT INTO `position_county` VALUES ('2869', '620100000000', '620104000000', '西固区');
INSERT INTO `position_county` VALUES ('2870', '620100000000', '620105000000', '安宁区');
INSERT INTO `position_county` VALUES ('2871', '620100000000', '620111000000', '红古区');
INSERT INTO `position_county` VALUES ('2872', '620100000000', '620121000000', '永登县');
INSERT INTO `position_county` VALUES ('2873', '620100000000', '620122000000', '皋兰县');
INSERT INTO `position_county` VALUES ('2874', '620100000000', '620123000000', '榆中县');
INSERT INTO `position_county` VALUES ('2875', '620200000000', '620201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2876', '620300000000', '620301000000', '市辖区');
INSERT INTO `position_county` VALUES ('2877', '620300000000', '620302000000', '金川区');
INSERT INTO `position_county` VALUES ('2878', '620300000000', '620321000000', '永昌县');
INSERT INTO `position_county` VALUES ('2879', '620400000000', '620401000000', '市辖区');
INSERT INTO `position_county` VALUES ('2880', '620400000000', '620402000000', '白银区');
INSERT INTO `position_county` VALUES ('2881', '620400000000', '620403000000', '平川区');
INSERT INTO `position_county` VALUES ('2882', '620400000000', '620421000000', '靖远县');
INSERT INTO `position_county` VALUES ('2883', '620400000000', '620422000000', '会宁县');
INSERT INTO `position_county` VALUES ('2884', '620400000000', '620423000000', '景泰县');
INSERT INTO `position_county` VALUES ('2885', '620500000000', '620501000000', '市辖区');
INSERT INTO `position_county` VALUES ('2886', '620500000000', '620502000000', '秦州区');
INSERT INTO `position_county` VALUES ('2887', '620500000000', '620503000000', '麦积区');
INSERT INTO `position_county` VALUES ('2888', '620500000000', '620521000000', '清水县');
INSERT INTO `position_county` VALUES ('2889', '620500000000', '620522000000', '秦安县');
INSERT INTO `position_county` VALUES ('2890', '620500000000', '620523000000', '甘谷县');
INSERT INTO `position_county` VALUES ('2891', '620500000000', '620524000000', '武山县');
INSERT INTO `position_county` VALUES ('2892', '620500000000', '620525000000', '张家川回族自治县');
INSERT INTO `position_county` VALUES ('2893', '620600000000', '620601000000', '市辖区');
INSERT INTO `position_county` VALUES ('2894', '620600000000', '620602000000', '凉州区');
INSERT INTO `position_county` VALUES ('2895', '620600000000', '620621000000', '民勤县');
INSERT INTO `position_county` VALUES ('2896', '620600000000', '620622000000', '古浪县');
INSERT INTO `position_county` VALUES ('2897', '620600000000', '620623000000', '天祝藏族自治县');
INSERT INTO `position_county` VALUES ('2898', '620700000000', '620701000000', '市辖区');
INSERT INTO `position_county` VALUES ('2899', '620700000000', '620702000000', '甘州区');
INSERT INTO `position_county` VALUES ('2900', '620700000000', '620721000000', '肃南裕固族自治县');
INSERT INTO `position_county` VALUES ('2901', '620700000000', '620722000000', '民乐县');
INSERT INTO `position_county` VALUES ('2902', '620700000000', '620723000000', '临泽县');
INSERT INTO `position_county` VALUES ('2903', '620700000000', '620724000000', '高台县');
INSERT INTO `position_county` VALUES ('2904', '620700000000', '620725000000', '山丹县');
INSERT INTO `position_county` VALUES ('2905', '620800000000', '620801000000', '市辖区');
INSERT INTO `position_county` VALUES ('2906', '620800000000', '620802000000', '崆峒区');
INSERT INTO `position_county` VALUES ('2907', '620800000000', '620821000000', '泾川县');
INSERT INTO `position_county` VALUES ('2908', '620800000000', '620822000000', '灵台县');
INSERT INTO `position_county` VALUES ('2909', '620800000000', '620823000000', '崇信县');
INSERT INTO `position_county` VALUES ('2910', '620800000000', '620824000000', '华亭县');
INSERT INTO `position_county` VALUES ('2911', '620800000000', '620825000000', '庄浪县');
INSERT INTO `position_county` VALUES ('2912', '620800000000', '620826000000', '静宁县');
INSERT INTO `position_county` VALUES ('2913', '620900000000', '620901000000', '市辖区');
INSERT INTO `position_county` VALUES ('2914', '620900000000', '620902000000', '肃州区');
INSERT INTO `position_county` VALUES ('2915', '620900000000', '620921000000', '金塔县');
INSERT INTO `position_county` VALUES ('2916', '620900000000', '620922000000', '瓜州县');
INSERT INTO `position_county` VALUES ('2917', '620900000000', '620923000000', '肃北蒙古族自治县');
INSERT INTO `position_county` VALUES ('2918', '620900000000', '620924000000', '阿克塞哈萨克族自治县');
INSERT INTO `position_county` VALUES ('2919', '620900000000', '620981000000', '玉门市');
INSERT INTO `position_county` VALUES ('2920', '620900000000', '620982000000', '敦煌市');
INSERT INTO `position_county` VALUES ('2921', '621000000000', '621001000000', '市辖区');
INSERT INTO `position_county` VALUES ('2922', '621000000000', '621002000000', '西峰区');
INSERT INTO `position_county` VALUES ('2923', '621000000000', '621021000000', '庆城县');
INSERT INTO `position_county` VALUES ('2924', '621000000000', '621022000000', '环县');
INSERT INTO `position_county` VALUES ('2925', '621000000000', '621023000000', '华池县');
INSERT INTO `position_county` VALUES ('2926', '621000000000', '621024000000', '合水县');
INSERT INTO `position_county` VALUES ('2927', '621000000000', '621025000000', '正宁县');
INSERT INTO `position_county` VALUES ('2928', '621000000000', '621026000000', '宁县');
INSERT INTO `position_county` VALUES ('2929', '621000000000', '621027000000', '镇原县');
INSERT INTO `position_county` VALUES ('2930', '621100000000', '621101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2931', '621100000000', '621102000000', '安定区');
INSERT INTO `position_county` VALUES ('2932', '621100000000', '621121000000', '通渭县');
INSERT INTO `position_county` VALUES ('2933', '621100000000', '621122000000', '陇西县');
INSERT INTO `position_county` VALUES ('2934', '621100000000', '621123000000', '渭源县');
INSERT INTO `position_county` VALUES ('2935', '621100000000', '621124000000', '临洮县');
INSERT INTO `position_county` VALUES ('2936', '621100000000', '621125000000', '漳县');
INSERT INTO `position_county` VALUES ('2937', '621100000000', '621126000000', '岷县');
INSERT INTO `position_county` VALUES ('2938', '621200000000', '621201000000', '市辖区');
INSERT INTO `position_county` VALUES ('2939', '621200000000', '621202000000', '武都区');
INSERT INTO `position_county` VALUES ('2940', '621200000000', '621221000000', '成县');
INSERT INTO `position_county` VALUES ('2941', '621200000000', '621222000000', '文县');
INSERT INTO `position_county` VALUES ('2942', '621200000000', '621223000000', '宕昌县');
INSERT INTO `position_county` VALUES ('2943', '621200000000', '621224000000', '康县');
INSERT INTO `position_county` VALUES ('2944', '621200000000', '621225000000', '西和县');
INSERT INTO `position_county` VALUES ('2945', '621200000000', '621226000000', '礼县');
INSERT INTO `position_county` VALUES ('2946', '621200000000', '621227000000', '徽县');
INSERT INTO `position_county` VALUES ('2947', '621200000000', '621228000000', '两当县');
INSERT INTO `position_county` VALUES ('2948', '622900000000', '622901000000', '临夏市');
INSERT INTO `position_county` VALUES ('2949', '622900000000', '622921000000', '临夏县');
INSERT INTO `position_county` VALUES ('2950', '622900000000', '622922000000', '康乐县');
INSERT INTO `position_county` VALUES ('2951', '622900000000', '622923000000', '永靖县');
INSERT INTO `position_county` VALUES ('2952', '622900000000', '622924000000', '广河县');
INSERT INTO `position_county` VALUES ('2953', '622900000000', '622925000000', '和政县');
INSERT INTO `position_county` VALUES ('2954', '622900000000', '622926000000', '东乡族自治县');
INSERT INTO `position_county` VALUES ('2955', '622900000000', '622927000000', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `position_county` VALUES ('2956', '623000000000', '623001000000', '合作市');
INSERT INTO `position_county` VALUES ('2957', '623000000000', '623021000000', '临潭县');
INSERT INTO `position_county` VALUES ('2958', '623000000000', '623022000000', '卓尼县');
INSERT INTO `position_county` VALUES ('2959', '623000000000', '623023000000', '舟曲县');
INSERT INTO `position_county` VALUES ('2960', '623000000000', '623024000000', '迭部县');
INSERT INTO `position_county` VALUES ('2961', '623000000000', '623025000000', '玛曲县');
INSERT INTO `position_county` VALUES ('2962', '623000000000', '623026000000', '碌曲县');
INSERT INTO `position_county` VALUES ('2963', '623000000000', '623027000000', '夏河县');
INSERT INTO `position_county` VALUES ('2964', '630100000000', '630101000000', '市辖区');
INSERT INTO `position_county` VALUES ('2965', '630100000000', '630102000000', '城东区');
INSERT INTO `position_county` VALUES ('2966', '630100000000', '630103000000', '城中区');
INSERT INTO `position_county` VALUES ('2967', '630100000000', '630104000000', '城西区');
INSERT INTO `position_county` VALUES ('2968', '630100000000', '630105000000', '城北区');
INSERT INTO `position_county` VALUES ('2969', '630100000000', '630121000000', '大通回族土族自治县');
INSERT INTO `position_county` VALUES ('2970', '630100000000', '630122000000', '湟中县');
INSERT INTO `position_county` VALUES ('2971', '630100000000', '630123000000', '湟源县');
INSERT INTO `position_county` VALUES ('2972', '630200000000', '630202000000', '乐都区');
INSERT INTO `position_county` VALUES ('2973', '630200000000', '630203000000', '平安区');
INSERT INTO `position_county` VALUES ('2974', '630200000000', '630222000000', '民和回族土族自治县');
INSERT INTO `position_county` VALUES ('2975', '630200000000', '630223000000', '互助土族自治县');
INSERT INTO `position_county` VALUES ('2976', '630200000000', '630224000000', '化隆回族自治县');
INSERT INTO `position_county` VALUES ('2977', '630200000000', '630225000000', '循化撒拉族自治县');
INSERT INTO `position_county` VALUES ('2978', '632200000000', '632221000000', '门源回族自治县');
INSERT INTO `position_county` VALUES ('2979', '632200000000', '632222000000', '祁连县');
INSERT INTO `position_county` VALUES ('2980', '632200000000', '632223000000', '海晏县');
INSERT INTO `position_county` VALUES ('2981', '632200000000', '632224000000', '刚察县');
INSERT INTO `position_county` VALUES ('2982', '632300000000', '632321000000', '同仁县');
INSERT INTO `position_county` VALUES ('2983', '632300000000', '632322000000', '尖扎县');
INSERT INTO `position_county` VALUES ('2984', '632300000000', '632323000000', '泽库县');
INSERT INTO `position_county` VALUES ('2985', '632300000000', '632324000000', '河南蒙古族自治县');
INSERT INTO `position_county` VALUES ('2986', '632500000000', '632521000000', '共和县');
INSERT INTO `position_county` VALUES ('2987', '632500000000', '632522000000', '同德县');
INSERT INTO `position_county` VALUES ('2988', '632500000000', '632523000000', '贵德县');
INSERT INTO `position_county` VALUES ('2989', '632500000000', '632524000000', '兴海县');
INSERT INTO `position_county` VALUES ('2990', '632500000000', '632525000000', '贵南县');
INSERT INTO `position_county` VALUES ('2991', '632600000000', '632621000000', '玛沁县');
INSERT INTO `position_county` VALUES ('2992', '632600000000', '632622000000', '班玛县');
INSERT INTO `position_county` VALUES ('2993', '632600000000', '632623000000', '甘德县');
INSERT INTO `position_county` VALUES ('2994', '632600000000', '632624000000', '达日县');
INSERT INTO `position_county` VALUES ('2995', '632600000000', '632625000000', '久治县');
INSERT INTO `position_county` VALUES ('2996', '632600000000', '632626000000', '玛多县');
INSERT INTO `position_county` VALUES ('2997', '632700000000', '632701000000', '玉树市');
INSERT INTO `position_county` VALUES ('2998', '632700000000', '632722000000', '杂多县');
INSERT INTO `position_county` VALUES ('2999', '632700000000', '632723000000', '称多县');
INSERT INTO `position_county` VALUES ('3000', '632700000000', '632724000000', '治多县');
INSERT INTO `position_county` VALUES ('3001', '632700000000', '632725000000', '囊谦县');
INSERT INTO `position_county` VALUES ('3002', '632700000000', '632726000000', '曲麻莱县');
INSERT INTO `position_county` VALUES ('3003', '632800000000', '632801000000', '格尔木市');
INSERT INTO `position_county` VALUES ('3004', '632800000000', '632802000000', '德令哈市');
INSERT INTO `position_county` VALUES ('3005', '632800000000', '632821000000', '乌兰县');
INSERT INTO `position_county` VALUES ('3006', '632800000000', '632822000000', '都兰县');
INSERT INTO `position_county` VALUES ('3007', '632800000000', '632823000000', '天峻县');
INSERT INTO `position_county` VALUES ('3008', '632800000000', '632857000000', '大柴旦行政委员会');
INSERT INTO `position_county` VALUES ('3009', '632800000000', '632858000000', '冷湖行政委员会');
INSERT INTO `position_county` VALUES ('3010', '632800000000', '632859000000', '茫崖行政委员会');
INSERT INTO `position_county` VALUES ('3011', '640100000000', '640101000000', '市辖区');
INSERT INTO `position_county` VALUES ('3012', '640100000000', '640104000000', '兴庆区');
INSERT INTO `position_county` VALUES ('3013', '640100000000', '640105000000', '西夏区');
INSERT INTO `position_county` VALUES ('3014', '640100000000', '640106000000', '金凤区');
INSERT INTO `position_county` VALUES ('3015', '640100000000', '640121000000', '永宁县');
INSERT INTO `position_county` VALUES ('3016', '640100000000', '640122000000', '贺兰县');
INSERT INTO `position_county` VALUES ('3017', '640100000000', '640181000000', '灵武市');
INSERT INTO `position_county` VALUES ('3018', '640200000000', '640201000000', '市辖区');
INSERT INTO `position_county` VALUES ('3019', '640200000000', '640202000000', '大武口区');
INSERT INTO `position_county` VALUES ('3020', '640200000000', '640205000000', '惠农区');
INSERT INTO `position_county` VALUES ('3021', '640200000000', '640221000000', '平罗县');
INSERT INTO `position_county` VALUES ('3022', '640300000000', '640301000000', '市辖区');
INSERT INTO `position_county` VALUES ('3023', '640300000000', '640302000000', '利通区');
INSERT INTO `position_county` VALUES ('3024', '640300000000', '640303000000', '红寺堡区');
INSERT INTO `position_county` VALUES ('3025', '640300000000', '640323000000', '盐池县');
INSERT INTO `position_county` VALUES ('3026', '640300000000', '640324000000', '同心县');
INSERT INTO `position_county` VALUES ('3027', '640300000000', '640381000000', '青铜峡市');
INSERT INTO `position_county` VALUES ('3028', '640400000000', '640401000000', '市辖区');
INSERT INTO `position_county` VALUES ('3029', '640400000000', '640402000000', '原州区');
INSERT INTO `position_county` VALUES ('3030', '640400000000', '640422000000', '西吉县');
INSERT INTO `position_county` VALUES ('3031', '640400000000', '640423000000', '隆德县');
INSERT INTO `position_county` VALUES ('3032', '640400000000', '640424000000', '泾源县');
INSERT INTO `position_county` VALUES ('3033', '640400000000', '640425000000', '彭阳县');
INSERT INTO `position_county` VALUES ('3034', '640500000000', '640501000000', '市辖区');
INSERT INTO `position_county` VALUES ('3035', '640500000000', '640502000000', '沙坡头区');
INSERT INTO `position_county` VALUES ('3036', '640500000000', '640521000000', '中宁县');
INSERT INTO `position_county` VALUES ('3037', '640500000000', '640522000000', '海原县');
INSERT INTO `position_county` VALUES ('3038', '650100000000', '650101000000', '市辖区');
INSERT INTO `position_county` VALUES ('3039', '650100000000', '650102000000', '天山区');
INSERT INTO `position_county` VALUES ('3040', '650100000000', '650103000000', '沙依巴克区');
INSERT INTO `position_county` VALUES ('3041', '650100000000', '650104000000', '新市区');
INSERT INTO `position_county` VALUES ('3042', '650100000000', '650105000000', '水磨沟区');
INSERT INTO `position_county` VALUES ('3043', '650100000000', '650106000000', '头屯河区');
INSERT INTO `position_county` VALUES ('3044', '650100000000', '650107000000', '达坂城区');
INSERT INTO `position_county` VALUES ('3045', '650100000000', '650109000000', '米东区');
INSERT INTO `position_county` VALUES ('3046', '650100000000', '650121000000', '乌鲁木齐县');
INSERT INTO `position_county` VALUES ('3047', '650200000000', '650201000000', '市辖区');
INSERT INTO `position_county` VALUES ('3048', '650200000000', '650202000000', '独山子区');
INSERT INTO `position_county` VALUES ('3049', '650200000000', '650203000000', '克拉玛依区');
INSERT INTO `position_county` VALUES ('3050', '650200000000', '650204000000', '白碱滩区');
INSERT INTO `position_county` VALUES ('3051', '650200000000', '650205000000', '乌尔禾区');
INSERT INTO `position_county` VALUES ('3052', '650400000000', '650402000000', '高昌区');
INSERT INTO `position_county` VALUES ('3053', '650400000000', '650421000000', '鄯善县');
INSERT INTO `position_county` VALUES ('3054', '650400000000', '650422000000', '托克逊县');
INSERT INTO `position_county` VALUES ('3055', '652200000000', '652201000000', '哈密市');
INSERT INTO `position_county` VALUES ('3056', '652200000000', '652222000000', '巴里坤哈萨克自治县');
INSERT INTO `position_county` VALUES ('3057', '652200000000', '652223000000', '伊吾县');
INSERT INTO `position_county` VALUES ('3058', '652300000000', '652301000000', '昌吉市');
INSERT INTO `position_county` VALUES ('3059', '652300000000', '652302000000', '阜康市');
INSERT INTO `position_county` VALUES ('3060', '652300000000', '652323000000', '呼图壁县');
INSERT INTO `position_county` VALUES ('3061', '652300000000', '652324000000', '玛纳斯县');
INSERT INTO `position_county` VALUES ('3062', '652300000000', '652325000000', '奇台县');
INSERT INTO `position_county` VALUES ('3063', '652300000000', '652327000000', '吉木萨尔县');
INSERT INTO `position_county` VALUES ('3064', '652300000000', '652328000000', '木垒哈萨克自治县');
INSERT INTO `position_county` VALUES ('3065', '652700000000', '652701000000', '博乐市');
INSERT INTO `position_county` VALUES ('3066', '652700000000', '652702000000', '阿拉山口市');
INSERT INTO `position_county` VALUES ('3067', '652700000000', '652722000000', '精河县');
INSERT INTO `position_county` VALUES ('3068', '652700000000', '652723000000', '温泉县');
INSERT INTO `position_county` VALUES ('3069', '652800000000', '652801000000', '库尔勒市');
INSERT INTO `position_county` VALUES ('3070', '652800000000', '652822000000', '轮台县');
INSERT INTO `position_county` VALUES ('3071', '652800000000', '652823000000', '尉犁县');
INSERT INTO `position_county` VALUES ('3072', '652800000000', '652824000000', '若羌县');
INSERT INTO `position_county` VALUES ('3073', '652800000000', '652825000000', '且末县');
INSERT INTO `position_county` VALUES ('3074', '652800000000', '652826000000', '焉耆回族自治县');
INSERT INTO `position_county` VALUES ('3075', '652800000000', '652827000000', '和静县');
INSERT INTO `position_county` VALUES ('3076', '652800000000', '652828000000', '和硕县');
INSERT INTO `position_county` VALUES ('3077', '652800000000', '652829000000', '博湖县');
INSERT INTO `position_county` VALUES ('3078', '652900000000', '652901000000', '阿克苏市');
INSERT INTO `position_county` VALUES ('3079', '652900000000', '652922000000', '温宿县');
INSERT INTO `position_county` VALUES ('3080', '652900000000', '652923000000', '库车县');
INSERT INTO `position_county` VALUES ('3081', '652900000000', '652924000000', '沙雅县');
INSERT INTO `position_county` VALUES ('3082', '652900000000', '652925000000', '新和县');
INSERT INTO `position_county` VALUES ('3083', '652900000000', '652926000000', '拜城县');
INSERT INTO `position_county` VALUES ('3084', '652900000000', '652927000000', '乌什县');
INSERT INTO `position_county` VALUES ('3085', '652900000000', '652928000000', '阿瓦提县');
INSERT INTO `position_county` VALUES ('3086', '652900000000', '652929000000', '柯坪县');
INSERT INTO `position_county` VALUES ('3087', '653000000000', '653001000000', '阿图什市');
INSERT INTO `position_county` VALUES ('3088', '653000000000', '653022000000', '阿克陶县');
INSERT INTO `position_county` VALUES ('3089', '653000000000', '653023000000', '阿合奇县');
INSERT INTO `position_county` VALUES ('3090', '653000000000', '653024000000', '乌恰县');
INSERT INTO `position_county` VALUES ('3091', '653100000000', '653101000000', '喀什市');
INSERT INTO `position_county` VALUES ('3092', '653100000000', '653121000000', '疏附县');
INSERT INTO `position_county` VALUES ('3093', '653100000000', '653122000000', '疏勒县');
INSERT INTO `position_county` VALUES ('3094', '653100000000', '653123000000', '英吉沙县');
INSERT INTO `position_county` VALUES ('3095', '653100000000', '653124000000', '泽普县');
INSERT INTO `position_county` VALUES ('3096', '653100000000', '653125000000', '莎车县');
INSERT INTO `position_county` VALUES ('3097', '653100000000', '653126000000', '叶城县');
INSERT INTO `position_county` VALUES ('3098', '653100000000', '653127000000', '麦盖提县');
INSERT INTO `position_county` VALUES ('3099', '653100000000', '653128000000', '岳普湖县');
INSERT INTO `position_county` VALUES ('3100', '653100000000', '653129000000', '伽师县');
INSERT INTO `position_county` VALUES ('3101', '653100000000', '653130000000', '巴楚县');
INSERT INTO `position_county` VALUES ('3102', '653100000000', '653131000000', '塔什库尔干塔吉克自治县');
INSERT INTO `position_county` VALUES ('3103', '653200000000', '653201000000', '和田市');
INSERT INTO `position_county` VALUES ('3104', '653200000000', '653221000000', '和田县');
INSERT INTO `position_county` VALUES ('3105', '653200000000', '653222000000', '墨玉县');
INSERT INTO `position_county` VALUES ('3106', '653200000000', '653223000000', '皮山县');
INSERT INTO `position_county` VALUES ('3107', '653200000000', '653224000000', '洛浦县');
INSERT INTO `position_county` VALUES ('3108', '653200000000', '653225000000', '策勒县');
INSERT INTO `position_county` VALUES ('3109', '653200000000', '653226000000', '于田县');
INSERT INTO `position_county` VALUES ('3110', '653200000000', '653227000000', '民丰县');
INSERT INTO `position_county` VALUES ('3111', '654000000000', '654002000000', '伊宁市');
INSERT INTO `position_county` VALUES ('3112', '654000000000', '654003000000', '奎屯市');
INSERT INTO `position_county` VALUES ('3113', '654000000000', '654004000000', '霍尔果斯市');
INSERT INTO `position_county` VALUES ('3114', '654000000000', '654021000000', '伊宁县');
INSERT INTO `position_county` VALUES ('3115', '654000000000', '654022000000', '察布查尔锡伯自治县');
INSERT INTO `position_county` VALUES ('3116', '654000000000', '654023000000', '霍城县');
INSERT INTO `position_county` VALUES ('3117', '654000000000', '654024000000', '巩留县');
INSERT INTO `position_county` VALUES ('3118', '654000000000', '654025000000', '新源县');
INSERT INTO `position_county` VALUES ('3119', '654000000000', '654026000000', '昭苏县');
INSERT INTO `position_county` VALUES ('3120', '654000000000', '654027000000', '特克斯县');
INSERT INTO `position_county` VALUES ('3121', '654000000000', '654028000000', '尼勒克县');
INSERT INTO `position_county` VALUES ('3122', '654200000000', '654201000000', '塔城市');
INSERT INTO `position_county` VALUES ('3123', '654200000000', '654202000000', '乌苏市');
INSERT INTO `position_county` VALUES ('3124', '654200000000', '654221000000', '额敏县');
INSERT INTO `position_county` VALUES ('3125', '654200000000', '654223000000', '沙湾县');
INSERT INTO `position_county` VALUES ('3126', '654200000000', '654224000000', '托里县');
INSERT INTO `position_county` VALUES ('3127', '654200000000', '654225000000', '裕民县');
INSERT INTO `position_county` VALUES ('3128', '654200000000', '654226000000', '和布克赛尔蒙古自治县');
INSERT INTO `position_county` VALUES ('3129', '654300000000', '654301000000', '阿勒泰市');
INSERT INTO `position_county` VALUES ('3130', '654300000000', '654321000000', '布尔津县');
INSERT INTO `position_county` VALUES ('3131', '654300000000', '654322000000', '富蕴县');
INSERT INTO `position_county` VALUES ('3132', '654300000000', '654323000000', '福海县');
INSERT INTO `position_county` VALUES ('3133', '654300000000', '654324000000', '哈巴河县');
INSERT INTO `position_county` VALUES ('3134', '654300000000', '654325000000', '青河县');
INSERT INTO `position_county` VALUES ('3135', '654300000000', '654326000000', '吉木乃县');
INSERT INTO `position_county` VALUES ('3136', '659000000000', '659001000000', '石河子市');
INSERT INTO `position_county` VALUES ('3137', '659000000000', '659002000000', '阿拉尔市');
INSERT INTO `position_county` VALUES ('3138', '659000000000', '659003000000', '图木舒克市');
INSERT INTO `position_county` VALUES ('3139', '659000000000', '659004000000', '五家渠市');

-- ----------------------------
-- Table structure for position_province
-- ----------------------------
DROP TABLE IF EXISTS `position_province`;
CREATE TABLE `position_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `province_id` int(11) unsigned NOT NULL COMMENT '省份id、省份编号',
  `province_name` char(32) NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `provice_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='省份数据库';

-- ----------------------------
-- Records of position_province
-- ----------------------------
INSERT INTO `position_province` VALUES ('1', '11', '北京市');
INSERT INTO `position_province` VALUES ('2', '12', '天津市');
INSERT INTO `position_province` VALUES ('3', '13', '河北省');
INSERT INTO `position_province` VALUES ('4', '14', '山西省');
INSERT INTO `position_province` VALUES ('5', '15', '内蒙古自治区');
INSERT INTO `position_province` VALUES ('6', '21', '辽宁省');
INSERT INTO `position_province` VALUES ('7', '22', '吉林省');
INSERT INTO `position_province` VALUES ('8', '23', '黑龙江省');
INSERT INTO `position_province` VALUES ('9', '31', '上海市');
INSERT INTO `position_province` VALUES ('10', '32', '江苏省');
INSERT INTO `position_province` VALUES ('11', '33', '浙江省');
INSERT INTO `position_province` VALUES ('12', '34', '安徽省');
INSERT INTO `position_province` VALUES ('13', '35', '福建省');
INSERT INTO `position_province` VALUES ('14', '36', '江西省');
INSERT INTO `position_province` VALUES ('15', '37', '山东省');
INSERT INTO `position_province` VALUES ('16', '41', '河南省');
INSERT INTO `position_province` VALUES ('17', '42', '湖北省');
INSERT INTO `position_province` VALUES ('18', '43', '湖南省');
INSERT INTO `position_province` VALUES ('19', '44', '广东省');
INSERT INTO `position_province` VALUES ('20', '45', '广西壮族自治区');
INSERT INTO `position_province` VALUES ('21', '46', '海南省');
INSERT INTO `position_province` VALUES ('22', '50', '重庆市');
INSERT INTO `position_province` VALUES ('23', '51', '四川省');
INSERT INTO `position_province` VALUES ('24', '52', '贵州省');
INSERT INTO `position_province` VALUES ('25', '53', '云南省');
INSERT INTO `position_province` VALUES ('26', '54', '西藏自治区');
INSERT INTO `position_province` VALUES ('27', '61', '陕西省');
INSERT INTO `position_province` VALUES ('28', '62', '甘肃省');
INSERT INTO `position_province` VALUES ('29', '63', '青海省');
INSERT INTO `position_province` VALUES ('30', '64', '宁夏回族自治区');
INSERT INTO `position_province` VALUES ('31', '65', '新疆维吾尔自治区');

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
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` int(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `points` int(11) DEFAULT NULL COMMENT '具体积分',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '4', '4-4.5', 'dd_moshidu', '磨氏度', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('2', '50', '灰刚板地', 'dd_zhidi2', '质地二', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('3', '3', '&gt;15%', 'dd_xueliang', '血量', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('4', '70', '康山岭', 'dd_kqdy', '矿区地域', '70', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('5', '30', '粗糠坞', 'dd_kqdy', '矿区地域', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('6', '4', '硬', 'dd_zhidi', '质地', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('7', '1', '主表', 'table_type', '表类型', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('8', '30', '黑', 'dd_dise', '地色', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('9', '1', '浓艳', 'dd_nongyandu', '浓艳度', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('10', '2', '软', 'dd_zhidi', '质地', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('11', '2', '昌化田黄石', 'dd_pinzhong', '品种', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('12', '2', '表面含血', 'dd_hanxuefangshi', '含血方式', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('13', '0', '正常', 'del_flag', '删除标记', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('14', 'yellow', '黄色', 'color', '颜色值', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('15', '1', '会议通告\0\0', 'oa_notify_type', '通知通告类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('16', '2', '奖惩通告\0\0', 'oa_notify_type', '通知通告类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('17', '3', '活动通告\0\0', 'oa_notify_type', '通知通告类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('18', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('19', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('20', 'orange', '橙色', 'color', '颜色值', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('21', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('22', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('23', '2', '2-4', 'dd_moshidu', '磨氏度', '20', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('24', 'default', '默认主题', 'theme', '主题方案', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('25', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('26', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('27', '1', '国家', 'sys_area_type', '区域类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('28', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('29', '3', '地市', 'sys_area_type', '区域类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('30', '1', '净', 'dd_jingdu', '精度', '10', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('31', '110', '笔架石', 'dd_kqdy', '矿区地域', '110', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('32', 'post', 'post', 'interface_type', '接口类型', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('33', '120', '灰石岭', 'dd_kqdy', '矿区地域', '120', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('34', '50', '褐', 'dd_dise', '地色', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('35', '1', '鲜红', 'dd_xuese', '血色', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('36', '7', '星点状', 'dd_xuexing', '血形', '70', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('37', '1', '删除', 'del_flag', '删除标记', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('38', '4', '区县', 'sys_area_type', '区域类型', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('39', '1', '公司', 'sys_office_type', '机构类型', '60', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('40', '2', '部门', 'sys_office_type', '机构类型', '70', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('41', 'get', 'get', 'interface_type', '接口类型', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('42', '3', '小组', 'sys_office_type', '机构类型', '80', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('43', '4', '其它', 'sys_office_type', '机构类型', '90', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('44', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('45', '5', '网脉状', 'dd_xuexing', '血形', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('46', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('47', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('48', '60', '活刚板地', 'dd_zhidi2', '质地二', '60', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('49', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('50', '2', '艳', 'dd_nongyandu', '浓艳度', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('51', '2', '裂', 'dd_lie', '裂', '20', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('52', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('53', '1', '微裂', 'dd_lie', '裂', '10', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('54', '4', '复位黏结', 'dd_lie', '裂', '40', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('55', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('56', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('57', '6', '1面', 'dd_mian', '印章含血面', '60', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('58', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('59', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('60', '40', '老鹰岩', 'dd_kqdy', '矿区地域', '40', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('61', '3', '花', 'dd_jingdu', '精度', '30', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('62', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('63', '60', '青', 'dd_dise', '地色', '60', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('64', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('65', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('66', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('67', '2', '5面', 'dd_mian', '印章含血面', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('68', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('69', '1', '审核中', 'dd_status', '作品审核', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('70', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('71', '3', '微透、细腻、干', 'dd_ganguan', '感官', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('72', '2', '印章', 'dd_zuopinleixing', '作品类型', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('73', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('74', '1', '2&ndash;2.5', 'dd_moshidu', '磨氏度', '10', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('75', '2', '白', 'dd_dise', '地色', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('76', '3', '三级', 'dd_level', '级别', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('77', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('78', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('79', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('80', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('81', '130', '鸡冠岩', 'dd_kqdy', '矿区地域', '130', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('82', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('83', '2', '异常报告', 'report_type', '异常的报告', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('84', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('85', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('86', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('87', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('88', '0', '无', 'dd_lie', '裂', '0', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('89', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('90', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('91', '70', '混合', 'dd_dise', '地色', '70', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('92', '4', '杂', 'dd_jingdu', '精度', '40', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('93', '4', '不透、细腻、温润', 'dd_ganguan', '感官', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('94', '4', '绺、格、裂、复位黏结', 'dd_liu', '绺', '40', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('95', '1', '&gt;50%', 'dd_xueliang', '血量', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('96', '1', '是', 'yes_no', '是/否', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('97', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('98', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('99', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('100', '2', '二级', 'dd_level', '级别', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('101', '1', '昌化田黄鸡血石', 'dd_pinzhong', '品种', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('102', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('103', '3', '绺、格、裂', 'dd_liu', '绺', '30', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('104', '10', '黄', 'dd_dise', '地色', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('105', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('106', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('107', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('108', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('109', '6', '其他', 'dd_zuopinleixing', '作品类型', '60', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('110', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('111', '10', '纤岭', 'dd_kqdy', '矿区地域', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('112', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('113', '0', '单表', 'table_type', '表类型', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('114', '50', '红硐岩', 'dd_kqdy', '矿区地域', '50', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('115', '0', '否', 'yes_no', '是/否', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('116', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('117', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('118', '1', '原石', 'dd_zuopinleixing', '作品类型', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('119', '1', '公休', 'oa_leave_type', '请假类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('120', '2', '古玩', 'dd_preference', '收藏偏好', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('121', '2', '病假', 'oa_leave_type', '请假类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('122', '3', '事假', 'oa_leave_type', '请假类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('123', '3', '条状', 'dd_xuexing', '血形', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('124', '4', '调休', 'oa_leave_type', '请假类型', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('125', '5', '婚假', 'oa_leave_type', '请假类型', '60', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('126', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('127', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('128', '1', '正常报告', 'report_type', '正常的报告', '10', '0', '正常的报告', '0', null);
INSERT INTO `sys_dict` VALUES ('129', '70', '刚硬地', 'dd_zhidi2', '质地二', '70', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('130', '4', '暗红', 'dd_xuese', '血色', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('131', 'leave', '请假流程', 'act_type', '流程类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('132', '5', '4-6', 'dd_moshidu', '磨氏度', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('133', '2', '未通过', 'dd_status', '作品审核', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('134', 'red', '红色', 'color', '颜色值', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('135', 'test_audit', '审批测试流程', 'act_type', '流程类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('136', '4', '小玩件', 'dd_zuopinleixing', '作品类型', '40', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('137', '1', '分类1', 'act_category', '流程分类', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('138', 'ace', 'ACE风格', 'theme', '主题方案', '15', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('139', '1', '一级', 'dd_level', '级别', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('140', '2', '分类2', 'act_category', '流程分类', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('141', '1', '内在含血', 'dd_hanxuefangshi', '含血方式', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('142', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('143', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('144', '60', '红硐湾', 'dd_kqdy', '矿区地域', '60', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('145', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('146', '=', '=', 'gen_query_type', '查询方式', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('147', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('148', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('149', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('150', '40', '灰', 'dd_dise', '地色', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('151', '2', '收藏者', 'dd_user_type', '用户类型', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('152', 'green', '绿色', 'color', '颜色值', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('153', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('154', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('155', '10', '冻地', 'dd_zhidi2', '质地二', '10', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('156', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('157', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('158', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('159', '3', '淡', 'dd_nongyandu', '浓艳度', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('160', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('161', '1', '6面', 'dd_mian', '印章含血面', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('162', '3', '4面', 'dd_mian', '印章含血面', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('163', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('164', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('165', '90', '其他', 'dd_zhidi2', '质地二', '90', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('166', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('167', '3', '内在及表面混合含血', 'dd_hanxuefangshi', '含血方式', '30', '101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('168', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('169', '4', '&gt;5%', 'dd_xueliang', '血量', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('170', '99', '其他', 'dd_dise', '地色', '80', '11,172,209,101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('171', '4', '云雾状', 'dd_xuexing', '血形', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('172', '5', '昌化彩石、奇石', 'dd_pinzhong', '品种', '50', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('173', 'blue', '蓝色', 'color', '颜色值', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('174', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('175', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('176', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('177', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('178', '3', '淡红', 'dd_xuese', '血色', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('179', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('180', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('181', '1', '男', 'sex', '性别', '10', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('182', '2', '女', 'sex', '性别', '20', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('183', '80', '冷水湾', 'dd_kqdy', '矿区地域', '80', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('184', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('185', '80', '硬地', 'dd_zhidi2', '质地二', '80', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('186', '3', '刚', 'dd_zhidi', '质地', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('187', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', null, '0', null);
INSERT INTO `sys_dict` VALUES ('188', '3', '古家具', 'dd_preference', '收藏偏好', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('189', '6', '5-6', 'dd_moshidu', '磨氏度', '60', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('190', '1', '玉石', 'dd_preference', '收藏偏好', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('191', '1', '提供者', 'dd_user_type', '用户类型', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('192', '2', '接收', 'check', '审核动作', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('193', '4', '四级', 'dd_level', '级别', '40', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('194', '20', '软地', 'dd_zhidi2', '质地二', '20', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('195', '5', '2面', 'dd_mian', '印章含血面', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('196', '3', '雕件', 'dd_zuopinleixing', '作品类型', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('197', '2', '&gt;30%', 'dd_xueliang', '血量', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('198', '3', '裂缝(裂隙注胶)', 'dd_lie', '裂', '30', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('199', '2', '略净', 'dd_jingdu', '精度', '20', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('200', '5', '组合套件', 'dd_zuopinleixing', '作品类型', '50', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('201', '2', '微透、细腻、温润', 'dd_ganguan', '感官', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('202', '5', '不透、细腻、干', 'dd_ganguan', '感官', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('203', '1', '冻', 'dd_zhidi', '质地', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('204', '0', '无', 'dd_liu', '绺', '50', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('205', '2', '绺、裂', 'dd_liu', '绺', '20', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('206', '3', '树结构表', 'table_type', '表类型', '40', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('207', '3', '退还', 'check', '审核动作', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('208', '2', '片状', 'dd_xuexing', '血形', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('209', '4', '昌化冻石', 'dd_pinzhong', '品种', '40', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('210', '2', '附表', 'table_type', '表类型', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('211', '4', '3面', 'dd_mian', '印章含血面', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('212', '6', '细脉状', 'dd_xuexing', '血形', '60', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('213', '100', '蚱蜢脚盘', 'dd_kqdy', '矿区地域', '100', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('214', '11', '冻软地', 'dd_zhidi2', '质地二', '11', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('215', '1', '透、细腻、温润', 'dd_ganguan', '感官', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('216', '1', '绺', 'dd_liu', '绺', '10', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('217', '1', '递交', 'check', '审核动作', '10', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('218', '5', '&gt;0%', 'dd_xueliang', '血量', '50', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('219', '4', '稀', 'dd_nongyandu', '浓艳度', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('220', '3', '昌化鸡血石', 'dd_pinzhong', '品种', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('221', '8', '其他', 'dd_xuexing', '血形', '80', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('222', '3', '已通过', 'dd_status', '作品审核', '30', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('223', '20', '核桃岭', 'dd_kqdy', '矿区地域', '20', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('224', '40', '冻软硬地', 'dd_zhidi2', '质地二', '40', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('225', '3', '2-6', 'dd_moshidu', '磨氏度', '30', '11,101,172,209,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('226', '90', '仰天荡', 'dd_kqdy', '矿区地域', '90', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('227', '30', '冻软刚地', 'dd_zhidi2', '质地二', '30', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('228', '1', '团块状', 'dd_xuexing', '血形', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('229', '2', '红', 'dd_xuese', '血色', '20', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('254', '1', '作品被浏览', 'score_type', '积分类型', '10', '0', '', '0', '1');
INSERT INTO `sys_dict` VALUES ('255', '2', '作品被分享', 'score_type', '积分类型', '20', '0', '', '0', '2');
INSERT INTO `sys_dict` VALUES ('256', '3', '作品被诠释', 'score_type', '积分类型', '30', '0', '', '0', '0');
INSERT INTO `sys_dict` VALUES ('257', '4', '分享他人作品', 'score_type', '积分类型', '40', '0', '', '0', '1');
INSERT INTO `sys_dict` VALUES ('258', '5', '诠释他人作品', 'score_type', '积分类型', '50', '0', '', '0', '0');
INSERT INTO `sys_dict` VALUES ('259', '6', '提现', 'score_type', '积分类型', '60', '0', '', '0', '0');
INSERT INTO `sys_dict` VALUES ('260', '7', '充值', 'score_type', '积分类型', '70', '0', '', '0', '0');
INSERT INTO `sys_dict` VALUES ('261', '8', '被他人关注', 'score_type', '积分类型', '80', '0', '', '0', '2');
INSERT INTO `sys_dict` VALUES ('262', '9', '作品转让', 'score_type', '积分类型', '90', '0', '', '0', '0');
INSERT INTO `sys_dict` VALUES ('279', '21', '刚地', 'dd_zhidi2', '质地二', '21', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('280', '10', '黄金皮（黄色）', 'dd_ziranshipi', '自然皮石', '10', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('281', '20', '白银皮（白色）', 'dd_ziranshipi', '自然皮石', '20', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('282', '30', '金银皮（黄白色）', 'dd_ziranshipi', '自然皮石', '30', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('283', '40', '乌金皮（黑色）', 'dd_ziranshipi', '自然皮石', '40', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('284', '50', '混合色', 'dd_ziranshipi', '自然皮石', '50', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('285', '60', '无', 'dd_ziranshipi', '自然皮石', '60', '11,101', '', '0', null);
INSERT INTO `sys_dict` VALUES ('286', '6', '透明至微透明、细腻、温润、凝结', 'dd_ganguan', '感官', '60', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('287', '7', '微透明至不透明、细腻、温润、凝结', 'dd_ganguan', '感官', '70', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('288', '8', '不透明、发干', 'dd_ganguan', '感官', '80', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('289', '80', '金黄色', 'dd_dise', '地色', '80', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('290', '90', '橘黄色', 'dd_dise', '地色', '83', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('291', '91', '蜜蜡黄色', 'dd_dise', '地色', '86', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('292', '92', '土黄色', 'dd_dise', '地色', '89', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('293', '93', '淡黄色', 'dd_dise', '地色', '92', '11,172,209', '', '0', null);
INSERT INTO `sys_dict` VALUES ('294', '1', '无裂', 'dd_lie', '裂', '10', '101,220', '', '0', null);
INSERT INTO `sys_dict` VALUES ('295', '91', '未知', 'dd_kqdy', '矿区地域', '91', '0', '', '0', null);
INSERT INTO `sys_dict` VALUES ('296', '5', '未知', 'dd_level', '级别', '50', '0', '', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_menu` VALUES ('112', '机构管理', 'office', '1', '47', null, '2', '1', '机构管理', '0');
INSERT INTO `sys_menu` VALUES ('113', '字典表管理', 'dict', '1', '48', null, '2', '1', '字典表管理', '0');

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
INSERT INTO `sys_office` VALUES ('5', '6a642e140e40496a8d467c646b8e935e', '0,1,6a642e140e40496a8d467c646b8e935e', '软件部', '40', '90ecd439eb3845db97a627d9242145e8', '003', '3', '1', null, null, null, null, null, null, '1', null, null, '1', '2017-02-24 11:21:35', '1', '2017-02-24 11:21:42', null, '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8 COMMENT='权限和资源（菜单+按钮）';

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('410', '1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('411', '1', '2', '2');
INSERT INTO `sys_role_resource` VALUES ('412', '1', '3', '2');
INSERT INTO `sys_role_resource` VALUES ('413', '1', '4', '2');
INSERT INTO `sys_role_resource` VALUES ('414', '1', '106', '2');
INSERT INTO `sys_role_resource` VALUES ('415', '1', '107', '2');
INSERT INTO `sys_role_resource` VALUES ('416', '1', '112', '2');
INSERT INTO `sys_role_resource` VALUES ('417', '1', '113', '2');
INSERT INTO `sys_role_resource` VALUES ('418', '1', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('419', '1', '100', '2');
INSERT INTO `sys_role_resource` VALUES ('420', '1', '105', '2');
INSERT INTO `sys_role_resource` VALUES ('421', '1', '101', '1');
INSERT INTO `sys_role_resource` VALUES ('422', '1', '102', '2');
INSERT INTO `sys_role_resource` VALUES ('423', '1', '103', '2');
INSERT INTO `sys_role_resource` VALUES ('424', '1', '104', '2');
INSERT INTO `sys_role_resource` VALUES ('425', '1', '108', '1');
INSERT INTO `sys_role_resource` VALUES ('426', '1', '109', '2');
INSERT INTO `sys_role_resource` VALUES ('427', '1', '110', '2');
INSERT INTO `sys_role_resource` VALUES ('428', '1', '111', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', '2017-01-20 10:34:39', '0:0:0:0:0:0:0:1', '0', '123', '1234', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', 'luzhen', '18d5907164eddc5f29f39732c8eb4254e6082f10', 'luzhen', '2017-02-24 16:54:30', null, null, null, '601590910@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '2017-02-06 09:37:23', '724defcb1555caef02f730ea71a663af');
INSERT INTO `sys_user` VALUES ('4', 'test01', '85fc99ef253d2a5ffda4416073f6028ce372e57b', 'test01', null, null, '0', '测试用户01', 'test@111.com', '18011112222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);

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
