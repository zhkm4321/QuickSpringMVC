/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : db_smvcm

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2016-11-25 20:18:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `addr_user` varchar(255) DEFAULT NULL COMMENT '收件人姓名',
  `addr_name` varchar(255) DEFAULT NULL COMMENT '地址',
  `addr_tel` varchar(255) DEFAULT NULL COMMENT '收件人电话',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户',
  `sort` varchar(255) DEFAULT '5',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
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
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `ban_img` varchar(255) DEFAULT NULL COMMENT '广告图片',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `sort` int(11) DEFAULT NULL COMMENT '链接排序',
  `type` int(11) DEFAULT NULL COMMENT '链接类型',
  `status` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`ban_id`)
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
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) DEFAULT NULL COMMENT '图片',
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `goods_price` float DEFAULT NULL COMMENT '商品单价',
  `goods_num` int(11) DEFAULT NULL COMMENT '数量',
  `goods_total` float DEFAULT NULL COMMENT '共计金额',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户',
  PRIMARY KEY (`cart_id`)
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
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctg_name` varchar(255) DEFAULT '',
  `ctg_img` varchar(255) DEFAULT '',
  `status` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '蔬菜卡', '/upload/1460612766269.png', '1', '4');
INSERT INTO `tb_category` VALUES ('21', '五谷杂粮', '/upload/1460602430649.png', '1', '2');
INSERT INTO `tb_category` VALUES ('22', '肉禽蛋类', '/upload/1460602659462.png', '1', '3');
INSERT INTO `tb_category` VALUES ('23', '活力鲜果', '/upload/1460612742253.png', '0', '0');
INSERT INTO `tb_category` VALUES ('25', '保健养生', '/upload/1460612908722.png', '1', '5');

-- ----------------------------
-- Table structure for tb_coupons
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupons`;
CREATE TABLE `tb_coupons` (
  `cps_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券ID',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_code` varchar(255) DEFAULT NULL COMMENT '优惠券兑换码',
  `cps_price` float DEFAULT NULL COMMENT '优惠价格',
  `cps_time` varchar(255) DEFAULT NULL COMMENT '优惠券有效期',
  `cps_level` int(11) DEFAULT NULL COMMENT '0系统总优惠券，!0用户优惠券',
  `user_id` varchar(255) DEFAULT NULL COMMENT '关联用户ID',
  `status` int(11) DEFAULT '1' COMMENT '0已用，1可用',
  PRIMARY KEY (`cps_id`)
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
-- Table structure for tb_freight
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `fgt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运费ID',
  `fgt_price` float DEFAULT NULL COMMENT '运费价格',
  `free_price` float DEFAULT NULL COMMENT '包邮价格',
  PRIMARY KEY (`fgt_id`)
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
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '规格',
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `goods_num` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL COMMENT '是1否0热销',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否首页推荐',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1普通商品2会员商品',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('2', '西瓜', '/upload/1457923321834.png', '', '200', '阿斯蒂芬', null, '2016-03-13', '7', '1', '1', null);
INSERT INTO `tb_goods` VALUES ('16', '油麦菜', '/upload/1464245268878.png', '1斤', '0', '', null, '2016-04-29', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('19', '蔬菜会员月卡', '/upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615151535_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615151535_559.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('20', '蔬菜会员月卡', '/upload/1465975621288.png', '1个月/8次 3-5人 每次9斤', '520', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615152713_944.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615152713_423.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('21', '蔬菜会员半年卡', '/upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615153117_614.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615153118_561.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('22', '蔬菜会员半年卡', '/upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615154727_406.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154727_241.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('23', '蔬菜会员年卡', '/upload/1465976906449.png', '1年/104次 2-3人 每次6斤', '3600', '<img src=\"/chihaodian/../upload/image/20160615/20160615154839_620.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154839_633.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('24', '蔬菜会员年卡', '/upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300', '<img src=\"/chihaodian/../upload/image/20160615/20160615154908_679.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154908_133.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('25', '新疆库尔勒香梨', '/upload/1463109011535.png', '16个', '25.8', '<img src=\"/upload/image/20160513/20160513111104_660.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111118_958.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111124_44.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111132_415.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('26', '东方蜜1号', '/upload/1463110161194.png', '3个 约4-5斤', '29.9', '<img src=\"/upload/image/20160513/20160513112937_524.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('27', '海南木瓜', '/upload/1463110264179.png', '1个', '6.5', '<img src=\"/upload/image/20160513/20160513113119_408.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('29', '四川柠檬', '/upload/1465703766021.png', '4个', '7.9', '<img src=\"/upload/image/20160517/20160517161902_232.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('30', '缅甸黄河蜜', '/upload/1464250276685.png', '约4斤', '18.9', '<img src=\"/upload/image/20160517/20160517162017_401.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('31', '麒麟西瓜', '/upload/1463473271392.png', '约5.5斤-6.5斤', '26.9', '<img src=\"/upload/image/20160517/20160517162206_337.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('32', '特小凤西瓜', '/upload/1463473433361.png', '约4斤-5斤', null, '<img src=\"/upload/image/20160517/20160517162428_793.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('33', '烟台红富士80脆', '/upload/1463473499830.png', '1斤', '4.8', '<img src=\"/upload/image/20160517/20160517162523_535.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('34', '海南西州蜜', '/upload/1463473570955.png', '约4斤', '27.9', '<img src=\"/upload/image/20160517/20160517162639_435.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('35', '小台农芒果', '/upload/1463473632080.png', '12个', '17.8', '<img src=\"/upload/image/20160517/20160517162745_47.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162751_93.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162756_531.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('36', '越南红心火龙果', '/upload/1463473711206.png', '1个 约675g', '20', '<img src=\"/upload/image/20160517/20160517163058_156.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('37', '台湾传统小番茄 ', '/upload/1463474160676.png', '1斤', '8', '<img src=\"/upload/image/20160517/20160517163621_933.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('38', '有机葡聚糖胚芽米', '/upload/1464165453285.png', '10斤', '228', '<img src=\"/upload/image/20160525/20160525163922_150.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163927_913.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163932_131.jpg\" alt=\"\" />', null, '2016-05-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('39', '生态柔玉米', '/upload/1466730801733.png', '10斤', '48', '<img src=\"/upload/image/20160624/20160624091338_96.jpg\" alt=\"\" />', null, '2016-05-25', '21', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('40', '新西兰佳沛阳', '/upload/1465724169981.png', '6个', '60', '<img src=\"/upload/image/20160526/20160526140644_568.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140648_727.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140652_405.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('42', '泰国金枕榴莲', '/upload/1465724197732.png', '约5-7斤', '109', '<img src=\"/upload/image/20160526/20160526141141_970.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141146_445.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141150_602.jpg\" alt=\"\" />', null, '2016-05-26', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('43', '泰国金枕榴莲', '/upload/1465724208122.png', '约3.5-4.9斤', '89', '<img src=\"/upload/image/20160526/20160526141311_610.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141315_276.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141319_949.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('44', '香葱', '/upload/1464245310066.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('45', '西蓝花', '/upload/1464245343050.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('46', '西葫芦', '/upload/1464245387566.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('47', '豌豆苗', '/upload/1464245419066.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('48', '茼蒿', '/upload/1464245453129.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('49', '榻菜', '/upload/1464245485582.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('50', '蒜薹', '/upload/1464245516050.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('51', '生菜', '/upload/1464245592332.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('52', '青椒', '/upload/1464245620769.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('53', '青菜', '/upload/1464245647957.png', '一斤', '0', '', null, '2016-05-26', null, null, '1', '2');
INSERT INTO `tb_goods` VALUES ('54', '巴西原装翅中', '/upload/1464316350243.png', '1KG', '58', '<img src=\"/upload/image/20160601/20160601163307_898.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601163459_674.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164856_426.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164905_212.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164912_311.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164919_196.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164925_118.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164932_981.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164938_196.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('55', '加拿大AAA级牛小排', '/upload/1464316409415.png', '500g(3-4片）', '228', '<img src=\"/upload/image/20160606/20160606094353_270.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094401_308.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094418_609.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094427_103.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094435_408.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094442_489.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094449_579.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094456_406.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094504_811.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094512_875.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094518_415.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('56', '加拿大AAA板腱牛排', '/upload/1464319904220.png', '3-4片', '89', '<img src=\"/upload/image/20160606/20160606114256_204.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114304_437.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114310_628.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114316_861.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114321_756.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114326_99.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('57', '澳洲草饲牛仔骨 500g（6-8片）', '/upload/1464319978611.png', '6-8片', '89', '<img src=\"/upload/image/20160606/20160606110603_342.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110610_827.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110616_482.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110626_702.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110632_714.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110638_473.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110651_500.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110656_605.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110703_722.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110710_991.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('58', '肥牛卷 透明托盒装', '/upload/1464318053841.png', ' 500g', '59', '<img src=\"/upload/image/20160606/20160606114831_626.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114837_63.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114842_346.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114847_370.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114852_206.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114857_629.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114901_5.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('59', '澳洲牛尾', '/upload/1464320071736.png', '500g', '58', '<img src=\"/upload/image/20160606/20160606115420_775.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115426_235.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115431_832.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115436_598.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115441_281.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115450_882.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115454_290.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115459_387.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115504_193.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115510_375.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115514_465.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115520_889.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115535_489.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('60', '澳洲草饲牛腩块', '/upload/1464318370545.png', '500g', '56', '<img src=\"/upload/image/20160606/20160606135919_524.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606135927_492.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140003_418.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140008_567.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140017_948.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140022_917.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140028_783.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140033_800.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140038_961.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140044_227.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140053_999.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140057_239.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140102_152.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('61', '台湾土鸡仔', '/upload/1465887400031.png', '1.0-1.2KG', '48', '<img src=\"/upload/image/20160606/20160606140430_427.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140435_145.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140440_760.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140444_391.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140450_406.jpg\" alt=\"\" />', null, '2016-05-27', '22', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('62', '台湾红标老母鸡', '/upload/1465888267174.png', '2.0kg', '168', '<img src=\"/chihaodian/../upload/image/20160606/20160606152309_200.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152309_515.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_670.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_793.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_374.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_428.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_638.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_336.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_816.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_153.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_364.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_941.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('63', '同仁堂十全大补台湾红标老母鸡', '/upload/1464319011485.png', '2.0KG', '228', '<img src=\"/chihaodian/../upload/image/20160606/20160606153659_117.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_414.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_71.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_547.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_55.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_164.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_857.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_250.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_90.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_822.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_971.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('64', '生态稻田土鸡蛋', '/upload/1466479271070.png', '48枚', '96', '<img src=\"/upload/image/20160615/20160615091200_871.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('65', '妃子笑荔枝', '/upload/1465723952090.png', '1kg', '30', '<img src=\"/chihaodian/../upload/image/20160607/20160607142334_888.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('66', '澳大利亚无籽红提', '/upload/1465724148153.png', '500g', '21.9', '<img src=\"/upload/image/20160607/20160607144646_538.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '1', '1');
INSERT INTO `tb_goods` VALUES ('67', '菲律宾大香蕉', '/upload/1465723850965.png', '1.5kg', '19.8', '<img src=\"/upload/image/20160608/20160608093755_855.jpg\" alt=\"\" />', null, '2016-06-08', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('68', '非转基因黄豆', '/upload/1465701002059.png', '500g', '10', '<img src=\"/chihaodian/../upload/image/20160612/20160612111019_687.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_150.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_516.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('69', '生态菜籽油', '/upload/1465717197584.png', '2.5L', '60', '<img src=\"/chihaodian/../upload/image/20160612/20160612155635_29.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_501.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_968.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('70', '生态菜籽油', '/upload/1465718279680.png', '5L', '115', '<img src=\"/chihaodian/../upload/image/20160612/20160612155912_633.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_584.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_783.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('71', '生态黄金耳', '/upload/1466474419051.png', '1袋', '12', '<img src=\"/upload/image/20160621/20160621100036_686.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('72', '新疆西州蜜', '/upload/1465802535035.png', '2.25kg-2.5kg', '39.8', '<img src=\"/upload/image/20160613/20160613152642_827.jpg\" alt=\"\" />', null, '2016-06-13', '23', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('73', '蔬菜会员卡年卡', '/upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '<img src=\"/chihaodian/../upload/image/20160615/20160615155134_9.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615155135_852.jpg\" alt=\"\" />', null, '2016-06-15', '1', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('74', '冬虫夏草（鲜草）', '/upload/1466479379008.png', '20条', '850', '<img src=\"/upload/image/20160621/20160621112332_761.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('75', '冬虫夏草（鲜草）', '/upload/1466479445305.png', '50条', '1998', '<img src=\"/upload/image/20160621/20160621112452_333.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('76', '冬虫夏草（鲜草）', '/upload/1466479517055.png', '100条', '3880', '<img src=\"/upload/image/20160621/20160621112538_490.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('77', '山竹', '/upload/1466736000313.png', '1', '0.1', '<img src=\"/upload/image/20160624/20160624104011_926.jpg\" alt=\"\" />', null, '2016-06-24', '23', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('78', '仙桃香粳米 50斤', '/upload/1466818615476.png', '25kg', '180', '<img src=\"/upload/image/20160625/20160625093709_160.jpg\" alt=\"\" />', null, '2016-06-25', '21', null, '1', '1');
INSERT INTO `tb_goods` VALUES ('79', '商品测试', '/upload/1474343819028.png', '', '1', '', null, '2016-09-20', '23', null, '1', '1');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`order_id`)
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
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `oppen_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '账号手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `tb_user_user_id_index` (`user_id`) USING BTREE,
  UNIQUE KEY `tb_user_open_id_index` (`oppen_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '', null, null, null, '2016-04-11', '37', '鼓楼2', '1', null);
INSERT INTO `tb_user` VALUES ('5', 'oyqTtw2gjY17ntKIyba_i48EB26A', '', '尹翔', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDr5ibdIjO4rX8U4UDVE3Xf1WFAPcYw5Xqzd3phekO1be8j8fCjku6CVwvKkS3iaN9v8Q5uU3iauOdpA/0', '2016-04-11', '36', '南京汉中门大街沟通100服务店', '1', '');
INSERT INTO `tb_user` VALUES ('6', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '', 'changzhenwei', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEb7ib78No0HnFF2wEXaVnicBMwOvmeVFxuy4hOlSCjXLeeia42glF84mMCibmrW0ebM6TgCUqYB8nJb/0', '2016-04-13', '39', '玄武区1', '1', '');
INSERT INTO `tb_user` VALUES ('8', 'oyqTtwxQ7MQgfoqMwVd8mj03MyQQ', '', null, null, null, '2016-04-20', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('9', 'oyqTtw96SNP2q4ZZxcnIuVj7sYNk', '', '阿朱', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9Dmt6icfGDoop5lxH9sdiaLs3xocHC9wOhzddYTZ0T7K1fBTicN4rrGDpUclTJCuXia21ofHW2eFjer6O77A3HFWMn3bE/0', '2016-04-26', '39', '玄武区1', '1', '2016-05-25');
INSERT INTO `tb_user` VALUES ('10', 'oyqTtw1HH95lrkd5GJwqusVT6z5A', '', null, null, null, '2016-04-29', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('11', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '', '乀_-Sherry', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlZVicEmK4Jz87E2pGelZ0uxP1WoMotQI70mnPuF1ib3p2jRSeWHLBpXreqFibDqLDMpAM0qPFKRx15/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('12', 'oyqTtw_d252V55C89XiqmkGrRpHM', '', 'Rosarin*', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxmAAsZZI5Sr26AaDeyveYrGMTM5omicPsJp3zEuE7kj2tqBbHBSlyF54XvA2ArrEq90Aqb6ENEicd1/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('13', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn0aoSDNlW4dEib1Cmy66JZfon7BW6gtc1yBldTU7JDRe5SDcib90otODEJ9JqOQNjMaRpyAcSvf9Us/0', '2016-05-06', '36', '南京汉中门大街沟通100服务店', '1', '2016-06-08');
INSERT INTO `tb_user` VALUES ('14', 'oyqTtw3i2cte30LSHsGrXAkXVxqE', '', null, null, null, '2016-05-10', '42', '南京升州路营业厅', '1', null);
INSERT INTO `tb_user` VALUES ('15', 'oyqTtwzgJl31fSxOeeyny-ASSYQ4', '', null, null, null, '2016-05-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('16', 'oyqTtw1A-aDwocImx_r01EG0MioY', '', null, null, null, '2016-05-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('17', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', '', '吃号店大掌柜', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5ia4wIuzuiaszUibU71nMDFjfxUzjmbxhzb6kmuoYxlLVPInRJ9saE6q3iabEibvs37iaT9icuy4FwKXW9Q/0', '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('18', 'oyqTtw3UjQfx_MINSCnQXbmAPqpY', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('19', 'oyqTtw3qfVPOKbbdt6v1hHiTVF1U', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('20', 'oyqTtw1TyV2TRmTIVeF1Z3R3wqaw', '', '胡哥', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1yvHVIibexDJjcVXqicSmmWpyOuxw5Xiahuyia6c6icScfsDBv5PI6iaEBm3t9mmXKUHYMibHyUstBRgaib/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('21', 'oyqTtw_8nBavm1j7aPJwKlic_oqw', '', '夏日凉橙', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QlCS2lTGv7F7gA9B1NXiazYWSb8Pz6X1BYAycGE0lRCSDJnMiasNbxqVty4xRC5Mkpc07QAKoWNXGv/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('22', 'oyqTtwwPQXjq5CcUhNuDg-LMzN1A', '', '勐子', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM490yIClsWPyNYHLA0BQOR4Sk7icB9Snic1ZNwdSkZp0YMkq6PCx4ujHwMibcJkuWqmuWJOdwnU1nWJqsLIye0IRdiavKxcXAOr1yo/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('23', 'oyqTtw0mBWl6V0bqU-xD5-_vzuiY', '', '陈雪成', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsS1YN5OIQEFzm4TekpwnYJdnMaaPicy0gLZ5hhicFEPyL4FakXo7DJG4LKZgcoUOFQ5XYwchdv1vK/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('24', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '', '姚瑾', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSfZZtRITaVayMWLdib7Lmm8Xrlgph45WDZ8fPtD3dCrvcYUlQvSbSHSFyFdwzQQmMiaXTEK5Z3CmuQ/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('25', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '', '豆娘', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLGh8UD3J3I5GCmliaTcBBf54r827vvGoxNPUPSia0asRHRR9k5aSs83JE4wU9bF0rnwVO2LMmMMl9g/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('26', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '', null, null, null, '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('27', 'oyqTtw5jkAu9hSIYZUpyqylejx_8', '', 'angel', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIcFdm4G4fEaQRb5YoQPfupTobpR8z1wQwSlJGCnIiaft9o3rxHwFkRIcka8yO5VPCMRH7tv7Hic8hbgTFu0aicm6Y1Dooia7fafibE/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('28', 'oyqTtw_SHoOKbpNJoF6fU-vfXxFY', '', '→_→^o^⊙ω⊙(ง •̀_•́)ง', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qhs01vSPTts4kmTjEtTM5Cdicd82JFsj8TuhbWg1NHIB49B7tokiajbCmYu3dHIFiaPez6zfvD1GSeM/0', '2016-06-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('29', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '', '如果还有明天', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7RYIC6SsBB4WZ9fPQqBxd7QXOibn0HiaqYOa2ibMt1W9D7SPFoFRXUMejiaIQPNiahRQygkdEo0UOQFv/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('30', 'oyqTtw7f1lYZFlKdCF5VAHePqcxI', '', '王博', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTbibyLs0XWpGVQk6QDKkuPvt8mJrn7W7Fgp0nTKjchS0ELYDiawLr4yiaTxJMYlZ3YDuWxswibWEuxjw/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('31', 'oyqTtw4N1B1s_rd4bJyLdfAfNGd8', '', '又变凹凸曼', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOOuYw6wOpVCJvibXeDPZVtXjqSibCZRImkODLrKLQHTXsuPGdJCZbTJXibUsenrz3WW89ib7gInO6OQM/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('32', 'oyqTtw_3J9QWix69R8lFyGcAwCoA', '', '岑岑', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLBlO3ibecznZklsJ2mSNT0CDiaMuibaIQ1gticiaJf2Qp5eSr4YIqEZicCS7gUXpLkp9Vr854K2rfKCIgt/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('33', 'oyqTtwzkMdmKiUdVDhnlM6GXGYq8', '', '蝶衣婚庆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QgsFcUwibab06Mia9zG6W1lSh0AKhTCiberKbOBiaeDibBp15moAFxMgsmWh8VyAVKGFUJt1FIS1g8ea2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('34', 'oyqTtw1jyQge4jL-hxW1fLc1WKnA', '', '釆菊东篱', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNjqrlFxZibkQpfycicPszZAZ6DhL4meAtcdWTNffynUEqAwAXdPe2c7Q9wtuO1w6Pjq9uzWCfU5qiallNW3SADNz2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('35', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '', '张朝', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJvD49ksHEhxgAShTJialc7rdo20Kz8aIopjEibJDYfxVicGotN6SUnCLHj2pTQ8XM0iamt1icSFdbLUUA/0', '2016-06-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('36', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '', '冯永强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqyMtLduCycG9PYhSGKEy3HmVPm9M96PNWJnkLT4WcJ48FrMicibMrP3ahwYQDOtB1g9H1utwPcVv3/0', '2016-06-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('37', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', '', '细菌', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKO8iazWichBSGk6rEEL7DBk1ib8IloFA93JEAqwkxcIZnVx1yzDUeWttdz3cEqh2J9clSJ7wdjfLL7ibA/0', '2016-06-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('38', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', '', '陆惠', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6CKGTXCuIoibODV9NdJzdyEb7SWxWXOxdD9KjiaIKyce8YiaMbOaUjxrkldBj7M2WNCBkdPu0V3ibQ0A/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('39', 'oyqTtw3-pP203p605MLi9iX1utyo', '', 'EOW', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUODmKBp4OplXgw4iauSpag1VjhqYClI4tKiazeKxaNzBsRpH8ibCicuDr6xkpD4HXQ8Doa1ESZTPWVqGW/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('40', 'oyqTtw-1ntxGmb48Evmvc6r2VlyQ', '', '子夜 「果语官方省代」', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxnA3IJiarFlAqX14Eef3XrNCGHS7icYKRCvQUEiadru3Py7dtFoNOV7BMLKCS9KTszsvoz9s1ichrGpl/0', '2016-06-21', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('41', 'oyqTtw_4KRONtzhkIWrZMeQVM2So', '', '炎炎', null, '', '2016-06-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('42', 'oyqTtwyAyUrpwNrPPx8F7q61p7RI', '', '有志者事竟成', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBCdiaK6MnPGf6kCJR6L4duBfF8TINAg5CsWuUAyabt4ibeuibex170SeKrsvyTsHl0kpgNYUYBWTXdD/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('43', 'oyqTtw1zOWY0M3qayRdDu_XnHsfM', '', '喜之郎', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrTxdZl8tZOXE2icZsmsiasdPKgQsbPXNCfjiaUrCBgMGMOW6ve2QI00zlRibS0WDCbiat3FboczqUic7wVPPnNys64I/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('44', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '', 'Auyl', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7tYCkvHHWRH5l22e9eictuAlHCfibaMBDpicETrgofTHmqGqG23ERkk54aQRguvMbm6Wj9bpVhZWO6w/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('45', 'oyqTtww6p1kWXM4oWOWgnwxRG9G4', '', 'twang', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKPBMswfV6UguVHBovTDNLb9bCSHLpqqkdL4J6KkvaKxpQFztVJt94GUpRdjIruuCzJib1qNUd6xQnw/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('46', 'oyqTtw3FQoAM2glqBcgDYtW4iyUU', '', 'ice_冰块', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QoIO1oZ08ZHWlqRX2QGrm8Jj7veb4RicjfTmKOxu6ibXG7a0t5qQZnnJBGXN5aj9xVOG6TmGm7VzYc/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('47', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '', 'A^_^上海金蝶软件', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsrG2picGibW0RU8nM1gZoOlJnjJlFRWtm2MyDXOWsxRnvYptUqOJGBhXbofbXvoYRyOjl5Tp4G0Td/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('48', 'oyqTtwww94zQehm9KMlvSMsyku_Y', '', '旅馆大兵', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLERgcBibPRPxbzChxnm0qSMJM00nXLrKMkvUaU5Har6gYg0h4phnkREHibMMM7oBjyQQgHMUaX41Ml/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('49', 'oyqTtw4otwJOBj2s94ZL5Wt5KwGo', '', '磊', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKvVNjsFMMMz6aQBGVwHgfsYMX0erLDnVj3JicaHZZuibO3zVd1YzllYLGMLeEjCkswOSOA64YeTIVA/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('50', 'oyqTtw4LxNUBlUOTt1ql0r-sKtv4', '', 'L', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HH5ynLvIcia8yNzMiaHbC55Ldvm194gcBA4fNaMII26kPUWvveqdeicrRhNbYbeJrvpLb1iaIC5gicibXTfwUt62hkibM/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('51', 'oyqTtwzH1zzT1xZZWUovnkj6TxPg', '', 'hopeful', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1c21HNpO6rJsvWSG0hDSxbk9TTnYexiaBooia3EvXP8fBU0AABM3ibEKSbrsZNvqiaqf4g7Q7ytK5EoFf/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('52', 'oyqTtw__0-vXm5HFx3D7IsKz3M7E', '', '蔡礼松', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLOsEr5cbBWy1lMVffysMG254NfmbyZwFNo3AczCqiaAfNLIr61ncMGOcSoJ6iaxkBo1gdxQU9Ke5Fx/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('53', 'oyqTtw4O0F2-mrFGbPGHcVXhhF6Q', '', 'HY', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLAY7Fxj6QQKHeXDMQjNbTYddWyrt90Vw1aPk2RGK8W7R594ic1yxhYcLlFEFDwzusKTf7D1Eq7Oyu/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('54', 'oyqTtw-Wo0Ke5FHnmcvs3-9_NB9Q', '', '扬帆启航', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn3LTib3LzuHRJaukvlfjB0vticgQju5yvIgj0UJuKNvHMA4oBSbEfrspynzLEnrICiaVnb79fbkRpT7/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('55', 'oyqTtwxkF1w3_DZDu_5Z2cStYoXw', '', '墨', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7gOkibGxANRp1NyrvcdTk5Os2zw155kSFLYKeibjsurywKnpPdUhwX9M5BfexcjLCbNdHkiaunneOpMicgicbktFaibPPDT5Y3LIfyI/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('56', 'oyqTtwwMhius33Yqjrv4Q2onmr1c', '', '流浪信仰', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QpCPfY6yhdWyKsUPOBmNdz3LQS14ELAX7Pjlw0vg0FfibTfXY1B6L2ZW6uqicanHUYu2Xibpz3fCeFI/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('57', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '', '付伟', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEInV2gyZzicLPWpYWs0p4q1czAKCO5dC1kFFOSPzhMRIwGJ45n68v6416G0ibVR7srPL2I2F0v20zug/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('58', 'oyqTtw2EbRUgt2TfsjFkKOzDYGlc', '', '鲁云', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKWAcAXJEssHKs3Mhvibxib3KmgaIibf2bQicEfhLF84K1p6188icNh6D1ESNkBZm2zQsD7PclB8ajq0DA/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('59', 'oyqTtw7QMYKadn97uYrzoQLtR4Tk', '', 'zxw', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobcA8L65Yp85VuoVjp5C2fSzPEqOFNQ7OUPH6ib9O3bStj6jH2yicr4grRpZKo5juaZXpSWliaibrtibg9RIBtFUXRP6/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('60', 'oyqTtw51bjkjUl__qSKCkVzGvCS4', '', '蘭鋳', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9DmiaWto7ogRuBiaibYHBv6hoSAibAzPJPlMWvlhXRjxIhp7rLzGwZjnial9XGqZTdTudQ3aVvfhEBpibU79EvzzOL6cVUc/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('61', 'oyqTtw3S8l44GHrJyZ6dG_52OuTs', '', '榆林技术宅', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HPNSGgh0KchK08zfb8DngxsZUMhLsnQvDgCFuviauXrCetjiage1bK9zmyYvhI8B1BibbKsd9yyibn6wdeHR6uZskM/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('62', 'oyqTtw2IDXvHmJw1K8vz7jLoffe8', '', '天胡荽', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLMNuicicgtXCfsicOFWgEv3os2BnGrxKqxy2PssrcN5ibnUQTJomsCsIKOXpyqr7y2IW4q62DhBjNN5d/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('63', 'oyqTtw0VCsm7fTPrZMMISKZ24-Vk', '', '郭锐', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEZlW2Hiam7iaauWpamTMBTWQmGK1buCwDaYlR62y2x6KdMx6GBDFcTPKIa6iaejHDAfqtSPMia6fr5K/0', '2016-06-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('64', 'oyqTtwyswNhhDWXXMEAe45cPzgoU', '', '星期五的', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBrq5Djs00QlXeoBLSnSlLJABgGqIX1eNMJWfSXlGF7aEyWVTSCzicS2QibXLm8Od53hogJXyiaZLMV9ibOk6uibCfDoMu324QfrmC0/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('65', 'oyqTtw3JBu1RzFLk8vsezSgiENWw', '', '懒懒dè阳光℡', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNflECOT45DiaUFgXM9HmgUj5TXWiaHwia1tq9ZgnaEaicRDpfPYUZibrVeafq9AxguwzELAmpkydf7bjqInZQ0PPRm6/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('66', 'oyqTtw_embzWA8S7UcaBBj_cHzGU', '', '张庆', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1zK8ujrm1V7PLdbTb8Qib2MKenibvxQhA6crsF7gFekn9nVZibT8jNddrg1w1MxnYEJFBiaaBt80RT1/0', '2016-07-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('67', 'oyqTtw1y0z_wUYa-w1rNc8Y5s9FU', '', '心晴', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBJSR4BMQUy9JfoibBtyYdUWFGQsjOjBFu2icIOicZvAERc6pItL59LMzfzx74O2AWlOykX3vfDcHRwd/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('68', 'oyqTtw6uTN82lKqHdvTKdbAaaxeI', '', '小傑', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxtCVBtpBqjm7dA5UhQ8ia7gKzRTocZuzseARvrJxYyKRefBjDrGG7ibicw5JnUKYiaial72hOuG0gkFNm/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('69', 'oyqTtw9KssTdTOkFZcCXB6bowtE4', '', '张腾达', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5lGQ6tUtayM0NHsZKKcfd9oS2zibGUicXoQnjUb3F5sxs5iaoQ9XIR88gnJTyuDLRXV7QiadId7puia0w/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('70', 'oyqTtw_PwoKQINpq6-kzPv0T0wp0', '', 'Michael德亮', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxknOrm8l0tONSy7UWmhhic3EJFobojjyzLZ3RgVn1iceSiac2ex4IChYfbE22xhxIjSNrlDwouviacHW/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('71', 'oyqTtw46jXeyrPmgHEXfzqcTxwqM', '', '夜猫', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLB7AfBzoFHlpngYfaDTStJ1ZVSdicrxqrnE766xJlszhhcUaZibww64Xpe8PMhvl0Uu2uhWzsGA2iaF/0', '2016-07-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('72', 'oyqTtw7MN_dqCMg_cG1pXLcXIexE', '', '仲景武（泊仲）', null, 'http://wx.qlogo.cn/mmopen/EzVk5PKYrkqtwafWDnMpK3yz5OKVhhSyRjsq4CFHTeUgFsB6oQwna2ibI7BxKe3amwpoMsVF3EcL4hZYfgwPvycjETicc2iacee/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('73', 'oyqTtw6NiB8G2Dsh6X1bFglVUAb8', '', 'bobo', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBQNgFibWuGMRgAJ6d2Ziat1nLpVFvmgSGkf9KVYibXA2zwSbky9nhpG2r9o3NjX6OdCNficr8VVoPuocQ/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('74', 'oyqTtwwsQHnURB_ZXmYQR7uson6E', '', '陈新', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAZfwxQHz6e4KviazNCtNaBUsKMNh6GmQkpG1wFObiaaDTOG4ZSXb8plW0Q7hMDYgDUyg8NtoUkyJ9A/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('75', 'oyqTtw-Kanlls4WZ5jSFK07rLtac', '', 'charm', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GiblpxMvCcQlQrSygSngQwFTTSa7YibrHiaPPN2dMPbxbwsiapQHB3oebibWY6MFLreall4mhysWRSr6aFFLhsaChvh/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('76', 'oyqTtwwR_UJKYFzjccGDW-FRlZG8', '', '冯泳', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoZedDVM9ELLFttCKStbX5N8R3KovOGtXy4fDq8AfRF7s0dicEKTmlRcRONXNs7625X5TrTICJwWUfg/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('77', 'oyqTtw1s7Kti_ZB6PEZ7aWVeApIU', '', '李强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpQehWeECnZbpFyLo77EEqEl8iclVokxwhic730mHA87oyRSzgVbLvFjuh8pxyDfxdd6SelpicvGcfl/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('78', 'oyqTtw_noSdZUmM1Jk6nV-592r4I', '', '无言', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELDVMMBYZ2HZnTibnrSwxZPZlDHKWRNXR49xY2ND1NuvLZrkicRRJBSQCG0hhkfVshibZAndQuyBbHEw/0', '2016-07-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('79', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', '', 'Leo·S', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxia7icd51TxgLBdk34VyibCp7QQYeKDPiaP5HvuHBiaJAol4647ZzbHJib0dFVLIMsAicUoYXBM0hhzW19V/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('80', 'oyqTtwy2GZcWnrm7GxdbQ2YCTl04', '', '于文雨', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn5ERNts066OeQVXJGEqqyAAUTUwiaSHTrj4YcWmdNkJZibiaV9szfic0D259FhyUVfyDVErcRRaA2W4ic/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('81', 'oyqTtw8aLbm2Z9cI_lNZfqA8jO1k', '', '从今以后\'', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL471xg1Rq7pvdwavXS97ndcf1S4c8iam3nvc599yoqSwg6sAAByhQluADVwaIlBYOicE545K4ibqRHA/0', '2016-07-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('82', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', '', 'Kalven', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxoiccianlho0iahZ3IlryGPUlPIEqTDs162Ete7wmLkvUCiaicAdg9L93VJsqb4m4wciaGrVojexVDSBTF/0', '2016-07-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('83', 'oyqTtwyvlfpPLihhMb1gsk1yGHtM', '', 'ZHL', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn9lAiclexYyG3p2LSDK7DzQpP2wB0cezX5jokY69rpqugI91rqMpvYL4hRlrV1p0otWEYeAB4tb2t/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('84', 'oyqTtwx33N4XPEOmwvaNVwUl0SfI', '', '马学平', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoYhVOmq9q9gRwmzMFxzEyMUQS6BHKIo8F92ctWJ6zfDliaVyv66f7icKVkNuoUCk8cAHjiaJP1Y8OG5eNl4qgVDmM5/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('85', 'oyqTtw93fUMN48On-8bpNsgkl_VM', '', '邓忠乘', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELPeicalEoAAEmtOhIbNHyNGMtHAibiaTqz0lCbibFyuFmqqevhghuckibrgukVGAXqrHyic2nFb1NoTdkA/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('86', 'oyqTtwx82NJ_PZhIPb8WgYSZex-Y', '', '刘佳亮', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELmOknCSHDcSPl7z5LvhXMKlgUvjwicLHBWyVH2BHQeAlB0PUkjIy28qGLib9HaZ3u7u4xP6SHnND7g/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('87', 'oyqTtw2J46OTu-gIHM5Ceh5LWqcM', '', '小炜', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobAyicsB8W3tAIeRQwpnJhWib8BoCuZKg9go5f2Uicf3wTErEPZSibTxbmGI9ZUXD1QafrbUCeGyFNFVI61uegXgURia/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('88', 'oyqTtwxZ2AM2Kvxae1Di0O2pS0x4', '', '波粒小江', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB00LKajWxKtjsdpODnClzAyP7GmQdbvUETV283D6SrEAwyk6XZ0GtYoB1ZJDjPmBKjx3Y3WiawJ6w/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('89', 'oyqTtw0daPqFrpzf6udTRq2PvRjk', '', '广州天王点歌总代理小利', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxvRlFkkXfk4IUeGibbV2jBMyiadE4xa0AU5EMNbhFfd2ukNSgx0wvznYzyJcg0NEtxM7HrVL1xjYvw/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('90', 'oyqTtw-lmpvXm419gK1DyMysmtv8', '', '张三鲜', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxolWPy1OY2zGjYHELiaKUiaMThD5bkkBGqiajbBKsibQt2EcJUfgBOZUChMTmDDk9V0snEuUm1E20fvg/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('91', 'oyqTtwyVjYeFls9mzhpP1VtiV25M', '', 'xyy', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn575evwfKKEqTBxXbuicte4bqedjlqs11zngXaicDx4icUgKo9RISrNR2ibrgKKI6GfskJLDpLjPgrJk/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('92', 'oyqTtw18D98Z6Z1N_7nJpTj-aKf8', '', '吴奇胜', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIqu7EUIFHJLnl3XOxlY7FXMicNhLJsCTI9a98QfxYZjS7V5S4T63icNLL3ibc7zSqdZwSS6hcKteqLA/0', '2016-07-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('93', 'oyqTtw7GMp2Re_LIt9ghepmBqYMI', '', 'cge', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaAKW87ZqVBRfRVYXnGOEdJVvCGzWAoib9jptiaKnY95uY6tNw9YicUrRUjRtAwT244nDeGicEibAdMBDg/0', '2016-07-10', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('94', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '', '传世', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNJ4RKbNQborUhbYib7zF6pVibkjS7PpClRbWrCuZ0szC7yhjYNEnRUj41QcIicYThibjwklVQxDcYM1/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('95', 'oyqTtw1Ux4KN9cVDJFLbft1vXLhA', '', 'Ming', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqP9UONJ2Oj2jYp8LicFTYTrOa8ViaRubN4r2AEva335H6aibEiaSIhlicBz7FAKBxjJztJLWZGO72a6a/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('96', 'oyqTtwwSpO0YMU0l81eB0fgRYIos', '', '暖暖', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOPT8ic6484ssbDiaEBXtFkDxZHO2yEM4Fduju6hqS1gibvgPLhnmKfUUiaNUK1toYZydSGzTgggXXgMia/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('97', 'oyqTtw7awg1cjj_jfWbARvKDmPjg', '', '元亨利贞', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobJZoQiaSlKRxI7iaxN8m6rYDyZ27G11HmxXicxIQpp5NrWCXiaFqXibLEe7EIQZQT4oibbxsPCB9pH6g2LI5Oz031tvG/0', '2016-07-11', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('98', 'oyqTtw49lh7RNPtgGhJ_BNyF1ro8', '', '殷坤', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAob4zqPEcbFjGgyyGmba4KRp50qxaq4XicG1iamSkgAuWbqEqbCXr6lHMC8AzibCTsJy81x9NdhGiaoic97RaiaTKicoUia9/0', '2016-07-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('99', 'oyqTtw323_sdj-rR8Yp27y_ZhUGw', '', '漂流船', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QkRwRwSPr42GpsYjDU6E7b3wFVZggUPuKBGqLAahZjmgekcZILwDTB8AgPEvHGccOpCfDn28pvH4/0', '2016-07-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('100', 'oyqTtw6V9K8rfRUIbElW7fBOCOK0', '', '奔牛', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI70E6NpEfhE2SZYVkoyySUBNYhLibbzbfQMlwwVLKKf6dSU0vBjd65MKoFap2QmScsa143CtAWtBA/0', '2016-07-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('101', 'oyqTtw5V1eQrMBLU8bGdYVWSMYz4', '', '高备资产@婴儿', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI3rYpOwhDoibzZmVAoiav3iaUj45Tb7MaYrHiazt3umhwliaKrU5yE8zDLJayDHpTwk1XuxGedk0J5w3w/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('102', 'oyqTtw71JtyPKfnLao7PJyHEB-lU', '', '路鹰', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBOibz7HqJcBUQdMzCiaYzFic0WKNwMPQnjbTNu3zKTGJIukH3DtqqC3AsiafBLiaO627QZ3nUqYGM9I7G/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('103', 'oyqTtw0J-ytrGmD0Nx6BbDZHNl70', '', '程丽', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOAUU0Q1sicXBlvtZVE3KWKYWx5R422MAN9salt6H7lJobEkNSeb9h54tf7sTic6xVE6Y39DorkIbge/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('104', 'oyqTtw9evW2ceV_C-wKbpEw7K1EY', '', '四眼摸摸活狗', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELYicjlUhO2oZSd07ogFqaAolYjwkDq6jlDYCvYgGnAOjwMxFhia6UhuEMI46j4vRibKRmtSvrQMoEAg/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('105', 'oyqTtww0HkwishJFkuuYRPjptKUY', '', 'PM - Sparta', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYz8bicuNwyUiaX5Cob8xzCeEyK0T4ib7TF4yVDx34ljSlaN1KPyHvHWHmIPxaMDJx8jt5OsLfsWvNX44/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('106', 'oyqTtw5plnrASL-cF6Al_6lvxc7s', '', '淡茶', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELSQFrC84ksrg8u1xxiaOvT1UabFQonJLSZicI9vNN8fjKnT7CI7QNZLib5wNQKkOEX73RreG8y0fAYA/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('107', 'oyqTtwzHmjTAelgd0QTkmkQ1gqm4', '', 'alex', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBRCyBkkzw2ISXCMnAPVBYM7eqjCBIV6H9GZ2kTJmYeEuAIZewndLTq1jOCgTUwDUX9PX6OSlTatTg/0', '2016-07-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('108', 'oyqTtw6lAhPTweLH13qfNAxt0YNU', '', '济宁商超软件收款机考勤机监控', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLJ1jRyZHia1LRtGqk4LfTVfGsstXv74R3ZjJqZVh2B6Ce3qyh4ZokWf92wcLy7JQhT3OSqxiaWj5Pib/0', '2016-07-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('109', 'oyqTtw0Mg86w0w57h3WFIYHy-h9U', '', '李绍龙', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaib1bYe0C7SsZo2QJQlp0CQTenzbZFvpiaaWT4JibvdFK36Y6D3CPmoOTZ95WnvoEuia0h40PQjrVpR49eYmnKsmJu/0', '2016-07-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('110', 'oyqTtw24wiquOjeyMKS760QbhJuQ', '', '.zhz', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSfKbicNRNkfVw6tfz4W5vOQ7nsAQszFd9e0lVnN2m7Hb77dqs5vBLpICmN0PYPuqI8MDvr9hAb8nX5ib6dJJqkxVQgUufT8UHz0/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('111', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', '', '梁剑平', null, 'http://wx.qlogo.cn/mmopen/jP5X2H3hNnSIBfIUxEsjsEDzibGlyUk3r2JHicxicQraL9wOOMCIxljzPXRmsqiat35uRkmRAoUYWc20iaZB240icnfTM0njRZu6qC/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('112', 'oyqTtwwEhBETKR7J6VQOjxvS1GNM', '', 'A贷款18658670700林珊', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOEYTUshficHE98ydLBoCFPr4sDNHDicBMCEwtNLM35Q4ohLRFibm2pjmFfYLJicbiarCZ1cCVOKAaGMVL/0', '2016-07-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('113', 'oyqTtwyeKwNSePKB9DZQJwehFWTY', '', '名堂', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HprCr6cOia3Kb5icaxR9fSX9aV3RT5B0DZk1a4V8AT4ERosmkiaqUddRWl61Lfib5atRtwdHtE0coK9FQdBYEl3acC/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('114', 'oyqTtw9kzffR9DVdS4gEKi8BRLDE', '', 'crazybunny', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOL89AMibvlxiaKmaFhJ2pLTRFb8Sia1hU0xzoicicHLiajWk7p9vNj8IaNBPt1Y4opaOxrYp8JTldVbFMn/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('115', 'oyqTtwzcmt8yvNWhlP5bcnjImTIY', '', '日落黄昏', null, 'http://wx.qlogo.cn/mmopen/e0ekhuCqbrIEmfBFjg3WOSquVaILOdEzn7pdkakB7qRbnKkjlribfjlQr62FJ9EEOfCNm5ubYvCvOEpPQqY4QURX9TOGbKRcW/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('116', 'oyqTtw08CHLtWYYBuzRnNp3-AX2U', '', '玩具熊', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLDly1yGx2ZlvkjfSHVbBDqYasW60n1hngypND7acOC4pcHLW9VE3hf7yEMBYKJ80ic1Bf4jFOvD94/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('117', 'oyqTtwwL-EG4jwTn3_xrvmS7-Lnk', '', 'Lost youth', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn5CwMsicEPDickbuI9a5Fdl5wtot55RXQqic8FwKVibmUFicUzb04wZiaZdjyY33icN4ZqwfYJHnfj1Po5N/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('118', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', '', '陈耀波', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6F3ahmFswkxrEY19oBpCBAGo9Z2CO14ADlMkxNAla0kUoT1eMyM6ibrzR2gfib08FJnIRVS878qtib2kFibeg2P2DR2/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('119', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', '', '无名人士', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6E9dlOV2D6hGAMeJoDMKibkeJV4k1ichRwDwBEJAOBa1arlic70OnutH0BktnUMGvPLXnQP6vshWx5jvuQy38hzo2t/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('120', 'oyqTtwz9hyWd87BYMxvfO1qHmQOk', '', '殷年平', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlAaqoHByHPN7wQxRf2nVvUfKRy4UmEvOHMMeZokFZ8kKn4niarSMqibeUj5DWAot6AplFHsdmlv7V/0', '2016-07-17', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('121', 'oyqTtw5vZzTW34diCGh8EvF-lBgM', '', 'Ziv', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QhGt6AvQkDoUY9CmbgeR83wwK2naOwJYJpKNWV0mrWx1eROsdJxG8etoCwQ5Qr586VleOGUCHcVv/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('122', 'oyqTtw3ezjRdPyFf0mcyZuyzBW7o', '', '随缘', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxn46btUxVZfdyMkYlsVLbhBtqEMRcQtd2PIx5yguVqicsyqzCUooUsdLt3ibZgbtSCA2haYyXsK8G2/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('123', 'oyqTtw_cifF2zCA5nnEbqaIMw08I', '', '阿陶', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxnSA2icUqic7cme3OKUk6sgNBOiaRpSeYb9t9fd9qI2ib6DvTuQJG8K5unibYcSgibVUaB4ymcS8JwqLic4/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('124', 'oyqTtw5rumZrQRMlVjTvBeypYR7s', '', '爱重来', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxtzicOkJ2xu7R2SibR3fSBkRFHcbfP744k98uzgWBiam4A3Yt4ILFZOYtLqEwLg70eJDldibXeKTTrDP/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('125', 'oyqTtw2BEIQMgzza2e4tinoDq6Yg', '', '豆豆的老爸爸', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNrkyghc9x7zbYZ6w88YOwELGD7kQY4rFAz7Id9oob1hMXPRiaBxqBz2uXEYqm107tQyT6pIqXPVj/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('126', 'oyqTtw_NCZpC9UHIwF7vPOUqAMIs', '', '程巍', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxn5nc8OzgFHengueRSDXJYRzelbcOBuVUmf0vrdrEU6qDVhXFWzymiaJQcmEmHNHTmvLznyEdsFy8/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('127', 'oyqTtw3qFRmliBkvEyV_hnYUFsv8', '', 'king', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QrMWtToXZ8hibMwBibfic8o0NxjJ9o2G4jt0AviaTySnfUCRBQjV5HXicHOGUMWWzGuibArPUoSNdla3NC/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('128', 'oyqTtw_h8d1olzyKFTHWwnhNg50s', '', '瑶瑶', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6G5JkVW1kD2kCuZnXxScgE2GY7TVxZeXMz6icOwAIcwOLhqjichiaP3ibBgP4olRV9B3kKjACWsIBeKTME4ibxTpicIDM/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('129', 'oyqTtwz06Kgz-giiMdPPwiQw6aMw', '', '杨放', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLADHhhnv5W5ic95iaj8l8bAmppVpPEjK61AwCmVq3e5olicI5qic4Q9O26CEQZzkO6uYMbhkEDG1jPvD/0', '2016-07-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('130', 'oyqTtw_MVjQ5TrfRm8YvIvsFmBCI', '', 'Krismile', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLCfCJbK8yZU7h7Ucb7vxzSwYEp4ibUpP9nLOKUNmpvX5DglEjDPO0GlbQEM76fxkF9ddUBw3icXyEC/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('131', 'oyqTtw1jIZLr6rAJvAFUWOOiVEqc', '', 'Allan欧阳俊Java工程师', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYzOUoqg7oVuWMe6SBy01nUJTplf2Ib5Fnt8jgy1WwqUhXNjMTXXcHYsribpMEZUmBVM8l3NJzPuxPM/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('132', 'oyqTtw09cLMjwLzQw-q-JatwnM3g', '', '李斌', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEK3kibZLkXqv4n83QzKS46rkeCibfLMnVd0IbZazgDCKqwFd9QaTMLmbnZfHT3DXUAtuvTBvmtiatAibw/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('133', 'oyqTtw96aT0ZpaxAqaT3Ue-VXZnA', '', 'Lucive', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDXKECUS5F3813AtPSLvichCIeg9PXwVcgU6UFRn1avJiak3OFcJSgdox46auxDLoorOciaTNYemxBjQ/0', '2016-07-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('134', 'oyqTtw2BabOclTZPhsF6wwM2iqP0', '', '子鱼', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAobcA8L65Yp85Uqkc8pUTYYMfcgbTMAicPBjcGSdDxd42icjibasSKy1EcknssicSa0uMicvZlOiaFqHwvs9pxdt1CHZne/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('135', 'oyqTtw_1vVdZQ7kCePJjHvbm_a-w', '', 'Leo', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoayaicHFEbFOTxyciciaicc3n89auDnQo60icwelBicE2IaJHOQDxiasOoEibJicpeKSicJicwzfHUicIZSWibLXHib5cJqb80CxK/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('136', 'oyqTtw6nHi7bW3tO7kwOIMnybWtI', '', '王晓鹏', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOJGzX8MQI22Micicic3tjh0veT3agBdiceoPViaTVgaeMILW5iaNy0JO2ib1fibOPezlibGHiagH8Muw5tdbia1/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('137', 'oyqTtw6OvHzxKSG4PHhp2LM7n1oM', '', '喵了个咪', null, 'http://wx.qlogo.cn/mmopen/jBkb3aQMVicWpiaPO5ZWMMhgofg7MbaKeLvSUukQjeCzWyZU8aDUgwCg4b199UdUmVtjBoic5mz2YWguiaM4JRw9x7CwEtF96abH/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('138', 'oyqTtw48qsyR0Yu3902uUhKw7A6k', '', '美好互联 Jsn 马骏驰 15712890889', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxp38heibqbAVepXhWw77rpzfkEw7Nlia7Bs788CDH2ic2kVFJCJhzXwelibG4oSVgoC4SSOOcOpJibicxw/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('139', 'oyqTtw8OW756Zmt86O2GF_khXKBQ', '', '鱼', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxuYE813saPC6jvckSf4qmeIia3ghhPNQhbUev7dicPYbhq8JllAoe0jTlAx0jBjgqbor3dvN3APgsq/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('140', 'oyqTtw5A8gyh5hWYWeBmGdKifNlE', '', 'Tong', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaDFTQsNtBOdXCOcmbZ02O5m4hdYSCkibw5s6D7NWzLHP7boaMiaXBd42zaL2k5cicScjZVVriabxLCuQHpKOBGbYJd/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('141', 'oyqTtw2AftPx-_FpLJaHjvaWQaWw', '', '汪成鹏', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBsic0SWNHQsvL8EVlicRKoq9fNznEMqrDictJNxBogEGGJHFHc287crcfoyU8wj55zKDSkJc5bVr3ZQ/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('142', 'oyqTtw8FM2RkGpPemGt5orP-ghC0', '', 'SoYoung', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJEO6sFpSyK9RicFn2ry2wTwlpjkeaA3KFE4VhbqZah2TCx6lziauWNkQkHKLGwX7v0OAygv2BN6Tug/0', '2016-07-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('143', 'oyqTtwztm5aidb3UH5dmo9IuEXhQ', '', '荷', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1c0fdicONCGR5SDPrqMLOia2ibicghhDp6FicZw762UkIvzlFNguJYAbtWm5v4GSHDblktLTXUWp5KyicOd/0', '2016-07-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('144', 'oyqTtw3jh4m3jNSXvy0Y_Nd_pmbU', '', '异℃客', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QhSa9Mp6dBsrUBMYp2C5RYhsVHzjj8y6vh48j7GhGw3iabarQvAgfwiaGJgIMAXdKS6icgLYPbSCrsR/0', '2016-07-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('145', 'oyqTtw7t9U3z54G09B0NyVAo_l9Y', '', '黑马', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIicRGXcS8uF94j1GibngdDwXcS8AiaMTk2jiaic6oKAzU2Aq0PtricbsNdziaHQOX0ic7DGM9BNQvoT5MrAQ/0', '2016-07-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('146', 'oyqTtw2H6UOtEaTxPzdUfIzNbIOI', '', 'Roc.Qian', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBQ2AeNALpaasGxeuKWaXhMeFMNVChE2SCnUSt5ZibEPMFW8uWicAyjCbEoDE56S0K8f1ic5K5NsborcadRgiaD6WR1B/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('147', 'oyqTtw_CuGpO4G333OzF5V7NxqiE', '', 'Ray Tsang', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HPNSGgh0KchPcYpZtLlw5QGf6L5msEhc9SyDCsrKORTU1mca3uVqic7Usoic3O14Obua5ENlMP4o5unu2W0FX5hZ/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('148', 'oyqTtw-RJ9WJIPm_H3xi2DRAEp5I', '', 'Mir°伟', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6E0HAicDIQ7C8L4dXvlm3VAcEx0UdTOMYkjqx02qdtHibYIEoEzMbib8KnWTl4k9qtspYev5dYN2IEMJCfys3Lrvvp/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('149', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '', 'Bridge', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI2oZMs2ibqVBtR2ia7iaXOp4aBP4O2YVE3q32KcDKnbFqT886whr5icdTZhXZXqpbx6L5edvCnSjWKUg/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('150', 'oyqTtw-nF4OTvmWLgPzPTbn9x5X0', '', '熊明威', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTrcibHXyJQ4adx1wQnJW0hZyjsUMkBichEAh96cGnSwSBzYRwLVwHReprEF8UwPCcdGh45rCLicI3Pg/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('151', 'oyqTtw2JvPHCFIKyvGEFVM371D70', '', '于伟-微点互动', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLIT13SZQiaktkmPwOicXt2uEoNQDW9Pjb5rLWhC3Pcu4vmRVthhLxw0boIl1sSdshGcReUCpic9SeCR/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('152', 'oyqTtw8dWPc3B-m1_HLgEK1Qg4Y8', '', '武敬宇', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMo2dfYBY8UO3sdiaPLv2EbFuribtBAPW1u3EjofibwunDqlQ9uo9xOOSNDUicBdGB8pzIquiaVrW7KoDA/0', '2016-08-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('153', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '', '快乐的一匹小野驴', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLLykLR5yXMqtB2w4bYeJf9xkhYbnhNaKVzMjIdelkmOuibwy8zp1L9WqMlssEeHtXjSb69DmR5WZn/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('154', 'oyqTtwyelf8vi3eGAC8sjJLCuBbY', '', '萌萌哒', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCSDJibecdsaxsPQsxxTPBoEeW9Iozia5EY4njWV7v9lJzT6hFW1icY85lHvFnZ2NZjMcljl5ypbGGkQ/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('155', 'oyqTtw5zbd0kCmX0FWZFUym5c1Ps', '', 'Wujy', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLCGiazlaS3aPxHBGfWd0SFOYspq59diceGxfVQ9iax15NRaTiagc4sjL1hgPyetr58RicgY0F4PlbFibGV/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('156', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '', 'Mac2013', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxgeibSvzGQ93eq9jnc5D53REsO9bTJ9Iq6DwDKM8cIsJ1CpbbeCsAFo6pWbFgNqv8nRmILtg0kvNj/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('157', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '', '丫丫_追逐', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSlH3bVMD9ZHCVwFWfwoNghhfbnA2VG4JNQkSF8wqvURbyQrFcYrV65RMWkJuR5eZjN6rP8KET6IaiaQcaeaMSFf/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('158', 'oyqTtw--3Bh4dAm_A5P0BoV5pBMo', '', '✨司马逍遥✨', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpn3f68m5Dia5N6hV8mz882WGyTvtVxFEiapmha7QOveqIP4Fg64BZEesI2DBFIQhBhVvDSP3Glml0/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('159', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '', '伍照生', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKOyM3jCGFBmtgxaO4VfjDicKiaicyRDpAegF9ficIK4n2F11jQVADuGnJ9M79ysEflLj5bbEM7VskOyN0tbRbh70ogO/0', '2016-08-31', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('160', 'oyqTtw7Yh_thZm7KFtjL_zw2iop4', '', '黑鱼', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7ozibdh5smbaWl5TvNaURQs6YgCFT20d4WvSNTHsw8icyPiabYv6S8WdVmG72ctxe3icwbpP1ZiaypFJ/0', '2016-09-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('161', 'oyqTtw1zA95rJxq9hprpM2Ch87mM', '', 'Zippy mouse', null, 'http://wx.qlogo.cn/mmopen/ricmICEkBzRwELYlxjC8icGbrx1UyTbd6CqVLdsXgib7CLeMcuuj6XZyTY1ibib4iaFG89aEnFCC2uP7J2chqvaR6lJNExRcuRFfHh/0', '2016-09-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('162', 'oyqTtwy3SqW5rUagoLqn-viacno8', '', 'scott', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLPVjlDRbXy0tw3fbE001D2y6DJdatRGOCvAxbcw2cpkpQq4tgWvBgxFYBm15Ftf8ia1xcaLicE6t3p/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('163', 'oyqTtw9ECLc9VMQD80KjR3zNuo84', '', '奇异果', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4SGZIqicZ8xrfME4yTiaBbIcZelLWMoGqtPFxFVicMoWEuund0u7kCDRCrgRMEwkHJSh8FEVgZttRoucQIZNuMC59GiaFNic4Q2j3M/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('164', 'oyqTtw67Y_g91SQby7DH3U2IqUTE', '', '哎呦，不错哦', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GrsDojdDUoKk2NR8icagicCkHvNuaYXmEy305aa0ugA95Zdiaicib8QkjEMC4kRG6q1icmRjkJP96X9xNNjuibl8S8Xf9/0', '2016-09-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('165', 'oyqTtw5IaGbQIumaF-GB4O4YlkI0', '', '呆毛', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEINbqq0iatyuLYRGrIvhBKl3CDmQApFRnT02cng8SBwblquxibapcc1DQupjwuloBGI8iahaP4iblFJ8w/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('166', 'oyqTtw3bV5mOoYWAwr1AYPf_w0DE', '', '劣徒 ゅ', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxpkSACicHkBM0ZbYiaiaQK0ichDmNsE7ibKCvBo1B5TrniaJXDXXy4icjjaZkMP1mpHDhh3LqlDrN1p6lHs/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('167', 'oyqTtw9cO0TFSppEweVBg9AllGvM', '', '夏姥姥', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxs29P1M9lURK0nBdGrN1DDgyk3DluwmQZSqHziawJDKR8rciaX2yxFm8ngtJA6rJNNCA4VQl64O7Al/0', '2016-09-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('168', 'oyqTtwxGjP5GfG6Ix4z7d1D0g930', '', '楊', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLNz7aPwpibghXNU3VfWSp0zcFwlFJPcS7hnO5icTKiccnBtHY4iblfTia8rHwD1zu7P7MHtUdgoJ0aXkw/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('169', 'oyqTtw_WCB0FzRmorLOo51JEMkCE', '', '坚持', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1cyoXW5G6w5Gk4iaIWgQiaLce0qBXDQTDOvuYfP1E9NliapTnwzF7Or96eVTCIGADPQJKYvibqoicjhnqw/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('170', 'oyqTtw8_T5EzXa_bV69DuPiLbrnk', '', '海英', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7M7Qbbx2WUiabOOJl4jlMYzVkrqUmSg9pegS49XbYibwfXoyopGibVJof29acaLAwpym9YRo1AAf41rBdFQC8TtD2WTCufUvBQvQ/0', '2016-09-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('171', 'oyqTtw3ZP4OofuFkM2pR_ltiNeNQ', '', '迟到的土豆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qm5J8zlznoRB5fZ5tmiamtWzz2AeouN21K6g3Fd1KJQQjR7RILYTterjoFiaSSErQ0Sbhhh86buRq3/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('172', 'oyqTtw-_gendm-RAW5u9bScr_DOY', '', 'Haber', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoaLXHUMYAHoH5zpr2cjjJib3RkgUuiajpoMiblCG6CCrSiaJ1rH3ibJufNs7w4N3FPNic2FKP5QexN1bL1aO4o8t9YXwU/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('173', 'oyqTtw85JJoOhM7nf7CTrKEH7sdU', '', 'yepan', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6GoHf3ELocnc2Inas5mWVmRxAc1WHpghHoc2ULqDPjbvWGDkd3eDibvI130Xqbzg7S81p0G8Ur8PjfnEXeb6IwC9/0', '2016-09-05', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('174', 'oyqTtwyPXTTrSvvjAp0dblnYicPA', '', '刘大明', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAeTNPABkWuZaHgWhic7GvPfPIicPjaUDQ968N5kQyJtqDpN75OgicD59bF42Zp9xOhdiajoT3EQAuq6g/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('175', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '', 'wade_川', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSq9cE2amXQ5hP8c3SQZzAqI0GFvibH8BAplXtr6aThd0N0ich63pyzwOVV0uzOQvcq3qfIP9AaHONA/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('176', 'oyqTtw3ebkkuo9scH3wgYBjFUNiU', '', '寻找一份平淡', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QmYqWwfDYjS0QsceB0ol01icn9QGTTOOPmawuRcEkwXOpc36SDAqHwjsIZSFNPzRQQe9S3Jjj7N0K/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('177', 'oyqTtw6gaA5Wuh9aNB5_emTm4W8k', '', '杨叫兽', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNvQza6dMckTXdx6B1aclYUicnCbumlFIpre96QdynMreqibTcgo7PQSj0oKMP9Ned1Qibo6kk9qsnp1NZQCCjmYVk/0', '2016-09-06', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('178', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '', '走路到纽约', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL7m5MCHztg47OWicMUvczjYTicn7e9v3TXZz5qQHZ0iaTefM9NJrnhsxvRiagNWb9wibKOkQFGDvQkMEg/0', '2016-09-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('179', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '', '冷雨叶。', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSJNLvGAbTnkdyfobPJIiadMFHGpUUHbVKUia5uia9rKX5QmUE7Ez3dmS9B8qfjXKxrQVdBbgIkyOWnnx59adJ2XA3/0', '2016-09-09', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('180', 'oyqTtw9abo9ZpQURbbh5-S8auD9I', '', '小青', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLIDXaVvd36bPh8Dic0rpFVcTMwCp5Y0U3cD9HvNr3h7goHMibcMaFrLSU59iaRynSoR1DI6xZGvHNgl/0', '2016-09-13', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('181', 'oyqTtwy8o-Xdflbv2N6Qg_iK2p0k', '', 'Since-A', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxv82sqdzSVgdY0xCza3As5S8wfiadviaykoaqH2ssGNiarYjGV142FlFvWXJtsQto8PoibxtSAsbQjJ8/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('182', 'oyqTtw5oANq7VTTVQ9Ex03JDYGME', '', 'Adrian', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4lx184PnNf6JtPbtseoFp7W1G452T6vGR8Rcp4S2WaJ6NLzuL6LZPWOewChDpSIbvoY6zXFs2pibibf0hd7y4gRu4dh0tE9fxNY/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('183', 'oyqTtw4orv5TBRsz1CCrrU18du5s', '', '龙星', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNqzO1ibUkiaeQmFw5SicFC4oHmG58PawknySbRsJrrm2EZxhpl6Uel7suJgEKYicK7vfd2UBY8fRYxyxAjgSgkmke7/0', '2016-09-14', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('184', 'oyqTtwwsCMLj1vRupg7-bZteqYYI', '', '硬汉', null, 'http://wx.qlogo.cn/mmopen/3jRiazY6XazKdjibR0KPh3K0pM5jgwibyjJ5MicSFjbqlhOudv693XQ4sBs3RuwawEIRmmLH6RLd0TtLm1AaRIKeKJQMAzglICn5/0', '2016-09-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('185', 'oyqTtwz6CKxywINf8fIHjdTkhfy8', '', '姜建林', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn3hicnHWDlLGLeo6zpicMp0gwicyUg4R8gPlM6qXm9mgGdfobcUOkLkQicezhfXdicibRzGgsmCQUwmRww/0', '2016-09-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('186', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXEYoia2kiaJMibfM5UibpXGw1Rgz9kraXzqNvw7aWFtIhpJCFYcuD5g5EBclAvCTl1icYw5B8eU0cCyzS/0', '2016-09-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('187', 'ou8VTwpbPyK8rYDrec8Xz024pXnc', '', 'Since-A', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvtUzSU2UPsib4pqJHNpBHbq8EeSsj9oK4sB6HuiagK9eV1UbGzdicDeU8o6Tk7d4HKFibKSNCqicD6guh/0', '2016-09-18', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('188', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', '', '✨司马逍遥✨', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvoBuMYMfGeFD7Y7c8R3gaSnxVKf8yPteiasUibhqbbOH4O7joAKAzPic1iaxw0TNqWymIyI97zvoUeHP/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('189', 'ou8VTwho5jucEwytPnP0MBr-xVHg', '', 'Adrian', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7TpGFjia3iapyythLVvica2OZoFQeqqD7hoic8CUtMr0L04HgySZFotFXia1bqMMH4pUrpq4AelVczyIqSUQicgeY5yEh3RRLTaiaWyQ/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('190', 'ou8VTwqa4RborKLR1cmsu0Q9QrL4', '', 'Krismile', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcVSw50HUyAyS0mr8zJs2OJauHrZMjibZ3RIonCunBWstkA8GK2k6VH2TapF2jS6hPNMtnGlLGv2Da/0', '2016-09-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('191', 'ou8VTwgfr0H4ReIvXZpgiBlhqGZM', '', '徐辉', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcRWAbI8LnW1ul8wtgh5GpFPrQqdxHRz3IIt7RBTw5gJE9H0NgwAOT0EyrUJ0MyUicRYmD2g7By0x8/0', '2016-09-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('192', 'ou8VTws6WD0XhKyFIrzurEOk_B08', '', '韦', null, 'http://wx.qlogo.cn/mmopen/6t0VDe9bl5decMZw1o4qXPgRdbBePmfgWmtRjkZhcsSvM8mlYv4ZFWlWuxuXZe0gCm5T7K8IDAOS1I6xpOFcCVoIhZHUTjZ0/0', '2016-09-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('193', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', '', '风云', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvhS22V6IsiajUZWF5VGXDSpNcymCibickgic6xuKJJ3iaLjEN9SrzTqP0XP3Qtz96CPVVyF3GMe0XNjvU/0', '2016-09-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('194', 'ou8VTwoICPQd9VSLj9FSkilLTFmY', '', '郑绍鹏', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcXhSIYe7W1dvzKv3sXomTEw0PXo4Aia80H8ibCrPnSxGhKo5CibqAakpoAicjF8H6ZovHg7ZZr0ZOic3R/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('195', 'ou8VTwvN4GzWWr79oZLvkD_YxsuU', '', '楊', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcU399tlA9X1q9licSQIrNWrtRibf3Qrpib9dEjsyICqmNax1RW8bBnRGl0EXvD7C70V7anzDXfLPFoI/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('196', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', '', '徐子旭', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCqeib3ia1HW3pTyRxmLcNeePgic7Cect2jeHiadTAibRYIIvmTJL9AoJEF87qYhGPNDaO3xiaibrKykb5FQ/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('197', 'ou8VTwqfBP8vjG9h55ihMQ01MRY4', '', '韩聪', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcYib2FcwdzJYhpicaUjY7kxTm8boJoDaTMTEG9fs39om9lhib17RwcQIiawNicicCz19B5rNgj0C3vP0zk/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('198', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', '', '伍照生', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA1FqMZFReSl6AzD0OicDDpmXs9lFdaRbCajsLy5Krx15lZCiajAInteFh85V1bf1aXVrCicR8b5JkNNo2fnxFIyc/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('199', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', '', 'Chen chang qing', null, 'http://wx.qlogo.cn/mmopen/qg6b6KFrM06w0ibaxoKabcDL5c4Cd0NFNncmFGpuiaZOAS1QcVjQRpgPlOiatlU3Sictu2BsScrjMoZWVEQf3YgGIHHeFI331UeQ/0', '2016-09-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('200', 'ou8VTwqbP6sY2C6blaA0Vg7BvXrQ', '', '波', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfl6HpHULs1SvoTsLSGJ6ianYyUibrhapLlZoYDemEE0MYIWqgtqPiaISwqYfsyEVgOLL6VQ0icT0a0tdDw3SluCrn72/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('201', 'ou8VTwmv8TsZQgPnDiaUFMJtCACE', '', 'Wujy', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcT2mabqxZg7e3mAzaezzrWkbo52IbV0nZUzBNNcNBNOdVv1iawaVcVkEgAqdAV3Kicy8VeXlRB2QZo/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('202', 'ou8VTwua1n88i0M-8HQD3I5CpRJc', '', '小奔', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1fA2JEOmZNUcUwqoMRvVDB8ggJCica2NqpyzVs4icsjHg4GPnBccjNvR7Qs6vONvEr22zialSAkR9vPmL6rNeIwGYp/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('203', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', '', '我喜欢两个啦啦', null, 'http://wx.qlogo.cn/mmopen/wnCxTeuKa1cI9jbBZrIiasCRWeh0BgXvMDRKVyUoavThJ3PY8e6Clp8ckiaOkmPQCjPsysFCBGz3UplVCQSOxDQPXCy2zq7iblx/0', '2016-09-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('204', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', '', 'alo', null, 'http://wx.qlogo.cn/mmopen/4GwEgiaOAwfk2NbCYwMOd2NOLuK6OZqusnaiasyVX5RCZiafueBztmNibk3AERsrzT9c9noWSI27A0BNh9Vbj7XDnTC8zppPrOsD/0', '2016-09-23', null, null, '1', null);
