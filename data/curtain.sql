/*
 Navicat Premium Data Transfer

 Source Server         : mysql8@localhost_3307@root
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3307
 Source Schema         : curtain

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 27/08/2022 12:27:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime(3) NOT NULL,
  `end_time` datetime(3) NOT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `remark` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `online` tinyint(3) UNSIGNED NULL DEFAULT 1,
  `entrance_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `internal_top_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (2, '夏日好礼送不停', '长夏村墟风日清', '2019-08-04 10:04:52.000', '2030-09-01 10:05:16.000', '2019-08-03 17:59:01.000', '2021-10-19 15:34:40.262', NULL, '限服装、鞋、文具等商品', 1, 'http://localhost:8092/assets/2021/10/05/2f8b603fe8fd47eb8f3d03d919c7ce1a.jpg', 'http://localhost:8092/assets/2021/10/05/2f8b603fe8fd47eb8f3d03d919c7ce1a.jpg', 'a-2');

-- ----------------------------
-- Table structure for activity_category
-- ----------------------------
DROP TABLE IF EXISTS `activity_category`;
CREATE TABLE `activity_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `activity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_category
-- ----------------------------
INSERT INTO `activity_category` VALUES (1, 2, 2);
INSERT INTO `activity_category` VALUES (2, 7, 2);
INSERT INTO `activity_category` VALUES (6, 4, 2);
INSERT INTO `activity_category` VALUES (7, 27, 2);
INSERT INTO `activity_category` VALUES (8, 32, 2);
INSERT INTO `activity_category` VALUES (9, 27, 1);
INSERT INTO `activity_category` VALUES (11, 1, 3);
INSERT INTO `activity_category` VALUES (12, 2, 3);
INSERT INTO `activity_category` VALUES (13, 1, 4);
INSERT INTO `activity_category` VALUES (14, 2, 4);
INSERT INTO `activity_category` VALUES (15, 3, 4);

-- ----------------------------
-- Table structure for activity_coupon
-- ----------------------------
DROP TABLE IF EXISTS `activity_coupon`;
CREATE TABLE `activity_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `activity_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_coupon
-- ----------------------------
INSERT INTO `activity_coupon` VALUES (1, 3, 2);
INSERT INTO `activity_coupon` VALUES (2, 4, 2);
INSERT INTO `activity_coupon` VALUES (3, 5, 2);
INSERT INTO `activity_coupon` VALUES (4, 7, 1);
INSERT INTO `activity_coupon` VALUES (6, 3, 3);
INSERT INTO `activity_coupon` VALUES (7, 4, 3);
INSERT INTO `activity_coupon` VALUES (8, 3, 4);
INSERT INTO `activity_coupon` VALUES (9, 4, 4);
INSERT INTO `activity_coupon` VALUES (10, 5, 4);

-- ----------------------------
-- Table structure for activity_spu
-- ----------------------------
DROP TABLE IF EXISTS `activity_spu`;
CREATE TABLE `activity_spu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) UNSIGNED NOT NULL,
  `spu_id` int(10) UNSIGNED NOT NULL,
  `participation` tinyint(3) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_spu
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部分banner可能有标题图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'b-1', '首页顶部主banner', '2019-07-28 04:47:15.000', '2021-10-19 15:34:40.374', NULL, '顶部banner', 'http://localhost:8092/assets/2021/10/05/8462322d31124b19a3a4a1d8ac9a18c0.jpg');
INSERT INTO `banner` VALUES (2, 'b-2', '热销商品banner', '2019-08-01 00:37:47.000', '2021-10-19 15:34:40.374', NULL, '热卖榜单', 'http://localhost:8092/assets/2021/10/07/e9da62c558a346f39b6be2b0ccde84a6.png');

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keyword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES (5, 'http://localhost:8092/assets/2021/10/06/af618785694f4e7fa38822485a30bacf.jpg', '34', 1, '2019-08-01 00:41:41.000', '2021-10-19 15:34:40.492', NULL, 2, 'left');
INSERT INTO `banner_item` VALUES (6, 'http://localhost:8092/assets/2021/10/05/7cd074b1b3e148f4b3955cea94f635e1.jpg', '31', 1, '2019-08-01 00:41:41.000', '2021-10-19 15:34:40.492', NULL, 2, 'right-top');
INSERT INTO `banner_item` VALUES (7, 'http://localhost:8092/assets/2021/10/06/109d0de4aef04abe9573469f305678ed.jpg', '32', 1, '2019-08-01 00:41:41.000', '2021-10-19 15:34:40.492', NULL, 2, 'right-bottom');
INSERT INTO `banner_item` VALUES (12, 'http://localhost:8092/assets/2021/10/07/9e48d383798d41f2929ac62bb285ab43.jpg', 't-2', 3, '2019-09-15 17:29:52.000', '2021-10-19 15:34:40.492', NULL, 1, NULL);
INSERT INTO `banner_item` VALUES (13, 'http://localhost:8092/assets/2021/10/07/19ba07770c3b468882680c9dbe316538.jpg', '29', 1, '2019-07-28 04:39:22.000', '2021-10-19 15:34:40.492', NULL, 1, NULL);
INSERT INTO `banner_item` VALUES (14, 'http://localhost:8092/assets/2021/10/13/eb2e715e80cd4db888e0b07b1e9dcf37.jpg', '31', 1, '2019-07-28 04:40:10.000', '2021-10-19 15:34:40.492', NULL, 1, NULL);

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'Ikea', NULL, '2019-07-15 12:42:43', '2019-07-15 12:54:11', NULL);
INSERT INTO `brand` VALUES (2, 'Theory', NULL, '2019-07-15 12:46:00', '2019-07-15 12:46:00', NULL);
INSERT INTO `brand` VALUES (3, 'Converse', NULL, '2019-07-15 12:47:00', '2019-07-15 12:47:00', NULL);
INSERT INTO `brand` VALUES (4, 'Hickies', NULL, '2019-07-15 12:48:13', '2019-07-15 12:48:13', NULL);
INSERT INTO `brand` VALUES (5, 'Bucketfeet', NULL, '2019-07-15 12:48:55', '2019-07-15 12:48:55', NULL);
INSERT INTO `brand` VALUES (6, 'ROUJE\nROUJE\n', NULL, '2019-07-15 12:53:21', '2019-07-15 12:53:21', NULL);
INSERT INTO `brand` VALUES (7, 'Claudie Pierlot', NULL, '2019-07-15 12:53:40', '2019-07-15 12:53:40', NULL);
INSERT INTO `brand` VALUES (8, 'Lemaire&UNIQLIO', NULL, '2019-07-15 12:53:51', '2019-07-15 12:54:02', NULL);
INSERT INTO `brand` VALUES (9, 'The Kooples', NULL, '2019-07-15 12:54:39', '2019-07-15 12:54:39', NULL);
INSERT INTO `brand` VALUES (10, 'Marc Jacobs', NULL, '2019-07-15 12:55:08', '2019-07-15 12:55:08', NULL);
INSERT INTO `brand` VALUES (11, 'Michael Kors', NULL, '2019-07-15 12:55:17', '2019-07-15 12:55:17', NULL);
INSERT INTO `brand` VALUES (12, 'Tory Burch', NULL, '2019-07-15 12:55:25', '2019-07-15 12:55:25', NULL);
INSERT INTO `brand` VALUES (13, 'Kate Spade', NULL, '2019-07-15 12:55:43', '2019-07-15 12:55:43', NULL);
INSERT INTO `brand` VALUES (14, 'Apple', NULL, '2019-07-17 07:59:59', '2019-07-17 07:59:59', NULL);
INSERT INTO `brand` VALUES (15, 'Staedtler', NULL, '2019-07-17 08:00:30', '2019-07-17 08:00:30', NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `is_root` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(10) UNSIGNED NULL DEFAULT NULL,
  `online` int(10) UNSIGNED NULL DEFAULT 1,
  `level` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '布窗帘', '布窗帘', '2019-07-15 08:51:19.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/a58e20cdb404454f90fa62a7eb8531cb.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (2, '百叶帘', '百叶帘', '2019-07-15 08:51:28.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/ce20086595ed4863ac839f1371c03129.jpg', 2, 1, NULL);
INSERT INTO `category` VALUES (3, '罗马帘', '罗马帘', '2019-07-15 08:51:35.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/af7776db4cca4f869ccdb29631f4d55e.jpg', 3, 1, NULL);
INSERT INTO `category` VALUES (4, '柔纱帘', '柔纱帘', '2019-07-15 08:51:42.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/47c9a673a2104f39ac40e27e2adace9c.jpg', 5, 1, NULL);
INSERT INTO `category` VALUES (5, '竹窗帘', '竹窗帘', '2019-07-15 08:51:49.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/9454098983f740a5a2f25d4489c1874d.jpg', 4, 1, NULL);
INSERT INTO `category` VALUES (6, '顶棚帘', '顶棚帘', '2019-07-15 14:20:05.000', '2021-10-19 15:34:40.599', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/6b4d2fc3f80f4f6aad2b9a8bfa318760.jpg', 6, 1, NULL);
INSERT INTO `category` VALUES (10, '遮光帘', '遮光帘', '2019-07-15 08:53:51.000', '2021-10-19 15:34:40.599', NULL, 0, 1, 'http://localhost:8092/assets/2021/10/13/44856ced77114516b89229cede80b938.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (12, '铝百叶', '铝百叶', '2019-07-15 08:55:11.000', '2021-10-19 15:34:40.599', NULL, 0, 2, 'http://localhost:8092/assets/2021/10/13/77ad34a22a414b11a88b74851e308acc.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (14, '高分子', '高分子', '2019-07-15 08:56:27.000', '2021-10-19 15:34:40.599', NULL, 0, 2, 'http://localhost:8092/assets/2021/10/13/52ac6b51fbff47cda62362035d273a38.jpg', 2, 1, NULL);
INSERT INTO `category` VALUES (17, '罗马扇形帘', '罗马扇形帘', '2019-07-15 08:58:12.000', '2021-10-19 15:34:40.599', NULL, 0, 3, 'http://localhost:8092/assets/2021/10/13/6c6d976a6bb645e88a7a8eed367727c9.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (32, '顶棚帘', '顶棚帘', '2019-07-30 01:29:19.000', '2021-10-19 15:34:40.599', NULL, 0, 6, 'http://localhost:8092/assets/2021/10/13/94ef4ad99c5743f1a3ff4e5202d1e30b.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (35, '柔纱帘', '柔纱帘', '2019-08-02 19:44:24.000', '2021-10-19 15:34:40.599', NULL, 0, 4, 'http://localhost:8092/assets/2021/10/13/5b544df449d64445a65881a9f57298d7.jpg', 6, 1, NULL);
INSERT INTO `category` VALUES (36, '竹帘', '竹帘', '2019-08-07 22:49:22.000', '2021-10-19 15:34:40.599', NULL, 0, 5, 'http://localhost:8092/assets/2021/10/13/f12dc9c9b7b04bb7bea2ee82d80493b7.jpg', 1, 1, NULL);
INSERT INTO `category` VALUES (41, '提花帘', '提花帘', '2021-10-04 17:58:16.929', '2021-10-19 15:34:40.599', NULL, 0, 1, 'http://localhost:8092/assets/2021/10/13/9e5891044b69449cb2f453cb4556341e.jpg', 2, 1, NULL);
INSERT INTO `category` VALUES (42, '绣花帘', '绣花帘', '2021-10-04 17:58:37.226', '2021-10-19 15:34:40.599', NULL, 0, 1, 'http://localhost:8092/assets/2021/10/13/999fd825554840e98499f006f198d20c.jpg', 3, 1, NULL);
INSERT INTO `category` VALUES (43, '绣花纱', '绣花纱', '2021-10-08 15:18:08.043', '2021-10-19 15:34:40.599', NULL, 0, 1, 'http://localhost:8092/assets/2021/10/13/d3e94a0b876d4c479fa958e4c2045db4.jpg', 4, 1, NULL);
INSERT INTO `category` VALUES (44, '测试商品', '测试', '2021-10-27 19:15:28.750', '2021-10-27 19:21:11.897', NULL, 1, NULL, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', 7, 1, NULL);
INSERT INTO `category` VALUES (45, '测试商品', '测试商品', '2021-10-27 19:16:03.743', '2021-10-27 19:21:04.231', NULL, 0, 44, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', 1, 1, NULL);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `full_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '满减门槛',
  `minus` decimal(10, 2) NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT NULL,
  `type` smallint(6) NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `activity_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `whole_store` tinyint(3) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (3, '无门槛减0.1券', '2019-08-05 06:11:42', '2031-08-05 06:11:48', NULL, NULL, 0.10, NULL, 3, '2019-08-03 08:22:06.000', '2019-08-26 14:50:55.000', NULL, 2, '全场无门槛立减', 1);
INSERT INTO `coupon` VALUES (4, '满500减100券', '2019-08-05 06:11:42', '2030-08-05 06:11:48', NULL, 500.00, 100.00, NULL, 1, '2019-08-03 08:19:34.000', '2021-10-02 18:06:52.270', NULL, 2, '全场无门槛立减', 0);
INSERT INTO `coupon` VALUES (7, '满1000减230券', '2019-08-05 06:10:48', '2030-03-05 06:11:17', NULL, 1000.00, 230.00, NULL, 1, '2019-08-03 08:18:36.000', '2021-10-02 18:07:12.249', NULL, 2, '限窗帘、壁纸等商品', 0);
INSERT INTO `coupon` VALUES (10, '满1000打8折', '2019-08-23 09:07:29', '2030-08-23 09:07:36', NULL, NULL, NULL, NULL, 2, '2019-08-23 09:07:57.000', '2019-08-23 09:07:57.000', NULL, NULL, NULL, NULL);
INSERT INTO `coupon` VALUES (11, '满100打9.9折', '2019-08-28 03:49:55', '2030-08-28 03:49:59', NULL, 100.00, NULL, 0.99, 2, '2019-08-28 03:49:11.000', '2019-09-05 19:14:56.000', NULL, 2, '全场通用券', 1);

-- ----------------------------
-- Table structure for coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE `coupon_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_category
-- ----------------------------
INSERT INTO `coupon_category` VALUES (1, 15, 4);
INSERT INTO `coupon_category` VALUES (2, 32, 4);
INSERT INTO `coupon_category` VALUES (6, 35, 4);
INSERT INTO `coupon_category` VALUES (7, 15, 7);
INSERT INTO `coupon_category` VALUES (8, 35, 7);
INSERT INTO `coupon_category` VALUES (9, 32, 7);

-- ----------------------------
-- Table structure for coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `coupon_template`;
CREATE TABLE `coupon_template`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `full_money` decimal(10, 2) NULL DEFAULT NULL,
  `minus` decimal(10, 2) NULL DEFAULT NULL,
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '国内多是打折，国外多是百分比 off',
  `type` smallint(6) NOT NULL COMMENT '1. 满减券 2.折扣券 3.无门槛券 4.满金额折扣券',
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_template
-- ----------------------------
INSERT INTO `coupon_template` VALUES (3, '满1000-230', NULL, 1000.00, 230.00, NULL, 1, '2019-08-03 08:18:36.000', '2019-08-03 08:20:18.000', NULL);
INSERT INTO `coupon_template` VALUES (4, '满500-100', NULL, 500.00, 100.00, NULL, 1, '2019-08-03 08:19:34.000', '2019-08-03 08:19:34.000', NULL);
INSERT INTO `coupon_template` VALUES (5, '满2000-500', NULL, 2000.00, 500.00, NULL, 1, '2019-08-03 08:20:03.000', '2019-08-03 08:20:23.000', NULL);
INSERT INTO `coupon_template` VALUES (6, '满5000-1500', NULL, 5000.00, 1500.00, NULL, 1, '2019-08-03 08:21:15.000', '2019-08-03 08:21:15.000', NULL);
INSERT INTO `coupon_template` VALUES (7, '无门槛-20', NULL, NULL, NULL, NULL, 3, '2019-08-03 08:22:06.000', '2019-08-03 08:22:06.000', NULL);
INSERT INTO `coupon_template` VALUES (8, '满减折扣', NULL, 800.00, NULL, 0.90, 4, '2019-08-03 08:23:54.000', '2019-08-03 08:25:02.000', NULL);
INSERT INTO `coupon_template` VALUES (9, '无门槛折扣', NULL, NULL, NULL, 0.95, 2, '2019-08-03 08:25:54.000', '2019-08-03 08:25:54.000', NULL);

-- ----------------------------
-- Table structure for coupon_type
-- ----------------------------
DROP TABLE IF EXISTS `coupon_type`;
CREATE TABLE `coupon_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_type
-- ----------------------------

-- ----------------------------
-- Table structure for grid_category
-- ----------------------------
DROP TABLE IF EXISTS `grid_category`;
CREATE TABLE `grid_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `root_category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grid_category
-- ----------------------------
INSERT INTO `grid_category` VALUES (1, '遮光帘', 'http://localhost:8092/assets/2021/10/13/fa578fa394a44525ad835dd9afa8579a.jpg', '遮光帘', '2019-08-02 19:42:57.000', '2021-10-19 15:34:40.721', NULL, 10, 1);
INSERT INTO `grid_category` VALUES (2, '提花帘', 'http://localhost:8092/assets/2021/10/13/dc1f8cfe082d469b88e817fa14f7aa19.jpg', '提花帘', '2019-08-02 19:42:11.000', '2021-10-19 15:34:40.721', NULL, 41, 1);
INSERT INTO `grid_category` VALUES (3, '绣花帘', 'http://localhost:8092/assets/2021/10/13/3338fa6a4b7d4e2b9119c1f97434ed9c.jpg', '绣花帘', '2019-08-02 19:41:55.000', '2021-10-19 15:34:40.721', NULL, 42, 1);
INSERT INTO `grid_category` VALUES (4, '柔纱帘', 'http://localhost:8092/assets/2021/10/13/5b544df449d64445a65881a9f57298d7.jpg', '柔纱帘', '2019-08-02 19:44:34.000', '2021-10-19 15:34:40.721', NULL, 35, 4);
INSERT INTO `grid_category` VALUES (5, '竹窗帘', 'http://localhost:8092/assets/2021/10/13/f12dc9c9b7b04bb7bea2ee82d80493b7.jpg', '竹窗帘', '2019-08-02 19:43:34.000', '2021-10-19 15:34:40.721', NULL, 36, 5);
INSERT INTO `grid_category` VALUES (6, '百叶帘', 'http://localhost:8092/assets/2021/10/13/52ac6b51fbff47cda62362035d273a38.jpg', '百叶帘', '2019-08-02 19:46:53.000', '2021-10-19 15:34:40.721', NULL, 12, 2);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT 'user表外键',
  `total_price` decimal(10, 2) NULL DEFAULT 0.00,
  `total_count` int(11) UNSIGNED NULL DEFAULT 0,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `expired_time` datetime(3) NULL DEFAULT NULL,
  `placed_time` datetime(3) NULL DEFAULT NULL,
  `snap_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `snap_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `snap_items` json NULL,
  `snap_address` json NULL,
  `prepay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `final_total_price` decimal(10, 2) NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (23, 'AA198412412457', 37, 0.10, 1, '2021-10-19 15:54:44.135', NULL, '2021-10-19 15:54:50.557', '2021-10-19 16:54:44.124', '2021-10-19 15:54:44.124', 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S904', '[{\"id\": 175, \"img\": \"http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg\", \"count\": 1, \"title\": \"S904\", \"spu_id\": 50, \"final_price\": 0.1, \"spec_values\": [\"S904\"], \"single_price\": 0.1}]', '{\"city\": \"昆明市\", \"county\": \"西山区\", \"detail\": \"棕树营街道翠峰里(昆明市西山区棕树营翠羽路翠峰巷)\", \"mobile\": \"19187198361\", \"province\": \"云南省\", \"user_name\": \"+8619187198361\", \"postal_code\": \"650100\", \"national_code\": \"530112\"}', 'wx19155445149680a1839480531f639a0000', 0.10, 2);
INSERT INTO `order` VALUES (24, 'AA203651051032', 42, 0.10, 1, '2021-10-20 19:30:36.518', NULL, '2021-10-20 19:30:44.389', '2021-10-20 20:30:36.510', '2021-10-20 19:30:36.510', 'http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg', '棕色', '[{\"id\": 170, \"img\": \"http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg\", \"count\": 1, \"title\": \"棕色\", \"spu_id\": 49, \"final_price\": 0.1, \"spec_values\": [\"棕色\"], \"single_price\": 0.1}]', '{\"city\": \"乌鲁木齐市\", \"county\": \"沙依巴克区\", \"detail\": \"立昂技术股份有限公司(燕山街518号)\", \"mobile\": \"18206709587\", \"province\": \"新疆维吾尔自治区\", \"user_name\": \"陈永松\", \"postal_code\": \"830002\", \"national_code\": \"650103\"}', 'wx201930375088933455aa0c285263bb0000', 0.10, 2);
INSERT INTO `order` VALUES (25, 'AA234614614689', 49, 0.10, 1, '2021-10-23 13:35:46.148', NULL, '2021-10-23 13:36:43.744', '2021-10-23 14:35:46.146', '2021-10-23 13:35:46.146', 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', '海军蓝-米白色', '[{\"id\": 147, \"img\": \"http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg\", \"count\": 1, \"title\": \"海军蓝-米白色\", \"spu_id\": 44, \"final_price\": 0.1, \"spec_values\": [\"海军蓝\", \"米白色\", \"宽/米\"], \"single_price\": 0.1}]', '{\"city\": \"昆明市\", \"county\": \"西山区\", \"detail\": \"春苑小区16幢\", \"mobile\": \"18787723061\", \"province\": \"云南省\", \"user_name\": \"张明健\", \"postal_code\": \"650100\", \"national_code\": \"530112\"}', 'wx231336389772349a9481e646da07660000', 0.10, 2);
INSERT INTO `order` VALUES (26, 'AA266556056052', 37, 0.10, 1, '2021-10-26 19:12:45.564', NULL, '2021-10-26 19:25:43.732', '2021-10-26 20:12:45.560', '2021-10-26 19:12:45.560', 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S903', '[{\"id\": 174, \"img\": \"http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg\", \"count\": 1, \"title\": \"S903\", \"spu_id\": 50, \"final_price\": 0.1, \"spec_values\": [\"S903\"], \"single_price\": 0.1}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', 'wx2619253181226272cbac0d1e17dcee0000', 0.10, 2);
INSERT INTO `order` VALUES (27, 'AA269517117188', 37, 0.10, 1, '2021-10-26 19:29:55.173', NULL, '2021-10-26 20:17:56.885', '2021-10-26 20:29:55.171', '2021-10-26 19:29:55.171', 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S903', '[{\"id\": 174, \"img\": \"http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg\", \"count\": 1, \"title\": \"S903\", \"spu_id\": 50, \"final_price\": 0.1, \"spec_values\": [\"S903\"], \"single_price\": 0.1}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', 'wx26201756826376578e2edf079b137d0000', 0.10, 1);
INSERT INTO `order` VALUES (28, 'AA261236436494', 37, 0.10, 1, '2021-10-26 23:38:32.365', NULL, '2021-10-26 23:38:42.333', '2021-10-27 00:38:32.364', '2021-10-26 23:38:32.364', 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S903', '[{\"id\": 174, \"img\": \"http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg\", \"count\": 1, \"title\": \"S903\", \"spu_id\": 50, \"final_price\": 0.1, \"spec_values\": [\"S903\"], \"single_price\": 0.1}]', '{\"city\": \"昆明市\", \"county\": \"西山区\", \"detail\": \"棕树营街道翠峰里(昆明市西山区棕树营翠羽路翠峰巷)\", \"mobile\": \"19187198361\", \"province\": \"云南省\", \"user_name\": \"+8619187198361\", \"postal_code\": \"650100\", \"national_code\": \"530112\"}', 'wx26233837056052ae5be02d0e0e4eb40000', 0.10, 2);
INSERT INTO `order` VALUES (29, 'AA279515515579', 54, 0.10, 1, '2021-10-27 11:08:15.158', NULL, '2021-10-27 11:08:15.540', '2021-10-27 12:08:15.155', '2021-10-27 11:08:15.155', 'http://localhost:8092/assets/2021/10/05/d29b45c6b5a84259b15628af299a85da.jpg', '简约浅灰湖水绿', '[{\"id\": 55, \"img\": \"http://localhost:8092/assets/2021/10/05/d29b45c6b5a84259b15628af299a85da.jpg\", \"count\": 1, \"title\": \"简约浅灰湖水绿\", \"spu_id\": 29, \"final_price\": 0.1, \"spec_values\": [\"F116-12\", \"F116-8\", \"216\", \"无\", \"宽/米\"], \"single_price\": 0.1}]', '{\"city\": \"香港特别行政区\", \"county\": \"东区\", \"detail\": \"太古太古城道18号 太古城中心\", \"mobile\": \"13258388199\", \"province\": \"香港特别行政区\", \"user_name\": \"佚名\", \"postal_code\": \"000000\", \"national_code\": \"810102\"}', 'wx2711081549378980ab1e674351db050000', 0.10, 1);
INSERT INTO `order` VALUES (30, 'AA270529829872', 37, 0.10, 1, '2021-10-27 19:21:45.299', NULL, '2021-10-27 19:21:45.666', '2021-10-27 20:21:45.298', '2021-10-27 19:21:45.298', 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', '测试数据', '[{\"id\": 177, \"img\": \"http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg\", \"count\": 1, \"title\": \"测试数据\", \"spu_id\": 52, \"final_price\": 0.1, \"spec_values\": [], \"single_price\": 0.1}]', '{\"city\": \"昆明市\", \"county\": \"西山区\", \"detail\": \"棕树营街道翠峰里(昆明市西山区棕树营翠羽路翠峰巷)\", \"mobile\": \"19187198361\", \"province\": \"云南省\", \"user_name\": \"+8619187198361\", \"postal_code\": \"650100\", \"national_code\": \"530112\"}', 'wx27192145617360ea1501dd7c2fa2ed0000', 0.10, 1);
INSERT INTO `order` VALUES (31, 'AA274664864813', 54, 140.00, 1, '2021-10-27 22:09:06.649', NULL, '2021-10-27 22:09:07.099', '2021-10-27 23:09:06.648', '2021-10-27 22:09:06.648', 'http://localhost:8092/assets/2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg', '61005-61004', '[{\"id\": 134, \"img\": \"http://localhost:8092/assets/2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg\", \"count\": 1, \"title\": \"61005-61004\", \"spu_id\": 41, \"final_price\": 140, \"spec_values\": [\"61005\", \"61004\", \"宽/米\"], \"single_price\": 140}]', '{\"city\": \"香港特别行政区\", \"county\": \"东区\", \"detail\": \"太古太古城道18号 太古城中心\", \"mobile\": \"13258388199\", \"province\": \"香港特别行政区\", \"user_name\": \"佚名\", \"postal_code\": \"000000\", \"national_code\": \"810102\"}', 'wx27220907030397b8de6e0929947de00000', 138.60, 1);
INSERT INTO `order` VALUES (32, 'AA286664765353', 37, 120.00, 1, '2021-10-28 18:39:26.671', NULL, '2021-10-28 18:39:26.671', '2021-10-28 19:39:26.646', '2021-10-28 18:39:26.646', 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', 'A211-10 • A211-10', '[{\"id\": 138, \"img\": \"http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg\", \"count\": 1, \"title\": \"A211-10 • A211-10\", \"spu_id\": 42, \"final_price\": 120.0, \"spec_values\": [\"A211-10\", \"A211-10\", \"宽/米\"], \"single_price\": 120.0}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', NULL, 118.80, 1);
INSERT INTO `order` VALUES (33, 'B7203358759239', 58, 132.00, 1, '2022-07-20 15:52:13.620', NULL, '2022-07-20 15:52:13.620', '2022-07-20 16:52:13.587', '2022-07-20 15:52:13.587', 'http://localhost:8092/assets/2021/10/05/f386f08526a241568c3c0339bdbd565e.jpg', '4847-3 • 4847-2', '[{\"id\": 71, \"img\": \"http://localhost:8092/assets/2021/10/05/f386f08526a241568c3c0339bdbd565e.jpg\", \"count\": 1, \"title\": \"4847-3 • 4847-2\", \"spu_id\": 30, \"final_price\": 132.0, \"spec_values\": [\"4847-3\", \"4847-2\", \"宽/米\"], \"single_price\": 132.0}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', NULL, 132.00, 1);
INSERT INTO `order` VALUES (34, 'B7208070870888', 58, 132.00, 1, '2022-07-20 16:01:20.712', NULL, '2022-07-20 16:01:20.712', '2022-07-20 17:01:20.708', '2022-07-20 16:01:20.708', 'http://localhost:8092/assets/2021/10/05/075ab778168841d1af884fe23486ea4e.jpg', '4847-4 • 4847-9', '[{\"id\": 72, \"img\": \"http://localhost:8092/assets/2021/10/05/075ab778168841d1af884fe23486ea4e.jpg\", \"count\": 1, \"title\": \"4847-4 • 4847-9\", \"spu_id\": 30, \"final_price\": 132.0, \"spec_values\": [\"4847-4\", \"4847-9\", \"宽/米\"], \"single_price\": 132.0}]', '{\"city\": \"广州市\", \"county\": \"海珠区\", \"detail\": \"新港中路397号\", \"mobile\": \"020-81167888\", \"province\": \"广东省\", \"user_name\": \"张三\", \"postal_code\": \"510000\", \"national_code\": \"510000\"}', NULL, 132.00, 1);

-- ----------------------------
-- Table structure for sale_explain
-- ----------------------------
DROP TABLE IF EXISTS `sale_explain`;
CREATE TABLE `sale_explain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fixed` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `spu_id` int(11) NULL DEFAULT NULL,
  `index` int(10) UNSIGNED NULL DEFAULT NULL,
  `replace_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_explain
-- ----------------------------
INSERT INTO `sale_explain` VALUES (1, 1, '发货地：玉溪', NULL, 1, NULL, '2019-08-17 04:59:44.000', NULL, '2021-09-30 14:45:30.039');
INSERT INTO `sale_explain` VALUES (2, 1, '物流：顺丰', NULL, 2, NULL, '2019-08-17 04:59:44.000', NULL, '2019-08-17 05:00:27.000');
INSERT INTO `sale_explain` VALUES (3, 1, '发货时间：七个工作日', NULL, 3, NULL, '2019-08-17 04:59:44.000', NULL, '2019-08-17 05:00:29.000');
INSERT INTO `sale_explain` VALUES (4, 1, '售后：不支持7天无理由退货', NULL, 4, NULL, '2019-08-17 04:59:44.000', NULL, '2019-09-10 12:17:04.000');

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `discount_price` decimal(10, 2) UNSIGNED NULL DEFAULT NULL,
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `spu_id` int(10) UNSIGNED NOT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `specs` json NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku
-- ----------------------------
INSERT INTO `sku` VALUES (53, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/3c7f11b0e4684063ab9193520bdb19b5.jpg', '中国红 • 思思袅袅音，翩翩惊鸿舞 ', 29, '2021-10-04 19:05:06.527', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/372d9301e8b544f09c55fc1ee3588db4.jpg\", \"key\": \"主布\", \"value\": \"F116-14\", \"key_id\": 1, \"value_id\": 14}, {\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"配布\", \"value\": \"F116-8\", \"key_id\": 2, \"value_id\": 22}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png\", \"key\": \"纱\", \"value\": \"216\", \"key_id\": 3, \"value_id\": 29}, {\"img\": \"http://localhost:8092/assets/2021/10/06/69449d037ff84ded82eee1802d798f48.jpg\", \"key\": \"花布\", \"value\": \"叶子-红色\", \"key_id\": 4, \"value_id\": 37}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-14#2-22#3-29#4-37#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (54, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/c6f9fa669ac749498801477cfbff48f2.jpg', '清新灵动八音符', 29, '2021-10-04 19:24:08.860', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"主布\", \"value\": \"F116-8\", \"key_id\": 1, \"value_id\": 8}, {\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"配布\", \"value\": \"F116-8\", \"key_id\": 2, \"value_id\": 22}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": \"http://localhost:8092/assets/2021/10/06/41d1a914b25040c08c655cea4d4f9a7a.jpg\", \"key\": \"花布\", \"value\": \"八分音符-绿色\", \"key_id\": 4, \"value_id\": 32}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-8#2-22#3-30#4-32#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (55, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/d29b45c6b5a84259b15628af299a85da.jpg', '简约浅灰湖水绿', 29, '2021-10-04 19:50:10.636', '2021-10-27 11:08:15.159', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/2899b0d5154a4c66870629ddb89addce.jpg\", \"key\": \"主布\", \"value\": \"F116-12\", \"key_id\": 1, \"value_id\": 12}, {\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"配布\", \"value\": \"F116-8\", \"key_id\": 2, \"value_id\": 22}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png\", \"key\": \"纱\", \"value\": \"216\", \"key_id\": 3, \"value_id\": 29}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-12#2-22#3-29#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (56, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/7a527255fabe4936bb29fac3aa4fdabf.jpg', '爱马仕火热骑手橙', 29, '2021-10-04 19:56:31.574', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg\", \"key\": \"主布\", \"value\": \"F116-1\", \"key_id\": 1, \"value_id\": 1}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1a6789c4ea51447981cc705776f04679.jpg\", \"key\": \"配布\", \"value\": \"F116-11\", \"key_id\": 2, \"value_id\": 25}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-1#2-25#3-30#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (57, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/3a32708f7d2f47efa17f145438e4c1ee.jpg', '高雅中国红•魅影黑', 29, '2021-10-04 20:00:26.373', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/130c7d521f4e41e49497e6215078e544.jpg\", \"key\": \"主布\", \"value\": \"F116-4\", \"key_id\": 1, \"value_id\": 4}, {\"img\": \"http://localhost:8092/assets/2021/10/06/372d9301e8b544f09c55fc1ee3588db4.jpg\", \"key\": \"配布\", \"value\": \"F116-14\", \"key_id\": 2, \"value_id\": 28}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-4#2-28#3-30#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (58, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/ed23eeff78b448a983c7ecfef6dcd9b7.jpg', '蓝色系调交响曲', 29, '2021-10-04 20:03:13.064', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/750001a3eabf4bd28179cd45b23f563a.jpg\", \"key\": \"主布\", \"value\": \"F116-3\", \"key_id\": 1, \"value_id\": 3}, {\"img\": \"http://localhost:8092/assets/2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg\", \"key\": \"配布\", \"value\": \"F116-5\", \"key_id\": 2, \"value_id\": 19}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-3#2-19#3-31#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (59, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/4a4cec7c48ce44f1a094aecf5718d050.jpg', '水晶玫瑰色', 29, '2021-10-04 20:16:15.965', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/ada47169a9c94b54916d6eaf92600bf4.jpg\", \"key\": \"主布\", \"value\": \"F116-7\", \"key_id\": 1, \"value_id\": 7}, {\"img\": \"http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg\", \"key\": \"配布\", \"value\": \"F116-1\", \"key_id\": 2, \"value_id\": 15}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-7#2-15#3-31#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (60, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/9420859130e1494fbcad77e4788094d0.jpg', '高冷蓝 • 温暖黄', 29, '2021-10-04 20:19:19.575', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/dd186fe4181c492081c00354818ed693.jpg\", \"key\": \"主布\", \"value\": \"F116-6\", \"key_id\": 1, \"value_id\": 6}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1a6789c4ea51447981cc705776f04679.jpg\", \"key\": \"配布\", \"value\": \"F116-11\", \"key_id\": 2, \"value_id\": 25}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-6#2-25#3-30#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (61, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/9177c2976e6d4267809503cc55d75275.jpg', '星光梦境童话', 29, '2021-10-04 20:22:31.567', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"主布\", \"value\": \"F116-8\", \"key_id\": 1, \"value_id\": 8}, {\"img\": \"http://localhost:8092/assets/2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg\", \"key\": \"配布\", \"value\": \"F116-2\", \"key_id\": 2, \"value_id\": 16}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-8#2-16#3-31#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (62, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/c4e4223435e843f481f55a56a8a336c8.jpg', '高级灰 • 明丽黄', 29, '2021-10-04 20:25:33.358', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/e551c1644cbc4e80b7dfa5cab43b1c49.jpg\", \"key\": \"主布\", \"value\": \"F116-9\", \"key_id\": 1, \"value_id\": 9}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1a6789c4ea51447981cc705776f04679.jpg\", \"key\": \"配布\", \"value\": \"F116-11\", \"key_id\": 2, \"value_id\": 25}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png\", \"key\": \"纱\", \"value\": \"216\", \"key_id\": 3, \"value_id\": 29}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5361a474421e416aa655926d993c9158.jpg\", \"key\": \"花布\", \"value\": \"叶子-咖色\", \"key_id\": 4, \"value_id\": 36}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-9#2-25#3-29#4-36#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (63, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/88951dda4d8a40a0b95d67b5a64d486d.jpg', '晶莹贝壳蓝', 29, '2021-10-04 20:29:27.032', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/37687e7f716a4d5496afbcb14070f557.jpg\", \"key\": \"主布\", \"value\": \"F116-10\", \"key_id\": 1, \"value_id\": 10}, {\"img\": \"http://localhost:8092/assets/2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg\", \"key\": \"配布\", \"value\": \"F116-5\", \"key_id\": 2, \"value_id\": 19}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-10#2-19#3-30#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (64, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/97970f73f7db4ad882032a98da7fa477.jpg', '高级时尚灰', 29, '2021-10-04 20:31:52.415', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg\", \"key\": \"主布\", \"value\": \"F116-1\", \"key_id\": 1, \"value_id\": 1}, {\"img\": \"http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg\", \"key\": \"配布\", \"value\": \"F116-1\", \"key_id\": 2, \"value_id\": 15}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1f0ba3f3a53645188deabbf14b9095fc.jpg\", \"key\": \"花布\", \"value\": \"圆圆满满-桔色\", \"key_id\": 4, \"value_id\": 35}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-1#2-15#3-31#4-35#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (65, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/b65c953f5c8e4686af67f71f8a906f4c.jpg', '温润几何图', 29, '2021-10-04 20:33:55.757', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/0700fad9bdb6463c821c78b56e6b786d.jpg\", \"key\": \"主布\", \"value\": \"F116-13\", \"key_id\": 1, \"value_id\": 13}, {\"img\": \"http://localhost:8092/assets/2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg\", \"key\": \"配布\", \"value\": \"F116-5\", \"key_id\": 2, \"value_id\": 19}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": \"http://localhost:8092/assets/2021/10/06/c82fa09d418a4546a67af0ece216b668.jpg\", \"key\": \"花布\", \"value\": \"圆圆满满-黑白\", \"key_id\": 4, \"value_id\": 34}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-13#2-19#3-31#4-34#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (66, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/f5defc7424f2416294153b98bb6ed276.jpg', '明媚阳光黄', 29, '2021-10-04 20:36:22.639', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/e551c1644cbc4e80b7dfa5cab43b1c49.jpg\", \"key\": \"主布\", \"value\": \"F116-9\", \"key_id\": 1, \"value_id\": 9}, {\"img\": \"http://localhost:8092/assets/2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg\", \"key\": \"配布\", \"value\": \"F116-2\", \"key_id\": 2, \"value_id\": 16}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png\", \"key\": \"纱\", \"value\": \"216\", \"key_id\": 3, \"value_id\": 29}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-9#2-16#3-29#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (67, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/97fca490ef76495b85bb6dc422c1d070.jpg', '淡淡轻盈粉', 29, '2021-10-04 20:38:42.528', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/750001a3eabf4bd28179cd45b23f563a.jpg\", \"key\": \"主布\", \"value\": \"F116-3\", \"key_id\": 1, \"value_id\": 3}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ada47169a9c94b54916d6eaf92600bf4.jpg\", \"key\": \"配布\", \"value\": \"F116-7\", \"key_id\": 2, \"value_id\": 21}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-3#2-21#3-31#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (68, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/dff2e85ba71e46e5b35f88673bdcbbcb.jpg', '深邃高远天空蓝', 29, '2021-10-04 20:41:11.026', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/dd186fe4181c492081c00354818ed693.jpg\", \"key\": \"主布\", \"value\": \"F116-6\", \"key_id\": 1, \"value_id\": 6}, {\"img\": \"http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg\", \"key\": \"配布\", \"value\": \"F116-8\", \"key_id\": 2, \"value_id\": 22}, {\"img\": \"http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg\", \"key\": \"纱\", \"value\": \"218\", \"key_id\": 3, \"value_id\": 31}, {\"img\": null, \"key\": \"花布\", \"value\": \"无\", \"key_id\": 4, \"value_id\": 38}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-6#2-22#3-31#4-38#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (69, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/f422152401a240e79987d954204988ea.jpg', '时尚简约深色系', 29, '2021-10-04 20:43:42.551', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/130c7d521f4e41e49497e6215078e544.jpg\", \"key\": \"主布\", \"value\": \"F116-4\", \"key_id\": 1, \"value_id\": 4}, {\"img\": \"http://localhost:8092/assets/2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg\", \"key\": \"配布\", \"value\": \"F116-2\", \"key_id\": 2, \"value_id\": 16}, {\"img\": \"http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg\", \"key\": \"纱\", \"value\": \"217\", \"key_id\": 3, \"value_id\": 30}, {\"img\": \"http://localhost:8092/assets/2021/10/06/26ab231ac9f44fb2be0961db0ea3b3ad.jpg\", \"key\": \"花布\", \"value\": \"八分音符-灰色\", \"key_id\": 4, \"value_id\": 33}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '29$1-4#2-16#3-30#4-33#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (70, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/e613699ffddd4bc6b640a47b66146afd.jpg', '4847-5 • 4847-13', 30, '2021-10-05 12:44:15.883', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/c8d91e2d6cb745349e02d99b4c436da6.jpg\", \"key\": \"主布\", \"value\": \"4847-5\", \"key_id\": 1, \"value_id\": 44}, {\"img\": \"http://localhost:8092/assets/2021/10/06/0f14afea71bc4d67b2c2cd4fd1207b4c.jpg\", \"key\": \"配布\", \"value\": \"4847-13\", \"key_id\": 2, \"value_id\": 46}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-44#2-46#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (71, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/f386f08526a241568c3c0339bdbd565e.jpg', '4847-3 • 4847-2', 30, '2021-10-05 12:44:49.986', '2022-07-20 15:52:13.636', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/8f1eb461a72242f5b15286bfd1edd043.jpg\", \"key\": \"主布\", \"value\": \"4847-3\", \"key_id\": 1, \"value_id\": 48}, {\"img\": \"http://localhost:8092/assets/2021/10/06/c69e50c719bc4be7b5afd6223023c529.jpg\", \"key\": \"配布\", \"value\": \"4847-2\", \"key_id\": 2, \"value_id\": 51}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-48#2-51#6-198', 76, 10, 1);
INSERT INTO `sku` VALUES (72, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/075ab778168841d1af884fe23486ea4e.jpg', '4847-4 • 4847-9', 30, '2021-10-05 12:45:06.832', '2022-07-20 16:01:20.715', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/36072adad92443b0a3d3338f5a8ad183.jpg\", \"key\": \"主布\", \"value\": \"4847-4\", \"key_id\": 1, \"value_id\": 52}, {\"img\": \"http://localhost:8092/assets/2021/10/06/f13e9f1f18d44184b4e6cbcf2130720e.jpg\", \"key\": \"配布\", \"value\": \"4847-9\", \"key_id\": 2, \"value_id\": 55}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-52#2-55#6-198', 76, 10, 1);
INSERT INTO `sku` VALUES (73, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/a9614544fbbb4a8ca0139ff6da583966.jpg', '4847-8 • 4847-7', 30, '2021-10-05 12:45:26.697', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/3fecba2cf959401080d4fab6d7a231ad.jpg\", \"key\": \"主布\", \"value\": \"4847-8\", \"key_id\": 1, \"value_id\": 56}, {\"img\": \"http://localhost:8092/assets/2021/10/06/779aba1761cf491cb57fa73ca34fd7e5.jpg\", \"key\": \"配布\", \"value\": \"4847-7\", \"key_id\": 2, \"value_id\": 57}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-56#2-57#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (74, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/51d2e7a58cf04edfaf4b83ebd74f6ecd.jpg', '4847-15 • 4847-14', 30, '2021-10-05 12:45:42.841', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/2fd6a57249da4d79aa829d93f7028825.jpg\", \"key\": \"主布\", \"value\": \"4847-15\", \"key_id\": 1, \"value_id\": 58}, {\"img\": \"http://localhost:8092/assets/2021/10/06/6a4a6ab2f0db460ab64bf030f9287708.jpg\", \"key\": \"配布\", \"value\": \"4847-14\", \"key_id\": 2, \"value_id\": 59}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-58#2-59#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (75, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/287561f357a24bb097130760440643e6.jpg', '4847-16 • 4847-14', 30, '2021-10-05 12:45:59.684', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/25f6b38b5e7b4e3e804dd1bc3945bfc0.jpg\", \"key\": \"主布\", \"value\": \"4847-16\", \"key_id\": 1, \"value_id\": 60}, {\"img\": \"http://localhost:8092/assets/2021/10/06/6a4a6ab2f0db460ab64bf030f9287708.jpg\", \"key\": \"配布\", \"value\": \"4847-14\", \"key_id\": 2, \"value_id\": 59}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-60#2-59#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (76, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/c51d5384d6a24433ba4a484cd3b2326a.jpg', '4847-18 • 4847-14', 30, '2021-10-05 12:46:18.334', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/7b0b4ab5dd2c421c9e3e2da087d59796.jpg\", \"key\": \"主布\", \"value\": \"4847-18\", \"key_id\": 1, \"value_id\": 61}, {\"img\": \"http://localhost:8092/assets/2021/10/06/6a4a6ab2f0db460ab64bf030f9287708.jpg\", \"key\": \"配布\", \"value\": \"4847-14\", \"key_id\": 2, \"value_id\": 59}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-61#2-59#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (77, 132.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/e937ae16a6e042dd910bed7f89c799f6.jpg', '4847-20 • 4847-10', 30, '2021-10-05 12:46:41.849', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/961f6b7d42514608857e7e90817d0ba5.jpg\", \"key\": \"主布\", \"value\": \"4847-20\", \"key_id\": 1, \"value_id\": 62}, {\"img\": \"http://localhost:8092/assets/2021/10/06/9eb2d472b50d43208f5bfbd7851137fc.jpg\", \"key\": \"配布\", \"value\": \"4847-10\", \"key_id\": 2, \"value_id\": 63}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '30$1-62#2-63#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (78, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/7cd074b1b3e148f4b3955cea94f635e1.jpg', '优雅都市灰蓝色', 31, '2021-10-05 15:31:45.663', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/8f1cbb205d894c9cb805feb15e1627c2.jpg\", \"key\": \"主布\", \"value\": \"H-11\", \"key_id\": 1, \"value_id\": 64}, {\"img\": \"http://localhost:8092/assets/2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg\", \"key\": \"配布\", \"value\": \"H-8\", \"key_id\": 2, \"value_id\": 65}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-64#2-65#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (79, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/a7e9e8ac49c14bab97f912e49028ef32.jpg', '高级灰 • 素雅暖', 31, '2021-10-05 15:33:11.225', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/5f1c5401f710444c8593ffb26477f3f5.jpg\", \"key\": \"主布\", \"value\": \"H-5\", \"key_id\": 1, \"value_id\": 69}, {\"img\": \"http://localhost:8092/assets/2021/10/06/486bded72e0a4443a3afe7502b3a57ee.jpg\", \"key\": \"配布\", \"value\": \"H-1\", \"key_id\": 2, \"value_id\": 70}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-69#2-70#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (80, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/50d6281b05af472fb51503c223da2d90.jpg', '优雅浓郁深灰蓝', 31, '2021-10-05 15:35:04.947', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/309a94c285c94795960a21a1ad08c11b.jpg\", \"key\": \"主布\", \"value\": \"H-3\", \"key_id\": 1, \"value_id\": 71}, {\"img\": \"http://localhost:8092/assets/2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg\", \"key\": \"配布\", \"value\": \"H-8\", \"key_id\": 2, \"value_id\": 65}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-71#2-65#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (81, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/1f7ddf0d8aba46ce81b996507842b384.jpg', '亲和都市摩登居家风', 31, '2021-10-05 15:36:00.088', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/2d4cdf25822643a2835189fd86b82136.jpg\", \"key\": \"主布\", \"value\": \"H-7\", \"key_id\": 1, \"value_id\": 72}, {\"img\": \"http://localhost:8092/assets/2021/10/06/10e1e44980e84c8aa61befdf9050a7b4.jpg\", \"key\": \"配布\", \"value\": \"XLB-5\", \"key_id\": 2, \"value_id\": 73}, {\"img\": \"http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg\", \"key\": \"纱\", \"value\": \"S018\", \"key_id\": 3, \"value_id\": 66}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-72#2-73#3-66#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (82, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/363fe9a9fbd24873b69920e56cf06a4c.jpg', '清凉海水灰蓝色', 31, '2021-10-05 15:36:50.690', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/b26e864ccce2410397139e08752d118c.jpg\", \"key\": \"主布\", \"value\": \"H-4\", \"key_id\": 1, \"value_id\": 74}, {\"img\": \"http://localhost:8092/assets/2021/10/06/8f1cbb205d894c9cb805feb15e1627c2.jpg\", \"key\": \"配布\", \"value\": \"H-11\", \"key_id\": 2, \"value_id\": 75}, {\"img\": \"http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg\", \"key\": \"纱\", \"value\": \"S018\", \"key_id\": 3, \"value_id\": 66}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-74#2-75#3-66#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (83, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/89dff7334d4841eeab3cd72e617348b8.jpg', '沉静怡然温润棕', 31, '2021-10-05 15:37:55.793', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/1d4aa52184ba4f9bad6e049801204c91.jpg\", \"key\": \"主布\", \"value\": \"H-10\", \"key_id\": 1, \"value_id\": 76}, {\"img\": \"http://localhost:8092/assets/2021/10/06/486bded72e0a4443a3afe7502b3a57ee.jpg\", \"key\": \"配布\", \"value\": \"H-1\", \"key_id\": 2, \"value_id\": 70}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-76#2-70#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (84, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/afdb774d1dc2482d95f80cfc913a7bac.jpg', '甜美粉色系', 31, '2021-10-05 15:38:44.489', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/639dcc1aa9934a369bf10e0b8dc1b97e.jpg\", \"key\": \"主布\", \"value\": \"H-9\", \"key_id\": 1, \"value_id\": 77}, {\"img\": \"http://localhost:8092/assets/2021/10/05/8bbb57da08444b37ab21859be5e3eeea.jpg\", \"key\": \"配布\", \"value\": \"H-12\", \"key_id\": 2, \"value_id\": 78}, {\"img\": \"http://localhost:8092/assets/2021/10/06/57441ba08ec14be7b5eab3f6e66fffdc.jpg\", \"key\": \"纱\", \"value\": \"S013\", \"key_id\": 3, \"value_id\": 68}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-77#2-78#3-68#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (85, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/b6a0ab236e7d4676841bf0dee8154677.jpg', '摩洛哥的蓝', 31, '2021-10-05 15:39:22.745', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/2d4cdf25822643a2835189fd86b82136.jpg\", \"key\": \"主布\", \"value\": \"H-7\", \"key_id\": 1, \"value_id\": 79}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1d4aa52184ba4f9bad6e049801204c91.jpg\", \"key\": \"配布\", \"value\": \"H-10\", \"key_id\": 2, \"value_id\": 80}, {\"img\": \"http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg\", \"key\": \"纱\", \"value\": \"S018\", \"key_id\": 3, \"value_id\": 66}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-79#2-80#3-66#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (86, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/b2217575b3da47629fc93a7e68c5e36a.jpg', '鲨鱼灰 • 蜂密色', 31, '2021-10-05 15:40:20.258', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/5f1c5401f710444c8593ffb26477f3f5.jpg\", \"key\": \"主布\", \"value\": \"H-5\", \"key_id\": 1, \"value_id\": 81}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ee40a6b0cae2461abc6314bc6525e8ae.jpg\", \"key\": \"配布\", \"value\": \"H-6\", \"key_id\": 2, \"value_id\": 82}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-81#2-82#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (87, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/f7428efb4050489eb252c580161131fc.jpg', '浓郁轻盈深灰蓝', 31, '2021-10-05 15:41:53.973', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/a0040e0269a64e41a4cb251c119f7d84.jpg\", \"key\": \"主布\", \"value\": \"H-14\", \"key_id\": 1, \"value_id\": 83}, {\"img\": \"http://localhost:8092/assets/2021/10/06/b26e864ccce2410397139e08752d118c.jpg\", \"key\": \"配布\", \"value\": \"H-4\", \"key_id\": 2, \"value_id\": 84}, {\"img\": \"http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg\", \"key\": \"纱\", \"value\": \"S018\", \"key_id\": 3, \"value_id\": 66}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-83#2-84#3-66#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (88, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/4e87161b6d7b4f27b87c0c5192e9f8b9.jpg', '邂逅蓝与灰', 31, '2021-10-05 15:42:29.149', '2021-10-27 18:46:34.759', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg\", \"key\": \"主布\", \"value\": \"H-8\", \"key_id\": 1, \"value_id\": 85}, {\"img\": \"http://localhost:8092/assets/2021/10/05/8bbb57da08444b37ab21859be5e3eeea.jpg\", \"key\": \"配布\", \"value\": \"H-12\", \"key_id\": 2, \"value_id\": 78}, {\"img\": \"http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg\", \"key\": \"纱\", \"value\": \"S018\", \"key_id\": 3, \"value_id\": 66}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-85#2-78#3-66#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (89, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/05/b1cb3444376e473fa07de780a04bb29a.jpg', '爱马仕橙', 31, '2021-10-05 15:44:35.062', '2021-10-27 18:46:37.049', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/3f52b9c6211447458cdd5e7ed8566903.jpg\", \"key\": \"主布\", \"value\": \"H-2\", \"key_id\": 1, \"value_id\": 86}, {\"img\": \"http://localhost:8092/assets/2021/10/06/486bded72e0a4443a3afe7502b3a57ee.jpg\", \"key\": \"配布\", \"value\": \"H-1\", \"key_id\": 2, \"value_id\": 70}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg\", \"key\": \"纱\", \"value\": \"S015\", \"key_id\": 3, \"value_id\": 67}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '31$1-86#2-70#3-67#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (90, 135.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/109d0de4aef04abe9573469f305678ed.jpg', '迷幻、绚丽天空灰', 32, '2021-10-06 09:12:53.380', '2021-10-27 18:47:30.675', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/a6b7e360ca8a4a7390fd604d316e26bc.jpg\", \"key\": \"主布\", \"value\": \"天空灰\", \"key_id\": 1, \"value_id\": 87}, {\"img\": \"http://localhost:8092/assets/2021/10/06/8d0f6e0e9a9f4e89a8b68d77a1aa053f.jpg\", \"key\": \"配布\", \"value\": \"孔雀蓝\", \"key_id\": 2, \"value_id\": 88}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '32$1-87#2-88#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (91, 135.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/fa3f5ba943d0447d8e279eaeee067e8f.jpg', '优雅 • 质感复古蓝', 32, '2021-10-06 09:13:54.125', '2021-10-27 18:47:34.098', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/cc52c460314146bca6ad98f1dbb8e038.jpg\", \"key\": \"主布\", \"value\": \"复古蓝\", \"key_id\": 1, \"value_id\": 89}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ad4b1d230c104477a5acd0d1192d7889.jpg\", \"key\": \"配布\", \"value\": \"山川灰\", \"key_id\": 2, \"value_id\": 90}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '32$1-89#2-90#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (92, 135.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg', '简洁如一藏蓝色', 32, '2021-10-06 09:16:36.052', '2021-10-27 18:47:39.946', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/40614157a9dd4369a5de86e4cd05fc16.jpg\", \"key\": \"主布\", \"value\": \"藏蓝色\", \"key_id\": 1, \"value_id\": 91}, {\"img\": \"http://localhost:8092/assets/2021/10/06/ad4b1d230c104477a5acd0d1192d7889.jpg\", \"key\": \"配布\", \"value\": \"山川灰\", \"key_id\": 2, \"value_id\": 90}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '32$1-91#2-90#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (93, 135.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/47328de2e73640eaba0622df791d8c79.jpg', '悠长岁月格调灰', 32, '2021-10-06 09:17:55.730', '2021-10-27 18:47:50.327', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/40f0809ecbc74f60a22cd99eaee98139.jpg\", \"key\": \"主布\", \"value\": \"格调灰\", \"key_id\": 1, \"value_id\": 92}, {\"img\": \"http://localhost:8092/assets/2021/10/06/39bff577d1a349f78b760cd30e517e12.jpg\", \"key\": \"配布\", \"value\": \"热烈红\", \"key_id\": 2, \"value_id\": 93}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '32$1-92#2-93#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (94, 135.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/c3a9efbecbc545c8979b1b85fc921ff8.jpg', '湛蓝光影婴儿蓝', 32, '2021-10-06 09:18:32.617', '2021-10-27 18:47:51.932', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/a0e98804c6b5468bb90b382de5f062e9.jpg\", \"key\": \"主布\", \"value\": \"婴儿蓝\", \"key_id\": 1, \"value_id\": 94}, {\"img\": \"http://localhost:8092/assets/2021/10/06/976b0a5d0c394e609dc487f185b40553.jpg\", \"key\": \"配布\", \"value\": \"阳光黄\", \"key_id\": 2, \"value_id\": 95}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '32$1-94#2-95#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (95, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', '祖母绿 • 柠檬黄', 33, '2021-10-06 13:46:50.460', '2021-10-27 18:48:30.602', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/749edc9877a446048a14e47f04250c27.jpg\", \"key\": \"主布\", \"value\": \"祖母绿\", \"key_id\": 1, \"value_id\": 99}, {\"img\": \"http://localhost:8092/assets/2021/10/06/d1653dced44c4d53a1eb12b66e434d79.jpg\", \"key\": \"配布\", \"value\": \"柠檬黄\", \"key_id\": 2, \"value_id\": 100}, {\"img\": \"http://localhost:8092/assets/2021/10/06/9d75e88e27034a988792724e7adc3b34.jpg\", \"key\": \"纱\", \"value\": \"S502\", \"key_id\": 3, \"value_id\": 97}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '33$1-99#2-100#3-97#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (96, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/8c50e432fdd44c49b7a167d909311026.jpg', '深灰色 • 水晶灰', 33, '2021-10-06 13:47:26.824', '2021-10-27 18:48:32.242', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/004a0360241a4043b79aec06f61549c1.jpg\", \"key\": \"主布\", \"value\": \"深灰色\", \"key_id\": 1, \"value_id\": 101}, {\"img\": \"http://localhost:8092/assets/2021/10/06/f4d59eb950b24f3eb9f9ad3a51450b1c.jpg\", \"key\": \"配布\", \"value\": \"水晶灰\", \"key_id\": 2, \"value_id\": 102}, {\"img\": \"http://localhost:8092/assets/2021/10/06/1ea3807043e64201a74a69f42c6bfc97.jpg\", \"key\": \"纱\", \"value\": \"S501\", \"key_id\": 3, \"value_id\": 96}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '33$1-101#2-102#3-96#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (97, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/fc75e0f09fc14805abcd797cf6aeb3f1.jpg', '宝石蓝 • 柠檬黄', 33, '2021-10-06 13:47:50.098', '2021-10-27 18:48:33.695', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/097f7bdc29f640b7a51adffe47dc1643.jpg\", \"key\": \"主布\", \"value\": \"宝石蓝\", \"key_id\": 1, \"value_id\": 103}, {\"img\": \"http://localhost:8092/assets/2021/10/06/d1653dced44c4d53a1eb12b66e434d79.jpg\", \"key\": \"配布\", \"value\": \"柠檬黄\", \"key_id\": 2, \"value_id\": 100}, {\"img\": \"http://localhost:8092/assets/2021/10/06/9d75e88e27034a988792724e7adc3b34.jpg\", \"key\": \"纱\", \"value\": \"S502\", \"key_id\": 3, \"value_id\": 97}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '33$1-103#2-100#3-97#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (98, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/450a430074cc495986690c6ff9246d03.jpg', '少女粉 • 水晶灰', 33, '2021-10-06 13:48:18.871', '2021-10-27 18:48:34.969', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/073a1ff0da3c4dd58d86254903668450.jpg\", \"key\": \"主布\", \"value\": \"少女粉\", \"key_id\": 1, \"value_id\": 104}, {\"img\": \"http://localhost:8092/assets/2021/10/06/f4d59eb950b24f3eb9f9ad3a51450b1c.jpg\", \"key\": \"配布\", \"value\": \"水晶灰\", \"key_id\": 2, \"value_id\": 102}, {\"img\": \"http://localhost:8092/assets/2021/10/06/333046492d2c4015892e5d9e3ed29d48.jpg\", \"key\": \"纱\", \"value\": \"S503\", \"key_id\": 3, \"value_id\": 98}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '33$1-104#2-102#3-98#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (99, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/25c213be33884846958bac626634a883.jpg', '孔雀蓝 • 水晶灰', 33, '2021-10-06 13:48:46.897', '2021-10-27 18:48:36.636', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/8e1a2814b31840d9b8e48093eefa1aae.jpg\", \"key\": \"主布\", \"value\": \"孔雀蓝\", \"key_id\": 1, \"value_id\": 105}, {\"img\": \"http://localhost:8092/assets/2021/10/06/f4d59eb950b24f3eb9f9ad3a51450b1c.jpg\", \"key\": \"配布\", \"value\": \"水晶灰\", \"key_id\": 2, \"value_id\": 102}, {\"img\": \"http://localhost:8092/assets/2021/10/06/333046492d2c4015892e5d9e3ed29d48.jpg\", \"key\": \"纱\", \"value\": \"S503\", \"key_id\": 3, \"value_id\": 98}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '33$1-105#2-102#3-98#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (100, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/bffd1315845f4bf79fb498db080e62a9.jpg', '深蓝 - M1纱', 34, '2021-10-06 14:41:20.797', '2021-10-27 18:49:12.759', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/79851b53167b4340a0c1957442c4d751.jpg\", \"key\": \"纱\", \"value\": \"M-1\", \"key_id\": 3, \"value_id\": 106}, {\"img\": \"http://localhost:8092/assets/2021/10/06/161375298e2147669f1ac6d7b6a55620.jpg\", \"key\": \"颜色\", \"value\": \"深蓝色\", \"key_id\": 5, \"value_id\": 111}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '34$3-106#5-111#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (101, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/519f9fb8706b4901918d18f75859beac.jpg', '墨绿-M1纱', 34, '2021-10-06 14:41:46.828', '2021-10-27 18:49:15.351', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/79851b53167b4340a0c1957442c4d751.jpg\", \"key\": \"纱\", \"value\": \"M-1\", \"key_id\": 3, \"value_id\": 106}, {\"img\": \"http://localhost:8092/assets/2021/10/06/04f691ac8abc49569334656686abeeaa.jpg\", \"key\": \"颜色\", \"value\": \"墨绿色\", \"key_id\": 5, \"value_id\": 108}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '34$3-106#5-108#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (102, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', '浅灰-M2纱', 34, '2021-10-06 14:42:12.470', '2021-10-27 18:49:16.741', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/34c6598ea4034036869bad4486e69aec.jpg\", \"key\": \"纱\", \"value\": \"M-2\", \"key_id\": 3, \"value_id\": 107}, {\"img\": \"http://localhost:8092/assets/2021/10/06/18deb4866f5d4382abda84cbdb51ef76.jpg\", \"key\": \"颜色\", \"value\": \"浅灰色\", \"key_id\": 5, \"value_id\": 109}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '34$3-107#5-109#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (103, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/945a91ba507049e8bfa77060f6392c18.jpg', '深灰黄-M1纱', 34, '2021-10-06 14:42:39.240', '2021-10-27 18:49:20.057', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/79851b53167b4340a0c1957442c4d751.jpg\", \"key\": \"纱\", \"value\": \"M-1\", \"key_id\": 3, \"value_id\": 106}, {\"img\": \"http://localhost:8092/assets/2021/10/06/f1b71ac7678f4e2a8eb6775763602015.jpg\", \"key\": \"颜色\", \"value\": \"深灰色\", \"key_id\": 5, \"value_id\": 110}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '34$3-106#5-110#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (104, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/50155490a99e47ce965774236aeb8050.jpg', '深蓝/灰-M2纱', 34, '2021-10-06 14:44:03.654', '2021-10-27 18:49:21.739', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/34c6598ea4034036869bad4486e69aec.jpg\", \"key\": \"纱\", \"value\": \"M-2\", \"key_id\": 3, \"value_id\": 107}, {\"img\": \"http://localhost:8092/assets/2021/10/06/161375298e2147669f1ac6d7b6a55620.jpg\", \"key\": \"颜色\", \"value\": \"深蓝色\", \"key_id\": 5, \"value_id\": 111}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '34$3-107#5-111#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (105, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg', '棕蓝色 • 233', 35, '2021-10-06 16:54:16.628', '2021-10-27 18:50:01.875', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/257b08602d45403eb2ebd13ced664768.jpg\", \"key\": \"纱\", \"value\": \"233\", \"key_id\": 3, \"value_id\": 114}, {\"img\": \"http://localhost:8092/assets/2021/10/06/d4e42500c1744769a9c5e54f365e8a2f.jpg\", \"key\": \"颜色\", \"value\": \"棕蓝色\", \"key_id\": 5, \"value_id\": 112}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '35$3-114#5-112#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (106, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/06/c1d11ce2e2fa4426add1cc9a5dfb660d.jpg', '蔷薇粉 • 907', 35, '2021-10-06 16:55:07.086', '2021-10-27 18:50:03.439', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/4638f1c4ac1d4ab388ec4c7296f16cd6.jpg\", \"key\": \"纱\", \"value\": \"907\", \"key_id\": 3, \"value_id\": 115}, {\"img\": \"http://localhost:8092/assets/2021/10/06/284562840fce4f6aac4fd1bf9f34a66c.jpg\", \"key\": \"颜色\", \"value\": \"蔷薇粉\", \"key_id\": 5, \"value_id\": 113}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '35$3-115#5-113#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (107, 122.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg', '灰色系', 36, '2021-10-07 08:50:01.701', '2021-10-27 18:50:38.507', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/e8eea4d1219442c98f00c8af9b85ffbd.jpg\", \"key\": \"主布\", \"value\": \"M168-8\", \"key_id\": 1, \"value_id\": 116}, {\"img\": \"http://localhost:8092/assets/2021/10/07/0835de3e55c241ada1cc6bc446790025.jpg\", \"key\": \"配布\", \"value\": \"M168-13\", \"key_id\": 2, \"value_id\": 117}, {\"img\": \"http://localhost:8092/assets/2021/10/07/1283a229d7ef4683bef38c9bc67153ea.jpg\", \"key\": \"纱\", \"value\": \"M312-5\", \"key_id\": 3, \"value_id\": 118}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '36$1-116#2-117#3-118#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (108, 122.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/524d01ff539547e29cc47e1b604bfd0b.jpg', '祖母绿色系', 36, '2021-10-07 08:50:30.613', '2021-10-27 18:50:40.285', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/af4631775ace411c801272ef8e122e59.jpg\", \"key\": \"主布\", \"value\": \"M168-11\", \"key_id\": 1, \"value_id\": 119}, {\"img\": \"http://localhost:8092/assets/2021/10/07/0088873ec2c043759b9e85f3917d153e.jpg\", \"key\": \"配布\", \"value\": \"M168-14\", \"key_id\": 2, \"value_id\": 120}, {\"img\": \"http://localhost:8092/assets/2021/10/07/dd3cfa8a7b254d8191b1e90fc681ce66.jpg\", \"key\": \"纱\", \"value\": \"M312-6\", \"key_id\": 3, \"value_id\": 121}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '36$1-119#2-120#3-121#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (109, 122.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/8e10429bd7ae4a83951d3c41f298b224.jpg', '草青色系', 36, '2021-10-07 08:50:52.596', '2021-10-27 18:50:41.685', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/4888a427ce8b47d5baba9094ef394ef3.jpg\", \"key\": \"主布\", \"value\": \"M168-7\", \"key_id\": 1, \"value_id\": 122}, {\"img\": \"http://localhost:8092/assets/2021/10/07/41462283105549c5aee4784fb50f64a8.jpg\", \"key\": \"配布\", \"value\": \"M168-5\", \"key_id\": 2, \"value_id\": 123}, {\"img\": \"http://localhost:8092/assets/2021/10/07/152568adcc0548c5a9898d5915717e3a.jpg\", \"key\": \"纱\", \"value\": \"M312-1\", \"key_id\": 3, \"value_id\": 124}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '36$1-122#2-123#3-124#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (110, 122.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/75d4a0302c994e3d8f4d6688e553a030.jpg', '灰蓝色系', 36, '2021-10-07 08:51:17.896', '2021-10-27 18:50:42.996', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/c87a50dc3e07478d90114c1fe97498b3.jpg\", \"key\": \"主布\", \"value\": \"M168-3\", \"key_id\": 1, \"value_id\": 125}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4b47da87b1194479974356fa86756c42.jpg\", \"key\": \"配布\", \"value\": \"M168-9\", \"key_id\": 2, \"value_id\": 126}, {\"img\": \"http://localhost:8092/assets/2021/10/07/1283a229d7ef4683bef38c9bc67153ea.jpg\", \"key\": \"纱\", \"value\": \"M312-5\", \"key_id\": 3, \"value_id\": 118}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '36$1-125#2-126#3-118#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (111, 122.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/36f989e43d844390a10ca8bf2d74d690.jpg', '米黄色系', 36, '2021-10-07 08:51:39.539', '2021-10-27 18:50:44.390', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/41462283105549c5aee4784fb50f64a8.jpg\", \"key\": \"主布\", \"value\": \"M168-5\", \"key_id\": 1, \"value_id\": 127}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4b47da87b1194479974356fa86756c42.jpg\", \"key\": \"配布\", \"value\": \"M168-9\", \"key_id\": 2, \"value_id\": 126}, {\"img\": \"http://localhost:8092/assets/2021/10/07/dd3cfa8a7b254d8191b1e90fc681ce66.jpg\", \"key\": \"纱\", \"value\": \"M312-6\", \"key_id\": 3, \"value_id\": 121}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '36$1-127#2-126#3-121#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (112, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', '闲雅居士', 37, '2021-10-07 09:46:10.601', '2021-10-27 18:51:22.662', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg\", \"key\": \"主布\", \"value\": \"月光银\", \"key_id\": 1, \"value_id\": 128}, {\"img\": \"http://localhost:8092/assets/2021/10/07/d7d35919d4a34a6e8c4a7a34d5850e1e.jpg\", \"key\": \"配布\", \"value\": \"靓丽黄\", \"key_id\": 2, \"value_id\": 129}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '37$1-128#2-129#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (113, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/0009be5a603c4106af453ab16dbeb8a3.jpg', '山有木兮', 37, '2021-10-07 09:46:34.903', '2021-10-27 18:51:23.833', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/e73fa5423b29448aac69763fc2c3f255.jpg\", \"key\": \"主布\", \"value\": \"深湖蓝\", \"key_id\": 1, \"value_id\": 130}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg\", \"key\": \"配布\", \"value\": \"月光银\", \"key_id\": 2, \"value_id\": 131}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '37$1-130#2-131#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (114, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/3aee34a6d1394124ae3c9ee48b12b68f.jpg', '莫尔回忆', 37, '2021-10-07 09:46:59.242', '2021-10-27 18:51:25.135', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/78652fb68a9c4100a35f95a9ee7bdfda.jpg\", \"key\": \"主布\", \"value\": \"幻影灰\", \"key_id\": 1, \"value_id\": 132}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f3fe6ad6f92945ec8071e15d74318cf6.jpg\", \"key\": \"配布\", \"value\": \"珠光白\", \"key_id\": 2, \"value_id\": 133}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '37$1-132#2-133#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (115, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/06877d33424e46f986f1236aa0ad4f59.jpg', '冬日恋歌', 37, '2021-10-07 09:47:20.177', '2021-10-27 18:51:26.408', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/7f718b05180c404a87af81248d4fac42.jpg\", \"key\": \"主布\", \"value\": \"森林绿\", \"key_id\": 1, \"value_id\": 134}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg\", \"key\": \"配布\", \"value\": \"月光银\", \"key_id\": 2, \"value_id\": 131}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '37$1-134#2-131#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (116, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/087f99d2e10e4927b8d9d10acb7e457b.jpg', '希腊海岸', 37, '2021-10-07 09:47:37.286', '2021-10-27 18:51:27.858', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/0f649d9c748046f9907f97bcc0510890.jpg\", \"key\": \"主布\", \"value\": \"柔和蓝\", \"key_id\": 1, \"value_id\": 135}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg\", \"key\": \"配布\", \"value\": \"月光银\", \"key_id\": 2, \"value_id\": 131}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '37$1-135#2-131#6-198', 77, 41, 1);
INSERT INTO `sku` VALUES (117, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/cc25d5243d174f18ad659f184696689d.jpg', 'M5168-12 • M5168-8', 38, '2021-10-07 10:31:03.815', '2021-10-27 18:52:16.112', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/a75428ff7b3646a1ba0456cdde2a024c.jpg\", \"key\": \"主布\", \"value\": \"M5168-12\", \"key_id\": 1, \"value_id\": 136}, {\"img\": \"http://localhost:8092/assets/2021/10/07/abaccb80f93840c898275e53d40bfba2.jpg\", \"key\": \"配布\", \"value\": \"M5168-8\", \"key_id\": 2, \"value_id\": 137}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '38$1-136#2-137#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (118, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/7238a4e98f124a658cffb932b78e26de.jpg', 'M5168-20 • M5168-7', 38, '2021-10-07 10:31:49.070', '2021-10-27 18:52:17.282', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/2eae53c623af4c93b5623c40bc6c9a69.jpg\", \"key\": \"主布\", \"value\": \"M5168-20\", \"key_id\": 1, \"value_id\": 138}, {\"img\": \"http://localhost:8092/assets/2021/10/07/4b650da5c673426ab987cd91324acd58.jpg\", \"key\": \"配布\", \"value\": \"M5168-7\", \"key_id\": 2, \"value_id\": 139}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '38$1-138#2-139#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (119, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/3a8b1c2c3aba4617923a5029263245b0.jpg', 'M5168-2 • M5168-1', 38, '2021-10-07 10:32:08.811', '2021-10-27 18:52:18.407', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/d90d25b8203b4fdcbd05dd182a6ac61a.jpg\", \"key\": \"主布\", \"value\": \"M5168-2\", \"key_id\": 1, \"value_id\": 140}, {\"img\": \"http://localhost:8092/assets/2021/10/07/11c9a62cef6144839533b3c60a2ce285.jpg\", \"key\": \"配布\", \"value\": \"M5168-1\", \"key_id\": 2, \"value_id\": 141}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '38$1-140#2-141#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (120, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/7af16e93a7a1422193d60025a521faff.jpg', 'M5168-14 • M5168-8', 38, '2021-10-07 10:32:34.667', '2021-10-27 18:52:20.466', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/751d368724b248b99d5dc076c4c8f2e2.jpg\", \"key\": \"主布\", \"value\": \"M5168-14\", \"key_id\": 1, \"value_id\": 142}, {\"img\": \"http://localhost:8092/assets/2021/10/07/abaccb80f93840c898275e53d40bfba2.jpg\", \"key\": \"配布\", \"value\": \"M5168-8\", \"key_id\": 2, \"value_id\": 137}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '38$1-142#2-137#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (121, 130.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/2e537ee12a29498ab10fe7186480cdf3.jpg', 'M5168-12 • M5168-4', 38, '2021-10-07 10:32:57.858', '2021-10-27 18:52:23.847', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/a75428ff7b3646a1ba0456cdde2a024c.jpg\", \"key\": \"主布\", \"value\": \"M5168-12\", \"key_id\": 1, \"value_id\": 136}, {\"img\": \"http://localhost:8092/assets/2021/10/07/44005af2bc614edead94a2ba7f66cdd4.jpg\", \"key\": \"配布\", \"value\": \"M5168-4\", \"key_id\": 2, \"value_id\": 143}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '38$1-136#2-143#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (122, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg', 'L-1906 • L-1903', 39, '2021-10-07 12:15:44.339', '2021-10-27 18:52:59.879', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/a1d02ef16d3a47d5ae4def63bd09fcfa.jpg\", \"key\": \"主布\", \"value\": \"清泉绿\", \"key_id\": 1, \"value_id\": 144}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg\", \"key\": \"配布\", \"value\": \"砖红\", \"key_id\": 2, \"value_id\": 145}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '39$1-144#2-145#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (123, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/9045b8f3fdf749afb52d40bb9d545180.jpg', 'L-1912 • L-1903', 39, '2021-10-07 12:16:05.597', '2021-10-27 18:52:58.460', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/116fc732110a47e5bac2d0b30802af54.jpg\", \"key\": \"主布\", \"value\": \"青瓦灰\", \"key_id\": 1, \"value_id\": 146}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg\", \"key\": \"配布\", \"value\": \"砖红\", \"key_id\": 2, \"value_id\": 145}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '39$1-146#2-145#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (124, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/748f98892cad45a481447b198dcbed4a.jpg', 'L-1907 • L-1903', 39, '2021-10-07 12:16:29.595', '2021-10-27 18:52:55.756', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/d4ac7cf0df1b42a9a88f35b5a84e46ee.jpg\", \"key\": \"主布\", \"value\": \"太空灰\", \"key_id\": 1, \"value_id\": 147}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg\", \"key\": \"配布\", \"value\": \"砖红\", \"key_id\": 2, \"value_id\": 145}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '39$1-147#2-145#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (125, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/8fe5f891ee6848b0ab6ed3dac3f53379.jpg', 'L-1903 • L-1907', 39, '2021-10-07 12:16:53.433', '2021-10-27 18:52:54.399', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg\", \"key\": \"主布\", \"value\": \"砖红\", \"key_id\": 1, \"value_id\": 148}, {\"img\": \"http://localhost:8092/assets/2021/10/07/d4ac7cf0df1b42a9a88f35b5a84e46ee.jpg\", \"key\": \"配布\", \"value\": \"太空灰\", \"key_id\": 2, \"value_id\": 149}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '39$1-148#2-149#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (126, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/b1bad56612a749df8ef133fe9a8076de.jpg', 'L-1905 • L-1910', 39, '2021-10-07 12:17:28.049', '2021-10-27 18:52:52.918', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/708372fcfca942e18d6e5128eda094d1.jpg\", \"key\": \"主布\", \"value\": \"波西米亚蓝\", \"key_id\": 1, \"value_id\": 150}, {\"img\": \"http://localhost:8092/assets/2021/10/07/16831df96f604f4fa6d4586b819ce109.jpg\", \"key\": \"配布\", \"value\": \"摩登橙\", \"key_id\": 2, \"value_id\": 151}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '39$1-150#2-151#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (127, 125.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg', '宝石蓝 - 象牙白', 40, '2021-10-07 13:03:21.990', '2021-10-27 18:53:32.328', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/097f7bdc29f640b7a51adffe47dc1643.jpg\", \"key\": \"主布\", \"value\": \"宝石蓝\", \"key_id\": 1, \"value_id\": 103}, {\"img\": \"http://localhost:8092/assets/2021/10/07/dd639342da8142c0aa3850f872e3596c.jpg\", \"key\": \"配布\", \"value\": \"象牙白\", \"key_id\": 2, \"value_id\": 152}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '40$1-103#2-152#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (128, 125.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/f34619d6e01f46949ccab56e8414eb1a.jpg', '摩洛哥蓝 - 高级灰', 40, '2021-10-07 13:03:57.106', '2021-10-27 18:53:34.792', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/efe2798b34554d9a986df1ae9b511c75.jpg\", \"key\": \"主布\", \"value\": \"摩洛哥蓝\", \"key_id\": 1, \"value_id\": 153}, {\"img\": \"http://localhost:8092/assets/2021/10/07/e0898023114241068b2c61800cc32118.jpg\", \"key\": \"配布\", \"value\": \"高级灰\", \"key_id\": 2, \"value_id\": 154}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '40$1-153#2-154#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (129, 125.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/4ff37aaaf7ab4f12bb52953a63b6295a.jpg', '高级灰 - 奶油黄', 40, '2021-10-07 13:04:28.888', '2021-10-27 18:53:37.424', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/e0898023114241068b2c61800cc32118.jpg\", \"key\": \"主布\", \"value\": \"高级灰\", \"key_id\": 1, \"value_id\": 155}, {\"img\": \"http://localhost:8092/assets/2021/10/07/7a4a3bd04e35488c945acf4ee1995795.jpg\", \"key\": \"配布\", \"value\": \"奶油黄\", \"key_id\": 2, \"value_id\": 156}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '40$1-155#2-156#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (130, 125.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/091c657483b842f4bee2ff4366c60c07.jpg', '香芋紫 - 象牙白', 40, '2021-10-07 13:05:02.664', '2021-10-27 18:53:39.730', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/8d3adea623d5420083641d455fb7ac0b.jpg\", \"key\": \"主布\", \"value\": \"香芋紫\", \"key_id\": 1, \"value_id\": 157}, {\"img\": \"http://localhost:8092/assets/2021/10/07/dd639342da8142c0aa3850f872e3596c.jpg\", \"key\": \"配布\", \"value\": \"象牙白\", \"key_id\": 2, \"value_id\": 152}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '40$1-157#2-152#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (131, 125.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/33dd9a04cbee4cdaa85c9d5bbeddb899.jpg', '蒂芙尼灰 - 苔藓绿', 40, '2021-10-07 13:05:34.379', '2021-10-27 18:53:41.460', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/09bee7dbfd0e4404bc33135961bf9e7f.jpg\", \"key\": \"主布\", \"value\": \"蒂芙尼灰\", \"key_id\": 1, \"value_id\": 158}, {\"img\": \"http://localhost:8092/assets/2021/10/07/2984356b0e214a0690f9c6b2f312e131.jpg\", \"key\": \"配布\", \"value\": \"苔藓绿\", \"key_id\": 2, \"value_id\": 159}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '40$1-158#2-159#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (132, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg', '61007 - 61004', 41, '2021-10-07 13:49:04.915', '2021-10-27 18:54:15.511', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/beabb3610a5a43bfa969acb1e235bcc6.jpg\", \"key\": \"主布\", \"value\": \"61007\", \"key_id\": 1, \"value_id\": 160}, {\"img\": \"http://localhost:8092/assets/2021/10/07/5214e46aca8c43319fca7e9fea4bc0f7.jpg\", \"key\": \"配布\", \"value\": \"61004\", \"key_id\": 2, \"value_id\": 161}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '41$1-160#2-161#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (133, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/663f5504429345dbbf151b4e16b14ab7.jpg', '610016-61002', 41, '2021-10-07 13:53:00.708', '2021-10-27 18:54:16.679', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/5790ce02cfd74bc2bb86826831a14952.jpg\", \"key\": \"主布\", \"value\": \"610016\", \"key_id\": 1, \"value_id\": 162}, {\"img\": \"http://localhost:8092/assets/2021/10/07/0591018cb52b401c92549ed24dc471de.jpg\", \"key\": \"配布\", \"value\": \"61002\", \"key_id\": 2, \"value_id\": 163}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '41$1-162#2-163#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (134, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg', '61005-61004', 41, '2021-10-07 13:55:27.764', '2021-10-27 22:09:06.650', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/84e794c5c51540acb88093a96b9f33cc.jpg\", \"key\": \"主布\", \"value\": \"61005\", \"key_id\": 1, \"value_id\": 164}, {\"img\": \"http://localhost:8092/assets/2021/10/07/5214e46aca8c43319fca7e9fea4bc0f7.jpg\", \"key\": \"配布\", \"value\": \"61004\", \"key_id\": 2, \"value_id\": 161}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '41$1-164#2-161#6-198', 76, 10, 1);
INSERT INTO `sku` VALUES (135, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/d9c8b3f9af8c411a8b3fbd805ddd5dfe.jpg', '610017-61004', 41, '2021-10-07 13:57:42.772', '2021-10-27 18:54:19.074', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/5e6ac3e3ebbf48b4b89faa4e72a70c4d.jpg\", \"key\": \"主布\", \"value\": \"610017\", \"key_id\": 1, \"value_id\": 165}, {\"img\": \"http://localhost:8092/assets/2021/10/07/5214e46aca8c43319fca7e9fea4bc0f7.jpg\", \"key\": \"配布\", \"value\": \"61004\", \"key_id\": 2, \"value_id\": 161}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '41$1-165#2-161#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (136, 140.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/9d8c3dee30e54b9085719d21a4609d38.jpg', '610012-61002', 41, '2021-10-07 14:00:46.383', '2021-10-27 18:54:20.401', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/dfe16339057442c294d6745089ef991f.jpg\", \"key\": \"主布\", \"value\": \"610012\", \"key_id\": 1, \"value_id\": 166}, {\"img\": \"http://localhost:8092/assets/2021/10/07/0591018cb52b401c92549ed24dc471de.jpg\", \"key\": \"配布\", \"value\": \"61002\", \"key_id\": 2, \"value_id\": 163}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '41$1-166#2-163#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (137, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/89c7f2c9fdad4f61bbaed5c69cfa04c8.jpg', 'A211-11 • A211-4', 42, '2021-10-07 14:25:31.065', '2021-10-27 18:54:49.418', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/bf75bfe1380d430893ff40ee97bcfdbd.jpg\", \"key\": \"主布\", \"value\": \"A211-11\", \"key_id\": 1, \"value_id\": 167}, {\"img\": \"http://localhost:8092/assets/2021/10/07/5e6238c3b6ce422582889141e8511d27.jpg\", \"key\": \"配布\", \"value\": \"A211-4\", \"key_id\": 2, \"value_id\": 168}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '42$1-167#2-168#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (138, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', 'A211-10 • A211-10', 42, '2021-10-07 14:26:05.079', '2021-10-28 18:39:26.680', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/6d3466a55b8648d48ecc2c1efbb78bd6.jpg\", \"key\": \"主布\", \"value\": \"A211-10\", \"key_id\": 1, \"value_id\": 169}, {\"img\": \"http://localhost:8092/assets/2021/10/07/6d3466a55b8648d48ecc2c1efbb78bd6.jpg\", \"key\": \"配布\", \"value\": \"A211-10\", \"key_id\": 2, \"value_id\": 170}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '42$1-169#2-170#6-198', 76, 10, 1);
INSERT INTO `sku` VALUES (139, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/60122517ca54487e952f88e8c31775d9.jpg', 'A211-4 • A211-14', 42, '2021-10-07 14:26:51.057', '2021-10-27 18:54:52.400', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/5e6238c3b6ce422582889141e8511d27.jpg\", \"key\": \"主布\", \"value\": \"A211-4\", \"key_id\": 1, \"value_id\": 171}, {\"img\": \"http://localhost:8092/assets/2021/10/07/ebdf8265009d43b9a838eaf055d23285.jpg\", \"key\": \"配布\", \"value\": \"A211-14\", \"key_id\": 2, \"value_id\": 172}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '42$1-171#2-172#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (140, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/b13c2e11f3f3494e8b48aa9a4cb96d2c.jpg', 'A211-2 • A211-1', 42, '2021-10-07 14:27:35.618', '2021-10-27 18:54:53.571', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/c1f348fa88db4d0e922d7ea3fedffd64.jpg\", \"key\": \"主布\", \"value\": \"A211-2\", \"key_id\": 1, \"value_id\": 173}, {\"img\": \"http://localhost:8092/assets/2021/10/07/8d3d6cc8ca4f4ff4b0da6e35483f7f31.jpg\", \"key\": \"配布\", \"value\": \"A211-1\", \"key_id\": 2, \"value_id\": 174}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '42$1-173#2-174#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (141, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/85ab541aecfc4d078c1e5946ec5ca58f.jpg', 'A211-8 • A211-14', 42, '2021-10-07 14:27:59.612', '2021-10-27 18:54:54.927', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/6a367b23907842ba95c41c8eb1ce2314.jpg\", \"key\": \"主布\", \"value\": \"A211-8\", \"key_id\": 1, \"value_id\": 175}, {\"img\": \"http://localhost:8092/assets/2021/10/07/ebdf8265009d43b9a838eaf055d23285.jpg\", \"key\": \"配布\", \"value\": \"A211-14\", \"key_id\": 2, \"value_id\": 172}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '42$1-175#2-172#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (142, 128.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg', '孔雀绿 - 烟灰色', 43, '2021-10-07 15:41:17.866', '2021-10-27 18:55:25.919', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/396336e934d844478c111db91761e23e.jpg\", \"key\": \"主布\", \"value\": \"孔雀绿\", \"key_id\": 1, \"value_id\": 176}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg\", \"key\": \"配布\", \"value\": \"烟灰色\", \"key_id\": 2, \"value_id\": 177}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '43$1-176#2-177#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (143, 128.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/f0f68811e64646408abba31a97f04b34.jpg', '天空蓝-羚羊米', 43, '2021-10-07 15:41:44.595', '2021-10-27 18:55:27.402', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/b6b130d7f38341ac83938d36f90c77ee.jpg\", \"key\": \"主布\", \"value\": \"天空蓝\", \"key_id\": 1, \"value_id\": 178}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f34383774cb4499a9f131ca93d91cd04.jpg\", \"key\": \"配布\", \"value\": \"羚羊米\", \"key_id\": 2, \"value_id\": 179}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '43$1-178#2-179#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (144, 128.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/f74901237f304611ab500a296c24bee0.jpg', '烟灰色-牛仔蓝', 43, '2021-10-07 15:42:14.800', '2021-10-27 18:55:28.785', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg\", \"key\": \"主布\", \"value\": \"烟灰色\", \"key_id\": 1, \"value_id\": 180}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f470301914c745209c72f58b0ac61999.jpg\", \"key\": \"配布\", \"value\": \"牛仔蓝\", \"key_id\": 2, \"value_id\": 181}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '43$1-180#2-181#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (145, 128.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/ae5167c893d742f3b1c22be0db274221.jpg', '羚羊米-钢灰色', 43, '2021-10-07 15:42:42.297', '2021-10-27 18:55:30.034', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/f34383774cb4499a9f131ca93d91cd04.jpg\", \"key\": \"主布\", \"value\": \"羚羊米\", \"key_id\": 1, \"value_id\": 182}, {\"img\": \"http://localhost:8092/assets/2021/10/07/e15b98c264714954a3c58825bef0b079.jpg\", \"key\": \"配布\", \"value\": \"钢灰色\", \"key_id\": 2, \"value_id\": 183}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '43$1-182#2-183#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (146, 128.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/f104dd2922344e3b9242025a2629498c.jpg', '蓝鸟色-烟灰色', 43, '2021-10-07 15:43:07.806', '2021-10-27 18:55:31.415', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/3bac9325c8e646f5a7705630697409d4.jpg\", \"key\": \"主布\", \"value\": \"蓝鸟色\", \"key_id\": 1, \"value_id\": 184}, {\"img\": \"http://localhost:8092/assets/2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg\", \"key\": \"配布\", \"value\": \"烟灰色\", \"key_id\": 2, \"value_id\": 177}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '43$1-184#2-177#6-198', 77, 42, 1);
INSERT INTO `sku` VALUES (147, 123.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', '海军蓝-米白色', 44, '2021-10-07 16:26:46.532', '2021-10-27 18:56:06.248', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/f77798cf0d1a4e738aa09351fc353492.jpg\", \"key\": \"主布\", \"value\": \"海军蓝\", \"key_id\": 1, \"value_id\": 185}, {\"img\": \"http://localhost:8092/assets/2021/10/07/690a160fc6124c3da92b7960e823ac9f.jpg\", \"key\": \"配布\", \"value\": \"米白色\", \"key_id\": 2, \"value_id\": 186}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '44$1-185#2-186#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (148, 123.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/d9d012a8354346cc851c4052a3d0d1c2.jpg', '祖母绿-爱马仕橙', 44, '2021-10-07 16:27:40.707', '2021-10-27 18:56:07.715', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/749edc9877a446048a14e47f04250c27.jpg\", \"key\": \"主布\", \"value\": \"祖母绿\", \"key_id\": 1, \"value_id\": 99}, {\"img\": \"http://localhost:8092/assets/2021/10/07/7c1b7211cff34515aaea9abec2817bff.jpg\", \"key\": \"配布\", \"value\": \"爱马仕橙\", \"key_id\": 2, \"value_id\": 187}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '44$1-99#2-187#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (149, 123.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/558dac466c344357803e385b8fce767d.jpg', '深湖蓝-柠檬黄', 44, '2021-10-07 16:28:39.096', '2021-10-27 18:56:09.040', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/e73fa5423b29448aac69763fc2c3f255.jpg\", \"key\": \"主布\", \"value\": \"深湖蓝\", \"key_id\": 1, \"value_id\": 130}, {\"img\": \"http://localhost:8092/assets/2021/10/06/d1653dced44c4d53a1eb12b66e434d79.jpg\", \"key\": \"配布\", \"value\": \"柠檬黄\", \"key_id\": 2, \"value_id\": 100}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '44$1-130#2-100#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (150, 123.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/b9879093c7c541e9ad2e457423af5bd3.jpg', '冰川灰-孔雀蓝', 44, '2021-10-07 16:29:17.849', '2021-10-27 18:56:10.850', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/07/f03d5720cb294b8c9d54686fc2d599ad.jpg\", \"key\": \"主布\", \"value\": \"冰川灰\", \"key_id\": 1, \"value_id\": 188}, {\"img\": \"http://localhost:8092/assets/2021/10/06/8d0f6e0e9a9f4e89a8b68d77a1aa053f.jpg\", \"key\": \"配布\", \"value\": \"孔雀蓝\", \"key_id\": 2, \"value_id\": 88}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '44$1-188#2-88#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (151, 123.00, NULL, 1, 'http://localhost:8092/assets/2021/10/07/2cb9644fc8bf41e592aa09181036bfb1.jpg', '孔雀蓝-爱马仕橙', 44, '2021-10-07 16:29:51.086', '2021-10-27 18:56:13.603', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/06/8e1a2814b31840d9b8e48093eefa1aae.jpg\", \"key\": \"主布\", \"value\": \"孔雀蓝\", \"key_id\": 1, \"value_id\": 105}, {\"img\": \"http://localhost:8092/assets/2021/10/07/7c1b7211cff34515aaea9abec2817bff.jpg\", \"key\": \"配布\", \"value\": \"爱马仕橙\", \"key_id\": 2, \"value_id\": 187}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '44$1-105#2-187#6-198', 77, 10, 1);
INSERT INTO `sku` VALUES (152, 85.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', '高分子 - 6507', 46, '2021-10-08 13:01:06.859', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/ff0ec27b0a5f45dbb62d547e19cabda4.jpg\", \"key\": \"颜色\", \"value\": \"6507\", \"key_id\": 5, \"value_id\": 193}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '46$5-193#6-189', 100, 14, 2);
INSERT INTO `sku` VALUES (153, 85.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', '高分子 - 6502', 46, '2021-10-08 13:02:37.601', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/2b37ff847f764c57a9fb5792fad39606.jpg\", \"key\": \"颜色\", \"value\": \"6502\", \"key_id\": 5, \"value_id\": 190}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '46$5-190#6-189', 77, 14, 2);
INSERT INTO `sku` VALUES (154, 85.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', '高分子 - 6503', 46, '2021-10-08 13:03:04.933', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/ffe048aa39234a3eb699c7775fce4688.jpg\", \"key\": \"颜色\", \"value\": \"6503\", \"key_id\": 5, \"value_id\": 191}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '46$5-191#6-189', 77, 14, 2);
INSERT INTO `sku` VALUES (155, 85.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', '高分子 - 6504', 46, '2021-10-08 13:03:37.002', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/e274357bd49d41ec82709bdd605992bc.jpg\", \"key\": \"颜色\", \"value\": \"6504\", \"key_id\": 5, \"value_id\": 192}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '46$5-192#6-189', 77, 14, 2);
INSERT INTO `sku` VALUES (156, 77.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', '铝百叶 - 4503', 45, '2021-10-08 13:11:54.163', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/aaf9e737143e404b92411017fd414709.jpg\", \"key\": \"颜色\", \"value\": \"4503\", \"key_id\": 5, \"value_id\": 194}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '45$5-194#6-189', 77, 12, 2);
INSERT INTO `sku` VALUES (157, 77.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', '铝百叶 - 4505', 45, '2021-10-08 13:12:25.552', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/0f56ed7b66a94ed486a4dec69ab462d6.jpg\", \"key\": \"颜色\", \"value\": \"4505\", \"key_id\": 5, \"value_id\": 195}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '45$5-195#6-189', 77, 12, 2);
INSERT INTO `sku` VALUES (158, 77.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', '铝百叶 - 4506', 45, '2021-10-08 13:12:52.135', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/2560e938573e4bd7956f593f3e251dc6.jpg\", \"key\": \"颜色\", \"value\": \"4506\", \"key_id\": 5, \"value_id\": 196}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '45$5-196#6-189', 77, 12, 2);
INSERT INTO `sku` VALUES (159, 77.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', '铝百叶 - 4507', 45, '2021-10-08 13:13:16.692', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/59502b3e2568421b95393384a5d28cf9.jpg\", \"key\": \"颜色\", \"value\": \"4507\", \"key_id\": 5, \"value_id\": 197}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '45$5-197#6-189', 77, 12, 2);
INSERT INTO `sku` VALUES (160, 50.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', '柔纱帘A-160', 47, '2021-10-08 14:30:14.300', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/91cdfcb59dae4fd5b948c4b81014e60a.jpg\", \"key\": \"颜色\", \"value\": \"A-160\", \"key_id\": 5, \"value_id\": 199}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '47$5-199#6-189', 77, 35, 4);
INSERT INTO `sku` VALUES (161, 50.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', '柔纱帘A-171', 47, '2021-10-08 14:30:44.121', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/9a325afbb948448babff176cb443d447.jpg\", \"key\": \"颜色\", \"value\": \"A-171\", \"key_id\": 5, \"value_id\": 200}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '47$5-200#6-189', 77, 35, 4);
INSERT INTO `sku` VALUES (162, 50.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', '柔纱帘A-174', 47, '2021-10-08 14:31:10.903', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/c2db8cb0b7c64281b09ca5cf30e9e278.jpg\", \"key\": \"颜色\", \"value\": \"A-174\", \"key_id\": 5, \"value_id\": 201}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '47$5-201#6-189', 77, 35, 4);
INSERT INTO `sku` VALUES (163, 50.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', '柔纱帘A-184', 47, '2021-10-08 14:31:36.162', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/76804a53ade348898a7d84d84782362d.jpg\", \"key\": \"颜色\", \"value\": \"A-184\", \"key_id\": 5, \"value_id\": 202}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '47$5-202#6-189', 77, 35, 4);
INSERT INTO `sku` VALUES (164, 50.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', '柔纱帘A-189', 47, '2021-10-08 14:31:59.831', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/d2f72e7150594f37a30771b08fe838f7.jpg\", \"key\": \"颜色\", \"value\": \"A-189\", \"key_id\": 5, \"value_id\": 203}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '47$5-203#6-189', 77, 35, 4);
INSERT INTO `sku` VALUES (165, 30.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg', '羽毛纱-蓝边', 48, '2021-10-08 14:54:25.292', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/08/0159e9b2eeb847aca156e24e2732f6b2.jpg\", \"key\": \"型号\", \"value\": \"羽毛纱-蓝边\", \"key_id\": 7, \"value_id\": 208}]', '48$6-198#7-208', 77, 43, 1);
INSERT INTO `sku` VALUES (166, 30.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/e47562dc65074bd39af1f280f1547b9b.jpg', '贴绒-咖纱', 48, '2021-10-08 14:55:15.173', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/08/ccadf1314c7d4f568e93f06a467c3b53.jpg\", \"key\": \"型号\", \"value\": \"贴绒-咖纱\", \"key_id\": 7, \"value_id\": 207}]', '48$6-198#7-207', 77, 43, 1);
INSERT INTO `sku` VALUES (167, 30.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/2f77a057274f47f0aecce9d8e2621e13.jpg', 'F2-蓝色', 48, '2021-10-08 14:55:40.053', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/08/90d0cc9c6e4b4fb3b10dc774b16d0f4a.jpg\", \"key\": \"型号\", \"value\": \"F2-蓝色\", \"key_id\": 7, \"value_id\": 204}]', '48$6-198#7-204', 77, 43, 1);
INSERT INTO `sku` VALUES (168, 30.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/026db878f51d41eaa8eb61619df4e1b5.jpg', 'F3-粉色', 48, '2021-10-08 14:56:01.041', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/08/6e30a1e171a9435db61e4e7445bc19f8.jpg\", \"key\": \"型号\", \"value\": \"F3-粉色\", \"key_id\": 7, \"value_id\": 205}]', '48$6-198#7-205', 77, 43, 1);
INSERT INTO `sku` VALUES (169, 30.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/0996acbf232b4ef9868c0e39bd4cae09.jpg', 'F6-咖色', 48, '2021-10-08 14:56:21.732', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/08/b4ea566d6872415780384e76ea9fe6cc.jpg\", \"key\": \"型号\", \"value\": \"F6-咖色\", \"key_id\": 7, \"value_id\": 206}]', '48$6-198#7-206', 77, 43, 1);
INSERT INTO `sku` VALUES (170, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg', '棕色', 49, '2021-10-08 15:46:38.255', '2021-10-20 19:30:36.525', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/ae895990c43e4b1c931e4f14f4b78e53.jpg\", \"key\": \"颜色\", \"value\": \"棕色\", \"key_id\": 5, \"value_id\": 209}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '49$5-209#6-198', 77, 17, 3);
INSERT INTO `sku` VALUES (171, 120.00, NULL, 1, 'http://localhost:8092/assets/2021/10/08/70c27eb2e8984bf58f41e9f95adf83cc.jpg', '深咖色', 49, '2021-10-08 15:46:57.883', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"http://localhost:8092/assets/2021/10/08/eaa99ac8d93c4cf2b2359e2a583a880e.jpg\", \"key\": \"颜色\", \"value\": \"深咖色\", \"key_id\": 5, \"value_id\": 210}, {\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}]', '49$5-210#6-198', 77, 17, 3);
INSERT INTO `sku` VALUES (172, 90.00, NULL, 1, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S901', 50, '2021-10-09 08:44:26.469', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/09/754d8f2fce0f476f92d76c753280fdf4.jpg\", \"key\": \"型号\", \"value\": \"S901\", \"key_id\": 7, \"value_id\": 211}]', '50$6-198#7-211', 77, 36, 5);
INSERT INTO `sku` VALUES (173, 90.00, NULL, 1, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S902', 50, '2021-10-09 08:44:44.953', '2021-10-19 15:34:40.960', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/09/b43e28e2125e4b5a8e9b91f034bebff7.jpg\", \"key\": \"型号\", \"value\": \"S902\", \"key_id\": 7, \"value_id\": 212}]', '50$6-198#7-212', 77, 36, 5);
INSERT INTO `sku` VALUES (174, 90.00, NULL, 1, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S903', 50, '2021-10-09 08:45:01.616', '2021-10-26 23:38:32.367', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/09/28579d319ce34df2a0d4d735b9fce34e.jpg\", \"key\": \"型号\", \"value\": \"S903\", \"key_id\": 7, \"value_id\": 213}]', '50$6-198#7-213', 77, 36, 5);
INSERT INTO `sku` VALUES (175, 90.00, NULL, 1, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'S904', 50, '2021-10-09 08:45:17.074', '2021-10-19 15:54:44.140', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"宽/米\", \"key_id\": 6, \"value_id\": 198}, {\"img\": \"http://localhost:8092/assets/2021/10/09/f808deb8697a4577a4bda5468c398b52.jpg\", \"key\": \"型号\", \"value\": \"S904\", \"key_id\": 7, \"value_id\": 214}]', '50$6-198#7-214', 77, 36, 5);
INSERT INTO `sku` VALUES (176, 110.00, NULL, 1, 'http://localhost:8092/assets/2021/10/09/2267875c58a942d9b284516159d2c1ea.jpg', '遮阳电动顶棚帘', 51, '2021-10-27 19:10:56.709', '2021-10-27 19:10:56.709', NULL, '[{\"img\": \"\", \"key\": \"规格\", \"value\": \"平方米\", \"key_id\": 6, \"value_id\": 189}]', '51$6-189', 77, 32, 6);
INSERT INTO `sku` VALUES (177, 0.10, NULL, 1, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', '测试数据', 52, '2021-10-27 19:17:53.227', '2021-10-27 19:21:45.300', NULL, '[]', '52$', 76, 45, 44);

-- ----------------------------
-- Table structure for sku_spec
-- ----------------------------
DROP TABLE IF EXISTS `sku_spec`;
CREATE TABLE `sku_spec`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) UNSIGNED NOT NULL,
  `sku_id` int(10) UNSIGNED NOT NULL,
  `key_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1371 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_spec
-- ----------------------------
INSERT INTO `sku_spec` VALUES (793, 46, 152, 5, 193);
INSERT INTO `sku_spec` VALUES (794, 46, 152, 6, 189);
INSERT INTO `sku_spec` VALUES (795, 46, 153, 5, 190);
INSERT INTO `sku_spec` VALUES (796, 46, 153, 6, 189);
INSERT INTO `sku_spec` VALUES (797, 46, 154, 5, 191);
INSERT INTO `sku_spec` VALUES (798, 46, 154, 6, 189);
INSERT INTO `sku_spec` VALUES (799, 46, 155, 5, 192);
INSERT INTO `sku_spec` VALUES (800, 46, 155, 6, 189);
INSERT INTO `sku_spec` VALUES (801, 45, 156, 5, 194);
INSERT INTO `sku_spec` VALUES (802, 45, 156, 6, 189);
INSERT INTO `sku_spec` VALUES (803, 45, 157, 5, 195);
INSERT INTO `sku_spec` VALUES (804, 45, 157, 6, 189);
INSERT INTO `sku_spec` VALUES (805, 45, 158, 5, 196);
INSERT INTO `sku_spec` VALUES (806, 45, 158, 6, 189);
INSERT INTO `sku_spec` VALUES (807, 45, 159, 5, 197);
INSERT INTO `sku_spec` VALUES (808, 45, 159, 6, 189);
INSERT INTO `sku_spec` VALUES (962, 31, 88, 1, 85);
INSERT INTO `sku_spec` VALUES (963, 31, 88, 2, 78);
INSERT INTO `sku_spec` VALUES (964, 31, 88, 3, 66);
INSERT INTO `sku_spec` VALUES (965, 31, 88, 6, 198);
INSERT INTO `sku_spec` VALUES (966, 31, 89, 1, 86);
INSERT INTO `sku_spec` VALUES (967, 31, 89, 2, 70);
INSERT INTO `sku_spec` VALUES (968, 31, 89, 3, 67);
INSERT INTO `sku_spec` VALUES (969, 31, 89, 6, 198);
INSERT INTO `sku_spec` VALUES (970, 32, 90, 1, 87);
INSERT INTO `sku_spec` VALUES (971, 32, 90, 2, 88);
INSERT INTO `sku_spec` VALUES (972, 32, 90, 6, 198);
INSERT INTO `sku_spec` VALUES (973, 32, 91, 1, 89);
INSERT INTO `sku_spec` VALUES (974, 32, 91, 2, 90);
INSERT INTO `sku_spec` VALUES (975, 32, 91, 6, 198);
INSERT INTO `sku_spec` VALUES (976, 32, 92, 1, 91);
INSERT INTO `sku_spec` VALUES (977, 32, 92, 2, 90);
INSERT INTO `sku_spec` VALUES (978, 32, 92, 6, 198);
INSERT INTO `sku_spec` VALUES (979, 32, 93, 1, 92);
INSERT INTO `sku_spec` VALUES (980, 32, 93, 2, 93);
INSERT INTO `sku_spec` VALUES (981, 32, 93, 6, 198);
INSERT INTO `sku_spec` VALUES (982, 32, 94, 1, 94);
INSERT INTO `sku_spec` VALUES (983, 32, 94, 2, 95);
INSERT INTO `sku_spec` VALUES (984, 32, 94, 6, 198);
INSERT INTO `sku_spec` VALUES (985, 33, 95, 1, 99);
INSERT INTO `sku_spec` VALUES (986, 33, 95, 2, 100);
INSERT INTO `sku_spec` VALUES (987, 33, 95, 3, 97);
INSERT INTO `sku_spec` VALUES (988, 33, 95, 6, 198);
INSERT INTO `sku_spec` VALUES (989, 33, 96, 1, 101);
INSERT INTO `sku_spec` VALUES (990, 33, 96, 2, 102);
INSERT INTO `sku_spec` VALUES (991, 33, 96, 3, 96);
INSERT INTO `sku_spec` VALUES (992, 33, 96, 6, 198);
INSERT INTO `sku_spec` VALUES (993, 33, 97, 1, 103);
INSERT INTO `sku_spec` VALUES (994, 33, 97, 2, 100);
INSERT INTO `sku_spec` VALUES (995, 33, 97, 3, 97);
INSERT INTO `sku_spec` VALUES (996, 33, 97, 6, 198);
INSERT INTO `sku_spec` VALUES (997, 33, 98, 1, 104);
INSERT INTO `sku_spec` VALUES (998, 33, 98, 2, 102);
INSERT INTO `sku_spec` VALUES (999, 33, 98, 3, 98);
INSERT INTO `sku_spec` VALUES (1000, 33, 98, 6, 198);
INSERT INTO `sku_spec` VALUES (1001, 33, 99, 1, 105);
INSERT INTO `sku_spec` VALUES (1002, 33, 99, 2, 102);
INSERT INTO `sku_spec` VALUES (1003, 33, 99, 3, 98);
INSERT INTO `sku_spec` VALUES (1004, 33, 99, 6, 198);
INSERT INTO `sku_spec` VALUES (1005, 34, 100, 3, 106);
INSERT INTO `sku_spec` VALUES (1006, 34, 100, 5, 111);
INSERT INTO `sku_spec` VALUES (1007, 34, 100, 6, 198);
INSERT INTO `sku_spec` VALUES (1008, 34, 101, 3, 106);
INSERT INTO `sku_spec` VALUES (1009, 34, 101, 5, 108);
INSERT INTO `sku_spec` VALUES (1010, 34, 101, 6, 198);
INSERT INTO `sku_spec` VALUES (1011, 34, 102, 3, 107);
INSERT INTO `sku_spec` VALUES (1012, 34, 102, 5, 109);
INSERT INTO `sku_spec` VALUES (1013, 34, 102, 6, 198);
INSERT INTO `sku_spec` VALUES (1014, 34, 103, 3, 106);
INSERT INTO `sku_spec` VALUES (1015, 34, 103, 5, 110);
INSERT INTO `sku_spec` VALUES (1016, 34, 103, 6, 198);
INSERT INTO `sku_spec` VALUES (1017, 34, 104, 3, 107);
INSERT INTO `sku_spec` VALUES (1018, 34, 104, 5, 111);
INSERT INTO `sku_spec` VALUES (1019, 34, 104, 6, 198);
INSERT INTO `sku_spec` VALUES (1020, 35, 105, 3, 114);
INSERT INTO `sku_spec` VALUES (1021, 35, 105, 5, 112);
INSERT INTO `sku_spec` VALUES (1022, 35, 105, 6, 198);
INSERT INTO `sku_spec` VALUES (1023, 35, 106, 3, 115);
INSERT INTO `sku_spec` VALUES (1024, 35, 106, 5, 113);
INSERT INTO `sku_spec` VALUES (1025, 35, 106, 6, 198);
INSERT INTO `sku_spec` VALUES (1026, 36, 107, 1, 116);
INSERT INTO `sku_spec` VALUES (1027, 36, 107, 2, 117);
INSERT INTO `sku_spec` VALUES (1028, 36, 107, 3, 118);
INSERT INTO `sku_spec` VALUES (1029, 36, 107, 6, 198);
INSERT INTO `sku_spec` VALUES (1030, 36, 108, 1, 119);
INSERT INTO `sku_spec` VALUES (1031, 36, 108, 2, 120);
INSERT INTO `sku_spec` VALUES (1032, 36, 108, 3, 121);
INSERT INTO `sku_spec` VALUES (1033, 36, 108, 6, 198);
INSERT INTO `sku_spec` VALUES (1038, 36, 109, 1, 122);
INSERT INTO `sku_spec` VALUES (1039, 36, 109, 2, 123);
INSERT INTO `sku_spec` VALUES (1040, 36, 109, 3, 124);
INSERT INTO `sku_spec` VALUES (1041, 36, 109, 6, 198);
INSERT INTO `sku_spec` VALUES (1042, 36, 110, 1, 125);
INSERT INTO `sku_spec` VALUES (1043, 36, 110, 2, 126);
INSERT INTO `sku_spec` VALUES (1044, 36, 110, 3, 118);
INSERT INTO `sku_spec` VALUES (1045, 36, 110, 6, 198);
INSERT INTO `sku_spec` VALUES (1046, 36, 111, 1, 127);
INSERT INTO `sku_spec` VALUES (1047, 36, 111, 2, 126);
INSERT INTO `sku_spec` VALUES (1048, 36, 111, 3, 121);
INSERT INTO `sku_spec` VALUES (1049, 36, 111, 6, 198);
INSERT INTO `sku_spec` VALUES (1050, 37, 112, 1, 128);
INSERT INTO `sku_spec` VALUES (1051, 37, 112, 2, 129);
INSERT INTO `sku_spec` VALUES (1052, 37, 112, 6, 198);
INSERT INTO `sku_spec` VALUES (1053, 37, 113, 1, 130);
INSERT INTO `sku_spec` VALUES (1054, 37, 113, 2, 131);
INSERT INTO `sku_spec` VALUES (1055, 37, 113, 6, 198);
INSERT INTO `sku_spec` VALUES (1056, 37, 114, 1, 132);
INSERT INTO `sku_spec` VALUES (1057, 37, 114, 2, 133);
INSERT INTO `sku_spec` VALUES (1058, 37, 114, 6, 198);
INSERT INTO `sku_spec` VALUES (1059, 37, 115, 1, 134);
INSERT INTO `sku_spec` VALUES (1060, 37, 115, 2, 131);
INSERT INTO `sku_spec` VALUES (1061, 37, 115, 6, 198);
INSERT INTO `sku_spec` VALUES (1062, 37, 116, 1, 135);
INSERT INTO `sku_spec` VALUES (1063, 37, 116, 2, 131);
INSERT INTO `sku_spec` VALUES (1064, 37, 116, 6, 198);
INSERT INTO `sku_spec` VALUES (1065, 38, 117, 1, 136);
INSERT INTO `sku_spec` VALUES (1066, 38, 117, 2, 137);
INSERT INTO `sku_spec` VALUES (1067, 38, 117, 6, 198);
INSERT INTO `sku_spec` VALUES (1068, 38, 118, 1, 138);
INSERT INTO `sku_spec` VALUES (1069, 38, 118, 2, 139);
INSERT INTO `sku_spec` VALUES (1070, 38, 118, 6, 198);
INSERT INTO `sku_spec` VALUES (1071, 38, 119, 1, 140);
INSERT INTO `sku_spec` VALUES (1072, 38, 119, 2, 141);
INSERT INTO `sku_spec` VALUES (1073, 38, 119, 6, 198);
INSERT INTO `sku_spec` VALUES (1074, 38, 120, 1, 142);
INSERT INTO `sku_spec` VALUES (1075, 38, 120, 2, 137);
INSERT INTO `sku_spec` VALUES (1076, 38, 120, 6, 198);
INSERT INTO `sku_spec` VALUES (1077, 38, 121, 1, 136);
INSERT INTO `sku_spec` VALUES (1078, 38, 121, 2, 143);
INSERT INTO `sku_spec` VALUES (1079, 38, 121, 6, 198);
INSERT INTO `sku_spec` VALUES (1080, 39, 122, 1, 144);
INSERT INTO `sku_spec` VALUES (1081, 39, 122, 2, 145);
INSERT INTO `sku_spec` VALUES (1082, 39, 122, 6, 198);
INSERT INTO `sku_spec` VALUES (1083, 39, 123, 1, 146);
INSERT INTO `sku_spec` VALUES (1084, 39, 123, 2, 145);
INSERT INTO `sku_spec` VALUES (1085, 39, 123, 6, 198);
INSERT INTO `sku_spec` VALUES (1086, 39, 124, 1, 147);
INSERT INTO `sku_spec` VALUES (1087, 39, 124, 2, 145);
INSERT INTO `sku_spec` VALUES (1088, 39, 124, 6, 198);
INSERT INTO `sku_spec` VALUES (1089, 39, 125, 1, 148);
INSERT INTO `sku_spec` VALUES (1090, 39, 125, 2, 149);
INSERT INTO `sku_spec` VALUES (1091, 39, 125, 6, 198);
INSERT INTO `sku_spec` VALUES (1092, 39, 126, 1, 150);
INSERT INTO `sku_spec` VALUES (1093, 39, 126, 2, 151);
INSERT INTO `sku_spec` VALUES (1094, 39, 126, 6, 198);
INSERT INTO `sku_spec` VALUES (1095, 40, 127, 1, 103);
INSERT INTO `sku_spec` VALUES (1096, 40, 127, 2, 152);
INSERT INTO `sku_spec` VALUES (1097, 40, 127, 6, 198);
INSERT INTO `sku_spec` VALUES (1098, 40, 128, 1, 153);
INSERT INTO `sku_spec` VALUES (1099, 40, 128, 2, 154);
INSERT INTO `sku_spec` VALUES (1100, 40, 128, 6, 198);
INSERT INTO `sku_spec` VALUES (1101, 40, 129, 1, 155);
INSERT INTO `sku_spec` VALUES (1102, 40, 129, 2, 156);
INSERT INTO `sku_spec` VALUES (1103, 40, 129, 6, 198);
INSERT INTO `sku_spec` VALUES (1104, 40, 130, 1, 157);
INSERT INTO `sku_spec` VALUES (1105, 40, 130, 2, 152);
INSERT INTO `sku_spec` VALUES (1106, 40, 130, 6, 198);
INSERT INTO `sku_spec` VALUES (1107, 40, 131, 1, 158);
INSERT INTO `sku_spec` VALUES (1108, 40, 131, 2, 159);
INSERT INTO `sku_spec` VALUES (1109, 40, 131, 6, 198);
INSERT INTO `sku_spec` VALUES (1110, 41, 132, 1, 160);
INSERT INTO `sku_spec` VALUES (1111, 41, 132, 2, 161);
INSERT INTO `sku_spec` VALUES (1112, 41, 132, 6, 198);
INSERT INTO `sku_spec` VALUES (1113, 41, 133, 1, 162);
INSERT INTO `sku_spec` VALUES (1114, 41, 133, 2, 163);
INSERT INTO `sku_spec` VALUES (1115, 41, 133, 6, 198);
INSERT INTO `sku_spec` VALUES (1116, 41, 134, 1, 164);
INSERT INTO `sku_spec` VALUES (1117, 41, 134, 2, 161);
INSERT INTO `sku_spec` VALUES (1118, 41, 134, 6, 198);
INSERT INTO `sku_spec` VALUES (1119, 41, 135, 1, 165);
INSERT INTO `sku_spec` VALUES (1120, 41, 135, 2, 161);
INSERT INTO `sku_spec` VALUES (1121, 41, 135, 6, 198);
INSERT INTO `sku_spec` VALUES (1122, 41, 136, 1, 166);
INSERT INTO `sku_spec` VALUES (1123, 41, 136, 2, 163);
INSERT INTO `sku_spec` VALUES (1124, 41, 136, 6, 198);
INSERT INTO `sku_spec` VALUES (1125, 42, 137, 1, 167);
INSERT INTO `sku_spec` VALUES (1126, 42, 137, 2, 168);
INSERT INTO `sku_spec` VALUES (1127, 42, 137, 6, 198);
INSERT INTO `sku_spec` VALUES (1128, 42, 138, 1, 169);
INSERT INTO `sku_spec` VALUES (1129, 42, 138, 2, 170);
INSERT INTO `sku_spec` VALUES (1130, 42, 138, 6, 198);
INSERT INTO `sku_spec` VALUES (1131, 42, 139, 1, 171);
INSERT INTO `sku_spec` VALUES (1132, 42, 139, 2, 172);
INSERT INTO `sku_spec` VALUES (1133, 42, 139, 6, 198);
INSERT INTO `sku_spec` VALUES (1134, 42, 140, 1, 173);
INSERT INTO `sku_spec` VALUES (1135, 42, 140, 2, 174);
INSERT INTO `sku_spec` VALUES (1136, 42, 140, 6, 198);
INSERT INTO `sku_spec` VALUES (1137, 42, 141, 1, 175);
INSERT INTO `sku_spec` VALUES (1138, 42, 141, 2, 172);
INSERT INTO `sku_spec` VALUES (1139, 42, 141, 6, 198);
INSERT INTO `sku_spec` VALUES (1140, 43, 142, 1, 176);
INSERT INTO `sku_spec` VALUES (1141, 43, 142, 2, 177);
INSERT INTO `sku_spec` VALUES (1142, 43, 142, 6, 198);
INSERT INTO `sku_spec` VALUES (1143, 43, 143, 1, 178);
INSERT INTO `sku_spec` VALUES (1144, 43, 143, 2, 179);
INSERT INTO `sku_spec` VALUES (1145, 43, 143, 6, 198);
INSERT INTO `sku_spec` VALUES (1146, 43, 144, 1, 180);
INSERT INTO `sku_spec` VALUES (1147, 43, 144, 2, 181);
INSERT INTO `sku_spec` VALUES (1148, 43, 144, 6, 198);
INSERT INTO `sku_spec` VALUES (1149, 43, 145, 1, 182);
INSERT INTO `sku_spec` VALUES (1150, 43, 145, 2, 183);
INSERT INTO `sku_spec` VALUES (1151, 43, 145, 6, 198);
INSERT INTO `sku_spec` VALUES (1152, 43, 146, 1, 184);
INSERT INTO `sku_spec` VALUES (1153, 43, 146, 2, 177);
INSERT INTO `sku_spec` VALUES (1154, 43, 146, 6, 198);
INSERT INTO `sku_spec` VALUES (1155, 44, 147, 1, 185);
INSERT INTO `sku_spec` VALUES (1156, 44, 147, 2, 186);
INSERT INTO `sku_spec` VALUES (1157, 44, 147, 6, 198);
INSERT INTO `sku_spec` VALUES (1158, 44, 148, 1, 99);
INSERT INTO `sku_spec` VALUES (1159, 44, 148, 2, 187);
INSERT INTO `sku_spec` VALUES (1160, 44, 148, 6, 198);
INSERT INTO `sku_spec` VALUES (1161, 44, 149, 1, 130);
INSERT INTO `sku_spec` VALUES (1162, 44, 149, 2, 100);
INSERT INTO `sku_spec` VALUES (1163, 44, 149, 6, 198);
INSERT INTO `sku_spec` VALUES (1164, 44, 150, 1, 188);
INSERT INTO `sku_spec` VALUES (1165, 44, 150, 2, 88);
INSERT INTO `sku_spec` VALUES (1166, 44, 150, 6, 198);
INSERT INTO `sku_spec` VALUES (1167, 44, 151, 1, 105);
INSERT INTO `sku_spec` VALUES (1168, 44, 151, 2, 187);
INSERT INTO `sku_spec` VALUES (1169, 44, 151, 6, 198);
INSERT INTO `sku_spec` VALUES (1170, 47, 160, 5, 199);
INSERT INTO `sku_spec` VALUES (1171, 47, 160, 6, 189);
INSERT INTO `sku_spec` VALUES (1172, 47, 161, 5, 200);
INSERT INTO `sku_spec` VALUES (1173, 47, 161, 6, 189);
INSERT INTO `sku_spec` VALUES (1174, 47, 162, 5, 201);
INSERT INTO `sku_spec` VALUES (1175, 47, 162, 6, 189);
INSERT INTO `sku_spec` VALUES (1176, 47, 163, 5, 202);
INSERT INTO `sku_spec` VALUES (1177, 47, 163, 6, 189);
INSERT INTO `sku_spec` VALUES (1178, 47, 164, 5, 203);
INSERT INTO `sku_spec` VALUES (1179, 47, 164, 6, 189);
INSERT INTO `sku_spec` VALUES (1190, 48, 165, 6, 198);
INSERT INTO `sku_spec` VALUES (1191, 48, 165, 7, 208);
INSERT INTO `sku_spec` VALUES (1192, 48, 166, 6, 198);
INSERT INTO `sku_spec` VALUES (1193, 48, 166, 7, 207);
INSERT INTO `sku_spec` VALUES (1194, 48, 167, 6, 198);
INSERT INTO `sku_spec` VALUES (1195, 48, 167, 7, 204);
INSERT INTO `sku_spec` VALUES (1196, 48, 168, 6, 198);
INSERT INTO `sku_spec` VALUES (1197, 48, 168, 7, 205);
INSERT INTO `sku_spec` VALUES (1198, 48, 169, 6, 198);
INSERT INTO `sku_spec` VALUES (1199, 48, 169, 7, 206);
INSERT INTO `sku_spec` VALUES (1206, 29, 53, 1, 14);
INSERT INTO `sku_spec` VALUES (1207, 29, 53, 2, 22);
INSERT INTO `sku_spec` VALUES (1208, 29, 53, 3, 29);
INSERT INTO `sku_spec` VALUES (1209, 29, 53, 4, 37);
INSERT INTO `sku_spec` VALUES (1210, 29, 53, 6, 198);
INSERT INTO `sku_spec` VALUES (1211, 29, 54, 1, 8);
INSERT INTO `sku_spec` VALUES (1212, 29, 54, 2, 22);
INSERT INTO `sku_spec` VALUES (1213, 29, 54, 3, 30);
INSERT INTO `sku_spec` VALUES (1214, 29, 54, 4, 32);
INSERT INTO `sku_spec` VALUES (1215, 29, 54, 6, 198);
INSERT INTO `sku_spec` VALUES (1216, 29, 55, 1, 12);
INSERT INTO `sku_spec` VALUES (1217, 29, 55, 2, 22);
INSERT INTO `sku_spec` VALUES (1218, 29, 55, 3, 29);
INSERT INTO `sku_spec` VALUES (1219, 29, 55, 4, 38);
INSERT INTO `sku_spec` VALUES (1220, 29, 55, 6, 198);
INSERT INTO `sku_spec` VALUES (1221, 29, 56, 1, 1);
INSERT INTO `sku_spec` VALUES (1222, 29, 56, 2, 25);
INSERT INTO `sku_spec` VALUES (1223, 29, 56, 3, 30);
INSERT INTO `sku_spec` VALUES (1224, 29, 56, 4, 38);
INSERT INTO `sku_spec` VALUES (1225, 29, 56, 6, 198);
INSERT INTO `sku_spec` VALUES (1226, 29, 57, 1, 4);
INSERT INTO `sku_spec` VALUES (1227, 29, 57, 2, 28);
INSERT INTO `sku_spec` VALUES (1228, 29, 57, 3, 30);
INSERT INTO `sku_spec` VALUES (1229, 29, 57, 4, 38);
INSERT INTO `sku_spec` VALUES (1230, 29, 57, 6, 198);
INSERT INTO `sku_spec` VALUES (1231, 29, 58, 1, 3);
INSERT INTO `sku_spec` VALUES (1232, 29, 58, 2, 19);
INSERT INTO `sku_spec` VALUES (1233, 29, 58, 3, 31);
INSERT INTO `sku_spec` VALUES (1234, 29, 58, 4, 38);
INSERT INTO `sku_spec` VALUES (1235, 29, 58, 6, 198);
INSERT INTO `sku_spec` VALUES (1236, 29, 59, 1, 7);
INSERT INTO `sku_spec` VALUES (1237, 29, 59, 2, 15);
INSERT INTO `sku_spec` VALUES (1238, 29, 59, 3, 31);
INSERT INTO `sku_spec` VALUES (1239, 29, 59, 4, 38);
INSERT INTO `sku_spec` VALUES (1240, 29, 59, 6, 198);
INSERT INTO `sku_spec` VALUES (1241, 29, 60, 1, 6);
INSERT INTO `sku_spec` VALUES (1242, 29, 60, 2, 25);
INSERT INTO `sku_spec` VALUES (1243, 29, 60, 3, 30);
INSERT INTO `sku_spec` VALUES (1244, 29, 60, 4, 38);
INSERT INTO `sku_spec` VALUES (1245, 29, 60, 6, 198);
INSERT INTO `sku_spec` VALUES (1246, 29, 61, 1, 8);
INSERT INTO `sku_spec` VALUES (1247, 29, 61, 2, 16);
INSERT INTO `sku_spec` VALUES (1248, 29, 61, 3, 31);
INSERT INTO `sku_spec` VALUES (1249, 29, 61, 4, 38);
INSERT INTO `sku_spec` VALUES (1250, 29, 61, 6, 198);
INSERT INTO `sku_spec` VALUES (1251, 29, 62, 1, 9);
INSERT INTO `sku_spec` VALUES (1252, 29, 62, 2, 25);
INSERT INTO `sku_spec` VALUES (1253, 29, 62, 3, 29);
INSERT INTO `sku_spec` VALUES (1254, 29, 62, 4, 36);
INSERT INTO `sku_spec` VALUES (1255, 29, 62, 6, 198);
INSERT INTO `sku_spec` VALUES (1256, 29, 63, 1, 10);
INSERT INTO `sku_spec` VALUES (1257, 29, 63, 2, 19);
INSERT INTO `sku_spec` VALUES (1258, 29, 63, 3, 30);
INSERT INTO `sku_spec` VALUES (1259, 29, 63, 4, 38);
INSERT INTO `sku_spec` VALUES (1260, 29, 63, 6, 198);
INSERT INTO `sku_spec` VALUES (1261, 29, 64, 1, 1);
INSERT INTO `sku_spec` VALUES (1262, 29, 64, 2, 15);
INSERT INTO `sku_spec` VALUES (1263, 29, 64, 3, 31);
INSERT INTO `sku_spec` VALUES (1264, 29, 64, 4, 35);
INSERT INTO `sku_spec` VALUES (1265, 29, 64, 6, 198);
INSERT INTO `sku_spec` VALUES (1266, 29, 65, 1, 13);
INSERT INTO `sku_spec` VALUES (1267, 29, 65, 2, 19);
INSERT INTO `sku_spec` VALUES (1268, 29, 65, 3, 31);
INSERT INTO `sku_spec` VALUES (1269, 29, 65, 4, 34);
INSERT INTO `sku_spec` VALUES (1270, 29, 65, 6, 198);
INSERT INTO `sku_spec` VALUES (1271, 29, 66, 1, 9);
INSERT INTO `sku_spec` VALUES (1272, 29, 66, 2, 16);
INSERT INTO `sku_spec` VALUES (1273, 29, 66, 3, 29);
INSERT INTO `sku_spec` VALUES (1274, 29, 66, 4, 38);
INSERT INTO `sku_spec` VALUES (1275, 29, 66, 6, 198);
INSERT INTO `sku_spec` VALUES (1276, 29, 67, 1, 3);
INSERT INTO `sku_spec` VALUES (1277, 29, 67, 2, 21);
INSERT INTO `sku_spec` VALUES (1278, 29, 67, 3, 31);
INSERT INTO `sku_spec` VALUES (1279, 29, 67, 4, 38);
INSERT INTO `sku_spec` VALUES (1280, 29, 67, 6, 198);
INSERT INTO `sku_spec` VALUES (1281, 29, 68, 1, 6);
INSERT INTO `sku_spec` VALUES (1282, 29, 68, 2, 22);
INSERT INTO `sku_spec` VALUES (1283, 29, 68, 3, 31);
INSERT INTO `sku_spec` VALUES (1284, 29, 68, 4, 38);
INSERT INTO `sku_spec` VALUES (1285, 29, 68, 6, 198);
INSERT INTO `sku_spec` VALUES (1286, 29, 69, 1, 4);
INSERT INTO `sku_spec` VALUES (1287, 29, 69, 2, 16);
INSERT INTO `sku_spec` VALUES (1288, 29, 69, 3, 30);
INSERT INTO `sku_spec` VALUES (1289, 29, 69, 4, 33);
INSERT INTO `sku_spec` VALUES (1290, 29, 69, 6, 198);
INSERT INTO `sku_spec` VALUES (1291, 30, 70, 1, 44);
INSERT INTO `sku_spec` VALUES (1292, 30, 70, 2, 46);
INSERT INTO `sku_spec` VALUES (1293, 30, 70, 6, 198);
INSERT INTO `sku_spec` VALUES (1294, 30, 71, 1, 48);
INSERT INTO `sku_spec` VALUES (1295, 30, 71, 2, 51);
INSERT INTO `sku_spec` VALUES (1296, 30, 71, 6, 198);
INSERT INTO `sku_spec` VALUES (1297, 30, 72, 1, 52);
INSERT INTO `sku_spec` VALUES (1298, 30, 72, 2, 55);
INSERT INTO `sku_spec` VALUES (1299, 30, 72, 6, 198);
INSERT INTO `sku_spec` VALUES (1300, 30, 73, 1, 56);
INSERT INTO `sku_spec` VALUES (1301, 30, 73, 2, 57);
INSERT INTO `sku_spec` VALUES (1302, 30, 73, 6, 198);
INSERT INTO `sku_spec` VALUES (1303, 30, 74, 1, 58);
INSERT INTO `sku_spec` VALUES (1304, 30, 74, 2, 59);
INSERT INTO `sku_spec` VALUES (1305, 30, 74, 6, 198);
INSERT INTO `sku_spec` VALUES (1306, 30, 75, 1, 60);
INSERT INTO `sku_spec` VALUES (1307, 30, 75, 2, 59);
INSERT INTO `sku_spec` VALUES (1308, 30, 75, 6, 198);
INSERT INTO `sku_spec` VALUES (1309, 30, 76, 1, 61);
INSERT INTO `sku_spec` VALUES (1310, 30, 76, 2, 59);
INSERT INTO `sku_spec` VALUES (1311, 30, 76, 6, 198);
INSERT INTO `sku_spec` VALUES (1312, 30, 77, 1, 62);
INSERT INTO `sku_spec` VALUES (1313, 30, 77, 2, 63);
INSERT INTO `sku_spec` VALUES (1314, 30, 77, 6, 198);
INSERT INTO `sku_spec` VALUES (1315, 31, 78, 1, 64);
INSERT INTO `sku_spec` VALUES (1316, 31, 78, 2, 65);
INSERT INTO `sku_spec` VALUES (1317, 31, 78, 3, 67);
INSERT INTO `sku_spec` VALUES (1318, 31, 78, 6, 198);
INSERT INTO `sku_spec` VALUES (1319, 31, 79, 1, 69);
INSERT INTO `sku_spec` VALUES (1320, 31, 79, 2, 70);
INSERT INTO `sku_spec` VALUES (1321, 31, 79, 3, 67);
INSERT INTO `sku_spec` VALUES (1322, 31, 79, 6, 198);
INSERT INTO `sku_spec` VALUES (1323, 31, 80, 1, 71);
INSERT INTO `sku_spec` VALUES (1324, 31, 80, 2, 65);
INSERT INTO `sku_spec` VALUES (1325, 31, 80, 3, 67);
INSERT INTO `sku_spec` VALUES (1326, 31, 80, 6, 198);
INSERT INTO `sku_spec` VALUES (1327, 31, 81, 1, 72);
INSERT INTO `sku_spec` VALUES (1328, 31, 81, 2, 73);
INSERT INTO `sku_spec` VALUES (1329, 31, 81, 3, 66);
INSERT INTO `sku_spec` VALUES (1330, 31, 81, 6, 198);
INSERT INTO `sku_spec` VALUES (1331, 31, 82, 1, 74);
INSERT INTO `sku_spec` VALUES (1332, 31, 82, 2, 75);
INSERT INTO `sku_spec` VALUES (1333, 31, 82, 3, 66);
INSERT INTO `sku_spec` VALUES (1334, 31, 82, 6, 198);
INSERT INTO `sku_spec` VALUES (1335, 31, 83, 1, 76);
INSERT INTO `sku_spec` VALUES (1336, 31, 83, 2, 70);
INSERT INTO `sku_spec` VALUES (1337, 31, 83, 3, 67);
INSERT INTO `sku_spec` VALUES (1338, 31, 83, 6, 198);
INSERT INTO `sku_spec` VALUES (1339, 31, 84, 1, 77);
INSERT INTO `sku_spec` VALUES (1340, 31, 84, 2, 78);
INSERT INTO `sku_spec` VALUES (1341, 31, 84, 3, 68);
INSERT INTO `sku_spec` VALUES (1342, 31, 84, 6, 198);
INSERT INTO `sku_spec` VALUES (1343, 31, 85, 1, 79);
INSERT INTO `sku_spec` VALUES (1344, 31, 85, 2, 80);
INSERT INTO `sku_spec` VALUES (1345, 31, 85, 3, 66);
INSERT INTO `sku_spec` VALUES (1346, 31, 85, 6, 198);
INSERT INTO `sku_spec` VALUES (1347, 31, 86, 1, 81);
INSERT INTO `sku_spec` VALUES (1348, 31, 86, 2, 82);
INSERT INTO `sku_spec` VALUES (1349, 31, 86, 3, 67);
INSERT INTO `sku_spec` VALUES (1350, 31, 86, 6, 198);
INSERT INTO `sku_spec` VALUES (1351, 31, 87, 1, 83);
INSERT INTO `sku_spec` VALUES (1352, 31, 87, 2, 84);
INSERT INTO `sku_spec` VALUES (1353, 31, 87, 3, 66);
INSERT INTO `sku_spec` VALUES (1354, 31, 87, 6, 198);
INSERT INTO `sku_spec` VALUES (1355, 49, 170, 5, 209);
INSERT INTO `sku_spec` VALUES (1356, 49, 170, 6, 198);
INSERT INTO `sku_spec` VALUES (1357, 49, 171, 5, 210);
INSERT INTO `sku_spec` VALUES (1358, 49, 171, 6, 198);
INSERT INTO `sku_spec` VALUES (1359, 50, 172, 6, 198);
INSERT INTO `sku_spec` VALUES (1360, 50, 172, 7, 211);
INSERT INTO `sku_spec` VALUES (1361, 50, 173, 6, 198);
INSERT INTO `sku_spec` VALUES (1362, 50, 173, 7, 212);
INSERT INTO `sku_spec` VALUES (1363, 50, 174, 6, 198);
INSERT INTO `sku_spec` VALUES (1364, 50, 174, 7, 213);
INSERT INTO `sku_spec` VALUES (1365, 50, 175, 6, 198);
INSERT INTO `sku_spec` VALUES (1366, 50, 175, 7, 214);
INSERT INTO `sku_spec` VALUES (1371, 51, 176, 6, 189);

-- ----------------------------
-- Table structure for spec_key
-- ----------------------------
DROP TABLE IF EXISTS `spec_key`;
CREATE TABLE `spec_key`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `unit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `standard` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_key
-- ----------------------------
INSERT INTO `spec_key` VALUES (1, '主布', NULL, 0, '2019-09-10 02:13:11', '2021-10-04 18:34:34', NULL, '主布');
INSERT INTO `spec_key` VALUES (2, '配布', NULL, 0, '2019-09-10 02:13:11', '2021-10-04 18:27:37', NULL, '配布');
INSERT INTO `spec_key` VALUES (3, '纱', NULL, 0, '2019-09-10 02:13:11', '2021-10-04 18:27:37', NULL, '纱');
INSERT INTO `spec_key` VALUES (4, '花布', NULL, 0, '2019-09-10 02:13:11', '2021-10-04 19:28:43', NULL, '花布');
INSERT INTO `spec_key` VALUES (5, '颜色', NULL, 1, '2019-07-15 15:33:18', '2021-10-04 19:13:58', NULL, '颜色');
INSERT INTO `spec_key` VALUES (6, '规格', NULL, 1, '2019-07-17 08:24:40', '2021-10-04 19:13:56', NULL, '规格');
INSERT INTO `spec_key` VALUES (7, '型号', '无', 1, '2021-10-08 15:02:40', '2021-10-08 15:03:24', NULL, '型号');
INSERT INTO `spec_key` VALUES (22, '尺寸', '', 0, '2019-07-15 15:48:52', '2021-10-04 18:27:07', NULL, '尺寸');
INSERT INTO `spec_key` VALUES (33, '图案', NULL, 0, '2019-07-17 08:21:42', '2021-10-04 18:27:09', NULL, NULL);
INSERT INTO `spec_key` VALUES (55, '数量', '个', 0, '2019-09-10 02:13:11', '2021-10-04 18:27:12', NULL, NULL);

-- ----------------------------
-- Table structure for spec_value
-- ----------------------------
DROP TABLE IF EXISTS `spec_value`;
CREATE TABLE `spec_value`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `spec_id` int(10) UNSIGNED NOT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_value
-- ----------------------------
INSERT INTO `spec_value` VALUES (1, 'F116-1', 1, '2021-10-04 18:37:08.201', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg');
INSERT INTO `spec_value` VALUES (2, 'F116-2', 1, '2021-10-04 18:37:28.640', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg');
INSERT INTO `spec_value` VALUES (3, 'F116-3', 1, '2021-10-04 18:37:36.709', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/750001a3eabf4bd28179cd45b23f563a.jpg');
INSERT INTO `spec_value` VALUES (4, 'F116-4', 1, '2021-10-04 18:37:43.487', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/130c7d521f4e41e49497e6215078e544.jpg');
INSERT INTO `spec_value` VALUES (5, 'F116-5', 1, '2021-10-04 18:37:49.309', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg');
INSERT INTO `spec_value` VALUES (6, 'F116-6', 1, '2021-10-04 18:37:54.628', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/dd186fe4181c492081c00354818ed693.jpg');
INSERT INTO `spec_value` VALUES (7, 'F116-7', 1, '2021-10-04 18:38:04.256', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/ada47169a9c94b54916d6eaf92600bf4.jpg');
INSERT INTO `spec_value` VALUES (8, 'F116-8', 1, '2021-10-04 18:38:09.152', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg');
INSERT INTO `spec_value` VALUES (9, 'F116-9', 1, '2021-10-04 18:38:14.449', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/e551c1644cbc4e80b7dfa5cab43b1c49.jpg');
INSERT INTO `spec_value` VALUES (10, 'F116-10', 1, '2021-10-04 18:38:20.198', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/37687e7f716a4d5496afbcb14070f557.jpg');
INSERT INTO `spec_value` VALUES (11, 'F116-11', 1, '2021-10-04 18:38:25.448', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1a6789c4ea51447981cc705776f04679.jpg');
INSERT INTO `spec_value` VALUES (12, 'F116-12', 1, '2021-10-04 18:38:29.995', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/2899b0d5154a4c66870629ddb89addce.jpg');
INSERT INTO `spec_value` VALUES (13, 'F116-13', 1, '2021-10-04 18:38:35.699', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/0700fad9bdb6463c821c78b56e6b786d.jpg');
INSERT INTO `spec_value` VALUES (14, 'F116-14', 1, '2021-10-04 18:38:41.519', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/372d9301e8b544f09c55fc1ee3588db4.jpg');
INSERT INTO `spec_value` VALUES (15, 'F116-1', 2, '2021-10-04 18:37:08.201', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg');
INSERT INTO `spec_value` VALUES (16, 'F116-2', 2, '2021-10-04 18:37:28.640', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg');
INSERT INTO `spec_value` VALUES (17, 'F116-3', 2, '2021-10-04 18:37:36.709', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/750001a3eabf4bd28179cd45b23f563a.jpg');
INSERT INTO `spec_value` VALUES (18, 'F116-4', 2, '2021-10-04 18:37:43.487', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/130c7d521f4e41e49497e6215078e544.jpg');
INSERT INTO `spec_value` VALUES (19, 'F116-5', 2, '2021-10-04 18:37:49.309', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg');
INSERT INTO `spec_value` VALUES (20, 'F116-6', 2, '2021-10-04 18:37:54.628', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/dd186fe4181c492081c00354818ed693.jpg');
INSERT INTO `spec_value` VALUES (21, 'F116-7', 2, '2021-10-04 18:38:04.256', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/ada47169a9c94b54916d6eaf92600bf4.jpg');
INSERT INTO `spec_value` VALUES (22, 'F116-8', 2, '2021-10-04 18:38:09.152', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg');
INSERT INTO `spec_value` VALUES (23, 'F116-9', 2, '2021-10-04 18:38:14.449', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/e551c1644cbc4e80b7dfa5cab43b1c49.jpg');
INSERT INTO `spec_value` VALUES (24, 'F116-10', 2, '2021-10-04 18:38:20.198', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/37687e7f716a4d5496afbcb14070f557.jpg');
INSERT INTO `spec_value` VALUES (25, 'F116-11', 2, '2021-10-04 18:38:25.448', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1a6789c4ea51447981cc705776f04679.jpg');
INSERT INTO `spec_value` VALUES (26, 'F116-12', 2, '2021-10-04 18:38:29.995', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/2899b0d5154a4c66870629ddb89addce.jpg');
INSERT INTO `spec_value` VALUES (27, 'F116-13', 2, '2021-10-04 18:38:35.699', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/0700fad9bdb6463c821c78b56e6b786d.jpg');
INSERT INTO `spec_value` VALUES (28, 'F116-14', 2, '2021-10-04 18:38:41.519', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/372d9301e8b544f09c55fc1ee3588db4.jpg');
INSERT INTO `spec_value` VALUES (29, '216', 3, '2021-10-04 18:42:20.654', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png');
INSERT INTO `spec_value` VALUES (30, '217', 3, '2021-10-04 18:42:25.958', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/711456482729482b923899b988881a69.jpg');
INSERT INTO `spec_value` VALUES (31, '218', 3, '2021-10-04 18:42:30.532', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg');
INSERT INTO `spec_value` VALUES (32, '八分音符-绿色', 4, '2021-10-04 18:43:12.113', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/41d1a914b25040c08c655cea4d4f9a7a.jpg');
INSERT INTO `spec_value` VALUES (33, '八分音符-灰色', 4, '2021-10-04 18:44:02.148', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/26ab231ac9f44fb2be0961db0ea3b3ad.jpg');
INSERT INTO `spec_value` VALUES (34, '圆圆满满-黑白', 4, '2021-10-04 18:43:24.903', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c82fa09d418a4546a67af0ece216b668.jpg');
INSERT INTO `spec_value` VALUES (35, '圆圆满满-桔色', 4, '2021-10-04 18:44:20.435', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1f0ba3f3a53645188deabbf14b9095fc.jpg');
INSERT INTO `spec_value` VALUES (36, '叶子-咖色', 4, '2021-10-04 18:43:34.930', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/5361a474421e416aa655926d993c9158.jpg');
INSERT INTO `spec_value` VALUES (37, '叶子-红色', 4, '2021-10-04 18:44:29.923', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/69449d037ff84ded82eee1802d798f48.jpg');
INSERT INTO `spec_value` VALUES (38, '无', 4, '2021-10-04 19:55:35.310', '2021-10-04 19:55:35.310', NULL, '无', NULL);
INSERT INTO `spec_value` VALUES (40, '测试', 1, '2021-10-05 08:55:30.257', '2021-10-19 15:34:41.089', '2021-10-05 09:22:56.000', '', 'http://localhost:8092/assets/2021/10/05/40a40be58836468dbe5fa1317a8a7863.jpg');
INSERT INTO `spec_value` VALUES (41, '1.5米*1.2米', 22, '2021-10-05 11:20:02.228', '2021-10-05 11:20:02.228', NULL, '', '');
INSERT INTO `spec_value` VALUES (42, '1.5米*1.8米', 22, '2021-10-05 11:20:18.015', '2021-10-05 11:20:18.015', NULL, '', '');
INSERT INTO `spec_value` VALUES (43, '定制/米', 22, '2021-10-05 11:21:32.186', '2021-10-05 11:21:32.186', NULL, '', '');
INSERT INTO `spec_value` VALUES (44, '4847-5', 1, '2021-10-05 12:50:11.076', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c8d91e2d6cb745349e02d99b4c436da6.jpg');
INSERT INTO `spec_value` VALUES (45, '4847-13', 1, '2021-10-05 12:50:46.411', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/0f14afea71bc4d67b2c2cd4fd1207b4c.jpg');
INSERT INTO `spec_value` VALUES (46, '4847-13', 2, '2021-10-05 12:51:06.850', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/0f14afea71bc4d67b2c2cd4fd1207b4c.jpg');
INSERT INTO `spec_value` VALUES (47, '4847-5', 2, '2021-10-05 12:51:31.399', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c8d91e2d6cb745349e02d99b4c436da6.jpg');
INSERT INTO `spec_value` VALUES (48, '4847-3', 1, '2021-10-05 12:59:49.817', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8f1eb461a72242f5b15286bfd1edd043.jpg');
INSERT INTO `spec_value` VALUES (49, '4847-2', 1, '2021-10-05 12:59:59.694', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c69e50c719bc4be7b5afd6223023c529.jpg');
INSERT INTO `spec_value` VALUES (50, '4847-3', 2, '2021-10-05 13:00:13.340', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8f1eb461a72242f5b15286bfd1edd043.jpg');
INSERT INTO `spec_value` VALUES (51, '4847-2', 2, '2021-10-05 13:00:21.115', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c69e50c719bc4be7b5afd6223023c529.jpg');
INSERT INTO `spec_value` VALUES (52, '4847-4', 1, '2021-10-05 13:06:00.578', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/36072adad92443b0a3d3338f5a8ad183.jpg');
INSERT INTO `spec_value` VALUES (53, '4847-9', 1, '2021-10-05 13:06:08.973', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/f13e9f1f18d44184b4e6cbcf2130720e.jpg');
INSERT INTO `spec_value` VALUES (54, '4847-4', 2, '2021-10-05 13:06:21.069', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/36072adad92443b0a3d3338f5a8ad183.jpg');
INSERT INTO `spec_value` VALUES (55, '4847-9', 2, '2021-10-05 13:06:30.987', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/f13e9f1f18d44184b4e6cbcf2130720e.jpg');
INSERT INTO `spec_value` VALUES (56, '4847-8', 1, '2021-10-05 13:10:54.951', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/3fecba2cf959401080d4fab6d7a231ad.jpg');
INSERT INTO `spec_value` VALUES (57, '4847-7', 2, '2021-10-05 13:11:07.520', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/779aba1761cf491cb57fa73ca34fd7e5.jpg');
INSERT INTO `spec_value` VALUES (58, '4847-15', 1, '2021-10-05 13:14:59.974', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/2fd6a57249da4d79aa829d93f7028825.jpg');
INSERT INTO `spec_value` VALUES (59, '4847-14', 2, '2021-10-05 13:15:08.905', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/6a4a6ab2f0db460ab64bf030f9287708.jpg');
INSERT INTO `spec_value` VALUES (60, '4847-16', 1, '2021-10-05 13:20:11.976', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/25f6b38b5e7b4e3e804dd1bc3945bfc0.jpg');
INSERT INTO `spec_value` VALUES (61, '4847-18', 1, '2021-10-05 13:22:52.686', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/7b0b4ab5dd2c421c9e3e2da087d59796.jpg');
INSERT INTO `spec_value` VALUES (62, '4847-20', 1, '2021-10-05 13:26:13.983', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/961f6b7d42514608857e7e90817d0ba5.jpg');
INSERT INTO `spec_value` VALUES (63, '4847-10', 2, '2021-10-05 13:26:25.068', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/9eb2d472b50d43208f5bfbd7851137fc.jpg');
INSERT INTO `spec_value` VALUES (64, 'H-11', 1, '2021-10-05 16:00:40.096', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8f1cbb205d894c9cb805feb15e1627c2.jpg');
INSERT INTO `spec_value` VALUES (65, 'H-8', 2, '2021-10-05 16:00:59.073', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg');
INSERT INTO `spec_value` VALUES (66, 'S018', 3, '2021-10-05 16:07:27.769', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg');
INSERT INTO `spec_value` VALUES (67, 'S015', 3, '2021-10-05 16:07:38.179', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/ce316f764e06419c98634453e4de5e00.jpg');
INSERT INTO `spec_value` VALUES (68, 'S013', 3, '2021-10-05 16:07:49.723', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/57441ba08ec14be7b5eab3f6e66fffdc.jpg');
INSERT INTO `spec_value` VALUES (69, 'H-5', 1, '2021-10-05 16:12:30.021', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/5f1c5401f710444c8593ffb26477f3f5.jpg');
INSERT INTO `spec_value` VALUES (70, 'H-1', 2, '2021-10-05 16:12:41.556', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/486bded72e0a4443a3afe7502b3a57ee.jpg');
INSERT INTO `spec_value` VALUES (71, 'H-3', 1, '2021-10-05 16:16:55.183', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/309a94c285c94795960a21a1ad08c11b.jpg');
INSERT INTO `spec_value` VALUES (72, 'H-7', 1, '2021-10-05 16:20:53.292', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/2d4cdf25822643a2835189fd86b82136.jpg');
INSERT INTO `spec_value` VALUES (73, 'XLB-5', 2, '2021-10-05 16:21:09.079', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/10e1e44980e84c8aa61befdf9050a7b4.jpg');
INSERT INTO `spec_value` VALUES (74, 'H-4', 1, '2021-10-05 18:20:18.443', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/b26e864ccce2410397139e08752d118c.jpg');
INSERT INTO `spec_value` VALUES (75, 'H-11', 2, '2021-10-05 18:21:08.195', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8f1cbb205d894c9cb805feb15e1627c2.jpg');
INSERT INTO `spec_value` VALUES (76, 'H-10', 1, '2021-10-05 18:23:45.604', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1d4aa52184ba4f9bad6e049801204c91.jpg');
INSERT INTO `spec_value` VALUES (77, 'H-9', 1, '2021-10-05 18:27:25.013', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/639dcc1aa9934a369bf10e0b8dc1b97e.jpg');
INSERT INTO `spec_value` VALUES (78, 'H-12', 2, '2021-10-05 18:27:40.595', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/05/8bbb57da08444b37ab21859be5e3eeea.jpg');
INSERT INTO `spec_value` VALUES (79, 'H-7', 1, '2021-10-05 18:31:28.168', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/2d4cdf25822643a2835189fd86b82136.jpg');
INSERT INTO `spec_value` VALUES (80, 'H-10', 2, '2021-10-05 18:31:49.138', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1d4aa52184ba4f9bad6e049801204c91.jpg');
INSERT INTO `spec_value` VALUES (81, 'H-5', 1, '2021-10-05 18:34:21.271', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/5f1c5401f710444c8593ffb26477f3f5.jpg');
INSERT INTO `spec_value` VALUES (82, 'H-6', 2, '2021-10-05 18:34:34.814', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/ee40a6b0cae2461abc6314bc6525e8ae.jpg');
INSERT INTO `spec_value` VALUES (83, 'H-14', 1, '2021-10-05 18:37:00.474', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/a0040e0269a64e41a4cb251c119f7d84.jpg');
INSERT INTO `spec_value` VALUES (84, 'H-4', 2, '2021-10-05 18:37:15.906', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/b26e864ccce2410397139e08752d118c.jpg');
INSERT INTO `spec_value` VALUES (85, 'H-8', 1, '2021-10-05 18:38:18.111', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg');
INSERT INTO `spec_value` VALUES (86, 'H-2', 1, '2021-10-05 18:40:23.767', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/3f52b9c6211447458cdd5e7ed8566903.jpg');
INSERT INTO `spec_value` VALUES (87, '天空灰', 1, '2021-10-06 09:43:19.099', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/a6b7e360ca8a4a7390fd604d316e26bc.jpg');
INSERT INTO `spec_value` VALUES (88, '孔雀蓝', 2, '2021-10-06 09:43:36.010', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8d0f6e0e9a9f4e89a8b68d77a1aa053f.jpg');
INSERT INTO `spec_value` VALUES (89, '复古蓝', 1, '2021-10-06 10:03:13.532', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/cc52c460314146bca6ad98f1dbb8e038.jpg');
INSERT INTO `spec_value` VALUES (90, '山川灰', 2, '2021-10-06 10:03:29.258', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/ad4b1d230c104477a5acd0d1192d7889.jpg');
INSERT INTO `spec_value` VALUES (91, '藏蓝色', 1, '2021-10-06 10:12:35.213', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/40614157a9dd4369a5de86e4cd05fc16.jpg');
INSERT INTO `spec_value` VALUES (92, '格调灰', 1, '2021-10-06 10:14:57.379', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/40f0809ecbc74f60a22cd99eaee98139.jpg');
INSERT INTO `spec_value` VALUES (93, '热烈红', 2, '2021-10-06 10:16:42.372', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/39bff577d1a349f78b760cd30e517e12.jpg');
INSERT INTO `spec_value` VALUES (94, '婴儿蓝', 1, '2021-10-06 10:20:17.985', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/a0e98804c6b5468bb90b382de5f062e9.jpg');
INSERT INTO `spec_value` VALUES (95, '阳光黄', 2, '2021-10-06 10:21:39.753', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/976b0a5d0c394e609dc487f185b40553.jpg');
INSERT INTO `spec_value` VALUES (96, 'S501', 3, '2021-10-06 13:55:42.477', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/1ea3807043e64201a74a69f42c6bfc97.jpg');
INSERT INTO `spec_value` VALUES (97, 'S502', 3, '2021-10-06 13:55:53.914', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/9d75e88e27034a988792724e7adc3b34.jpg');
INSERT INTO `spec_value` VALUES (98, 'S503', 3, '2021-10-06 13:56:02.302', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/333046492d2c4015892e5d9e3ed29d48.jpg');
INSERT INTO `spec_value` VALUES (99, '祖母绿', 1, '2021-10-06 14:06:20.552', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/749edc9877a446048a14e47f04250c27.jpg');
INSERT INTO `spec_value` VALUES (100, '柠檬黄', 2, '2021-10-06 14:06:37.297', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/d1653dced44c4d53a1eb12b66e434d79.jpg');
INSERT INTO `spec_value` VALUES (101, '深灰色', 1, '2021-10-06 14:08:02.335', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/004a0360241a4043b79aec06f61549c1.jpg');
INSERT INTO `spec_value` VALUES (102, '水晶灰', 2, '2021-10-06 14:08:12.918', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/f4d59eb950b24f3eb9f9ad3a51450b1c.jpg');
INSERT INTO `spec_value` VALUES (103, '宝石蓝', 1, '2021-10-06 14:09:03.042', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/097f7bdc29f640b7a51adffe47dc1643.jpg');
INSERT INTO `spec_value` VALUES (104, '少女粉', 1, '2021-10-06 14:09:57.897', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/073a1ff0da3c4dd58d86254903668450.jpg');
INSERT INTO `spec_value` VALUES (105, '孔雀蓝', 1, '2021-10-06 14:10:38.930', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/8e1a2814b31840d9b8e48093eefa1aae.jpg');
INSERT INTO `spec_value` VALUES (106, 'M-1', 3, '2021-10-06 14:55:41.159', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/79851b53167b4340a0c1957442c4d751.jpg');
INSERT INTO `spec_value` VALUES (107, 'M-2', 3, '2021-10-06 14:55:50.726', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/34c6598ea4034036869bad4486e69aec.jpg');
INSERT INTO `spec_value` VALUES (108, '墨绿色', 5, '2021-10-06 14:57:18.247', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/04f691ac8abc49569334656686abeeaa.jpg');
INSERT INTO `spec_value` VALUES (109, '浅灰色', 5, '2021-10-06 14:57:30.281', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/18deb4866f5d4382abda84cbdb51ef76.jpg');
INSERT INTO `spec_value` VALUES (110, '深灰色', 5, '2021-10-06 14:57:40.758', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/f1b71ac7678f4e2a8eb6775763602015.jpg');
INSERT INTO `spec_value` VALUES (111, '深蓝色', 5, '2021-10-06 14:57:50.420', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/161375298e2147669f1ac6d7b6a55620.jpg');
INSERT INTO `spec_value` VALUES (112, '棕蓝色', 5, '2021-10-06 17:01:16.179', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/d4e42500c1744769a9c5e54f365e8a2f.jpg');
INSERT INTO `spec_value` VALUES (113, '蔷薇粉', 5, '2021-10-06 17:01:31.884', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/284562840fce4f6aac4fd1bf9f34a66c.jpg');
INSERT INTO `spec_value` VALUES (114, '233', 3, '2021-10-06 17:01:55.166', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/257b08602d45403eb2ebd13ced664768.jpg');
INSERT INTO `spec_value` VALUES (115, '907', 3, '2021-10-06 17:02:03.319', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/06/4638f1c4ac1d4ab388ec4c7296f16cd6.jpg');
INSERT INTO `spec_value` VALUES (116, 'M168-8', 1, '2021-10-07 08:57:53.974', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/e8eea4d1219442c98f00c8af9b85ffbd.jpg');
INSERT INTO `spec_value` VALUES (117, 'M168-13', 2, '2021-10-07 08:58:11.617', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/0835de3e55c241ada1cc6bc446790025.jpg');
INSERT INTO `spec_value` VALUES (118, 'M312-5', 3, '2021-10-07 08:58:26.519', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/1283a229d7ef4683bef38c9bc67153ea.jpg');
INSERT INTO `spec_value` VALUES (119, 'M168-11', 1, '2021-10-07 09:03:24.434', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/af4631775ace411c801272ef8e122e59.jpg');
INSERT INTO `spec_value` VALUES (120, 'M168-14', 2, '2021-10-07 09:03:40.989', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/0088873ec2c043759b9e85f3917d153e.jpg');
INSERT INTO `spec_value` VALUES (121, 'M312-6', 3, '2021-10-07 09:03:53.342', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/dd3cfa8a7b254d8191b1e90fc681ce66.jpg');
INSERT INTO `spec_value` VALUES (122, 'M168-7', 1, '2021-10-07 09:08:10.500', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/4888a427ce8b47d5baba9094ef394ef3.jpg');
INSERT INTO `spec_value` VALUES (123, 'M168-5', 2, '2021-10-07 09:08:22.757', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/41462283105549c5aee4784fb50f64a8.jpg');
INSERT INTO `spec_value` VALUES (124, 'M312-1', 3, '2021-10-07 09:08:32.582', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/152568adcc0548c5a9898d5915717e3a.jpg');
INSERT INTO `spec_value` VALUES (125, 'M168-3', 1, '2021-10-07 09:11:29.206', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/c87a50dc3e07478d90114c1fe97498b3.jpg');
INSERT INTO `spec_value` VALUES (126, 'M168-9', 2, '2021-10-07 09:11:42.682', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/4b47da87b1194479974356fa86756c42.jpg');
INSERT INTO `spec_value` VALUES (127, 'M168-5', 1, '2021-10-07 09:12:39.290', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/41462283105549c5aee4784fb50f64a8.jpg');
INSERT INTO `spec_value` VALUES (128, '月光银', 1, '2021-10-07 09:53:02.572', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg');
INSERT INTO `spec_value` VALUES (129, '靓丽黄', 2, '2021-10-07 09:53:20.061', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/d7d35919d4a34a6e8c4a7a34d5850e1e.jpg');
INSERT INTO `spec_value` VALUES (130, '深湖蓝', 1, '2021-10-07 09:59:18.792', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/e73fa5423b29448aac69763fc2c3f255.jpg');
INSERT INTO `spec_value` VALUES (131, '月光银', 2, '2021-10-07 09:59:35.885', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg');
INSERT INTO `spec_value` VALUES (132, '幻影灰', 1, '2021-10-07 10:05:11.081', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/78652fb68a9c4100a35f95a9ee7bdfda.jpg');
INSERT INTO `spec_value` VALUES (133, '珠光白', 2, '2021-10-07 10:05:25.140', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f3fe6ad6f92945ec8071e15d74318cf6.jpg');
INSERT INTO `spec_value` VALUES (134, '森林绿', 1, '2021-10-07 10:07:23.064', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/7f718b05180c404a87af81248d4fac42.jpg');
INSERT INTO `spec_value` VALUES (135, '柔和蓝', 1, '2021-10-07 10:09:08.434', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/0f649d9c748046f9907f97bcc0510890.jpg');
INSERT INTO `spec_value` VALUES (136, 'M5168-12', 1, '2021-10-07 10:38:11.357', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/a75428ff7b3646a1ba0456cdde2a024c.jpg');
INSERT INTO `spec_value` VALUES (137, 'M5168-8', 2, '2021-10-07 10:38:24.962', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/abaccb80f93840c898275e53d40bfba2.jpg');
INSERT INTO `spec_value` VALUES (138, 'M5168-20', 1, '2021-10-07 10:42:56.051', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/2eae53c623af4c93b5623c40bc6c9a69.jpg');
INSERT INTO `spec_value` VALUES (139, 'M5168-7', 2, '2021-10-07 10:43:09.109', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/4b650da5c673426ab987cd91324acd58.jpg');
INSERT INTO `spec_value` VALUES (140, 'M5168-2', 1, '2021-10-07 10:47:16.486', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/d90d25b8203b4fdcbd05dd182a6ac61a.jpg');
INSERT INTO `spec_value` VALUES (141, 'M5168-1', 2, '2021-10-07 10:47:28.813', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/11c9a62cef6144839533b3c60a2ce285.jpg');
INSERT INTO `spec_value` VALUES (142, 'M5168-14', 1, '2021-10-07 10:49:41.362', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/751d368724b248b99d5dc076c4c8f2e2.jpg');
INSERT INTO `spec_value` VALUES (143, 'M5168-4', 2, '2021-10-07 10:52:36.830', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/44005af2bc614edead94a2ba7f66cdd4.jpg');
INSERT INTO `spec_value` VALUES (144, '清泉绿', 1, '2021-10-07 12:22:13.839', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/a1d02ef16d3a47d5ae4def63bd09fcfa.jpg');
INSERT INTO `spec_value` VALUES (145, '砖红', 2, '2021-10-07 12:22:25.901', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg');
INSERT INTO `spec_value` VALUES (146, '青瓦灰', 1, '2021-10-07 12:25:40.202', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/116fc732110a47e5bac2d0b30802af54.jpg');
INSERT INTO `spec_value` VALUES (147, '太空灰', 1, '2021-10-07 12:28:16.104', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/d4ac7cf0df1b42a9a88f35b5a84e46ee.jpg');
INSERT INTO `spec_value` VALUES (148, '砖红', 1, '2021-10-07 12:28:54.489', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg');
INSERT INTO `spec_value` VALUES (149, '太空灰', 2, '2021-10-07 12:29:08.357', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/d4ac7cf0df1b42a9a88f35b5a84e46ee.jpg');
INSERT INTO `spec_value` VALUES (150, '波西米亚蓝', 1, '2021-10-07 12:31:56.675', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/708372fcfca942e18d6e5128eda094d1.jpg');
INSERT INTO `spec_value` VALUES (151, '摩登橙', 2, '2021-10-07 12:32:12.132', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/16831df96f604f4fa6d4586b819ce109.jpg');
INSERT INTO `spec_value` VALUES (152, '象牙白', 2, '2021-10-07 13:11:11.249', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/dd639342da8142c0aa3850f872e3596c.jpg');
INSERT INTO `spec_value` VALUES (153, '摩洛哥蓝', 1, '2021-10-07 13:15:35.670', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/efe2798b34554d9a986df1ae9b511c75.jpg');
INSERT INTO `spec_value` VALUES (154, '高级灰', 2, '2021-10-07 13:15:47.154', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/e0898023114241068b2c61800cc32118.jpg');
INSERT INTO `spec_value` VALUES (155, '高级灰', 1, '2021-10-07 13:17:56.985', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/e0898023114241068b2c61800cc32118.jpg');
INSERT INTO `spec_value` VALUES (156, '奶油黄', 2, '2021-10-07 13:18:09.218', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/7a4a3bd04e35488c945acf4ee1995795.jpg');
INSERT INTO `spec_value` VALUES (157, '香芋紫', 1, '2021-10-07 13:20:09.379', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/8d3adea623d5420083641d455fb7ac0b.jpg');
INSERT INTO `spec_value` VALUES (158, '蒂芙尼灰', 1, '2021-10-07 13:23:29.282', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/09bee7dbfd0e4404bc33135961bf9e7f.jpg');
INSERT INTO `spec_value` VALUES (159, '苔藓绿', 2, '2021-10-07 13:23:45.061', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/2984356b0e214a0690f9c6b2f312e131.jpg');
INSERT INTO `spec_value` VALUES (160, '61007', 1, '2021-10-07 13:47:43.133', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/beabb3610a5a43bfa969acb1e235bcc6.jpg');
INSERT INTO `spec_value` VALUES (161, '61004', 2, '2021-10-07 13:47:53.666', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/5214e46aca8c43319fca7e9fea4bc0f7.jpg');
INSERT INTO `spec_value` VALUES (162, '610016', 1, '2021-10-07 13:52:03.870', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/5790ce02cfd74bc2bb86826831a14952.jpg');
INSERT INTO `spec_value` VALUES (163, '61002', 2, '2021-10-07 13:52:20.646', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/0591018cb52b401c92549ed24dc471de.jpg');
INSERT INTO `spec_value` VALUES (164, '61005', 1, '2021-10-07 13:54:47.203', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/84e794c5c51540acb88093a96b9f33cc.jpg');
INSERT INTO `spec_value` VALUES (165, '610017', 1, '2021-10-07 13:57:00.736', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/5e6ac3e3ebbf48b4b89faa4e72a70c4d.jpg');
INSERT INTO `spec_value` VALUES (166, '610012', 1, '2021-10-07 14:00:11.218', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/dfe16339057442c294d6745089ef991f.jpg');
INSERT INTO `spec_value` VALUES (167, 'A211-11', 1, '2021-10-07 14:32:42.536', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/bf75bfe1380d430893ff40ee97bcfdbd.jpg');
INSERT INTO `spec_value` VALUES (168, 'A211-4', 2, '2021-10-07 14:32:55.663', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/5e6238c3b6ce422582889141e8511d27.jpg');
INSERT INTO `spec_value` VALUES (169, 'A211-10', 1, '2021-10-07 14:44:58.059', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/6d3466a55b8648d48ecc2c1efbb78bd6.jpg');
INSERT INTO `spec_value` VALUES (170, 'A211-10', 2, '2021-10-07 14:45:06.806', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/6d3466a55b8648d48ecc2c1efbb78bd6.jpg');
INSERT INTO `spec_value` VALUES (171, 'A211-4', 1, '2021-10-07 14:48:02.634', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/5e6238c3b6ce422582889141e8511d27.jpg');
INSERT INTO `spec_value` VALUES (172, 'A211-14', 2, '2021-10-07 14:48:15.501', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/ebdf8265009d43b9a838eaf055d23285.jpg');
INSERT INTO `spec_value` VALUES (173, 'A211-2', 1, '2021-10-07 14:51:00.389', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/c1f348fa88db4d0e922d7ea3fedffd64.jpg');
INSERT INTO `spec_value` VALUES (174, 'A211-1', 2, '2021-10-07 14:51:13.929', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/8d3d6cc8ca4f4ff4b0da6e35483f7f31.jpg');
INSERT INTO `spec_value` VALUES (175, 'A211-8', 1, '2021-10-07 15:07:05.846', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/6a367b23907842ba95c41c8eb1ce2314.jpg');
INSERT INTO `spec_value` VALUES (176, '孔雀绿', 1, '2021-10-07 15:50:02.920', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/396336e934d844478c111db91761e23e.jpg');
INSERT INTO `spec_value` VALUES (177, '烟灰色', 2, '2021-10-07 15:50:15.151', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg');
INSERT INTO `spec_value` VALUES (178, '天空蓝', 1, '2021-10-07 15:51:11.382', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/b6b130d7f38341ac83938d36f90c77ee.jpg');
INSERT INTO `spec_value` VALUES (179, '羚羊米', 2, '2021-10-07 15:51:25.499', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f34383774cb4499a9f131ca93d91cd04.jpg');
INSERT INTO `spec_value` VALUES (180, '烟灰色', 1, '2021-10-07 15:52:02.914', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg');
INSERT INTO `spec_value` VALUES (181, '牛仔蓝', 2, '2021-10-07 15:52:14.658', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f470301914c745209c72f58b0ac61999.jpg');
INSERT INTO `spec_value` VALUES (182, '羚羊米', 1, '2021-10-07 15:53:00.988', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f34383774cb4499a9f131ca93d91cd04.jpg');
INSERT INTO `spec_value` VALUES (183, '钢灰色', 2, '2021-10-07 15:53:13.528', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/e15b98c264714954a3c58825bef0b079.jpg');
INSERT INTO `spec_value` VALUES (184, '蓝鸟色', 1, '2021-10-07 15:53:55.276', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/3bac9325c8e646f5a7705630697409d4.jpg');
INSERT INTO `spec_value` VALUES (185, '海军蓝', 1, '2021-10-07 16:32:43.225', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f77798cf0d1a4e738aa09351fc353492.jpg');
INSERT INTO `spec_value` VALUES (186, '米白色', 2, '2021-10-07 16:33:25.310', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/690a160fc6124c3da92b7960e823ac9f.jpg');
INSERT INTO `spec_value` VALUES (187, '爱马仕橙', 2, '2021-10-07 16:36:19.188', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/7c1b7211cff34515aaea9abec2817bff.jpg');
INSERT INTO `spec_value` VALUES (188, '冰川灰', 1, '2021-10-07 16:39:52.711', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/07/f03d5720cb294b8c9d54686fc2d599ad.jpg');
INSERT INTO `spec_value` VALUES (189, '平方米', 6, '2021-10-08 12:56:22.807', '2021-10-08 12:56:22.807', NULL, '', '');
INSERT INTO `spec_value` VALUES (190, '6502', 5, '2021-10-08 12:58:38.949', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/2b37ff847f764c57a9fb5792fad39606.jpg');
INSERT INTO `spec_value` VALUES (191, '6503', 5, '2021-10-08 12:58:48.852', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/ffe048aa39234a3eb699c7775fce4688.jpg');
INSERT INTO `spec_value` VALUES (192, '6504', 5, '2021-10-08 12:58:57.719', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/e274357bd49d41ec82709bdd605992bc.jpg');
INSERT INTO `spec_value` VALUES (193, '6507', 5, '2021-10-08 12:59:18.520', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/ff0ec27b0a5f45dbb62d547e19cabda4.jpg');
INSERT INTO `spec_value` VALUES (194, '4503', 5, '2021-10-08 13:09:52.438', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/aaf9e737143e404b92411017fd414709.jpg');
INSERT INTO `spec_value` VALUES (195, '4505', 5, '2021-10-08 13:10:02.639', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/0f56ed7b66a94ed486a4dec69ab462d6.jpg');
INSERT INTO `spec_value` VALUES (196, '4506', 5, '2021-10-08 13:10:10.479', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/2560e938573e4bd7956f593f3e251dc6.jpg');
INSERT INTO `spec_value` VALUES (197, '4507', 5, '2021-10-08 13:10:18.248', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/59502b3e2568421b95393384a5d28cf9.jpg');
INSERT INTO `spec_value` VALUES (198, '宽/米', 6, '2021-10-08 13:29:08.881', '2021-10-08 13:29:08.881', NULL, '', '');
INSERT INTO `spec_value` VALUES (199, 'A-160', 5, '2021-10-08 14:28:40.080', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/91cdfcb59dae4fd5b948c4b81014e60a.jpg');
INSERT INTO `spec_value` VALUES (200, 'A-171', 5, '2021-10-08 14:28:49.629', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/9a325afbb948448babff176cb443d447.jpg');
INSERT INTO `spec_value` VALUES (201, 'A-174', 5, '2021-10-08 14:29:01.249', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/c2db8cb0b7c64281b09ca5cf30e9e278.jpg');
INSERT INTO `spec_value` VALUES (202, 'A-184', 5, '2021-10-08 14:29:10.381', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/76804a53ade348898a7d84d84782362d.jpg');
INSERT INTO `spec_value` VALUES (203, 'A-189', 5, '2021-10-08 14:29:19.939', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/d2f72e7150594f37a30771b08fe838f7.jpg');
INSERT INTO `spec_value` VALUES (204, 'F2-蓝色', 7, '2021-10-08 15:03:58.841', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/90d0cc9c6e4b4fb3b10dc774b16d0f4a.jpg');
INSERT INTO `spec_value` VALUES (205, 'F3-粉色', 7, '2021-10-08 15:04:09.140', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/6e30a1e171a9435db61e4e7445bc19f8.jpg');
INSERT INTO `spec_value` VALUES (206, 'F6-咖色', 7, '2021-10-08 15:04:18.529', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/b4ea566d6872415780384e76ea9fe6cc.jpg');
INSERT INTO `spec_value` VALUES (207, '贴绒-咖纱', 7, '2021-10-08 15:04:29.359', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/ccadf1314c7d4f568e93f06a467c3b53.jpg');
INSERT INTO `spec_value` VALUES (208, '羽毛纱-蓝边', 7, '2021-10-08 15:04:38.321', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/0159e9b2eeb847aca156e24e2732f6b2.jpg');
INSERT INTO `spec_value` VALUES (209, '棕色', 5, '2021-10-08 15:48:32.256', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/ae895990c43e4b1c931e4f14f4b78e53.jpg');
INSERT INTO `spec_value` VALUES (210, '深咖色', 5, '2021-10-08 15:48:41.560', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/08/eaa99ac8d93c4cf2b2359e2a583a880e.jpg');
INSERT INTO `spec_value` VALUES (211, 'S901', 7, '2021-10-09 08:43:30.088', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/09/754d8f2fce0f476f92d76c753280fdf4.jpg');
INSERT INTO `spec_value` VALUES (212, 'S902', 7, '2021-10-09 08:43:38.333', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/09/b43e28e2125e4b5a8e9b91f034bebff7.jpg');
INSERT INTO `spec_value` VALUES (213, 'S903', 7, '2021-10-09 08:43:47.146', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/09/28579d319ce34df2a0d4d735b9fce34e.jpg');
INSERT INTO `spec_value` VALUES (214, 'S904', 7, '2021-10-09 08:43:56.931', '2021-10-19 15:34:41.089', NULL, '', 'http://localhost:8092/assets/2021/10/09/f808deb8697a4577a4bda5468c398b52.jpg');
INSERT INTO `spec_value` VALUES (215, '浅蓝色', 5, '2021-10-27 19:11:25.048', '2021-10-27 19:11:25.048', NULL, '', 'http://localhost:8092/assets/2021/10/27/9f92c82fa45e42e68392b0a84a128b42.jpg');

-- ----------------------------
-- Table structure for spu
-- ----------------------------
DROP TABLE IF EXISTS `spu`;
CREATE TABLE `spu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subtitle` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `root_category_id` int(11) NULL DEFAULT NULL,
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文本型价格，有时候SPU需要展示的是一个范围，或者自定义平均价格',
  `sketch_spec_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '某种规格可以直接附加单品图片',
  `default_sku_id` int(11) NULL DEFAULT NULL COMMENT '默认选中的sku',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discount_price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tags` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_test` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `spu_theme_img` json NULL,
  `for_theme_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu
-- ----------------------------
INSERT INTO `spu` VALUES (29, '无缝拼接 90%遮光布帘 1.2.2 center ', '低调与奢华的碰撞，简约与精致的融合', 10, 1, 1, '2021-10-04 18:17:05.238', '2021-10-19 15:34:41.322', NULL, '155', 1, NULL, 'http://localhost:8092/assets/2021/10/05/3c7f11b0e4684063ab9193520bdb19b5.jpg', '130', NULL, '棉麻$免烫$免定型', 0, NULL, 'http://localhost:8092/assets/2021/10/05/3c7f11b0e4684063ab9193520bdb19b5.jpg');
INSERT INTO `spu` VALUES (30, '素色拼接遮光布帘 1.2.2 left', '从此生活平淡无奇，与世无争。但这种平静的生活就像夜晚的睡眠，带有更多的孤独和沮丧', 10, 1, 1, '2021-10-05 12:22:29.721', '2021-10-19 15:34:41.322', NULL, '132', NULL, NULL, 'http://localhost:8092/assets/2021/10/05/e613699ffddd4bc6b640a47b66146afd.jpg', NULL, NULL, '创意$生活', 0, NULL, 'http://localhost:8092/assets/2021/10/05/e613699ffddd4bc6b640a47b66146afd.jpg');
INSERT INTO `spu` VALUES (31, '潮流视觉 轻奢生活 素色拼接遮光布帘 1.2.2 right', '触手可及的品味生活 让你的生活充满艺术色彩', 10, 1, 1, '2021-10-05 14:39:52.784', '2021-10-19 15:34:41.322', NULL, '132', NULL, NULL, 'http://localhost:8092/assets/2021/10/13/eb2e715e80cd4db888e0b07b1e9dcf37.jpg', '130', NULL, '潮流$轻奢', 0, NULL, 'http://localhost:8092/assets/2021/10/13/eb2e715e80cd4db888e0b07b1e9dcf37.jpg');
INSERT INTO `spu` VALUES (32, '尊贵生活 经典品味 • 棉麻素色遮光布帘 1.2.1', '时间流逝，唯经典之作得以长传于世，融汇千百年来的纺织品精品之神秀灵气，成就了尊贵生活的经典品味！', 10, 1, 1, '2021-10-06 08:59:28.972', '2021-10-19 15:34:41.322', NULL, '145', NULL, NULL, 'http://localhost:8092/assets/2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg', '135', NULL, '尊贵生活$经典品味', 0, NULL, 'http://localhost:8092/assets/2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg');
INSERT INTO `spu` VALUES (33, '步步高升 镂空绣花布帘 1.1.1', '前卫的色彩与质感纯厚的设计，既有无边际的浩瀚又有卓尔不群的高冷', 42, 1, 1, '2021-10-06 13:44:57.351', '2021-10-19 15:34:41.322', NULL, '140', NULL, NULL, 'http://localhost:8092/assets/2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', '', NULL, '前卫$质感纯厚', 0, NULL, 'http://localhost:8092/assets/2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg');
INSERT INTO `spu` VALUES (34, '水绒绣花布帘 1.1.2 AA-115-B47', '不管是单色还是拼色又或是图案印花，窗帘总能成为家居生活中一道靓丽的风景线', 42, 1, 1, '2021-10-06 14:40:13.188', '2021-10-19 15:34:41.322', NULL, '140', NULL, NULL, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', NULL, NULL, '精致简约$透气性好', 0, NULL, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg');
INSERT INTO `spu` VALUES (35, '大圆波幔高端提花布帘 1.2.3 right', '每个人心中都有一个属于自己的世界，但最终我们会一起追逐信仰', 41, 1, 1, '2021-10-06 16:51:40.456', '2021-10-19 15:34:41.322', NULL, '120', NULL, NULL, 'http://localhost:8092/assets/2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg', NULL, NULL, '简约$大方$典雅', 0, NULL, 'http://localhost:8092/assets/2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg');
INSERT INTO `spu` VALUES (36, '左右素色拼接遮光布帘 • 柔性丝绸棉 2.left.1 right', '灵感的触动和设计的完美结合，营造出鲜活的风格，让您的生活更有品味', 10, 1, 1, '2021-10-07 08:49:35.691', '2021-10-19 15:34:41.322', NULL, '122', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg', NULL, NULL, '轻奢', 0, NULL, 'http://localhost:8092/assets/2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg');
INSERT INTO `spu` VALUES (37, '时尚风格 婴儿绒提花布帘 2.left.2 right', '流光不负，岁月不浪漫，一份深爱，只有戒指在等待。花粉黄花长，夜露珠长，千里相思只愿把思念寄予明月', 41, 1, 1, '2021-10-07 09:45:38.916', '2021-10-19 15:34:41.322', NULL, '120', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', NULL, NULL, '时尚风向', 0, NULL, 'http://localhost:8092/assets/2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg');
INSERT INTO `spu` VALUES (38, '天然进口彩棉 素色拼接遮光布帘 2.right.1 right', '手工上色的图案设计，以优雅的本土元素与休闲、大方、优雅、倩丽的花感图案相结合，给人一种回归自然的渴望，这是甜的感觉，没有腻烦的感觉', 10, 1, 1, '2021-10-07 10:30:02.555', '2021-10-19 15:34:41.322', NULL, '130', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/cc25d5243d174f18ad659f184696689d.jpg', NULL, NULL, '休闲$优雅', 0, NULL, 'http://localhost:8092/assets/2021/10/07/cc25d5243d174f18ad659f184696689d.jpg');
INSERT INTO `spu` VALUES (39, '都市生活 素色拼接遮光布帘 2.right.2.1 center', '时光总是对简单质朴的事物格外优待，换一个细节，换一种通途，让家呈现别出心裁的美感。', 10, 1, 1, '2021-10-07 12:14:47.823', '2021-10-19 15:34:41.322', NULL, '120', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg', NULL, NULL, '潮流视觉$都市新贵', 0, NULL, 'http://localhost:8092/assets/2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg');
INSERT INTO `spu` VALUES (40, '轻奢韵味 镂空高级水绒绣花布帘 2.right.2.2 right', '窗帘就像一幅美丽的图画，静静地挂在那里，色彩温暖而自然，是城市里一道永恒的优雅风景', 42, 1, 1, '2021-10-07 13:02:27.340', '2021-10-19 15:34:41.322', NULL, '125', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg', NULL, NULL, '现代$时尚$轻奢', 0, NULL, 'http://localhost:8092/assets/2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg');
INSERT INTO `spu` VALUES (41, '水晶雪尼尔无缝全遮光 2.right.2.3 center', '浪漫与理性交织，兼容并蓄，脱俗出众，注生品味的原创，流露出尊贵悠闲的风范', 10, 1, 1, '2021-10-07 13:43:45.597', '2021-10-19 15:34:41.322', NULL, '140', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg', NULL, NULL, '简奢$艺术', 0, NULL, 'http://localhost:8092/assets/2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg');
INSERT INTO `spu` VALUES (42, '面料美学 素色拼接90%遮光布帘 2.right.3.1 behind', '正面精密底纹，反面香奈儿纹理，双面统一，遮光效果好，手感极佳，垂感柔顺，免定型，自然地垂感才是真的美', 10, 1, 1, '2021-10-07 14:22:30.133', '2021-10-19 15:34:41.322', NULL, '120', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', NULL, NULL, '面料美学', 0, NULL, 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg');
INSERT INTO `spu` VALUES (43, '全屋定制 轻奢系列 水绒绣花布帘 2.right.4.2 right', '布艺窗帘的中式元素演绎出法国文化故事，依然是一股抹不掉的灵动气韵', 42, 1, 1, '2021-10-07 15:39:50.687', '2021-10-19 15:34:41.322', NULL, '130', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg', '128', NULL, '全屋定制$轻奢系列', 0, NULL, 'http://localhost:8092/assets/2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg');
INSERT INTO `spu` VALUES (44, '品味自然原色 高端镂空绣花布帘 2.right.4.3 center', '于优雅的气质格调中酝酿着温情慢慢的安宁时光，再搭配些展现品味的艺术装饰品，整个空间将会十分诱人', 10, 1, 1, '2021-10-07 16:19:33.668', '2021-10-19 15:34:41.322', NULL, '123', NULL, NULL, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', NULL, NULL, '品味自然$婉约', 0, NULL, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg');
INSERT INTO `spu` VALUES (45, '铝合金百叶窗帘', '铝合金百叶窗帘免打孔内置卷拉式卫生间厨房浴室防水遮光升降百叶帘', 12, 2, 1, '2021-10-08 12:35:03.157', '2021-10-19 15:34:41.322', NULL, '77', NULL, NULL, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', NULL, NULL, '百叶帘', 0, NULL, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg');
INSERT INTO `spu` VALUES (46, '高分子百叶窗帘', '高分子百叶窗帘风刮不响升降开合百叶帘', 14, 2, 1, '2021-10-08 12:41:37.380', '2021-10-19 15:34:41.322', NULL, '85', NULL, NULL, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', NULL, NULL, '高分子', 0, NULL, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg');
INSERT INTO `spu` VALUES (47, '遮光 & 柔光 精品防水柔纱帘', '轻纱曼影，布艺温馨，柔纱帘特有的温柔触感，将浪漫主义与现实主义美好结合', 35, 4, 1, '2021-10-08 14:20:11.965', '2021-10-19 15:34:41.322', NULL, '50', NULL, NULL, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', NULL, NULL, '遮光$柔光', 0, NULL, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg');
INSERT INTO `spu` VALUES (48, '百搭绣花纱系列', '时光的剪影里，暖了多少相遇，又惆怅了多少离别', 43, 1, 1, '2021-10-08 14:53:01.280', '2021-10-19 15:34:41.322', NULL, '30', NULL, NULL, 'http://localhost:8092/assets/2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg', NULL, NULL, '精湛工艺$轻奢生活', 0, NULL, 'http://localhost:8092/assets/2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg');
INSERT INTO `spu` VALUES (49, '现代简约罗马扇形帘', '适合小窗、窄窗使用，不占控件，不影响房内物品的摆放，给窗户装饰更多了一份层次感', 17, 3, 1, '2021-10-08 15:46:13.241', '2021-10-19 15:34:41.322', NULL, '120', NULL, NULL, 'http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg', NULL, NULL, '节省空间$方便打理', 0, NULL, 'http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg');
INSERT INTO `spu` VALUES (50, '精工细作 精品竹帘', '幽幽竹香，体现文化品位，为你精心打造生活的唯美控件、朴实典雅、古色古香，让你在都市的喧哗中感受古典情怀', 36, 5, 1, '2021-10-09 08:42:38.219', '2021-10-19 15:34:41.322', NULL, '90', NULL, NULL, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', NULL, NULL, '绿色环保$高温定型', 0, NULL, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg');
INSERT INTO `spu` VALUES (51, '遮阳电动顶棚帘', '遮阳天窗 蜂巢设计 遮光隔热 拉动闭合 伸缩拉杆', 32, 6, 1, '2021-10-09 09:09:31.841', '2021-10-19 15:34:41.322', NULL, '110', NULL, NULL, 'http://localhost:8092/assets/2021/10/09/361ce3278d164dee9846d6705c1485cf.jpg', NULL, NULL, '遮光隔热$拉动闭合', 0, NULL, 'http://localhost:8092/assets/2021/10/09/361ce3278d164dee9846d6705c1485cf.jpg');
INSERT INTO `spu` VALUES (52, '测试数据（可支付）', '测试商品（不发货）', 45, 44, 1, '2021-10-27 19:17:23.466', '2021-10-27 19:19:16.025', NULL, '0.1', NULL, NULL, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', NULL, NULL, '测试', 0, NULL, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg');

-- ----------------------------
-- Table structure for spu_detail_img
-- ----------------------------
DROP TABLE IF EXISTS `spu_detail_img`;
CREATE TABLE `spu_detail_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `spu_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 593 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_detail_img
-- ----------------------------
INSERT INTO `spu_detail_img` VALUES (468, 'http://localhost:8092/assets/2021/10/05/a9614544fbbb4a8ca0139ff6da583966.jpg', 30, 0, '2021-10-08 13:29:41.779', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (469, 'http://localhost:8092/assets/2021/10/05/51d2e7a58cf04edfaf4b83ebd74f6ecd.jpg', 30, 1, '2021-10-08 13:29:41.780', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (470, 'http://localhost:8092/assets/2021/10/05/287561f357a24bb097130760440643e6.jpg', 30, 2, '2021-10-08 13:29:41.780', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (471, 'http://localhost:8092/assets/2021/10/05/c51d5384d6a24433ba4a484cd3b2326a.jpg', 30, 3, '2021-10-08 13:29:41.780', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (472, 'http://localhost:8092/assets/2021/10/05/e937ae16a6e042dd910bed7f89c799f6.jpg', 30, 4, '2021-10-08 13:29:41.780', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (478, 'http://localhost:8092/assets/2021/10/06/109d0de4aef04abe9573469f305678ed.jpg', 32, 0, '2021-10-08 13:30:08.413', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (479, 'http://localhost:8092/assets/2021/10/06/fa3f5ba943d0447d8e279eaeee067e8f.jpg', 32, 1, '2021-10-08 13:30:08.413', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (480, 'http://localhost:8092/assets/2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg', 32, 2, '2021-10-08 13:30:08.413', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (481, 'http://localhost:8092/assets/2021/10/06/47328de2e73640eaba0622df791d8c79.jpg', 32, 3, '2021-10-08 13:30:08.413', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (482, 'http://localhost:8092/assets/2021/10/06/c3a9efbecbc545c8979b1b85fc921ff8.jpg', 32, 4, '2021-10-08 13:30:08.413', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (483, 'http://localhost:8092/assets/2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', 33, 0, '2021-10-08 13:30:21.045', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (484, 'http://localhost:8092/assets/2021/10/06/8c50e432fdd44c49b7a167d909311026.jpg', 33, 1, '2021-10-08 13:30:21.045', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (485, 'http://localhost:8092/assets/2021/10/06/fc75e0f09fc14805abcd797cf6aeb3f1.jpg', 33, 2, '2021-10-08 13:30:21.045', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (486, 'http://localhost:8092/assets/2021/10/06/450a430074cc495986690c6ff9246d03.jpg', 33, 3, '2021-10-08 13:30:21.045', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (487, 'http://localhost:8092/assets/2021/10/06/25c213be33884846958bac626634a883.jpg', 33, 4, '2021-10-08 13:30:21.045', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (488, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', 34, 0, '2021-10-08 13:30:37.807', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (489, 'http://localhost:8092/assets/2021/10/06/519f9fb8706b4901918d18f75859beac.jpg', 34, 1, '2021-10-08 13:30:37.807', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (490, 'http://localhost:8092/assets/2021/10/06/bffd1315845f4bf79fb498db080e62a9.jpg', 34, 2, '2021-10-08 13:30:37.807', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (491, 'http://localhost:8092/assets/2021/10/06/945a91ba507049e8bfa77060f6392c18.jpg', 34, 3, '2021-10-08 13:30:37.807', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (492, 'http://localhost:8092/assets/2021/10/06/50155490a99e47ce965774236aeb8050.jpg', 34, 4, '2021-10-08 13:30:37.807', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (493, 'http://localhost:8092/assets/2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg', 35, 0, '2021-10-08 13:30:50.011', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (494, 'http://localhost:8092/assets/2021/10/06/0ac5533aeb5148eeaa0251ca6dddcb05.jpg', 35, 1, '2021-10-08 13:30:50.011', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (495, 'http://localhost:8092/assets/2021/10/06/c1d11ce2e2fa4426add1cc9a5dfb660d.jpg', 35, 2, '2021-10-08 13:30:50.012', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (496, 'http://localhost:8092/assets/2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg', 36, 0, '2021-10-08 13:30:59.604', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (497, 'http://localhost:8092/assets/2021/10/07/524d01ff539547e29cc47e1b604bfd0b.jpg', 36, 1, '2021-10-08 13:30:59.604', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (498, 'http://localhost:8092/assets/2021/10/07/8e10429bd7ae4a83951d3c41f298b224.jpg', 36, 2, '2021-10-08 13:30:59.604', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (499, 'http://localhost:8092/assets/2021/10/07/75d4a0302c994e3d8f4d6688e553a030.jpg', 36, 3, '2021-10-08 13:30:59.604', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (500, 'http://localhost:8092/assets/2021/10/07/36f989e43d844390a10ca8bf2d74d690.jpg', 36, 4, '2021-10-08 13:30:59.604', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (501, 'http://localhost:8092/assets/2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', 37, 0, '2021-10-08 13:31:07.805', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (502, 'http://localhost:8092/assets/2021/10/07/0009be5a603c4106af453ab16dbeb8a3.jpg', 37, 1, '2021-10-08 13:31:07.805', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (503, 'http://localhost:8092/assets/2021/10/07/3aee34a6d1394124ae3c9ee48b12b68f.jpg', 37, 2, '2021-10-08 13:31:07.805', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (504, 'http://localhost:8092/assets/2021/10/07/06877d33424e46f986f1236aa0ad4f59.jpg', 37, 3, '2021-10-08 13:31:07.805', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (505, 'http://localhost:8092/assets/2021/10/07/087f99d2e10e4927b8d9d10acb7e457b.jpg', 37, 4, '2021-10-08 13:31:07.805', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (506, 'http://localhost:8092/assets/2021/10/07/cc25d5243d174f18ad659f184696689d.jpg', 38, 0, '2021-10-08 13:31:17.211', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (507, 'http://localhost:8092/assets/2021/10/07/7238a4e98f124a658cffb932b78e26de.jpg', 38, 1, '2021-10-08 13:31:17.211', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (508, 'http://localhost:8092/assets/2021/10/07/3a8b1c2c3aba4617923a5029263245b0.jpg', 38, 2, '2021-10-08 13:31:17.211', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (509, 'http://localhost:8092/assets/2021/10/07/7af16e93a7a1422193d60025a521faff.jpg', 38, 3, '2021-10-08 13:31:17.211', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (510, 'http://localhost:8092/assets/2021/10/07/2e537ee12a29498ab10fe7186480cdf3.jpg', 38, 4, '2021-10-08 13:31:17.211', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (511, 'http://localhost:8092/assets/2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg', 39, 0, '2021-10-08 13:31:30.149', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (512, 'http://localhost:8092/assets/2021/10/07/9045b8f3fdf749afb52d40bb9d545180.jpg', 39, 1, '2021-10-08 13:31:30.149', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (513, 'http://localhost:8092/assets/2021/10/07/748f98892cad45a481447b198dcbed4a.jpg', 39, 2, '2021-10-08 13:31:30.149', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (514, 'http://localhost:8092/assets/2021/10/07/8fe5f891ee6848b0ab6ed3dac3f53379.jpg', 39, 3, '2021-10-08 13:31:30.149', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (515, 'http://localhost:8092/assets/2021/10/07/b1bad56612a749df8ef133fe9a8076de.jpg', 39, 4, '2021-10-08 13:31:30.150', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (516, 'http://localhost:8092/assets/2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg', 40, 0, '2021-10-08 13:31:39.841', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (517, 'http://localhost:8092/assets/2021/10/07/f34619d6e01f46949ccab56e8414eb1a.jpg', 40, 1, '2021-10-08 13:31:39.841', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (518, 'http://localhost:8092/assets/2021/10/07/4ff37aaaf7ab4f12bb52953a63b6295a.jpg', 40, 2, '2021-10-08 13:31:39.841', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (519, 'http://localhost:8092/assets/2021/10/07/091c657483b842f4bee2ff4366c60c07.jpg', 40, 3, '2021-10-08 13:31:39.841', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (520, 'http://localhost:8092/assets/2021/10/07/33dd9a04cbee4cdaa85c9d5bbeddb899.jpg', 40, 4, '2021-10-08 13:31:39.842', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (521, 'http://localhost:8092/assets/2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg', 41, 0, '2021-10-08 13:31:48.532', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (522, 'http://localhost:8092/assets/2021/10/07/663f5504429345dbbf151b4e16b14ab7.jpg', 41, 1, '2021-10-08 13:31:48.532', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (523, 'http://localhost:8092/assets/2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg', 41, 2, '2021-10-08 13:31:48.532', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (524, 'http://localhost:8092/assets/2021/10/07/d9c8b3f9af8c411a8b3fbd805ddd5dfe.jpg', 41, 3, '2021-10-08 13:31:48.532', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (525, 'http://localhost:8092/assets/2021/10/07/9d8c3dee30e54b9085719d21a4609d38.jpg', 41, 4, '2021-10-08 13:31:48.532', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (526, 'http://localhost:8092/assets/2021/10/07/89c7f2c9fdad4f61bbaed5c69cfa04c8.jpg', 42, 0, '2021-10-08 13:31:58.041', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (527, 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', 42, 1, '2021-10-08 13:31:58.041', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (528, 'http://localhost:8092/assets/2021/10/07/60122517ca54487e952f88e8c31775d9.jpg', 42, 2, '2021-10-08 13:31:58.041', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (529, 'http://localhost:8092/assets/2021/10/07/b13c2e11f3f3494e8b48aa9a4cb96d2c.jpg', 42, 3, '2021-10-08 13:31:58.041', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (530, 'http://localhost:8092/assets/2021/10/07/85ab541aecfc4d078c1e5946ec5ca58f.jpg', 42, 4, '2021-10-08 13:31:58.041', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (531, 'http://localhost:8092/assets/2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg', 43, 0, '2021-10-08 13:32:08.409', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (532, 'http://localhost:8092/assets/2021/10/07/f0f68811e64646408abba31a97f04b34.jpg', 43, 1, '2021-10-08 13:32:08.409', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (533, 'http://localhost:8092/assets/2021/10/07/f74901237f304611ab500a296c24bee0.jpg', 43, 2, '2021-10-08 13:32:08.409', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (534, 'http://localhost:8092/assets/2021/10/07/ae5167c893d742f3b1c22be0db274221.jpg', 43, 3, '2021-10-08 13:32:08.409', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (535, 'http://localhost:8092/assets/2021/10/07/f104dd2922344e3b9242025a2629498c.jpg', 43, 4, '2021-10-08 13:32:08.409', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (536, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', 44, 0, '2021-10-08 13:32:17.167', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (537, 'http://localhost:8092/assets/2021/10/07/d9d012a8354346cc851c4052a3d0d1c2.jpg', 44, 1, '2021-10-08 13:32:17.167', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (538, 'http://localhost:8092/assets/2021/10/07/558dac466c344357803e385b8fce767d.jpg', 44, 2, '2021-10-08 13:32:17.167', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (539, 'http://localhost:8092/assets/2021/10/07/b9879093c7c541e9ad2e457423af5bd3.jpg', 44, 3, '2021-10-08 13:32:17.167', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (540, 'http://localhost:8092/assets/2021/10/07/2cb9644fc8bf41e592aa09181036bfb1.jpg', 44, 4, '2021-10-08 13:32:17.167', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (541, 'http://localhost:8092/assets/2021/10/08/2d78845b05b54753b2b917076169462f.jpg', 47, 0, '2021-10-08 14:20:11.967', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (542, 'http://localhost:8092/assets/2021/10/08/e300869a11da4888aca29fc8ab2872da.jpg', 47, 1, '2021-10-08 14:20:11.967', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (558, 'http://localhost:8092/assets/2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg', 48, 0, '2021-10-08 15:22:58.006', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (559, 'http://localhost:8092/assets/2021/10/08/e47562dc65074bd39af1f280f1547b9b.jpg', 48, 1, '2021-10-08 15:22:58.007', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (560, 'http://localhost:8092/assets/2021/10/08/2f77a057274f47f0aecce9d8e2621e13.jpg', 48, 2, '2021-10-08 15:22:58.007', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (561, 'http://localhost:8092/assets/2021/10/08/026db878f51d41eaa8eb61619df4e1b5.jpg', 48, 3, '2021-10-08 15:22:58.007', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (562, 'http://localhost:8092/assets/2021/10/08/0996acbf232b4ef9868c0e39bd4cae09.jpg', 48, 4, '2021-10-08 15:22:58.007', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (563, 'http://localhost:8092/assets/2021/10/05/3e2a6c998301418fb7dda6e12be95ba2.jpg', 31, 0, '2021-10-13 15:26:44.558', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (564, 'http://localhost:8092/assets/2021/10/05/7bde6878ad5a42048bedae48bff53aa8.jpg', 31, 1, '2021-10-13 15:26:44.559', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (565, 'http://localhost:8092/assets/2021/10/05/14f3b2213ff942f6b904dfc934da4e35.jpg', 31, 2, '2021-10-13 15:26:44.559', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (566, 'http://localhost:8092/assets/2021/10/05/b6a0ab236e7d4676841bf0dee8154677.jpg', 31, 3, '2021-10-13 15:26:44.559', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (567, 'http://localhost:8092/assets/2021/10/05/b2217575b3da47629fc93a7e68c5e36a.jpg', 31, 4, '2021-10-13 15:26:44.559', '2021-10-19 15:34:41.451', NULL);
INSERT INTO `spu_detail_img` VALUES (589, 'http://localhost:8092/assets/2021/10/05/3c7f11b0e4684063ab9193520bdb19b5.jpg', 29, 0, '2021-10-27 19:24:15.940', '2021-10-27 19:24:15.940', NULL);
INSERT INTO `spu_detail_img` VALUES (590, 'http://localhost:8092/assets/2021/10/05/c6f9fa669ac749498801477cfbff48f2.jpg', 29, 1, '2021-10-27 19:24:15.940', '2021-10-27 19:24:15.940', NULL);
INSERT INTO `spu_detail_img` VALUES (591, 'http://localhost:8092/assets/2021/10/05/d29b45c6b5a84259b15628af299a85da.jpg', 29, 2, '2021-10-27 19:24:15.940', '2021-10-27 19:24:15.940', NULL);
INSERT INTO `spu_detail_img` VALUES (592, 'http://localhost:8092/assets/2021/10/05/7a527255fabe4936bb29fac3aa4fdabf.jpg', 29, 3, '2021-10-27 19:24:15.940', '2021-10-27 19:24:15.940', NULL);
INSERT INTO `spu_detail_img` VALUES (593, 'http://localhost:8092/assets/2021/10/05/3a32708f7d2f47efa17f145438e4c1ee.jpg', 29, 4, '2021-10-27 19:24:15.941', '2021-10-27 19:24:15.941', NULL);

-- ----------------------------
-- Table structure for spu_img
-- ----------------------------
DROP TABLE IF EXISTS `spu_img`;
CREATE TABLE `spu_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `spu_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 863 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_img
-- ----------------------------
INSERT INTO `spu_img` VALUES (705, 'http://localhost:8092/assets/2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', 46, NULL, '2021-10-19 15:34:41.571', '2021-10-08 12:52:57.726');
INSERT INTO `spu_img` VALUES (706, 'http://localhost:8092/assets/2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', 45, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:10:34.552');
INSERT INTO `spu_img` VALUES (707, 'http://localhost:8092/assets/2021/10/08/1d58438ae5e743ba88c40cc1d4369493.jpg', 45, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:10:34.552');
INSERT INTO `spu_img` VALUES (708, 'http://localhost:8092/assets/2021/10/08/fe3ae2e89a654fe69b9dcf85e4569303.jpg', 45, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:10:34.552');
INSERT INTO `spu_img` VALUES (714, 'http://localhost:8092/assets/2021/10/05/e613699ffddd4bc6b640a47b66146afd.jpg', 30, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:29:41.777');
INSERT INTO `spu_img` VALUES (715, 'http://localhost:8092/assets/2021/10/05/f386f08526a241568c3c0339bdbd565e.jpg', 30, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:29:41.778');
INSERT INTO `spu_img` VALUES (716, 'http://localhost:8092/assets/2021/10/05/075ab778168841d1af884fe23486ea4e.jpg', 30, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:29:41.778');
INSERT INTO `spu_img` VALUES (717, 'http://localhost:8092/assets/2021/10/05/a9614544fbbb4a8ca0139ff6da583966.jpg', 30, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:29:41.778');
INSERT INTO `spu_img` VALUES (718, 'http://localhost:8092/assets/2021/10/05/51d2e7a58cf04edfaf4b83ebd74f6ecd.jpg', 30, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:29:41.778');
INSERT INTO `spu_img` VALUES (724, 'http://localhost:8092/assets/2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg', 32, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:08.411');
INSERT INTO `spu_img` VALUES (725, 'http://localhost:8092/assets/2021/10/06/fa3f5ba943d0447d8e279eaeee067e8f.jpg', 32, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:08.411');
INSERT INTO `spu_img` VALUES (726, 'http://localhost:8092/assets/2021/10/06/109d0de4aef04abe9573469f305678ed.jpg', 32, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:08.411');
INSERT INTO `spu_img` VALUES (727, 'http://localhost:8092/assets/2021/10/06/47328de2e73640eaba0622df791d8c79.jpg', 32, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:08.411');
INSERT INTO `spu_img` VALUES (728, 'http://localhost:8092/assets/2021/10/06/c3a9efbecbc545c8979b1b85fc921ff8.jpg', 32, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:08.411');
INSERT INTO `spu_img` VALUES (729, 'http://localhost:8092/assets/2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', 33, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:21.043');
INSERT INTO `spu_img` VALUES (730, 'http://localhost:8092/assets/2021/10/06/8c50e432fdd44c49b7a167d909311026.jpg', 33, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:21.043');
INSERT INTO `spu_img` VALUES (731, 'http://localhost:8092/assets/2021/10/06/fc75e0f09fc14805abcd797cf6aeb3f1.jpg', 33, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:21.043');
INSERT INTO `spu_img` VALUES (732, 'http://localhost:8092/assets/2021/10/06/450a430074cc495986690c6ff9246d03.jpg', 33, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:21.043');
INSERT INTO `spu_img` VALUES (733, 'http://localhost:8092/assets/2021/10/06/25c213be33884846958bac626634a883.jpg', 33, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:21.044');
INSERT INTO `spu_img` VALUES (734, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', 34, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:37.805');
INSERT INTO `spu_img` VALUES (735, 'http://localhost:8092/assets/2021/10/06/519f9fb8706b4901918d18f75859beac.jpg', 34, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:37.806');
INSERT INTO `spu_img` VALUES (736, 'http://localhost:8092/assets/2021/10/06/bffd1315845f4bf79fb498db080e62a9.jpg', 34, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:37.806');
INSERT INTO `spu_img` VALUES (737, 'http://localhost:8092/assets/2021/10/06/945a91ba507049e8bfa77060f6392c18.jpg', 34, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:37.806');
INSERT INTO `spu_img` VALUES (738, 'http://localhost:8092/assets/2021/10/06/50155490a99e47ce965774236aeb8050.jpg', 34, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:37.806');
INSERT INTO `spu_img` VALUES (739, 'http://localhost:8092/assets/2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg', 35, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:50.010');
INSERT INTO `spu_img` VALUES (740, 'http://localhost:8092/assets/2021/10/06/0ac5533aeb5148eeaa0251ca6dddcb05.jpg', 35, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:50.010');
INSERT INTO `spu_img` VALUES (741, 'http://localhost:8092/assets/2021/10/06/c1d11ce2e2fa4426add1cc9a5dfb660d.jpg', 35, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:50.010');
INSERT INTO `spu_img` VALUES (742, 'http://localhost:8092/assets/2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg', 36, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:59.602');
INSERT INTO `spu_img` VALUES (743, 'http://localhost:8092/assets/2021/10/07/524d01ff539547e29cc47e1b604bfd0b.jpg', 36, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:59.602');
INSERT INTO `spu_img` VALUES (744, 'http://localhost:8092/assets/2021/10/07/8e10429bd7ae4a83951d3c41f298b224.jpg', 36, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:59.602');
INSERT INTO `spu_img` VALUES (745, 'http://localhost:8092/assets/2021/10/07/75d4a0302c994e3d8f4d6688e553a030.jpg', 36, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:59.603');
INSERT INTO `spu_img` VALUES (746, 'http://localhost:8092/assets/2021/10/07/36f989e43d844390a10ca8bf2d74d690.jpg', 36, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:30:59.603');
INSERT INTO `spu_img` VALUES (747, 'http://localhost:8092/assets/2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', 37, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:07.803');
INSERT INTO `spu_img` VALUES (748, 'http://localhost:8092/assets/2021/10/07/0009be5a603c4106af453ab16dbeb8a3.jpg', 37, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:07.803');
INSERT INTO `spu_img` VALUES (749, 'http://localhost:8092/assets/2021/10/07/3aee34a6d1394124ae3c9ee48b12b68f.jpg', 37, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:07.803');
INSERT INTO `spu_img` VALUES (750, 'http://localhost:8092/assets/2021/10/07/06877d33424e46f986f1236aa0ad4f59.jpg', 37, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:07.804');
INSERT INTO `spu_img` VALUES (751, 'http://localhost:8092/assets/2021/10/07/087f99d2e10e4927b8d9d10acb7e457b.jpg', 37, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:07.804');
INSERT INTO `spu_img` VALUES (752, 'http://localhost:8092/assets/2021/10/07/cc25d5243d174f18ad659f184696689d.jpg', 38, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:17.209');
INSERT INTO `spu_img` VALUES (753, 'http://localhost:8092/assets/2021/10/07/7238a4e98f124a658cffb932b78e26de.jpg', 38, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:17.209');
INSERT INTO `spu_img` VALUES (754, 'http://localhost:8092/assets/2021/10/07/3a8b1c2c3aba4617923a5029263245b0.jpg', 38, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:17.209');
INSERT INTO `spu_img` VALUES (755, 'http://localhost:8092/assets/2021/10/07/7af16e93a7a1422193d60025a521faff.jpg', 38, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:17.209');
INSERT INTO `spu_img` VALUES (756, 'http://localhost:8092/assets/2021/10/07/2e537ee12a29498ab10fe7186480cdf3.jpg', 38, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:17.209');
INSERT INTO `spu_img` VALUES (757, 'http://localhost:8092/assets/2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg', 39, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:30.148');
INSERT INTO `spu_img` VALUES (758, 'http://localhost:8092/assets/2021/10/07/9045b8f3fdf749afb52d40bb9d545180.jpg', 39, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:30.148');
INSERT INTO `spu_img` VALUES (759, 'http://localhost:8092/assets/2021/10/07/748f98892cad45a481447b198dcbed4a.jpg', 39, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:30.148');
INSERT INTO `spu_img` VALUES (760, 'http://localhost:8092/assets/2021/10/07/8fe5f891ee6848b0ab6ed3dac3f53379.jpg', 39, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:30.149');
INSERT INTO `spu_img` VALUES (761, 'http://localhost:8092/assets/2021/10/07/b1bad56612a749df8ef133fe9a8076de.jpg', 39, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:30.149');
INSERT INTO `spu_img` VALUES (762, 'http://localhost:8092/assets/2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg', 40, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:39.839');
INSERT INTO `spu_img` VALUES (763, 'http://localhost:8092/assets/2021/10/07/f34619d6e01f46949ccab56e8414eb1a.jpg', 40, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:39.840');
INSERT INTO `spu_img` VALUES (764, 'http://localhost:8092/assets/2021/10/07/4ff37aaaf7ab4f12bb52953a63b6295a.jpg', 40, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:39.840');
INSERT INTO `spu_img` VALUES (765, 'http://localhost:8092/assets/2021/10/07/091c657483b842f4bee2ff4366c60c07.jpg', 40, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:39.840');
INSERT INTO `spu_img` VALUES (766, 'http://localhost:8092/assets/2021/10/07/33dd9a04cbee4cdaa85c9d5bbeddb899.jpg', 40, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:39.840');
INSERT INTO `spu_img` VALUES (767, 'http://localhost:8092/assets/2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg', 41, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:48.531');
INSERT INTO `spu_img` VALUES (768, 'http://localhost:8092/assets/2021/10/07/663f5504429345dbbf151b4e16b14ab7.jpg', 41, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:48.531');
INSERT INTO `spu_img` VALUES (769, 'http://localhost:8092/assets/2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg', 41, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:48.531');
INSERT INTO `spu_img` VALUES (770, 'http://localhost:8092/assets/2021/10/07/d9c8b3f9af8c411a8b3fbd805ddd5dfe.jpg', 41, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:48.531');
INSERT INTO `spu_img` VALUES (771, 'http://localhost:8092/assets/2021/10/07/9d8c3dee30e54b9085719d21a4609d38.jpg', 41, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:48.531');
INSERT INTO `spu_img` VALUES (772, 'http://localhost:8092/assets/2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', 42, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:58.040');
INSERT INTO `spu_img` VALUES (773, 'http://localhost:8092/assets/2021/10/07/89c7f2c9fdad4f61bbaed5c69cfa04c8.jpg', 42, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:58.040');
INSERT INTO `spu_img` VALUES (774, 'http://localhost:8092/assets/2021/10/07/60122517ca54487e952f88e8c31775d9.jpg', 42, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:58.040');
INSERT INTO `spu_img` VALUES (775, 'http://localhost:8092/assets/2021/10/07/b13c2e11f3f3494e8b48aa9a4cb96d2c.jpg', 42, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:58.040');
INSERT INTO `spu_img` VALUES (776, 'http://localhost:8092/assets/2021/10/07/85ab541aecfc4d078c1e5946ec5ca58f.jpg', 42, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:31:58.040');
INSERT INTO `spu_img` VALUES (777, 'http://localhost:8092/assets/2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg', 43, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:08.407');
INSERT INTO `spu_img` VALUES (778, 'http://localhost:8092/assets/2021/10/07/f0f68811e64646408abba31a97f04b34.jpg', 43, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:08.407');
INSERT INTO `spu_img` VALUES (779, 'http://localhost:8092/assets/2021/10/07/f74901237f304611ab500a296c24bee0.jpg', 43, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:08.407');
INSERT INTO `spu_img` VALUES (780, 'http://localhost:8092/assets/2021/10/07/ae5167c893d742f3b1c22be0db274221.jpg', 43, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:08.408');
INSERT INTO `spu_img` VALUES (781, 'http://localhost:8092/assets/2021/10/07/f104dd2922344e3b9242025a2629498c.jpg', 43, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:08.408');
INSERT INTO `spu_img` VALUES (782, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', 44, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:17.165');
INSERT INTO `spu_img` VALUES (783, 'http://localhost:8092/assets/2021/10/07/d9d012a8354346cc851c4052a3d0d1c2.jpg', 44, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:17.165');
INSERT INTO `spu_img` VALUES (784, 'http://localhost:8092/assets/2021/10/07/558dac466c344357803e385b8fce767d.jpg', 44, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:17.166');
INSERT INTO `spu_img` VALUES (785, 'http://localhost:8092/assets/2021/10/07/b9879093c7c541e9ad2e457423af5bd3.jpg', 44, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:17.166');
INSERT INTO `spu_img` VALUES (786, 'http://localhost:8092/assets/2021/10/07/2cb9644fc8bf41e592aa09181036bfb1.jpg', 44, NULL, '2021-10-19 15:34:41.571', '2021-10-08 13:32:17.166');
INSERT INTO `spu_img` VALUES (787, 'http://localhost:8092/assets/2021/10/08/371f370d6b7f492495300107745f6f94.jpg', 47, NULL, '2021-10-19 15:34:41.571', '2021-10-08 14:20:11.966');
INSERT INTO `spu_img` VALUES (788, 'http://localhost:8092/assets/2021/10/08/411e9c48193c4a209e44c673a8d19b75.jpg', 47, NULL, '2021-10-19 15:34:41.571', '2021-10-08 14:20:11.966');
INSERT INTO `spu_img` VALUES (789, 'http://localhost:8092/assets/2021/10/08/06dc5fe75ce6417198719bd9fe7cbfe0.jpg', 47, NULL, '2021-10-19 15:34:41.571', '2021-10-08 14:20:11.966');
INSERT INTO `spu_img` VALUES (790, 'http://localhost:8092/assets/2021/10/08/750738ff43af42228ea526597ae59394.jpg', 47, NULL, '2021-10-19 15:34:41.571', '2021-10-08 14:20:11.966');
INSERT INTO `spu_img` VALUES (806, 'http://localhost:8092/assets/2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg', 48, NULL, '2021-10-19 15:34:41.571', '2021-10-08 15:22:58.005');
INSERT INTO `spu_img` VALUES (807, 'http://localhost:8092/assets/2021/10/08/e47562dc65074bd39af1f280f1547b9b.jpg', 48, NULL, '2021-10-19 15:34:41.571', '2021-10-08 15:22:58.005');
INSERT INTO `spu_img` VALUES (808, 'http://localhost:8092/assets/2021/10/08/2f77a057274f47f0aecce9d8e2621e13.jpg', 48, NULL, '2021-10-19 15:34:41.571', '2021-10-08 15:22:58.005');
INSERT INTO `spu_img` VALUES (809, 'http://localhost:8092/assets/2021/10/08/026db878f51d41eaa8eb61619df4e1b5.jpg', 48, NULL, '2021-10-19 15:34:41.571', '2021-10-08 15:22:58.005');
INSERT INTO `spu_img` VALUES (810, 'http://localhost:8092/assets/2021/10/08/0996acbf232b4ef9868c0e39bd4cae09.jpg', 48, NULL, '2021-10-19 15:34:41.571', '2021-10-08 15:22:58.005');
INSERT INTO `spu_img` VALUES (819, 'http://localhost:8092/assets/2021/10/13/eb2e715e80cd4db888e0b07b1e9dcf37.jpg', 31, NULL, '2021-10-19 15:34:41.571', '2021-10-13 15:26:44.557');
INSERT INTO `spu_img` VALUES (820, 'http://localhost:8092/assets/2021/10/05/a7e9e8ac49c14bab97f912e49028ef32.jpg', 31, NULL, '2021-10-19 15:34:41.571', '2021-10-13 15:26:44.557');
INSERT INTO `spu_img` VALUES (821, 'http://localhost:8092/assets/2021/10/05/50d6281b05af472fb51503c223da2d90.jpg', 31, NULL, '2021-10-19 15:34:41.571', '2021-10-13 15:26:44.557');
INSERT INTO `spu_img` VALUES (822, 'http://localhost:8092/assets/2021/10/05/1f7ddf0d8aba46ce81b996507842b384.jpg', 31, NULL, '2021-10-19 15:34:41.571', '2021-10-13 15:26:44.557');
INSERT INTO `spu_img` VALUES (823, 'http://localhost:8092/assets/2021/10/05/89dff7334d4841eeab3cd72e617348b8.jpg', 31, NULL, '2021-10-19 15:34:41.571', '2021-10-13 15:26:44.557');
INSERT INTO `spu_img` VALUES (846, 'http://localhost:8092/assets/2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg', 49, NULL, '2021-10-27 19:00:05.159', '2021-10-27 19:00:05.159');
INSERT INTO `spu_img` VALUES (847, 'http://localhost:8092/assets/2021/10/08/70c27eb2e8984bf58f41e9f95adf83cc.jpg', 49, NULL, '2021-10-27 19:00:05.159', '2021-10-27 19:00:05.159');
INSERT INTO `spu_img` VALUES (848, 'http://localhost:8092/assets/2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 50, NULL, '2021-10-27 19:03:22.312', '2021-10-27 19:03:22.312');
INSERT INTO `spu_img` VALUES (852, 'http://localhost:8092/assets/2021/10/05/11f40d2db93548128e9915b361904a34.jpg', 52, NULL, '2021-10-27 19:20:09.082', '2021-10-27 19:17:23.468');
INSERT INTO `spu_img` VALUES (856, 'http://localhost:8092/assets/2021/10/09/361ce3278d164dee9846d6705c1485cf.jpg', 51, NULL, '2021-10-27 19:23:32.459', '2021-10-27 19:23:32.459');
INSERT INTO `spu_img` VALUES (857, 'http://localhost:8092/assets/2021/10/09/ed48ec2d6ecf4445be40a631a8a198ab.jpg', 51, NULL, '2021-10-27 19:23:32.460', '2021-10-27 19:23:32.460');
INSERT INTO `spu_img` VALUES (858, 'http://localhost:8092/assets/2021/10/09/2267875c58a942d9b284516159d2c1ea.jpg', 51, NULL, '2021-10-27 19:23:32.460', '2021-10-27 19:23:32.460');
INSERT INTO `spu_img` VALUES (859, 'http://localhost:8092/assets/2021/10/05/3c7f11b0e4684063ab9193520bdb19b5.jpg', 29, NULL, '2021-10-27 19:24:15.937', '2021-10-27 19:24:15.937');
INSERT INTO `spu_img` VALUES (860, 'http://localhost:8092/assets/2021/10/05/d29b45c6b5a84259b15628af299a85da.jpg', 29, NULL, '2021-10-27 19:24:15.938', '2021-10-27 19:24:15.938');
INSERT INTO `spu_img` VALUES (861, 'http://localhost:8092/assets/2021/10/05/7a527255fabe4936bb29fac3aa4fdabf.jpg', 29, NULL, '2021-10-27 19:24:15.938', '2021-10-27 19:24:15.938');
INSERT INTO `spu_img` VALUES (862, 'http://localhost:8092/assets/2021/10/05/ed23eeff78b448a983c7ecfef6dcd9b7.jpg', 29, NULL, '2021-10-27 19:24:15.938', '2021-10-27 19:24:15.938');
INSERT INTO `spu_img` VALUES (863, 'http://localhost:8092/assets/2021/10/05/97970f73f7db4ad882032a98da7fa477.jpg', 29, NULL, '2021-10-27 19:24:15.938', '2021-10-27 19:24:15.938');

-- ----------------------------
-- Table structure for spu_key
-- ----------------------------
DROP TABLE IF EXISTS `spu_key`;
CREATE TABLE `spu_key`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) UNSIGNED NOT NULL,
  `spec_key_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 355 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_key
-- ----------------------------
INSERT INTO `spu_key` VALUES (252, 46, 5);
INSERT INTO `spu_key` VALUES (253, 46, 6);
INSERT INTO `spu_key` VALUES (254, 45, 5);
INSERT INTO `spu_key` VALUES (255, 45, 6);
INSERT INTO `spu_key` VALUES (261, 30, 1);
INSERT INTO `spu_key` VALUES (262, 30, 2);
INSERT INTO `spu_key` VALUES (263, 30, 6);
INSERT INTO `spu_key` VALUES (268, 32, 1);
INSERT INTO `spu_key` VALUES (269, 32, 2);
INSERT INTO `spu_key` VALUES (270, 32, 6);
INSERT INTO `spu_key` VALUES (271, 33, 1);
INSERT INTO `spu_key` VALUES (272, 33, 2);
INSERT INTO `spu_key` VALUES (273, 33, 3);
INSERT INTO `spu_key` VALUES (274, 33, 6);
INSERT INTO `spu_key` VALUES (275, 34, 3);
INSERT INTO `spu_key` VALUES (276, 34, 5);
INSERT INTO `spu_key` VALUES (277, 34, 6);
INSERT INTO `spu_key` VALUES (278, 35, 3);
INSERT INTO `spu_key` VALUES (279, 35, 5);
INSERT INTO `spu_key` VALUES (280, 35, 6);
INSERT INTO `spu_key` VALUES (281, 36, 1);
INSERT INTO `spu_key` VALUES (282, 36, 2);
INSERT INTO `spu_key` VALUES (283, 36, 3);
INSERT INTO `spu_key` VALUES (284, 36, 6);
INSERT INTO `spu_key` VALUES (285, 37, 1);
INSERT INTO `spu_key` VALUES (286, 37, 2);
INSERT INTO `spu_key` VALUES (287, 37, 6);
INSERT INTO `spu_key` VALUES (288, 38, 1);
INSERT INTO `spu_key` VALUES (289, 38, 2);
INSERT INTO `spu_key` VALUES (290, 38, 6);
INSERT INTO `spu_key` VALUES (291, 39, 1);
INSERT INTO `spu_key` VALUES (292, 39, 2);
INSERT INTO `spu_key` VALUES (293, 39, 6);
INSERT INTO `spu_key` VALUES (294, 40, 1);
INSERT INTO `spu_key` VALUES (295, 40, 2);
INSERT INTO `spu_key` VALUES (296, 40, 6);
INSERT INTO `spu_key` VALUES (297, 41, 1);
INSERT INTO `spu_key` VALUES (298, 41, 2);
INSERT INTO `spu_key` VALUES (299, 41, 6);
INSERT INTO `spu_key` VALUES (300, 42, 1);
INSERT INTO `spu_key` VALUES (301, 42, 2);
INSERT INTO `spu_key` VALUES (302, 42, 6);
INSERT INTO `spu_key` VALUES (303, 43, 1);
INSERT INTO `spu_key` VALUES (304, 43, 2);
INSERT INTO `spu_key` VALUES (305, 43, 6);
INSERT INTO `spu_key` VALUES (306, 44, 1);
INSERT INTO `spu_key` VALUES (307, 44, 2);
INSERT INTO `spu_key` VALUES (308, 44, 6);
INSERT INTO `spu_key` VALUES (309, 47, 5);
INSERT INTO `spu_key` VALUES (310, 47, 6);
INSERT INTO `spu_key` VALUES (315, 48, 6);
INSERT INTO `spu_key` VALUES (316, 48, 7);
INSERT INTO `spu_key` VALUES (319, 31, 1);
INSERT INTO `spu_key` VALUES (320, 31, 2);
INSERT INTO `spu_key` VALUES (321, 31, 3);
INSERT INTO `spu_key` VALUES (322, 31, 6);
INSERT INTO `spu_key` VALUES (344, 49, 5);
INSERT INTO `spu_key` VALUES (345, 49, 6);
INSERT INTO `spu_key` VALUES (346, 50, 6);
INSERT INTO `spu_key` VALUES (347, 50, 7);
INSERT INTO `spu_key` VALUES (350, 51, 6);
INSERT INTO `spu_key` VALUES (351, 29, 1);
INSERT INTO `spu_key` VALUES (352, 29, 2);
INSERT INTO `spu_key` VALUES (353, 29, 3);
INSERT INTO `spu_key` VALUES (354, 29, 4);
INSERT INTO `spu_key` VALUES (355, 29, 6);

-- ----------------------------
-- Table structure for spu_tag
-- ----------------------------
DROP TABLE IF EXISTS `spu_tag`;
CREATE TABLE `spu_tag`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_tag
-- ----------------------------

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'LOCAL' COMMENT 'LOCAL 本地，REMOTE 远程',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` int(11) NULL DEFAULT NULL,
  `md5` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'md5值，防止上传重复文件',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `md5_del`(`md5`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 535 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (111, '2021\\10\\05\\40a40be58836468dbe5fa1317a8a7863.jpg', 'LOCAL', '40a40be58836468dbe5fa1317a8a7863.jpg', '.jpg', 247624, '16e54575198bfa0d4598677e4f51c2bc', '2021-10-05 08:55:29.064', '2021-10-05 08:55:29.064', NULL);
INSERT INTO `sys_file` VALUES (112, '2021\\10\\05\\8462322d31124b19a3a4a1d8ac9a18c0.jpg', 'LOCAL', '8462322d31124b19a3a4a1d8ac9a18c0.jpg', '.jpg', 22116, '0c4baad3c7c4b039f3b747c0950c4ba3', '2021-10-05 08:58:46.436', '2021-10-05 08:58:46.436', NULL);
INSERT INTO `sys_file` VALUES (113, '2021\\10\\05\\9bf5eae9e0204e52b9ef9befa82b810d.jpg', 'LOCAL', '9bf5eae9e0204e52b9ef9befa82b810d.jpg', '.jpg', 58673, '81636d2462d9fdb62b8d5b1e7fce1a4c', '2021-10-05 08:59:00.517', '2021-10-05 08:59:00.517', NULL);
INSERT INTO `sys_file` VALUES (114, '2021\\10\\05\\61e01d4a5c07420a909a225bd7e3c79d.jpg', 'LOCAL', '61e01d4a5c07420a909a225bd7e3c79d.jpg', '.jpg', 113277, '78fbb242a9e20620e054366575576fbc', '2021-10-05 09:00:09.708', '2021-10-05 09:00:09.708', NULL);
INSERT INTO `sys_file` VALUES (115, '2021\\10\\05\\b980f4e2eb9c4c1fa8e0e4f692dabb51.jpg', 'LOCAL', 'b980f4e2eb9c4c1fa8e0e4f692dabb51.jpg', '.jpg', 32395, '17009f3ba43fdb0c6680224e6e8e2635', '2021-10-05 09:00:21.749', '2021-10-05 09:00:21.749', NULL);
INSERT INTO `sys_file` VALUES (116, '2021\\10\\05\\45bc482e110145bea163e309b670ae09.jpg', 'LOCAL', '45bc482e110145bea163e309b670ae09.jpg', '.jpg', 94410, '1a490625105d7640b924c62fd81aef76', '2021-10-05 09:01:21.824', '2021-10-05 09:01:21.824', NULL);
INSERT INTO `sys_file` VALUES (117, '2021\\10\\05\\6c6621af7c4e4dca8fec4bc39cdf283c.jpg', 'LOCAL', '6c6621af7c4e4dca8fec4bc39cdf283c.jpg', '.jpg', 77613, 'eb2d6b12ed00ad797c21689c3dc55c84', '2021-10-05 09:01:44.132', '2021-10-05 09:01:44.132', NULL);
INSERT INTO `sys_file` VALUES (118, '2021\\10\\05\\fd2a82bb583f4a8b827f3903ee9be5b8.jpg', 'LOCAL', 'fd2a82bb583f4a8b827f3903ee9be5b8.jpg', '.jpg', 248441, 'd5c962d7362c37fd01dfab1e8b28be4b', '2021-10-05 09:23:10.183', '2021-10-05 09:23:10.183', NULL);
INSERT INTO `sys_file` VALUES (119, '2021\\10\\05\\af3a6cb9e878403da21131b0ef297d1d.jpg', 'LOCAL', 'af3a6cb9e878403da21131b0ef297d1d.jpg', '.jpg', 240754, '5ab96655069508a747ec0bc80bb3693b', '2021-10-05 09:23:16.246', '2021-10-05 09:23:16.246', NULL);
INSERT INTO `sys_file` VALUES (120, '2021\\10\\05\\70ef0b86959b49a2b6730dd47ab5b05b.jpg', 'LOCAL', '70ef0b86959b49a2b6730dd47ab5b05b.jpg', '.jpg', 247719, 'c05ea90bb025bb8bb96fadb2715b3855', '2021-10-05 09:23:21.902', '2021-10-05 09:23:21.902', NULL);
INSERT INTO `sys_file` VALUES (121, '2021\\10\\05\\23a4310df11d4099bc08673db1c81b7f.jpg', 'LOCAL', '23a4310df11d4099bc08673db1c81b7f.jpg', '.jpg', 232743, '97a66edc22fc1a4af1cf1b027c5d9f9b', '2021-10-05 09:23:28.144', '2021-10-05 09:23:28.144', NULL);
INSERT INTO `sys_file` VALUES (122, '2021\\10\\05\\7a2ec054cfc349e58139150eaf113fa2.jpg', 'LOCAL', '7a2ec054cfc349e58139150eaf113fa2.jpg', '.jpg', 232214, 'c63f9f73073fe3e1397206dcf6c5b780', '2021-10-05 09:23:34.469', '2021-10-05 09:23:34.469', NULL);
INSERT INTO `sys_file` VALUES (123, '2021\\10\\05\\e936388c90024b2594015bc739edc4fc.jpg', 'LOCAL', 'e936388c90024b2594015bc739edc4fc.jpg', '.jpg', 240518, '1b8ceba6be4b295e0dbdaa0e5142bd34', '2021-10-05 09:23:40.114', '2021-10-05 09:23:40.114', NULL);
INSERT INTO `sys_file` VALUES (124, '2021\\10\\05\\0b2bf9b1b8894196ab201626d881fe2f.jpg', 'LOCAL', '0b2bf9b1b8894196ab201626d881fe2f.jpg', '.jpg', 242171, '4c1e5d7b4f1791cbd4dbc6f0e9499db6', '2021-10-05 09:23:46.484', '2021-10-05 09:23:46.484', NULL);
INSERT INTO `sys_file` VALUES (125, '2021\\10\\05\\c6db1a1106924f90b299c316d07d0ceb.jpg', 'LOCAL', 'c6db1a1106924f90b299c316d07d0ceb.jpg', '.jpg', 239303, 'ebdf5b4d7385898c9d3ee8ed5bff8ccd', '2021-10-05 09:23:54.201', '2021-10-05 09:23:54.201', NULL);
INSERT INTO `sys_file` VALUES (126, '2021\\10\\05\\7fd81e063b534d559b238e476bc02518.jpg', 'LOCAL', '7fd81e063b534d559b238e476bc02518.jpg', '.jpg', 254181, 'a9aeb0f274b8758b6e1f7488a918bec6', '2021-10-05 09:24:00.290', '2021-10-05 09:24:00.290', NULL);
INSERT INTO `sys_file` VALUES (127, '2021\\10\\05\\fea683086e9042f387a59ee58c6148d3.jpg', 'LOCAL', 'fea683086e9042f387a59ee58c6148d3.jpg', '.jpg', 253325, '964dead59fa04db1ca06a22d91e0a583', '2021-10-05 09:24:06.737', '2021-10-05 09:24:06.737', NULL);
INSERT INTO `sys_file` VALUES (128, '2021\\10\\05\\d178c0128b5a4750a57396ee5f1e6071.jpg', 'LOCAL', 'd178c0128b5a4750a57396ee5f1e6071.jpg', '.jpg', 249606, 'd9541192decf365b88c5ac33ec83f31d', '2021-10-05 09:24:11.901', '2021-10-05 09:24:11.901', NULL);
INSERT INTO `sys_file` VALUES (129, '2021\\10\\05\\2b4e2099d3824b2aa155b3bed5a09e91.jpg', 'LOCAL', '2b4e2099d3824b2aa155b3bed5a09e91.jpg', '.jpg', 245676, '2b39ebda19cf34475d41b9bc931bf81b', '2021-10-05 09:24:17.780', '2021-10-05 09:24:17.780', NULL);
INSERT INTO `sys_file` VALUES (130, '2021\\10\\05\\44b04074f62e4138b73c6706e08197c6.jpg', 'LOCAL', '44b04074f62e4138b73c6706e08197c6.jpg', '.jpg', 245152, 'f36033dd12d930ec5a869f356f3f5430', '2021-10-05 09:24:23.819', '2021-10-05 09:24:23.819', NULL);
INSERT INTO `sys_file` VALUES (131, '2021\\10\\05\\e7c958858ede4053b1bd873170935dda.jpg', 'LOCAL', 'e7c958858ede4053b1bd873170935dda.jpg', '.jpg', 238730, 'a2748c5f5fe63c8d89240e0822bc6c6b', '2021-10-05 09:24:29.700', '2021-10-05 09:24:29.700', NULL);
INSERT INTO `sys_file` VALUES (132, '2021\\10\\05\\41a804075638419eb92f8bea8ed40235.png', 'LOCAL', '41a804075638419eb92f8bea8ed40235.png', '.png', 288680, '6e43adb7e27097e7a6ece0385eec2689', '2021-10-05 09:31:51.323', '2021-10-05 09:31:51.323', NULL);
INSERT INTO `sys_file` VALUES (133, '2021\\10\\05\\7bfe9b4a626e495d9a34015af34f244c.jpg', 'LOCAL', '7bfe9b4a626e495d9a34015af34f244c.jpg', '.jpg', 366170, 'd87cd6e7752f2edec935ed69c3a08a73', '2021-10-05 09:31:57.633', '2021-10-05 09:31:57.633', NULL);
INSERT INTO `sys_file` VALUES (134, '2021\\10\\05\\be8a374ea16e42869bba3d187c5e99f9.jpg', 'LOCAL', 'be8a374ea16e42869bba3d187c5e99f9.jpg', '.jpg', 371653, '494178c3a9bfe1fddc40030623feae27', '2021-10-05 09:32:02.602', '2021-10-05 09:32:02.602', NULL);
INSERT INTO `sys_file` VALUES (135, '2021\\10\\05\\919e0fccade949ea9383af5917485efb.jpg', 'LOCAL', '919e0fccade949ea9383af5917485efb.jpg', '.jpg', 459761, '936a5b7609399f8c9ea5fc80d30cb0eb', '2021-10-05 09:37:18.787', '2021-10-05 09:37:18.787', NULL);
INSERT INTO `sys_file` VALUES (136, '2021\\10\\05\\a09249ac8bcb4a658bbfb710e2bd6423.jpg', 'LOCAL', 'a09249ac8bcb4a658bbfb710e2bd6423.jpg', '.jpg', 462112, '485c07350d3fd3107d8e71d894a09ba4', '2021-10-05 09:37:25.040', '2021-10-05 09:37:25.040', NULL);
INSERT INTO `sys_file` VALUES (137, '2021\\10\\05\\e273bfee388c40508d76117ec2a97d61.jpg', 'LOCAL', 'e273bfee388c40508d76117ec2a97d61.jpg', '.jpg', 382862, '3e4162fb6b6713a9921165c6396029b6', '2021-10-05 09:37:31.609', '2021-10-05 09:37:31.609', NULL);
INSERT INTO `sys_file` VALUES (138, '2021\\10\\05\\d204accf76f0473d8683a59830c24a09.jpg', 'LOCAL', 'd204accf76f0473d8683a59830c24a09.jpg', '.jpg', 378935, '40afc38093e61c424dc255122e9edd9d', '2021-10-05 09:37:38.598', '2021-10-05 09:37:38.598', NULL);
INSERT INTO `sys_file` VALUES (139, '2021\\10\\05\\2f177f64962a40e59f0f4c6218c3f60a.jpg', 'LOCAL', '2f177f64962a40e59f0f4c6218c3f60a.jpg', '.jpg', 449013, '82f8ba239fa1a17513d89301522d17a2', '2021-10-05 09:37:44.883', '2021-10-05 09:37:44.883', NULL);
INSERT INTO `sys_file` VALUES (140, '2021\\10\\05\\2022fe158d4a4666bde5b74624dfad2d.jpg', 'LOCAL', '2022fe158d4a4666bde5b74624dfad2d.jpg', '.jpg', 450513, '51c7960e3430849b8eb61b4675d08836', '2021-10-05 09:37:50.072', '2021-10-05 09:37:50.072', NULL);
INSERT INTO `sys_file` VALUES (141, '2021\\10\\05\\3c7f11b0e4684063ab9193520bdb19b5.jpg', 'LOCAL', '3c7f11b0e4684063ab9193520bdb19b5.jpg', '.jpg', 215046, 'b1cf99d68adda9999a9577299f528597', '2021-10-05 09:43:21.401', '2021-10-05 09:43:21.401', NULL);
INSERT INTO `sys_file` VALUES (142, '2021\\10\\05\\7a527255fabe4936bb29fac3aa4fdabf.jpg', 'LOCAL', '7a527255fabe4936bb29fac3aa4fdabf.jpg', '.jpg', 187282, '04ad14c0e0c9e08a6d10fcd499f2380f', '2021-10-05 10:39:32.044', '2021-10-05 10:39:32.044', NULL);
INSERT INTO `sys_file` VALUES (143, '2021\\10\\05\\3a32708f7d2f47efa17f145438e4c1ee.jpg', 'LOCAL', '3a32708f7d2f47efa17f145438e4c1ee.jpg', '.jpg', 203625, '3ee1ac8b364479080bd6ddc3f2270efc', '2021-10-05 10:40:17.728', '2021-10-05 10:40:17.728', NULL);
INSERT INTO `sys_file` VALUES (144, '2021\\10\\05\\ed23eeff78b448a983c7ecfef6dcd9b7.jpg', 'LOCAL', 'ed23eeff78b448a983c7ecfef6dcd9b7.jpg', '.jpg', 178856, 'c5e7f0465914a4cf288e9d728cca5a77', '2021-10-05 10:40:56.770', '2021-10-05 10:40:56.770', NULL);
INSERT INTO `sys_file` VALUES (145, '2021\\10\\05\\4a4cec7c48ce44f1a094aecf5718d050.jpg', 'LOCAL', '4a4cec7c48ce44f1a094aecf5718d050.jpg', '.jpg', 169496, '7fc49531ec57b0ecf6b8876dade187c7', '2021-10-05 10:41:32.365', '2021-10-05 10:41:32.365', NULL);
INSERT INTO `sys_file` VALUES (146, '2021\\10\\05\\9420859130e1494fbcad77e4788094d0.jpg', 'LOCAL', '9420859130e1494fbcad77e4788094d0.jpg', '.jpg', 193462, '524bb95e49f9a62ef27ee71c7e73082b', '2021-10-05 11:04:24.728', '2021-10-05 11:04:24.728', NULL);
INSERT INTO `sys_file` VALUES (147, '2021\\10\\05\\9177c2976e6d4267809503cc55d75275.jpg', 'LOCAL', '9177c2976e6d4267809503cc55d75275.jpg', '.jpg', 181794, '4002bb56dfbfdb226e7f5e61fd322550', '2021-10-05 11:05:00.401', '2021-10-05 11:05:00.401', NULL);
INSERT INTO `sys_file` VALUES (148, '2021\\10\\05\\c4e4223435e843f481f55a56a8a336c8.jpg', 'LOCAL', 'c4e4223435e843f481f55a56a8a336c8.jpg', '.jpg', 237925, '74309c0825c7d957380b5263036c54bf', '2021-10-05 11:05:45.628', '2021-10-05 11:05:45.628', NULL);
INSERT INTO `sys_file` VALUES (149, '2021\\10\\05\\88951dda4d8a40a0b95d67b5a64d486d.jpg', 'LOCAL', '88951dda4d8a40a0b95d67b5a64d486d.jpg', '.jpg', 194225, 'f847a4a10dc0bba953e9666d81c3bffe', '2021-10-05 11:06:56.987', '2021-10-05 11:06:56.987', NULL);
INSERT INTO `sys_file` VALUES (150, '2021\\10\\05\\97970f73f7db4ad882032a98da7fa477.jpg', 'LOCAL', '97970f73f7db4ad882032a98da7fa477.jpg', '.jpg', 194683, 'f9be721216d6eb5d0734e1b4c88822b3', '2021-10-05 11:07:34.977', '2021-10-05 11:07:34.977', NULL);
INSERT INTO `sys_file` VALUES (151, '2021\\10\\05\\b65c953f5c8e4686af67f71f8a906f4c.jpg', 'LOCAL', 'b65c953f5c8e4686af67f71f8a906f4c.jpg', '.jpg', 178978, '8a8251dad15ac8229193d1a16bb4450c', '2021-10-05 11:08:11.214', '2021-10-05 11:08:11.214', NULL);
INSERT INTO `sys_file` VALUES (152, '2021\\10\\05\\f5defc7424f2416294153b98bb6ed276.jpg', 'LOCAL', 'f5defc7424f2416294153b98bb6ed276.jpg', '.jpg', 252606, '6ed86289177ffb0598a25dcbb2e5293a', '2021-10-05 11:08:43.840', '2021-10-05 11:08:43.840', NULL);
INSERT INTO `sys_file` VALUES (153, '2021\\10\\05\\97fca490ef76495b85bb6dc422c1d070.jpg', 'LOCAL', '97fca490ef76495b85bb6dc422c1d070.jpg', '.jpg', 184266, '45c34cd339ff40df7c57e3b385912c83', '2021-10-05 11:11:51.570', '2021-10-05 11:11:51.570', NULL);
INSERT INTO `sys_file` VALUES (154, '2021\\10\\05\\dff2e85ba71e46e5b35f88673bdcbbcb.jpg', 'LOCAL', 'dff2e85ba71e46e5b35f88673bdcbbcb.jpg', '.jpg', 228413, 'a14f0a7800986a1a9116d23723df62f9', '2021-10-05 11:12:24.187', '2021-10-05 11:12:24.187', NULL);
INSERT INTO `sys_file` VALUES (155, '2021\\10\\05\\f422152401a240e79987d954204988ea.jpg', 'LOCAL', 'f422152401a240e79987d954204988ea.jpg', '.jpg', 200198, '9a0b73a27c05debe81e22994e3242677', '2021-10-05 11:13:02.917', '2021-10-05 11:13:02.917', NULL);
INSERT INTO `sys_file` VALUES (156, '2021\\10\\05\\c6f9fa669ac749498801477cfbff48f2.jpg', 'LOCAL', 'c6f9fa669ac749498801477cfbff48f2.jpg', '.jpg', 205802, 'c5057c6485cd7463a1710ab36ee0bf0b', '2021-10-05 11:43:46.103', '2021-10-05 11:43:46.103', NULL);
INSERT INTO `sys_file` VALUES (157, '2021\\10\\05\\d29b45c6b5a84259b15628af299a85da.jpg', 'LOCAL', 'd29b45c6b5a84259b15628af299a85da.jpg', '.jpg', 204315, '77b7e6b79993ca15104445aa92424131', '2021-10-05 11:43:46.116', '2021-10-05 11:43:46.116', NULL);
INSERT INTO `sys_file` VALUES (158, '2021\\10\\05\\2f8b603fe8fd47eb8f3d03d919c7ce1a.jpg', 'LOCAL', '2f8b603fe8fd47eb8f3d03d919c7ce1a.jpg', '.jpg', 19306, 'e1bc98e2842106e87b4c30551836fcdc', '2021-10-05 11:47:20.133', '2021-10-05 11:47:20.133', NULL);
INSERT INTO `sys_file` VALUES (159, '2021\\10\\05\\eca3dd1ad42c479791530bfc4baa4f24.jpg', 'LOCAL', 'eca3dd1ad42c479791530bfc4baa4f24.jpg', '.jpg', 39431, '821cc7b6f2da1181c6bdb2370a74f5c2', '2021-10-05 11:48:38.672', '2021-10-05 11:48:38.672', NULL);
INSERT INTO `sys_file` VALUES (160, '2021\\10\\05\\a58e20cdb404454f90fa62a7eb8531cb.jpg', 'LOCAL', 'a58e20cdb404454f90fa62a7eb8531cb.jpg', '.jpg', 40240, '1b32af576a7cc9c2771d4534d9c8b1ea', '2021-10-05 11:50:37.566', '2021-10-05 11:50:37.566', NULL);
INSERT INTO `sys_file` VALUES (161, '2021\\10\\05\\ce20086595ed4863ac839f1371c03129.jpg', 'LOCAL', 'ce20086595ed4863ac839f1371c03129.jpg', '.jpg', 46427, '2cf7f6db533db0a2e914d1f2fbc66c6d', '2021-10-05 11:50:58.541', '2021-10-05 11:50:58.541', NULL);
INSERT INTO `sys_file` VALUES (162, '2021\\10\\05\\af7776db4cca4f869ccdb29631f4d55e.jpg', 'LOCAL', 'af7776db4cca4f869ccdb29631f4d55e.jpg', '.jpg', 41667, 'e5d9d2a7cbf62b4ed1d1c14769311e82', '2021-10-05 11:51:07.077', '2021-10-05 11:51:07.077', NULL);
INSERT INTO `sys_file` VALUES (163, '2021\\10\\05\\47c9a673a2104f39ac40e27e2adace9c.jpg', 'LOCAL', '47c9a673a2104f39ac40e27e2adace9c.jpg', '.jpg', 48185, 'd402d4f371099315bcb760bf47be62fe', '2021-10-05 11:51:13.962', '2021-10-05 11:51:13.962', NULL);
INSERT INTO `sys_file` VALUES (164, '2021\\10\\05\\9454098983f740a5a2f25d4489c1874d.jpg', 'LOCAL', '9454098983f740a5a2f25d4489c1874d.jpg', '.jpg', 76836, '67961b8d9709c67083ec69ff281f6ab9', '2021-10-05 11:51:20.020', '2021-10-05 11:51:20.020', NULL);
INSERT INTO `sys_file` VALUES (165, '2021\\10\\05\\6b4d2fc3f80f4f6aad2b9a8bfa318760.jpg', 'LOCAL', '6b4d2fc3f80f4f6aad2b9a8bfa318760.jpg', '.jpg', 47586, '845309bc9698a8e9a3dc186a3a9875d2', '2021-10-05 11:51:31.425', '2021-10-05 11:51:31.425', NULL);
INSERT INTO `sys_file` VALUES (166, '2021\\10\\05\\bf6a136ded5d4b1498f0955727a5ba11.jpg', 'LOCAL', 'bf6a136ded5d4b1498f0955727a5ba11.jpg', '.jpg', 96674, '389a726993feb09ce0805eb332cde127', '2021-10-05 11:54:39.901', '2021-10-05 11:54:39.901', NULL);
INSERT INTO `sys_file` VALUES (167, '2021\\10\\05\\7dc44400f54d4ba798d10afdc9a14cb9.jpg', 'LOCAL', '7dc44400f54d4ba798d10afdc9a14cb9.jpg', '.jpg', 98878, '146e8b81dee79b20e17fe5fd2de0242b', '2021-10-05 11:55:18.143', '2021-10-05 11:55:18.143', NULL);
INSERT INTO `sys_file` VALUES (168, '2021\\10\\05\\6b1c6efc3bfc47518c015a9b2e6d3cf1.jpg', 'LOCAL', '6b1c6efc3bfc47518c015a9b2e6d3cf1.jpg', '.jpg', 123471, 'b580703b27e50ea1d3a7f3e175f6fa4c', '2021-10-05 11:55:43.029', '2021-10-05 11:55:43.029', NULL);
INSERT INTO `sys_file` VALUES (169, '2021\\10\\05\\690cf1c3ddf84fd8a01369b94991237b.jpg', 'LOCAL', '690cf1c3ddf84fd8a01369b94991237b.jpg', '.jpg', 85934, 'de6ec679929a554184a8588d3d9a85ff', '2021-10-05 11:55:50.917', '2021-10-05 11:55:50.917', NULL);
INSERT INTO `sys_file` VALUES (170, '2021\\10\\05\\e5dfd5091a404d669827653119d74ee0.jpg', 'LOCAL', 'e5dfd5091a404d669827653119d74ee0.jpg', '.jpg', 112042, 'c59444666f338a3ccc03c49bce818771', '2021-10-05 11:56:07.664', '2021-10-05 11:56:07.664', NULL);
INSERT INTO `sys_file` VALUES (171, '2021\\10\\05\\da2b96dc2b4849a28668bef573310b00.jpg', 'LOCAL', 'da2b96dc2b4849a28668bef573310b00.jpg', '.jpg', 152717, 'a1616813e6683a7fb4688aea40b5f0f5', '2021-10-05 11:57:03.741', '2021-10-05 11:57:03.741', NULL);
INSERT INTO `sys_file` VALUES (172, '2021\\10\\05\\8606e0c5609f4757a601d70fcb606c27.jpg', 'LOCAL', '8606e0c5609f4757a601d70fcb606c27.jpg', '.jpg', 88298, '3822a3b9ebc9b14664be1c5699cec75c', '2021-10-05 11:57:25.692', '2021-10-05 11:57:25.692', NULL);
INSERT INTO `sys_file` VALUES (173, '2021\\10\\05\\4efd0b00c0b94d5f90c6047aabc855a1.jpg', 'LOCAL', '4efd0b00c0b94d5f90c6047aabc855a1.jpg', '.jpg', 64503, '4be6cf4d66300dbd4be15b7ad5c42349', '2021-10-05 11:57:32.517', '2021-10-05 11:57:32.517', NULL);
INSERT INTO `sys_file` VALUES (174, '2021\\10\\05\\4a1b80d5cff844448c1419f3e29edc77.jpg', 'LOCAL', '4a1b80d5cff844448c1419f3e29edc77.jpg', '.jpg', 90274, '23671befc302743cc7bbc18543013326', '2021-10-05 11:58:51.901', '2021-10-05 11:58:51.901', NULL);
INSERT INTO `sys_file` VALUES (175, '2021\\10\\05\\11f40d2db93548128e9915b361904a34.jpg', 'LOCAL', '11f40d2db93548128e9915b361904a34.jpg', '.jpg', 89322, 'cf037cec4d14bac517084cb019ab125b', '2021-10-05 11:59:05.570', '2021-10-05 11:59:05.570', NULL);
INSERT INTO `sys_file` VALUES (176, '2021\\10\\05\\e36de10b0e3a41f6849b9c5518f023b2.jpg', 'LOCAL', 'e36de10b0e3a41f6849b9c5518f023b2.jpg', '.jpg', 118083, 'a6044ba694457c7f194f908338518180', '2021-10-05 11:59:17.269', '2021-10-05 11:59:17.269', NULL);
INSERT INTO `sys_file` VALUES (177, '2021\\10\\05\\fe33dab956ba4d66a66ab0b8e58a6c34.jpg', 'LOCAL', 'fe33dab956ba4d66a66ab0b8e58a6c34.jpg', '.jpg', 143254, '20dfb7864410baf6eaf166b293d6001e', '2021-10-05 12:00:09.433', '2021-10-05 12:00:09.433', NULL);
INSERT INTO `sys_file` VALUES (178, '2021\\10\\05\\cb1ab39eee444a30878bc846e038ede8.jpg', 'LOCAL', 'cb1ab39eee444a30878bc846e038ede8.jpg', '.jpg', 109264, '53069ac6210e4d162e34d6c6f256083f', '2021-10-05 12:00:20.641', '2021-10-05 12:00:20.641', NULL);
INSERT INTO `sys_file` VALUES (179, '2021\\10\\05\\09743f5442664e1e8efc3f3146792e27.jpg', 'LOCAL', '09743f5442664e1e8efc3f3146792e27.jpg', '.jpg', 930439, 'b99f8a8b3c5744dc4622c75a93236809', '2021-10-05 12:43:58.730', '2021-10-05 12:43:58.730', NULL);
INSERT INTO `sys_file` VALUES (180, '2021\\10\\05\\e613699ffddd4bc6b640a47b66146afd.jpg', 'LOCAL', 'e613699ffddd4bc6b640a47b66146afd.jpg', '.jpg', 156628, 'e468bfda7296cd53999bacdfd03abfd8', '2021-10-05 12:44:08.136', '2021-10-05 12:44:08.136', NULL);
INSERT INTO `sys_file` VALUES (181, '2021\\10\\05\\f386f08526a241568c3c0339bdbd565e.jpg', 'LOCAL', 'f386f08526a241568c3c0339bdbd565e.jpg', '.jpg', 167852, 'e99e5fc9aa858397078638fbb3dd8eb0', '2021-10-05 12:44:48.316', '2021-10-05 12:44:48.316', NULL);
INSERT INTO `sys_file` VALUES (182, '2021\\10\\05\\075ab778168841d1af884fe23486ea4e.jpg', 'LOCAL', '075ab778168841d1af884fe23486ea4e.jpg', '.jpg', 175508, '1f708dba1a2da82cbf61325c6301af2c', '2021-10-05 12:45:05.420', '2021-10-05 12:45:05.420', NULL);
INSERT INTO `sys_file` VALUES (183, '2021\\10\\05\\a9614544fbbb4a8ca0139ff6da583966.jpg', 'LOCAL', 'a9614544fbbb4a8ca0139ff6da583966.jpg', '.jpg', 181419, '81f17ac26bdc916540b23362c42c8421', '2021-10-05 12:45:25.577', '2021-10-05 12:45:25.577', NULL);
INSERT INTO `sys_file` VALUES (184, '2021\\10\\05\\51d2e7a58cf04edfaf4b83ebd74f6ecd.jpg', 'LOCAL', '51d2e7a58cf04edfaf4b83ebd74f6ecd.jpg', '.jpg', 170586, '7a4b11b887cb764696ab0771e64101c8', '2021-10-05 12:45:41.678', '2021-10-05 12:45:41.678', NULL);
INSERT INTO `sys_file` VALUES (185, '2021\\10\\05\\287561f357a24bb097130760440643e6.jpg', 'LOCAL', '287561f357a24bb097130760440643e6.jpg', '.jpg', 168472, '92f90abd3d27edce43d6a4ccf1e9a081', '2021-10-05 12:45:58.468', '2021-10-05 12:45:58.468', NULL);
INSERT INTO `sys_file` VALUES (186, '2021\\10\\05\\c51d5384d6a24433ba4a484cd3b2326a.jpg', 'LOCAL', 'c51d5384d6a24433ba4a484cd3b2326a.jpg', '.jpg', 158200, '59a00dbd5a89d6c4ce346c5501425ecf', '2021-10-05 12:46:17.232', '2021-10-05 12:46:17.232', NULL);
INSERT INTO `sys_file` VALUES (187, '2021\\10\\05\\e937ae16a6e042dd910bed7f89c799f6.jpg', 'LOCAL', 'e937ae16a6e042dd910bed7f89c799f6.jpg', '.jpg', 161794, '7348780be7fc82d039e43382f9eb576e', '2021-10-05 12:46:34.537', '2021-10-05 12:46:34.537', NULL);
INSERT INTO `sys_file` VALUES (188, '2021\\10\\05\\8718a202a9384d83957dbe416f54cb5d.jpg', 'LOCAL', '8718a202a9384d83957dbe416f54cb5d.jpg', '.jpg', 249144, 'f9b514e91e48ebb40006889c2a84af26', '2021-10-05 12:50:09.939', '2021-10-05 12:50:09.939', NULL);
INSERT INTO `sys_file` VALUES (189, '2021\\10\\05\\b16fce428c874e6fbd7d7c02b41f1eb5.jpg', 'LOCAL', 'b16fce428c874e6fbd7d7c02b41f1eb5.jpg', '.jpg', 247122, '5f54027b1003b5fa1c0af551200349e3', '2021-10-05 12:50:45.577', '2021-10-05 12:50:45.577', NULL);
INSERT INTO `sys_file` VALUES (190, '2021\\10\\05\\2869330e7d9240ec9ade2dc453dd8503.jpg', 'LOCAL', '2869330e7d9240ec9ade2dc453dd8503.jpg', '.jpg', 241521, '9681a76fbc4ba9a68704fa720a7d2da2', '2021-10-05 12:59:49.079', '2021-10-05 12:59:49.079', NULL);
INSERT INTO `sys_file` VALUES (191, '2021\\10\\05\\51dcebf5b7aa4b98b5458e657c086122.jpg', 'LOCAL', '51dcebf5b7aa4b98b5458e657c086122.jpg', '.jpg', 237666, '3217492b9ebb405ec6acc11668ca30ed', '2021-10-05 12:59:59.007', '2021-10-05 12:59:59.007', NULL);
INSERT INTO `sys_file` VALUES (192, '2021\\10\\05\\508a057a731744c2af3edc76d5e1b43c.jpg', 'LOCAL', '508a057a731744c2af3edc76d5e1b43c.jpg', '.jpg', 245980, '98602b729eb20a9587aedfda0335ee23', '2021-10-05 13:05:59.514', '2021-10-05 13:05:59.514', NULL);
INSERT INTO `sys_file` VALUES (193, '2021\\10\\05\\4d5f35da5c604945a91a6e87bde5d448.jpg', 'LOCAL', '4d5f35da5c604945a91a6e87bde5d448.jpg', '.jpg', 248507, 'b76b5d21e3ff29bf06d1d32d74578783', '2021-10-05 13:06:08.167', '2021-10-05 13:06:08.167', NULL);
INSERT INTO `sys_file` VALUES (194, '2021\\10\\05\\bc15e247021f490ba615d6667d9599bf.jpg', 'LOCAL', 'bc15e247021f490ba615d6667d9599bf.jpg', '.jpg', 238458, '692de780fdd6bb9cb24f588661908f81', '2021-10-05 13:10:53.432', '2021-10-05 13:10:53.432', NULL);
INSERT INTO `sys_file` VALUES (195, '2021\\10\\05\\a9a2c7438c274e6caa1e5a19f7133ac9.jpg', 'LOCAL', 'a9a2c7438c274e6caa1e5a19f7133ac9.jpg', '.jpg', 240841, '6643f2248ae537407d44f041ef0c0249', '2021-10-05 13:11:06.588', '2021-10-05 13:11:06.588', NULL);
INSERT INTO `sys_file` VALUES (196, '2021\\10\\05\\30b35bf283ea49c9959868b04c536df7.jpg', 'LOCAL', '30b35bf283ea49c9959868b04c536df7.jpg', '.jpg', 256228, '39143d7545509d636282b3892337508f', '2021-10-05 13:14:59.406', '2021-10-05 13:14:59.406', NULL);
INSERT INTO `sys_file` VALUES (197, '2021\\10\\05\\4860aaf1285b4fb4a9ee5a433e9facc2.jpg', 'LOCAL', '4860aaf1285b4fb4a9ee5a433e9facc2.jpg', '.jpg', 261474, '5d24f610b978f76aef6e57f5c115449b', '2021-10-05 13:15:08.467', '2021-10-05 13:15:08.467', NULL);
INSERT INTO `sys_file` VALUES (198, '2021\\10\\05\\10c481c7040e4f95b8919e3e2971ef36.jpg', 'LOCAL', '10c481c7040e4f95b8919e3e2971ef36.jpg', '.jpg', 265535, 'ce8b903a6b2dc0f442351cb3ceab4620', '2021-10-05 13:20:10.130', '2021-10-05 13:20:10.130', NULL);
INSERT INTO `sys_file` VALUES (199, '2021\\10\\05\\0a9726ba8b654d0e932414fe085a4285.jpg', 'LOCAL', '0a9726ba8b654d0e932414fe085a4285.jpg', '.jpg', 231946, '87c90f42f5c784854cff089eb07a063e', '2021-10-05 13:22:51.939', '2021-10-05 13:22:51.939', NULL);
INSERT INTO `sys_file` VALUES (200, '2021\\10\\05\\ca42970239104601abd3c022b872688d.jpg', 'LOCAL', 'ca42970239104601abd3c022b872688d.jpg', '.jpg', 252643, '8bf471fb2be48a9c215d98ddfed6ca51', '2021-10-05 13:26:13.371', '2021-10-05 13:26:13.371', NULL);
INSERT INTO `sys_file` VALUES (201, '2021\\10\\05\\6a114e9106cd42d0a31b4b15d7e46c30.jpg', 'LOCAL', '6a114e9106cd42d0a31b4b15d7e46c30.jpg', '.jpg', 235180, '07e61c05be1c44c08040f3c79acbc6cc', '2021-10-05 13:26:24.129', '2021-10-05 13:26:24.129', NULL);
INSERT INTO `sys_file` VALUES (202, '2021/10/05/7cd074b1b3e148f4b3955cea94f635e1.jpg', 'LOCAL', '7cd074b1b3e148f4b3955cea94f635e1.jpg', '.jpg', 172404, '83d8bc84c9c7ab6192eec5b8f038647f', '2021-10-05 15:31:07.839', '2021-10-05 15:31:07.839', NULL);
INSERT INTO `sys_file` VALUES (203, '2021/10/05/a7e9e8ac49c14bab97f912e49028ef32.jpg', 'LOCAL', 'a7e9e8ac49c14bab97f912e49028ef32.jpg', '.jpg', 192855, 'a154f9f8221fd6d2833de48f3963d29c', '2021-10-05 15:33:06.059', '2021-10-05 15:33:06.059', NULL);
INSERT INTO `sys_file` VALUES (204, '2021/10/05/50d6281b05af472fb51503c223da2d90.jpg', 'LOCAL', '50d6281b05af472fb51503c223da2d90.jpg', '.jpg', 170951, '0a7b851f21c94513cdba9b3d7522ddcc', '2021-10-05 15:34:59.189', '2021-10-05 15:34:59.189', NULL);
INSERT INTO `sys_file` VALUES (205, '2021/10/05/1f7ddf0d8aba46ce81b996507842b384.jpg', 'LOCAL', '1f7ddf0d8aba46ce81b996507842b384.jpg', '.jpg', 183311, '356124b1d57c10e0392ec7ff89657510', '2021-10-05 15:35:47.805', '2021-10-05 15:35:47.805', NULL);
INSERT INTO `sys_file` VALUES (206, '2021/10/05/363fe9a9fbd24873b69920e56cf06a4c.jpg', 'LOCAL', '363fe9a9fbd24873b69920e56cf06a4c.jpg', '.jpg', 158233, '70f3d6ea99aa0040be286eb656b3e489', '2021-10-05 15:36:42.547', '2021-10-05 15:36:42.547', NULL);
INSERT INTO `sys_file` VALUES (207, '2021/10/05/89dff7334d4841eeab3cd72e617348b8.jpg', 'LOCAL', '89dff7334d4841eeab3cd72e617348b8.jpg', '.jpg', 182682, '918d1246ab4814fc126ff4bc2832f877', '2021-10-05 15:37:50.910', '2021-10-05 15:37:50.910', NULL);
INSERT INTO `sys_file` VALUES (208, '2021/10/05/afdb774d1dc2482d95f80cfc913a7bac.jpg', 'LOCAL', 'afdb774d1dc2482d95f80cfc913a7bac.jpg', '.jpg', 167864, '4d10e30c53048b79809b80641c5da3e4', '2021-10-05 15:38:20.099', '2021-10-05 15:38:20.099', NULL);
INSERT INTO `sys_file` VALUES (209, '2021/10/05/b6a0ab236e7d4676841bf0dee8154677.jpg', 'LOCAL', 'b6a0ab236e7d4676841bf0dee8154677.jpg', '.jpg', 143836, 'b44bb5a63bead5d3e7888b6a1cec9339', '2021-10-05 15:39:20.481', '2021-10-05 15:39:20.481', NULL);
INSERT INTO `sys_file` VALUES (210, '2021/10/05/b2217575b3da47629fc93a7e68c5e36a.jpg', 'LOCAL', 'b2217575b3da47629fc93a7e68c5e36a.jpg', '.jpg', 163182, '980ebfa0c8ed5bc626afeef60ed06f3f', '2021-10-05 15:40:18.830', '2021-10-05 15:40:18.830', NULL);
INSERT INTO `sys_file` VALUES (211, '2021/10/05/f7428efb4050489eb252c580161131fc.jpg', 'LOCAL', 'f7428efb4050489eb252c580161131fc.jpg', '.jpg', 183277, '1547906ebc08ba01d18fc8c1738b9053', '2021-10-05 15:41:52.544', '2021-10-05 15:41:52.544', NULL);
INSERT INTO `sys_file` VALUES (212, '2021/10/05/4e87161b6d7b4f27b87c0c5192e9f8b9.jpg', 'LOCAL', '4e87161b6d7b4f27b87c0c5192e9f8b9.jpg', '.jpg', 193360, 'dd11848bf3fadbc5d62bec38171fb064', '2021-10-05 15:42:27.082', '2021-10-05 15:42:27.082', NULL);
INSERT INTO `sys_file` VALUES (213, '2021/10/05/b1cb3444376e473fa07de780a04bb29a.jpg', 'LOCAL', 'b1cb3444376e473fa07de780a04bb29a.jpg', '.jpg', 161549, 'f369ffb64d3aefa12fbea227f37deefa', '2021-10-05 15:44:32.915', '2021-10-05 15:44:32.915', NULL);
INSERT INTO `sys_file` VALUES (214, '2021/10/05/3e2a6c998301418fb7dda6e12be95ba2.jpg', 'LOCAL', '3e2a6c998301418fb7dda6e12be95ba2.jpg', '.jpg', 197525, '7041ea36c0eaef9b8eb67382ad93756a', '2021-10-05 15:49:22.883', '2021-10-05 15:49:22.883', NULL);
INSERT INTO `sys_file` VALUES (215, '2021/10/05/7bde6878ad5a42048bedae48bff53aa8.jpg', 'LOCAL', '7bde6878ad5a42048bedae48bff53aa8.jpg', '.jpg', 166014, 'e4ae507afdf62101f97d9f9826ea44e3', '2021-10-05 15:49:22.890', '2021-10-05 15:49:22.890', NULL);
INSERT INTO `sys_file` VALUES (216, '2021/10/05/14f3b2213ff942f6b904dfc934da4e35.jpg', 'LOCAL', '14f3b2213ff942f6b904dfc934da4e35.jpg', '.jpg', 173250, '6a485c9864c72902b0199292177f50e3', '2021-10-05 15:49:22.899', '2021-10-05 15:49:22.899', NULL);
INSERT INTO `sys_file` VALUES (217, '2021/10/05/b91a072ac5434d26a457a0342c02a65f.jpg', 'LOCAL', 'b91a072ac5434d26a457a0342c02a65f.jpg', '.jpg', 185027, '30addcb11c37e481370fee2ce8d347f5', '2021-10-05 15:49:22.905', '2021-10-05 15:49:22.905', NULL);
INSERT INTO `sys_file` VALUES (218, '2021/10/05/1a892b741f584e21ab34af8c687b462f.jpg', 'LOCAL', '1a892b741f584e21ab34af8c687b462f.jpg', '.jpg', 159961, '4c5e5559fd0d82ff3b63b210130df363', '2021-10-05 15:49:22.912', '2021-10-05 15:49:22.912', NULL);
INSERT INTO `sys_file` VALUES (219, '2021/10/05/b58312844f8f464495e6bb9efc9b05e1.jpg', 'LOCAL', 'b58312844f8f464495e6bb9efc9b05e1.jpg', '.jpg', 225731, '70b042b88ca2dbd2a2998090e80fd1bf', '2021-10-05 16:00:33.097', '2021-10-05 16:00:33.097', NULL);
INSERT INTO `sys_file` VALUES (220, '2021/10/05/f54db494303440b5898035072a4accf0.jpg', 'LOCAL', 'f54db494303440b5898035072a4accf0.jpg', '.jpg', 224927, 'f34069ba7b3ac5da4792e4c560135614', '2021-10-05 16:00:57.426', '2021-10-05 16:00:57.426', NULL);
INSERT INTO `sys_file` VALUES (221, '2021/10/05/b4414392ef5847799c476cb78a05d2ea.jpg', 'LOCAL', 'b4414392ef5847799c476cb78a05d2ea.jpg', '.jpg', 21961, 'd73719a42097805dd8a93b9c596e62a5', '2021-10-05 16:07:26.744', '2021-10-05 16:07:26.744', NULL);
INSERT INTO `sys_file` VALUES (222, '2021/10/05/6480f460a1894d278ca3ece0e5c67928.jpg', 'LOCAL', '6480f460a1894d278ca3ece0e5c67928.jpg', '.jpg', 22770, '675a427781ae8ac4ffcc738692e9ea04', '2021-10-05 16:07:37.416', '2021-10-05 16:07:37.416', NULL);
INSERT INTO `sys_file` VALUES (223, '2021/10/05/5c46ffbf240a41258c13f70651ebc3f0.jpg', 'LOCAL', '5c46ffbf240a41258c13f70651ebc3f0.jpg', '.jpg', 22648, '99f2f7bda226da3fcfd45a8c32e96c5a', '2021-10-05 16:07:48.949', '2021-10-05 16:07:48.949', NULL);
INSERT INTO `sys_file` VALUES (224, '2021/10/05/33604347e03c445fb5c15c619e42f183.jpg', 'LOCAL', '33604347e03c445fb5c15c619e42f183.jpg', '.jpg', 225604, '8857143064842c7877a07835f91dd235', '2021-10-05 16:12:28.971', '2021-10-05 16:12:28.971', NULL);
INSERT INTO `sys_file` VALUES (225, '2021/10/05/0bbc01ee1ca34095bae98fee67e4346f.jpg', 'LOCAL', '0bbc01ee1ca34095bae98fee67e4346f.jpg', '.jpg', 226367, '4e23410fc0536809a5ea9ae9b909360a', '2021-10-05 16:12:40.395', '2021-10-05 16:12:40.395', NULL);
INSERT INTO `sys_file` VALUES (226, '2021/10/05/5219c8f70ff4469d91cad9ea390e5165.jpg', 'LOCAL', '5219c8f70ff4469d91cad9ea390e5165.jpg', '.jpg', 226491, 'e67308c199083da8db1e43c588694c6f', '2021-10-05 16:16:54.173', '2021-10-05 16:16:54.173', NULL);
INSERT INTO `sys_file` VALUES (227, '2021/10/05/a8b5d621b5854d89ae6b29b6c0cb4abe.jpg', 'LOCAL', 'a8b5d621b5854d89ae6b29b6c0cb4abe.jpg', '.jpg', 226618, 'bd22f6222d362581dd8e50cff37c7329', '2021-10-05 16:20:52.154', '2021-10-05 16:20:52.154', NULL);
INSERT INTO `sys_file` VALUES (228, '2021/10/05/7fb28c87e1d14177a50cb216a21b84f8.jpg', 'LOCAL', '7fb28c87e1d14177a50cb216a21b84f8.jpg', '.jpg', 220659, '474c82b07862222469c33334f57af9a9', '2021-10-05 16:21:07.997', '2021-10-05 16:21:07.997', NULL);
INSERT INTO `sys_file` VALUES (229, '2021/10/05/e907da96bf9a4930b534267ce0ce178b.jpg', 'LOCAL', 'e907da96bf9a4930b534267ce0ce178b.jpg', '.jpg', 225706, '9e1a258c81b1af9d1ff6a56e0d160c80', '2021-10-05 18:20:16.522', '2021-10-05 18:20:16.522', NULL);
INSERT INTO `sys_file` VALUES (230, '2021/10/05/c0b2fe586b8f4276aeab6b925ce38edd.jpg', 'LOCAL', 'c0b2fe586b8f4276aeab6b925ce38edd.jpg', '.jpg', 225521, '1220889bf65153bf66d54ee461c11620', '2021-10-05 18:23:41.509', '2021-10-05 18:23:41.509', NULL);
INSERT INTO `sys_file` VALUES (231, '2021/10/05/9d6f5f17c19349ef890081d8af8151e3.jpg', 'LOCAL', '9d6f5f17c19349ef890081d8af8151e3.jpg', '.jpg', 216135, '2bb29dabee77c2496089b2a05a0515be', '2021-10-05 18:27:22.920', '2021-10-05 18:27:22.920', NULL);
INSERT INTO `sys_file` VALUES (232, '2021/10/05/8bbb57da08444b37ab21859be5e3eeea.jpg', 'LOCAL', '8bbb57da08444b37ab21859be5e3eeea.jpg', '.jpg', 216573, 'a3b3539fd8913732eb13543aa8f9fa4c', '2021-10-05 18:27:38.499', '2021-10-05 18:27:38.499', NULL);
INSERT INTO `sys_file` VALUES (233, '2021/10/05/1d8c4f4a105446559fc2ad1ec78543e9.jpg', 'LOCAL', '1d8c4f4a105446559fc2ad1ec78543e9.jpg', '.jpg', 225188, 'a49974fe5e10102c7b6ab45fe8b7fbfa', '2021-10-05 18:34:33.157', '2021-10-05 18:34:33.157', NULL);
INSERT INTO `sys_file` VALUES (234, '2021/10/05/a80ee72bbd1348238901af6408b2f1bd.jpg', 'LOCAL', 'a80ee72bbd1348238901af6408b2f1bd.jpg', '.jpg', 224045, '1742078459d00f924528067b5d324b1e', '2021-10-05 18:36:58.946', '2021-10-05 18:36:58.946', NULL);
INSERT INTO `sys_file` VALUES (235, '2021/10/05/bc15b003d31f4068a32ebf278c7b63d1.jpg', 'LOCAL', 'bc15b003d31f4068a32ebf278c7b63d1.jpg', '.jpg', 225200, 'e2eeb45c0717cb2f5c8d6961a5d0564e', '2021-10-05 18:40:22.006', '2021-10-05 18:40:22.006', NULL);
INSERT INTO `sys_file` VALUES (236, '2021/10/06/109d0de4aef04abe9573469f305678ed.jpg', 'LOCAL', '109d0de4aef04abe9573469f305678ed.jpg', '.jpg', 269816, '1d51c02a01f944b0e864c07c373ac27b', '2021-10-06 09:12:51.562', '2021-10-06 09:12:51.562', NULL);
INSERT INTO `sys_file` VALUES (237, '2021/10/06/fa3f5ba943d0447d8e279eaeee067e8f.jpg', 'LOCAL', 'fa3f5ba943d0447d8e279eaeee067e8f.jpg', '.jpg', 225096, 'ebc6365d63060539ef64d06ee8d33844', '2021-10-06 09:13:53.006', '2021-10-06 09:13:53.006', NULL);
INSERT INTO `sys_file` VALUES (238, '2021/10/06/241c47cb630d46d98245e2e1ba9564bf.jpg', 'LOCAL', '241c47cb630d46d98245e2e1ba9564bf.jpg', '.jpg', 269404, '36e7b5f0f29dded6361066831801ff8f', '2021-10-06 09:16:32.156', '2021-10-06 09:16:32.156', NULL);
INSERT INTO `sys_file` VALUES (239, '2021/10/06/47328de2e73640eaba0622df791d8c79.jpg', 'LOCAL', '47328de2e73640eaba0622df791d8c79.jpg', '.jpg', 228257, 'd2218de73f70b9e8c00f8aab91ba937d', '2021-10-06 09:17:54.814', '2021-10-06 09:17:54.814', NULL);
INSERT INTO `sys_file` VALUES (240, '2021/10/06/c3a9efbecbc545c8979b1b85fc921ff8.jpg', 'LOCAL', 'c3a9efbecbc545c8979b1b85fc921ff8.jpg', '.jpg', 200132, '3d5522973932e1d3a84b8f6bb5ba4866', '2021-10-06 09:18:31.785', '2021-10-06 09:18:31.785', NULL);
INSERT INTO `sys_file` VALUES (241, '2021/10/06/17511ecfeb674e66b7255e426a40d18d.jpg', 'LOCAL', '17511ecfeb674e66b7255e426a40d18d.jpg', '.jpg', 3895, 'f7adc73924b0286e65237e4715fd9b6d', '2021-10-06 09:43:17.677', '2021-10-06 09:43:17.677', NULL);
INSERT INTO `sys_file` VALUES (242, '2021/10/06/de3d3ba2d0004947afbcf80bb30b99fb.jpg', 'LOCAL', 'de3d3ba2d0004947afbcf80bb30b99fb.jpg', '.jpg', 1628, 'a072335385e684dec99ec63b2153c904', '2021-10-06 09:43:35.023', '2021-10-06 09:43:35.023', NULL);
INSERT INTO `sys_file` VALUES (243, '2021/10/06/cc52c460314146bca6ad98f1dbb8e038.jpg', 'LOCAL', 'cc52c460314146bca6ad98f1dbb8e038.jpg', '.jpg', 3982, '10ffffd64b6dd08872a9e1575601f303', '2021-10-06 10:03:12.525', '2021-10-06 10:03:12.525', NULL);
INSERT INTO `sys_file` VALUES (244, '2021/10/06/ad4b1d230c104477a5acd0d1192d7889.jpg', 'LOCAL', 'ad4b1d230c104477a5acd0d1192d7889.jpg', '.jpg', 21535, 'b3dbe0dc1d494fdbb0936c55426c6e34', '2021-10-06 10:03:28.558', '2021-10-06 10:03:28.558', NULL);
INSERT INTO `sys_file` VALUES (245, '2021/10/06/a6b7e360ca8a4a7390fd604d316e26bc.jpg', 'LOCAL', 'a6b7e360ca8a4a7390fd604d316e26bc.jpg', '.jpg', 4161, 'ef2c045ea33df5cf1adf07bfd0a0df9b', '2021-10-06 10:06:48.035', '2021-10-06 10:06:48.035', NULL);
INSERT INTO `sys_file` VALUES (246, '2021/10/06/8d0f6e0e9a9f4e89a8b68d77a1aa053f.jpg', 'LOCAL', '8d0f6e0e9a9f4e89a8b68d77a1aa053f.jpg', '.jpg', 24775, '0f95a3d5b76aeeb4d564f214a0845297', '2021-10-06 10:07:05.340', '2021-10-06 10:07:05.340', NULL);
INSERT INTO `sys_file` VALUES (247, '2021/10/06/40614157a9dd4369a5de86e4cd05fc16.jpg', 'LOCAL', '40614157a9dd4369a5de86e4cd05fc16.jpg', '.jpg', 3689, '4adbae632f072f512796fe7250c04997', '2021-10-06 10:12:34.259', '2021-10-06 10:12:34.259', NULL);
INSERT INTO `sys_file` VALUES (248, '2021/10/06/40f0809ecbc74f60a22cd99eaee98139.jpg', 'LOCAL', '40f0809ecbc74f60a22cd99eaee98139.jpg', '.jpg', 3329, '5f2a7323140b74113c6f8c8bdd3f778e', '2021-10-06 10:14:56.248', '2021-10-06 10:14:56.248', NULL);
INSERT INTO `sys_file` VALUES (249, '2021/10/06/39bff577d1a349f78b760cd30e517e12.jpg', 'LOCAL', '39bff577d1a349f78b760cd30e517e12.jpg', '.jpg', 21787, '5ba729cdb58b48d052933ea152508e9e', '2021-10-06 10:16:41.627', '2021-10-06 10:16:41.627', NULL);
INSERT INTO `sys_file` VALUES (250, '2021/10/06/a0e98804c6b5468bb90b382de5f062e9.jpg', 'LOCAL', 'a0e98804c6b5468bb90b382de5f062e9.jpg', '.jpg', 3768, '11a419c9f286cd3cb110377947e88866', '2021-10-06 10:20:16.861', '2021-10-06 10:20:16.861', NULL);
INSERT INTO `sys_file` VALUES (251, '2021/10/06/976b0a5d0c394e609dc487f185b40553.jpg', 'LOCAL', '976b0a5d0c394e609dc487f185b40553.jpg', '.jpg', 21926, 'd15888a35c50e3b5959714ae2d382734', '2021-10-06 10:21:39.091', '2021-10-06 10:21:39.091', NULL);
INSERT INTO `sys_file` VALUES (252, '2021/10/06/864bb16aa9124a0bb8a1cf41817d8b18.jpg', 'LOCAL', '864bb16aa9124a0bb8a1cf41817d8b18.jpg', '.jpg', 36778, 'ef0612a1f33a6719a582e990b3b79266', '2021-10-06 10:59:44.855', '2021-10-06 10:59:44.855', NULL);
INSERT INTO `sys_file` VALUES (253, '2021/10/06/b72a783f06904e578b0fe48778c660a2.jpg', 'LOCAL', 'b72a783f06904e578b0fe48778c660a2.jpg', '.jpg', 34163, '41f9043f3bfc5b6e20c4001c66e7ea19', '2021-10-06 10:59:51.003', '2021-10-06 10:59:51.003', NULL);
INSERT INTO `sys_file` VALUES (254, '2021/10/06/750001a3eabf4bd28179cd45b23f563a.jpg', 'LOCAL', '750001a3eabf4bd28179cd45b23f563a.jpg', '.jpg', 36492, 'ff4c096e6b74fb75336a5b910c742d41', '2021-10-06 10:59:56.531', '2021-10-06 10:59:56.531', NULL);
INSERT INTO `sys_file` VALUES (255, '2021/10/06/130c7d521f4e41e49497e6215078e544.jpg', 'LOCAL', '130c7d521f4e41e49497e6215078e544.jpg', '.jpg', 29523, '6e6a1cf11a30491f4ae358494d74a228', '2021-10-06 11:00:02.108', '2021-10-06 11:00:02.108', NULL);
INSERT INTO `sys_file` VALUES (256, '2021/10/06/e33ce2398b744e7e9765457f03670fd7.jpg', 'LOCAL', 'e33ce2398b744e7e9765457f03670fd7.jpg', '.jpg', 30021, 'e50957d3a67915c4a2c07a0ccd87f9e9', '2021-10-06 11:00:07.154', '2021-10-06 11:00:07.154', NULL);
INSERT INTO `sys_file` VALUES (257, '2021/10/06/dd186fe4181c492081c00354818ed693.jpg', 'LOCAL', 'dd186fe4181c492081c00354818ed693.jpg', '.jpg', 34069, '6f48af4fcdca2e2a15659802af776d84', '2021-10-06 11:00:12.975', '2021-10-06 11:00:12.975', NULL);
INSERT INTO `sys_file` VALUES (258, '2021/10/06/ada47169a9c94b54916d6eaf92600bf4.jpg', 'LOCAL', 'ada47169a9c94b54916d6eaf92600bf4.jpg', '.jpg', 33418, '037f7e0825451bbeb50111bdde9d1432', '2021-10-06 11:00:21.123', '2021-10-06 11:00:21.123', NULL);
INSERT INTO `sys_file` VALUES (259, '2021/10/06/cdb5e00d84a34ecaada32a3b5a888ad0.jpg', 'LOCAL', 'cdb5e00d84a34ecaada32a3b5a888ad0.jpg', '.jpg', 32666, 'cedbac317c617fed1849fe02a9edace4', '2021-10-06 11:00:27.047', '2021-10-06 11:00:27.047', NULL);
INSERT INTO `sys_file` VALUES (260, '2021/10/06/e551c1644cbc4e80b7dfa5cab43b1c49.jpg', 'LOCAL', 'e551c1644cbc4e80b7dfa5cab43b1c49.jpg', '.jpg', 37475, '0164bbfb0be59f880ada1bb34ce472d2', '2021-10-06 11:00:33.206', '2021-10-06 11:00:33.206', NULL);
INSERT INTO `sys_file` VALUES (261, '2021/10/06/37687e7f716a4d5496afbcb14070f557.jpg', 'LOCAL', '37687e7f716a4d5496afbcb14070f557.jpg', '.jpg', 37973, '8a1cf84e3787d04ca994d733012d6af5', '2021-10-06 11:00:38.602', '2021-10-06 11:00:38.602', NULL);
INSERT INTO `sys_file` VALUES (262, '2021/10/06/1a6789c4ea51447981cc705776f04679.jpg', 'LOCAL', '1a6789c4ea51447981cc705776f04679.jpg', '.jpg', 36695, '86ddf4e1bc1db74eb0ceebadc5c3027f', '2021-10-06 11:00:43.915', '2021-10-06 11:00:43.915', NULL);
INSERT INTO `sys_file` VALUES (263, '2021/10/06/2899b0d5154a4c66870629ddb89addce.jpg', 'LOCAL', '2899b0d5154a4c66870629ddb89addce.jpg', '.jpg', 34541, 'a2aac839238caecfc4f527dabaf35779', '2021-10-06 11:00:49.196', '2021-10-06 11:00:49.196', NULL);
INSERT INTO `sys_file` VALUES (264, '2021/10/06/0700fad9bdb6463c821c78b56e6b786d.jpg', 'LOCAL', '0700fad9bdb6463c821c78b56e6b786d.jpg', '.jpg', 33622, 'e9e1e08c8fcc6a4df3037ef71eb38ff1', '2021-10-06 11:00:55.851', '2021-10-06 11:00:55.851', NULL);
INSERT INTO `sys_file` VALUES (265, '2021/10/06/372d9301e8b544f09c55fc1ee3588db4.jpg', 'LOCAL', '372d9301e8b544f09c55fc1ee3588db4.jpg', '.jpg', 33041, '52b96e778623c4096ae864526f3bbc9a', '2021-10-06 11:01:01.504', '2021-10-06 11:01:01.504', NULL);
INSERT INTO `sys_file` VALUES (266, '2021/10/06/5ba27e6c2dee421191bae3d75d204c59.png', 'LOCAL', '5ba27e6c2dee421191bae3d75d204c59.png', '.png', 4144, '79ed129b08a93658e0f26e7304550f70', '2021-10-06 11:03:11.244', '2021-10-06 11:03:11.244', NULL);
INSERT INTO `sys_file` VALUES (267, '2021/10/06/711456482729482b923899b988881a69.jpg', 'LOCAL', '711456482729482b923899b988881a69.jpg', '.jpg', 2749, '33092e133eb3fc1f2da61524d4f55362', '2021-10-06 11:03:17.193', '2021-10-06 11:03:17.193', NULL);
INSERT INTO `sys_file` VALUES (268, '2021/10/06/5e623c92321d428dbd3d8f6f62132719.jpg', 'LOCAL', '5e623c92321d428dbd3d8f6f62132719.jpg', '.jpg', 2537, 'f8022b3858180637e13155ef871eef85', '2021-10-06 11:03:22.572', '2021-10-06 11:03:22.572', NULL);
INSERT INTO `sys_file` VALUES (269, '2021/10/06/41d1a914b25040c08c655cea4d4f9a7a.jpg', 'LOCAL', '41d1a914b25040c08c655cea4d4f9a7a.jpg', '.jpg', 42300, '726d8ccc3e102f78f20903c086dde147', '2021-10-06 11:03:43.351', '2021-10-06 11:03:43.351', NULL);
INSERT INTO `sys_file` VALUES (270, '2021/10/06/26ab231ac9f44fb2be0961db0ea3b3ad.jpg', 'LOCAL', '26ab231ac9f44fb2be0961db0ea3b3ad.jpg', '.jpg', 41085, '9d9f2d5a9f5b1e1d1dd4c806f08fe170', '2021-10-06 11:03:49.857', '2021-10-06 11:03:49.857', NULL);
INSERT INTO `sys_file` VALUES (271, '2021/10/06/c82fa09d418a4546a67af0ece216b668.jpg', 'LOCAL', 'c82fa09d418a4546a67af0ece216b668.jpg', '.jpg', 43957, 'c77eb77f124048f9b0a822826e340dbd', '2021-10-06 11:03:58.112', '2021-10-06 11:03:58.112', NULL);
INSERT INTO `sys_file` VALUES (272, '2021/10/06/1f0ba3f3a53645188deabbf14b9095fc.jpg', 'LOCAL', '1f0ba3f3a53645188deabbf14b9095fc.jpg', '.jpg', 41848, 'a34ad49d36bc4f8d69db83881f4be32c', '2021-10-06 11:04:05.202', '2021-10-06 11:04:05.202', NULL);
INSERT INTO `sys_file` VALUES (273, '2021/10/06/5361a474421e416aa655926d993c9158.jpg', 'LOCAL', '5361a474421e416aa655926d993c9158.jpg', '.jpg', 42436, 'a3f999725d13edf1dacbb706413bf0c2', '2021-10-06 11:04:11.740', '2021-10-06 11:04:11.740', NULL);
INSERT INTO `sys_file` VALUES (274, '2021/10/06/69449d037ff84ded82eee1802d798f48.jpg', 'LOCAL', '69449d037ff84ded82eee1802d798f48.jpg', '.jpg', 43063, '2d3e52f56e351d018d524000a390fd84', '2021-10-06 11:04:19.722', '2021-10-06 11:04:19.722', NULL);
INSERT INTO `sys_file` VALUES (275, '2021/10/06/c8d91e2d6cb745349e02d99b4c436da6.jpg', 'LOCAL', 'c8d91e2d6cb745349e02d99b4c436da6.jpg', '.jpg', 29801, 'ef3c1166c49a9c2a9de6f9dd06d27b28', '2021-10-06 11:19:30.679', '2021-10-06 11:19:30.679', NULL);
INSERT INTO `sys_file` VALUES (276, '2021/10/06/0f14afea71bc4d67b2c2cd4fd1207b4c.jpg', 'LOCAL', '0f14afea71bc4d67b2c2cd4fd1207b4c.jpg', '.jpg', 29258, '1412c42551a38d26a943ae4958b886b4', '2021-10-06 11:19:38.658', '2021-10-06 11:19:38.658', NULL);
INSERT INTO `sys_file` VALUES (277, '2021/10/06/8f1eb461a72242f5b15286bfd1edd043.jpg', 'LOCAL', '8f1eb461a72242f5b15286bfd1edd043.jpg', '.jpg', 28693, '4755b3e7af3fb5ed75c4cbb94600795b', '2021-10-06 11:19:45.519', '2021-10-06 11:19:45.519', NULL);
INSERT INTO `sys_file` VALUES (278, '2021/10/06/c69e50c719bc4be7b5afd6223023c529.jpg', 'LOCAL', 'c69e50c719bc4be7b5afd6223023c529.jpg', '.jpg', 28128, 'dc10e2e2ce4c4ac3585594d236211ac6', '2021-10-06 11:19:52.053', '2021-10-06 11:19:52.053', NULL);
INSERT INTO `sys_file` VALUES (279, '2021/10/06/36072adad92443b0a3d3338f5a8ad183.jpg', 'LOCAL', '36072adad92443b0a3d3338f5a8ad183.jpg', '.jpg', 29841, 'ea91bede18df0efe59f17b86ed6c81b9', '2021-10-06 11:19:57.808', '2021-10-06 11:19:57.808', NULL);
INSERT INTO `sys_file` VALUES (280, '2021/10/06/f13e9f1f18d44184b4e6cbcf2130720e.jpg', 'LOCAL', 'f13e9f1f18d44184b4e6cbcf2130720e.jpg', '.jpg', 31248, 'ec4b9c83809b03582bb259291a4e193e', '2021-10-06 11:20:05.776', '2021-10-06 11:20:05.776', NULL);
INSERT INTO `sys_file` VALUES (281, '2021/10/06/3fecba2cf959401080d4fab6d7a231ad.jpg', 'LOCAL', '3fecba2cf959401080d4fab6d7a231ad.jpg', '.jpg', 28168, '696d074e9ee6ba944ad9c2590d7d07db', '2021-10-06 11:20:13.664', '2021-10-06 11:20:13.664', NULL);
INSERT INTO `sys_file` VALUES (282, '2021/10/06/2fd6a57249da4d79aa829d93f7028825.jpg', 'LOCAL', '2fd6a57249da4d79aa829d93f7028825.jpg', '.jpg', 33307, '4366a98ad2d7ae3a78d55b14bee71346', '2021-10-06 11:20:20.230', '2021-10-06 11:20:20.230', NULL);
INSERT INTO `sys_file` VALUES (283, '2021/10/06/25f6b38b5e7b4e3e804dd1bc3945bfc0.jpg', 'LOCAL', '25f6b38b5e7b4e3e804dd1bc3945bfc0.jpg', '.jpg', 35133, '81d0b6bfa70baffc41a7c1e9714e190d', '2021-10-06 11:20:27.959', '2021-10-06 11:20:27.959', NULL);
INSERT INTO `sys_file` VALUES (284, '2021/10/06/7b0b4ab5dd2c421c9e3e2da087d59796.jpg', 'LOCAL', '7b0b4ab5dd2c421c9e3e2da087d59796.jpg', '.jpg', 26158, 'f1096fc50e779c90fbbc2cce6c74224d', '2021-10-06 11:20:33.764', '2021-10-06 11:20:33.764', NULL);
INSERT INTO `sys_file` VALUES (285, '2021/10/06/961f6b7d42514608857e7e90817d0ba5.jpg', 'LOCAL', '961f6b7d42514608857e7e90817d0ba5.jpg', '.jpg', 32599, 'd6fc4331d3277e43d2b44e6c8de4c311', '2021-10-06 11:20:39.497', '2021-10-06 11:20:39.497', NULL);
INSERT INTO `sys_file` VALUES (286, '2021/10/06/779aba1761cf491cb57fa73ca34fd7e5.jpg', 'LOCAL', '779aba1761cf491cb57fa73ca34fd7e5.jpg', '.jpg', 29059, '170a817b26e57a524da4db7da82b913a', '2021-10-06 11:21:34.967', '2021-10-06 11:21:34.967', NULL);
INSERT INTO `sys_file` VALUES (287, '2021/10/06/6a4a6ab2f0db460ab64bf030f9287708.jpg', 'LOCAL', '6a4a6ab2f0db460ab64bf030f9287708.jpg', '.jpg', 34205, '0b25f6f42efa6efa91827e917f52a9bb', '2021-10-06 11:21:42.416', '2021-10-06 11:21:42.416', NULL);
INSERT INTO `sys_file` VALUES (288, '2021/10/06/9eb2d472b50d43208f5bfbd7851137fc.jpg', 'LOCAL', '9eb2d472b50d43208f5bfbd7851137fc.jpg', '.jpg', 27893, 'cc85ac1d73e256e2ac890768ce841d8f', '2021-10-06 11:21:50.717', '2021-10-06 11:21:50.717', NULL);
INSERT INTO `sys_file` VALUES (289, '2021/10/06/8f1cbb205d894c9cb805feb15e1627c2.jpg', 'LOCAL', '8f1cbb205d894c9cb805feb15e1627c2.jpg', '.jpg', 28545, 'd29d220b7bbb7e141d9394c78af276f0', '2021-10-06 11:32:18.838', '2021-10-06 11:32:18.838', NULL);
INSERT INTO `sys_file` VALUES (290, '2021/10/06/5f1c5401f710444c8593ffb26477f3f5.jpg', 'LOCAL', '5f1c5401f710444c8593ffb26477f3f5.jpg', '.jpg', 28285, '5640236e6334144f1d5de94fef65334b', '2021-10-06 11:32:27.672', '2021-10-06 11:32:27.672', NULL);
INSERT INTO `sys_file` VALUES (291, '2021/10/06/309a94c285c94795960a21a1ad08c11b.jpg', 'LOCAL', '309a94c285c94795960a21a1ad08c11b.jpg', '.jpg', 29060, '9c6d0d1af20f3769a6c0b1ff7cd4f52f', '2021-10-06 11:32:33.954', '2021-10-06 11:32:33.954', NULL);
INSERT INTO `sys_file` VALUES (292, '2021/10/06/2d4cdf25822643a2835189fd86b82136.jpg', 'LOCAL', '2d4cdf25822643a2835189fd86b82136.jpg', '.jpg', 29182, 'bacbba8f456a6c763662022c54e7478f', '2021-10-06 11:32:41.581', '2021-10-06 11:32:41.581', NULL);
INSERT INTO `sys_file` VALUES (293, '2021/10/06/b26e864ccce2410397139e08752d118c.jpg', 'LOCAL', 'b26e864ccce2410397139e08752d118c.jpg', '.jpg', 28349, '02586bf1d456914696c412201bd72de8', '2021-10-06 11:32:47.930', '2021-10-06 11:32:47.930', NULL);
INSERT INTO `sys_file` VALUES (294, '2021/10/06/1d4aa52184ba4f9bad6e049801204c91.jpg', 'LOCAL', '1d4aa52184ba4f9bad6e049801204c91.jpg', '.jpg', 28030, '12cdbc91c0772d0c1d6b234da4bd5e2f', '2021-10-06 11:32:55.250', '2021-10-06 11:32:55.250', NULL);
INSERT INTO `sys_file` VALUES (295, '2021/10/06/639dcc1aa9934a369bf10e0b8dc1b97e.jpg', 'LOCAL', '639dcc1aa9934a369bf10e0b8dc1b97e.jpg', '.jpg', 24462, '23bbd701b3754075223623afed55024b', '2021-10-06 11:33:03.944', '2021-10-06 11:33:03.944', NULL);
INSERT INTO `sys_file` VALUES (296, '2021/10/06/a0040e0269a64e41a4cb251c119f7d84.jpg', 'LOCAL', 'a0040e0269a64e41a4cb251c119f7d84.jpg', '.jpg', 27623, '4f6404fdb84b9854d44360f8207a7478', '2021-10-06 11:33:23.230', '2021-10-06 11:33:23.230', NULL);
INSERT INTO `sys_file` VALUES (297, '2021/10/06/c0315e4449bc4dafb62b44342c7aac25.jpg', 'LOCAL', 'c0315e4449bc4dafb62b44342c7aac25.jpg', '.jpg', 28118, 'd4188ada76bf7f22c41bf3d4c402d122', '2021-10-06 11:33:29.753', '2021-10-06 11:33:29.753', NULL);
INSERT INTO `sys_file` VALUES (298, '2021/10/06/3f52b9c6211447458cdd5e7ed8566903.jpg', 'LOCAL', '3f52b9c6211447458cdd5e7ed8566903.jpg', '.jpg', 27896, '4d21568ee131131180f692554f8f5976', '2021-10-06 11:33:35.890', '2021-10-06 11:33:35.890', NULL);
INSERT INTO `sys_file` VALUES (299, '2021/10/06/486bded72e0a4443a3afe7502b3a57ee.jpg', 'LOCAL', '486bded72e0a4443a3afe7502b3a57ee.jpg', '.jpg', 28943, '9da73d29fd421be0578cc7da63ea16ff', '2021-10-06 11:33:59.835', '2021-10-06 11:33:59.835', NULL);
INSERT INTO `sys_file` VALUES (300, '2021/10/06/10e1e44980e84c8aa61befdf9050a7b4.jpg', 'LOCAL', '10e1e44980e84c8aa61befdf9050a7b4.jpg', '.jpg', 24747, '5727c0c9c6e08bf217775cd85933faef', '2021-10-06 11:34:05.372', '2021-10-06 11:34:05.372', NULL);
INSERT INTO `sys_file` VALUES (301, '2021/10/06/ee40a6b0cae2461abc6314bc6525e8ae.jpg', 'LOCAL', 'ee40a6b0cae2461abc6314bc6525e8ae.jpg', '.jpg', 28088, '91bb23005b15260ad842176cdb659c24', '2021-10-06 11:34:23.441', '2021-10-06 11:34:23.441', NULL);
INSERT INTO `sys_file` VALUES (302, '2021/10/06/96ca625b99b24146908ce35285cbdd88.jpg', 'LOCAL', '96ca625b99b24146908ce35285cbdd88.jpg', '.jpg', 20766, '0a6a485c3abc28679190828a0eccd5c5', '2021-10-06 11:34:42.115', '2021-10-06 11:34:42.115', NULL);
INSERT INTO `sys_file` VALUES (303, '2021/10/06/ce316f764e06419c98634453e4de5e00.jpg', 'LOCAL', 'ce316f764e06419c98634453e4de5e00.jpg', '.jpg', 21039, '077d9b4bc0e4a364240ad7cb107782a4', '2021-10-06 11:34:49.860', '2021-10-06 11:34:49.860', NULL);
INSERT INTO `sys_file` VALUES (304, '2021/10/06/57441ba08ec14be7b5eab3f6e66fffdc.jpg', 'LOCAL', '57441ba08ec14be7b5eab3f6e66fffdc.jpg', '.jpg', 20851, 'f5b0ded3041749bddf45dc7080363a24', '2021-10-06 11:34:56.977', '2021-10-06 11:34:56.977', NULL);
INSERT INTO `sys_file` VALUES (305, '2021/10/06/ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', 'LOCAL', 'ceaf3cbf4ff44dcb9badfa71f27840d9.jpg', '.jpg', 190458, '6f5d54c8d6714678565dca714d770c09', '2021-10-06 13:44:04.148', '2021-10-06 13:44:04.148', NULL);
INSERT INTO `sys_file` VALUES (306, '2021/10/06/8c50e432fdd44c49b7a167d909311026.jpg', 'LOCAL', '8c50e432fdd44c49b7a167d909311026.jpg', '.jpg', 195621, 'f5a4f2dfad5086c3f156ea6dcb9c0d7b', '2021-10-06 13:44:17.397', '2021-10-06 13:44:17.397', NULL);
INSERT INTO `sys_file` VALUES (307, '2021/10/06/fc75e0f09fc14805abcd797cf6aeb3f1.jpg', 'LOCAL', 'fc75e0f09fc14805abcd797cf6aeb3f1.jpg', '.jpg', 175798, 'e0b9bceeb96470cf020fcd10ba5a4c34', '2021-10-06 13:44:17.401', '2021-10-06 13:44:17.401', NULL);
INSERT INTO `sys_file` VALUES (308, '2021/10/06/450a430074cc495986690c6ff9246d03.jpg', 'LOCAL', '450a430074cc495986690c6ff9246d03.jpg', '.jpg', 161872, '85e91008e36b8d0386c14d14e3f2a964', '2021-10-06 13:44:17.405', '2021-10-06 13:44:17.405', NULL);
INSERT INTO `sys_file` VALUES (309, '2021/10/06/25c213be33884846958bac626634a883.jpg', 'LOCAL', '25c213be33884846958bac626634a883.jpg', '.jpg', 201811, '460e582d98b4c87dcac2e36fa24e3f2d', '2021-10-06 13:44:17.409', '2021-10-06 13:44:17.409', NULL);
INSERT INTO `sys_file` VALUES (310, '2021/10/06/1ea3807043e64201a74a69f42c6bfc97.jpg', 'LOCAL', '1ea3807043e64201a74a69f42c6bfc97.jpg', '.jpg', 2843, 'd24e08bc01616bae482a43f35dce7c7a', '2021-10-06 13:55:41.414', '2021-10-06 13:55:41.414', NULL);
INSERT INTO `sys_file` VALUES (311, '2021/10/06/9d75e88e27034a988792724e7adc3b34.jpg', 'LOCAL', '9d75e88e27034a988792724e7adc3b34.jpg', '.jpg', 3064, 'beeb1b07fb4efacc6f3be4aede229f56', '2021-10-06 13:55:53.175', '2021-10-06 13:55:53.175', NULL);
INSERT INTO `sys_file` VALUES (312, '2021/10/06/333046492d2c4015892e5d9e3ed29d48.jpg', 'LOCAL', '333046492d2c4015892e5d9e3ed29d48.jpg', '.jpg', 2957, 'b63fbf0e84f47a5b4ebd249224b24c67', '2021-10-06 13:56:01.621', '2021-10-06 13:56:01.621', NULL);
INSERT INTO `sys_file` VALUES (313, '2021/10/06/749edc9877a446048a14e47f04250c27.jpg', 'LOCAL', '749edc9877a446048a14e47f04250c27.jpg', '.jpg', 40800, '8d88c45b12445afff65eb213d7eb00dc', '2021-10-06 14:06:19.171', '2021-10-06 14:06:19.171', NULL);
INSERT INTO `sys_file` VALUES (314, '2021/10/06/d1653dced44c4d53a1eb12b66e434d79.jpg', 'LOCAL', 'd1653dced44c4d53a1eb12b66e434d79.jpg', '.jpg', 39997, 'eb39f8d555011623e03dd2f695bd4445', '2021-10-06 14:06:35.569', '2021-10-06 14:06:35.569', NULL);
INSERT INTO `sys_file` VALUES (315, '2021/10/06/004a0360241a4043b79aec06f61549c1.jpg', 'LOCAL', '004a0360241a4043b79aec06f61549c1.jpg', '.jpg', 35664, 'c144482fa7ee4e6fdd067fab0ef15e0a', '2021-10-06 14:08:01.449', '2021-10-06 14:08:01.449', NULL);
INSERT INTO `sys_file` VALUES (316, '2021/10/06/f4d59eb950b24f3eb9f9ad3a51450b1c.jpg', 'LOCAL', 'f4d59eb950b24f3eb9f9ad3a51450b1c.jpg', '.jpg', 38481, '2b8e440f8802c2cf449eca966bf7f7f5', '2021-10-06 14:08:12.188', '2021-10-06 14:08:12.188', NULL);
INSERT INTO `sys_file` VALUES (317, '2021/10/06/097f7bdc29f640b7a51adffe47dc1643.jpg', 'LOCAL', '097f7bdc29f640b7a51adffe47dc1643.jpg', '.jpg', 43068, 'f290a9f4faf5ef0055ccd12fbbf210f3', '2021-10-06 14:09:01.850', '2021-10-06 14:09:01.850', NULL);
INSERT INTO `sys_file` VALUES (318, '2021/10/06/073a1ff0da3c4dd58d86254903668450.jpg', 'LOCAL', '073a1ff0da3c4dd58d86254903668450.jpg', '.jpg', 40436, '9b6988400252e52ac435a1672e203757', '2021-10-06 14:09:57.275', '2021-10-06 14:09:57.275', NULL);
INSERT INTO `sys_file` VALUES (319, '2021/10/06/8e1a2814b31840d9b8e48093eefa1aae.jpg', 'LOCAL', '8e1a2814b31840d9b8e48093eefa1aae.jpg', '.jpg', 38679, '7c25be317be6a30c2ba1c96e1e355eb6', '2021-10-06 14:10:38.033', '2021-10-06 14:10:38.033', NULL);
INSERT INTO `sys_file` VALUES (320, '2021/10/06/bffd1315845f4bf79fb498db080e62a9.jpg', 'LOCAL', 'bffd1315845f4bf79fb498db080e62a9.jpg', '.jpg', 170387, '9335dad87e071309dd0bcdf8f0b96b6f', '2021-10-06 14:39:30.287', '2021-10-06 14:39:30.287', NULL);
INSERT INTO `sys_file` VALUES (321, '2021/10/06/519f9fb8706b4901918d18f75859beac.jpg', 'LOCAL', '519f9fb8706b4901918d18f75859beac.jpg', '.jpg', 178642, 'f32fc1c657d5341733f108ddd1fd6174', '2021-10-06 14:39:42.363', '2021-10-06 14:39:42.363', NULL);
INSERT INTO `sys_file` VALUES (322, '2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', 'LOCAL', 'cad23af93890478c8fbb36f9c20c9356.jpg', '.jpg', 126355, '5c38308bdf411fd42d25793f329cd009', '2021-10-06 14:39:42.368', '2021-10-06 14:39:42.368', NULL);
INSERT INTO `sys_file` VALUES (323, '2021/10/06/945a91ba507049e8bfa77060f6392c18.jpg', 'LOCAL', '945a91ba507049e8bfa77060f6392c18.jpg', '.jpg', 173210, '01927180a557f062cee3d388c1a4e894', '2021-10-06 14:39:42.373', '2021-10-06 14:39:42.373', NULL);
INSERT INTO `sys_file` VALUES (324, '2021/10/06/50155490a99e47ce965774236aeb8050.jpg', 'LOCAL', '50155490a99e47ce965774236aeb8050.jpg', '.jpg', 165672, 'd74c3d1d5a5fdde8a4d21e70a7ff4fa1', '2021-10-06 14:39:42.377', '2021-10-06 14:39:42.377', NULL);
INSERT INTO `sys_file` VALUES (325, '2021/10/06/79851b53167b4340a0c1957442c4d751.jpg', 'LOCAL', '79851b53167b4340a0c1957442c4d751.jpg', '.jpg', 2621, '2c5fd6fcd3bd5ed1541b0b04b00d9fef', '2021-10-06 14:55:40.106', '2021-10-06 14:55:40.106', NULL);
INSERT INTO `sys_file` VALUES (326, '2021/10/06/34c6598ea4034036869bad4486e69aec.jpg', 'LOCAL', '34c6598ea4034036869bad4486e69aec.jpg', '.jpg', 2729, '9389e043c619f26566dfade59379ac9b', '2021-10-06 14:55:50.128', '2021-10-06 14:55:50.128', NULL);
INSERT INTO `sys_file` VALUES (327, '2021/10/06/04f691ac8abc49569334656686abeeaa.jpg', 'LOCAL', '04f691ac8abc49569334656686abeeaa.jpg', '.jpg', 33940, '67c836fa88961863aee8a358035a8898', '2021-10-06 14:57:17.204', '2021-10-06 14:57:17.204', NULL);
INSERT INTO `sys_file` VALUES (328, '2021/10/06/18deb4866f5d4382abda84cbdb51ef76.jpg', 'LOCAL', '18deb4866f5d4382abda84cbdb51ef76.jpg', '.jpg', 30082, '2b4017b1bf31d286d5a148aea6c0d369', '2021-10-06 14:57:29.527', '2021-10-06 14:57:29.527', NULL);
INSERT INTO `sys_file` VALUES (329, '2021/10/06/f1b71ac7678f4e2a8eb6775763602015.jpg', 'LOCAL', 'f1b71ac7678f4e2a8eb6775763602015.jpg', '.jpg', 29932, '6910cd94aef7cebeebb1eee4d2ed5b55', '2021-10-06 14:57:40.092', '2021-10-06 14:57:40.092', NULL);
INSERT INTO `sys_file` VALUES (330, '2021/10/06/161375298e2147669f1ac6d7b6a55620.jpg', 'LOCAL', '161375298e2147669f1ac6d7b6a55620.jpg', '.jpg', 34778, 'b830268713705361048399626e8886ba', '2021-10-06 14:57:49.639', '2021-10-06 14:57:49.639', NULL);
INSERT INTO `sys_file` VALUES (331, '2021/10/06/bd0aa46f33154cd896a30759aeb57c3c.jpg', 'LOCAL', 'bd0aa46f33154cd896a30759aeb57c3c.jpg', '.jpg', 236422, '26317e6f7512bc919a662a14130177e2', '2021-10-06 16:50:34.752', '2021-10-06 16:50:34.752', NULL);
INSERT INTO `sys_file` VALUES (332, '2021/10/06/0ac5533aeb5148eeaa0251ca6dddcb05.jpg', 'LOCAL', '0ac5533aeb5148eeaa0251ca6dddcb05.jpg', '.jpg', 159818, '5de5d9d92a8ba42e10b384068e89239c', '2021-10-06 16:50:45.995', '2021-10-06 16:50:45.995', NULL);
INSERT INTO `sys_file` VALUES (333, '2021/10/06/c1d11ce2e2fa4426add1cc9a5dfb660d.jpg', 'LOCAL', 'c1d11ce2e2fa4426add1cc9a5dfb660d.jpg', '.jpg', 132923, '1d56a15f05ec0038161c18f0e1131df4', '2021-10-06 16:50:45.999', '2021-10-06 16:50:45.999', NULL);
INSERT INTO `sys_file` VALUES (334, '2021/10/06/d4e42500c1744769a9c5e54f365e8a2f.jpg', 'LOCAL', 'd4e42500c1744769a9c5e54f365e8a2f.jpg', '.jpg', 36584, '1d5b4064279d69c2d067ce2d4fca4373', '2021-10-06 17:01:15.174', '2021-10-06 17:01:15.174', NULL);
INSERT INTO `sys_file` VALUES (335, '2021/10/06/284562840fce4f6aac4fd1bf9f34a66c.jpg', 'LOCAL', '284562840fce4f6aac4fd1bf9f34a66c.jpg', '.jpg', 4149, 'fa04d20d83e7453f4cd6c1512adadb9b', '2021-10-06 17:01:26.115', '2021-10-06 17:01:26.115', NULL);
INSERT INTO `sys_file` VALUES (336, '2021/10/06/257b08602d45403eb2ebd13ced664768.jpg', 'LOCAL', '257b08602d45403eb2ebd13ced664768.jpg', '.jpg', 4256, '371ea5f7796d73be6a3f722d00f69a9f', '2021-10-06 17:01:54.393', '2021-10-06 17:01:54.393', NULL);
INSERT INTO `sys_file` VALUES (337, '2021/10/06/4638f1c4ac1d4ab388ec4c7296f16cd6.jpg', 'LOCAL', '4638f1c4ac1d4ab388ec4c7296f16cd6.jpg', '.jpg', 4780, '188045b10acdfa6c0c8236b8c8ab2f46', '2021-10-06 17:02:02.640', '2021-10-06 17:02:02.640', NULL);
INSERT INTO `sys_file` VALUES (338, '2021/10/06/ea3f4af2c49544f999254c0afb81ea24.jpg', 'LOCAL', 'ea3f4af2c49544f999254c0afb81ea24.jpg', '.jpg', 954822, '0acc7a31ae0c952f91bf4a9f676cdc56', '2021-10-06 17:46:44.678', '2021-10-06 17:46:44.678', NULL);
INSERT INTO `sys_file` VALUES (339, '2021/10/06/941b36d3739143f389c6403038adfaee.jpg', 'LOCAL', '941b36d3739143f389c6403038adfaee.jpg', '.jpg', 194642, 'a93edb0fce21817fc079678c6c2517cb', '2021-10-06 17:48:58.352', '2021-10-06 17:48:58.352', NULL);
INSERT INTO `sys_file` VALUES (340, '2021/10/06/af618785694f4e7fa38822485a30bacf.jpg', 'LOCAL', 'af618785694f4e7fa38822485a30bacf.jpg', '.jpg', 283329, 'd34c951ec4c7b9c4dac0b405e23c9fcb', '2021-10-06 17:51:50.676', '2021-10-06 17:51:50.676', NULL);
INSERT INTO `sys_file` VALUES (341, '2021/10/07/ecfd7344286a41b9b10ea3dab992af63.jpg', 'LOCAL', 'ecfd7344286a41b9b10ea3dab992af63.jpg', '.jpg', 199744, '085fd470a58df8d82f4d84f6f5b8d47d', '2021-10-07 08:47:52.801', '2021-10-07 08:47:52.801', NULL);
INSERT INTO `sys_file` VALUES (342, '2021/10/07/524d01ff539547e29cc47e1b604bfd0b.jpg', 'LOCAL', '524d01ff539547e29cc47e1b604bfd0b.jpg', '.jpg', 233660, 'c64ef7fbb59d23c2fb5b53881899531a', '2021-10-07 08:48:04.510', '2021-10-07 08:48:04.510', NULL);
INSERT INTO `sys_file` VALUES (343, '2021/10/07/8e10429bd7ae4a83951d3c41f298b224.jpg', 'LOCAL', '8e10429bd7ae4a83951d3c41f298b224.jpg', '.jpg', 198607, '5abb87fa1d462b502ccb602dd9d16aff', '2021-10-07 08:48:04.538', '2021-10-07 08:48:04.538', NULL);
INSERT INTO `sys_file` VALUES (344, '2021/10/07/75d4a0302c994e3d8f4d6688e553a030.jpg', 'LOCAL', '75d4a0302c994e3d8f4d6688e553a030.jpg', '.jpg', 157613, 'ac545514a0441cb12ad00557a287ca92', '2021-10-07 08:48:04.543', '2021-10-07 08:48:04.543', NULL);
INSERT INTO `sys_file` VALUES (345, '2021/10/07/36f989e43d844390a10ca8bf2d74d690.jpg', 'LOCAL', '36f989e43d844390a10ca8bf2d74d690.jpg', '.jpg', 157180, 'ffa85d4f9e886b51dc687a1aa2db8eb6', '2021-10-07 08:48:04.547', '2021-10-07 08:48:04.547', NULL);
INSERT INTO `sys_file` VALUES (346, '2021/10/07/e8eea4d1219442c98f00c8af9b85ffbd.jpg', 'LOCAL', 'e8eea4d1219442c98f00c8af9b85ffbd.jpg', '.jpg', 32982, 'ee739e41821f89e45eb99bc191d71003', '2021-10-07 08:57:52.930', '2021-10-07 08:57:52.930', NULL);
INSERT INTO `sys_file` VALUES (347, '2021/10/07/0835de3e55c241ada1cc6bc446790025.jpg', 'LOCAL', '0835de3e55c241ada1cc6bc446790025.jpg', '.jpg', 22646, '3d6d99baf81892bd0045a3963bf0442e', '2021-10-07 08:58:10.592', '2021-10-07 08:58:10.592', NULL);
INSERT INTO `sys_file` VALUES (348, '2021/10/07/1283a229d7ef4683bef38c9bc67153ea.jpg', 'LOCAL', '1283a229d7ef4683bef38c9bc67153ea.jpg', '.jpg', 27180, 'a0aac5429b42602222444aa32a3c0e67', '2021-10-07 08:58:25.374', '2021-10-07 08:58:25.374', NULL);
INSERT INTO `sys_file` VALUES (349, '2021/10/07/af4631775ace411c801272ef8e122e59.jpg', 'LOCAL', 'af4631775ace411c801272ef8e122e59.jpg', '.jpg', 22688, '1203c9361f293a6a98bc023dc8234dfd', '2021-10-07 09:03:23.695', '2021-10-07 09:03:23.695', NULL);
INSERT INTO `sys_file` VALUES (350, '2021/10/07/0088873ec2c043759b9e85f3917d153e.jpg', 'LOCAL', '0088873ec2c043759b9e85f3917d153e.jpg', '.jpg', 26697, 'ecd4ccacd4a81a30b44f7124193cd17b', '2021-10-07 09:03:40.106', '2021-10-07 09:03:40.106', NULL);
INSERT INTO `sys_file` VALUES (351, '2021/10/07/dd3cfa8a7b254d8191b1e90fc681ce66.jpg', 'LOCAL', 'dd3cfa8a7b254d8191b1e90fc681ce66.jpg', '.jpg', 3593, '0ea78a96e40816b51286efb6b8d0af91', '2021-10-07 09:03:52.282', '2021-10-07 09:03:52.282', NULL);
INSERT INTO `sys_file` VALUES (352, '2021/10/07/4888a427ce8b47d5baba9094ef394ef3.jpg', 'LOCAL', '4888a427ce8b47d5baba9094ef394ef3.jpg', '.jpg', 31287, '6a55c9663618da08031503bf8dbd9659', '2021-10-07 09:08:09.692', '2021-10-07 09:08:09.692', NULL);
INSERT INTO `sys_file` VALUES (353, '2021/10/07/41462283105549c5aee4784fb50f64a8.jpg', 'LOCAL', '41462283105549c5aee4784fb50f64a8.jpg', '.jpg', 30513, 'fc646288325e391c806c038a38bdec3e', '2021-10-07 09:08:21.992', '2021-10-07 09:08:21.992', NULL);
INSERT INTO `sys_file` VALUES (354, '2021/10/07/152568adcc0548c5a9898d5915717e3a.jpg', 'LOCAL', '152568adcc0548c5a9898d5915717e3a.jpg', '.jpg', 24580, '06eda33c0d526efcf5e25ff89f57916d', '2021-10-07 09:08:31.823', '2021-10-07 09:08:31.823', NULL);
INSERT INTO `sys_file` VALUES (355, '2021/10/07/c87a50dc3e07478d90114c1fe97498b3.jpg', 'LOCAL', 'c87a50dc3e07478d90114c1fe97498b3.jpg', '.jpg', 31478, '3aa8372e55ef3eb001e5d815e9257b6c', '2021-10-07 09:11:27.987', '2021-10-07 09:11:27.987', NULL);
INSERT INTO `sys_file` VALUES (356, '2021/10/07/4b47da87b1194479974356fa86756c42.jpg', 'LOCAL', '4b47da87b1194479974356fa86756c42.jpg', '.jpg', 27962, '133ddde9b19541bb4ce226b91cc0c06b', '2021-10-07 09:11:41.816', '2021-10-07 09:11:41.816', NULL);
INSERT INTO `sys_file` VALUES (357, '2021/10/07/ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', 'LOCAL', 'ed0545bfdb8c4fb7bfa576cf0b34e034.jpg', '.jpg', 192333, 'e882557709fdfde524331e01cbcd0759', '2021-10-07 09:44:52.500', '2021-10-07 09:44:52.500', NULL);
INSERT INTO `sys_file` VALUES (358, '2021/10/07/0009be5a603c4106af453ab16dbeb8a3.jpg', 'LOCAL', '0009be5a603c4106af453ab16dbeb8a3.jpg', '.jpg', 142267, '2f2952c752dc8348a96cd1b1089a2977', '2021-10-07 09:45:02.042', '2021-10-07 09:45:02.042', NULL);
INSERT INTO `sys_file` VALUES (359, '2021/10/07/3aee34a6d1394124ae3c9ee48b12b68f.jpg', 'LOCAL', '3aee34a6d1394124ae3c9ee48b12b68f.jpg', '.jpg', 137763, '97104fb3868de40001b26cb8fd62c9e5', '2021-10-07 09:45:02.045', '2021-10-07 09:45:02.045', NULL);
INSERT INTO `sys_file` VALUES (360, '2021/10/07/06877d33424e46f986f1236aa0ad4f59.jpg', 'LOCAL', '06877d33424e46f986f1236aa0ad4f59.jpg', '.jpg', 103903, '6d3183c07ee6936c56bd3288c1e3657d', '2021-10-07 09:45:02.048', '2021-10-07 09:45:02.048', NULL);
INSERT INTO `sys_file` VALUES (361, '2021/10/07/087f99d2e10e4927b8d9d10acb7e457b.jpg', 'LOCAL', '087f99d2e10e4927b8d9d10acb7e457b.jpg', '.jpg', 174732, 'd7816a8b2b1ff235757d08072f0d80b4', '2021-10-07 09:45:02.052', '2021-10-07 09:45:02.052', NULL);
INSERT INTO `sys_file` VALUES (362, '2021/10/07/4195d471dcb446668ab38407ce0ae7f7.jpg', 'LOCAL', '4195d471dcb446668ab38407ce0ae7f7.jpg', '.jpg', 32188, '630707712a050c74b209ebee1a88b71e', '2021-10-07 09:53:01.589', '2021-10-07 09:53:01.589', NULL);
INSERT INTO `sys_file` VALUES (363, '2021/10/07/d7d35919d4a34a6e8c4a7a34d5850e1e.jpg', 'LOCAL', 'd7d35919d4a34a6e8c4a7a34d5850e1e.jpg', '.jpg', 34039, 'f741d9efe29f246be7abcd5559b0d3f0', '2021-10-07 09:53:19.013', '2021-10-07 09:53:19.013', NULL);
INSERT INTO `sys_file` VALUES (364, '2021/10/07/6d87f7168c7449838a79a469143a9e8d.jpg', 'LOCAL', '6d87f7168c7449838a79a469143a9e8d.jpg', '.jpg', 29843, '782a5c07f44974c7b3689484acc8f680', '2021-10-07 09:54:59.849', '2021-10-07 09:54:59.849', NULL);
INSERT INTO `sys_file` VALUES (365, '2021/10/07/bbf43b04f4ba43e1ad0c20ca6827cf39.jpg', 'LOCAL', 'bbf43b04f4ba43e1ad0c20ca6827cf39.jpg', '.jpg', 31247, '27fac9e85533c205ff7dd06ed5fa664e', '2021-10-07 09:55:25.368', '2021-10-07 09:55:25.368', NULL);
INSERT INTO `sys_file` VALUES (366, '2021/10/07/e73fa5423b29448aac69763fc2c3f255.jpg', 'LOCAL', 'e73fa5423b29448aac69763fc2c3f255.jpg', '.jpg', 29860, '85e658c40b384c9f50abed4576b975b4', '2021-10-07 09:59:18.065', '2021-10-07 09:59:18.065', NULL);
INSERT INTO `sys_file` VALUES (367, '2021/10/07/78652fb68a9c4100a35f95a9ee7bdfda.jpg', 'LOCAL', '78652fb68a9c4100a35f95a9ee7bdfda.jpg', '.jpg', 34342, '5e198cad5a640505fd1053cd01918103', '2021-10-07 10:05:09.955', '2021-10-07 10:05:09.955', NULL);
INSERT INTO `sys_file` VALUES (368, '2021/10/07/f3fe6ad6f92945ec8071e15d74318cf6.jpg', 'LOCAL', 'f3fe6ad6f92945ec8071e15d74318cf6.jpg', '.jpg', 27989, 'f96ab285c9a5f5e96580fd1117cd5f4f', '2021-10-07 10:05:24.395', '2021-10-07 10:05:24.395', NULL);
INSERT INTO `sys_file` VALUES (369, '2021/10/07/7f718b05180c404a87af81248d4fac42.jpg', 'LOCAL', '7f718b05180c404a87af81248d4fac42.jpg', '.jpg', 27672, '136df4196fc425125dd4e8efcaa11e4e', '2021-10-07 10:07:22.404', '2021-10-07 10:07:22.404', NULL);
INSERT INTO `sys_file` VALUES (370, '2021/10/07/0f649d9c748046f9907f97bcc0510890.jpg', 'LOCAL', '0f649d9c748046f9907f97bcc0510890.jpg', '.jpg', 34218, '57a81aff90f5b87ef8e3524bac7d3322', '2021-10-07 10:09:01.610', '2021-10-07 10:09:01.610', NULL);
INSERT INTO `sys_file` VALUES (371, '2021/10/07/cc25d5243d174f18ad659f184696689d.jpg', 'LOCAL', 'cc25d5243d174f18ad659f184696689d.jpg', '.jpg', 160702, '6b80f998b9ca935fd0cdf1a3ec4afcde', '2021-10-07 10:29:33.721', '2021-10-07 10:29:33.721', NULL);
INSERT INTO `sys_file` VALUES (372, '2021/10/07/7238a4e98f124a658cffb932b78e26de.jpg', 'LOCAL', '7238a4e98f124a658cffb932b78e26de.jpg', '.jpg', 145892, '013a18e432f5e27ce811da234cd942b6', '2021-10-07 10:29:42.091', '2021-10-07 10:29:42.091', NULL);
INSERT INTO `sys_file` VALUES (373, '2021/10/07/3a8b1c2c3aba4617923a5029263245b0.jpg', 'LOCAL', '3a8b1c2c3aba4617923a5029263245b0.jpg', '.jpg', 129253, '377b1075efc02669721b1eb0c3018c4d', '2021-10-07 10:29:42.094', '2021-10-07 10:29:42.094', NULL);
INSERT INTO `sys_file` VALUES (374, '2021/10/07/7af16e93a7a1422193d60025a521faff.jpg', 'LOCAL', '7af16e93a7a1422193d60025a521faff.jpg', '.jpg', 158381, 'db0708d9a93696a1620de3384f2428ae', '2021-10-07 10:29:42.097', '2021-10-07 10:29:42.097', NULL);
INSERT INTO `sys_file` VALUES (375, '2021/10/07/2e537ee12a29498ab10fe7186480cdf3.jpg', 'LOCAL', '2e537ee12a29498ab10fe7186480cdf3.jpg', '.jpg', 169021, '62612ffa4baf6dfe1732a6274fcc0119', '2021-10-07 10:29:42.101', '2021-10-07 10:29:42.101', NULL);
INSERT INTO `sys_file` VALUES (376, '2021/10/07/a75428ff7b3646a1ba0456cdde2a024c.jpg', 'LOCAL', 'a75428ff7b3646a1ba0456cdde2a024c.jpg', '.jpg', 3037, '9887c761065fb7cd5650f128c200a2fa', '2021-10-07 10:38:10.267', '2021-10-07 10:38:10.267', NULL);
INSERT INTO `sys_file` VALUES (377, '2021/10/07/abaccb80f93840c898275e53d40bfba2.jpg', 'LOCAL', 'abaccb80f93840c898275e53d40bfba2.jpg', '.jpg', 3170, 'fb74d9303202f00c61b19cea14f5568d', '2021-10-07 10:38:24.169', '2021-10-07 10:38:24.169', NULL);
INSERT INTO `sys_file` VALUES (378, '2021/10/07/99f9538da4644291afd44807f819828c.jpg', 'LOCAL', '99f9538da4644291afd44807f819828c.jpg', '.jpg', 247661, '44ce079b0c833eb9a1ef13d05b8dd204', '2021-10-07 10:42:47.562', '2021-10-07 10:42:47.562', NULL);
INSERT INTO `sys_file` VALUES (379, '2021/10/07/2eae53c623af4c93b5623c40bc6c9a69.jpg', 'LOCAL', '2eae53c623af4c93b5623c40bc6c9a69.jpg', '.jpg', 3060, '2ce1c01a96408720b76920af82f393c9', '2021-10-07 10:42:55.022', '2021-10-07 10:42:55.022', NULL);
INSERT INTO `sys_file` VALUES (380, '2021/10/07/4b650da5c673426ab987cd91324acd58.jpg', 'LOCAL', '4b650da5c673426ab987cd91324acd58.jpg', '.jpg', 2934, 'f75bad0cb7685bddf8cf28f1aa27fd68', '2021-10-07 10:43:07.913', '2021-10-07 10:43:07.913', NULL);
INSERT INTO `sys_file` VALUES (381, '2021/10/07/cd24d23899de4ecaa81918d2440c6683.jpg', 'LOCAL', 'cd24d23899de4ecaa81918d2440c6683.jpg', '.jpg', 256299, 'd0fdd263e6f6bd2ad9235ceb0642975d', '2021-10-07 10:47:09.019', '2021-10-07 10:47:09.019', NULL);
INSERT INTO `sys_file` VALUES (382, '2021/10/07/d90d25b8203b4fdcbd05dd182a6ac61a.jpg', 'LOCAL', 'd90d25b8203b4fdcbd05dd182a6ac61a.jpg', '.jpg', 3428, 'f0c1b1840a1a092f989fa27266db8a09', '2021-10-07 10:47:15.335', '2021-10-07 10:47:15.335', NULL);
INSERT INTO `sys_file` VALUES (383, '2021/10/07/11c9a62cef6144839533b3c60a2ce285.jpg', 'LOCAL', '11c9a62cef6144839533b3c60a2ce285.jpg', '.jpg', 2929, 'ebfdad8a311f5d690f739f908727cd6e', '2021-10-07 10:47:28.008', '2021-10-07 10:47:28.008', NULL);
INSERT INTO `sys_file` VALUES (384, '2021/10/07/751d368724b248b99d5dc076c4c8f2e2.jpg', 'LOCAL', '751d368724b248b99d5dc076c4c8f2e2.jpg', '.jpg', 2722, '735c430db6111695eba21fa90658293b', '2021-10-07 10:49:40.421', '2021-10-07 10:49:40.421', NULL);
INSERT INTO `sys_file` VALUES (385, '2021/10/07/44005af2bc614edead94a2ba7f66cdd4.jpg', 'LOCAL', '44005af2bc614edead94a2ba7f66cdd4.jpg', '.jpg', 3077, '2b8dbc136bcfaaf77e9dbc729749993d', '2021-10-07 10:52:36.174', '2021-10-07 10:52:36.174', NULL);
INSERT INTO `sys_file` VALUES (386, '2021/10/07/afd21d7d688540ebb812d5f8913779ba.jpg', 'LOCAL', 'afd21d7d688540ebb812d5f8913779ba.jpg', '.jpg', 139553, '1d2adb7d23675227569def7f47de1545', '2021-10-07 12:14:10.908', '2021-10-07 12:14:10.908', NULL);
INSERT INTO `sys_file` VALUES (387, '2021/10/07/9045b8f3fdf749afb52d40bb9d545180.jpg', 'LOCAL', '9045b8f3fdf749afb52d40bb9d545180.jpg', '.jpg', 148756, 'db16448d3829fe312a7b5fab9dc51f17', '2021-10-07 12:14:18.188', '2021-10-07 12:14:18.188', NULL);
INSERT INTO `sys_file` VALUES (388, '2021/10/07/748f98892cad45a481447b198dcbed4a.jpg', 'LOCAL', '748f98892cad45a481447b198dcbed4a.jpg', '.jpg', 156169, '01fdfd748807cde62bc39a7f626c7c12', '2021-10-07 12:14:18.192', '2021-10-07 12:14:18.192', NULL);
INSERT INTO `sys_file` VALUES (389, '2021/10/07/8fe5f891ee6848b0ab6ed3dac3f53379.jpg', 'LOCAL', '8fe5f891ee6848b0ab6ed3dac3f53379.jpg', '.jpg', 147724, '0045e2a74258a9217f1177324b89b029', '2021-10-07 12:14:18.195', '2021-10-07 12:14:18.195', NULL);
INSERT INTO `sys_file` VALUES (390, '2021/10/07/b1bad56612a749df8ef133fe9a8076de.jpg', 'LOCAL', 'b1bad56612a749df8ef133fe9a8076de.jpg', '.jpg', 128069, '710532ca1d0b00eaa425f6a556035b7d', '2021-10-07 12:14:18.199', '2021-10-07 12:14:18.199', NULL);
INSERT INTO `sys_file` VALUES (391, '2021/10/07/4b15b83aae324486ae7d7064a365b637.jpg', 'LOCAL', '4b15b83aae324486ae7d7064a365b637.jpg', '.jpg', 244477, '9303cf1e93a54a111d87ae84babbdf18', '2021-10-07 12:22:07.112', '2021-10-07 12:22:07.112', NULL);
INSERT INTO `sys_file` VALUES (392, '2021/10/07/a1d02ef16d3a47d5ae4def63bd09fcfa.jpg', 'LOCAL', 'a1d02ef16d3a47d5ae4def63bd09fcfa.jpg', '.jpg', 2739, 'b28e1985ea1d1f88304bc6f089a550a2', '2021-10-07 12:22:12.826', '2021-10-07 12:22:12.826', NULL);
INSERT INTO `sys_file` VALUES (393, '2021/10/07/f176f5e3aa694fe49389f6e593045978.jpg', 'LOCAL', 'f176f5e3aa694fe49389f6e593045978.jpg', '.jpg', 2561, '7852eed95a4d319d453933548d0e5039', '2021-10-07 12:22:24.960', '2021-10-07 12:22:24.960', NULL);
INSERT INTO `sys_file` VALUES (394, '2021/10/07/116fc732110a47e5bac2d0b30802af54.jpg', 'LOCAL', '116fc732110a47e5bac2d0b30802af54.jpg', '.jpg', 1665, 'a5a5b915df9b5a027ab90841add62d5b', '2021-10-07 12:25:38.489', '2021-10-07 12:25:38.489', NULL);
INSERT INTO `sys_file` VALUES (395, '2021/10/07/d4ac7cf0df1b42a9a88f35b5a84e46ee.jpg', 'LOCAL', 'd4ac7cf0df1b42a9a88f35b5a84e46ee.jpg', '.jpg', 3052, 'c33e4c963a217bdf2540666b6b52ae51', '2021-10-07 12:28:14.848', '2021-10-07 12:28:14.848', NULL);
INSERT INTO `sys_file` VALUES (396, '2021/10/07/708372fcfca942e18d6e5128eda094d1.jpg', 'LOCAL', '708372fcfca942e18d6e5128eda094d1.jpg', '.jpg', 2014, '1bfe6c13e313886e859ed5e0ace2dbe5', '2021-10-07 12:31:55.748', '2021-10-07 12:31:55.748', NULL);
INSERT INTO `sys_file` VALUES (397, '2021/10/07/16831df96f604f4fa6d4586b819ce109.jpg', 'LOCAL', '16831df96f604f4fa6d4586b819ce109.jpg', '.jpg', 3162, '84d2f8ee028866bc98c8b0f072b1730a', '2021-10-07 12:32:11.183', '2021-10-07 12:32:11.183', NULL);
INSERT INTO `sys_file` VALUES (398, '2021/10/07/7cdda420418045839d84d1b25d0316a4.jpg', 'LOCAL', '7cdda420418045839d84d1b25d0316a4.jpg', '.jpg', 133016, '0ae09aab5128877d6ba8b936cf02d512', '2021-10-07 13:01:52.215', '2021-10-07 13:01:52.215', NULL);
INSERT INTO `sys_file` VALUES (399, '2021/10/07/f34619d6e01f46949ccab56e8414eb1a.jpg', 'LOCAL', 'f34619d6e01f46949ccab56e8414eb1a.jpg', '.jpg', 180042, '527d2d4095a00f15e88b72503917f8c4', '2021-10-07 13:01:59.893', '2021-10-07 13:01:59.893', NULL);
INSERT INTO `sys_file` VALUES (400, '2021/10/07/4ff37aaaf7ab4f12bb52953a63b6295a.jpg', 'LOCAL', '4ff37aaaf7ab4f12bb52953a63b6295a.jpg', '.jpg', 165831, '1224c0a018f3fa770938c0b098a3c548', '2021-10-07 13:01:59.900', '2021-10-07 13:01:59.900', NULL);
INSERT INTO `sys_file` VALUES (401, '2021/10/07/091c657483b842f4bee2ff4366c60c07.jpg', 'LOCAL', '091c657483b842f4bee2ff4366c60c07.jpg', '.jpg', 142042, '477797c9a481a92cfd429eee3a45c5e0', '2021-10-07 13:01:59.904', '2021-10-07 13:01:59.904', NULL);
INSERT INTO `sys_file` VALUES (402, '2021/10/07/33dd9a04cbee4cdaa85c9d5bbeddb899.jpg', 'LOCAL', '33dd9a04cbee4cdaa85c9d5bbeddb899.jpg', '.jpg', 197209, '887ca4c92e7b48629270075321d72cea', '2021-10-07 13:01:59.908', '2021-10-07 13:01:59.908', NULL);
INSERT INTO `sys_file` VALUES (403, '2021/10/07/dd639342da8142c0aa3850f872e3596c.jpg', 'LOCAL', 'dd639342da8142c0aa3850f872e3596c.jpg', '.jpg', 2518, 'f14c170a2e0f05f0e7b0674226b9a754', '2021-10-07 13:11:10.156', '2021-10-07 13:11:10.156', NULL);
INSERT INTO `sys_file` VALUES (404, '2021/10/07/efe2798b34554d9a986df1ae9b511c75.jpg', 'LOCAL', 'efe2798b34554d9a986df1ae9b511c75.jpg', '.jpg', 2787, '3f1b6f9efa59c24b8a4855ef1e13452f', '2021-10-07 13:15:34.526', '2021-10-07 13:15:34.526', NULL);
INSERT INTO `sys_file` VALUES (405, '2021/10/07/e0898023114241068b2c61800cc32118.jpg', 'LOCAL', 'e0898023114241068b2c61800cc32118.jpg', '.jpg', 2918, '28181a55f0f052e0db64245508c673f4', '2021-10-07 13:15:45.838', '2021-10-07 13:15:45.838', NULL);
INSERT INTO `sys_file` VALUES (406, '2021/10/07/40a4ba8ef0c34241a1a873d401ea96db.jpg', 'LOCAL', '40a4ba8ef0c34241a1a873d401ea96db.jpg', '.jpg', 232569, '46fe5d1f705f0439afe98c8363fd273f', '2021-10-07 13:17:49.515', '2021-10-07 13:17:49.515', NULL);
INSERT INTO `sys_file` VALUES (407, '2021/10/07/7a4a3bd04e35488c945acf4ee1995795.jpg', 'LOCAL', '7a4a3bd04e35488c945acf4ee1995795.jpg', '.jpg', 2838, '32eb6d5f2af0c3cdd76ec0e2908ecc92', '2021-10-07 13:18:08.259', '2021-10-07 13:18:08.259', NULL);
INSERT INTO `sys_file` VALUES (408, '2021/10/07/8d3adea623d5420083641d455fb7ac0b.jpg', 'LOCAL', '8d3adea623d5420083641d455fb7ac0b.jpg', '.jpg', 2714, '466bed8edb3d1015d58830a3110442bd', '2021-10-07 13:20:05.632', '2021-10-07 13:20:05.632', NULL);
INSERT INTO `sys_file` VALUES (409, '2021/10/07/09bee7dbfd0e4404bc33135961bf9e7f.jpg', 'LOCAL', '09bee7dbfd0e4404bc33135961bf9e7f.jpg', '.jpg', 3168, '53367c3cae25efd9225477a6e4768403', '2021-10-07 13:23:28.406', '2021-10-07 13:23:28.406', NULL);
INSERT INTO `sys_file` VALUES (410, '2021/10/07/2984356b0e214a0690f9c6b2f312e131.jpg', 'LOCAL', '2984356b0e214a0690f9c6b2f312e131.jpg', '.jpg', 2814, 'd9a036a59bcd13723ccf7c5bcad875af', '2021-10-07 13:23:44.224', '2021-10-07 13:23:44.224', NULL);
INSERT INTO `sys_file` VALUES (411, '2021/10/07/b5bbe8bebb364c589fea3f851f014eab.jpg', 'LOCAL', 'b5bbe8bebb364c589fea3f851f014eab.jpg', '.jpg', 158182, '07f0edb76f49dde184851b793ace1320', '2021-10-07 13:42:59.165', '2021-10-07 13:42:59.165', NULL);
INSERT INTO `sys_file` VALUES (412, '2021/10/07/663f5504429345dbbf151b4e16b14ab7.jpg', 'LOCAL', '663f5504429345dbbf151b4e16b14ab7.jpg', '.jpg', 153355, '84c63c50c994e896e0423e1598994da5', '2021-10-07 13:43:09.727', '2021-10-07 13:43:09.727', NULL);
INSERT INTO `sys_file` VALUES (413, '2021/10/07/b8928b67b9394f5585e1f3272f7dbf55.jpg', 'LOCAL', 'b8928b67b9394f5585e1f3272f7dbf55.jpg', '.jpg', 131103, '8f52de3f98a56d83f2c59cc308066f87', '2021-10-07 13:43:09.730', '2021-10-07 13:43:09.730', NULL);
INSERT INTO `sys_file` VALUES (414, '2021/10/07/d9c8b3f9af8c411a8b3fbd805ddd5dfe.jpg', 'LOCAL', 'd9c8b3f9af8c411a8b3fbd805ddd5dfe.jpg', '.jpg', 123715, '9b4b2907d3cc505d893006ad9ea7df23', '2021-10-07 13:43:09.734', '2021-10-07 13:43:09.734', NULL);
INSERT INTO `sys_file` VALUES (415, '2021/10/07/9d8c3dee30e54b9085719d21a4609d38.jpg', 'LOCAL', '9d8c3dee30e54b9085719d21a4609d38.jpg', '.jpg', 150265, 'f928b1517394d71fae3871a0027e2488', '2021-10-07 13:43:09.737', '2021-10-07 13:43:09.737', NULL);
INSERT INTO `sys_file` VALUES (416, '2021/10/07/beabb3610a5a43bfa969acb1e235bcc6.jpg', 'LOCAL', 'beabb3610a5a43bfa969acb1e235bcc6.jpg', '.jpg', 3529, '2d28166a23b0755809cef26692b78e49', '2021-10-07 13:47:42.123', '2021-10-07 13:47:42.123', NULL);
INSERT INTO `sys_file` VALUES (417, '2021/10/07/5214e46aca8c43319fca7e9fea4bc0f7.jpg', 'LOCAL', '5214e46aca8c43319fca7e9fea4bc0f7.jpg', '.jpg', 3365, '3221c0a088cce1a3c318c0c069f4275a', '2021-10-07 13:47:52.804', '2021-10-07 13:47:52.804', NULL);
INSERT INTO `sys_file` VALUES (418, '2021/10/07/5790ce02cfd74bc2bb86826831a14952.jpg', 'LOCAL', '5790ce02cfd74bc2bb86826831a14952.jpg', '.jpg', 2214, '8a3ce7975d9eb98bc056c89965457152', '2021-10-07 13:52:02.748', '2021-10-07 13:52:02.748', NULL);
INSERT INTO `sys_file` VALUES (419, '2021/10/07/0591018cb52b401c92549ed24dc471de.jpg', 'LOCAL', '0591018cb52b401c92549ed24dc471de.jpg', '.jpg', 3348, 'efc552b15669f51f27d6b4aa5e15d6e7', '2021-10-07 13:52:19.618', '2021-10-07 13:52:19.618', NULL);
INSERT INTO `sys_file` VALUES (420, '2021/10/07/84e794c5c51540acb88093a96b9f33cc.jpg', 'LOCAL', '84e794c5c51540acb88093a96b9f33cc.jpg', '.jpg', 2847, 'df1595024b03b24d50633bea721b6fed', '2021-10-07 13:54:46.248', '2021-10-07 13:54:46.248', NULL);
INSERT INTO `sys_file` VALUES (421, '2021/10/07/5e6ac3e3ebbf48b4b89faa4e72a70c4d.jpg', 'LOCAL', '5e6ac3e3ebbf48b4b89faa4e72a70c4d.jpg', '.jpg', 2707, 'cc215bc3a851995ae57d95320d411cef', '2021-10-07 13:56:59.631', '2021-10-07 13:56:59.631', NULL);
INSERT INTO `sys_file` VALUES (422, '2021/10/07/dfe16339057442c294d6745089ef991f.jpg', 'LOCAL', 'dfe16339057442c294d6745089ef991f.jpg', '.jpg', 3064, '1cfab7f9b78b301077508d0727490b8e', '2021-10-07 14:00:10.227', '2021-10-07 14:00:10.227', NULL);
INSERT INTO `sys_file` VALUES (423, '2021/10/07/89c7f2c9fdad4f61bbaed5c69cfa04c8.jpg', 'LOCAL', '89c7f2c9fdad4f61bbaed5c69cfa04c8.jpg', '.jpg', 131230, 'a2f5c12f2aae1078333f906e81e94168', '2021-10-07 14:21:57.147', '2021-10-07 14:21:57.147', NULL);
INSERT INTO `sys_file` VALUES (424, '2021/10/07/c478039c4e2a47bbafe19d22c1523b8c.jpg', 'LOCAL', 'c478039c4e2a47bbafe19d22c1523b8c.jpg', '.jpg', 127088, '02c30ef86af57558826b5c09eca7add0', '2021-10-07 14:22:11.602', '2021-10-07 14:22:11.602', NULL);
INSERT INTO `sys_file` VALUES (425, '2021/10/07/60122517ca54487e952f88e8c31775d9.jpg', 'LOCAL', '60122517ca54487e952f88e8c31775d9.jpg', '.jpg', 147269, '9cf7cf4a16319458066a3117315c694b', '2021-10-07 14:22:11.606', '2021-10-07 14:22:11.606', NULL);
INSERT INTO `sys_file` VALUES (426, '2021/10/07/b13c2e11f3f3494e8b48aa9a4cb96d2c.jpg', 'LOCAL', 'b13c2e11f3f3494e8b48aa9a4cb96d2c.jpg', '.jpg', 150479, 'd8cd98f934b865f4c1be6bca257684ca', '2021-10-07 14:22:11.609', '2021-10-07 14:22:11.609', NULL);
INSERT INTO `sys_file` VALUES (427, '2021/10/07/85ab541aecfc4d078c1e5946ec5ca58f.jpg', 'LOCAL', '85ab541aecfc4d078c1e5946ec5ca58f.jpg', '.jpg', 167023, '91681101b5004ddd9653b5101c6142c7', '2021-10-07 14:22:11.613', '2021-10-07 14:22:11.613', NULL);
INSERT INTO `sys_file` VALUES (428, '2021/10/07/bf75bfe1380d430893ff40ee97bcfdbd.jpg', 'LOCAL', 'bf75bfe1380d430893ff40ee97bcfdbd.jpg', '.jpg', 2422, 'f89d2fb55b58bb14f21459946d601498', '2021-10-07 14:32:40.670', '2021-10-07 14:32:40.670', NULL);
INSERT INTO `sys_file` VALUES (429, '2021/10/07/5e6238c3b6ce422582889141e8511d27.jpg', 'LOCAL', '5e6238c3b6ce422582889141e8511d27.jpg', '.jpg', 3079, '87763a117c336e47e35e2b92cbf64905', '2021-10-07 14:32:53.098', '2021-10-07 14:32:53.098', NULL);
INSERT INTO `sys_file` VALUES (430, '2021/10/07/6d3466a55b8648d48ecc2c1efbb78bd6.jpg', 'LOCAL', '6d3466a55b8648d48ecc2c1efbb78bd6.jpg', '.jpg', 2890, '8c982734039f08747510b3893b5c1cc9', '2021-10-07 14:44:56.996', '2021-10-07 14:44:56.996', NULL);
INSERT INTO `sys_file` VALUES (431, '2021/10/07/ebdf8265009d43b9a838eaf055d23285.jpg', 'LOCAL', 'ebdf8265009d43b9a838eaf055d23285.jpg', '.jpg', 2232, 'e842ed4e5ce2230f544b2b13d9ae0f83', '2021-10-07 14:48:14.636', '2021-10-07 14:48:14.636', NULL);
INSERT INTO `sys_file` VALUES (432, '2021/10/07/4e4c77fac53f40f6a6d9ce762738a32f.jpg', 'LOCAL', '4e4c77fac53f40f6a6d9ce762738a32f.jpg', '.jpg', 243049, 'aeb1eb89619cb0b94e90212dd9cc52da', '2021-10-07 14:50:53.178', '2021-10-07 14:50:53.178', NULL);
INSERT INTO `sys_file` VALUES (433, '2021/10/07/c1f348fa88db4d0e922d7ea3fedffd64.jpg', 'LOCAL', 'c1f348fa88db4d0e922d7ea3fedffd64.jpg', '.jpg', 2638, '20c65ee24594ed2de3c2575cde73754e', '2021-10-07 14:50:59.372', '2021-10-07 14:50:59.372', NULL);
INSERT INTO `sys_file` VALUES (434, '2021/10/07/8d3d6cc8ca4f4ff4b0da6e35483f7f31.jpg', 'LOCAL', '8d3d6cc8ca4f4ff4b0da6e35483f7f31.jpg', '.jpg', 2604, '3f414e12177142fb5789f70682d78665', '2021-10-07 14:51:12.997', '2021-10-07 14:51:12.997', NULL);
INSERT INTO `sys_file` VALUES (435, '2021/10/07/6a367b23907842ba95c41c8eb1ce2314.jpg', 'LOCAL', '6a367b23907842ba95c41c8eb1ce2314.jpg', '.jpg', 3116, '7888582b102a1e17ff83f57968f4016b', '2021-10-07 15:07:04.748', '2021-10-07 15:07:04.748', NULL);
INSERT INTO `sys_file` VALUES (436, '2021/10/07/9e6d8d106953495091144be182c2f5c5.jpg', 'LOCAL', '9e6d8d106953495091144be182c2f5c5.jpg', '.jpg', 192332, '55d82e45b8b72728333e34b4746b863d', '2021-10-07 15:39:12.674', '2021-10-07 15:39:12.674', NULL);
INSERT INTO `sys_file` VALUES (437, '2021/10/07/f0f68811e64646408abba31a97f04b34.jpg', 'LOCAL', 'f0f68811e64646408abba31a97f04b34.jpg', '.jpg', 177702, '8e8509424f54608400fc8749068a9502', '2021-10-07 15:39:24.543', '2021-10-07 15:39:24.543', NULL);
INSERT INTO `sys_file` VALUES (438, '2021/10/07/f74901237f304611ab500a296c24bee0.jpg', 'LOCAL', 'f74901237f304611ab500a296c24bee0.jpg', '.jpg', 166591, '6cba5da4697e5ddba32c84e2574a7079', '2021-10-07 15:39:24.547', '2021-10-07 15:39:24.547', NULL);
INSERT INTO `sys_file` VALUES (439, '2021/10/07/ae5167c893d742f3b1c22be0db274221.jpg', 'LOCAL', 'ae5167c893d742f3b1c22be0db274221.jpg', '.jpg', 166010, 'd7dda8b2167d49c8f52a1a9ca498fb09', '2021-10-07 15:39:24.550', '2021-10-07 15:39:24.550', NULL);
INSERT INTO `sys_file` VALUES (440, '2021/10/07/f104dd2922344e3b9242025a2629498c.jpg', 'LOCAL', 'f104dd2922344e3b9242025a2629498c.jpg', '.jpg', 208590, '878ee7675d3831209f5f93d4af54db5a', '2021-10-07 15:39:24.554', '2021-10-07 15:39:24.554', NULL);
INSERT INTO `sys_file` VALUES (441, '2021/10/07/396336e934d844478c111db91761e23e.jpg', 'LOCAL', '396336e934d844478c111db91761e23e.jpg', '.jpg', 3500, 'b4f77b2abff8fa93b0125925126e3d91', '2021-10-07 15:50:01.935', '2021-10-07 15:50:01.935', NULL);
INSERT INTO `sys_file` VALUES (442, '2021/10/07/f45c7290bf8a403d8e17dae63f3e905b.jpg', 'LOCAL', 'f45c7290bf8a403d8e17dae63f3e905b.jpg', '.jpg', 3215, 'f47216c8a9bf8b625363e0f7384fce92', '2021-10-07 15:50:14.174', '2021-10-07 15:50:14.174', NULL);
INSERT INTO `sys_file` VALUES (443, '2021/10/07/b6b130d7f38341ac83938d36f90c77ee.jpg', 'LOCAL', 'b6b130d7f38341ac83938d36f90c77ee.jpg', '.jpg', 3772, 'd4133778c6cbe81f4aa67e96c9c38338', '2021-10-07 15:51:10.298', '2021-10-07 15:51:10.298', NULL);
INSERT INTO `sys_file` VALUES (444, '2021/10/07/f34383774cb4499a9f131ca93d91cd04.jpg', 'LOCAL', 'f34383774cb4499a9f131ca93d91cd04.jpg', '.jpg', 3106, 'd007cedf23c52973ff795b6124a930a8', '2021-10-07 15:51:24.528', '2021-10-07 15:51:24.528', NULL);
INSERT INTO `sys_file` VALUES (445, '2021/10/07/f470301914c745209c72f58b0ac61999.jpg', 'LOCAL', 'f470301914c745209c72f58b0ac61999.jpg', '.jpg', 3613, 'c8e97a762fc09f7e1dd520a09adafca4', '2021-10-07 15:52:13.924', '2021-10-07 15:52:13.924', NULL);
INSERT INTO `sys_file` VALUES (446, '2021/10/07/e15b98c264714954a3c58825bef0b079.jpg', 'LOCAL', 'e15b98c264714954a3c58825bef0b079.jpg', '.jpg', 3730, '71a11a064bf638011c09dffe9bcc6383', '2021-10-07 15:53:12.747', '2021-10-07 15:53:12.747', NULL);
INSERT INTO `sys_file` VALUES (447, '2021/10/07/3bac9325c8e646f5a7705630697409d4.jpg', 'LOCAL', '3bac9325c8e646f5a7705630697409d4.jpg', '.jpg', 3368, 'd158bc6880474e5cb7ba8db26784ee1d', '2021-10-07 15:53:54.516', '2021-10-07 15:53:54.516', NULL);
INSERT INTO `sys_file` VALUES (448, '2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', 'LOCAL', '0736dd84b1bc457383d5656e6d8416d5.jpg', '.jpg', 142902, '6a7017b36ed462fabcc1ee5e481ea128', '2021-10-07 16:18:43.771', '2021-10-07 16:18:43.771', NULL);
INSERT INTO `sys_file` VALUES (449, '2021/10/07/d9d012a8354346cc851c4052a3d0d1c2.jpg', 'LOCAL', 'd9d012a8354346cc851c4052a3d0d1c2.jpg', '.jpg', 198984, 'a019bd8f14df384a3f54276f4f518fb3', '2021-10-07 16:18:52.015', '2021-10-07 16:18:52.015', NULL);
INSERT INTO `sys_file` VALUES (450, '2021/10/07/558dac466c344357803e385b8fce767d.jpg', 'LOCAL', '558dac466c344357803e385b8fce767d.jpg', '.jpg', 153643, '85be7207a402547c843bac3416b495ce', '2021-10-07 16:18:52.019', '2021-10-07 16:18:52.019', NULL);
INSERT INTO `sys_file` VALUES (451, '2021/10/07/b9879093c7c541e9ad2e457423af5bd3.jpg', 'LOCAL', 'b9879093c7c541e9ad2e457423af5bd3.jpg', '.jpg', 132819, '2a7ec28647997170cb67e418000b3c1c', '2021-10-07 16:18:52.022', '2021-10-07 16:18:52.022', NULL);
INSERT INTO `sys_file` VALUES (452, '2021/10/07/2cb9644fc8bf41e592aa09181036bfb1.jpg', 'LOCAL', '2cb9644fc8bf41e592aa09181036bfb1.jpg', '.jpg', 159963, '799f948443fcc11a0ef0d9f055e333dc', '2021-10-07 16:18:52.026', '2021-10-07 16:18:52.026', NULL);
INSERT INTO `sys_file` VALUES (453, '2021/10/07/f77798cf0d1a4e738aa09351fc353492.jpg', 'LOCAL', 'f77798cf0d1a4e738aa09351fc353492.jpg', '.jpg', 3680, 'a758d902b6b5bfec25fab7448924a4b6', '2021-10-07 16:32:42.205', '2021-10-07 16:32:42.205', NULL);
INSERT INTO `sys_file` VALUES (454, '2021/10/07/690a160fc6124c3da92b7960e823ac9f.jpg', 'LOCAL', '690a160fc6124c3da92b7960e823ac9f.jpg', '.jpg', 1324, '37ca41bc374195c365cc59ad1a2a592d', '2021-10-07 16:33:23.995', '2021-10-07 16:33:23.995', NULL);
INSERT INTO `sys_file` VALUES (455, '2021/10/07/7c1b7211cff34515aaea9abec2817bff.jpg', 'LOCAL', '7c1b7211cff34515aaea9abec2817bff.jpg', '.jpg', 3659, 'd87d35fc90001d7e70ff578985cefc8c', '2021-10-07 16:36:18.085', '2021-10-07 16:36:18.085', NULL);
INSERT INTO `sys_file` VALUES (456, '2021/10/07/f03d5720cb294b8c9d54686fc2d599ad.jpg', 'LOCAL', 'f03d5720cb294b8c9d54686fc2d599ad.jpg', '.jpg', 3716, '2a4f68dae67b9a3ce5a701a29d249d68', '2021-10-07 16:39:51.831', '2021-10-07 16:39:51.831', NULL);
INSERT INTO `sys_file` VALUES (457, '2021/10/07/9e48d383798d41f2929ac62bb285ab43.jpg', 'LOCAL', '9e48d383798d41f2929ac62bb285ab43.jpg', '.jpg', 65609, 'd0dfec2be3f3b563f51d780183f77350', '2021-10-07 18:10:18.937', '2021-10-07 18:10:18.937', NULL);
INSERT INTO `sys_file` VALUES (458, '2021/10/07/19ba07770c3b468882680c9dbe316538.jpg', 'LOCAL', '19ba07770c3b468882680c9dbe316538.jpg', '.jpg', 89804, 'e63bc72440c59f091dab637fc108538f', '2021-10-07 18:13:25.017', '2021-10-07 18:13:25.017', NULL);
INSERT INTO `sys_file` VALUES (459, '2021/10/07/e9f2d232bfcc4465a2825e1070e7d283.png', 'LOCAL', 'e9f2d232bfcc4465a2825e1070e7d283.png', '.png', 2062, 'fcefa30525656fbf303d855597e2420a', '2021-10-07 18:32:45.891', '2021-10-07 18:32:45.891', NULL);
INSERT INTO `sys_file` VALUES (460, '2021/10/07/eaa829aa5d3246428ed28943c4c48f14.png', 'LOCAL', 'eaa829aa5d3246428ed28943c4c48f14.png', '.png', 2086, 'e907ee944ee7112da47c8186963719ae', '2021-10-07 18:37:49.215', '2021-10-07 18:37:49.215', NULL);
INSERT INTO `sys_file` VALUES (461, '2021/10/07/31d82db19a9d4e22a004f6df77eedfea.png', 'LOCAL', '31d82db19a9d4e22a004f6df77eedfea.png', '.png', 2314, 'a7eae8644267da2d6a7600fc26011871', '2021-10-07 18:47:25.922', '2021-10-07 18:47:25.922', NULL);
INSERT INTO `sys_file` VALUES (462, '2021/10/07/e9da62c558a346f39b6be2b0ccde84a6.png', 'LOCAL', 'e9da62c558a346f39b6be2b0ccde84a6.png', '.png', 2653, '7b85546b0d28160fe8663f96e43e9e89', '2021-10-07 18:48:57.230', '2021-10-07 18:48:57.230', NULL);
INSERT INTO `sys_file` VALUES (463, '2021/10/07/96ec2af52db4407fa3e6b21418150dfc.jpg', 'LOCAL', '96ec2af52db4407fa3e6b21418150dfc.jpg', '.jpg', 96810, '7653e97d691af9b3b748ac6e2c935e75', '2021-10-07 21:09:26.871', '2021-10-07 21:09:26.871', NULL);
INSERT INTO `sys_file` VALUES (464, '2021/10/07/98e803b822304fed86e26edffc1d41dd.jpg', 'LOCAL', '98e803b822304fed86e26edffc1d41dd.jpg', '.jpg', 114373, '0b6e5635000cc6f8c4f780b652527346', '2021-10-07 21:10:37.583', '2021-10-07 21:10:37.583', NULL);
INSERT INTO `sys_file` VALUES (465, '2021/10/08/14ac647fc1b0436ab3469653f208dbdd.jpg', 'LOCAL', '14ac647fc1b0436ab3469653f208dbdd.jpg', '.jpg', 161091, 'a5791cc770f567815f3a37cc14a2f72c', '2021-10-08 12:25:28.078', '2021-10-08 12:25:28.078', NULL);
INSERT INTO `sys_file` VALUES (466, '2021/10/08/fe3ae2e89a654fe69b9dcf85e4569303.jpg', 'LOCAL', 'fe3ae2e89a654fe69b9dcf85e4569303.jpg', '.jpg', 77776, 'd9eb59eed3befd72d6cdf54eb2f323f6', '2021-10-08 12:34:38.103', '2021-10-08 12:34:38.103', NULL);
INSERT INTO `sys_file` VALUES (467, '2021/10/08/507e975dfbde4449a8cb7ac3e441b244.jpg', 'LOCAL', '507e975dfbde4449a8cb7ac3e441b244.jpg', '.jpg', 95874, 'a0c087e2e49f7a6480183709a0994f81', '2021-10-08 12:41:20.975', '2021-10-08 12:41:20.975', NULL);
INSERT INTO `sys_file` VALUES (468, '2021/10/08/1d58438ae5e743ba88c40cc1d4369493.jpg', 'LOCAL', '1d58438ae5e743ba88c40cc1d4369493.jpg', '.jpg', 77782, 'd13261826a094155003e1556c2b532a7', '2021-10-08 12:44:44.730', '2021-10-08 12:44:44.730', NULL);
INSERT INTO `sys_file` VALUES (469, '2021/10/08/2b37ff847f764c57a9fb5792fad39606.jpg', 'LOCAL', '2b37ff847f764c57a9fb5792fad39606.jpg', '.jpg', 2183, 'cd779ce349c17a0356b79310b76989a1', '2021-10-08 12:58:37.881', '2021-10-08 12:58:37.881', NULL);
INSERT INTO `sys_file` VALUES (470, '2021/10/08/ffe048aa39234a3eb699c7775fce4688.jpg', 'LOCAL', 'ffe048aa39234a3eb699c7775fce4688.jpg', '.jpg', 2657, '48af57c1980a941280756f0ad6fe5014', '2021-10-08 12:58:47.790', '2021-10-08 12:58:47.790', NULL);
INSERT INTO `sys_file` VALUES (471, '2021/10/08/e274357bd49d41ec82709bdd605992bc.jpg', 'LOCAL', 'e274357bd49d41ec82709bdd605992bc.jpg', '.jpg', 3075, '2dd60070c92efca4dee4752f5926c831', '2021-10-08 12:58:56.784', '2021-10-08 12:58:56.784', NULL);
INSERT INTO `sys_file` VALUES (472, '2021/10/08/ff0ec27b0a5f45dbb62d547e19cabda4.jpg', 'LOCAL', 'ff0ec27b0a5f45dbb62d547e19cabda4.jpg', '.jpg', 3601, '542fe9ee29ed2e70083415efdc1dc5e9', '2021-10-08 12:59:12.270', '2021-10-08 12:59:12.270', NULL);
INSERT INTO `sys_file` VALUES (473, '2021/10/08/aaf9e737143e404b92411017fd414709.jpg', 'LOCAL', 'aaf9e737143e404b92411017fd414709.jpg', '.jpg', 2377, 'e0a03ddc1bbbe1209e6933c3e443f82f', '2021-10-08 13:09:51.410', '2021-10-08 13:09:51.410', NULL);
INSERT INTO `sys_file` VALUES (474, '2021/10/08/0f56ed7b66a94ed486a4dec69ab462d6.jpg', 'LOCAL', '0f56ed7b66a94ed486a4dec69ab462d6.jpg', '.jpg', 2393, '347844add3de6e5a24fe497330f893c5', '2021-10-08 13:09:59.247', '2021-10-08 13:09:59.247', NULL);
INSERT INTO `sys_file` VALUES (475, '2021/10/08/2560e938573e4bd7956f593f3e251dc6.jpg', 'LOCAL', '2560e938573e4bd7956f593f3e251dc6.jpg', '.jpg', 2074, 'bc8f35fc5a76b1bfcbcb36f7b73b4bc1', '2021-10-08 13:10:07.350', '2021-10-08 13:10:07.350', NULL);
INSERT INTO `sys_file` VALUES (476, '2021/10/08/59502b3e2568421b95393384a5d28cf9.jpg', 'LOCAL', '59502b3e2568421b95393384a5d28cf9.jpg', '.jpg', 1447, '9e58d2cc50bbee8a6d9bdd6e65e21d41', '2021-10-08 13:10:15.166', '2021-10-08 13:10:15.166', NULL);
INSERT INTO `sys_file` VALUES (477, '2021/10/08/371f370d6b7f492495300107745f6f94.jpg', 'LOCAL', '371f370d6b7f492495300107745f6f94.jpg', '.jpg', 69239, 'b65b82fb1467579e0bcc2804c86e40fc', '2021-10-08 14:19:10.891', '2021-10-08 14:19:10.891', NULL);
INSERT INTO `sys_file` VALUES (478, '2021/10/08/411e9c48193c4a209e44c673a8d19b75.jpg', 'LOCAL', '411e9c48193c4a209e44c673a8d19b75.jpg', '.jpg', 119339, 'c5cc6fa26e3ca322dd4e6d402268915f', '2021-10-08 14:19:26.577', '2021-10-08 14:19:26.577', NULL);
INSERT INTO `sys_file` VALUES (479, '2021/10/08/06dc5fe75ce6417198719bd9fe7cbfe0.jpg', 'LOCAL', '06dc5fe75ce6417198719bd9fe7cbfe0.jpg', '.jpg', 60376, '070721d5309388b9f9676ea0b154418a', '2021-10-08 14:19:31.910', '2021-10-08 14:19:31.910', NULL);
INSERT INTO `sys_file` VALUES (480, '2021/10/08/750738ff43af42228ea526597ae59394.jpg', 'LOCAL', '750738ff43af42228ea526597ae59394.jpg', '.jpg', 41234, 'aefa6324ddd1e3acc3a69c700d6167fe', '2021-10-08 14:19:31.913', '2021-10-08 14:19:31.913', NULL);
INSERT INTO `sys_file` VALUES (481, '2021/10/08/2d78845b05b54753b2b917076169462f.jpg', 'LOCAL', '2d78845b05b54753b2b917076169462f.jpg', '.jpg', 85417, 'e8d94d221e8c341b98d89078f036c048', '2021-10-08 14:19:36.364', '2021-10-08 14:19:36.364', NULL);
INSERT INTO `sys_file` VALUES (482, '2021/10/08/e300869a11da4888aca29fc8ab2872da.jpg', 'LOCAL', 'e300869a11da4888aca29fc8ab2872da.jpg', '.jpg', 96535, '93cac7cbcbd8a9b18fcb7027c81b64b0', '2021-10-08 14:19:40.164', '2021-10-08 14:19:40.164', NULL);
INSERT INTO `sys_file` VALUES (483, '2021/10/08/91cdfcb59dae4fd5b948c4b81014e60a.jpg', 'LOCAL', '91cdfcb59dae4fd5b948c4b81014e60a.jpg', '.jpg', 2638, '76fa37b74f0e0f34dc838f669ceccb74', '2021-10-08 14:28:38.849', '2021-10-08 14:28:38.849', NULL);
INSERT INTO `sys_file` VALUES (484, '2021/10/08/9a325afbb948448babff176cb443d447.jpg', 'LOCAL', '9a325afbb948448babff176cb443d447.jpg', '.jpg', 3578, '20f80abe043abe9d0ded7de5296b141d', '2021-10-08 14:28:48.448', '2021-10-08 14:28:48.448', NULL);
INSERT INTO `sys_file` VALUES (485, '2021/10/08/c2db8cb0b7c64281b09ca5cf30e9e278.jpg', 'LOCAL', 'c2db8cb0b7c64281b09ca5cf30e9e278.jpg', '.jpg', 3114, '2584dc09d7e3d083793db5d94b8f3a0b', '2021-10-08 14:29:00.090', '2021-10-08 14:29:00.090', NULL);
INSERT INTO `sys_file` VALUES (486, '2021/10/08/76804a53ade348898a7d84d84782362d.jpg', 'LOCAL', '76804a53ade348898a7d84d84782362d.jpg', '.jpg', 2862, '4e8d45dfe06637718311bc67aacb3b1b', '2021-10-08 14:29:09.330', '2021-10-08 14:29:09.330', NULL);
INSERT INTO `sys_file` VALUES (487, '2021/10/08/d2f72e7150594f37a30771b08fe838f7.jpg', 'LOCAL', 'd2f72e7150594f37a30771b08fe838f7.jpg', '.jpg', 3345, 'eed3d844ae4ed0512f9dee6c9236b64f', '2021-10-08 14:29:18.918', '2021-10-08 14:29:18.918', NULL);
INSERT INTO `sys_file` VALUES (488, '2021/10/08/b6bdc18a58d241ab830e107f47bb953d.jpg', 'LOCAL', 'b6bdc18a58d241ab830e107f47bb953d.jpg', '.jpg', 136780, '221d31fdf7b8ca826cf517f42eaf5983', '2021-10-08 14:52:10.659', '2021-10-08 14:52:10.659', NULL);
INSERT INTO `sys_file` VALUES (489, '2021/10/08/e47562dc65074bd39af1f280f1547b9b.jpg', 'LOCAL', 'e47562dc65074bd39af1f280f1547b9b.jpg', '.jpg', 182161, 'db8dc7d692df7cfad1485c004b0b5c65', '2021-10-08 14:52:21.381', '2021-10-08 14:52:21.381', NULL);
INSERT INTO `sys_file` VALUES (490, '2021/10/08/2f77a057274f47f0aecce9d8e2621e13.jpg', 'LOCAL', '2f77a057274f47f0aecce9d8e2621e13.jpg', '.jpg', 185723, '3569e06c6a3332d87b8a86c3e21f5f96', '2021-10-08 14:52:21.385', '2021-10-08 14:52:21.385', NULL);
INSERT INTO `sys_file` VALUES (491, '2021/10/08/026db878f51d41eaa8eb61619df4e1b5.jpg', 'LOCAL', '026db878f51d41eaa8eb61619df4e1b5.jpg', '.jpg', 126799, 'd11f3c78a0fdb19178ab1a85e6851b23', '2021-10-08 14:52:21.388', '2021-10-08 14:52:21.388', NULL);
INSERT INTO `sys_file` VALUES (492, '2021/10/08/0996acbf232b4ef9868c0e39bd4cae09.jpg', 'LOCAL', '0996acbf232b4ef9868c0e39bd4cae09.jpg', '.jpg', 232396, '5409d198557bbf39a3449b370890b94f', '2021-10-08 14:52:21.392', '2021-10-08 14:52:21.392', NULL);
INSERT INTO `sys_file` VALUES (493, '2021/10/08/90d0cc9c6e4b4fb3b10dc774b16d0f4a.jpg', 'LOCAL', '90d0cc9c6e4b4fb3b10dc774b16d0f4a.jpg', '.jpg', 2231, '384e0a479530ab8345d29527280b7673', '2021-10-08 15:03:57.958', '2021-10-08 15:03:57.958', NULL);
INSERT INTO `sys_file` VALUES (494, '2021/10/08/6e30a1e171a9435db61e4e7445bc19f8.jpg', 'LOCAL', '6e30a1e171a9435db61e4e7445bc19f8.jpg', '.jpg', 3360, '6b08ecf8f5f6ad440b8f74c0e26e7aa9', '2021-10-08 15:04:08.320', '2021-10-08 15:04:08.320', NULL);
INSERT INTO `sys_file` VALUES (495, '2021/10/08/b4ea566d6872415780384e76ea9fe6cc.jpg', 'LOCAL', 'b4ea566d6872415780384e76ea9fe6cc.jpg', '.jpg', 2850, '83c951da96c47107541c969d037d8c8f', '2021-10-08 15:04:17.640', '2021-10-08 15:04:17.640', NULL);
INSERT INTO `sys_file` VALUES (496, '2021/10/08/ccadf1314c7d4f568e93f06a467c3b53.jpg', 'LOCAL', 'ccadf1314c7d4f568e93f06a467c3b53.jpg', '.jpg', 3249, 'c81a4c4bf619b0143ec50ee08455e967', '2021-10-08 15:04:28.391', '2021-10-08 15:04:28.391', NULL);
INSERT INTO `sys_file` VALUES (497, '2021/10/08/0159e9b2eeb847aca156e24e2732f6b2.jpg', 'LOCAL', '0159e9b2eeb847aca156e24e2732f6b2.jpg', '.jpg', 2488, '1f0a9e1e381b1b7b2f326cd265e2fc44', '2021-10-08 15:04:37.640', '2021-10-08 15:04:37.640', NULL);
INSERT INTO `sys_file` VALUES (498, '2021/10/08/9b77ac0779f94f9c817228a7d85ca252.jpg', 'LOCAL', '9b77ac0779f94f9c817228a7d85ca252.jpg', '.jpg', 97611, '7408b81adf5aed5fd9370e74a9536e40', '2021-10-08 15:45:47.266', '2021-10-08 15:45:47.266', NULL);
INSERT INTO `sys_file` VALUES (499, '2021/10/08/70c27eb2e8984bf58f41e9f95adf83cc.jpg', 'LOCAL', '70c27eb2e8984bf58f41e9f95adf83cc.jpg', '.jpg', 47991, '9677a5f28b05fa8c0e0c0de5503db792', '2021-10-08 15:45:55.235', '2021-10-08 15:45:55.235', NULL);
INSERT INTO `sys_file` VALUES (500, '2021/10/08/eaa99ac8d93c4cf2b2359e2a583a880e.jpg', 'LOCAL', 'eaa99ac8d93c4cf2b2359e2a583a880e.jpg', '.jpg', 1490, '19ee968e6f17b22026fb624152264554', '2021-10-08 15:46:56.811', '2021-10-08 15:46:56.811', NULL);
INSERT INTO `sys_file` VALUES (501, '2021/10/08/ae895990c43e4b1c931e4f14f4b78e53.jpg', 'LOCAL', 'ae895990c43e4b1c931e4f14f4b78e53.jpg', '.jpg', 1570, '57a26c4c02e4bd67a48906320e94961e', '2021-10-08 15:48:31.359', '2021-10-08 15:48:31.359', NULL);
INSERT INTO `sys_file` VALUES (502, '2021/10/09/f19f7c93a84148d4acbf614a84bf070e.jpg', 'LOCAL', 'f19f7c93a84148d4acbf614a84bf070e.jpg', '.jpg', 112352, '84395e33d7023400a1c69ff7a6ff769d', '2021-10-09 08:41:27.991', '2021-10-09 08:41:27.991', NULL);
INSERT INTO `sys_file` VALUES (503, '2021/10/09/754d8f2fce0f476f92d76c753280fdf4.jpg', 'LOCAL', '754d8f2fce0f476f92d76c753280fdf4.jpg', '.jpg', 3935, '33754f44686efe44681814b8fadadba9', '2021-10-09 08:43:28.996', '2021-10-09 08:43:28.996', NULL);
INSERT INTO `sys_file` VALUES (504, '2021/10/09/b43e28e2125e4b5a8e9b91f034bebff7.jpg', 'LOCAL', 'b43e28e2125e4b5a8e9b91f034bebff7.jpg', '.jpg', 3717, '47feea8703ec9df79fd6cbec6df7a3fd', '2021-10-09 08:43:37.344', '2021-10-09 08:43:37.344', NULL);
INSERT INTO `sys_file` VALUES (505, '2021/10/09/28579d319ce34df2a0d4d735b9fce34e.jpg', 'LOCAL', '28579d319ce34df2a0d4d735b9fce34e.jpg', '.jpg', 3876, '8953cfc2ac268d265e8afe6f43899f73', '2021-10-09 08:43:46.289', '2021-10-09 08:43:46.289', NULL);
INSERT INTO `sys_file` VALUES (506, '2021/10/09/f808deb8697a4577a4bda5468c398b52.jpg', 'LOCAL', 'f808deb8697a4577a4bda5468c398b52.jpg', '.jpg', 4051, 'ed5a010575b0d07a807a01a4669c2786', '2021-10-09 08:43:56.246', '2021-10-09 08:43:56.246', NULL);
INSERT INTO `sys_file` VALUES (507, '2021/10/09/361ce3278d164dee9846d6705c1485cf.jpg', 'LOCAL', '361ce3278d164dee9846d6705c1485cf.jpg', '.jpg', 128286, 'e375224ac082ff6b86b0ebf6acd3f232', '2021-10-09 09:08:40.607', '2021-10-09 09:08:40.607', NULL);
INSERT INTO `sys_file` VALUES (508, '2021/10/09/ed48ec2d6ecf4445be40a631a8a198ab.jpg', 'LOCAL', 'ed48ec2d6ecf4445be40a631a8a198ab.jpg', '.jpg', 137337, 'f8e0f39d6127e4452f0af8005d8f00c3', '2021-10-09 09:08:55.500', '2021-10-09 09:08:55.500', NULL);
INSERT INTO `sys_file` VALUES (509, '2021/10/09/2267875c58a942d9b284516159d2c1ea.jpg', 'LOCAL', '2267875c58a942d9b284516159d2c1ea.jpg', '.jpg', 46482, 'fcc0057aa38314828beaeb651bc0ec78', '2021-10-09 09:08:58.402', '2021-10-09 09:08:58.402', NULL);
INSERT INTO `sys_file` VALUES (510, '2021/10/13/cb9b695ec4b9454fae300174ca187695.jpg', 'LOCAL', 'cb9b695ec4b9454fae300174ca187695.jpg', '.jpg', 6695, 'bfa31b4015cb73d16337bbe612dfda02', '2021-10-13 14:26:27.601', '2021-10-13 14:26:27.601', NULL);
INSERT INTO `sys_file` VALUES (511, '2021/10/13/921f399fc3834dfd8c14dea2fc51a03b.jpg', 'LOCAL', '921f399fc3834dfd8c14dea2fc51a03b.jpg', '.jpg', 49075, '28fbe7f02782db2fd9db241a9724f75b', '2021-10-13 14:28:53.321', '2021-10-13 14:28:53.321', NULL);
INSERT INTO `sys_file` VALUES (512, '2021/10/13/fa578fa394a44525ad835dd9afa8579a.jpg', 'LOCAL', 'fa578fa394a44525ad835dd9afa8579a.jpg', '.jpg', 16162, 'c09cdd16414d9311537938730e12be8f', '2021-10-13 14:31:35.521', '2021-10-13 14:31:35.521', NULL);
INSERT INTO `sys_file` VALUES (513, '2021/10/13/dc1f8cfe082d469b88e817fa14f7aa19.jpg', 'LOCAL', 'dc1f8cfe082d469b88e817fa14f7aa19.jpg', '.jpg', 14205, '060bc024a05e826d7bc24084c5ecd7ac', '2021-10-13 14:34:27.115', '2021-10-13 14:34:27.115', NULL);
INSERT INTO `sys_file` VALUES (514, '2021/10/13/3338fa6a4b7d4e2b9119c1f97434ed9c.jpg', 'LOCAL', '3338fa6a4b7d4e2b9119c1f97434ed9c.jpg', '.jpg', 12416, 'dbb6e4bfa33daa11ffc2bc09f9ffc3f7', '2021-10-13 14:36:51.701', '2021-10-13 14:36:51.701', NULL);
INSERT INTO `sys_file` VALUES (515, '2021/10/13/c733f0ffb18a4920928b53dd92972ca6.jpg', 'LOCAL', 'c733f0ffb18a4920928b53dd92972ca6.jpg', '.jpg', 11361, '918cb8946bc47bad989ad001f8373ff3', '2021-10-13 14:38:41.188', '2021-10-13 14:38:41.188', NULL);
INSERT INTO `sys_file` VALUES (516, '2021/10/13/f12dc9c9b7b04bb7bea2ee82d80493b7.jpg', 'LOCAL', 'f12dc9c9b7b04bb7bea2ee82d80493b7.jpg', '.jpg', 19528, '6fe6ceaa59efe83f8937723f93251d2f', '2021-10-13 14:40:18.313', '2021-10-13 14:40:18.313', NULL);
INSERT INTO `sys_file` VALUES (517, '2021/10/13/52ac6b51fbff47cda62362035d273a38.jpg', 'LOCAL', '52ac6b51fbff47cda62362035d273a38.jpg', '.jpg', 15508, '50db063a384a6512355fd6a31a88ad69', '2021-10-13 14:41:31.210', '2021-10-13 14:41:31.210', NULL);
INSERT INTO `sys_file` VALUES (518, '2021/10/13/5b544df449d64445a65881a9f57298d7.jpg', 'LOCAL', '5b544df449d64445a65881a9f57298d7.jpg', '.jpg', 18373, '2f14d3d28b060809c8f1c0928725345a', '2021-10-13 14:42:42.313', '2021-10-13 14:42:42.313', NULL);
INSERT INTO `sys_file` VALUES (519, '2021/10/13/44856ced77114516b89229cede80b938.jpg', 'LOCAL', '44856ced77114516b89229cede80b938.jpg', '.jpg', 18566, '18eb2e8bbc7acd50b2d0ed73285e52aa', '2021-10-13 15:05:47.888', '2021-10-13 15:05:47.888', NULL);
INSERT INTO `sys_file` VALUES (520, '2021/10/13/9e5891044b69449cb2f453cb4556341e.jpg', 'LOCAL', '9e5891044b69449cb2f453cb4556341e.jpg', '.jpg', 19518, '4eaf1c60701dfab977f622e31d9243f9', '2021-10-13 15:07:31.633', '2021-10-13 15:07:31.633', NULL);
INSERT INTO `sys_file` VALUES (521, '2021/10/13/999fd825554840e98499f006f198d20c.jpg', 'LOCAL', '999fd825554840e98499f006f198d20c.jpg', '.jpg', 15697, '80535b1ab19410cd021980a57d575956', '2021-10-13 15:08:48.273', '2021-10-13 15:08:48.273', NULL);
INSERT INTO `sys_file` VALUES (522, '2021/10/13/d3e94a0b876d4c479fa958e4c2045db4.jpg', 'LOCAL', 'd3e94a0b876d4c479fa958e4c2045db4.jpg', '.jpg', 17318, '6df82cd7c9d34ef3174af8475328bcd6', '2021-10-13 15:09:44.473', '2021-10-13 15:09:44.473', NULL);
INSERT INTO `sys_file` VALUES (523, '2021/10/13/8ce3b7cceb1b4d239afbd5a28e69cbe4.jpg', 'LOCAL', '8ce3b7cceb1b4d239afbd5a28e69cbe4.jpg', '.jpg', 19790, '3e91c55c4e1537cc0eaad6562fd9c428', '2021-10-13 15:11:01.723', '2021-10-13 15:11:01.723', NULL);
INSERT INTO `sys_file` VALUES (524, '2021/10/13/77ad34a22a414b11a88b74851e308acc.jpg', 'LOCAL', '77ad34a22a414b11a88b74851e308acc.jpg', '.jpg', 20339, '88a9d259b7d5283dfee9f3321b861d34', '2021-10-13 15:13:56.432', '2021-10-13 15:13:56.432', NULL);
INSERT INTO `sys_file` VALUES (525, '2021/10/13/6c6d976a6bb645e88a7a8eed367727c9.jpg', 'LOCAL', '6c6d976a6bb645e88a7a8eed367727c9.jpg', '.jpg', 8868, 'abe1b385bf9b090e53f346fd96b51409', '2021-10-13 15:15:17.072', '2021-10-13 15:15:17.072', NULL);
INSERT INTO `sys_file` VALUES (526, '2021/10/13/94ef4ad99c5743f1a3ff4e5202d1e30b.jpg', 'LOCAL', '94ef4ad99c5743f1a3ff4e5202d1e30b.jpg', '.jpg', 8284, '59893867e63f8e7040035593effea09c', '2021-10-13 15:18:01.212', '2021-10-13 15:18:01.212', NULL);
INSERT INTO `sys_file` VALUES (527, '2021/10/13/eb2e715e80cd4db888e0b07b1e9dcf37.jpg', 'LOCAL', 'eb2e715e80cd4db888e0b07b1e9dcf37.jpg', '.jpg', 95027, 'b13c845030208b636602bf5f7bf52b46', '2021-10-13 15:25:03.780', '2021-10-13 15:25:03.780', NULL);
INSERT INTO `sys_file` VALUES (528, '2021/10/13/2f887ee9cbbd472a9bd138c397ca3b07.jpg', 'LOCAL', '2f887ee9cbbd472a9bd138c397ca3b07.jpg', '.jpg', 115167, '3ebb8f74fc093be206b9c143b504021c', '2021-10-13 15:28:27.051', '2021-10-13 15:28:27.051', NULL);
INSERT INTO `sys_file` VALUES (529, '2021/10/13/625f7be489ef4ab0a03162071dfb3d57.jpg', 'LOCAL', '625f7be489ef4ab0a03162071dfb3d57.jpg', '.jpg', 136075, '75f3f584da6f5368e1717d4b35d1920f', '2021-10-13 15:29:59.736', '2021-10-13 15:29:59.736', NULL);
INSERT INTO `sys_file` VALUES (530, '2021/10/13/6361062f918c44ffb6952551c49af48c.jpg', 'LOCAL', '6361062f918c44ffb6952551c49af48c.jpg', '.jpg', 200194, '1dc575bfedda612190243a26e29229a0', '2021-10-13 15:39:16.298', '2021-10-13 15:39:16.298', NULL);
INSERT INTO `sys_file` VALUES (531, '2021/10/13/bf386dfa30914edf8268619e8f5a84c8.jpg', 'LOCAL', 'bf386dfa30914edf8268619e8f5a84c8.jpg', '.jpg', 145990, '8377b85a8029442dc62827333b4d2dee', '2021-10-13 15:40:56.743', '2021-10-13 15:40:56.743', NULL);
INSERT INTO `sys_file` VALUES (532, '2021/10/13/49c5f8e9023243ac8442ac17320a9ec2.jpg', 'LOCAL', '49c5f8e9023243ac8442ac17320a9ec2.jpg', '.jpg', 40236, 'e11e820e81bf894c22941505ce0472ad', '2021-10-13 15:50:33.301', '2021-10-13 15:50:33.301', NULL);
INSERT INTO `sys_file` VALUES (533, '2021/10/13/c00d7d7ed2024ad092ed12a5e3d05571.jpg', 'LOCAL', 'c00d7d7ed2024ad092ed12a5e3d05571.jpg', '.jpg', 144408, 'd4f8ed9026ddf4e745eb823c6c7e2d13', '2021-10-13 15:53:26.570', '2021-10-13 15:53:26.570', NULL);
INSERT INTO `sys_file` VALUES (534, '2021/10/19/0c3ff2f3cf844ae69640b682094bdd04.jpg', 'LOCAL', '0c3ff2f3cf844ae69640b682094bdd04.jpg', '.jpg', 41934, '1cb1310ade9c2f9600125c683a1fb20d', '2021-10-19 16:03:08.546', '2021-10-19 16:03:08.546', NULL);
INSERT INTO `sys_file` VALUES (535, '2021/10/27/9f92c82fa45e42e68392b0a84a128b42.jpg', 'LOCAL', '9f92c82fa45e42e68392b0a84a128b42.jpg', '.jpg', 2112, 'addc201879963445a708e46eda02b7be', '2021-10-27 19:11:22.864', '2021-10-27 19:11:22.864', NULL);

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组名称，例如：搬砖者',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分组信息：例如：搬砖的人',
  `level` enum('root','guest','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user' COMMENT '分组级别（root、guest分组只能存在一个）',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_del`(`name`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES (1, 'root', '超级用户组', 'root', '2021-09-17 16:55:38.806', '2021-09-17 16:55:38.806', NULL);
INSERT INTO `sys_group` VALUES (2, 'guest', '游客组', 'guest', '2021-09-17 16:55:38.940', '2021-09-17 16:55:38.940', NULL);

-- ----------------------------
-- Table structure for sys_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_permission`;
CREATE TABLE `sys_group_permission`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '分组id',
  `permission_id` int(10) UNSIGNED NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id_permission_id`(`group_id`, `permission_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_group_permission
-- ----------------------------
INSERT INTO `sys_group_permission` VALUES (1, 2, 26);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status_code` int(11) NULL DEFAULT NULL,
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (31, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-04 23:06:27.485', '2021-10-04 23:06:27.485', NULL);
INSERT INTO `sys_log` VALUES (32, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-04 23:07:06.865', '2021-10-04 23:07:06.865', NULL);
INSERT INTO `sys_log` VALUES (33, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:48:20.720', '2021-10-05 11:48:20.720', NULL);
INSERT INTO `sys_log` VALUES (34, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 11:48:50.119', '2021-10-05 11:48:50.119', NULL);
INSERT INTO `sys_log` VALUES (35, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:58:29.738', '2021-10-05 11:58:29.738', NULL);
INSERT INTO `sys_log` VALUES (36, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:58:58.853', '2021-10-05 11:58:58.853', NULL);
INSERT INTO `sys_log` VALUES (37, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:59:10.685', '2021-10-05 11:59:10.685', NULL);
INSERT INTO `sys_log` VALUES (38, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:59:19.383', '2021-10-05 11:59:19.383', NULL);
INSERT INTO `sys_log` VALUES (39, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 11:59:27.193', '2021-10-05 11:59:27.193', NULL);
INSERT INTO `sys_log` VALUES (40, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 11:59:32.075', '2021-10-05 11:59:32.075', NULL);
INSERT INTO `sys_log` VALUES (41, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:00:01.398', '2021-10-05 12:00:01.398', NULL);
INSERT INTO `sys_log` VALUES (42, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:00:11.398', '2021-10-05 12:00:11.398', NULL);
INSERT INTO `sys_log` VALUES (43, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:03:16.462', '2021-10-05 12:03:16.462', NULL);
INSERT INTO `sys_log` VALUES (44, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:03:24.223', '2021-10-05 12:03:24.223', NULL);
INSERT INTO `sys_log` VALUES (45, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:04:41.910', '2021-10-05 12:04:41.910', NULL);
INSERT INTO `sys_log` VALUES (46, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 12:05:36.343', '2021-10-05 12:05:36.343', NULL);
INSERT INTO `sys_log` VALUES (47, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 12:05:42.344', '2021-10-05 12:05:42.344', NULL);
INSERT INTO `sys_log` VALUES (48, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 12:05:52.984', '2021-10-05 12:05:52.984', NULL);
INSERT INTO `sys_log` VALUES (49, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 12:05:59.859', '2021-10-05 12:05:59.859', NULL);
INSERT INTO `sys_log` VALUES (50, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 13:53:17.603', '2021-10-05 13:53:17.603', NULL);
INSERT INTO `sys_log` VALUES (51, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-05 13:53:26.472', '2021-10-05 13:53:26.472', NULL);
INSERT INTO `sys_log` VALUES (52, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-05 13:53:29.781', '2021-10-05 13:53:29.781', NULL);
INSERT INTO `sys_log` VALUES (53, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:10:27.622', '2021-10-06 17:10:27.622', NULL);
INSERT INTO `sys_log` VALUES (54, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:10:36.013', '2021-10-06 17:10:36.013', NULL);
INSERT INTO `sys_log` VALUES (55, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:10:43.633', '2021-10-06 17:10:43.633', NULL);
INSERT INTO `sys_log` VALUES (56, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:12:06.240', '2021-10-06 17:12:06.240', NULL);
INSERT INTO `sys_log` VALUES (57, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:12:36.039', '2021-10-06 17:12:36.039', NULL);
INSERT INTO `sys_log` VALUES (58, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:13:01.221', '2021-10-06 17:13:01.221', NULL);
INSERT INTO `sys_log` VALUES (59, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:22:47.960', '2021-10-06 17:22:47.960', NULL);
INSERT INTO `sys_log` VALUES (60, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:33:44.975', '2021-10-06 17:33:44.975', NULL);
INSERT INTO `sys_log` VALUES (61, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:36:05.903', '2021-10-06 17:36:05.903', NULL);
INSERT INTO `sys_log` VALUES (62, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:37:51.368', '2021-10-06 17:37:51.368', NULL);
INSERT INTO `sys_log` VALUES (63, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:40:34.664', '2021-10-06 17:40:34.664', NULL);
INSERT INTO `sys_log` VALUES (64, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:41:13.454', '2021-10-06 17:41:13.454', NULL);
INSERT INTO `sys_log` VALUES (65, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:41:34.716', '2021-10-06 17:41:34.716', NULL);
INSERT INTO `sys_log` VALUES (66, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:46:34.447', '2021-10-06 17:46:34.447', NULL);
INSERT INTO `sys_log` VALUES (67, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:50:02.390', '2021-10-06 17:50:02.390', NULL);
INSERT INTO `sys_log` VALUES (68, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-06 17:52:16.321', '2021-10-06 17:52:16.321', NULL);
INSERT INTO `sys_log` VALUES (69, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-06 17:57:21.835', '2021-10-06 17:57:21.835', NULL);
INSERT INTO `sys_log` VALUES (70, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-07 18:02:53.639', '2021-10-07 18:02:53.639', NULL);
INSERT INTO `sys_log` VALUES (71, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-07 18:03:20.338', '2021-10-07 18:03:20.338', NULL);
INSERT INTO `sys_log` VALUES (72, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-07 18:10:43.450', '2021-10-07 18:10:43.450', NULL);
INSERT INTO `sys_log` VALUES (73, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-07 18:32:29.349', '2021-10-07 18:32:29.349', NULL);
INSERT INTO `sys_log` VALUES (74, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-07 18:48:52.095', '2021-10-07 18:48:52.095', NULL);
INSERT INTO `sys_log` VALUES (75, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-07 18:55:05.375', '2021-10-07 18:55:05.375', NULL);
INSERT INTO `sys_log` VALUES (76, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-07 18:55:37.556', '2021-10-07 18:55:37.556', NULL);
INSERT INTO `sys_log` VALUES (77, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-07 18:56:40.346', '2021-10-07 18:56:40.346', NULL);
INSERT INTO `sys_log` VALUES (78, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-07 21:00:51.054', '2021-10-07 21:00:51.054', NULL);
INSERT INTO `sys_log` VALUES (79, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:22:10.433', '2021-10-13 15:22:10.433', NULL);
INSERT INTO `sys_log` VALUES (80, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:22:30.510', '2021-10-13 15:22:30.510', NULL);
INSERT INTO `sys_log` VALUES (81, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:23:12.223', '2021-10-13 15:23:12.223', NULL);
INSERT INTO `sys_log` VALUES (82, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:23:26.347', '2021-10-13 15:23:26.347', NULL);
INSERT INTO `sys_log` VALUES (83, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:23:55.091', '2021-10-13 15:23:55.091', NULL);
INSERT INTO `sys_log` VALUES (84, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-13 15:27:13.123', '2021-10-13 15:27:13.123', NULL);
INSERT INTO `sys_log` VALUES (85, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-13 15:35:53.695', '2021-10-13 15:35:53.695', NULL);
INSERT INTO `sys_log` VALUES (86, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-13 15:36:23.185', '2021-10-13 15:36:23.185', NULL);
INSERT INTO `sys_log` VALUES (87, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-13 15:36:38.620', '2021-10-13 15:36:38.620', NULL);
INSERT INTO `sys_log` VALUES (88, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-19 15:44:20.329', '2021-10-19 15:44:20.329', NULL);
INSERT INTO `sys_log` VALUES (89, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-19 15:44:37.581', '2021-10-19 15:44:37.581', NULL);
INSERT INTO `sys_log` VALUES (90, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-21 17:42:33.591', '2021-10-21 17:42:33.591', NULL);
INSERT INTO `sys_log` VALUES (91, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-22 09:46:10.595', '2021-10-22 09:46:10.595', NULL);
INSERT INTO `sys_log` VALUES (92, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:27:42.084', '2021-10-28 16:27:42.084', NULL);
INSERT INTO `sys_log` VALUES (93, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:27:50.100', '2021-10-28 16:27:50.100', NULL);
INSERT INTO `sys_log` VALUES (94, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:27:53.541', '2021-10-28 16:27:53.541', NULL);
INSERT INTO `sys_log` VALUES (95, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:27:56.667', '2021-10-28 16:27:56.667', NULL);
INSERT INTO `sys_log` VALUES (96, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-28 16:28:00.459', '2021-10-28 16:28:00.459', NULL);
INSERT INTO `sys_log` VALUES (97, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-28 16:28:04.713', '2021-10-28 16:28:04.713', NULL);
INSERT INTO `sys_log` VALUES (98, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-28 16:28:09.154', '2021-10-28 16:28:09.154', NULL);
INSERT INTO `sys_log` VALUES (99, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/2', '查询Banner', '2021-10-28 16:28:12.861', '2021-10-28 16:28:12.861', NULL);
INSERT INTO `sys_log` VALUES (100, 'guest查询了Banner数据', 2, 'guest', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:28:17.602', '2021-10-28 16:28:17.602', NULL);
INSERT INTO `sys_log` VALUES (101, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:37:36.402', '2021-10-28 16:37:36.402', NULL);
INSERT INTO `sys_log` VALUES (102, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:37:46.310', '2021-10-28 16:37:46.310', NULL);
INSERT INTO `sys_log` VALUES (103, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:37:49.426', '2021-10-28 16:37:49.426', NULL);
INSERT INTO `sys_log` VALUES (104, 'root查询了Banner数据', 1, 'root', 200, 'GET', '/v1/banner/1', '查询Banner', '2021-10-28 16:37:53.095', '2021-10-28 16:37:53.095', NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限名称，例如：访问首页',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限所属模块，例如：人员管理',
  `mount` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0：关闭 1：开启',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, '创建规格值', '规格值', 1, '2021-09-17 17:02:58.284', '2021-09-17 17:02:58.284', NULL);
INSERT INTO `sys_permission` VALUES (2, '创建六宫格', '六宫格', 1, '2021-09-17 17:02:58.497', '2021-09-17 17:02:58.497', NULL);
INSERT INTO `sys_permission` VALUES (3, '更新SKU', 'SKU', 1, '2021-09-17 17:02:58.503', '2021-09-17 17:02:58.503', NULL);
INSERT INTO `sys_permission` VALUES (4, '删除专题下的spu', '主题', 1, '2021-09-17 17:02:58.513', '2021-09-17 17:02:58.513', NULL);
INSERT INTO `sys_permission` VALUES (5, '搜索日志', '日志', 1, '2021-09-17 17:02:58.522', '2021-09-17 17:02:58.522', NULL);
INSERT INTO `sys_permission` VALUES (6, '删除优惠券', '优惠券', 1, '2021-09-17 17:02:58.529', '2021-09-17 17:02:58.529', NULL);
INSERT INTO `sys_permission` VALUES (7, '查询日志记录的用户', '日志', 1, '2021-09-17 17:02:58.535', '2021-09-17 17:02:58.535', NULL);
INSERT INTO `sys_permission` VALUES (8, '创建活动', '活动', 1, '2021-09-17 17:02:58.543', '2021-09-17 17:02:58.543', NULL);
INSERT INTO `sys_permission` VALUES (9, '删除Banner', 'Banner', 1, '2021-09-17 17:02:58.554', '2021-09-17 17:02:58.554', NULL);
INSERT INTO `sys_permission` VALUES (10, '更新SPU', 'SPU', 1, '2021-09-17 17:02:58.562', '2021-09-17 17:02:58.562', NULL);
INSERT INTO `sys_permission` VALUES (11, '创建Banner', 'Banner', 1, '2021-09-17 17:02:58.572', '2021-09-17 17:02:58.572', NULL);
INSERT INTO `sys_permission` VALUES (12, '查询所有日志', '日志', 1, '2021-09-17 17:02:58.587', '2021-09-17 17:02:58.587', NULL);
INSERT INTO `sys_permission` VALUES (13, '更新Banner', 'Banner', 1, '2021-09-17 17:02:58.597', '2021-09-17 17:02:58.597', NULL);
INSERT INTO `sys_permission` VALUES (14, '删除SPU', 'SPU', 1, '2021-09-17 17:02:58.604', '2021-09-17 17:02:58.604', NULL);
INSERT INTO `sys_permission` VALUES (15, '创建Banner item', 'Banner item', 1, '2021-09-17 17:02:58.614', '2021-09-17 17:02:58.614', NULL);
INSERT INTO `sys_permission` VALUES (16, '创建规格名', '规格名', 1, '2021-09-17 17:02:58.632', '2021-09-17 17:02:58.632', NULL);
INSERT INTO `sys_permission` VALUES (17, '创建SKU', 'SKU', 1, '2021-09-17 17:02:58.639', '2021-09-17 17:02:58.639', NULL);
INSERT INTO `sys_permission` VALUES (18, '删除规格名', '规格名', 1, '2021-09-17 17:02:58.648', '2021-09-17 17:02:58.648', NULL);
INSERT INTO `sys_permission` VALUES (19, '删除规格值', '规格值', 1, '2021-09-17 17:02:58.657', '2021-09-17 17:02:58.657', NULL);
INSERT INTO `sys_permission` VALUES (20, '创建主题', '主题', 1, '2021-09-17 17:02:58.668', '2021-09-17 17:02:58.668', NULL);
INSERT INTO `sys_permission` VALUES (21, '删除分类', '分类', 1, '2021-09-17 17:02:58.675', '2021-09-17 17:02:58.675', NULL);
INSERT INTO `sys_permission` VALUES (22, '创建优惠券', '优惠券', 1, '2021-09-17 17:02:58.680', '2021-09-17 17:02:58.680', NULL);
INSERT INTO `sys_permission` VALUES (23, '查看lin的信息', '信息', 1, '2021-09-17 17:02:58.685', '2021-09-17 17:02:58.685', NULL);
INSERT INTO `sys_permission` VALUES (24, '更新活动', '活动', 1, '2021-09-17 17:02:58.696', '2021-09-17 17:02:58.696', NULL);
INSERT INTO `sys_permission` VALUES (25, '创建专题下的spu', '主题', 1, '2021-09-17 17:02:58.707', '2021-09-17 17:02:58.707', NULL);
INSERT INTO `sys_permission` VALUES (26, '查询Banner item', 'Banner item', 1, '2021-09-17 17:02:58.721', '2021-09-17 17:02:58.721', NULL);
INSERT INTO `sys_permission` VALUES (27, '更新分类', '分类', 1, '2021-09-17 17:02:58.728', '2021-09-17 17:02:58.728', NULL);
INSERT INTO `sys_permission` VALUES (28, '删除六宫格', '六宫格', 1, '2021-09-17 17:02:58.734', '2021-09-17 17:02:58.734', NULL);
INSERT INTO `sys_permission` VALUES (29, '更新主题', '主题', 1, '2021-09-17 17:02:58.742', '2021-09-17 17:02:58.742', NULL);
INSERT INTO `sys_permission` VALUES (30, '更新Banner item', 'Banner item', 1, '2021-09-17 17:02:58.755', '2021-09-17 17:02:58.755', NULL);
INSERT INTO `sys_permission` VALUES (31, '创建分类', '分类', 1, '2021-09-17 17:02:58.767', '2021-09-17 17:02:58.767', NULL);
INSERT INTO `sys_permission` VALUES (32, '删除Banner item', 'Banner item', 1, '2021-09-17 17:02:58.774', '2021-09-17 17:02:58.774', NULL);
INSERT INTO `sys_permission` VALUES (33, '删除活动', '活动', 1, '2021-09-17 17:02:58.783', '2021-09-17 17:02:58.783', NULL);
INSERT INTO `sys_permission` VALUES (34, '更新优惠券', '优惠券', 1, '2021-09-17 17:02:58.788', '2021-09-17 17:02:58.788', NULL);
INSERT INTO `sys_permission` VALUES (35, '创建SPU', 'SPU', 1, '2021-09-17 17:02:58.793', '2021-09-17 17:02:58.793', NULL);
INSERT INTO `sys_permission` VALUES (36, '查询Banner', 'Banner', 1, '2021-09-17 17:02:58.804', '2021-09-17 17:02:58.804', NULL);
INSERT INTO `sys_permission` VALUES (37, '更新规格名', '规格名', 1, '2021-09-17 17:02:58.811', '2021-09-17 17:02:58.811', NULL);
INSERT INTO `sys_permission` VALUES (38, '创建优惠券模板', '优惠券', 1, '2021-09-17 17:02:58.827', '2021-09-17 17:02:58.827', NULL);
INSERT INTO `sys_permission` VALUES (39, '更新六宫格', '六宫格', 1, '2021-09-17 17:02:58.845', '2021-09-17 17:02:58.845', NULL);
INSERT INTO `sys_permission` VALUES (40, '更新规格值', '规格值', 1, '2021-09-17 17:02:58.863', '2021-09-17 17:02:58.863', NULL);
INSERT INTO `sys_permission` VALUES (41, '删除主题', '主题', 1, '2021-09-17 17:02:58.873', '2021-09-17 17:02:58.873', NULL);
INSERT INTO `sys_permission` VALUES (42, '更新优惠券模板', '优惠券', 1, '2021-09-17 17:02:58.881', '2021-09-17 17:02:58.881', NULL);
INSERT INTO `sys_permission` VALUES (43, '测试日志记录', '信息', 1, '2021-09-17 17:02:58.899', '2021-09-17 17:02:58.899', NULL);
INSERT INTO `sys_permission` VALUES (44, '修改订单状态', '订单', 1, '2021-09-17 17:02:58.914', '2021-09-17 17:02:58.914', NULL);
INSERT INTO `sys_permission` VALUES (45, '删除SKU', 'SKU', 1, '2021-09-17 17:02:58.924', '2021-09-17 17:02:58.924', NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名，唯一',
  `nickname` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像url',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_del`(`username`, `delete_time`) USING BTREE,
  UNIQUE INDEX `email_del`(`email`, `delete_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'root', 'root', NULL, NULL, '2021-09-17 16:55:38.526', '2021-09-17 16:55:38.526', NULL);
INSERT INTO `sys_user` VALUES (2, 'guest', NULL, NULL, 'guest@gmail.com', '2021-09-17 17:18:31.360', '2021-09-17 17:18:31.360', NULL);

-- ----------------------------
-- Table structure for sys_user_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '分组id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_group_id`(`user_id`, `group_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES (1, 1, 1);
INSERT INTO `sys_user_group` VALUES (2, 2, 2);

-- ----------------------------
-- Table structure for sys_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_identity`;
CREATE TABLE `sys_user_identity`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `identity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credential` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_identity
-- ----------------------------
INSERT INTO `sys_user_identity` VALUES (1, 1, 'USERNAME_PASSWORD', 'root', 'pbkdf2sha256:64000:18:24:n:ns8OW+VYetdqncCEerZNNi1xoCqsMSxW:z3a7KOklUG1y/bdSmKonFfVF', '2021-09-17 16:55:38.670', '2021-10-04 12:19:27.173', NULL);
INSERT INTO `sys_user_identity` VALUES (2, 2, 'USERNAME_PASSWORD', 'guest', 'pbkdf2sha256:64000:18:24:n:ZVYTEs/2/QJFi0aYej5bLsnXyPSzR5w2:ZyafQNs08+pPqtpVbLlS96PH', '2021-09-17 17:18:31.491', '2021-09-17 19:38:45.205', NULL);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '中文限制6个，英文限制12个，由逻辑层控制',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `highlight` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1, '遮光', '', '2021-09-05 02:25:30.355', NULL, '2019-07-30 04:10:10.000', 1, 1);
INSERT INTO `tag` VALUES (3, '纱幔', NULL, '2021-09-05 02:25:36.820', NULL, '2019-07-30 04:11:06.000', NULL, 1);
INSERT INTO `tag` VALUES (4, '纱帘', NULL, '2021-09-05 02:25:43.994', NULL, '2019-08-01 18:45:52.000', NULL, 1);
INSERT INTO `tag` VALUES (5, '测试数据', NULL, '2019-09-16 02:19:38.000', NULL, '2019-08-01 18:46:01.000', 1, 1);
INSERT INTO `tag` VALUES (10, '布壁', NULL, '2021-09-05 02:26:06.582', NULL, '2019-08-01 18:49:02.000', NULL, 1);
INSERT INTO `tag` VALUES (11, '竹帘', NULL, '2021-09-05 02:26:15.636', NULL, '2019-08-01 18:50:26.000', 1, 1);
INSERT INTO `tag` VALUES (15, '窗帘', NULL, '2021-09-05 02:26:19.722', NULL, '2019-09-12 18:06:59.000', 1, 1);
INSERT INTO `tag` VALUES (17, '卷帘', NULL, '2021-09-05 02:26:23.123', NULL, '2019-09-14 02:13:20.000', NULL, 1);
INSERT INTO `tag` VALUES (18, '门帘', NULL, '2021-09-05 02:26:26.105', NULL, '2019-09-14 02:37:42.000', NULL, 1);
INSERT INTO `tag` VALUES (19, '2021', NULL, '2021-09-05 02:26:32.417', NULL, '2019-09-14 02:37:42.000', NULL, 1);
INSERT INTO `tag` VALUES (20, '简约', NULL, '2021-09-05 02:26:36.462', NULL, '2019-09-14 06:19:12.000', NULL, 1);
INSERT INTO `tag` VALUES (21, '现代', NULL, '2021-09-05 02:26:41.439', NULL, '2019-09-14 06:19:12.000', 1, 1);
INSERT INTO `tag` VALUES (22, '浴帘', NULL, '2021-09-05 02:26:55.169', NULL, '2019-09-14 06:34:25.000', 1, 1);
INSERT INTO `tag` VALUES (23, '百叶帘', NULL, '2021-09-05 02:27:03.714', NULL, '2019-09-14 06:50:11.000', NULL, 1);
INSERT INTO `tag` VALUES (25, '遮光布', NULL, '2021-09-05 02:27:10.227', NULL, '2019-09-14 07:24:14.000', NULL, 1);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `tpl_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `entrance_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `internal_top_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `online` tinyint(3) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES (1, '清凉一夏，折扣季', '秋天是金色的。麦穗是金色的，秋阳是金色的。虽然冬快至，但宜人的温度总是让我们心情愉快#我们为您精选了一系列秋冬折扣商品，慢慢挑选吧~', 't-1', '2019-07-18 07:10:59.000', 'janna', '2021-10-19 15:34:41.925', NULL, 'http://localhost:8092/assets/2021/10/05/8462322d31124b19a3a4a1d8ac9a18c0.jpg', NULL, 'http://localhost:8092/assets/2021/10/05/9bf5eae9e0204e52b9ef9befa82b810d.jpg', 'http://localhost:8092/assets/2021/10/05/8462322d31124b19a3a4a1d8ac9a18c0.jpg', 1);
INSERT INTO `theme` VALUES (2, '热卖好评', '美佳选的那一定是最好的', 't-5', '2019-08-09 07:19:37.000', 'camille', '2021-10-19 15:34:41.925', NULL, 'http://localhost:8092/assets/2021/10/07/e9da62c558a346f39b6be2b0ccde84a6.png', NULL, 'http://localhost:8092/assets/2021/10/07/e9da62c558a346f39b6be2b0ccde84a6.png', 'http://localhost:8092/assets/2021/10/07/e9da62c558a346f39b6be2b0ccde84a6.png', 1);
INSERT INTO `theme` VALUES (4, '每周上新', '`每周上新`活动#每周都有一款折扣商品，每周都有适合你的唯一专属#有垂直竖帘百叶窗帘；简约无缝窗帘；每周来逛逛，找到你所喜爱的东西', 't-2', '2019-07-30 00:00:14.000', 'spu-list', '2021-10-19 15:34:41.925', NULL, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', NULL, 'http://localhost:8092/assets/2021/10/06/cad23af93890478c8fbb36f9c20c9356.jpg', 'http://localhost:8092/assets/2021/10/07/31d82db19a9d4e22a004f6df77eedfea.png', 1);
INSERT INTO `theme` VALUES (5, '美佳甄选', '甄选', 't-3', '2019-07-30 17:20:23.000', 'diana', '2021-10-19 15:34:41.925', NULL, 'http://localhost:8092/assets/2021/10/13/6361062f918c44ffb6952551c49af48c.jpg', NULL, 'http://localhost:8092/assets/2021/10/13/bf386dfa30914edf8268619e8f5a84c8.jpg', 'http://localhost:8092/assets/2021/10/13/6361062f918c44ffb6952551c49af48c.jpg', 1);
INSERT INTO `theme` VALUES (6, '端庄典雅', '集现代、简约、大方、典雅为一体，以\"新、奇、特\"引导潮流，结合现代人们的开发式观念，将实用性功能化、艺术化，创造出一种无语伦比的优雅品味', 't-4', '2019-08-01 02:43:18.000', 'irelia', '2021-10-19 15:34:41.925', NULL, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', NULL, 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', 'http://localhost:8092/assets/2021/10/07/0736dd84b1bc457383d5656e6d8416d5.jpg', 1);

-- ----------------------------
-- Table structure for theme_spu
-- ----------------------------
DROP TABLE IF EXISTS `theme_spu`;
CREATE TABLE `theme_spu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) UNSIGNED NOT NULL,
  `spu_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theme_spu
-- ----------------------------
INSERT INTO `theme_spu` VALUES (102, 4, 29);
INSERT INTO `theme_spu` VALUES (103, 4, 30);
INSERT INTO `theme_spu` VALUES (104, 4, 31);
INSERT INTO `theme_spu` VALUES (105, 4, 32);
INSERT INTO `theme_spu` VALUES (106, 1, 32);
INSERT INTO `theme_spu` VALUES (107, 1, 31);
INSERT INTO `theme_spu` VALUES (108, 4, 33);
INSERT INTO `theme_spu` VALUES (109, 4, 34);
INSERT INTO `theme_spu` VALUES (110, 4, 35);
INSERT INTO `theme_spu` VALUES (111, 5, 31);
INSERT INTO `theme_spu` VALUES (112, 5, 32);
INSERT INTO `theme_spu` VALUES (113, 2, 44);
INSERT INTO `theme_spu` VALUES (114, 2, 43);
INSERT INTO `theme_spu` VALUES (115, 2, 42);
INSERT INTO `theme_spu` VALUES (116, 2, 41);
INSERT INTO `theme_spu` VALUES (117, 2, 40);
INSERT INTO `theme_spu` VALUES (118, 2, 39);
INSERT INTO `theme_spu` VALUES (119, 6, 44);
INSERT INTO `theme_spu` VALUES (120, 6, 42);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unify_uid` int(10) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wx_profile` json NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (36, 'oBfjq4p7h0kuQEV4_mYRtNj1FX8s', NULL, NULL, NULL, NULL, NULL, 'null', '2021-09-06 12:25:31.555', '2021-09-06 12:25:31.555', NULL);
INSERT INTO `user` VALUES (37, 'o9on45GsJCc5ssGxrvaTaI4b4fqs', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 15:52:33.501', '2021-10-19 15:52:33.501', NULL);
INSERT INTO `user` VALUES (38, 'o9on45Oa5tcnmVGXhK4KuhADkUZw', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 16:09:32.424', '2021-10-19 16:09:32.424', NULL);
INSERT INTO `user` VALUES (39, 'o9on45HTu4wel9EXXm41P2-dujGQ', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 16:09:32.425', '2021-10-19 16:09:32.425', NULL);
INSERT INTO `user` VALUES (40, 'o9on45EXtJ7a0UgvbVb4EiKjXfk8', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 16:19:44.630', '2021-10-19 16:19:44.630', NULL);
INSERT INTO `user` VALUES (41, 'o9on45MdKtFrnUdLdmJUigmwnpwk', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 20:47:54.500', '2021-10-19 20:47:54.500', NULL);
INSERT INTO `user` VALUES (42, 'o9on45MYhO7M5Ah6Dm9O19JgqgKI', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:03:48.354', '2021-10-19 21:03:48.354', NULL);
INSERT INTO `user` VALUES (43, 'o9on45LyyalseZay-K1tRRkZ44gw', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:11:42.812', '2021-10-19 21:11:42.812', NULL);
INSERT INTO `user` VALUES (44, 'o9on45K8ItogUrFuiIV2EaT8dIuo', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:15:46.654', '2021-10-19 21:15:46.654', NULL);
INSERT INTO `user` VALUES (45, 'o9on45P-lpfdBli5Act1N5cJKnHY', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:24:46.322', '2021-10-19 21:24:46.322', NULL);
INSERT INTO `user` VALUES (46, 'o9on45HPFdxkI2gmAQGmsGcRZ8P4', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:44:27.700', '2021-10-19 21:44:27.700', NULL);
INSERT INTO `user` VALUES (47, 'o9on45L6Ohbvyya4lJq1ySnMo9HE', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-19 21:52:33.785', '2021-10-19 21:52:33.785', NULL);
INSERT INTO `user` VALUES (48, 'o9on45NfkuQMxPuhb__Ziirzf79c', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-20 09:11:50.494', '2021-10-20 09:11:50.494', NULL);
INSERT INTO `user` VALUES (49, 'o9on45JpSqihQXbDrUNH6b7dPpbg', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-23 11:58:13.021', '2021-10-23 11:58:13.021', NULL);
INSERT INTO `user` VALUES (50, 'o9on45FoSxdQg5lxJ59O3o-yJLUU', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-23 12:59:33.910', '2021-10-23 12:59:33.910', NULL);
INSERT INTO `user` VALUES (51, 'o9on45FUUe1VlN1XHE8FM_0q2x78', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-25 16:59:02.988', '2021-10-25 16:59:02.988', NULL);
INSERT INTO `user` VALUES (52, 'o9on45I4HhMWcbU9CRrzQ0EdHpFE', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-26 06:19:15.269', '2021-10-26 06:19:15.269', NULL);
INSERT INTO `user` VALUES (53, 'o9on45D4JVVhtHitfVD_uIIAQeRk', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-26 19:35:43.717', '2021-10-26 19:35:43.717', NULL);
INSERT INTO `user` VALUES (54, 'o9on45IZi8dEQNNE1KnU46edEUuE', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-27 11:06:47.288', '2021-10-27 11:06:47.288', NULL);
INSERT INTO `user` VALUES (55, 'o9on45Gvg95O_CDrg01i01zdvQpo', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-27 13:31:15.549', '2021-10-27 13:31:15.549', NULL);
INSERT INTO `user` VALUES (56, 'o9on45Muru7H-ImG5lEa0rauEaac', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-27 15:51:52.946', '2021-10-27 15:51:52.946', NULL);
INSERT INTO `user` VALUES (57, 'o9on45IxitbxY-D8cyRSLRy_wBjU', NULL, NULL, NULL, NULL, NULL, 'null', '2021-10-27 19:50:33.483', '2021-10-27 19:50:33.483', NULL);
INSERT INTO `user` VALUES (58, 'oA3B25rg1dRNn6tOU0lfs3GOmxu0', '微信用户', NULL, NULL, NULL, NULL, '{\"city\": \"\", \"gender\": 0, \"country\": \"\", \"language\": \"\", \"nickName\": \"微信用户\", \"province\": \"\", \"avatarUrl\": \"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\"}', '2021-11-01 11:53:04.300', '2021-11-01 14:35:49.184', NULL);

-- ----------------------------
-- Table structure for user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1:未使用，2：已使用， 3：已过期',
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `order_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_user_coupon`(`user_id`, `coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
INSERT INTO `user_coupon` VALUES (5, 36, 3, 2, '2021-09-06 12:29:59.817', 21, '2021-09-17 20:00:43.127');
INSERT INTO `user_coupon` VALUES (6, 36, 4, 1, '2021-09-06 14:02:16.897', NULL, '2021-09-06 14:02:16.899');
INSERT INTO `user_coupon` VALUES (7, 36, 11, 2, '2021-09-06 14:02:17.757', 22, '2021-10-02 17:55:46.258');
INSERT INTO `user_coupon` VALUES (8, 38, 11, 1, '2021-10-19 16:09:44.421', NULL, '2021-10-19 16:09:44.427');
INSERT INTO `user_coupon` VALUES (9, 38, 3, 1, '2021-10-19 16:09:44.422', NULL, '2021-10-19 16:09:44.434');
INSERT INTO `user_coupon` VALUES (10, 38, 7, 1, '2021-10-19 16:09:53.222', NULL, '2021-10-19 16:09:53.224');
INSERT INTO `user_coupon` VALUES (11, 38, 4, 1, '2021-10-19 16:09:53.226', NULL, '2021-10-19 16:09:53.231');
INSERT INTO `user_coupon` VALUES (12, 42, 11, 1, '2021-10-20 19:22:35.605', NULL, '2021-10-20 19:22:35.631');
INSERT INTO `user_coupon` VALUES (13, 42, 3, 1, '2021-10-20 19:22:37.482', NULL, '2021-10-20 19:22:37.485');
INSERT INTO `user_coupon` VALUES (14, 37, 3, 1, '2021-10-20 19:33:24.809', NULL, '2021-10-20 19:33:24.812');
INSERT INTO `user_coupon` VALUES (15, 49, 3, 1, '2021-10-23 12:18:47.313', NULL, '2021-10-23 12:18:47.315');
INSERT INTO `user_coupon` VALUES (16, 49, 11, 1, '2021-10-23 12:18:48.033', NULL, '2021-10-23 12:18:48.035');
INSERT INTO `user_coupon` VALUES (17, 53, 11, 1, '2021-10-26 19:35:55.979', NULL, '2021-10-26 19:35:55.982');
INSERT INTO `user_coupon` VALUES (18, 53, 3, 1, '2021-10-26 19:35:55.978', NULL, '2021-10-26 19:35:55.984');
INSERT INTO `user_coupon` VALUES (19, 53, 7, 1, '2021-10-26 19:36:04.775', NULL, '2021-10-26 19:36:04.777');
INSERT INTO `user_coupon` VALUES (20, 53, 4, 1, '2021-10-26 19:36:04.781', NULL, '2021-10-26 19:36:04.782');
INSERT INTO `user_coupon` VALUES (21, 54, 3, 1, '2021-10-27 11:07:32.938', NULL, '2021-10-27 11:07:32.940');
INSERT INTO `user_coupon` VALUES (22, 54, 11, 2, '2021-10-27 11:07:33.936', 31, '2021-10-27 22:09:06.651');
INSERT INTO `user_coupon` VALUES (23, 37, 11, 2, '2021-10-28 18:38:41.479', 32, '2021-10-28 18:39:26.684');

SET FOREIGN_KEY_CHECKS = 1;
