/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : graduation_zdbgbhwk

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-07-16 09:50:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='超级管理员';

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for t_changdi
-- ----------------------------
DROP TABLE IF EXISTS `t_changdi`;
CREATE TABLE `t_changdi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '场地名称',
  `fzr` varchar(100) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='游泳馆场地';

-- ----------------------------
-- Records of t_changdi
-- ----------------------------
INSERT INTO `t_changdi` VALUES ('1', '秋名山', '小王');

-- ----------------------------
-- Table structure for t_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_contact`;
CREATE TABLE `t_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '用户',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `content` text COMMENT '内容',
  `insertDate` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='建议';

-- ----------------------------
-- Records of t_contact
-- ----------------------------
INSERT INTO `t_contact` VALUES ('1', '2', '1123', '123123123', '2019-03-04 14:25:15');
INSERT INTO `t_contact` VALUES ('2', '2', '149999999', 'sdfasdfasdfasdfasdf', '2019-03-04 14:25:15');
INSERT INTO `t_contact` VALUES ('3', '2', '123123', '2312312跌幅达士大夫撒', '2019-03-04 14:25:15');
INSERT INTO `t_contact` VALUES ('4', '8', '1381111111111111', '1三大法师的发', '2019-03-04 14:25:15');
INSERT INTO `t_contact` VALUES ('5', '1', '13811111111', '13811111111138111111111381111111113811111111', '2019-03-07 21:39:55');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `customerName` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'c1', '111', '黄晓明', '13811111111', '22', '男');
INSERT INTO `t_customer` VALUES ('2', 'c2', '111', '小方', '1381111111', '22', '男');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `employeeName` varchar(100) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='员工';

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'e1', '111', '小李', '13811111111', '22', '男');

-- ----------------------------
-- Table structure for t_feiyong
-- ----------------------------
DROP TABLE IF EXISTS `t_feiyong`;
CREATE TABLE `t_feiyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `fee` int(11) DEFAULT NULL COMMENT '金额',
  `types` varchar(100) DEFAULT NULL COMMENT '类型',
  `showDate` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='游泳馆费用';

-- ----------------------------
-- Records of t_feiyong
-- ----------------------------
INSERT INTO `t_feiyong` VALUES ('1', '消毒费', '222', '支出', '2019-02-20 00:00:00');
INSERT INTO `t_feiyong` VALUES ('2', '水费', '567', '支出', '2019-02-20 00:00:00');
INSERT INTO `t_feiyong` VALUES ('3', '门票', '6794', '收入', '2019-02-20 00:00:00');
INSERT INTO `t_feiyong` VALUES ('4', '门票', '100000', '收入', '2019-02-22 00:00:00');

-- ----------------------------
-- Table structure for t_gongzi
-- ----------------------------
DROP TABLE IF EXISTS `t_gongzi`;
CREATE TABLE `t_gongzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL COMMENT '员工',
  `yf` varchar(50) DEFAULT NULL COMMENT '月份',
  `fee1` int(11) DEFAULT NULL COMMENT '月工资',
  `fee2` int(11) DEFAULT NULL COMMENT '奖励金额',
  `fee3` int(11) DEFAULT NULL COMMENT '惩罚金额',
  `remark` text COMMENT '奖励惩罚说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='工资';

-- ----------------------------
-- Records of t_gongzi
-- ----------------------------
INSERT INTO `t_gongzi` VALUES ('1', '1', '2018-12', '1000', '1000', '0', '啊速度发多少');

-- ----------------------------
-- Table structure for t_huiyuan
-- ----------------------------
DROP TABLE IF EXISTS `t_huiyuan`;
CREATE TABLE `t_huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '用户',
  `num` varchar(100) DEFAULT NULL COMMENT '卡号',
  `fee` int(11) DEFAULT NULL COMMENT '金额',
  `status` varchar(100) DEFAULT NULL COMMENT '状态',
  `levels` varchar(100) DEFAULT NULL COMMENT '会员等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员卡';

-- ----------------------------
-- Records of t_huiyuan
-- ----------------------------
INSERT INTO `t_huiyuan` VALUES ('1', '1', '1550667546821', '333', '有效', '普通卡');
INSERT INTO `t_huiyuan` VALUES ('2', '1', '1550667584858', '555', '有效', '黄金卡');

-- ----------------------------
-- Table structure for t_huiyuanxf
-- ----------------------------
DROP TABLE IF EXISTS `t_huiyuanxf`;
CREATE TABLE `t_huiyuanxf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '用户',
  `num` varchar(100) DEFAULT NULL COMMENT '卡号',
  `fee` int(11) DEFAULT NULL COMMENT '金额',
  `remark` varchar(100) DEFAULT NULL COMMENT '消费明目',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员卡消费';

-- ----------------------------
-- Records of t_huiyuanxf
-- ----------------------------
INSERT INTO `t_huiyuanxf` VALUES ('1', '1', '1550667584858', '222', '吃喝');

-- ----------------------------
-- Table structure for t_huiyuanyw
-- ----------------------------
DROP TABLE IF EXISTS `t_huiyuanyw`;
CREATE TABLE `t_huiyuanyw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '用户',
  `num` varchar(100) DEFAULT NULL COMMENT '卡号',
  `fee` int(11) DEFAULT NULL COMMENT '金额',
  `types` varchar(100) DEFAULT NULL COMMENT '业务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员卡业务';

