/*
 Navicat Premium Data Transfer

 Source Server         : v2测试数据库
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : 192.168.0.248:3306
 Source Schema         : xinke_price_calculator

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 29/12/2020 10:23:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_strategy_detail
-- ----------------------------
DROP TABLE IF EXISTS `db_strategy_detail`;
CREATE TABLE `db_strategy_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `strategy_id` int(11) NOT NULL COMMENT '策略id',
  `price` decimal(15, 2) NOT NULL COMMENT '价格',
  `date_range` int(3) NOT NULL COMMENT '时期类型（0短期；1中期；2长期）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_strategy_detail
-- ----------------------------
INSERT INTO `db_strategy_detail` VALUES (1, 1, 100.00, 0, '2020-12-23 20:28:31', '2020-12-23 20:28:31', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (2, 1, 200.00, 1, '2020-12-23 20:28:46', '2020-12-23 20:28:46', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (3, 1, 300.00, 2, '2020-12-23 20:28:56', '2020-12-23 20:28:56', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (4, 2, 100.00, 0, '2020-12-23 20:29:04', '2020-12-23 20:29:04', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (5, 2, 300.00, 1, '2020-12-23 20:29:15', '2020-12-23 20:29:15', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (6, 2, 600.00, 2, '2020-12-23 20:29:20', '2020-12-23 20:29:32', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (7, 3, 1000.00, 0, '2020-12-23 20:29:31', '2020-12-23 20:29:31', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (8, 3, 2000.00, 1, '2020-12-23 20:29:41', '2020-12-23 20:29:41', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (9, 3, 30004.00, 2, '2020-12-23 20:29:57', '2020-12-23 20:29:57', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (10, 4, 100.00, 0, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (11, 4, 2222.00, 1, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (12, 4, 4444.00, 2, '2020-12-23 20:15:35', '2020-12-23 20:30:28', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (13, 6, 2345.00, 0, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (14, 6, 4567.00, 1, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (15, 6, 56781.00, 2, '2020-12-24 11:47:37', '2020-12-24 12:02:38', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (16, 7, 111.00, 0, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (17, 7, 2222.00, 1, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (18, 7, 44444.00, 2, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (19, 8, 1112.00, 0, '2020-12-24 14:54:08', '2020-12-29 10:18:17', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (20, 8, 2222.00, 1, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);
INSERT INTO `db_strategy_detail` VALUES (21, 8, 3333.00, 2, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
