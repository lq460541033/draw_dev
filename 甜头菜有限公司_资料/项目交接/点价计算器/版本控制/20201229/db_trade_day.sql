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

 Date: 29/12/2020 10:23:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_trade_day
-- ----------------------------
DROP TABLE IF EXISTS `db_trade_day`;
CREATE TABLE `db_trade_day`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `day` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '日期',
  `is_holiday` int(3) NULL DEFAULT 0 COMMENT '是否是法定节假日（0非法定节假日；1法定节假日）',
  `is_weekend` int(3) NULL DEFAULT 0 COMMENT '是否为周末（0非周末；1周末）',
  `is_night_trading` int(3) NULL DEFAULT 0 COMMENT '是否夜盘（0没有夜盘；1夜盘）',
  `is_trade` int(3) NULL DEFAULT 0 COMMENT '是否为交易日（0否；1是）',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