-- ----------------------------
-- Records of t_huiyuanyw
-- ----------------------------
INSERT INTO `t_huiyuanyw` VALUES ('1', '1', '1550667584858', '555', '会员充值');

-- ----------------------------
-- Table structure for t_lbt
-- ----------------------------
DROP TABLE IF EXISTS `t_lbt`;
CREATE TABLE `t_lbt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of t_lbt
-- ----------------------------
INSERT INTO `t_lbt` VALUES ('1', 'upload/20190307/155196518367185.png');
INSERT INTO `t_lbt` VALUES ('2', 'upload/20190307/155196517981692.png');
INSERT INTO `t_lbt` VALUES ('3', 'upload/20190307/155196517503766.png');

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '用户',
  `content` text COMMENT '内容',
  `insertDate` datetime DEFAULT NULL COMMENT '留言日期',
  `remark` text COMMENT '回复',
  `status` varchar(100) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言';

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1', '1', '你好', '2019-02-21 09:44:43', '你好', '已经回复');

-- ----------------------------
-- Table structure for t_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun`;
CREATE TABLE `t_pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wdxxId` int(11) DEFAULT NULL COMMENT '评论信息',
  `customerId` int(11) DEFAULT NULL COMMENT '评论人',
  `content` text COMMENT '评论内容',
  `insertDate` datetime DEFAULT NULL COMMENT '评论日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of t_pinglun
