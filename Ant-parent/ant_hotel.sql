/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 39.106.229.34:3306
 Source Schema         : ant_hotel

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 19/04/2020 21:43:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'e10adc3949ba59abbe56e057f20f883e', 'devhui', 'https://tvax4.sinaimg.cn/large/006nIlf0ly1gam30t0eddj31o01o0h7q.jpg');

-- ----------------------------
-- Table structure for canteen_record
-- ----------------------------
DROP TABLE IF EXISTS `canteen_record`;
CREATE TABLE `canteen_record`  (
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户编号',
  `orderId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `food` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `totalPrice` float(5, 2) NULL DEFAULT NULL COMMENT '用餐总价',
  `coupon` float(5, 2) NULL DEFAULT NULL COMMENT '用餐券',
  `cost` float(5, 2) NULL DEFAULT NULL COMMENT '实付金额',
  `onTime` datetime(0) NULL DEFAULT NULL COMMENT '开始时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canteen_record
-- ----------------------------
INSERT INTO `canteen_record` VALUES ('eae6bf9a2e5798442cc575ccd0c584c7', '21584629977193', '老八', '老八秘制小汉堡 2腐乳 2臭豆腐 3烤鸭の尻 1', 20.00, 50.00, -30.00, '2020-03-30 13:09:50');
INSERT INTO `canteen_record` VALUES ('eae6bf9a2e5798442cc575ccd0c584c7', '21584629977194', 'son', '老八秘制小汉堡 2	腐乳 1	臭豆腐 3	烤鸭の尻 5	', 39.00, 0.00, 39.00, '2020-04-09 21:40:32');
INSERT INTO `canteen_record` VALUES ('eae6bf9a2e5798442cc575ccd0c584c7', '21584629977195', 'son', '老八秘制小汉堡 2	腐乳 1	臭豆腐 3	烤鸭の尻 5	', 39.00, 20.00, 19.00, '2020-04-17 17:55:22');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `couponId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `couponType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '餐券编号',
  `couponRate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '餐券数值',
  PRIMARY KEY (`couponId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES ('1', '代金券', '20');

-- ----------------------------
-- Table structure for fitness_record
-- ----------------------------
DROP TABLE IF EXISTS `fitness_record`;
CREATE TABLE `fitness_record`  (
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `fitness_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '健身方式',
  `onTime` datetime(0) NULL DEFAULT NULL COMMENT '开始时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fitness_record
-- ----------------------------
INSERT INTO `fitness_record` VALUES ('1', '大便', '吃饭', '2020-03-30 13:01:37');
INSERT INTO `fitness_record` VALUES ('2', '老八', '摔跤', '2020-03-30 13:01:53');
INSERT INTO `fitness_record` VALUES ('1', 'son', '摔跤', '2020-04-09 21:17:51');
INSERT INTO `fitness_record` VALUES ('1', 'son', '吃饭', '2020-04-17 17:23:12');

-- ----------------------------
-- Table structure for fitness_type
-- ----------------------------
DROP TABLE IF EXISTS `fitness_type`;
CREATE TABLE `fitness_type`  (
  `fitnessToolId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '器材名',
  PRIMARY KEY (`fitnessToolId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fitness_type
-- ----------------------------
INSERT INTO `fitness_type` VALUES ('1', '摔跤');
INSERT INTO `fitness_type` VALUES ('2', '跑步');
INSERT INTO `fitness_type` VALUES ('3', '吃饭');
INSERT INTO `fitness_type` VALUES ('4', '睡觉');

-- ----------------------------
-- Table structure for hotel_list
-- ----------------------------
DROP TABLE IF EXISTS `hotel_list`;
CREATE TABLE `hotel_list`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '酒店名字',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务',
  `baseCost` decimal(10, 2) NULL DEFAULT NULL COMMENT '基础消费',
  `score` float(2, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`hotelId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_list
-- ----------------------------
INSERT INTO `hotel_list` VALUES ('37030301', '蚂蚁酒店一号店', '张店区', '停车场/温泉', 188.00, 4.5);
INSERT INTO `hotel_list` VALUES ('37030302', '蚂蚁酒店理工大店', '张店区', '温泉/餐饮/健身', 88.00, 4.5);
INSERT INTO `hotel_list` VALUES ('37030303', '蚂蚁酒店11号店', '淄川区', '温泉/餐饮/健身', 222.00, 5.0);

-- ----------------------------
-- Table structure for hotel_room_info
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room_info`;
CREATE TABLE `hotel_room_info`  (
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '酒店Id',
  `roomType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `roomService` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房间服务',
  `roomCount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房间余量',
  `roomPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '房间价格 / 天',
  `hourPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '钟点房 / 小时',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hotelId`(`hotelId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_room_info
-- ----------------------------
INSERT INTO `hotel_room_info` VALUES ('370303011', '标准间', '空调/WIFI/有窗', '4', 188.80, 18.80, 1);
INSERT INTO `hotel_room_info` VALUES ('370303021', '大床房', '空调/WIFI/无窗', '4', 11.00, 11.00, 2);
INSERT INTO `hotel_room_info` VALUES ('370303012', '大床房', '空调/WIFI/无窗', '4', 188.80, 18.80, 6);
INSERT INTO `hotel_room_info` VALUES ('370303031', '标准间', '空调/WIFI/无窗', '4', 11.00, 11.00, 7);

-- ----------------------------
-- Table structure for in_out_record
-- ----------------------------
DROP TABLE IF EXISTS `in_out_record`;
CREATE TABLE `in_out_record`  (
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '房间编号',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '进屋时间',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '0离开 1 进入',
  INDEX `roomId`(`roomId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of in_out_record
-- ----------------------------
INSERT INTO `in_out_record` VALUES ('256c7b259166ff9c5ce7c3cdaa82708a', '噜噜噜', '111', '2020-04-09 21:17:12', 0);
INSERT INTO `in_out_record` VALUES ('256c7b259166ff9c5ce7c3cdaa82708a', '噜噜噜', '111', '2020-04-17 17:22:25', 1);

-- ----------------------------
-- Table structure for reserve_record
-- ----------------------------
DROP TABLE IF EXISTS `reserve_record`;
CREATE TABLE `reserve_record`  (
  `orderId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `hotelId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '酒店Id',
  `openId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `roomType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '房间类型',
  `reserveTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预定时间',
  `preFee` float(10, 1) NOT NULL COMMENT '定金',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '0 预定中 1 已住宿 2 已退房',
  `startTime` timestamp(0) NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` timestamp(0) NULL DEFAULT NULL COMMENT '退房时间\r\n',
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reserve_record
-- ----------------------------
INSERT INTO `reserve_record` VALUES ('41584629977193', '37030301', 'ogcu55T7etzKzhQ3yZFKz1TWuUpk', '王青海', '2134234', '标准间', '2020-03-19 00:00:00', 188.8, 1, '2020-03-19 02:00:00', '2020-03-20 04:03:03');
INSERT INTO `reserve_record` VALUES ('41584630147372', '37030301', 'ogcu55T7etzKzhQ3yZFKz1TWuUpk', '噜噜噜', '2134234', '标准间', '2020-03-19 15:02:27', 189.8, 1, '2020-03-19 20:00:00', '2020-03-20 00:00:00');
INSERT INTO `reserve_record` VALUES ('41584630222766', '37030301', 'ogcu55T7etzKzhQ3yZFKz1TWuUpk', '挥挥', '2134234', '标准间', '2020-03-19 23:03:43', 28.8, 0, '2020-03-19 10:00:00', '2020-03-20 00:00:00');

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info`  (
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `roomStatus` tinyint(1) NULL DEFAULT NULL COMMENT '房间状态 1 已住宿 -1未住宿 0 预定中',
  `roomType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `things` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roomId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES ('37030301101', 0, '标准防', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301102', 0, '标准防', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301103', -1, '大床房', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301104', -1, '大床房', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301202', 0, '大床房', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301203', 1, '大床房', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030301204', 0, '大床房', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030302102', 0, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030302103', -1, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030302104', -1, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030303101', -1, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030303102', -1, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030303103', -1, '标间', '饮料*4,毛巾*1,浴巾*1');
INSERT INTO `room_info` VALUES ('37030303104', -1, '标间', '饮料*4,毛巾*1,浴巾*1');

-- ----------------------------
-- Table structure for room_live_record
-- ----------------------------
DROP TABLE IF EXISTS `room_live_record`;
CREATE TABLE `room_live_record`  (
  `orderId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '姓名',
  `signTime` datetime(0) NULL DEFAULT NULL COMMENT '入住时间',
  `leaveTime` datetime(0) NULL DEFAULT NULL COMMENT '退房时间',
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '房间号',
  `cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费金额',
  `coupon` float(10, 2) NULL DEFAULT NULL COMMENT '满减券',
  INDEX `orderid`(`orderId`) USING BTREE,
  CONSTRAINT `orderid` FOREIGN KEY (`orderId`) REFERENCES `reserve_record` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_live_record
-- ----------------------------
INSERT INTO `room_live_record` VALUES ('41584629977193', 'eae6bf9a2e5798442cc575ccd0c584c7', '王青海', '2020-04-17 18:40:20', '2020-04-17 18:40:36', '37030301102', 188.80, 100.00);
INSERT INTO `room_live_record` VALUES ('41584629977193', '256c7b259166ff9c5ce7c3cdaa82708a', '噜噜噜', '2020-04-19 14:13:30', '2020-04-19 14:13:33', '37030301102', 188.80, 100.00);

-- ----------------------------
-- Table structure for user_face_info
-- ----------------------------
DROP TABLE IF EXISTS `user_face_info`;
CREATE TABLE `user_face_info`  (
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '分组id',
  `face_id` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '人脸唯一Id',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名字',
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `face_feature` blob NULL COMMENT '人脸特征',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `fpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '照片路径',
  INDEX `GROUP_ID`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_face_info
-- ----------------------------
INSERT INTO `user_face_info` VALUES ('57dd415aaed0c6637fc422ab0b497d19', 1, 'wt6t3igupp', '辉辉辉', '15277688888', 0x0080FA440000A041CFF1003DC606B2BD462F713D2B6ED3BDDFF5663B4520D83CF74AE8BDDC119CBDECA443BDB347FBBB5BDD96BDF04C383DF406DFBB4DA74F3DD0D4703D2DBD71BD8E10C03D27C8DA3DA44224BD0C3B1A3DE4B03F3D0B40F83C9712C93DC17612BEAC8A34BE3AD70DBEE2FD40BD5E9011BE65989E3DB9340DBD4F66B43DECE01EBC068174BCCD0EA63C673D4A3D67B321BD900BA53D9DA92CBDA693ECBC539E973C1E0B3DBD39B785BCA24602BE9C449F3C57DC6D3C65D5023E80424ABD5E96D9BA6FA67E3DB4B07EBDD1F2D23BCE09EB3C4B185DBEE94E84BDC6FC1C3D2F3EA4BDCB4505BC75D197BD230C83BD6D58B13A17F58F3D4B37043E84C1423D6633E23D2A829ABB2BF198BA8094B43B37801BBC31C1AEBDEDDB073DA106CA3D23B46DBDECD2A83CE79CEDBDBAC191BD01BC8EBD36B94D3CA9E08B3C09DBBBBBFFB56A3D2843063E8EAD0A3C0ACDE83CF5E4B8BCAF72773DBA26D23CD023A3BDA47B4A3D37B986BC9A3303BD9C5D8E3CD0129FBDB6723FBDC288B83D7CC0813C3543103D7B4510BDB25BE8BCFBFCFA3B3ACAEDBD71520D3DD187DBBC63D2823BEA84443CF5C60ABDD56D94BB3E6945BBD0F0963D0B8057BC7DEFD1BD1FAD013C6FB92D3DD0939E3D1B18A2BD66B9C7BD891D8B3D6F26D5BC662347BDF0E254BDBF18A93CDC8BBBBC6F66B33C89DA18BCA10BA93C1198A4BCFEAB8FBDA61F943C86D14ABB394EB43D8D3622BC2327593D50177C3D7CBF9FBD97183BBDFC5EC23D0E2944BC837C0F3E4AF9023D8671713CA116703C1D9004BD75CB9FBC2E54FABB191CE93C2F18053DE074BF3BF59CCFBC5192F6BC1A02CBBDE4A05C3D01D93CBDEDD809BD9048FE3D3F1C5E3D63DAFD3BE7621B3D3EE7B5BC59DF883D113620BDF1F6A6BD205DF63C4E7439BD4D9958BD7BD7D5BD2E1B49BD8F64F4BD702859BCE4660FBDFDE900BD1F2948BC127907BEE44C9F3DA450F63BB5D2153C0E2E51BD2EA6D2BDA4CD463C89A01CBDEF4FF2BA0177993DBBE38A3CB154EE3C39CEA5BCCDE5BE3BB393753DCB6B8A3D7AC434BE21C8963D8273B83D7E60613D631EA43DA490BF3C0BC82DBC3D1AFDBDBC1E7C3BB52F1D3EAEF728BDFCC78C3D9B69083DF32EF93D352A1A3B35BB053E1AB4A23B3D7782BD2167853D132D363D3574E1BC65FA50BC7BE1C03CE7B7D4BC62F40B3E3119883D6307DBBD9B5E843B09C293BDF18439BD8617333DB54D263D4C64A33D256F423C6F292D3DD4AC96BD6AA8BCBC10EBE23DC36B9D399ECEF6BCAB78343D46DDA43DCC02FD3DFC1184BDD7250CBD429B173D6981853DE69DA4BCCFEE91BB27B3F93C2607D13DF2219DBD13D18A3D205A94BDC50C603CDBF71F3D19C68B3D2466E43C7D74253E822BBC3CC349963D1668973D25BFD03C5BDDA53D30C635BDD53B9F3D07BCEE3D5D7502BA0D0AE53C83389BBC, '2020-04-19 19:12:46', '2020-04-19 19:12:46', NULL);
INSERT INTO `user_face_info` VALUES ('ogcu55T7etzKzhQ3yZFKz1TWuUpk', 1, 'ej8so0lmwl', '张国辉', NULL, 0x0080FA440000A041CFF1003DC606B2BD462F713D2B6ED3BDDFF5663B4520D83CF74AE8BDDC119CBDECA443BDB347FBBB5BDD96BDF04C383DF406DFBB4DA74F3DD0D4703D2DBD71BD8E10C03D27C8DA3DA44224BD0C3B1A3DE4B03F3D0B40F83C9712C93DC17612BEAC8A34BE3AD70DBEE2FD40BD5E9011BE65989E3DB9340DBD4F66B43DECE01EBC068174BCCD0EA63C673D4A3D67B321BD900BA53D9DA92CBDA693ECBC539E973C1E0B3DBD39B785BCA24602BE9C449F3C57DC6D3C65D5023E80424ABD5E96D9BA6FA67E3DB4B07EBDD1F2D23BCE09EB3C4B185DBEE94E84BDC6FC1C3D2F3EA4BDCB4505BC75D197BD230C83BD6D58B13A17F58F3D4B37043E84C1423D6633E23D2A829ABB2BF198BA8094B43B37801BBC31C1AEBDEDDB073DA106CA3D23B46DBDECD2A83CE79CEDBDBAC191BD01BC8EBD36B94D3CA9E08B3C09DBBBBBFFB56A3D2843063E8EAD0A3C0ACDE83CF5E4B8BCAF72773DBA26D23CD023A3BDA47B4A3D37B986BC9A3303BD9C5D8E3CD0129FBDB6723FBDC288B83D7CC0813C3543103D7B4510BDB25BE8BCFBFCFA3B3ACAEDBD71520D3DD187DBBC63D2823BEA84443CF5C60ABDD56D94BB3E6945BBD0F0963D0B8057BC7DEFD1BD1FAD013C6FB92D3DD0939E3D1B18A2BD66B9C7BD891D8B3D6F26D5BC662347BDF0E254BDBF18A93CDC8BBBBC6F66B33C89DA18BCA10BA93C1198A4BCFEAB8FBDA61F943C86D14ABB394EB43D8D3622BC2327593D50177C3D7CBF9FBD97183BBDFC5EC23D0E2944BC837C0F3E4AF9023D8671713CA116703C1D9004BD75CB9FBC2E54FABB191CE93C2F18053DE074BF3BF59CCFBC5192F6BC1A02CBBDE4A05C3D01D93CBDEDD809BD9048FE3D3F1C5E3D63DAFD3BE7621B3D3EE7B5BC59DF883D113620BDF1F6A6BD205DF63C4E7439BD4D9958BD7BD7D5BD2E1B49BD8F64F4BD702859BCE4660FBDFDE900BD1F2948BC127907BEE44C9F3DA450F63BB5D2153C0E2E51BD2EA6D2BDA4CD463C89A01CBDEF4FF2BA0177993DBBE38A3CB154EE3C39CEA5BCCDE5BE3BB393753DCB6B8A3D7AC434BE21C8963D8273B83D7E60613D631EA43DA490BF3C0BC82DBC3D1AFDBDBC1E7C3BB52F1D3EAEF728BDFCC78C3D9B69083DF32EF93D352A1A3B35BB053E1AB4A23B3D7782BD2167853D132D363D3574E1BC65FA50BC7BE1C03CE7B7D4BC62F40B3E3119883D6307DBBD9B5E843B09C293BDF18439BD8617333DB54D263D4C64A33D256F423C6F292D3DD4AC96BD6AA8BCBC10EBE23DC36B9D399ECEF6BCAB78343D46DDA43DCC02FD3DFC1184BDD7250CBD429B173D6981853DE69DA4BCCFEE91BB27B3F93C2607D13DF2219DBD13D18A3D205A94BDC50C603CDBF71F3D19C68B3D2466E43C7D74253E822BBC3CC349963D1668973D25BFD03C5BDDA53D30C635BDD53B9F3D07BCEE3D5D7502BA0D0AE53C83389BBC, '2020-03-12 14:12:29', '2020-04-19 13:04:53', NULL);
INSERT INTO `user_face_info` VALUES ('57dd415aaed0c6637fc422ab0b497d19', 1, 'cd6oozw5yr', '辉辉辉', '15277688888', 0x0080FA440000A041CFF1003DC606B2BD462F713D2B6ED3BDDFF5663B4520D83CF74AE8BDDC119CBDECA443BDB347FBBB5BDD96BDF04C383DF406DFBB4DA74F3DD0D4703D2DBD71BD8E10C03D27C8DA3DA44224BD0C3B1A3DE4B03F3D0B40F83C9712C93DC17612BEAC8A34BE3AD70DBEE2FD40BD5E9011BE65989E3DB9340DBD4F66B43DECE01EBC068174BCCD0EA63C673D4A3D67B321BD900BA53D9DA92CBDA693ECBC539E973C1E0B3DBD39B785BCA24602BE9C449F3C57DC6D3C65D5023E80424ABD5E96D9BA6FA67E3DB4B07EBDD1F2D23BCE09EB3C4B185DBEE94E84BDC6FC1C3D2F3EA4BDCB4505BC75D197BD230C83BD6D58B13A17F58F3D4B37043E84C1423D6633E23D2A829ABB2BF198BA8094B43B37801BBC31C1AEBDEDDB073DA106CA3D23B46DBDECD2A83CE79CEDBDBAC191BD01BC8EBD36B94D3CA9E08B3C09DBBBBBFFB56A3D2843063E8EAD0A3C0ACDE83CF5E4B8BCAF72773DBA26D23CD023A3BDA47B4A3D37B986BC9A3303BD9C5D8E3CD0129FBDB6723FBDC288B83D7CC0813C3543103D7B4510BDB25BE8BCFBFCFA3B3ACAEDBD71520D3DD187DBBC63D2823BEA84443CF5C60ABDD56D94BB3E6945BBD0F0963D0B8057BC7DEFD1BD1FAD013C6FB92D3DD0939E3D1B18A2BD66B9C7BD891D8B3D6F26D5BC662347BDF0E254BDBF18A93CDC8BBBBC6F66B33C89DA18BCA10BA93C1198A4BCFEAB8FBDA61F943C86D14ABB394EB43D8D3622BC2327593D50177C3D7CBF9FBD97183BBDFC5EC23D0E2944BC837C0F3E4AF9023D8671713CA116703C1D9004BD75CB9FBC2E54FABB191CE93C2F18053DE074BF3BF59CCFBC5192F6BC1A02CBBDE4A05C3D01D93CBDEDD809BD9048FE3D3F1C5E3D63DAFD3BE7621B3D3EE7B5BC59DF883D113620BDF1F6A6BD205DF63C4E7439BD4D9958BD7BD7D5BD2E1B49BD8F64F4BD702859BCE4660FBDFDE900BD1F2948BC127907BEE44C9F3DA450F63BB5D2153C0E2E51BD2EA6D2BDA4CD463C89A01CBDEF4FF2BA0177993DBBE38A3CB154EE3C39CEA5BCCDE5BE3BB393753DCB6B8A3D7AC434BE21C8963D8273B83D7E60613D631EA43DA490BF3C0BC82DBC3D1AFDBDBC1E7C3BB52F1D3EAEF728BDFCC78C3D9B69083DF32EF93D352A1A3B35BB053E1AB4A23B3D7782BD2167853D132D363D3574E1BC65FA50BC7BE1C03CE7B7D4BC62F40B3E3119883D6307DBBD9B5E843B09C293BDF18439BD8617333DB54D263D4C64A33D256F423C6F292D3DD4AC96BD6AA8BCBC10EBE23DC36B9D399ECEF6BCAB78343D46DDA43DCC02FD3DFC1184BDD7250CBD429B173D6981853DE69DA4BCCFEE91BB27B3F93C2607D13DF2219DBD13D18A3D205A94BDC50C603CDBF71F3D19C68B3D2466E43C7D74253E822BBC3CC349963D1668973D25BFD03C5BDDA53D30C635BDD53B9F3D07BCEE3D5D7502BA0D0AE53C83389BBC, '2020-04-19 19:15:43', '2020-04-19 19:15:43', NULL);

SET FOREIGN_KEY_CHECKS = 1;