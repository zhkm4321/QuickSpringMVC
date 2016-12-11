/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : db_smvcm

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2016-12-11 21:06:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `addr_user` varchar(255) DEFAULT NULL COMMENT '收件人姓名',
  `addr_name` varchar(255) DEFAULT NULL COMMENT '地址',
  `addr_tel` varchar(255) DEFAULT NULL COMMENT '收件人电话',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户',
  `sort` varchar(255) DEFAULT '5',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('11', ' ', '     1', '   ', '111', '20160409131928', null, null, null);
INSERT INTO `tb_address` VALUES ('13', '', '', '', '4', null, null, null, null);
INSERT INTO `tb_address` VALUES ('14', '123', '', '', '4', null, null, null, null);
INSERT INTO `tb_address` VALUES ('15', '123', '1234', '123', '4', null, null, null, null);
INSERT INTO `tb_address` VALUES ('16', '常振伟', '55', '13357823304', '6', null, null, null, null);
INSERT INTO `tb_address` VALUES ('17', '哈', '111111', '11111', '13', '20160416103616', null, null, null);
INSERT INTO `tb_address` VALUES ('18', '尹翔', '南京市新街口政务大厦北楼306', '18260009902', '5', '20160426221551', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('19', '武蒙', '雨润大街123456789好好好好好好好好好好哈哈哈', '13800138000', '13', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('20', '我的', '123', '13800138000', '13', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('21', '哈哈哈', '你家', '1111111', '13', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('22', '你好high糊涂推拿Jul图兔兔图图', '好好好好好好好好好好好好好好好好好好好好好好好好好', '13800138000', '13', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('24', '雷锋', '水岸明珠3', '13184235048', '13', null, '1', '16', '11');
INSERT INTO `tb_address` VALUES ('25', '楚荡', '永武街16号', '18977106731', '26', null, '2', '7', '12');
INSERT INTO `tb_address` VALUES ('26', '晨', '大石桥', '18913834441', '17', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('27', '晨', '大石桥', '18913834441', '12', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('28', '李祥', '卫巷29—2,80手机', '15005151906', '29', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('29', '胡翀宇', '大石桥19号', '13851759927', '25', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('30', 'robbin', '柳州东路', '18301985940', '35', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('31', 'ssss', '玄武大道', 'ssss18301985940', '35', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('32', '哈哈', '2号', '1111111111111', '35', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('33', 'xxxx', 'xxxxxx', '18018673503', '37', null, '2', '23', '1');
INSERT INTO `tb_address` VALUES ('34', 'test', '南京', '13524525133', '38', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('35', '你', '这', '18516187204', '39', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('37', '看看', '做最去外婆哦破', '13357823304', '6', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('38', '12312', '123123123', '3123123123123', '44', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('39', '张先生', '真新商务楼628', '13391008872', '54', null, '4', '25', '4');
INSERT INTO `tb_address` VALUES ('41', '付伟', '捎带手按时发哦就', '15120095077', '57', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('42', '11', '1111', '13513533333', '58', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('43', '八', '蘑菇头图片', '1333333333', '63', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('44', '体检', '推荐', '15888888888', '67', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('45', 'ddd', '走着走着zz', 'ssd', '79', null, '2', '18', '2');
INSERT INTO `tb_address` VALUES ('46', 'ss', '收拾收拾', 'ssss', '81', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('47', '北京', '回龙观', '13718105180', '82', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('48', '肖文志', '休息休息谢谢', '11111111', '104', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('49', '默默', '急急急急', '13803518888', '94', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('50', 'd f f', 'd f f f', 's sh h', '66', null, '1', '17', '2');
INSERT INTO `tb_address` VALUES ('51', 'JJ了', '\'\'\'5考虑考虑', '18658630700', '111', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('52', '11', '555', '11111111111', '120', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('53', '测试名', '测试。', '13525252521', '118', null, '1', '16', '12');
INSERT INTO `tb_address` VALUES ('54', '测试名', '测试地点', '13676767676', '119', null, '20', '6', '6');
INSERT INTO `tb_address` VALUES ('55', 'ssssss', '说的话电话', '13213131313', '121', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('56', 'king', '啊啊啊啊', '18711110000', '127', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('57', '王承林', '123358', '13193152333', '97', null, '4', '7', '6');
INSERT INTO `tb_address` VALUES ('58', '王晓鹏', '桃子路16号', '15907979898', '136', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('59', '李先生', '哈哈哈哈', '13826531136', '140', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('60', '么么哒', '110', '15048562332', '149', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('61', '么么哒', '110', '15048562332', '149', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('62', '司小毛', '6646', '497844346', '153', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('63', '沈在宏', '28栋601', '17095011358', '156', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('64', '午餐', '：德克勒克', '15329109996', '159', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('65', '到达', '赶紧睡觉', '13112341234', '157', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('66', '哈哈哈哈', '哥给你', '13655552236', '175', '20160821162620', '1', '16', '9');
INSERT INTO `tb_address` VALUES ('67', '发货', '随便吧暴饮暴食', '15699999999', '178', '20160821162620', '1', '4', '3');
INSERT INTO `tb_address` VALUES ('68', '叶晓明', '西丽街道88栋501', '15999594104', '179', '20160821162620', '6', '6', '4');
INSERT INTO `tb_address` VALUES ('69', '生里', '14722', '13100000000', '183', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('70', '这', '在', '我', '185', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('71', '测试', '测试', '13128845886', '188', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('72', '刘韦', '123', '18855150306', '192', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('73', '咯噢噢', '他们默默', '18365432123', '193', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('74', '测试', '测试', '13812345678', '196', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('75', 'h l', '啦啦', '利库路特', '197', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('76', '伍照生', '很多亟待解决', '15329109996', '198', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('77', '陈瑞', '1111', '1508603232', '199', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('78', '哈哈', '4444', '13184222222', '186', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('79', '我', '你们都', '19398273728', '204', null, '1', '16', '2');

-- ----------------------------
-- Table structure for tb_appointment
-- ----------------------------
DROP TABLE IF EXISTS `tb_appointment`;
CREATE TABLE `tb_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约ID',
  `service_id` int(11) NOT NULL COMMENT '关联服务ID',
  `user_id` int(255) NOT NULL COMMENT '预约用户',
  `phone` varchar(255) NOT NULL COMMENT '预约电话',
  `note` varchar(255) DEFAULT NULL,
  `amount` double(10,2) NOT NULL COMMENT '费用',
  `repair_shop_id` varchar(255) DEFAULT NULL COMMENT '汽修店关联ID',
  `shop_tel` varchar(255) DEFAULT NULL COMMENT '商户电话',
  `address` varchar(255) DEFAULT NULL COMMENT '服务地点',
  `province` varchar(255) NOT NULL COMMENT '服务省份',
  `city` varchar(255) NOT NULL COMMENT '服务所在地城市',
  `area` varchar(255) NOT NULL COMMENT '服务所在区域',
  `status` int(255) NOT NULL COMMENT '预约进度',
  `status_info` longtext COMMENT '进度文本信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_appointment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_aptitude
-- ----------------------------
DROP TABLE IF EXISTS `tb_aptitude`;
CREATE TABLE `tb_aptitude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '关联用户ID',
  `aptitude_name` varchar(255) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aptitude_file_id` (`file_id`),
  KEY `fk_aptitude_user_id` (`user_id`),
  CONSTRAINT `fk_aptitude_file_id` FOREIGN KEY (`file_id`) REFERENCES `tb_file` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aptitude_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_aptitude
-- ----------------------------

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `ban_img` varchar(255) DEFAULT NULL COMMENT '广告图片',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `sort` int(11) DEFAULT NULL COMMENT '链接排序',
  `type` int(11) DEFAULT NULL COMMENT '链接类型',
  `status` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES ('1', '/chihaodian/upload/1457876411558.png', '#', '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('2', '/upload/1457922904544.png', '#', '4', '1', '0');
INSERT INTO `tb_banner` VALUES ('3', '/upload/1466840233549.png', 'http://www.7haodian.cc/chihaodian/page/category.html?ctg_id=23', '2', '1', '1');
INSERT INTO `tb_banner` VALUES ('4', '/upload/1457922914911.png', '#', '2', '1', '0');
INSERT INTO `tb_banner` VALUES ('5', '/upload/1464335304002.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=40', '5', '2', '1');
INSERT INTO `tb_banner` VALUES ('7', '/upload/1466840222440.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=39', '1', '1', '1');
INSERT INTO `tb_banner` VALUES ('8', '/upload/1464335248909.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=66', '4', '2', '1');
INSERT INTO `tb_banner` VALUES ('9', '/upload/1465882607388.png', 'http://www.7haodian.cc/chihaodian/page/cpsAll.html', '0', '2', '1');
INSERT INTO `tb_banner` VALUES ('10', '/upload/1467004540850.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=60', '0', '1', '1');
INSERT INTO `tb_banner` VALUES ('11', '/upload/1467004561444.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=61', '0', '1', '1');

-- ----------------------------
-- Table structure for tb_button
-- ----------------------------
DROP TABLE IF EXISTS `tb_button`;
CREATE TABLE `tb_button` (
  `id` varchar(25) NOT NULL COMMENT '菜单按钮ID',
  `name` varchar(255) DEFAULT NULL COMMENT '按钮名称',
  `type` varchar(255) DEFAULT NULL COMMENT '菜单类别，click，view',
  `value` varchar(255) DEFAULT NULL,
  `super_id` varchar(25) DEFAULT NULL COMMENT '父级id，即本表id；',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `level` int(11) DEFAULT NULL COMMENT '按钮层级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_button
-- ----------------------------
INSERT INTO `tb_button` VALUES ('1468903253791', '充值专区', 'view', '', '1468903253791', null, '1', '1');
INSERT INTO `tb_button` VALUES ('1468903253792', '菜单二', 'view', null, '1468903253792', null, '2', '1');
INSERT INTO `tb_button` VALUES ('1468903253793', '菜单三', 'view', 'http://www.7haodian.cc/chihaodian/main/index.html', '1468903253793', null, '3', '1');
INSERT INTO `tb_button` VALUES ('1468903253794', '流量专区', 'view', 'http://dx.ibguai.com/yishop/page/index.html', '1468903253791', null, '1', '2');
INSERT INTO `tb_button` VALUES ('1468903253797', '二、1', 'view', 'http://www.baidu.com', '1468903253792', null, '1', '2');
INSERT INTO `tb_button` VALUES ('1468903253798', '二、2', 'view', 'http://www.baidu.com', '1468903253792', null, '2', '2');
INSERT INTO `tb_button` VALUES ('1468903305065', '2', 'view', 'http://www.baidu.com', '1468903253792', '2016-07-19 12:41:45', '3', '2');
INSERT INTO `tb_button` VALUES ('1474170107783', 'index', 'view', 'http://www.7haodian.cc/chihaodian/page/index.html', '1468903253792', '2016-09-18 11:41:47', '1', '2');

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) DEFAULT NULL COMMENT '图片',
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `goods_price` float DEFAULT NULL COMMENT '商品单价',
  `goods_num` int(11) DEFAULT NULL COMMENT '数量',
  `goods_total` float DEFAULT NULL COMMENT '共计金额',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES ('150', '71', '生态黄金耳', '/upload/1465718546056.png', '1袋', '12', '1', '12', '30');
INSERT INTO `tb_cart` VALUES ('153', '25', '新疆库尔勒香梨', '/upload/1463109011535.png', '16个', '25.8', '2', '51.6', '35');
INSERT INTO `tb_cart` VALUES ('173', '55', '加拿大AAA级牛小排', '/upload/1464316409415.png', '500g(3-4片）', '228', '1', '228', '78');
INSERT INTO `tb_cart` VALUES ('187', '70', '生态菜籽油', '/upload/1465718279680.png', '5L', '115', '3', '345', '82');
INSERT INTO `tb_cart` VALUES ('189', '39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '2', '96', '75');
INSERT INTO `tb_cart` VALUES ('191', '21', '蔬菜会员半年卡', '/upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '1', '2000', '75');
INSERT INTO `tb_cart` VALUES ('202', '39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '1', '48', '98');
INSERT INTO `tb_cart` VALUES ('204', '55', '加拿大AAA级牛小排', '/upload/1464316409415.png', '500g(3-4片）', '228', '4', '912', '101');
INSERT INTO `tb_cart` VALUES ('207', '39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '1', '48', '104');
INSERT INTO `tb_cart` VALUES ('208', '21', '蔬菜会员半年卡', '/upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '1', '2000', '104');
INSERT INTO `tb_cart` VALUES ('218', '39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '2', '96', '110');
INSERT INTO `tb_cart` VALUES ('221', '21', '蔬菜会员半年卡', '/upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '1', '2000', '113');
INSERT INTO `tb_cart` VALUES ('223', '39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '1', '48', '115');
INSERT INTO `tb_cart` VALUES ('237', '19', '蔬菜会员月卡', '/upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '1', '360', '130');
INSERT INTO `tb_cart` VALUES ('239', '42', '泰国金枕榴莲', '/upload/1465724197732.png', '约5-7斤', '109', '1', '109', '131');
INSERT INTO `tb_cart` VALUES ('240', '43', '泰国金枕榴莲', '/upload/1465724208122.png', '约3.5-4.9斤', '89', '1', '89', '131');
INSERT INTO `tb_cart` VALUES ('241', '19', '蔬菜会员月卡', '/upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '4', '1440', '131');
INSERT INTO `tb_cart` VALUES ('249', '70', '生态菜籽油', '/upload/1465718279680.png', '5L', '115', '1', '115', '142');
INSERT INTO `tb_cart` VALUES ('262', '19', '蔬菜会员月卡', '/upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '2', '720', '159');
INSERT INTO `tb_cart` VALUES ('276', '68', '非转基因黄豆', '/upload/1465701002059.png', '500g', '10', '1', '10', '176');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(11) DEFAULT NULL COMMENT '父分类ID',
  `ctg_name` varchar(255) DEFAULT '',
  `ctg_img` varchar(255) DEFAULT '',
  `status` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('0', null, '根节点', null, '1', null);
INSERT INTO `tb_category` VALUES ('1', '0', '美容', null, '1', '1');
INSERT INTO `tb_category` VALUES ('2', '0', '装饰', null, '1', '2');
INSERT INTO `tb_category` VALUES ('3', '0', '养护', null, '1', '3');
INSERT INTO `tb_category` VALUES ('4', '0', '改装', null, '0', '4');
INSERT INTO `tb_category` VALUES ('5', '0', '维修', null, '0', '5');
INSERT INTO `tb_category` VALUES ('6', '0', '俱乐部', null, '0', '6');
INSERT INTO `tb_category` VALUES ('7', '0', '保险', null, '0', '7');
INSERT INTO `tb_category` VALUES ('8', '1', '车表护理', null, '0', null);
INSERT INTO `tb_category` VALUES ('9', '1', '漆面美容', null, '0', null);
INSERT INTO `tb_category` VALUES ('10', '1', '内饰美容', null, '0', null);
INSERT INTO `tb_category` VALUES ('11', '1', '高级美容', null, '0', null);
INSERT INTO `tb_category` VALUES ('12', '2', '外部装饰', null, '0', null);
INSERT INTO `tb_category` VALUES ('13', '2', '车内装饰', null, '0', null);
INSERT INTO `tb_category` VALUES ('14', '2', '高级装饰', null, '0', null);
INSERT INTO `tb_category` VALUES ('15', '3', '常规养护', null, '0', null);
INSERT INTO `tb_category` VALUES ('16', '3', '免拆维护', null, '0', null);
INSERT INTO `tb_category` VALUES ('17', '3', '高级养护', null, '0', null);
INSERT INTO `tb_category` VALUES ('18', '4', '外观改装', null, '0', null);
INSERT INTO `tb_category` VALUES ('19', '4', '性能提升', null, '0', null);
INSERT INTO `tb_category` VALUES ('20', '4', '赛车改装', null, '0', null);
INSERT INTO `tb_category` VALUES ('21', '5', '钣金喷漆', null, '0', null);
INSERT INTO `tb_category` VALUES ('22', '5', '车身部分', null, '0', null);
INSERT INTO `tb_category` VALUES ('23', '5', '汽车玻璃', null, '0', null);
INSERT INTO `tb_category` VALUES ('24', '5', '动力部分', null, '0', null);
INSERT INTO `tb_category` VALUES ('25', '5', '电器部分', null, '0', null);
INSERT INTO `tb_category` VALUES ('26', '5', '底盘部分', null, '0', null);
INSERT INTO `tb_category` VALUES ('27', '5', '轮胎', null, '0', null);

-- ----------------------------
-- Table structure for tb_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_config`;
CREATE TABLE `tb_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置',
  `config_group` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_config
-- ----------------------------
INSERT INTO `tb_config` VALUES ('1', 'wxconfig', 'appID', 'wx1d3a8c1a4339be71', '2016-12-11 20:04:10');
INSERT INTO `tb_config` VALUES ('2', 'wxconfig', 'appsecret', 'd4624c36b6795d1d99dcf0547af5443d', '2016-12-11 20:04:12');
INSERT INTO `tb_config` VALUES ('3', 'wxconfig', 'token', '72597b9628704ab09e8b9e8cbe9b540a', '2016-12-11 20:04:15');
INSERT INTO `tb_config` VALUES ('4', 'wxconfig', 'wxserver_domain', 'http://wx.zheng-hang.com/', '2016-12-11 20:04:17');
INSERT INTO `tb_config` VALUES ('5', 'wxconfig', 'get_access_token_url', 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET', '2016-12-11 20:04:19');
INSERT INTO `tb_config` VALUES ('6', 'wxconfig', 'access_token', 'ToClTyFwlaLef7Mwidf8YEX-ceP4npIsUyXXIFag5rlbomAP2eLxEPmj0peVSaJk4ovgy-soPXe3rpGkh4tSh76iuM-8bWiBF1rP7Y-vZEEPKsiqDTGNPFjCgWy8ASQVUBAbAGAOVU', '2016-12-08 20:04:21');
INSERT INTO `tb_config` VALUES ('7', 'wxconfig', 'expires_in', '7200', '2016-12-11 20:04:24');

-- ----------------------------
-- Table structure for tb_coupons
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupons`;
CREATE TABLE `tb_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券ID',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_code` varchar(255) DEFAULT NULL COMMENT '优惠券兑换码',
  `cps_price` float DEFAULT NULL COMMENT '优惠价格',
  `cps_time` varchar(255) DEFAULT NULL COMMENT '优惠券有效期',
  `cps_level` int(11) DEFAULT NULL COMMENT '0系统总优惠券，!0用户优惠券',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户ID',
  `status` int(11) DEFAULT '1' COMMENT '0已用，1可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_coupons
-- ----------------------------
INSERT INTO `tb_coupons` VALUES ('42', '1', '77500', '1', '2016-03-29', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('48', '端午节优惠券', '40868', '5', '2016-05-27', '43', '13', '0');
INSERT INTO `tb_coupons` VALUES ('49', '测试', '87093', '5', '2016-05-27', '45', '5', '1');
INSERT INTO `tb_coupons` VALUES ('50', '端午节优惠券', '40868', '5', '2016-05-31', '43', '5', '1');
INSERT INTO `tb_coupons` VALUES ('51', '测试', '87093', '5', '2016-05-27', '45', '13', '0');
INSERT INTO `tb_coupons` VALUES ('52', '新用户领券', '71233', '10', '2016-05-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('53', '新用户领券', '71233', '10', '2016-05-31', '52', '5', '0');
INSERT INTO `tb_coupons` VALUES ('54', '新用户领券', '71233', '10', '2016-05-31', '52', '13', '1');
INSERT INTO `tb_coupons` VALUES ('55', '新手优惠', '13289', '10', '2016-12-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('56', '新手优惠', '13289', '10', '2016-12-31', '55', '5', '0');
INSERT INTO `tb_coupons` VALUES ('57', '新手优惠', '13289', '10', '2016-12-31', '55', '11', '1');
INSERT INTO `tb_coupons` VALUES ('58', '新手优惠', '13289', '10', '2016-12-31', '55', '13', '1');
INSERT INTO `tb_coupons` VALUES ('59', '新手优惠', '13289', '10', '2016-12-31', '55', '25', '0');
INSERT INTO `tb_coupons` VALUES ('60', '新手优惠', '13289', '10', '2016-12-31', '55', '12', '0');
INSERT INTO `tb_coupons` VALUES ('61', '新手优惠', '13289', '10', '2016-12-31', '55', '35', '1');
INSERT INTO `tb_coupons` VALUES ('63', '新手优惠', '13289', '10', '2016-12-31', '55', '36', '1');
INSERT INTO `tb_coupons` VALUES ('64', '新手优惠', '13289', '10', '2016-12-31', '55', '44', '1');
INSERT INTO `tb_coupons` VALUES ('65', '新手优惠', '13289', '10', '2016-12-31', '55', '47', '1');
INSERT INTO `tb_coupons` VALUES ('66', '新手优惠', '13289', '10', '2016-12-31', '55', '24', '1');
INSERT INTO `tb_coupons` VALUES ('67', '新手优惠', '13289', '10', '2016-12-31', '55', '57', '1');
INSERT INTO `tb_coupons` VALUES ('68', '新手优惠', '13289', '10', '2016-12-31', '55', '69', '1');
INSERT INTO `tb_coupons` VALUES ('69', '新手优惠', '13289', '10', '2016-12-31', '55', '77', '1');
INSERT INTO `tb_coupons` VALUES ('70', '新手优惠', '13289', '10', '2016-12-31', '55', '82', '1');
INSERT INTO `tb_coupons` VALUES ('71', '新手优惠', '13289', '10', '2016-12-31', '55', '110', '1');
INSERT INTO `tb_coupons` VALUES ('72', '新手优惠', '13289', '10', '2016-12-31', '55', '118', '1');
INSERT INTO `tb_coupons` VALUES ('73', '新手优惠', '13289', '10', '2016-12-31', '55', '119', '0');
INSERT INTO `tb_coupons` VALUES ('74', '新手优惠', '13289', '10', '2016-12-31', '55', '94', '1');
INSERT INTO `tb_coupons` VALUES ('75', '新手优惠', '13289', '10', '2016-12-31', '55', '144', '1');
INSERT INTO `tb_coupons` VALUES ('76', '新手优惠', '13289', '10', '2016-12-31', '55', '157', '0');
INSERT INTO `tb_coupons` VALUES ('77', '新手优惠', '13289', '10', '2016-12-31', '55', '158', '1');
INSERT INTO `tb_coupons` VALUES ('79', '新手优惠', '13289', '10', '2016-12-31', '55', '159', '1');
INSERT INTO `tb_coupons` VALUES ('80', '新手优惠', '13289', '10', '2016-12-31', '55', '160', '1');
INSERT INTO `tb_coupons` VALUES ('81', '新手优惠', '13289', '10', '2016-12-31', '55', '166', '1');
INSERT INTO `tb_coupons` VALUES ('82', '新手优惠', '13289', '10', '2016-12-31', '55', '178', '1');
INSERT INTO `tb_coupons` VALUES ('83', '新手优惠', '13289', '10', '2016-12-31', '55', '179', '1');
INSERT INTO `tb_coupons` VALUES ('84', '新手优惠', '13289', '10', '2016-12-31', '55', '187', '1');

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `file_path` varchar(255) DEFAULT NULL,
  `valid` int(11) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` int(2) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`id`),
  KEY `fk_file_user_id` (`user_id`),
  CONSTRAINT `fk_file_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_file
-- ----------------------------

-- ----------------------------
-- Table structure for tb_freight
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运费ID',
  `fgt_price` float DEFAULT NULL COMMENT '运费价格',
  `free_price` float DEFAULT NULL COMMENT '包邮价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_freight
-- ----------------------------
INSERT INTO `tb_freight` VALUES ('1', '6', '58');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '规格',
  `goods_price` double(10,2) DEFAULT NULL,
  `goods_detail` text,
  `goods_num` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL COMMENT '是1否0热销',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否首页推荐',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1普通商品2会员商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('2', '西瓜', '/upload/1457923321834.png', '', '200.00', '阿斯蒂芬', null, '2016-03-13', '7', '1', '1', null);
INSERT INTO `tb_goods` VALUES ('16', '油麦菜', '/upload/1464245268878.png', '1斤', '0.00', '', null, '2016-04-29', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('19', '蔬菜会员月卡', '/upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360.00', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615151535_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615151535_559.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('20', '蔬菜会员月卡', '/upload/1465975621288.png', '1个月/8次 3-5人 每次9斤', '520.00', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615152713_944.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615152713_423.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('21', '蔬菜会员半年卡', '/upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000.00', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615153117_614.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615153118_561.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('22', '蔬菜会员半年卡', '/upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900.00', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615154727_406.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154727_241.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('23', '蔬菜会员年卡', '/upload/1465976906449.png', '1年/104次 2-3人 每次6斤', '3600.00', '<img src=\"/chihaodian/../upload/image/20160615/20160615154839_620.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154839_633.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('24', '蔬菜会员年卡', '/upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300.00', '<img src=\"/chihaodian/../upload/image/20160615/20160615154908_679.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154908_133.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('25', '新疆库尔勒香梨', '/upload/1463109011535.png', '16个', '25.80', '<img src=\"/upload/image/20160513/20160513111104_660.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111118_958.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111124_44.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111132_415.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('26', '东方蜜1号', '/upload/1463110161194.png', '3个 约4-5斤', '29.90', '<img src=\"/upload/image/20160513/20160513112937_524.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('27', '海南木瓜', '/upload/1463110264179.png', '1个', '6.50', '<img src=\"/upload/image/20160513/20160513113119_408.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('29', '四川柠檬', '/upload/1465703766021.png', '4个', '7.90', '<img src=\"/upload/image/20160517/20160517161902_232.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('30', '缅甸黄河蜜', '/upload/1464250276685.png', '约4斤', '18.90', '<img src=\"/upload/image/20160517/20160517162017_401.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('31', '麒麟西瓜', '/upload/1463473271392.png', '约5.5斤-6.5斤', '26.90', '<img src=\"/upload/image/20160517/20160517162206_337.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('32', '特小凤西瓜', '/upload/1463473433361.png', '约4斤-5斤', null, '<img src=\"/upload/image/20160517/20160517162428_793.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('33', '烟台红富士80脆', '/upload/1463473499830.png', '1斤', '4.80', '<img src=\"/upload/image/20160517/20160517162523_535.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('34', '海南西州蜜', '/upload/1463473570955.png', '约4斤', '27.90', '<img src=\"/upload/image/20160517/20160517162639_435.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('35', '小台农芒果', '/upload/1463473632080.png', '12个', '17.80', '<img src=\"/upload/image/20160517/20160517162745_47.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162751_93.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162756_531.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('36', '越南红心火龙果', '/upload/1463473711206.png', '1个 约675g', '20.00', '<img src=\"/upload/image/20160517/20160517163058_156.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('37', '台湾传统小番茄 ', '/upload/1463474160676.png', '1斤', '8.00', '<img src=\"/upload/image/20160517/20160517163621_933.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('38', '有机葡聚糖胚芽米', '/upload/1464165453285.png', '10斤', '228.00', '<img src=\"/upload/image/20160525/20160525163922_150.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163927_913.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163932_131.jpg\" alt=\"\" />', null, '2016-05-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48.00', '<img src=\"/upload/image/20160624/20160624091338_96.jpg\" alt=\"\" />', null, '2016-05-25', '21', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('40', '新西兰佳沛阳', '/upload/1465724169981.png', '6个', '60.00', '<img src=\"/upload/image/20160526/20160526140644_568.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140648_727.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140652_405.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('42', '泰国金枕榴莲', '/upload/1465724197732.png', '约5-7斤', '109.00', '<img src=\"/upload/image/20160526/20160526141141_970.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141146_445.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141150_602.jpg\" alt=\"\" />', null, '2016-05-26', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('43', '泰国金枕榴莲', '/upload/1465724208122.png', '约3.5-4.9斤', '89.00', '<img src=\"/upload/image/20160526/20160526141311_610.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141315_276.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141319_949.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('44', '香葱', '/upload/1464245310066.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('45', '西蓝花', '/upload/1464245343050.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('46', '西葫芦', '/upload/1464245387566.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('47', '豌豆苗', '/upload/1464245419066.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('48', '茼蒿', '/upload/1464245453129.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('49', '榻菜', '/upload/1464245485582.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('50', '蒜薹', '/upload/1464245516050.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('51', '生菜', '/upload/1464245592332.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('52', '青椒', '/upload/1464245620769.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('53', '青菜', '/upload/1464245647957.png', '一斤', '0.00', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('54', '巴西原装翅中', '/upload/1464316350243.png', '1KG', '58.00', '<img src=\"/upload/image/20160601/20160601163307_898.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601163459_674.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164856_426.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164905_212.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164912_311.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164919_196.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164925_118.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164932_981.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164938_196.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('55', '加拿大AAA级牛小排', '/upload/1464316409415.png', '500g(3-4片）', '228.00', '<img src=\"/upload/image/20160606/20160606094353_270.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094401_308.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094418_609.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094427_103.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094435_408.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094442_489.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094449_579.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094456_406.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094504_811.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094512_875.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094518_415.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('56', '加拿大AAA板腱牛排', '/upload/1464319904220.png', '3-4片', '89.00', '<img src=\"/upload/image/20160606/20160606114256_204.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114304_437.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114310_628.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114316_861.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114321_756.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114326_99.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('57', '澳洲草饲牛仔骨 500g（6-8片）', '/upload/1464319978611.png', '6-8片', '89.00', '<img src=\"/upload/image/20160606/20160606110603_342.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110610_827.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110616_482.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110626_702.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110632_714.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110638_473.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110651_500.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110656_605.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110703_722.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110710_991.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('58', '肥牛卷 透明托盒装', '/upload/1464318053841.png', ' 500g', '59.00', '<img src=\"/upload/image/20160606/20160606114831_626.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114837_63.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114842_346.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114847_370.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114852_206.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114857_629.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114901_5.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('59', '澳洲牛尾', '/upload/1464320071736.png', '500g', '58.00', '<img src=\"/upload/image/20160606/20160606115420_775.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115426_235.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115431_832.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115436_598.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115441_281.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115450_882.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115454_290.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115459_387.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115504_193.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115510_375.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115514_465.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115520_889.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115535_489.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('60', '澳洲草饲牛腩块', '/upload/1464318370545.png', '500g', '56.00', '<img src=\"/upload/image/20160606/20160606135919_524.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606135927_492.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140003_418.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140008_567.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140017_948.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140022_917.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140028_783.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140033_800.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140038_961.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140044_227.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140053_999.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140057_239.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140102_152.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('61', '台湾土鸡仔', '/upload/1465887400031.png', '1.0-1.2KG', '48.00', '<img src=\"/upload/image/20160606/20160606140430_427.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140435_145.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140440_760.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140444_391.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140450_406.jpg\" alt=\"\" />', null, '2016-05-27', '22', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('62', '台湾红标老母鸡', '/upload/1465888267174.png', '2.0kg', '168.00', '<img src=\"/chihaodian/../upload/image/20160606/20160606152309_200.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152309_515.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_670.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_793.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_374.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_428.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_638.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_336.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_816.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_153.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_364.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_941.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('63', '同仁堂十全大补台湾红标老母鸡', '/upload/1464319011485.png', '2.0KG', '228.00', '<img src=\"/chihaodian/../upload/image/20160606/20160606153659_117.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_414.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_71.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_547.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_55.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_164.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_857.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_250.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_90.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_822.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_971.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('64', '生态稻田土鸡蛋', '/upload/1466479271070.png', '48枚', '96.00', '<img src=\"/upload/image/20160615/20160615091200_871.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('65', '妃子笑荔枝', '/upload/1465723952090.png', '1kg', '30.00', '<img src=\"/chihaodian/../upload/image/20160607/20160607142334_888.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('66', '澳大利亚无籽红提', '/upload/1465724148153.png', '500g', '21.90', '<img src=\"/upload/image/20160607/20160607144646_538.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('67', '菲律宾大香蕉', '/upload/1465723850965.png', '1.5kg', '19.80', '<img src=\"/upload/image/20160608/20160608093755_855.jpg\" alt=\"\" />', null, '2016-06-08', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('68', '非转基因黄豆', '/upload/1465701002059.png', '500g', '10.00', '<img src=\"/chihaodian/../upload/image/20160612/20160612111019_687.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_150.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_516.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('69', '生态菜籽油', '/upload/1465717197584.png', '2.5L', '60.00', '<img src=\"/chihaodian/../upload/image/20160612/20160612155635_29.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_501.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_968.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('70', '生态菜籽油', '/upload/1465718279680.png', '5L', '115.00', '<img src=\"/chihaodian/../upload/image/20160612/20160612155912_633.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_584.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_783.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('71', '生态黄金耳', '/upload/1466474419051.png', '1袋', '12.00', '<img src=\"/upload/image/20160621/20160621100036_686.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('72', '新疆西州蜜', '/upload/1465802535035.png', '2.25kg-2.5kg', '39.80', '<img src=\"/upload/image/20160613/20160613152642_827.jpg\" alt=\"\" />', null, '2016-06-13', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('73', '蔬菜会员卡年卡', '/upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588.00', '<img src=\"/chihaodian/../upload/image/20160615/20160615155134_9.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615155135_852.jpg\" alt=\"\" />', null, '2016-06-15', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('74', '冬虫夏草（鲜草）', '/upload/1466479379008.png', '20条', '850.00', '<img src=\"/upload/image/20160621/20160621112332_761.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('75', '冬虫夏草（鲜草）', '/upload/1466479445305.png', '50条', '1998.00', '<img src=\"/upload/image/20160621/20160621112452_333.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('76', '冬虫夏草（鲜草）', '/upload/1466479517055.png', '100条', '3880.00', '<img src=\"/upload/image/20160621/20160621112538_490.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('77', '山竹', '/upload/1466736000313.png', '1', '0.10', '<img src=\"/upload/image/20160624/20160624104011_926.jpg\" alt=\"\" />', null, '2016-06-24', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('78', '仙桃香粳米 50斤', '/upload/1466818615476.png', '25kg', '180.00', '<img src=\"/upload/image/20160625/20160625093709_160.jpg\" alt=\"\" />', null, '2016-06-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('79', '商品测试', '/upload/1474343819028.png', '', '1.00', '', null, '2016-09-20', '23', null, '1', '1');

-- ----------------------------
-- Table structure for tb_identification
-- ----------------------------
DROP TABLE IF EXISTS `tb_identification`;
CREATE TABLE `tb_identification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '正反面0:正面，1:反面',
  `file_id` int(11) DEFAULT NULL COMMENT '关联文件ID',
  PRIMARY KEY (`id`),
  KEY `pk_identification_file_id` (`file_id`),
  CONSTRAINT `pk_identification_file_id` FOREIGN KEY (`file_id`) REFERENCES `tb_file` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_identification
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `read` int(1) DEFAULT NULL COMMENT '是否已读0:未读1:已读',
  PRIMARY KEY (`id`),
  KEY `fk_message_user_id` (`user_id`),
  CONSTRAINT `fk_message_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_message
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) DEFAULT NULL,
  `goods_name` text,
  `goods_img` text,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `goods_total_num` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `receive` varchar(255) DEFAULT NULL COMMENT '收货方式，如果为自提点则记录自提点，如果是快递则记录收货地址',
  `cps_id` int(11) DEFAULT NULL COMMENT '优惠券ID',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_price` float DEFAULT NULL COMMENT '优惠价格',
  `status` int(11) DEFAULT NULL COMMENT '0待付款，1待发货，2已发货',
  `note` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `add_time` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=522 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('47', '3', '西瓜', '/upload/1460216501594.png', null, '0.1', '1', '0.1', '1', '武蒙 13800138000 1111', '鼓楼1', null, '', '0', '0', null, '2016-04-11 08:07:46', '13');
INSERT INTO `tb_order` VALUES ('48', '3,-=1', '西瓜,-=西红柿1', '/upload/1460216501594.png,-=/upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '123 123 1234', '', null, '', '0', '0', null, '2016-04-11 21:23:37', '4');
INSERT INTO `tb_order` VALUES ('49', '3,-=1', '西瓜,-=西红柿1', '/upload/1460216501594.png,-=/upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', '0', null, '2016-04-11 21:34:21', '13');
INSERT INTO `tb_order` VALUES ('50', '3,-=1', '西瓜,-=西红柿1', '/upload/1460381914241.png,-=/upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', '0', null, '2016-04-11 21:39:26', '13');
INSERT INTO `tb_order` VALUES ('51', '3,-=1', '西瓜,-=西红柿1', '/upload/1460381914241.png,-=/upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', '0', null, '2016-04-11 21:41:01', '13');
INSERT INTO `tb_order` VALUES ('52', '3,-=1', '西瓜,-=西红柿1', '/upload/1460381914241.png,-=/upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', '0', null, '2016-04-11 21:59:15', '13');
INSERT INTO `tb_order` VALUES ('53', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '武蒙 13800138000 1111', '', null, '', '0', '0', null, '2016-04-12 23:38:36', '13');
INSERT INTO `tb_order` VALUES ('54', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '常振伟 13357823304 55', '', null, '', '0', '0', null, '2016-04-13 16:26:19', '6');
INSERT INTO `tb_order` VALUES ('55', '1', '西红柿1', '/upload/1457923339965.png', null, '200.0', '4', '800', '4', '常振伟 13357823304 55', '', null, '', '0', '0', null, '2016-04-13 16:30:06', '6');
INSERT INTO `tb_order` VALUES ('56', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '常振伟 13357823304 55', '玄武区1', null, '', '0', '0', null, '2016-04-13 16:36:27', '6');
INSERT INTO `tb_order` VALUES ('57', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '哈 11111 111111', '', null, '', '0', '0', null, '2016-04-14 17:51:54', '13');
INSERT INTO `tb_order` VALUES ('59', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区3', null, '', '0', '2', null, '2016-04-15 14:16:33', '13');
INSERT INTO `tb_order` VALUES ('61', '4', '????', '/upload/1458972205809.png', null, '0.0', '1', '0.02', '1', '哈 11111 111111', '', null, '', '0', '0', null, '2016-04-21 17:44:37', '13');
INSERT INTO `tb_order` VALUES ('63', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '15', '1.5', '15', '哈 11111 111111', '玄武区1', null, '', '0', '0', null, '2016-04-27 07:06:11', '13');
INSERT INTO `tb_order` VALUES ('64', '1', '西红柿1', '/upload/1457923339965.png', null, '200.0', '8', '1600', '8', '哈 11111 111111', '', null, '', '0', '0', null, '2016-04-27 07:07:10', '13');
INSERT INTO `tb_order` VALUES ('65', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', '0', null, '2016-04-27 20:45:29', '13');
INSERT INTO `tb_order` VALUES ('66', '3', '西瓜', '/upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', '2', null, '2016-04-28 10:09:43', '13');
INSERT INTO `tb_order` VALUES ('67', '16,-=18', '特小凤西瓜,-=123', '/upload/1461913791357.png,-=/upload/1461908769781.png', null, '18.9,-=123.0', '1,-=1', '141.9', '2', '我的 13800138000 江苏 南京市 市辖区 123', '玄武区1', null, '', '0', '0', null, '2016-05-03 15:02:55', '13');
INSERT INTO `tb_order` VALUES ('68', '16,-=18', '特小凤西瓜,-=123', '/upload/1461913791357.png,-=/upload/1462258643458.png', null, '0.0,-=123.0', '1,-=1', '123.02', '2', '你好high糊涂推拿Jul图兔兔图图 13800138000    好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', '0', null, '2016-05-04 10:44:24', '13');
INSERT INTO `tb_order` VALUES ('70', '18', '123', '/upload/1462258643458.png', null, '123.0', '1', '123.02', '1', '你好high糊涂推拿Jul图兔兔图图 138001380', '', null, '', '0', '0', null, '2016-05-04 11:49:57', '13');
INSERT INTO `tb_order` VALUES ('71', '18', '吃号店精品推荐', '/upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', '2', null, '2016-05-06 16:24:57', '13');
INSERT INTO `tb_order` VALUES ('72', '18', '吃号店精品推荐', '/upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', '2', null, '2016-05-06 16:39:27', '13');
INSERT INTO `tb_order` VALUES ('75', '18', '吃号店精品推荐', '/upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '你好high糊涂推拿Jul图兔兔图图 13800138000 江苏 南京市 玄武区 好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', '0', null, '2016-05-09 17:19:14', '13');
INSERT INTO `tb_order` VALUES ('76', '18', '吃号店精品推荐', '/upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-09 17:20:52', '13');
INSERT INTO `tb_order` VALUES ('77', '18', '吃号店精品推荐', '/upload/1462258643458.png', null, '0.01', '15', '-4.85', '15', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '44', '端午节优惠券', '5', '0', null, '2016-05-10 22:26:26', '13');
INSERT INTO `tb_order` VALUES ('78', '27,-=28,-=26', '海南木瓜,-=伦晚橙,-=东方蜜1号', '/upload/1463110264179.png,-=/upload/1463192197542.png,-=/upload/1463110161194.png', null, '25.9,-=32.9,-=29.9', '2,-=1,-=1', '114.6', '4', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', '0', null, '2016-05-16 21:26:38', '13');
INSERT INTO `tb_order` VALUES ('79', '19,-=22,-=23', '放心蔬菜,-=放心蔬菜会员半年卡 每次9斤,-=放心蔬菜会员年卡 每次6斤', '/upload/1463108870113.png,-=/upload/1463034781289.png,-=/upload/1463035150649.png', null, '360.0,-=2900.0,-=3600.0', '3,-=1,-=6', '25580', '10', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', '0', null, '2016-05-19 23:56:33', '13');
INSERT INTO `tb_order` VALUES ('80', '29,-=30', '四川柠檬,-=缅甸黄河蜜', '/upload/1463473103033.png,-=/upload/1463473177830.png', null, '7.9,-=18.9', '1,-=1', '32.8', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-23 13:22:05', '13');
INSERT INTO `tb_order` VALUES ('81', '22', '放心蔬菜会员半年卡 每次9斤', '/upload/1463034781289.png', null, '2900.0', '1', '2895', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '48', '端午节优惠券', '5', '0', null, '2016-05-23 13:48:01', '13');
INSERT INTO `tb_order` VALUES ('82', '24', '放心蔬菜会员年卡 每次9斤', '/upload/1463035381900.png', null, '5300.0', '1', '5300', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-24 14:11:28', '13');
INSERT INTO `tb_order` VALUES ('83', '19', '放心蔬菜', '/upload/1463108870113.png', null, '360.0', '1', '350', '1', '关机了 111111 江苏 南京市 白下区 112', '', '53', '新用户领券', '10', '0', null, '2016-05-25 10:37:05', '5');
INSERT INTO `tb_order` VALUES ('84', '16', '特小凤西瓜', '/upload/1461913791357.png', null, '0.0', '1', '6', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-25 14:00:20', '13');
INSERT INTO `tb_order` VALUES ('85', '31', '麒麟西瓜', '/upload/1463473271392.png', null, '26.9', '1', '32.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', 'undefined', null, '', '0', '0', null, '2016-05-25 14:01:35', '13');
INSERT INTO `tb_order` VALUES ('88', '30', '缅甸黄河蜜', '/upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-25 14:10:26', '13');
INSERT INTO `tb_order` VALUES ('89', '30', '缅甸黄河蜜', '/upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', null, '2016-05-25 14:11:28', '13');
INSERT INTO `tb_order` VALUES ('90', '33', '烟台红富士80脆', '/upload/1463473499830.png', null, '4.8', '3', '10.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', '54', '新用户领券', '10', '2', null, '2016-05-25 14:12:23', '13');
INSERT INTO `tb_order` VALUES ('91', '44', '香葱', '/upload/1464245310066.png', null, '0.0', '5', '0', '5', '关机了 111111 江苏 南京市 白下区 112', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', '2', null, '2016-05-26 17:42:04', '5');
INSERT INTO `tb_order` VALUES ('92', '19', '蔬菜会员月卡', '/upload/1463108870113.png', null, '360.0', '1', '360', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', '0', null, '2016-06-03 13:15:08', '26');
INSERT INTO `tb_order` VALUES ('93', '40', '新西兰佳沛阳光金果', '/upload/1464249541340.png', null, '60.0', '1', '60', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', '0', null, '2016-06-03 13:18:30', '26');
INSERT INTO `tb_order` VALUES ('94', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', null, '', '0', '0', null, '2016-06-13 16:50:46', '12');
INSERT INTO `tb_order` VALUES ('95', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '125.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '-6', null, '2016-06-13 17:12:49', '13');
INSERT INTO `tb_order` VALUES ('96', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '李祥 15005151906 江苏 南京市 玄武区 卫巷29—2,80手机', '玄武区丹凤街新街口政务大厦', null, '', '0', '2', null, '2016-06-15 09:56:44', '29');
INSERT INTO `tb_order` VALUES ('97', '39', '生态揉玉米', '/upload/1464165603582.png', null, '48.0', '1', '38', '1', '胡翀宇 13851759927 江苏 南京市 玄武区 大石桥19号', '玄武区丹凤街新街口政务大厦', '59', '新手优惠', '10', '2', null, '2016-06-15 10:45:01', '25');
INSERT INTO `tb_order` VALUES ('98', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', '0', null, '2016-06-15 14:17:13', '13');
INSERT INTO `tb_order` VALUES ('99', '68', '非转基因黄豆', '/upload/1465701002059.png', null, '10.0', '1', '0', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区丹凤街新街口政务大厦', '56', '新手优惠', '10', '2', 'haoma13901581204+', '2016-06-15 16:51:12', '5');
INSERT INTO `tb_order` VALUES ('100', '68', '非转基因黄豆', '/upload/1465701002059.png', null, '10.0', '1', '0', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', '60', '新手优惠', '10', '2', null, '2016-06-15 17:22:29', '12');
INSERT INTO `tb_order` VALUES ('101', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '25.8', '1', 'robbin 18301985940 江苏 南京市 玄武区 柳州东路', '', null, '', '0', '0', null, '2016-06-16 21:03:17', '35');
INSERT INTO `tb_order` VALUES ('102', '66,-=65', '澳大利亚无籽红提,-=妃子笑荔枝', '/upload/1465724148153.png,-=/upload/1465723952090.png', null, '21.9,-=30.0', '1,-=1', '57.9', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '哈哈', '2016-06-20 14:54:53', '13');
INSERT INTO `tb_order` VALUES ('103', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-06-20 14:56:08', '13');
INSERT INTO `tb_order` VALUES ('104', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-06-21 10:09:55', '13');
INSERT INTO `tb_order` VALUES ('105', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-06-21 10:10:34', '13');
INSERT INTO `tb_order` VALUES ('106', '20', '蔬菜会员月卡', '/upload/1465975621288.png', null, '520.0', '1', '520', '1', 'test 13524525133 江苏 南京市 玄武区 南京', '', null, '', '0', '0', '', '2016-06-21 13:47:53', '38');
INSERT INTO `tb_order` VALUES ('107', '70,-=68', '生态菜籽油,-=非转基因黄豆', '/upload/1465718279680.png,-=/upload/1465701002059.png', null, '115.0,-=10.0', '1,-=1', '125', '2', '你 18516187204 江苏 南京市 玄武区 这', '', null, '', '0', '0', '', '2016-06-21 14:19:42', '39');
INSERT INTO `tb_order` VALUES ('108', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '陈好 13815875144 江苏 南京市 秦淮区 汉中黄金时间时间', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '就堵堵堵', '2016-06-21 15:56:59', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw');
INSERT INTO `tb_order` VALUES ('109', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '看看 13357823304 江苏 南京市 玄武区 做最去外婆哦破', '', null, '', '0', '0', '', '2016-06-22 15:28:35', '6');
INSERT INTO `tb_order` VALUES ('110', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '2', '88888888', '2016-06-24 11:17:38', '5');
INSERT INTO `tb_order` VALUES ('111', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区null', null, '', '0', '0', '12345678', '2016-06-24 11:18:25', '5');
INSERT INTO `tb_order` VALUES ('112', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '秦淮区南京移动升州路营业厅', null, '', '0', '2', '12345678', '2016-06-24 11:18:43', '5');
INSERT INTO `tb_order` VALUES ('113', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区南京移动明故宫沟通100服务店', null, '', '0', '2', '12352698', '2016-06-24 11:19:24', '5');
INSERT INTO `tb_order` VALUES ('114', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '建邺区南京移动河西万达营业厅', null, '', '0', '2', '54269854', '2016-06-24 11:20:15', '5');
INSERT INTO `tb_order` VALUES ('115', '66', '澳大利亚无籽红提', '/upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', '0', '', '2016-06-24 23:28:33', '44');
INSERT INTO `tb_order` VALUES ('116', '66', '澳大利亚无籽红提', '/upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', '0', '', '2016-06-24 23:28:34', '44');
INSERT INTO `tb_order` VALUES ('117', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '2', '79.6', '2', '张先生 13391008872 四川 绵阳市 三台县 真新商务楼628', '', null, '', '0', '0', '', '2016-06-28 13:10:12', '54');
INSERT INTO `tb_order` VALUES ('118', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '徐爸爸 13577446886 江苏 南京市 鼓楼区 搞不好地方', '', null, '', '0', '0', '法国哈哈哈哈', '2016-06-28 20:10:22', 'oyqTtwzcK3cIq56eogDl4fs04UZU');
INSERT INTO `tb_order` VALUES ('119', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '徐爸爸 13577446886 江苏 南京市 鼓楼区 搞不好地方', '', null, '', '0', '0', '法国哈哈哈哈', '2016-06-28 20:10:22', 'oyqTtwzcK3cIq56eogDl4fs04UZU');
INSERT INTO `tb_order` VALUES ('120', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '付伟 15120095077 江苏 南京市 白下区 捎带手按时发哦就', '', null, '', '0', '0', '', '2016-06-29 13:56:42', '57');
INSERT INTO `tb_order` VALUES ('121', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '付伟 15120095077 江苏 南京市 白下区 捎带手按时发哦就', '', null, '', '0', '0', '', '2016-06-29 13:56:45', '57');
INSERT INTO `tb_order` VALUES ('122', '54', '巴西原装翅中', '/upload/1464316350243.png', null, '58.0', '1', '58', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-06-29 15:38:42', '13');
INSERT INTO `tb_order` VALUES ('123', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '48', '1', '11 13513533333 江苏 南京市 秦淮区 1111', '玄武区南京移动新庄指定专营店', null, '', '0', '0', '', '2016-06-29 22:25:44', '58');
INSERT INTO `tb_order` VALUES ('124', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '八 1333333333 江苏 南京市 秦淮区 蘑菇头图片', '', null, '', '0', '0', '', '2016-06-30 22:02:44', '63');
INSERT INTO `tb_order` VALUES ('125', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '体检 15888888888 江苏 南京市 市辖区 推荐', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-07-05 08:59:02', '67');
INSERT INTO `tb_order` VALUES ('126', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', 'ddd ssd 吉林 吉林市 昌邑区 走着走着zz', '', null, '', '0', '0', '', '2016-07-07 15:37:16', '79');
INSERT INTO `tb_order` VALUES ('127', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', 'ddd ssd 吉林 吉林市 昌邑区 走着走着zz', '', null, '', '0', '0', '', '2016-07-07 15:37:35', '79');
INSERT INTO `tb_order` VALUES ('128', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', '0', '', '2016-07-07 15:39:11', '13');
INSERT INTO `tb_order` VALUES ('129', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', '0', '', '2016-07-07 15:40:45', '13');
INSERT INTO `tb_order` VALUES ('130', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', 'ss ssss 江苏 南京市 玄武区 收拾收拾', '', null, '', '0', '0', '', '2016-07-07 16:19:58', '81');
INSERT INTO `tb_order` VALUES ('131', '19,-=22,-=64,-=39', '蔬菜会员月卡,-=蔬菜会员半年卡,-=生态稻田土鸡蛋,-=生态柔玉米', '/upload/1465974795254.png,-=/upload/1465976834996.png,-=/upload/1466479271070.png,-=/upload/1466730801733.png', null, '360.0,-=2900.0,-=96.0,-=48.0', '2,-=1,-=1,-=1', '3764', '5', '北京 13718105180 江苏 南京市 玄武区 回龙观', '', null, '', '0', '0', '', '2016-07-08 13:19:11', '82');
INSERT INTO `tb_order` VALUES ('132', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '默默 13803518888 江苏 南京市 玄武区 急急急急', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-07-14 17:47:15', '94');
INSERT INTO `tb_order` VALUES ('133', '60', '澳洲草饲牛腩块', '/upload/1464318370545.png', null, '56.0', '1', '56', '1', 'd f f s sh h 江西 新余市 渝水区 d f f f', '玄武区null', null, '', '0', '0', '', '2016-07-15 14:44:07', '66');
INSERT INTO `tb_order` VALUES ('134', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '48', '1', 'JJ了 18658630700 江苏 南京市 玄武区 \'\'\'5考虑考虑', '玄武区南京移动明故宫沟通100服务店', null, '', '0', '0', '', '2016-07-16 19:16:57', '111');
INSERT INTO `tb_order` VALUES ('135', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '48', '1', 'JJ了 18658630700 江苏 南京市 玄武区 \'\'\'5考虑考虑', '玄武区南京移动明故宫沟通100服务店', null, '', '0', '0', '', '2016-07-16 19:16:59', '111');
INSERT INTO `tb_order` VALUES ('136', '78,-=68', '仙桃香粳米 50斤,-=非转基因黄豆', '/upload/1466818615476.png,-=/upload/1465701002059.png', null, '180.0,-=10.0', '1,-=1', '190', '2', '11 11111111111 江苏 南京市 玄武区 555', '', null, '', '0', '0', '', '2016-07-17 20:32:40', '120');
INSERT INTO `tb_order` VALUES ('137', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '15.8', '1', '测试名 13676767676 广东 江门市 蓬江区 测试地点', '', '73', '新手优惠', '10', '0', '', '2016-07-18 07:05:41', '119');
INSERT INTO `tb_order` VALUES ('138', '66,-=40,-=19', '澳大利亚无籽红提,-=新西兰佳沛阳,-=蔬菜会员月卡', '/upload/1465724148153.png,-=/upload/1465724169981.png,-=/upload/1465974795254.png', null, '21.9,-=60.0,-=360.0', '2,-=3,-=1', '583.8', '6', 'king 18711110000 江苏 南京市 玄武区 啊啊啊啊', '', null, '', '0', '0', '', '2016-07-18 19:57:44', '127');
INSERT INTO `tb_order` VALUES ('139', '74', '冬虫夏草（鲜草）', '/upload/1466479379008.png', null, '850.0', '1', '850', '1', '默默 13803518888 江苏 南京市 玄武区 急急急急', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-07-19 00:04:34', '94');
INSERT INTO `tb_order` VALUES ('140', '65', '妃子笑荔枝', '/upload/1465723952090.png', null, '30.0', '1', '36', '1', '王承林 13193152333 广西 桂林市 雁山区 123358', '', null, '', '0', '0', '', '2016-07-19 11:14:38', '97');
INSERT INTO `tb_order` VALUES ('141', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '王晓鹏 15907979898 江苏 南京市 玄武区 桃子路16号', '玄武区南京移动新庄指定专营店', null, '', '0', '0', '', '2016-07-20 14:44:14', '136');
INSERT INTO `tb_order` VALUES ('142', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '李先生 13826531136 广东 深圳市 宝安区 哈哈哈哈', '', null, '', '0', '0', '', '2016-07-20 16:07:43', '140');
INSERT INTO `tb_order` VALUES ('143', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', '么么哒 15048562332 江苏 南京市 玄武区 110', '', null, '', '0', '0', '', '2016-08-30 22:06:44', '149');
INSERT INTO `tb_order` VALUES ('144', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', '么么哒 15048562332 江苏 南京市 玄武区 110', '', null, '', '0', '0', '', '2016-08-30 22:24:14', '149');
INSERT INTO `tb_order` VALUES ('145', '20', '蔬菜会员月卡', '/upload/1465975621288.png', null, '520.0', '1', '520', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', '0', '', '2016-08-31 13:46:16', '153');
INSERT INTO `tb_order` VALUES ('146', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '2', '6.2', '2', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', '0', '', '2016-08-31 13:50:38', '153');
INSERT INTO `tb_order` VALUES ('147', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈哈 1111111 江苏 南京市 玄武区 你家', '', null, '', '0', '0', '', '2016-08-31 14:02:07', '13');
INSERT INTO `tb_order` VALUES ('148', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', '0', '', '2016-08-31 14:02:29', '153');
INSERT INTO `tb_order` VALUES ('149', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '我的 13800138000 江苏 南京市 市辖区 123', '', null, '', '0', '0', '', '2016-08-31 14:03:06', '13');
INSERT INTO `tb_order` VALUES ('150', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-08-31 14:04:08', '13');
INSERT INTO `tb_order` VALUES ('152', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', '0', '', '2016-08-31 14:07:29', '13');
INSERT INTO `tb_order` VALUES ('153', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', '0', '', '2016-08-31 14:08:25', '13');
INSERT INTO `tb_order` VALUES ('154', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', '0', '', '2016-08-31 14:08:57', '13');
INSERT INTO `tb_order` VALUES ('155', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', '0', '', '2016-08-31 14:09:08', '13');
INSERT INTO `tb_order` VALUES ('156', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-08-31 14:09:42', '13');
INSERT INTO `tb_order` VALUES ('157', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', '0', '', '2016-08-31 14:58:04', '153');
INSERT INTO `tb_order` VALUES ('158', '60', '澳洲草饲牛腩块', '/upload/1464318370545.png', null, '56.0', '1', '62', '1', '沈在宏 17095011358 江苏 南京市 玄武区 28栋601', '', null, '', '0', '0', '', '2016-08-31 16:56:22', '156');
INSERT INTO `tb_order` VALUES ('159', '60', '澳洲草饲牛腩块', '/upload/1464318370545.png', null, '56.0', '1', '62', '1', '沈在宏 17095011358 江苏 南京市 玄武区 28栋601', '', null, '', '0', '0', '', '2016-08-31 16:56:23', '156');
INSERT INTO `tb_order` VALUES ('160', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', '司小毛 497844346 江苏 南京市 秦淮区 6646', '', null, '', '0', '0', '', '2016-08-31 17:00:00', '153');
INSERT INTO `tb_order` VALUES ('161', '40', '新西兰佳沛阳', '/upload/1465724169981.png', null, '60.0', '1', '60', '1', '午餐 15329109996 江苏 南京市 秦淮区 ：德克勒克', '', null, '', '0', '0', '', '2016-08-31 23:02:26', '159');
INSERT INTO `tb_order` VALUES ('162', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '3', '144', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', '0', '', '2016-09-03 12:46:15', '157');
INSERT INTO `tb_order` VALUES ('163', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '3', '144', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', '0', '', '2016-09-03 12:46:16', '157');
INSERT INTO `tb_order` VALUES ('164', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', '0', '', '2016-09-05 22:09:08', '157');
INSERT INTO `tb_order` VALUES ('165', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', '0', '', '2016-09-05 22:09:09', '157');
INSERT INTO `tb_order` VALUES ('166', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', '0', '', '2016-09-05 22:09:09', '157');
INSERT INTO `tb_order` VALUES ('167', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', '0', '', '2016-09-05 22:09:09', '157');
INSERT INTO `tb_order` VALUES ('168', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '109.4', '3', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', '76', '新手优惠', '10', '0', '', '2016-09-05 22:09:09', '157');
INSERT INTO `tb_order` VALUES ('169', '74,-=20,-=58,-=54', '冬虫夏草（鲜草）,-=蔬菜会员月卡,-=肥牛卷 透明托盒装,-=巴西原装翅中', '/upload/1466479379008.png,-=/upload/1465975621288.png,-=/upload/1464318053841.png,-=/upload/1464316350243.png', null, '850.0,-=520.0,-=59.0,-=58.0', '1,-=1,-=1,-=2', '1545', '5', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', '0', '', '2016-09-05 22:10:40', '157');
INSERT INTO `tb_order` VALUES ('170', '74,-=20,-=58,-=54', '冬虫夏草（鲜草）,-=蔬菜会员月卡,-=肥牛卷 透明托盒装,-=巴西原装翅中', '/upload/1466479379008.png,-=/upload/1465975621288.png,-=/upload/1464318053841.png,-=/upload/1464316350243.png', null, '850.0,-=520.0,-=59.0,-=58.0', '1,-=1,-=1,-=2', '1545', '5', '到达 13112341234 江苏 南京市 秦淮区 赶紧睡觉', '', null, '', '0', '0', '', '2016-09-05 22:10:41', '157');
INSERT INTO `tb_order` VALUES ('171', '66', '澳大利亚无籽红提', '/upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '哈哈哈哈 13655552236 江苏 南京市 栖霞区 哥给你', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-09-06 11:13:02', '175');
INSERT INTO `tb_order` VALUES ('172', '66', '澳大利亚无籽红提', '/upload/1465724148153.png', null, '21.9', '1', '21.9', '1', '哈哈哈哈 13655552236 江苏 南京市 栖霞区 哥给你', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-09-06 11:13:05', '175');
INSERT INTO `tb_order` VALUES ('173', '26,-=27', '东方蜜1号,-=海南木瓜', '/upload/1463110161194.png,-=/upload/1463110264179.png', null, '29.9,-=6.5', '1,-=2', '48.9', '3', '发货 15699999999 福建 福州市 台江区 随便吧暴饮暴食', '', null, '', '0', '0', '', '2016-09-08 15:45:16', '178');
INSERT INTO `tb_order` VALUES ('174', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '叶晓明 15999594104 广东 深圳市 南山区 西丽街道88栋501', '', null, '', '0', '0', '', '2016-09-09 11:34:27', '179');
INSERT INTO `tb_order` VALUES ('175', '65', '妃子笑荔枝', '/upload/1465723952090.png', null, '30.0', '1', '36', '1', '叶晓明 15999594104 广东 深圳市 南山区 西丽街道88栋501', '', null, '', '0', '0', '', '2016-09-09 11:49:47', '179');
INSERT INTO `tb_order` VALUES ('500', '61', '台湾土鸡仔', '/upload/1465887400031.png', null, '48.0', '1', '54', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', '0', '', '2016-08-31 14:06:20', '13');
INSERT INTO `tb_order` VALUES ('501', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '生里 13100000000 江苏 南京市 秦淮区 14722', '', null, '', '0', '0', '', '2016-09-14 18:03:31', '183');
INSERT INTO `tb_order` VALUES ('502', '76', '冬虫夏草（鲜草）', '/upload/1466479517055.png', null, '3880.0', '1', '3880', '1', '生里 13100000000 江苏 南京市 秦淮区 14722', '', null, '', '0', '0', '', '2016-09-14 18:04:35', '183');
INSERT INTO `tb_order` VALUES ('503', '76', '冬虫夏草（鲜草）', '/upload/1466479517055.png', null, '3880.0', '1', '3880', '1', '这 我 江苏 南京市 玄武区 在', '', null, '', '0', '0', '', '2016-09-17 02:29:10', '185');
INSERT INTO `tb_order` VALUES ('504', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '测试 13128845886 江苏 南京市 市辖区 测试', '', null, '', '0', '0', null, '2016-09-19 13:20:26', '188');
INSERT INTO `tb_order` VALUES ('505', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '测试 13128845886 江苏 南京市 市辖区 测试', '', null, '', '0', '0', '', '2016-09-19 20:33:36', '188');
INSERT INTO `tb_order` VALUES ('506', '72,-=67', '新疆西州蜜,-=菲律宾大香蕉', '/upload/1465802535035.png,-=/upload/1465723850965.png', null, '39.8,-=19.8', '1,-=1', '59.6', '2', '刘韦 18855150306 江苏 南京市 玄武区 123', '', null, '', '0', '0', '', '2016-09-20 22:08:23', '192');
INSERT INTO `tb_order` VALUES ('507', '72,-=77', '新疆西州蜜,-=山竹', '/upload/1465802535035.png,-=/upload/1466736000313.png', null, '39.8,-=0.1', '1,-=1', '45.9', '2', '咯噢噢 18365432123 江苏 南京市 白下区 他们默默', '', null, '', '0', '0', '', '2016-09-21 09:21:05', '193');
INSERT INTO `tb_order` VALUES ('508', '76,-=75', '冬虫夏草（鲜草）,-=冬虫夏草（鲜草）', '/upload/1466479517055.png,-=/upload/1466479445305.png', null, '3880.0,-=1998.0', '1,-=1', '5878', '2', '咯噢噢 18365432123 江苏 南京市 白下区 他们默默', '玄武区南京移动新庄指定专营店', null, '', '0', '0', '', '2016-09-21 09:25:22', '193');
INSERT INTO `tb_order` VALUES ('509', '66', '澳大利亚无籽红提', '/upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '测试 13812345678 江苏 南京市 白下区 测试', '', null, '', '0', '0', null, '2016-09-22 15:14:58', '196');
INSERT INTO `tb_order` VALUES ('510', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '测试 13812345678 江苏 南京市 白下区 测试', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', '', '2016-09-22 15:24:35', '196');
INSERT INTO `tb_order` VALUES ('511', '78', '仙桃香粳米 50斤', '/upload/1466818615476.png', null, '180.0', '1', '180', '1', 'h l 利库路特 江苏 南京市 玄武区 啦啦', '', null, '', '0', '0', null, '2016-09-22 20:36:01', '197');
INSERT INTO `tb_order` VALUES ('512', '79', '商品测试', 'http://localhost:8080/upload/1474343819028.png', null, '1.0', '1', '1', '1', '伍照生 15329109996 江苏 南京市 玄武区 很多亟待解决', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', null, '2016-09-22 20:40:44', '198');
INSERT INTO `tb_order` VALUES ('513', '67', '菲律宾大香蕉', '/upload/1465723850965.png', null, '19.8', '1', '19.8', '1', '伍照生 15329109996 江苏 南京市 玄武区 很多亟待解决', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', '0', null, '2016-09-22 21:12:26', '198');
INSERT INTO `tb_order` VALUES ('514', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '2', '79.6', '2', '陈瑞 1508603232 江苏 南京市 秦淮区 1111', '', null, '', '0', '0', '', '2016-09-22 21:19:23', '199');
INSERT INTO `tb_order` VALUES ('515', '77', '山竹', '/upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '陈瑞 1508603232 江苏 南京市 秦淮区 1111', '', null, '', '0', '0', null, '2016-09-22 21:20:24', '199');
INSERT INTO `tb_order` VALUES ('516', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', '0', null, '2016-09-22 22:20:37', '186');
INSERT INTO `tb_order` VALUES ('517', '74,-=67', '冬虫夏草（鲜草）,-=菲律宾大香蕉', '/upload/1466479379008.png,-=/upload/1465723850965.png', null, '850.0,-=19.8', '1,-=1', '869.8', '2', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', '0', '', '2016-09-23 15:06:07', '204');
INSERT INTO `tb_order` VALUES ('518', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', '0', '', '2016-09-23 15:07:40', '186');
INSERT INTO `tb_order` VALUES ('519', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '哈哈 13184222222 江苏 南京市 市辖区 4444', '', null, '', '0', '0', '', '2016-09-23 15:07:43', '186');
INSERT INTO `tb_order` VALUES ('520', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', '0', '', '2016-09-23 15:08:27', '204');
INSERT INTO `tb_order` VALUES ('521', '72', '新疆西州蜜', '/upload/1465802535035.png', null, '39.8', '3', '119.4', '3', '我 19398273728 江苏 南京市 玄武区 你们都', '', null, '', '0', '0', '', '2016-09-23 16:42:38', '204');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL COMMENT '权限字',
  `name` varchar(255) NOT NULL COMMENT '权限名称',
  `role_id` int(11) NOT NULL COMMENT '关联角色ID',
  `valid` int(1) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`),
  KEY `fk_permission_role_id` (`role_id`),
  CONSTRAINT `fk_permission_role_id` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES ('1', 'admin:add', '发起咨询', '2', '1');
INSERT INTO `tb_permission` VALUES ('2', 'admin:del', '删除咨询', '2', '1');
INSERT INTO `tb_permission` VALUES ('3', 'admin:manager', '后台管理', '1', '1');

-- ----------------------------
-- Table structure for tb_repair_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_repair_shop`;
CREATE TABLE `tb_repair_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) DEFAULT NULL COMMENT '汽修店名称',
  `shop_description` longtext COMMENT '描述信息',
  `shop_tel` varchar(255) NOT NULL COMMENT '店铺电话',
  `user_id` varchar(255) DEFAULT NULL COMMENT '店铺关联账号ID',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL COMMENT '城市',
  `area` varchar(255) NOT NULL COMMENT '区域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_repair_shop
-- ----------------------------

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL COMMENT '帖子编号',
  `reply_text` longtext,
  `create_time` datetime DEFAULT NULL,
  `favor_count` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `valid` int(2) DEFAULT NULL COMMENT '帖子的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `value` varchar(255) DEFAULT NULL COMMENT '角色字',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `valid` int(1) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', 'admin', '管理员', '1');
INSERT INTO `tb_role` VALUES ('2', 'vip', '付费用户', '1');

-- ----------------------------
-- Table structure for tb_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_service`;
CREATE TABLE `tb_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caretory_id` int(11) DEFAULT NULL COMMENT '所属分类',
  `service_name` varchar(255) NOT NULL COMMENT '服务名称',
  `service_desc` longtext COMMENT '服务描述',
  `price` double(10,2) NOT NULL COMMENT '价格',
  `commision` double(10,2) DEFAULT NULL COMMENT '支付给技师的佣金',
  `benefit_price` double(10,2) DEFAULT NULL COMMENT '优惠金额',
  `sort` int(5) DEFAULT NULL COMMENT '展示顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_service
-- ----------------------------
INSERT INTO `tb_service` VALUES ('1', '1', '打蜡', '1啊大好时光', '68.00', '5.00', '58.00', null);
INSERT INTO `tb_service` VALUES ('2', '2', '内饰清洗', '2让他', '580.00', '50.00', '560.00', null);
INSERT INTO `tb_service` VALUES ('4', '2', '五座轿车贴膜（德系车）', '3阿范德萨发', '460.00', '40.00', null, null);
INSERT INTO `tb_service` VALUES ('5', '1', '五座轿车贴膜（非德系车）', '4222312', '380.00', '30.00', null, null);
INSERT INTO `tb_service` VALUES ('6', '2', '专车专用导航带后视', '对方答复就是的很多人', '200.00', '20.00', null, null);
INSERT INTO `tb_service` VALUES ('7', '2', '行车记录仪不带后视', '无人条件是否更换自动发货地方就是发个', '80.00', '5.00', null, null);
INSERT INTO `tb_service` VALUES ('8', '3', '行车记录仪带后视', 'vbj,cghmdg好', '120.00', '10.00', null, null);
INSERT INTO `tb_service` VALUES ('9', '1', '坐垫拆装', '12313423', '50.00', '5.00', null, null);
INSERT INTO `tb_service` VALUES ('10', '1', '座套拆装', '566666', '98.00', '10.00', null, null);
INSERT INTO `tb_service` VALUES ('11', '2', '换胎', '88888', '50.00', '5.00', null, null);

-- ----------------------------
-- Table structure for tb_technician
-- ----------------------------
DROP TABLE IF EXISTS `tb_technician`;
CREATE TABLE `tb_technician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `identification_id` int(11) DEFAULT NULL COMMENT '身份证信息',
  `aptitude_id` int(11) DEFAULT NULL COMMENT '资质',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `score` double(4,1) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_user_user_id_index` (`user_id`) USING BTREE,
  CONSTRAINT `fk_technician_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_technician
-- ----------------------------

-- ----------------------------
-- Table structure for tb_technician_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_technician_comment`;
CREATE TABLE `tb_technician_comment` (
  `id` int(11) NOT NULL,
  `comment` longtext,
  `score` double(4,1) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_technician_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_topic
-- ----------------------------
DROP TABLE IF EXISTS `tb_topic`;
CREATE TABLE `tb_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '帖子分类',
  `topic_name` varchar(255) DEFAULT NULL,
  `topic_text` longtext NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `last_replay_user_id` int(11) DEFAULT NULL,
  `last_replay_time` datetime DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL COMMENT '回复数量',
  `click_count` int(11) DEFAULT NULL COMMENT '点击量',
  `keep_count` int(11) DEFAULT NULL COMMENT '收藏用户数量',
  `valid` int(2) DEFAULT NULL COMMENT '帖子的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_topic
-- ----------------------------
INSERT INTO `tb_topic` VALUES ('1', '6', 'dfgsdgasdf', '<div id=\"maincontent\"><h1>What\'s New in Maven</h1><div class=\"posts\"><div class=\"im\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.10\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c2d9c104e8c6f60afd684447f04d51b3\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b62a45eb46f8d5464e16707937f80579\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.10\">Genomic Loci</a><a class=\"im-usage\" href=\"/artifact/org.hammerlab/genomic-loci_2.10/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.hammerlab\">org.hammerlab</a> » <a href=\"/artifact/org.hammerlab/genomic-loci_2.10\">genomic-loci_2.10</a>\r\n» <a href=\"/artifact/org.hammerlab/genomic-loci_2.10/1.4.4\">1.4.4</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ngenomic-loci\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c2d9c104e8c6f60afd684447f04d51b3\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b62a45eb46f8d5464e16707937f80579\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.11\">Genomic Loci</a><a class=\"im-usage\" href=\"/artifact/org.hammerlab/genomic-loci_2.11/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.hammerlab\">org.hammerlab</a> » <a href=\"/artifact/org.hammerlab/genomic-loci_2.11\">genomic-loci_2.11</a>\r\n» <a href=\"/artifact/org.hammerlab/genomic-loci_2.11/1.4.4\">1.4.4</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ngenomic-loci\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.pitest/pitest\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/28b0b32aa9fc94cb2d452ce48494daf9\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/2d996e57802dbfcf0c7ad815b4bd7e26\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.pitest/pitest\">Pitest</a><a class=\"im-usage\" href=\"/artifact/org.pitest/pitest/usages\"><b>10</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.pitest\">org.pitest</a> » <a href=\"/artifact/org.pitest/pitest\">pitest</a>\r\n» <a href=\"/artifact/org.pitest/pitest/1.1.11\">1.1.11</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nMutation testing system for Java.\r\n</div></div><div class=\"im\"><a href=\"/artifact/de.knightsoft-net/gwt-mt-widgets\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/7f3f27bc13e55c881f0e8d992d8543c5\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/ef8a037faf08a70165a3abbf08af1243\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/de.knightsoft-net/gwt-mt-widgets\">GWT Bean Validators Example</a><a class=\"im-usage\" href=\"/artifact/de.knightsoft-net/gwt-mt-widgets/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/de.knightsoft-net\">de.knightsoft-net</a> » <a href=\"/artifact/de.knightsoft-net/gwt-mt-widgets\">gwt-mt-widgets</a>\r\n» <a href=\"/artifact/de.knightsoft-net/gwt-mt-widgets/0.22.0\">0.22.0</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nA set of widgets and handlers for gwt applications using gwt-bean-validators.\r\n</div></div><div class=\"im\"><a href=\"/artifact/com.liferay/com.liferay.gradle.plugins\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/82a2ddeea6fada80f80240e51d1df1cf\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/3a054ba198743a87bb236415a8477745\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/com.liferay/com.liferay.gradle.plugins\">Com.liferay.gradle.plugins</a><a class=\"im-usage\" href=\"/artifact/com.liferay/com.liferay.gradle.plugins/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/com.liferay\">com.liferay</a> » <a href=\"/artifact/com.liferay/com.liferay.gradle.plugins\">com.liferay.gradle.plugins</a>\r\n» <a href=\"/artifact/com.liferay/com.liferay.gradle.plugins/3.0.46\">3.0.46</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nLiferay Gradle Plugins\r\n</div></div><div class=\"im\"><a href=\"/artifact/ch.epfl.lamp/dotty-interfaces\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/e1ac4c3eb6284f4ac7a06132e0ae328e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/38ba028699f135d648c28ecacf1f9ebe\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/ch.epfl.lamp/dotty-interfaces\">Dotty Interfaces</a><a class=\"im-usage\" href=\"/artifact/ch.epfl.lamp/dotty-interfaces/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/ch.epfl.lamp\">ch.epfl.lamp</a> » <a href=\"/artifact/ch.epfl.lamp/dotty-interfaces\">dotty-interfaces</a>\r\n» <a href=\"/artifact/ch.epfl.lamp/dotty-interfaces/0.1-20161203-9ceed92-NIGHTLY\">0.1-20161203-...</a><span class=\"b lic im-lic\">BSD</span></p></div><div class=\"im-description\">\r\ndotty-interfaces\r\n</div></div><div class=\"im\"><a href=\"/artifact/ch.epfl.lamp/dotty_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/e1ac4c3eb6284f4ac7a06132e0ae328e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/38ba028699f135d648c28ecacf1f9ebe\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/ch.epfl.lamp/dotty_2.11\">Dotty</a><a class=\"im-usage\" href=\"/artifact/ch.epfl.lamp/dotty_2.11/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/ch.epfl.lamp\">ch.epfl.lamp</a> » <a href=\"/artifact/ch.epfl.lamp/dotty_2.11\">dotty_2.11</a>\r\n» <a href=\"/artifact/ch.epfl.lamp/dotty_2.11/0.1-20161203-9ceed92-NIGHTLY\">0.1-20161203-...</a><span class=\"b lic im-lic\">BSD</span></p></div><div class=\"im-description\">\r\ndotty\r\n</div></div><div class=\"im\"><a href=\"/artifact/de.knightsoft-net/gwt-bean-validators\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/7f3f27bc13e55c881f0e8d992d8543c5\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/ef8a037faf08a70165a3abbf08af1243\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/de.knightsoft-net/gwt-bean-validators\">GWT Bean Validators</a><a class=\"im-usage\" href=\"/artifact/de.knightsoft-net/gwt-bean-validators/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/de.knightsoft-net\">de.knightsoft-net</a> » <a href=\"/artifact/de.knightsoft-net/gwt-bean-validators\">gwt-bean-validators</a>\r\n» <a href=\"/artifact/de.knightsoft-net/gwt-bean-validators/0.22.0\">0.22.0</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nThe GWT Bean Validators is a collection of JSR-303/JSR-349 bean validators. It can be used on server\r\nand with the help of GWT even on client side. It also contains a lot of improvements in the\r\nvalidation handling in GWT, in displaying validation errors and in input handling.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons\">Common Library</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.commons/usages\"><b>15</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons\">jp.go.nict.langrid.commons</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nCommon and utility library for the Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.client\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.client\">Client Library</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.client/usages\"><b>6</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.client\">jp.go.nict.langrid.client</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.client/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nClient library including JSON-RPC client for the Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.common_1_2\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.common_1_2\">Common Service Interface Definition</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.service.common_1_2/usages\"><b>6</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.common_1_2\">jp.go.nict.langrid.service.common_1_2</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.common_1_2/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nCommon Service Interface definitions for the Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.servicecontainer\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.servicecontainer\">Service Container</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.servicecontainer/usages\"><b>6</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.servicecontainer\">jp.go.nict.langrid.servicecontainer</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.servicecontainer/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nService container including JSON-RPC handler for the Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.language\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.language\">Language Code Libraries</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.language/usages\"><b>5</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.language\">jp.go.nict.langrid.language</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.language/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nLanguage Code Libraries for RFC3066, ISO3166, ISO639 and IANA Language Tags.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.language_1_2\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.language_1_2\">Language Service Interface Definition</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.service.language_1_2/usages\"><b>4</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.language_1_2\">jp.go.nict.langrid.service.language_1_2</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.service.language_1_2/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nLanguage Service Interface Definitionsfor Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.client.test\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.client.test\">Client Test Library</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.client.test/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.client.test\">jp.go.nict.langrid.client.test</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.client.test/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nClient Test library\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons.protobufrpc\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/8cba5522ae13c699e41660fe7297966e\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/6911dabe79b30aa652ede82c0761b058\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons.protobufrpc\">Common Library For ProtocolBuffers RPC</a><a class=\"im-usage\" href=\"/artifact/org.langrid/jp.go.nict.langrid.commons.protobufrpc/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.langrid\">org.langrid</a> » <a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons.protobufrpc\">jp.go.nict.langrid.commons.protobufrpc</a>\r\n» <a href=\"/artifact/org.langrid/jp.go.nict.langrid.commons.protobufrpc/1.0.8\">1.0.8</a><span class=\"b lic im-lic\">LGPL</span></p></div><div class=\"im-description\">\r\nCommon and utility library about ProtocolBuffers RPC for the Service Grid Server Software and java web services.\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.fabric8/fabric8-maven-enricher-api\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/28103d429a95bfc17073ed3f0f9bc6a4\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/a4beb5335dbaf9f057a62add1186f9c4\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.fabric8/fabric8-maven-enricher-api\">Fabric8 Maven :: Enricher :: API</a><a class=\"im-usage\" href=\"/artifact/io.fabric8/fabric8-maven-enricher-api/usages\"><b>11</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.fabric8\">io.fabric8</a> » <a href=\"/artifact/io.fabric8/fabric8-maven-enricher-api\">fabric8-maven-enricher-api</a>\r\n» <a href=\"/artifact/io.fabric8/fabric8-maven-enricher-api/3.2.8\">3.2.8</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nFabric8 Maven :: Enricher :: API\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.fabric8/fabric8-maven-generator-api\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/28103d429a95bfc17073ed3f0f9bc6a4\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/a4beb5335dbaf9f057a62add1186f9c4\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.fabric8/fabric8-maven-generator-api\">Fabric8 Maven :: Generator :: API</a><a class=\"im-usage\" href=\"/artifact/io.fabric8/fabric8-maven-generator-api/usages\"><b>8</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.fabric8\">io.fabric8</a> » <a href=\"/artifact/io.fabric8/fabric8-maven-generator-api\">fabric8-maven-generator-api</a>\r\n» <a href=\"/artifact/io.fabric8/fabric8-maven-generator-api/3.2.8\">3.2.8</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nFabric8 Maven :: Generator :: API\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.fabric8/fabric8-maven-core\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/28103d429a95bfc17073ed3f0f9bc6a4\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/a4beb5335dbaf9f057a62add1186f9c4\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.fabric8/fabric8-maven-core\">Fabric8 Maven :: Core</a><a class=\"im-usage\" href=\"/artifact/io.fabric8/fabric8-maven-core/usages\"><b>4</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.fabric8\">io.fabric8</a> » <a href=\"/artifact/io.fabric8/fabric8-maven-core\">fabric8-maven-core</a>\r\n» <a href=\"/artifact/io.fabric8/fabric8-maven-core/3.2.8\">3.2.8</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nFabric8 Maven :: Core\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.fabric8/fabric8-maven-generator-java-exec\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/28103d429a95bfc17073ed3f0f9bc6a4\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/a4beb5335dbaf9f057a62add1186f9c4\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.fabric8/fabric8-maven-generator-java-exec\">Fabric8 Maven :: Generator :: Java Exec</a><a class=\"im-usage\" href=\"/artifact/io.fabric8/fabric8-maven-generator-java-exec/usages\"><b>4</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.fabric8\">io.fabric8</a> » <a href=\"/artifact/io.fabric8/fabric8-maven-generator-java-exec\">fabric8-maven-generator-java-exec</a>\r\n» <a href=\"/artifact/io.fabric8/fabric8-maven-generator-java-exec/3.2.8\">3.2.8</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nFabric8 Maven :: Generator :: Java Exec\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.github.felixbr/swagger-blocks-scala_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/a13430a4d196a675b07748ef2f020f0\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/c9bb0231a6fefd4f46f122216775b6ba\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.github.felixbr/swagger-blocks-scala_2.11\">Swagger Blocks Scala</a><a class=\"im-usage\" href=\"/artifact/io.github.felixbr/swagger-blocks-scala_2.11/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.github.felixbr\">io.github.felixbr</a> » <a href=\"/artifact/io.github.felixbr/swagger-blocks-scala_2.11\">swagger-blocks-scala_2.11</a>\r\n» <a href=\"/artifact/io.github.felixbr/swagger-blocks-scala_2.11/0.2.1\">0.2.1</a><span class=\"b lic im-lic\">MIT</span></p></div><div class=\"im-description\">\r\nswagger-blocks-scala\r\n</div></div><div class=\"im\"><a href=\"/artifact/com.bestellensoftware/jsync.io\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/2e0bd4e6f0839cbad86747a885f79c91\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/8f0eb162838a490f7141de8f8fad0fe1\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/com.bestellensoftware/jsync.io\">Jsync.io</a><a class=\"im-usage\" href=\"/artifact/com.bestellensoftware/jsync.io/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/com.bestellensoftware\">com.bestellensoftware</a> » <a href=\"/artifact/com.bestellensoftware/jsync.io\">jsync.io</a>\r\n» <a href=\"/artifact/com.bestellensoftware/jsync.io/1.10.11\">1.10.11</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\njsync.io is a non-blocking, event-driven networking framework for Java\r\n</div></div><div class=\"im\"><a href=\"/artifact/de.xwic.etlgine/etlgine-core\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/da565cb3fe9f81f7d3bf798d82219fee\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/2ceb36a7fd77120b0c15a67228dd79a\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/de.xwic.etlgine/etlgine-core\">ETLGINE::CORE</a><a class=\"im-usage\" href=\"/artifact/de.xwic.etlgine/etlgine-core/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/de.xwic.etlgine\">de.xwic.etlgine</a> » <a href=\"/artifact/de.xwic.etlgine/etlgine-core\">etlgine-core</a>\r\n» <a href=\"/artifact/de.xwic.etlgine/etlgine-core/5.3.0.6\">5.3.0.6</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nETLGINE::CORE\r\n</div></div><div class=\"im\"><a href=\"/artifact/com.github.calimero/calimero-rxtx\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/a13430a4d196a675b07748ef2f020f0\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/dcbecb3f624f92b8114c301b93cb7584\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/com.github.calimero/calimero-rxtx\">Calimero Rxtx Adapter</a><a class=\"im-usage\" href=\"/artifact/com.github.calimero/calimero-rxtx/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/com.github.calimero\">com.github.calimero</a> » <a href=\"/artifact/com.github.calimero/calimero-rxtx\">calimero-rxtx</a>\r\n» <a href=\"/artifact/com.github.calimero/calimero-rxtx/2.3\">2.3</a><span class=\"b lic im-lic\">GPL</span><span class=\"b lic im-lic\">GPL</span></p></div><div class=\"im-description\">\r\nAdapter to use the rxtx library for serial communication\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.10\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c2d9c104e8c6f60afd684447f04d51b3\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b62a45eb46f8d5464e16707937f80579\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.10\">Genomic Loci</a><a class=\"im-usage\" href=\"/artifact/org.hammerlab/genomic-loci_2.10/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.hammerlab\">org.hammerlab</a> » <a href=\"/artifact/org.hammerlab/genomic-loci_2.10\">genomic-loci_2.10</a>\r\n» <a href=\"/artifact/org.hammerlab/genomic-loci_2.10/1.4.3\">1.4.3</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ngenomic-loci\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c2d9c104e8c6f60afd684447f04d51b3\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b62a45eb46f8d5464e16707937f80579\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.hammerlab/genomic-loci_2.11\">Genomic Loci</a><a class=\"im-usage\" href=\"/artifact/org.hammerlab/genomic-loci_2.11/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.hammerlab\">org.hammerlab</a> » <a href=\"/artifact/org.hammerlab/genomic-loci_2.11\">genomic-loci_2.11</a>\r\n» <a href=\"/artifact/org.hammerlab/genomic-loci_2.11/1.4.3\">1.4.3</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ngenomic-loci\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.github.theangrydev.fluentbdd/core\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/a13430a4d196a675b07748ef2f020f0\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/c9bb0231a6fefd4f46f122216775b6ba\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.github.theangrydev.fluentbdd/core\">Core</a><a class=\"im-usage\" href=\"/artifact/io.github.theangrydev.fluentbdd/core/usages\"><b>6</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.github.theangrydev.fluentbdd\">io.github.theangrydev.fluentbdd</a> » <a href=\"/artifact/io.github.theangrydev.fluentbdd/core\">core</a>\r\n» <a href=\"/artifact/io.github.theangrydev.fluentbdd/core/8.2.2\">8.2.2</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nCore\r\n</div></div><div class=\"im\"><a href=\"/artifact/com.github.winteryoung/yanwte\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/a13430a4d196a675b07748ef2f020f0\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/dcbecb3f624f92b8114c301b93cb7584\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/com.github.winteryoung/yanwte\">Yanwte</a><a class=\"im-usage\" href=\"/artifact/com.github.winteryoung/yanwte/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/com.github.winteryoung\">com.github.winteryoung</a> » <a href=\"/artifact/com.github.winteryoung/yanwte\">yanwte</a>\r\n» <a href=\"/artifact/com.github.winteryoung/yanwte/1.2.4\">1.2.4</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nA library to help extending your programs.\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.rundeck/rundeck-core\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/b642817bf756779da77ee4e8a354ac98\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/d7ebc2c37186b0c1a3aa1762ae722dbc\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.rundeck/rundeck-core\">Rundeck Library Core</a><a class=\"im-usage\" href=\"/artifact/org.rundeck/rundeck-core/usages\"><b>6</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.rundeck\">org.rundeck</a> » <a href=\"/artifact/org.rundeck/rundeck-core\">rundeck-core</a>\r\n» <a href=\"/artifact/org.rundeck/rundeck-core/2.7.1\">2.7.1</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nRundeck\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.jresearch.commons.gwt/org.jresearch.commons.gwt.emu\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c4ca1e6907a8f7efbcd5aa4aad64ccf0\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b645e38aa620b74277fde8615ccf2631\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.jresearch.commons.gwt/org.jresearch.commons.gwt.emu\">JRESEARCH COMMONS: GWT Java Emulation Classes</a><a class=\"im-usage\" href=\"/artifact/org.jresearch.commons.gwt/org.jresearch.commons.gwt.emu/usages\"><b>5</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.jresearch.commons.gwt\">org.jresearch.commons.gwt</a> » <a href=\"/artifact/org.jresearch.commons.gwt/org.jresearch.commons.gwt.emu\">org.jresearch.commons.gwt.emu</a>\r\n» <a href=\"/artifact/org.jresearch.commons.gwt/org.jresearch.commons.gwt.emu/1.0.97\">1.0.97</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nJRS GWT commons\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.rundeck/rundeck-storage-api\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/b642817bf756779da77ee4e8a354ac98\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/d7ebc2c37186b0c1a3aa1762ae722dbc\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.rundeck/rundeck-storage-api\">Rundeck Library Rundeck Storage Api</a><a class=\"im-usage\" href=\"/artifact/org.rundeck/rundeck-storage-api/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.rundeck\">org.rundeck</a> » <a href=\"/artifact/org.rundeck/rundeck-storage-api\">rundeck-storage-api</a>\r\n» <a href=\"/artifact/org.rundeck/rundeck-storage-api/2.7.1\">2.7.1</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nRundeck\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.hammerlab/spark-tests_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/c2d9c104e8c6f60afd684447f04d51b3\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/b62a45eb46f8d5464e16707937f80579\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.hammerlab/spark-tests_2.11\">Spark Tests</a><a class=\"im-usage\" href=\"/artifact/org.hammerlab/spark-tests_2.11/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.hammerlab\">org.hammerlab</a> » <a href=\"/artifact/org.hammerlab/spark-tests_2.11\">spark-tests_2.11</a>\r\n» <a href=\"/artifact/org.hammerlab/spark-tests_2.11/1.1.3\">1.1.3</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nspark-tests\r\n</div></div><div class=\"im\"><a href=\"/artifact/org.rundeck/rundeck-storage-data\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/b642817bf756779da77ee4e8a354ac98\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/d7ebc2c37186b0c1a3aa1762ae722dbc\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/org.rundeck/rundeck-storage-data\">Rundeck Library Rundeck Storage Data</a><a class=\"im-usage\" href=\"/artifact/org.rundeck/rundeck-storage-data/usages\"><b>2</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/org.rundeck\">org.rundeck</a> » <a href=\"/artifact/org.rundeck/rundeck-storage-data\">rundeck-storage-data</a>\r\n» <a href=\"/artifact/org.rundeck/rundeck-storage-data/2.7.1\">2.7.1</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\nRundeck\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.get-coursier/coursier-cache_2.11\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/5b997c7f4f020527212d2ce283fd6879\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/cb99af6baa2239073920068b92b2808\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.get-coursier/coursier-cache_2.11\">Coursier Cache</a><a class=\"im-usage\" href=\"/artifact/io.get-coursier/coursier-cache_2.11/usages\"><b>8</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.get-coursier\">io.get-coursier</a> » <a href=\"/artifact/io.get-coursier/coursier-cache_2.11\">coursier-cache_2.11</a>\r\n» <a href=\"/artifact/io.get-coursier/coursier-cache_2.11/1.0.0-M15-1\">1.0.0-M15-1</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ncoursier-cache\r\n</div></div><div class=\"im\"><a href=\"/artifact/io.get-coursier/coursier-cache_2.10\"><picture><source type=\"image/webp\" srcset=\"https://d2j3q9yua85jt3.cloudfront.net/img/5b997c7f4f020527212d2ce283fd6879\"><img class=\"im-logo\" width=\"48\" height=\"48\" src=\"https://d2j3q9yua85jt3.cloudfront.net/img/cb99af6baa2239073920068b92b2808\"></picture></a><div class=\"im-header\"><h2 class=\"im-title\"><a href=\"/artifact/io.get-coursier/coursier-cache_2.10\">Coursier Cache</a><a class=\"im-usage\" href=\"/artifact/io.get-coursier/coursier-cache_2.10/usages\"><b>3</b> usages</a></h2><p class=\"im-subtitle\"><a href=\"/artifact/io.get-coursier\">io.get-coursier</a> » <a href=\"/artifact/io.get-coursier/coursier-cache_2.10\">coursier-cache_2.10</a>\r\n» <a href=\"/artifact/io.get-coursier/coursier-cache_2.10/1.0.0-M15-1\">1.0.0-M15-1</a><span class=\"b lic im-lic\">Apache</span></p></div><div class=\"im-description\">\r\ncoursier-cache\r\n</div></div></div></div>', '2016-12-06 01:26:32', '2016-12-06 01:26:32', '5', null, '2016-12-06 01:26:32', null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('2', '6', '111111', '1111111', '2016-12-06 22:05:36', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('3', '6', '22222', '22222', '2016-12-06 22:05:38', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('4', '6', '33333333', '3333333', '2016-12-05 22:05:44', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('5', '6', '4444444', '4444444', '2016-12-05 22:05:51', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('6', '6', '5555555', '5555555', '2016-11-30 22:12:14', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('7', '9', '99999999', '9999999999', '2016-12-07 01:24:30', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('8', '9', '100000000', '100000000', '2016-12-05 01:24:46', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('9', '10', '235235234', '23452346', '2016-12-03 01:25:09', null, '5', null, null, null, null, null, '1');
INSERT INTO `tb_topic` VALUES ('10', '10', 'asdgsdhfdg', '234sfsfhsdfg', '2016-11-28 01:29:54', null, '5', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for tb_topic_keep
-- ----------------------------
DROP TABLE IF EXISTS `tb_topic_keep`;
CREATE TABLE `tb_topic_keep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_topic_keep
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `oppen_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '账号手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `member_time` datetime DEFAULT NULL COMMENT '关注时间',
  `type` int(1) DEFAULT NULL COMMENT '用户类型0:技师y用户1:车主用户',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `tb_user_user_id_index` (`user_id`) USING BTREE,
  UNIQUE KEY `tb_user_open_id_index` (`oppen_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '', null, null, null, '37', '鼓楼2', '1', null, '2016-04-11 00:00:00', null);
INSERT INTO `tb_user` VALUES ('5', 'oyqTtw2gjY17ntKIyba_i48EB26A', '', '尹翔', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDr5ibdIjO4rX8U4UDVE3Xf1WFAPcYw5Xqzd3phekO1be8j8fCjku6CVwvKkS3iaN9v8Q5uU3iauOdpA/0', '36', '南京汉中门大街沟通100服务店', '1', '0000-00-00 00:00:00', '2016-04-11 00:00:00', null);
INSERT INTO `tb_user` VALUES ('6', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '', 'changzhenwei', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEb7ib78No0HnFF2wEXaVnicBMwOvmeVFxuy4hOlSCjXLeeia42glF84mMCibmrW0ebM6TgCUqYB8nJb/0', '39', '玄武区1', '1', '0000-00-00 00:00:00', '2016-04-13 00:00:00', null);
INSERT INTO `tb_user` VALUES ('8', 'oyqTtwxQ7MQgfoqMwVd8mj03MyQQ', '', null, null, null, '36', '鼓楼1', '1', null, '2016-04-20 00:00:00', null);
INSERT INTO `tb_user` VALUES ('9', 'oyqTtw96SNP2q4ZZxcnIuVj7sYNk', '', '阿朱', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9Dmt6icfGDoop5lxH9sdiaLs3xocHC9wOhzddYTZ0T7K1fBTicN4rrGDpUclTJCuXia21ofHW2eFjer6O77A3HFWMn3bE/0', '39', '玄武区1', '1', '2016-05-25 00:00:00', '2016-04-26 00:00:00', null);
INSERT INTO `tb_user` VALUES ('10', 'oyqTtw1HH95lrkd5GJwqusVT6z5A', '', null, null, null, '36', '鼓楼1', '1', null, '2016-04-29 00:00:00', null);
INSERT INTO `tb_user` VALUES ('11', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '', '乀_-Sherry', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlZVicEmK4Jz87E2pGelZ0uxP1WoMotQI70mnPuF1ib3p2jRSeWHLBpXreqFibDqLDMpAM0qPFKRx15/0', '36', '鼓楼1', '1', null, '2016-05-06 00:00:00', null);
INSERT INTO `tb_user` VALUES ('12', 'oyqTtw_d252V55C89XiqmkGrRpHM', '', 'Rosarin*', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxmAAsZZI5Sr26AaDeyveYrGMTM5omicPsJp3zEuE7kj2tqBbHBSlyF54XvA2ArrEq90Aqb6ENEicd1/0', '36', '鼓楼1', '1', null, '2016-05-06 00:00:00', null);
INSERT INTO `tb_user` VALUES ('13', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn0aoSDNlW4dEib1Cmy66JZfon7BW6gtc1yBldTU7JDRe5SDcib90otODEJ9JqOQNjMaRpyAcSvf9Us/0', '36', '南京汉中门大街沟通100服务店', '1', '2016-06-08 00:00:00', '2016-05-06 00:00:00', null);
INSERT INTO `tb_user` VALUES ('14', 'oyqTtw3i2cte30LSHsGrXAkXVxqE', '', null, null, null, '42', '南京升州路营业厅', '1', null, '2016-05-10 00:00:00', null);
INSERT INTO `tb_user` VALUES ('15', 'oyqTtwzgJl31fSxOeeyny-ASSYQ4', '', null, null, null, null, null, '1', null, '2016-05-16 00:00:00', null);
INSERT INTO `tb_user` VALUES ('16', 'oyqTtw1A-aDwocImx_r01EG0MioY', '', null, null, null, null, null, '1', null, '2016-05-19 00:00:00', null);
INSERT INTO `tb_user` VALUES ('17', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', '', '吃号店大掌柜', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5ia4wIuzuiaszUibU71nMDFjfxUzjmbxhzb6kmuoYxlLVPInRJ9saE6q3iabEibvs37iaT9icuy4FwKXW9Q/0', null, null, '1', null, '2016-05-23 00:00:00', null);
INSERT INTO `tb_user` VALUES ('18', 'oyqTtw3UjQfx_MINSCnQXbmAPqpY', '', null, null, null, null, null, '1', null, '2016-05-23 00:00:00', null);
INSERT INTO `tb_user` VALUES ('19', 'oyqTtw3qfVPOKbbdt6v1hHiTVF1U', '', null, null, null, null, null, '1', null, '2016-05-23 00:00:00', null);
INSERT INTO `tb_user` VALUES ('20', 'oyqTtw1TyV2TRmTIVeF1Z3R3wqaw', '', '胡哥', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1yvHVIibexDJjcVXqicSmmWpyOuxw5Xiahuyia6c6icScfsDBv5PI6iaEBm3t9mmXKUHYMibHyUstBRgaib/0', null, null, '1', null, '2016-05-24 00:00:00', null);
INSERT INTO `tb_user` VALUES ('21', 'oyqTtw_8nBavm1j7aPJwKlic_oqw', '', '夏日凉橙', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QlCS2lTGv7F7gA9B1NXiazYWSb8Pz6X1BYAycGE0lRCSDJnMiasNbxqVty4xRC5Mkpc07QAKoWNXGv/0', null, null, '1', null, '2016-05-24 00:00:00', null);
INSERT INTO `tb_user` VALUES ('22', 'oyqTtwwPQXjq5CcUhNuDg-LMzN1A', '', '勐子', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM490yIClsWPyNYHLA0BQOR4Sk7icB9Snic1ZNwdSkZp0YMkq6PCx4ujHwMibcJkuWqmuWJOdwnU1nWJqsLIye0IRdiavKxcXAOr1yo/0', null, null, '1', null, '2016-05-24 00:00:00', null);
INSERT INTO `tb_user` VALUES ('23', 'oyqTtw0mBWl6V0bqU-xD5-_vzuiY', '', '陈雪成', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsS1YN5OIQEFzm4TekpwnYJdnMaaPicy0gLZ5hhicFEPyL4FakXo7DJG4LKZgcoUOFQ5XYwchdv1vK/0', null, null, '1', null, '2016-05-24 00:00:00', null);
INSERT INTO `tb_user` VALUES ('24', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '', '姚瑾', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSfZZtRITaVayMWLdib7Lmm8Xrlgph45WDZ8fPtD3dCrvcYUlQvSbSHSFyFdwzQQmMiaXTEK5Z3CmuQ/0', null, null, '1', null, '2016-05-24 00:00:00', null);
INSERT INTO `tb_user` VALUES ('25', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '', '豆娘', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLGh8UD3J3I5GCmliaTcBBf54r827vvGoxNPUPSia0asRHRR9k5aSs83JE4wU9bF0rnwVO2LMmMMl9g/0', null, null, '1', null, '2016-06-03 00:00:00', null);
INSERT INTO `tb_user` VALUES ('26', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '', null, null, null, null, null, '1', null, '2016-06-03 00:00:00', null);
INSERT INTO `tb_user` VALUES ('27', 'oyqTtw5jkAu9hSIYZUpyqylejx_8', '', 'angel', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIcFdm4G4fEaQRb5YoQPfupTobpR8z1wQwSlJGCnIiaft9o3rxHwFkRIcka8yO5VPCMRH7tv7Hic8hbgTFu0aicm6Y1Dooia7fafibE/0', null, null, '1', null, '2016-06-03 00:00:00', null);
INSERT INTO `tb_user` VALUES ('28', 'oyqTtw_SHoOKbpNJoF6fU-vfXxFY', '', '→_→^o^⊙ω⊙(ง •̀_•́)ง', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qhs01vSPTts4kmTjEtTM5Cdicd82JFsj8TuhbWg1NHIB49B7tokiajbCmYu3dHIFiaPez6zfvD1GSeM/0', null, null, '1', null, '2016-06-08 00:00:00', null);
INSERT INTO `tb_user` VALUES ('29', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '', '如果还有明天', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7RYIC6SsBB4WZ9fPQqBxd7QXOibn0HiaqYOa2ibMt1W9D7SPFoFRXUMejiaIQPNiahRQygkdEo0UOQFv/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('30', 'oyqTtw7f1lYZFlKdCF5VAHePqcxI', '', '王博', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTbibyLs0XWpGVQk6QDKkuPvt8mJrn7W7Fgp0nTKjchS0ELYDiawLr4yiaTxJMYlZ3YDuWxswibWEuxjw/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('31', 'oyqTtw4N1B1s_rd4bJyLdfAfNGd8', '', '又变凹凸曼', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOOuYw6wOpVCJvibXeDPZVtXjqSibCZRImkODLrKLQHTXsuPGdJCZbTJXibUsenrz3WW89ib7gInO6OQM/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('32', 'oyqTtw_3J9QWix69R8lFyGcAwCoA', '', '岑岑', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLBlO3ibecznZklsJ2mSNT0CDiaMuibaIQ1gticiaJf2Qp5eSr4YIqEZicCS7gUXpLkp9Vr854K2rfKCIgt/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('33', 'oyqTtwzkMdmKiUdVDhnlM6GXGYq8', '', '蝶衣婚庆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QgsFcUwibab06Mia9zG6W1lSh0AKhTCiberKbOBiaeDibBp15moAFxMgsmWh8VyAVKGFUJt1FIS1g8ea2/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('34', 'oyqTtw1jyQge4jL-hxW1fLc1WKnA', '', '釆菊东篱', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNjqrlFxZibkQpfycicPszZAZ6DhL4meAtcdWTNffynUEqAwAXdPe2c7Q9wtuO1w6Pjq9uzWCfU5qiallNW3SADNz2/0', null, null, '1', null, '2016-06-15 00:00:00', null);
INSERT INTO `tb_user` VALUES ('35', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '', '张朝', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJvD49ksHEhxgAShTJialc7rdo20Kz8aIopjEibJDYfxVicGotN6SUnCLHj2pTQ8XM0iamt1icSFdbLUUA/0', null, null, '1', null, '2016-06-16 00:00:00', null);
INSERT INTO `tb_user` VALUES ('36', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '', '冯永强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqyMtLduCycG9PYhSGKEy3HmVPm9M96PNWJnkLT4WcJ48FrMicibMrP3ahwYQDOtB1g9H1utwPcVv3/0', null, null, '1', null, '2016-06-19 00:00:00', null);
INSERT INTO `tb_user` VALUES ('37', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', '', '细菌', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKO8iazWichBSGk6rEEL7DBk1ib8IloFA93JEAqwkxcIZnVx1yzDUeWttdz3cEqh2J9clSJ7wdjfLL7ibA/0', null, null, '1', null, '2016-06-20 00:00:00', null);
INSERT INTO `tb_user` VALUES ('210', null, '18201117315', null, '92e400683ff001ff4de7b952ff5ad391', 'http://www.iconres.com/topic/supermariopack/png/www.iconres.com_cartoon_mario_icon_128.png', null, null, '0', '2016-11-30 23:26:44', null, null);
INSERT INTO `tb_user` VALUES ('211', null, 'admin', '阿法狗浪', 'f6aaf9925e7fb1bfcf7bedc73c3a8a60', 'http://www.iconres.com/topic/supermariopack/png/www.iconres.com_cartoon_mario_icon_128.png', null, null, '0', '2016-12-01 01:28:29', null, null);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role_user_id` (`user_id`),
  KEY `fk_user_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '211', '1');
INSERT INTO `tb_user_role` VALUES ('2', '5', '2');
