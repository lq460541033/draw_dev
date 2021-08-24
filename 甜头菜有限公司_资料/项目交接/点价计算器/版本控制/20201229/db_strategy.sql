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

 Date: 29/12/2020 10:23:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_strategy
-- ----------------------------
DROP TABLE IF EXISTS `db_strategy`;
CREATE TABLE `db_strategy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `dominant_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主力合约',
  `is_enable` int(3) NOT NULL DEFAULT 0 COMMENT '启用状态（0未启用；1启用）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_strategy
-- ----------------------------
INSERT INTO `db_strategy` VALUES (1, 'trade00001', NULL, NULL, 'M2101', 0, '2020-12-23 20:27:15', '2020-12-23 20:27:34', NULL, NULL);
INSERT INTO `db_strategy` VALUES (2, 'trade00002', NULL, NULL, 'M2105', 0, '2020-12-23 20:27:22', '2020-12-23 20:27:34', NULL, NULL);
INSERT INTO `db_strategy` VALUES (3, 'trade00003', NULL, NULL, 'M2109', 0, '2020-12-23 20:27:40', '2020-12-25 20:27:48', NULL, NULL);
INSERT INTO `db_strategy` VALUES (4, NULL, NULL, NULL, 'M2101', 0, '2020-12-23 20:15:35', '2020-12-24 11:56:49', NULL, NULL);
INSERT INTO `db_strategy` VALUES (6, 'CL202012240006', NULL, NULL, 'M2101', 1, '2020-12-24 11:47:37', '2020-12-24 12:02:29', NULL, NULL);
INSERT INTO `db_strategy` VALUES (7, 'CL202012240007', NULL, NULL, 'M2105', 1, '2020-12-24 12:56:33', '2020-12-24 13:11:24', NULL, NULL);
INSERT INTO `db_strategy` VALUES (8, 'CL202012240008', NULL, NULL, 'M2109', 1, '2020-12-24 14:54:08', '2020-12-24 15:08:59', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