-- ----------------------------
INSERT INTO `t_pinglun` VALUES ('1', '1', '3', 'sadfasdfasdf', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('2', '1', '3', 'asdfasdf', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('3', '1', '3', 'afadsfadsf', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('4', '3', '3', '多少发到付', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('5', '3', '3', '第三发的说法', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('6', '3', '3', '阿打发打发', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('7', '5', '3', '撒打发第三方', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('10', '6', '3', '大沙发斯蒂芬', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('11', '8', '3', 'asdfasdf ', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('12', '5', '3', '阿斯顿发斯蒂芬', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('13', '9', '2', 'adfadsf', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('14', '11', '8', '撒打发斯蒂芬萨达', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('15', '11', '8', '阿斯顿发斯蒂芬', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('18', '15', '2', 'sdfasdfa', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('19', '15', '2', 'dfasfasdf', '2019-03-04 14:25:15');
INSERT INTO `t_pinglun` VALUES ('20', '14', '1', '新闻自诩新闻自诩新闻自诩新闻自诩', '2019-03-07 21:39:32');

-- ----------------------------
-- Table structure for t_pinglun_product
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun_product`;
CREATE TABLE `t_pinglun_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL COMMENT '评论信息',
  `customerId` int(11) DEFAULT NULL COMMENT '评论人',
  `content` text COMMENT '评论内容',
  `insertDate` datetime DEFAULT NULL COMMENT '评论日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pinglun_product
-- ----------------------------
INSERT INTO `t_pinglun_product` VALUES ('1', '15', '1', 'asdfasd', '2019-03-07 21:21:52');
INSERT INTO `t_pinglun_product` VALUES ('2', '15', '1', 'asdfasd', '2019-03-07 21:38:38');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `productPic1` varchar(100) DEFAULT NULL COMMENT '图片1',
  `productPic2` varchar(100) DEFAULT NULL COMMENT '图片2',
  `productPic3` varchar(100) DEFAULT NULL COMMENT '图片3',
  `productPic4` varchar(100) DEFAULT NULL COMMENT '图片4',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `oldPrice` int(11) DEFAULT NULL COMMENT '原价',
  `content` text COMMENT '内容',
  `nums` int(11) DEFAULT NULL COMMENT '数量',
  `tjxj` varchar(50) DEFAULT NULL COMMENT '推荐星级',
  `status` varchar(50) DEFAULT NULL COMMENT '状态',
  `typesId` int(11) DEFAULT NULL COMMENT '分类',
  `jf` int(11) DEFAULT NULL COMMENT '积分',
  `userId` int(11) DEFAULT NULL COMMENT '商家',
  `bqId` int(11) DEFAULT NULL COMMENT '标签',
  `djl` int(11) DEFAULT NULL COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='产品';

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('9', '仰泳比赛！！！1', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '122', '268', '第三方三法师第三方三法师第三方三法师第三方三法师第三方三法师第三方三法师第三方三法师', '2596', '四星', '上架', '1', '200', '2', null, '0');
INSERT INTO `t_product` VALUES ('10', '仰泳比赛！！！2', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', null, null, '仰泳比赛！！！2仰泳比赛！！！2仰泳比赛！！！2', null, null, '上架', null, null, '2', null, '0');
INSERT INTO `t_product` VALUES ('11', '仰泳比赛！！！3', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '24', '24', '是的发送到发生打分是的发送到发生打分是的发送到发生打分是的发送到发生打分是的发送到发生打分', '1888', '五星', '上架', '4', null, '2', null, '0');
INSERT INTO `t_product` VALUES ('12', '仰泳比赛！！！4', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '12', '12', '是的发送到发多少是的发送到发多少是的发送到发多少是的发送到发多少是的发送到发多少是的发送到发多少是的发送到发多少是的发送到发多少', '1005', '三星', '上架', '3', null, '2', null, '0');
INSERT INTO `t_product` VALUES ('13', '仰泳比赛！！！5', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '12', '16', '下单打发第三方下单打发第三方下单打发第三方下单打发第三方下单打发第三方下单打发第三方下单打发第三方下单打发第三方', '12', '一星', '上架', '2', null, '2', null, '0');
INSERT INTO `t_product` VALUES ('14', '仰泳比赛！！！6', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '121', '22', '的发送到发的说法', '3', '一星', '上架', '3', null, '6', null, '2');
INSERT INTO `t_product` VALUES ('15', '仰泳比赛！！！7', 'upload/20190307/155196454167845.jpg', 'upload/20190307/155196441317373.png', 'upload/20190307/155196453533734.jpg', 'upload/20190307/155196454167845.jpg', '222', '22', '22222222', '-1', '二星', '上架', '4', null, '7', null, '13');

-- ----------------------------
-- Table structure for t_wdxx
-- ----------------------------
DROP TABLE IF EXISTS `t_wdxx`;
CREATE TABLE `t_wdxx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL COMMENT '我',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` text COMMENT '内容',
  `zan` int(11) DEFAULT NULL COMMENT '赞',
  `insertDate` datetime DEFAULT NULL COMMENT '发布日期',
  `nologin` varchar(50) DEFAULT NULL COMMENT '游客是否可见',
  `bkId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='我的消息';

-- ----------------------------
-- Records of t_wdxx
-- ----------------------------
INSERT INTO `t_wdxx` VALUES ('3', '1', '第三发的说法111', 'upload/20170425/149310722744370.jpg', '大沙发斯蒂芬111', '3', '2019-03-04 14:25:15', '是', '3');
INSERT INTO `t_wdxx` VALUES ('4', '1', '是打发的说法都是', 'upload/20170425/149310722744370.jpg', '是的发送到发多少发', '1', '2019-03-04 14:25:15', '否', '2');
INSERT INTO `t_wdxx` VALUES ('6', '1', '丁义珍潜逃啦！！！', 'upload/20170425/149310722744370.jpg', '丁义珍潜逃啦！！！丁义珍潜逃啦！！！丁义珍潜逃啦！！！丁义珍潜逃啦！！！丁义珍潜逃啦！！！', '1', '2019-03-04 14:25:15', '是', '3');
INSERT INTO `t_wdxx` VALUES ('8', '1', '特朗普特朗普111特朗普啊啊', 'upload/20170425/149310722744370.jpg', '特朗普特朗普特朗普特朗普啊啊啊啊', '1', '2019-03-04 14:25:15', '否', '2');
INSERT INTO `t_wdxx` VALUES ('9', '1', 'asdfasdf', 'upload/20170425/149310815224571.jpg', 'asdfasdf', '1', '2019-03-04 14:25:15', '是', '4');
INSERT INTO `t_wdxx` VALUES ('13', '1', 'adsfasd ', 'upload/20190307/155196364497225.jpg', 'asdfasdf', '0', '2019-03-07 21:00:46', '是', '1');
INSERT INTO `t_wdxx` VALUES ('14', '1', '新闻自诩新闻自诩新闻自诩新闻自诩新闻自诩新闻自诩', 'upload/20190307/155196596073561.png', '新闻自诩新闻自诩新闻自诩新闻自诩', '1', '2019-03-07 21:39:23', '是', '1');

-- ----------------------------
-- Table structure for t_xiaoxi
-- ----------------------------
DROP TABLE IF EXISTS `t_xiaoxi`;
CREATE TABLE `t_xiaoxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` text COMMENT '内容',
  `showDate` datetime DEFAULT NULL COMMENT '显示日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='消息';

-- ----------------------------
-- Records of t_xiaoxi
-- ----------------------------
INSERT INTO `t_xiaoxi` VALUES ('1', '明天游泳馆放假', 'upload/20190221/155071341470768.jpg', '明天游泳馆放假明天游泳馆放假明天游泳馆放假明天游泳馆放假', '2019-02-20 00:00:00');

-- ----------------------------
-- Table structure for t_zx
-- ----------------------------
DROP TABLE IF EXISTS `t_zx`;
CREATE TABLE `t_zx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(100) DEFAULT NULL COMMENT '内容',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资讯';

-- ----------------------------
-- Records of t_zx
-- ----------------------------
INSERT INTO `t_zx` VALUES ('1', '游泳池游泳池游泳池游泳池', '游泳池游泳池游泳池游泳池游泳池', 'upload/20190225/155106872125362.png');
INSERT INTO `t_zx` VALUES ('2', '新闻自诩', '新闻自诩新闻自诩新闻自诩新闻自诩新闻自诩', 'upload/20190307/155196594302320.jpg');
